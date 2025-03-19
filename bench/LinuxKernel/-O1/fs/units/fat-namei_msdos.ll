; ModuleID = 'fs/fat/namei_msdos.c'
source_filename = "fs/fat/namei_msdos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_msdos__325_688_init_msdos_fs\22, \22a\22\09\09"
module asm "__initcall__kmod_msdos__325_688_init_msdos_fs6:\09\09\09"
module asm ".long\09__initstub__kmod_msdos__325_688_init_msdos_fs6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i64, i64, i16, i64, i64, i64, i64, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.fat_slot_info = type { i64, i64, i32, ptr, ptr }
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
%struct.anon.18 = type { i32, i32 }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.msdos_inode_info = type { %struct.spinlock, %struct.list_head, i32, i32, i64, i32, i32, i32, i64, %struct.hlist_node, %struct.hlist_node, %struct.rw_semaphore, %struct.timespec64, %struct.inode }

@__UNIQUE_ID_alias320 = internal constant [21 x i8] c"msdos.alias=fs-msdos\00", section ".modinfo", align 1, !dbg !0
@msdos_fs_type = internal global %struct.file_system_type { ptr @.str, i32 33, ptr null, ptr null, ptr @msdos_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !4547
@__UNIQUE_ID_file321 = internal constant [24 x i8] c"msdos.file=fs/fat/msdos\00", section ".modinfo", align 1, !dbg !4521
@__UNIQUE_ID_license322 = internal constant [18 x i8] c"msdos.license=GPL\00", section ".modinfo", align 1, !dbg !4526
@__UNIQUE_ID_author323 = internal constant [32 x i8] c"msdos.author=Werner Almesberger\00", section ".modinfo", align 1, !dbg !4531
@__UNIQUE_ID_description324 = internal constant [44 x i8] c"msdos.description=MS-DOS filesystem support\00", section ".modinfo", align 1, !dbg !4534
@__UNIQUE_ID___addressable___initstub__kmod_msdos__325_688_init_msdos_fs6326 = internal global ptr @__initstub__kmod_msdos__325_688_init_msdos_fs6, section ".discard.addressable", align 8, !dbg !4539
@__exitcall_exit_msdos_fs = internal global ptr @exit_msdos_fs, section ".exitcall.exit", align 8, !dbg !4541
@.str = private unnamed_addr constant [6 x i8] c"msdos\00", align 1, !dbg !4545
@msdos_dir_inode_operations = internal constant %struct.inode_operations { ptr @msdos_lookup, ptr null, ptr null, ptr null, ptr null, ptr @msdos_create, ptr null, ptr @msdos_unlink, ptr null, ptr @msdos_mkdir, ptr @msdos_rmdir, ptr null, ptr @msdos_rename, ptr @fat_setattr, ptr @fat_getattr, ptr null, ptr null, ptr @fat_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4549
@msdos_dentry_operations = internal constant %struct.dentry_operations { ptr null, ptr null, ptr @msdos_hash, ptr @msdos_cmp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef }, align 64, !dbg !4565
@bad_chars = internal global [7 x i8] c"*?<>|\22\00", align 1, !dbg !4551
@bad_if_strict = internal global [6 x i8] c"+=,; \00", align 1, !dbg !4554
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Filesystem corrupted (i_pos %lld)\00", align 1, !dbg !4557
@__func__.do_msdos_rename = private unnamed_addr constant [16 x i8] c"do_msdos_rename\00", align 1, !dbg !4562
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias320, ptr @exit_msdos_fs, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID___addressable___initstub__kmod_msdos__325_688_init_msdos_fs6326, ptr @__exitcall_exit_msdos_fs], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @exit_msdos_fs() #0 section ".exit.text" align 16 !dbg !4579 {
entry:
  %call = call i32 @unregister_filesystem(ptr noundef @msdos_fs_type) #10, !dbg !4580
  ret void, !dbg !4581
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4582 dso_local i32 @unregister_filesystem(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_msdos__325_688_init_msdos_fs6() #0 section ".init.text" align 16 !dbg !4585 {
entry:
  %call = call i32 @init_msdos_fs() #11, !dbg !4586
  ret i32 %call, !dbg !4586
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_msdos_fs() #0 section ".init.text" align 16 !dbg !4587 {
entry:
  %call = call i32 @register_filesystem(ptr noundef @msdos_fs_type) #10, !dbg !4588
  ret i32 %call, !dbg !4589
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @msdos_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 16 !dbg !4590 {
entry:
  %fs_type.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %dev_name.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %fs_type, ptr %fs_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_type.addr, metadata !4592, metadata !DIExpression()), !dbg !4596
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4593, metadata !DIExpression()), !dbg !4597
  store ptr %dev_name, ptr %dev_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_name.addr, metadata !4594, metadata !DIExpression()), !dbg !4598
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4595, metadata !DIExpression()), !dbg !4599
  %0 = load ptr, ptr %fs_type.addr, align 8, !dbg !4600
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4601
  %2 = load ptr, ptr %dev_name.addr, align 8, !dbg !4602
  %3 = load ptr, ptr %data.addr, align 8, !dbg !4603
  %call = call ptr @mount_bdev(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @msdos_fill_super) #10, !dbg !4604
  ret ptr %call, !dbg !4605
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4606 dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #2 align 16 !dbg !4612 {
entry:
  %sb.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %silent.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4614, metadata !DIExpression()), !dbg !4617
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4615, metadata !DIExpression()), !dbg !4618
  store i32 %silent, ptr %silent.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %silent.addr, metadata !4616, metadata !DIExpression()), !dbg !4619
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4620
  %1 = load ptr, ptr %data.addr, align 8, !dbg !4621
  %2 = load i32, ptr %silent.addr, align 4, !dbg !4622
  %call = call i32 @fat_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef @setup) #10, !dbg !4623
  ret i32 %call, !dbg !4624
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4625 dso_local i32 @fat_fill_super(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @setup(ptr noundef %sb) #2 align 16 !dbg !4628 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4630, metadata !DIExpression()), !dbg !4631
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4632
  %call = call ptr @MSDOS_SB(ptr noundef %0) #10, !dbg !4633
  %dir_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %call, i32 0, i32 22, !dbg !4634
  store ptr @msdos_dir_inode_operations, ptr %dir_ops, align 8, !dbg !4635
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !4636
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 40, !dbg !4637
  store ptr @msdos_dentry_operations, ptr %s_d_op, align 16, !dbg !4638
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4639
  %s_flags = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 10, !dbg !4640
  %3 = load i64, ptr %s_flags, align 16, !dbg !4641
  %or = or i64 %3, 1024, !dbg !4641
  store i64 %or, ptr %s_flags, align 16, !dbg !4641
  ret void, !dbg !4642
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @MSDOS_SB(ptr noundef %sb) #4 align 16 !dbg !4643 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4745
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !4746
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !4746
  ret ptr %1, !dbg !4747
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @msdos_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #2 align 16 !dbg !4748 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %sb = alloca ptr, align 8
  %sinfo = alloca %struct.fat_slot_info, align 8
  %inode = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4750, metadata !DIExpression()), !dbg !4809
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4751, metadata !DIExpression()), !dbg !4810
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4752, metadata !DIExpression()), !dbg !4811
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #12, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4753, metadata !DIExpression()), !dbg !4813
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !4814
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !4815
  %1 = load ptr, ptr %i_sb, align 8, !dbg !4815
  store ptr %1, ptr %sb, align 8, !dbg !4813
  call void @llvm.lifetime.start.p0(i64 40, ptr %sinfo) #12, !dbg !4816
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !4754, metadata !DIExpression()), !dbg !4817
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !4818
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4807, metadata !DIExpression()), !dbg !4819
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4808, metadata !DIExpression()), !dbg !4821
  %2 = load ptr, ptr %sb, align 8, !dbg !4822
  %call = call ptr @MSDOS_SB(ptr noundef %2) #10, !dbg !4823
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %call, i32 0, i32 15, !dbg !4824
  call void @mutex_lock(ptr noundef %s_lock) #10, !dbg !4825
  %3 = load ptr, ptr %dir.addr, align 8, !dbg !4826
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !4827
  %d_name = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, !dbg !4828
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !4829
  %5 = load ptr, ptr %name, align 8, !dbg !4829
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !4830
  %d_name1 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 4, !dbg !4831
  %7 = getelementptr inbounds %struct.qstr, ptr %d_name1, i32 0, i32 0, !dbg !4832
  %len = getelementptr inbounds %struct.anon.18, ptr %7, i32 0, i32 1, !dbg !4832
  %8 = load i32, ptr %len, align 4, !dbg !4832
  %call2 = call i32 @msdos_find(ptr noundef %3, ptr noundef %5, i32 noundef %8, ptr noundef %sinfo) #10, !dbg !4833
  store i32 %call2, ptr %err, align 4, !dbg !4834
  %9 = load i32, ptr %err, align 4, !dbg !4835
  switch i32 %9, label %sw.default [
    i32 -2, label %sw.bb
    i32 0, label %sw.bb3
  ], !dbg !4836

sw.bb:                                            ; preds = %entry
  store ptr null, ptr %inode, align 8, !dbg !4837
  br label %sw.epilog, !dbg !4839

sw.bb3:                                           ; preds = %entry
  %10 = load ptr, ptr %sb, align 8, !dbg !4840
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3, !dbg !4841
  %11 = load ptr, ptr %de, align 8, !dbg !4841
  %i_pos = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 0, !dbg !4842
  %12 = load i64, ptr %i_pos, align 8, !dbg !4842
  %call4 = call ptr @fat_build_inode(ptr noundef %10, ptr noundef %11, i64 noundef %12) #10, !dbg !4843
  store ptr %call4, ptr %inode, align 8, !dbg !4844
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4, !dbg !4845
  %13 = load ptr, ptr %bh, align 8, !dbg !4845
  call void @brelse(ptr noundef %13) #10, !dbg !4846
  br label %sw.epilog, !dbg !4847

sw.default:                                       ; preds = %entry
  %14 = load i32, ptr %err, align 4, !dbg !4848
  %conv = sext i32 %14 to i64, !dbg !4848
  %call5 = call ptr @ERR_PTR(i64 noundef %conv) #10, !dbg !4849
  store ptr %call5, ptr %inode, align 8, !dbg !4850
  br label %sw.epilog, !dbg !4851

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %15 = load ptr, ptr %sb, align 8, !dbg !4852
  %call6 = call ptr @MSDOS_SB(ptr noundef %15) #10, !dbg !4853
  %s_lock7 = getelementptr inbounds %struct.msdos_sb_info, ptr %call6, i32 0, i32 15, !dbg !4854
  call void @mutex_unlock(ptr noundef %s_lock7) #10, !dbg !4855
  %16 = load ptr, ptr %inode, align 8, !dbg !4856
  %17 = load ptr, ptr %dentry.addr, align 8, !dbg !4857
  %call8 = call ptr @d_splice_alias(ptr noundef %16, ptr noundef %17) #10, !dbg !4858
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !4859
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !4859
  call void @llvm.lifetime.end.p0(i64 40, ptr %sinfo) #12, !dbg !4859
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #12, !dbg !4859
  ret ptr %call8, !dbg !4860
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_create(ptr noundef %idmap, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #2 align 16 !dbg !4861 {
entry:
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %excl.addr = alloca i8, align 1
  %sb = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %sinfo = alloca %struct.fat_slot_info, align 8
  %ts = alloca %struct.timespec64, align 8
  %msdos_name = alloca [11 x i8], align 1
  %err = alloca i32, align 4
  %is_hid = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4863, metadata !DIExpression()), !dbg !4877
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4864, metadata !DIExpression()), !dbg !4878
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4865, metadata !DIExpression()), !dbg !4879
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4866, metadata !DIExpression()), !dbg !4880
  %frombool = zext i1 %excl to i8
  store i8 %frombool, ptr %excl.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %excl.addr, metadata !4867, metadata !DIExpression()), !dbg !4881
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #12, !dbg !4882
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4868, metadata !DIExpression()), !dbg !4883
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !4884
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !4885
  %1 = load ptr, ptr %i_sb, align 8, !dbg !4885
  store ptr %1, ptr %sb, align 8, !dbg !4883
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !4886
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4869, metadata !DIExpression()), !dbg !4887
  store ptr null, ptr %inode, align 8, !dbg !4887
  call void @llvm.lifetime.start.p0(i64 40, ptr %sinfo) #12, !dbg !4888
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !4870, metadata !DIExpression()), !dbg !4889
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #12, !dbg !4890
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !4871, metadata !DIExpression()), !dbg !4891
  call void @llvm.lifetime.start.p0(i64 11, ptr %msdos_name) #12, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %msdos_name, metadata !4872, metadata !DIExpression()), !dbg !4893
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_hid) #12, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %is_hid, metadata !4875, metadata !DIExpression()), !dbg !4896
  %2 = load ptr, ptr %sb, align 8, !dbg !4897
  %call = call ptr @MSDOS_SB(ptr noundef %2) #10, !dbg !4898
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %call, i32 0, i32 15, !dbg !4899
  call void @mutex_lock(ptr noundef %s_lock) #10, !dbg !4900
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !4901
  %d_name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, !dbg !4902
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !4903
  %4 = load ptr, ptr %name, align 8, !dbg !4903
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !4904
  %d_name1 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, !dbg !4905
  %6 = getelementptr inbounds %struct.qstr, ptr %d_name1, i32 0, i32 0, !dbg !4906
  %len = getelementptr inbounds %struct.anon.18, ptr %6, i32 0, i32 1, !dbg !4906
  %7 = load i32, ptr %len, align 4, !dbg !4906
  %arraydecay = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !4907
  %8 = load ptr, ptr %sb, align 8, !dbg !4908
  %call2 = call ptr @MSDOS_SB(ptr noundef %8) #10, !dbg !4909
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %call2, i32 0, i32 19, !dbg !4910
  %call3 = call i32 @msdos_format_name(ptr noundef %4, i32 noundef %7, ptr noundef %arraydecay, ptr noundef %options) #10, !dbg !4911
  store i32 %call3, ptr %err, align 4, !dbg !4912
  %9 = load i32, ptr %err, align 4, !dbg !4913
  %tobool = icmp ne i32 %9, 0, !dbg !4913
  br i1 %tobool, label %if.then, label %if.end, !dbg !4915

if.then:                                          ; preds = %entry
  br label %out, !dbg !4916

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !4917
  %d_name4 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 4, !dbg !4918
  %name5 = getelementptr inbounds %struct.qstr, ptr %d_name4, i32 0, i32 1, !dbg !4919
  %11 = load ptr, ptr %name5, align 8, !dbg !4919
  %arrayidx = getelementptr i8, ptr %11, i64 0, !dbg !4917
  %12 = load i8, ptr %arrayidx, align 1, !dbg !4917
  %conv = zext i8 %12 to i32, !dbg !4917
  %cmp = icmp eq i32 %conv, 46, !dbg !4920
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4921

land.rhs:                                         ; preds = %if.end
  %arrayidx7 = getelementptr [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !4922
  %13 = load i8, ptr %arrayidx7, align 1, !dbg !4922
  %conv8 = zext i8 %13 to i32, !dbg !4922
  %cmp9 = icmp ne i32 %conv8, 46, !dbg !4923
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %14 = phi i1 [ false, %if.end ], [ %cmp9, %land.rhs ], !dbg !4924
  %land.ext = zext i1 %14 to i32, !dbg !4921
  store i32 %land.ext, ptr %is_hid, align 4, !dbg !4925
  %15 = load ptr, ptr %dir.addr, align 8, !dbg !4926
  %arraydecay11 = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !4928
  %call12 = call i32 @fat_scan(ptr noundef %15, ptr noundef %arraydecay11, ptr noundef %sinfo) #10, !dbg !4929
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4929
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4930

if.then14:                                        ; preds = %land.end
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4, !dbg !4931
  %16 = load ptr, ptr %bh, align 8, !dbg !4931
  call void @brelse(ptr noundef %16) #10, !dbg !4933
  store i32 -22, ptr %err, align 4, !dbg !4934
  br label %out, !dbg !4935

if.end15:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #12, !dbg !4936
  %17 = load ptr, ptr %dir.addr, align 8, !dbg !4937
  %call16 = call { i64, i64 } @current_time(ptr noundef %17) #10, !dbg !4936
  %18 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !4936
  %19 = extractvalue { i64, i64 } %call16, 0, !dbg !4936
  store i64 %19, ptr %18, align 8, !dbg !4936
  %20 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !4936
  %21 = extractvalue { i64, i64 } %call16, 1, !dbg !4936
  store i64 %21, ptr %20, align 8, !dbg !4936
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 %tmp, i64 16, i1 false), !dbg !4936
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #12, !dbg !4936
  %22 = load ptr, ptr %dir.addr, align 8, !dbg !4938
  %arraydecay17 = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !4939
  %23 = load i32, ptr %is_hid, align 4, !dbg !4940
  %call18 = call i32 @msdos_add_entry(ptr noundef %22, ptr noundef %arraydecay17, i32 noundef 0, i32 noundef %23, i32 noundef 0, ptr noundef %ts, ptr noundef %sinfo) #10, !dbg !4941
  store i32 %call18, ptr %err, align 4, !dbg !4942
  %24 = load i32, ptr %err, align 4, !dbg !4943
  %tobool19 = icmp ne i32 %24, 0, !dbg !4943
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4945

if.then20:                                        ; preds = %if.end15
  br label %out, !dbg !4946

if.end21:                                         ; preds = %if.end15
  %25 = load ptr, ptr %sb, align 8, !dbg !4947
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3, !dbg !4948
  %26 = load ptr, ptr %de, align 8, !dbg !4948
  %i_pos = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 0, !dbg !4949
  %27 = load i64, ptr %i_pos, align 8, !dbg !4949
  %call22 = call ptr @fat_build_inode(ptr noundef %25, ptr noundef %26, i64 noundef %27) #10, !dbg !4950
  store ptr %call22, ptr %inode, align 8, !dbg !4951
  %bh23 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4, !dbg !4952
  %28 = load ptr, ptr %bh23, align 8, !dbg !4952
  call void @brelse(ptr noundef %28) #10, !dbg !4953
  %29 = load ptr, ptr %inode, align 8, !dbg !4954
  %call24 = call zeroext i1 @IS_ERR(ptr noundef %29) #10, !dbg !4956
  br i1 %call24, label %if.then25, label %if.end28, !dbg !4957

if.then25:                                        ; preds = %if.end21
  %30 = load ptr, ptr %inode, align 8, !dbg !4958
  %call26 = call i64 @PTR_ERR(ptr noundef %30) #10, !dbg !4960
  %conv27 = trunc i64 %call26 to i32, !dbg !4960
  store i32 %conv27, ptr %err, align 4, !dbg !4961
  br label %out, !dbg !4962

if.end28:                                         ; preds = %if.end21
  %31 = load ptr, ptr %inode, align 8, !dbg !4963
  %call29 = call i32 @fat_truncate_time(ptr noundef %31, ptr noundef %ts, i32 noundef 7) #10, !dbg !4964
  %32 = load ptr, ptr %dentry.addr, align 8, !dbg !4965
  %33 = load ptr, ptr %inode, align 8, !dbg !4966
  call void @d_instantiate(ptr noundef %32, ptr noundef %33) #10, !dbg !4967
  br label %out, !dbg !4967

out:                                              ; preds = %if.end28, %if.then25, %if.then20, %if.then14, %if.then
  call void @llvm.dbg.label(metadata !4876), !dbg !4968
  %34 = load ptr, ptr %sb, align 8, !dbg !4969
  %call30 = call ptr @MSDOS_SB(ptr noundef %34) #10, !dbg !4970
  %s_lock31 = getelementptr inbounds %struct.msdos_sb_info, ptr %call30, i32 0, i32 15, !dbg !4971
  call void @mutex_unlock(ptr noundef %s_lock31) #10, !dbg !4972
  %35 = load i32, ptr %err, align 4, !dbg !4973
  %tobool32 = icmp ne i32 %35, 0, !dbg !4973
  br i1 %tobool32, label %if.end35, label %if.then33, !dbg !4975

if.then33:                                        ; preds = %out
  %36 = load ptr, ptr %sb, align 8, !dbg !4976
  %37 = load ptr, ptr %dir.addr, align 8, !dbg !4977
  %38 = load ptr, ptr %inode, align 8, !dbg !4978
  %call34 = call i32 @fat_flush_inodes(ptr noundef %36, ptr noundef %37, ptr noundef %38) #10, !dbg !4979
  store i32 %call34, ptr %err, align 4, !dbg !4980
  br label %if.end35, !dbg !4981

if.end35:                                         ; preds = %if.then33, %out
  %39 = load i32, ptr %err, align 4, !dbg !4982
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_hid) #12, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 11, ptr %msdos_name) #12, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #12, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 40, ptr %sinfo) #12, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #12, !dbg !4983
  ret i32 %39, !dbg !4984
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_unlink(ptr noundef %dir, ptr noundef %dentry) #2 align 16 !dbg !4985 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %sinfo = alloca %struct.fat_slot_info, align 8
  %err = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4987, metadata !DIExpression()), !dbg !4994
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4988, metadata !DIExpression()), !dbg !4995
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !4996
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4989, metadata !DIExpression()), !dbg !4997
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4998
  %call = call ptr @d_inode(ptr noundef %0) #10, !dbg !4999
  store ptr %call, ptr %inode, align 8, !dbg !4997
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #12, !dbg !5000
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4990, metadata !DIExpression()), !dbg !5001
  %1 = load ptr, ptr %inode, align 8, !dbg !5002
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9, !dbg !5003
  %2 = load ptr, ptr %i_sb, align 8, !dbg !5003
  store ptr %2, ptr %sb, align 8, !dbg !5001
  call void @llvm.lifetime.start.p0(i64 40, ptr %sinfo) #12, !dbg !5004
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !4991, metadata !DIExpression()), !dbg !5005
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !5006
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4992, metadata !DIExpression()), !dbg !5007
  %3 = load ptr, ptr %sb, align 8, !dbg !5008
  %call1 = call ptr @MSDOS_SB(ptr noundef %3) #10, !dbg !5009
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %call1, i32 0, i32 15, !dbg !5010
  call void @mutex_lock(ptr noundef %s_lock) #10, !dbg !5011
  %4 = load ptr, ptr %dir.addr, align 8, !dbg !5012
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !5013
  %d_name = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, !dbg !5014
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !5015
  %6 = load ptr, ptr %name, align 8, !dbg !5015
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !5016
  %d_name2 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 4, !dbg !5017
  %8 = getelementptr inbounds %struct.qstr, ptr %d_name2, i32 0, i32 0, !dbg !5018
  %len = getelementptr inbounds %struct.anon.18, ptr %8, i32 0, i32 1, !dbg !5018
  %9 = load i32, ptr %len, align 4, !dbg !5018
  %call3 = call i32 @msdos_find(ptr noundef %4, ptr noundef %6, i32 noundef %9, ptr noundef %sinfo) #10, !dbg !5019
  store i32 %call3, ptr %err, align 4, !dbg !5020
  %10 = load i32, ptr %err, align 4, !dbg !5021
  %tobool = icmp ne i32 %10, 0, !dbg !5021
  br i1 %tobool, label %if.then, label %if.end, !dbg !5023

if.then:                                          ; preds = %entry
  br label %out, !dbg !5024

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %dir.addr, align 8, !dbg !5025
  %call4 = call i32 @fat_remove_entries(ptr noundef %11, ptr noundef %sinfo) #10, !dbg !5026
  store i32 %call4, ptr %err, align 4, !dbg !5027
  %12 = load i32, ptr %err, align 4, !dbg !5028
  %tobool5 = icmp ne i32 %12, 0, !dbg !5028
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5030

if.then6:                                         ; preds = %if.end
  br label %out, !dbg !5031

if.end7:                                          ; preds = %if.end
  %13 = load ptr, ptr %inode, align 8, !dbg !5032
  call void @clear_nlink(ptr noundef %13) #10, !dbg !5033
  %14 = load ptr, ptr %inode, align 8, !dbg !5034
  %call8 = call i32 @fat_truncate_time(ptr noundef %14, ptr noundef null, i32 noundef 4) #10, !dbg !5035
  %15 = load ptr, ptr %inode, align 8, !dbg !5036
  call void @fat_detach(ptr noundef %15) #10, !dbg !5037
  br label %out, !dbg !5037

out:                                              ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4993), !dbg !5038
  %16 = load ptr, ptr %sb, align 8, !dbg !5039
  %call9 = call ptr @MSDOS_SB(ptr noundef %16) #10, !dbg !5040
  %s_lock10 = getelementptr inbounds %struct.msdos_sb_info, ptr %call9, i32 0, i32 15, !dbg !5041
  call void @mutex_unlock(ptr noundef %s_lock10) #10, !dbg !5042
  %17 = load i32, ptr %err, align 4, !dbg !5043
  %tobool11 = icmp ne i32 %17, 0, !dbg !5043
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !5045

if.then12:                                        ; preds = %out
  %18 = load ptr, ptr %sb, align 8, !dbg !5046
  %19 = load ptr, ptr %dir.addr, align 8, !dbg !5047
  %20 = load ptr, ptr %inode, align 8, !dbg !5048
  %call13 = call i32 @fat_flush_inodes(ptr noundef %18, ptr noundef %19, ptr noundef %20) #10, !dbg !5049
  store i32 %call13, ptr %err, align 4, !dbg !5050
  br label %if.end14, !dbg !5051

if.end14:                                         ; preds = %if.then12, %out
  %21 = load i32, ptr %err, align 4, !dbg !5052
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !5053
  call void @llvm.lifetime.end.p0(i64 40, ptr %sinfo) #12, !dbg !5053
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #12, !dbg !5053
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !5053
  ret i32 %21, !dbg !5054
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_mkdir(ptr noundef %idmap, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #2 align 16 !dbg !5055 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %sb = alloca ptr, align 8
  %sinfo = alloca %struct.fat_slot_info, align 8
  %inode = alloca ptr, align 8
  %msdos_name = alloca [11 x i8], align 1
  %ts = alloca %struct.timespec64, align 8
  %err = alloca i32, align 4
  %is_hid = alloca i32, align 4
  %cluster = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5057, metadata !DIExpression()), !dbg !5071
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5058, metadata !DIExpression()), !dbg !5072
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5059, metadata !DIExpression()), !dbg !5073
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5060, metadata !DIExpression()), !dbg !5074
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #12, !dbg !5075
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5061, metadata !DIExpression()), !dbg !5076
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5077
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5078
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5078
  store ptr %1, ptr %sb, align 8, !dbg !5076
  call void @llvm.lifetime.start.p0(i64 40, ptr %sinfo) #12, !dbg !5079
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !5062, metadata !DIExpression()), !dbg !5080
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !5081
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5063, metadata !DIExpression()), !dbg !5082
  call void @llvm.lifetime.start.p0(i64 11, ptr %msdos_name) #12, !dbg !5083
  call void @llvm.dbg.declare(metadata ptr %msdos_name, metadata !5064, metadata !DIExpression()), !dbg !5084
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #12, !dbg !5085
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !5065, metadata !DIExpression()), !dbg !5086
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !5087
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5066, metadata !DIExpression()), !dbg !5088
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_hid) #12, !dbg !5087
  call void @llvm.dbg.declare(metadata ptr %is_hid, metadata !5067, metadata !DIExpression()), !dbg !5089
  call void @llvm.lifetime.start.p0(i64 4, ptr %cluster) #12, !dbg !5087
  call void @llvm.dbg.declare(metadata ptr %cluster, metadata !5068, metadata !DIExpression()), !dbg !5090
  %2 = load ptr, ptr %sb, align 8, !dbg !5091
  %call = call ptr @MSDOS_SB(ptr noundef %2) #10, !dbg !5092
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %call, i32 0, i32 15, !dbg !5093
  call void @mutex_lock(ptr noundef %s_lock) #10, !dbg !5094
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5095
  %d_name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, !dbg !5096
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !5097
  %4 = load ptr, ptr %name, align 8, !dbg !5097
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !5098
  %d_name1 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, !dbg !5099
  %6 = getelementptr inbounds %struct.qstr, ptr %d_name1, i32 0, i32 0, !dbg !5100
  %len = getelementptr inbounds %struct.anon.18, ptr %6, i32 0, i32 1, !dbg !5100
  %7 = load i32, ptr %len, align 4, !dbg !5100
  %arraydecay = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !5101
  %8 = load ptr, ptr %sb, align 8, !dbg !5102
  %call2 = call ptr @MSDOS_SB(ptr noundef %8) #10, !dbg !5103
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %call2, i32 0, i32 19, !dbg !5104
  %call3 = call i32 @msdos_format_name(ptr noundef %4, i32 noundef %7, ptr noundef %arraydecay, ptr noundef %options) #10, !dbg !5105
  store i32 %call3, ptr %err, align 4, !dbg !5106
  %9 = load i32, ptr %err, align 4, !dbg !5107
  %tobool = icmp ne i32 %9, 0, !dbg !5107
  br i1 %tobool, label %if.then, label %if.end, !dbg !5109

if.then:                                          ; preds = %entry
  br label %out, !dbg !5110

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !5111
  %d_name4 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 4, !dbg !5112
  %name5 = getelementptr inbounds %struct.qstr, ptr %d_name4, i32 0, i32 1, !dbg !5113
  %11 = load ptr, ptr %name5, align 8, !dbg !5113
  %arrayidx = getelementptr i8, ptr %11, i64 0, !dbg !5111
  %12 = load i8, ptr %arrayidx, align 1, !dbg !5111
  %conv = zext i8 %12 to i32, !dbg !5111
  %cmp = icmp eq i32 %conv, 46, !dbg !5114
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5115

land.rhs:                                         ; preds = %if.end
  %arrayidx7 = getelementptr [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !5116
  %13 = load i8, ptr %arrayidx7, align 1, !dbg !5116
  %conv8 = zext i8 %13 to i32, !dbg !5116
  %cmp9 = icmp ne i32 %conv8, 46, !dbg !5117
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %14 = phi i1 [ false, %if.end ], [ %cmp9, %land.rhs ], !dbg !5118
  %land.ext = zext i1 %14 to i32, !dbg !5115
  store i32 %land.ext, ptr %is_hid, align 4, !dbg !5119
  %15 = load ptr, ptr %dir.addr, align 8, !dbg !5120
  %arraydecay11 = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !5122
  %call12 = call i32 @fat_scan(ptr noundef %15, ptr noundef %arraydecay11, ptr noundef %sinfo) #10, !dbg !5123
  %tobool13 = icmp ne i32 %call12, 0, !dbg !5123
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5124

if.then14:                                        ; preds = %land.end
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4, !dbg !5125
  %16 = load ptr, ptr %bh, align 8, !dbg !5125
  call void @brelse(ptr noundef %16) #10, !dbg !5127
  store i32 -22, ptr %err, align 4, !dbg !5128
  br label %out, !dbg !5129

if.end15:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #12, !dbg !5130
  %17 = load ptr, ptr %dir.addr, align 8, !dbg !5131
  %call16 = call { i64, i64 } @current_time(ptr noundef %17) #10, !dbg !5130
  %18 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !5130
  %19 = extractvalue { i64, i64 } %call16, 0, !dbg !5130
  store i64 %19, ptr %18, align 8, !dbg !5130
  %20 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !5130
  %21 = extractvalue { i64, i64 } %call16, 1, !dbg !5130
  store i64 %21, ptr %20, align 8, !dbg !5130
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 %tmp, i64 16, i1 false), !dbg !5130
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #12, !dbg !5130
  %22 = load ptr, ptr %dir.addr, align 8, !dbg !5132
  %call17 = call i32 @fat_alloc_new_dir(ptr noundef %22, ptr noundef %ts) #10, !dbg !5133
  store i32 %call17, ptr %cluster, align 4, !dbg !5134
  %23 = load i32, ptr %cluster, align 4, !dbg !5135
  %cmp18 = icmp slt i32 %23, 0, !dbg !5137
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5138

if.then20:                                        ; preds = %if.end15
  %24 = load i32, ptr %cluster, align 4, !dbg !5139
  store i32 %24, ptr %err, align 4, !dbg !5141
  br label %out, !dbg !5142

if.end21:                                         ; preds = %if.end15
  %25 = load ptr, ptr %dir.addr, align 8, !dbg !5143
  %arraydecay22 = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !5144
  %26 = load i32, ptr %is_hid, align 4, !dbg !5145
  %27 = load i32, ptr %cluster, align 4, !dbg !5146
  %call23 = call i32 @msdos_add_entry(ptr noundef %25, ptr noundef %arraydecay22, i32 noundef 1, i32 noundef %26, i32 noundef %27, ptr noundef %ts, ptr noundef %sinfo) #10, !dbg !5147
  store i32 %call23, ptr %err, align 4, !dbg !5148
  %28 = load i32, ptr %err, align 4, !dbg !5149
  %tobool24 = icmp ne i32 %28, 0, !dbg !5149
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5151

if.then25:                                        ; preds = %if.end21
  br label %out_free, !dbg !5152

if.end26:                                         ; preds = %if.end21
  %29 = load ptr, ptr %dir.addr, align 8, !dbg !5153
  call void @inc_nlink(ptr noundef %29) #10, !dbg !5154
  %30 = load ptr, ptr %sb, align 8, !dbg !5155
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3, !dbg !5156
  %31 = load ptr, ptr %de, align 8, !dbg !5156
  %i_pos = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 0, !dbg !5157
  %32 = load i64, ptr %i_pos, align 8, !dbg !5157
  %call27 = call ptr @fat_build_inode(ptr noundef %30, ptr noundef %31, i64 noundef %32) #10, !dbg !5158
  store ptr %call27, ptr %inode, align 8, !dbg !5159
  %bh28 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4, !dbg !5160
  %33 = load ptr, ptr %bh28, align 8, !dbg !5160
  call void @brelse(ptr noundef %33) #10, !dbg !5161
  %34 = load ptr, ptr %inode, align 8, !dbg !5162
  %call29 = call zeroext i1 @IS_ERR(ptr noundef %34) #10, !dbg !5164
  br i1 %call29, label %if.then30, label %if.end33, !dbg !5165

if.then30:                                        ; preds = %if.end26
  %35 = load ptr, ptr %inode, align 8, !dbg !5166
  %call31 = call i64 @PTR_ERR(ptr noundef %35) #10, !dbg !5168
  %conv32 = trunc i64 %call31 to i32, !dbg !5168
  store i32 %conv32, ptr %err, align 4, !dbg !5169
  br label %out, !dbg !5170

if.end33:                                         ; preds = %if.end26
  %36 = load ptr, ptr %inode, align 8, !dbg !5171
  call void @set_nlink(ptr noundef %36, i32 noundef 2) #10, !dbg !5172
  %37 = load ptr, ptr %inode, align 8, !dbg !5173
  %call34 = call i32 @fat_truncate_time(ptr noundef %37, ptr noundef %ts, i32 noundef 7) #10, !dbg !5174
  %38 = load ptr, ptr %dentry.addr, align 8, !dbg !5175
  %39 = load ptr, ptr %inode, align 8, !dbg !5176
  call void @d_instantiate(ptr noundef %38, ptr noundef %39) #10, !dbg !5177
  %40 = load ptr, ptr %sb, align 8, !dbg !5178
  %call35 = call ptr @MSDOS_SB(ptr noundef %40) #10, !dbg !5179
  %s_lock36 = getelementptr inbounds %struct.msdos_sb_info, ptr %call35, i32 0, i32 15, !dbg !5180
  call void @mutex_unlock(ptr noundef %s_lock36) #10, !dbg !5181
  %41 = load ptr, ptr %sb, align 8, !dbg !5182
  %42 = load ptr, ptr %dir.addr, align 8, !dbg !5183
  %43 = load ptr, ptr %inode, align 8, !dbg !5184
  %call37 = call i32 @fat_flush_inodes(ptr noundef %41, ptr noundef %42, ptr noundef %43) #10, !dbg !5185
  store i32 0, ptr %retval, align 4, !dbg !5186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5186

out_free:                                         ; preds = %if.then25
  call void @llvm.dbg.label(metadata !5069), !dbg !5187
  %44 = load ptr, ptr %dir.addr, align 8, !dbg !5188
  %45 = load i32, ptr %cluster, align 4, !dbg !5189
  %call38 = call i32 @fat_free_clusters(ptr noundef %44, i32 noundef %45) #10, !dbg !5190
  br label %out, !dbg !5190

out:                                              ; preds = %out_free, %if.then30, %if.then20, %if.then14, %if.then
  call void @llvm.dbg.label(metadata !5070), !dbg !5191
  %46 = load ptr, ptr %sb, align 8, !dbg !5192
  %call39 = call ptr @MSDOS_SB(ptr noundef %46) #10, !dbg !5193
  %s_lock40 = getelementptr inbounds %struct.msdos_sb_info, ptr %call39, i32 0, i32 15, !dbg !5194
  call void @mutex_unlock(ptr noundef %s_lock40) #10, !dbg !5195
  %47 = load i32, ptr %err, align 4, !dbg !5196
  store i32 %47, ptr %retval, align 4, !dbg !5197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5197

cleanup:                                          ; preds = %out, %if.end33
  call void @llvm.lifetime.end.p0(i64 4, ptr %cluster) #12, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_hid) #12, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #12, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 11, ptr %msdos_name) #12, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 40, ptr %sinfo) #12, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #12, !dbg !5198
  %48 = load i32, ptr %retval, align 4, !dbg !5198
  ret i32 %48, !dbg !5198
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_rmdir(ptr noundef %dir, ptr noundef %dentry) #2 align 16 !dbg !5199 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %sinfo = alloca %struct.fat_slot_info, align 8
  %err = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5201, metadata !DIExpression()), !dbg !5208
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5202, metadata !DIExpression()), !dbg !5209
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #12, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5203, metadata !DIExpression()), !dbg !5211
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5212
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5213
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5213
  store ptr %1, ptr %sb, align 8, !dbg !5211
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !5214
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5204, metadata !DIExpression()), !dbg !5215
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5216
  %call = call ptr @d_inode(ptr noundef %2) #10, !dbg !5217
  store ptr %call, ptr %inode, align 8, !dbg !5215
  call void @llvm.lifetime.start.p0(i64 40, ptr %sinfo) #12, !dbg !5218
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !5205, metadata !DIExpression()), !dbg !5219
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !5220
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5206, metadata !DIExpression()), !dbg !5221
  %3 = load ptr, ptr %sb, align 8, !dbg !5222
  %call1 = call ptr @MSDOS_SB(ptr noundef %3) #10, !dbg !5223
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %call1, i32 0, i32 15, !dbg !5224
  call void @mutex_lock(ptr noundef %s_lock) #10, !dbg !5225
  %4 = load ptr, ptr %inode, align 8, !dbg !5226
  %call2 = call i32 @fat_dir_empty(ptr noundef %4) #10, !dbg !5227
  store i32 %call2, ptr %err, align 4, !dbg !5228
  %5 = load i32, ptr %err, align 4, !dbg !5229
  %tobool = icmp ne i32 %5, 0, !dbg !5229
  br i1 %tobool, label %if.then, label %if.end, !dbg !5231

if.then:                                          ; preds = %entry
  br label %out, !dbg !5232

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dir.addr, align 8, !dbg !5233
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !5234
  %d_name = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 4, !dbg !5235
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !5236
  %8 = load ptr, ptr %name, align 8, !dbg !5236
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !5237
  %d_name3 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4, !dbg !5238
  %10 = getelementptr inbounds %struct.qstr, ptr %d_name3, i32 0, i32 0, !dbg !5239
  %len = getelementptr inbounds %struct.anon.18, ptr %10, i32 0, i32 1, !dbg !5239
  %11 = load i32, ptr %len, align 4, !dbg !5239
  %call4 = call i32 @msdos_find(ptr noundef %6, ptr noundef %8, i32 noundef %11, ptr noundef %sinfo) #10, !dbg !5240
  store i32 %call4, ptr %err, align 4, !dbg !5241
  %12 = load i32, ptr %err, align 4, !dbg !5242
  %tobool5 = icmp ne i32 %12, 0, !dbg !5242
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5244

if.then6:                                         ; preds = %if.end
  br label %out, !dbg !5245

if.end7:                                          ; preds = %if.end
  %13 = load ptr, ptr %dir.addr, align 8, !dbg !5246
  %call8 = call i32 @fat_remove_entries(ptr noundef %13, ptr noundef %sinfo) #10, !dbg !5247
  store i32 %call8, ptr %err, align 4, !dbg !5248
  %14 = load i32, ptr %err, align 4, !dbg !5249
  %tobool9 = icmp ne i32 %14, 0, !dbg !5249
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5251

if.then10:                                        ; preds = %if.end7
  br label %out, !dbg !5252

if.end11:                                         ; preds = %if.end7
  %15 = load ptr, ptr %dir.addr, align 8, !dbg !5253
  call void @drop_nlink(ptr noundef %15) #10, !dbg !5254
  %16 = load ptr, ptr %inode, align 8, !dbg !5255
  call void @clear_nlink(ptr noundef %16) #10, !dbg !5256
  %17 = load ptr, ptr %inode, align 8, !dbg !5257
  %call12 = call i32 @fat_truncate_time(ptr noundef %17, ptr noundef null, i32 noundef 4) #10, !dbg !5258
  %18 = load ptr, ptr %inode, align 8, !dbg !5259
  call void @fat_detach(ptr noundef %18) #10, !dbg !5260
  br label %out, !dbg !5260

out:                                              ; preds = %if.end11, %if.then10, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !5207), !dbg !5261
  %19 = load ptr, ptr %sb, align 8, !dbg !5262
  %call13 = call ptr @MSDOS_SB(ptr noundef %19) #10, !dbg !5263
  %s_lock14 = getelementptr inbounds %struct.msdos_sb_info, ptr %call13, i32 0, i32 15, !dbg !5264
  call void @mutex_unlock(ptr noundef %s_lock14) #10, !dbg !5265
  %20 = load i32, ptr %err, align 4, !dbg !5266
  %tobool15 = icmp ne i32 %20, 0, !dbg !5266
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !5268

if.then16:                                        ; preds = %out
  %21 = load ptr, ptr %sb, align 8, !dbg !5269
  %22 = load ptr, ptr %dir.addr, align 8, !dbg !5270
  %23 = load ptr, ptr %inode, align 8, !dbg !5271
  %call17 = call i32 @fat_flush_inodes(ptr noundef %21, ptr noundef %22, ptr noundef %23) #10, !dbg !5272
  store i32 %call17, ptr %err, align 4, !dbg !5273
  br label %if.end18, !dbg !5274

if.end18:                                         ; preds = %if.then16, %out
  %24 = load i32, ptr %err, align 4, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !5276
  call void @llvm.lifetime.end.p0(i64 40, ptr %sinfo) #12, !dbg !5276
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !5276
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #12, !dbg !5276
  ret i32 %24, !dbg !5277
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_rename(ptr noundef %idmap, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #2 align 16 !dbg !5278 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %old_dir.addr = alloca ptr, align 8
  %old_dentry.addr = alloca ptr, align 8
  %new_dir.addr = alloca ptr, align 8
  %new_dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %sb = alloca ptr, align 8
  %old_msdos_name = alloca [11 x i8], align 1
  %new_msdos_name = alloca [11 x i8], align 1
  %err = alloca i32, align 4
  %is_hid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5280, metadata !DIExpression()), !dbg !5292
  store ptr %old_dir, ptr %old_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_dir.addr, metadata !5281, metadata !DIExpression()), !dbg !5293
  store ptr %old_dentry, ptr %old_dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_dentry.addr, metadata !5282, metadata !DIExpression()), !dbg !5294
  store ptr %new_dir, ptr %new_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_dir.addr, metadata !5283, metadata !DIExpression()), !dbg !5295
  store ptr %new_dentry, ptr %new_dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_dentry.addr, metadata !5284, metadata !DIExpression()), !dbg !5296
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5285, metadata !DIExpression()), !dbg !5297
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #12, !dbg !5298
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5286, metadata !DIExpression()), !dbg !5299
  %0 = load ptr, ptr %old_dir.addr, align 8, !dbg !5300
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5301
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5301
  store ptr %1, ptr %sb, align 8, !dbg !5299
  call void @llvm.lifetime.start.p0(i64 11, ptr %old_msdos_name) #12, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %old_msdos_name, metadata !5287, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 11, ptr %new_msdos_name) #12, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %new_msdos_name, metadata !5288, metadata !DIExpression()), !dbg !5304
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5289, metadata !DIExpression()), !dbg !5306
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_hid) #12, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %is_hid, metadata !5290, metadata !DIExpression()), !dbg !5307
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5308
  %and = and i32 %2, -2, !dbg !5310
  %tobool = icmp ne i32 %and, 0, !dbg !5310
  br i1 %tobool, label %if.then, label %if.end, !dbg !5311

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5312

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sb, align 8, !dbg !5313
  %call = call ptr @MSDOS_SB(ptr noundef %3) #10, !dbg !5314
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %call, i32 0, i32 15, !dbg !5315
  call void @mutex_lock(ptr noundef %s_lock) #10, !dbg !5316
  %4 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5317
  %d_name = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, !dbg !5318
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !5319
  %5 = load ptr, ptr %name, align 8, !dbg !5319
  %6 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5320
  %d_name1 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 4, !dbg !5321
  %7 = getelementptr inbounds %struct.qstr, ptr %d_name1, i32 0, i32 0, !dbg !5322
  %len = getelementptr inbounds %struct.anon.18, ptr %7, i32 0, i32 1, !dbg !5322
  %8 = load i32, ptr %len, align 4, !dbg !5322
  %arraydecay = getelementptr inbounds [11 x i8], ptr %old_msdos_name, i64 0, i64 0, !dbg !5323
  %9 = load ptr, ptr %old_dir.addr, align 8, !dbg !5324
  %i_sb2 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9, !dbg !5325
  %10 = load ptr, ptr %i_sb2, align 8, !dbg !5325
  %call3 = call ptr @MSDOS_SB(ptr noundef %10) #10, !dbg !5326
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %call3, i32 0, i32 19, !dbg !5327
  %call4 = call i32 @msdos_format_name(ptr noundef %5, i32 noundef %8, ptr noundef %arraydecay, ptr noundef %options) #10, !dbg !5328
  store i32 %call4, ptr %err, align 4, !dbg !5329
  %11 = load i32, ptr %err, align 4, !dbg !5330
  %tobool5 = icmp ne i32 %11, 0, !dbg !5330
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5332

if.then6:                                         ; preds = %if.end
  br label %out, !dbg !5333

if.end7:                                          ; preds = %if.end
  %12 = load ptr, ptr %new_dentry.addr, align 8, !dbg !5334
  %d_name8 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 4, !dbg !5335
  %name9 = getelementptr inbounds %struct.qstr, ptr %d_name8, i32 0, i32 1, !dbg !5336
  %13 = load ptr, ptr %name9, align 8, !dbg !5336
  %14 = load ptr, ptr %new_dentry.addr, align 8, !dbg !5337
  %d_name10 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 4, !dbg !5338
  %15 = getelementptr inbounds %struct.qstr, ptr %d_name10, i32 0, i32 0, !dbg !5339
  %len11 = getelementptr inbounds %struct.anon.18, ptr %15, i32 0, i32 1, !dbg !5339
  %16 = load i32, ptr %len11, align 4, !dbg !5339
  %arraydecay12 = getelementptr inbounds [11 x i8], ptr %new_msdos_name, i64 0, i64 0, !dbg !5340
  %17 = load ptr, ptr %new_dir.addr, align 8, !dbg !5341
  %i_sb13 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 9, !dbg !5342
  %18 = load ptr, ptr %i_sb13, align 8, !dbg !5342
  %call14 = call ptr @MSDOS_SB(ptr noundef %18) #10, !dbg !5343
  %options15 = getelementptr inbounds %struct.msdos_sb_info, ptr %call14, i32 0, i32 19, !dbg !5344
  %call16 = call i32 @msdos_format_name(ptr noundef %13, i32 noundef %16, ptr noundef %arraydecay12, ptr noundef %options15) #10, !dbg !5345
  store i32 %call16, ptr %err, align 4, !dbg !5346
  %19 = load i32, ptr %err, align 4, !dbg !5347
  %tobool17 = icmp ne i32 %19, 0, !dbg !5347
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5349

if.then18:                                        ; preds = %if.end7
  br label %out, !dbg !5350

if.end19:                                         ; preds = %if.end7
  %20 = load ptr, ptr %new_dentry.addr, align 8, !dbg !5351
  %d_name20 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 4, !dbg !5352
  %name21 = getelementptr inbounds %struct.qstr, ptr %d_name20, i32 0, i32 1, !dbg !5353
  %21 = load ptr, ptr %name21, align 8, !dbg !5353
  %arrayidx = getelementptr i8, ptr %21, i64 0, !dbg !5351
  %22 = load i8, ptr %arrayidx, align 1, !dbg !5351
  %conv = zext i8 %22 to i32, !dbg !5351
  %cmp = icmp eq i32 %conv, 46, !dbg !5354
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5355

land.rhs:                                         ; preds = %if.end19
  %arrayidx23 = getelementptr [11 x i8], ptr %new_msdos_name, i64 0, i64 0, !dbg !5356
  %23 = load i8, ptr %arrayidx23, align 1, !dbg !5356
  %conv24 = zext i8 %23 to i32, !dbg !5356
  %cmp25 = icmp ne i32 %conv24, 46, !dbg !5357
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end19
  %24 = phi i1 [ false, %if.end19 ], [ %cmp25, %land.rhs ], !dbg !5358
  %land.ext = zext i1 %24 to i32, !dbg !5355
  store i32 %land.ext, ptr %is_hid, align 4, !dbg !5359
  %25 = load ptr, ptr %old_dir.addr, align 8, !dbg !5360
  %arraydecay27 = getelementptr inbounds [11 x i8], ptr %old_msdos_name, i64 0, i64 0, !dbg !5361
  %26 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5362
  %27 = load ptr, ptr %new_dir.addr, align 8, !dbg !5363
  %arraydecay28 = getelementptr inbounds [11 x i8], ptr %new_msdos_name, i64 0, i64 0, !dbg !5364
  %28 = load ptr, ptr %new_dentry.addr, align 8, !dbg !5365
  %29 = load i32, ptr %is_hid, align 4, !dbg !5366
  %call29 = call i32 @do_msdos_rename(ptr noundef %25, ptr noundef %arraydecay27, ptr noundef %26, ptr noundef %27, ptr noundef %arraydecay28, ptr noundef %28, i32 noundef %29) #10, !dbg !5367
  store i32 %call29, ptr %err, align 4, !dbg !5368
  br label %out, !dbg !5369

out:                                              ; preds = %land.end, %if.then18, %if.then6
  call void @llvm.dbg.label(metadata !5291), !dbg !5370
  %30 = load ptr, ptr %sb, align 8, !dbg !5371
  %call30 = call ptr @MSDOS_SB(ptr noundef %30) #10, !dbg !5372
  %s_lock31 = getelementptr inbounds %struct.msdos_sb_info, ptr %call30, i32 0, i32 15, !dbg !5373
  call void @mutex_unlock(ptr noundef %s_lock31) #10, !dbg !5374
  %31 = load i32, ptr %err, align 4, !dbg !5375
  %tobool32 = icmp ne i32 %31, 0, !dbg !5375
  br i1 %tobool32, label %if.end35, label %if.then33, !dbg !5377

if.then33:                                        ; preds = %out
  %32 = load ptr, ptr %sb, align 8, !dbg !5378
  %33 = load ptr, ptr %old_dir.addr, align 8, !dbg !5379
  %34 = load ptr, ptr %new_dir.addr, align 8, !dbg !5380
  %call34 = call i32 @fat_flush_inodes(ptr noundef %32, ptr noundef %33, ptr noundef %34) #10, !dbg !5381
  store i32 %call34, ptr %err, align 4, !dbg !5382
  br label %if.end35, !dbg !5383

if.end35:                                         ; preds = %if.then33, %out
  %35 = load i32, ptr %err, align 4, !dbg !5384
  store i32 %35, ptr %retval, align 4, !dbg !5385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5385

cleanup:                                          ; preds = %if.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_hid) #12, !dbg !5386
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !5386
  call void @llvm.lifetime.end.p0(i64 11, ptr %new_msdos_name) #12, !dbg !5386
  call void @llvm.lifetime.end.p0(i64 11, ptr %old_msdos_name) #12, !dbg !5386
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #12, !dbg !5386
  %36 = load i32, ptr %retval, align 4, !dbg !5386
  ret i32 %36, !dbg !5386
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_update_time(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5387 dso_local void @mutex_lock(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_find(ptr noundef %dir, ptr noundef %name, i32 noundef %len, ptr noundef %sinfo) #2 align 16 !dbg !5391 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %sinfo.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %msdos_name = alloca [11 x i8], align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5396, metadata !DIExpression()), !dbg !5403
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5397, metadata !DIExpression()), !dbg !5404
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5398, metadata !DIExpression()), !dbg !5405
  store ptr %sinfo, ptr %sinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sinfo.addr, metadata !5399, metadata !DIExpression()), !dbg !5406
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #12, !dbg !5407
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5400, metadata !DIExpression()), !dbg !5408
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5409
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5410
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5410
  %call = call ptr @MSDOS_SB(ptr noundef %1) #10, !dbg !5411
  store ptr %call, ptr %sbi, align 8, !dbg !5408
  call void @llvm.lifetime.start.p0(i64 11, ptr %msdos_name) #12, !dbg !5412
  call void @llvm.dbg.declare(metadata ptr %msdos_name, metadata !5401, metadata !DIExpression()), !dbg !5413
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5402, metadata !DIExpression()), !dbg !5415
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5416
  %3 = load i32, ptr %len.addr, align 4, !dbg !5417
  %arraydecay = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !5418
  %4 = load ptr, ptr %sbi, align 8, !dbg !5419
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %4, i32 0, i32 19, !dbg !5420
  %call1 = call i32 @msdos_format_name(ptr noundef %2, i32 noundef %3, ptr noundef %arraydecay, ptr noundef %options) #10, !dbg !5421
  store i32 %call1, ptr %err, align 4, !dbg !5422
  %5 = load i32, ptr %err, align 4, !dbg !5423
  %tobool = icmp ne i32 %5, 0, !dbg !5423
  br i1 %tobool, label %if.then, label %if.end, !dbg !5425

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !5426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5426

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dir.addr, align 8, !dbg !5427
  %arraydecay2 = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !5428
  %7 = load ptr, ptr %sinfo.addr, align 8, !dbg !5429
  %call3 = call i32 @fat_scan(ptr noundef %6, ptr noundef %arraydecay2, ptr noundef %7) #10, !dbg !5430
  store i32 %call3, ptr %err, align 4, !dbg !5431
  %8 = load i32, ptr %err, align 4, !dbg !5432
  %tobool4 = icmp ne i32 %8, 0, !dbg !5432
  br i1 %tobool4, label %if.end25, label %land.lhs.true, !dbg !5434

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %sbi, align 8, !dbg !5435
  %options5 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, !dbg !5436
  %dotsOK = getelementptr inbounds %struct.fat_mount_options, ptr %options5, i32 0, i32 12, !dbg !5437
  %bf.load = load i16, ptr %dotsOK, align 8, !dbg !5437
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !5437
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5437
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5437
  %tobool6 = icmp ne i32 %bf.cast, 0, !dbg !5435
  br i1 %tobool6, label %if.then7, label %if.end25, !dbg !5438

if.then7:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %name.addr, align 8, !dbg !5439
  %arrayidx = getelementptr i8, ptr %10, i64 0, !dbg !5439
  %11 = load i8, ptr %arrayidx, align 1, !dbg !5439
  %conv = zext i8 %11 to i32, !dbg !5439
  %cmp = icmp eq i32 %conv, 46, !dbg !5442
  br i1 %cmp, label %if.then9, label %if.else, !dbg !5443

if.then9:                                         ; preds = %if.then7
  %12 = load ptr, ptr %sinfo.addr, align 8, !dbg !5444
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %12, i32 0, i32 3, !dbg !5447
  %13 = load ptr, ptr %de, align 8, !dbg !5447
  %attr = getelementptr inbounds %struct.msdos_dir_entry, ptr %13, i32 0, i32 1, !dbg !5448
  %14 = load i8, ptr %attr, align 1, !dbg !5448
  %conv10 = zext i8 %14 to i32, !dbg !5444
  %and = and i32 %conv10, 2, !dbg !5449
  %tobool11 = icmp ne i32 %and, 0, !dbg !5449
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5450

if.then12:                                        ; preds = %if.then9
  store i32 -2, ptr %err, align 4, !dbg !5451
  br label %if.end13, !dbg !5452

if.end13:                                         ; preds = %if.then12, %if.then9
  br label %if.end21, !dbg !5453

if.else:                                          ; preds = %if.then7
  %15 = load ptr, ptr %sinfo.addr, align 8, !dbg !5454
  %de14 = getelementptr inbounds %struct.fat_slot_info, ptr %15, i32 0, i32 3, !dbg !5457
  %16 = load ptr, ptr %de14, align 8, !dbg !5457
  %attr15 = getelementptr inbounds %struct.msdos_dir_entry, ptr %16, i32 0, i32 1, !dbg !5458
  %17 = load i8, ptr %attr15, align 1, !dbg !5458
  %conv16 = zext i8 %17 to i32, !dbg !5454
  %and17 = and i32 %conv16, 2, !dbg !5459
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5459
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5460

if.then19:                                        ; preds = %if.else
  store i32 -2, ptr %err, align 4, !dbg !5461
  br label %if.end20, !dbg !5462

if.end20:                                         ; preds = %if.then19, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end13
  %18 = load i32, ptr %err, align 4, !dbg !5463
  %tobool22 = icmp ne i32 %18, 0, !dbg !5463
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5465

if.then23:                                        ; preds = %if.end21
  %19 = load ptr, ptr %sinfo.addr, align 8, !dbg !5466
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %19, i32 0, i32 4, !dbg !5467
  %20 = load ptr, ptr %bh, align 8, !dbg !5467
  call void @brelse(ptr noundef %20) #10, !dbg !5468
  br label %if.end24, !dbg !5468

if.end24:                                         ; preds = %if.then23, %if.end21
  br label %if.end25, !dbg !5469

if.end25:                                         ; preds = %if.end24, %land.lhs.true, %if.end
  %21 = load i32, ptr %err, align 4, !dbg !5470
  store i32 %21, ptr %retval, align 4, !dbg !5471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5471

cleanup:                                          ; preds = %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !5472
  call void @llvm.lifetime.end.p0(i64 11, ptr %msdos_name) #12, !dbg !5472
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #12, !dbg !5472
  %22 = load i32, ptr %retval, align 4, !dbg !5472
  ret i32 %22, !dbg !5472
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5473 dso_local ptr @fat_build_inode(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @brelse(ptr noundef %bh) #4 align 16 !dbg !5476 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !5482
  %tobool = icmp ne ptr %0, null, !dbg !5482
  br i1 %tobool, label %if.then, label %if.end, !dbg !5484

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bh.addr, align 8, !dbg !5485
  call void @__brelse(ptr noundef %1) #10, !dbg !5486
  br label %if.end, !dbg !5486

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !5488 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5493, metadata !DIExpression()), !dbg !5494
  %0 = load i64, ptr %error.addr, align 8, !dbg !5495
  %1 = inttoptr i64 %0 to ptr, !dbg !5496
  ret ptr %1, !dbg !5497
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5498 dso_local void @mutex_unlock(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5499 dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_format_name(ptr noundef %name, i32 noundef %len, ptr noundef %res, ptr noundef %opts) #2 align 16 !dbg !5502 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %opts.addr = alloca ptr, align 8
  %walk = alloca ptr, align 8
  %c = alloca i8, align 1
  %space = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5507, metadata !DIExpression()), !dbg !5514
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5508, metadata !DIExpression()), !dbg !5515
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5509, metadata !DIExpression()), !dbg !5516
  store ptr %opts, ptr %opts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !5510, metadata !DIExpression()), !dbg !5517
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk) #12, !dbg !5518
  call void @llvm.dbg.declare(metadata ptr %walk, metadata !5511, metadata !DIExpression()), !dbg !5519
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !5520
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5512, metadata !DIExpression()), !dbg !5521
  call void @llvm.lifetime.start.p0(i64 4, ptr %space) #12, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %space, metadata !5513, metadata !DIExpression()), !dbg !5523
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5524
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !5524
  %1 = load i8, ptr %arrayidx, align 1, !dbg !5524
  %conv = zext i8 %1 to i32, !dbg !5524
  %cmp = icmp eq i32 %conv, 46, !dbg !5526
  br i1 %cmp, label %if.then, label %if.end3, !dbg !5527

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %opts.addr, align 8, !dbg !5528
  %dotsOK = getelementptr inbounds %struct.fat_mount_options, ptr %2, i32 0, i32 12, !dbg !5531
  %bf.load = load i16, ptr %dotsOK, align 8, !dbg !5531
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !5531
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5531
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5531
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5528
  br i1 %tobool, label %if.then2, label %if.else, !dbg !5532

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5533
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !5533
  store ptr %incdec.ptr, ptr %name.addr, align 8, !dbg !5533
  %4 = load i32, ptr %len.addr, align 4, !dbg !5535
  %dec = add i32 %4, -1, !dbg !5535
  store i32 %dec, ptr %len.addr, align 4, !dbg !5535
  br label %if.end, !dbg !5536

if.else:                                          ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !5537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5537

if.end:                                           ; preds = %if.then2
  br label %if.end3, !dbg !5538

if.end3:                                          ; preds = %if.end, %entry
  store i32 1, ptr %space, align 4, !dbg !5539
  store i8 0, ptr %c, align 1, !dbg !5540
  %5 = load ptr, ptr %res.addr, align 8, !dbg !5541
  store ptr %5, ptr %walk, align 8, !dbg !5543
  br label %for.cond, !dbg !5544

for.cond:                                         ; preds = %for.inc, %if.end3
  %6 = load i32, ptr %len.addr, align 4, !dbg !5545
  %tobool4 = icmp ne i32 %6, 0, !dbg !5545
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !5547

land.rhs:                                         ; preds = %for.cond
  %7 = load ptr, ptr %walk, align 8, !dbg !5548
  %8 = load ptr, ptr %res.addr, align 8, !dbg !5549
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64, !dbg !5550
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64, !dbg !5550
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5550
  %cmp5 = icmp slt i64 %sub.ptr.sub, 8, !dbg !5551
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ], !dbg !5552
  br i1 %9, label %for.body, label %for.end, !dbg !5553

for.body:                                         ; preds = %land.end
  %10 = load ptr, ptr %name.addr, align 8, !dbg !5554
  %incdec.ptr7 = getelementptr i8, ptr %10, i32 1, !dbg !5554
  store ptr %incdec.ptr7, ptr %name.addr, align 8, !dbg !5554
  %11 = load i8, ptr %10, align 1, !dbg !5556
  store i8 %11, ptr %c, align 1, !dbg !5557
  %12 = load i32, ptr %len.addr, align 4, !dbg !5558
  %dec8 = add i32 %12, -1, !dbg !5558
  store i32 %dec8, ptr %len.addr, align 4, !dbg !5558
  %13 = load ptr, ptr %opts.addr, align 8, !dbg !5559
  %name_check = getelementptr inbounds %struct.fat_mount_options, ptr %13, i32 0, i32 8, !dbg !5561
  %14 = load i8, ptr %name_check, align 2, !dbg !5561
  %conv9 = zext i8 %14 to i32, !dbg !5559
  %cmp10 = icmp ne i32 %conv9, 114, !dbg !5562
  br i1 %cmp10, label %land.lhs.true, label %if.end15, !dbg !5563

land.lhs.true:                                    ; preds = %for.body
  %15 = load i8, ptr %c, align 1, !dbg !5564
  %conv12 = zext i8 %15 to i32, !dbg !5564
  %call = call ptr @strchr(ptr noundef @bad_chars, i32 noundef %conv12) #10, !dbg !5565
  %tobool13 = icmp ne ptr %call, null, !dbg !5565
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5566

if.then14:                                        ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !5567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5567

if.end15:                                         ; preds = %land.lhs.true, %for.body
  %16 = load ptr, ptr %opts.addr, align 8, !dbg !5568
  %name_check16 = getelementptr inbounds %struct.fat_mount_options, ptr %16, i32 0, i32 8, !dbg !5570
  %17 = load i8, ptr %name_check16, align 2, !dbg !5570
  %conv17 = zext i8 %17 to i32, !dbg !5568
  %cmp18 = icmp eq i32 %conv17, 115, !dbg !5571
  br i1 %cmp18, label %land.lhs.true20, label %if.end25, !dbg !5572

land.lhs.true20:                                  ; preds = %if.end15
  %18 = load i8, ptr %c, align 1, !dbg !5573
  %conv21 = zext i8 %18 to i32, !dbg !5573
  %call22 = call ptr @strchr(ptr noundef @bad_if_strict, i32 noundef %conv21) #10, !dbg !5574
  %tobool23 = icmp ne ptr %call22, null, !dbg !5574
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5575

if.then24:                                        ; preds = %land.lhs.true20
  store i32 -22, ptr %retval, align 4, !dbg !5576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5576

if.end25:                                         ; preds = %land.lhs.true20, %if.end15
  %19 = load i8, ptr %c, align 1, !dbg !5577
  %conv26 = zext i8 %19 to i32, !dbg !5577
  %cmp27 = icmp sge i32 %conv26, 65, !dbg !5579
  br i1 %cmp27, label %land.lhs.true29, label %if.end39, !dbg !5580

land.lhs.true29:                                  ; preds = %if.end25
  %20 = load i8, ptr %c, align 1, !dbg !5581
  %conv30 = zext i8 %20 to i32, !dbg !5581
  %cmp31 = icmp sle i32 %conv30, 90, !dbg !5582
  br i1 %cmp31, label %land.lhs.true33, label %if.end39, !dbg !5583

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %21 = load ptr, ptr %opts.addr, align 8, !dbg !5584
  %name_check34 = getelementptr inbounds %struct.fat_mount_options, ptr %21, i32 0, i32 8, !dbg !5585
  %22 = load i8, ptr %name_check34, align 2, !dbg !5585
  %conv35 = zext i8 %22 to i32, !dbg !5584
  %cmp36 = icmp eq i32 %conv35, 115, !dbg !5586
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !5587

if.then38:                                        ; preds = %land.lhs.true33
  store i32 -22, ptr %retval, align 4, !dbg !5588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5588

if.end39:                                         ; preds = %land.lhs.true33, %land.lhs.true29, %if.end25
  %23 = load i8, ptr %c, align 1, !dbg !5589
  %conv40 = zext i8 %23 to i32, !dbg !5589
  %cmp41 = icmp slt i32 %conv40, 32, !dbg !5591
  br i1 %cmp41, label %if.then50, label %lor.lhs.false, !dbg !5592

lor.lhs.false:                                    ; preds = %if.end39
  %24 = load i8, ptr %c, align 1, !dbg !5593
  %conv43 = zext i8 %24 to i32, !dbg !5593
  %cmp44 = icmp eq i32 %conv43, 58, !dbg !5594
  br i1 %cmp44, label %if.then50, label %lor.lhs.false46, !dbg !5595

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %25 = load i8, ptr %c, align 1, !dbg !5596
  %conv47 = zext i8 %25 to i32, !dbg !5596
  %cmp48 = icmp eq i32 %conv47, 92, !dbg !5597
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !5598

if.then50:                                        ; preds = %lor.lhs.false46, %lor.lhs.false, %if.end39
  store i32 -22, ptr %retval, align 4, !dbg !5599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5599

if.end51:                                         ; preds = %lor.lhs.false46
  %26 = load ptr, ptr %res.addr, align 8, !dbg !5600
  %27 = load ptr, ptr %walk, align 8, !dbg !5602
  %cmp52 = icmp eq ptr %26, %27, !dbg !5603
  br i1 %cmp52, label %land.lhs.true54, label %if.end59, !dbg !5604

land.lhs.true54:                                  ; preds = %if.end51
  %28 = load i8, ptr %c, align 1, !dbg !5605
  %conv55 = zext i8 %28 to i32, !dbg !5605
  %cmp56 = icmp eq i32 %conv55, 229, !dbg !5606
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !5607

if.then58:                                        ; preds = %land.lhs.true54
  store i8 5, ptr %c, align 1, !dbg !5608
  br label %if.end59, !dbg !5609

if.end59:                                         ; preds = %if.then58, %land.lhs.true54, %if.end51
  %29 = load i8, ptr %c, align 1, !dbg !5610
  %conv60 = zext i8 %29 to i32, !dbg !5610
  %cmp61 = icmp eq i32 %conv60, 46, !dbg !5612
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !5613

if.then63:                                        ; preds = %if.end59
  br label %for.end, !dbg !5614

if.end64:                                         ; preds = %if.end59
  %30 = load i8, ptr %c, align 1, !dbg !5615
  %conv65 = zext i8 %30 to i32, !dbg !5615
  %cmp66 = icmp eq i32 %conv65, 32, !dbg !5616
  %conv67 = zext i1 %cmp66 to i32, !dbg !5616
  store i32 %conv67, ptr %space, align 4, !dbg !5617
  %31 = load ptr, ptr %opts.addr, align 8, !dbg !5618
  %nocase = getelementptr inbounds %struct.fat_mount_options, ptr %31, i32 0, i32 12, !dbg !5619
  %bf.load68 = load i16, ptr %nocase, align 8, !dbg !5619
  %bf.lshr69 = lshr i16 %bf.load68, 9, !dbg !5619
  %bf.clear70 = and i16 %bf.lshr69, 1, !dbg !5619
  %bf.cast71 = zext i16 %bf.clear70 to i32, !dbg !5619
  %tobool72 = icmp ne i32 %bf.cast71, 0, !dbg !5618
  br i1 %tobool72, label %cond.false, label %land.lhs.true73, !dbg !5620

land.lhs.true73:                                  ; preds = %if.end64
  %32 = load i8, ptr %c, align 1, !dbg !5621
  %conv74 = zext i8 %32 to i32, !dbg !5621
  %cmp75 = icmp sge i32 %conv74, 97, !dbg !5622
  br i1 %cmp75, label %land.lhs.true77, label %cond.false, !dbg !5623

land.lhs.true77:                                  ; preds = %land.lhs.true73
  %33 = load i8, ptr %c, align 1, !dbg !5624
  %conv78 = zext i8 %33 to i32, !dbg !5624
  %cmp79 = icmp sle i32 %conv78, 122, !dbg !5625
  br i1 %cmp79, label %cond.true, label %cond.false, !dbg !5626

cond.true:                                        ; preds = %land.lhs.true77
  %34 = load i8, ptr %c, align 1, !dbg !5627
  %conv81 = zext i8 %34 to i32, !dbg !5627
  %sub = sub i32 %conv81, 32, !dbg !5628
  br label %cond.end, !dbg !5626

cond.false:                                       ; preds = %land.lhs.true77, %land.lhs.true73, %if.end64
  %35 = load i8, ptr %c, align 1, !dbg !5629
  %conv82 = zext i8 %35 to i32, !dbg !5629
  br label %cond.end, !dbg !5626

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv82, %cond.false ], !dbg !5626
  %conv83 = trunc i32 %cond to i8, !dbg !5626
  %36 = load ptr, ptr %walk, align 8, !dbg !5630
  store i8 %conv83, ptr %36, align 1, !dbg !5631
  br label %for.inc, !dbg !5632

for.inc:                                          ; preds = %cond.end
  %37 = load ptr, ptr %walk, align 8, !dbg !5633
  %incdec.ptr84 = getelementptr i8, ptr %37, i32 1, !dbg !5633
  store ptr %incdec.ptr84, ptr %walk, align 8, !dbg !5633
  br label %for.cond, !dbg !5634, !llvm.loop !5635

for.end:                                          ; preds = %if.then63, %land.end
  %38 = load i32, ptr %space, align 4, !dbg !5639
  %tobool85 = icmp ne i32 %38, 0, !dbg !5639
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !5641

if.then86:                                        ; preds = %for.end
  store i32 -22, ptr %retval, align 4, !dbg !5642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5642

if.end87:                                         ; preds = %for.end
  %39 = load ptr, ptr %opts.addr, align 8, !dbg !5643
  %name_check88 = getelementptr inbounds %struct.fat_mount_options, ptr %39, i32 0, i32 8, !dbg !5645
  %40 = load i8, ptr %name_check88, align 2, !dbg !5645
  %conv89 = zext i8 %40 to i32, !dbg !5643
  %cmp90 = icmp eq i32 %conv89, 115, !dbg !5646
  br i1 %cmp90, label %land.lhs.true92, label %if.end106, !dbg !5647

land.lhs.true92:                                  ; preds = %if.end87
  %41 = load i32, ptr %len.addr, align 4, !dbg !5648
  %tobool93 = icmp ne i32 %41, 0, !dbg !5648
  br i1 %tobool93, label %land.lhs.true94, label %if.end106, !dbg !5649

land.lhs.true94:                                  ; preds = %land.lhs.true92
  %42 = load i8, ptr %c, align 1, !dbg !5650
  %conv95 = zext i8 %42 to i32, !dbg !5650
  %cmp96 = icmp ne i32 %conv95, 46, !dbg !5651
  br i1 %cmp96, label %if.then98, label %if.end106, !dbg !5652

if.then98:                                        ; preds = %land.lhs.true94
  %43 = load ptr, ptr %name.addr, align 8, !dbg !5653
  %incdec.ptr99 = getelementptr i8, ptr %43, i32 1, !dbg !5653
  store ptr %incdec.ptr99, ptr %name.addr, align 8, !dbg !5653
  %44 = load i8, ptr %43, align 1, !dbg !5655
  store i8 %44, ptr %c, align 1, !dbg !5656
  %45 = load i32, ptr %len.addr, align 4, !dbg !5657
  %dec100 = add i32 %45, -1, !dbg !5657
  store i32 %dec100, ptr %len.addr, align 4, !dbg !5657
  %46 = load i8, ptr %c, align 1, !dbg !5658
  %conv101 = zext i8 %46 to i32, !dbg !5658
  %cmp102 = icmp ne i32 %conv101, 46, !dbg !5660
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !5661

if.then104:                                       ; preds = %if.then98
  store i32 -22, ptr %retval, align 4, !dbg !5662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5662

if.end105:                                        ; preds = %if.then98
  br label %if.end106, !dbg !5663

if.end106:                                        ; preds = %if.end105, %land.lhs.true94, %land.lhs.true92, %if.end87
  br label %while.cond, !dbg !5664

while.cond:                                       ; preds = %while.body, %if.end106
  %47 = load i8, ptr %c, align 1, !dbg !5665
  %conv107 = zext i8 %47 to i32, !dbg !5665
  %cmp108 = icmp ne i32 %conv107, 46, !dbg !5666
  br i1 %cmp108, label %land.rhs110, label %land.end113, !dbg !5667

land.rhs110:                                      ; preds = %while.cond
  %48 = load i32, ptr %len.addr, align 4, !dbg !5668
  %dec111 = add i32 %48, -1, !dbg !5668
  store i32 %dec111, ptr %len.addr, align 4, !dbg !5668
  %tobool112 = icmp ne i32 %48, 0, !dbg !5667
  br label %land.end113

land.end113:                                      ; preds = %land.rhs110, %while.cond
  %49 = phi i1 [ false, %while.cond ], [ %tobool112, %land.rhs110 ], !dbg !5669
  br i1 %49, label %while.body, label %while.end, !dbg !5664

while.body:                                       ; preds = %land.end113
  %50 = load ptr, ptr %name.addr, align 8, !dbg !5670
  %incdec.ptr114 = getelementptr i8, ptr %50, i32 1, !dbg !5670
  store ptr %incdec.ptr114, ptr %name.addr, align 8, !dbg !5670
  %51 = load i8, ptr %50, align 1, !dbg !5671
  store i8 %51, ptr %c, align 1, !dbg !5672
  br label %while.cond, !dbg !5664, !llvm.loop !5673

while.end:                                        ; preds = %land.end113
  %52 = load i8, ptr %c, align 1, !dbg !5674
  %conv115 = zext i8 %52 to i32, !dbg !5674
  %cmp116 = icmp eq i32 %conv115, 46, !dbg !5676
  br i1 %cmp116, label %if.then118, label %if.end236, !dbg !5677

if.then118:                                       ; preds = %while.end
  br label %while.cond119, !dbg !5678

while.cond119:                                    ; preds = %while.body125, %if.then118
  %53 = load ptr, ptr %walk, align 8, !dbg !5680
  %54 = load ptr, ptr %res.addr, align 8, !dbg !5681
  %sub.ptr.lhs.cast120 = ptrtoint ptr %53 to i64, !dbg !5682
  %sub.ptr.rhs.cast121 = ptrtoint ptr %54 to i64, !dbg !5682
  %sub.ptr.sub122 = sub i64 %sub.ptr.lhs.cast120, %sub.ptr.rhs.cast121, !dbg !5682
  %cmp123 = icmp slt i64 %sub.ptr.sub122, 8, !dbg !5683
  br i1 %cmp123, label %while.body125, label %while.end127, !dbg !5678

while.body125:                                    ; preds = %while.cond119
  %55 = load ptr, ptr %walk, align 8, !dbg !5684
  %incdec.ptr126 = getelementptr i8, ptr %55, i32 1, !dbg !5684
  store ptr %incdec.ptr126, ptr %walk, align 8, !dbg !5684
  store i8 32, ptr %55, align 1, !dbg !5685
  br label %while.cond119, !dbg !5678, !llvm.loop !5686

while.end127:                                     ; preds = %while.cond119
  br label %while.cond128, !dbg !5688

while.cond128:                                    ; preds = %if.end223, %while.end127
  %56 = load i32, ptr %len.addr, align 4, !dbg !5689
  %cmp129 = icmp sgt i32 %56, 0, !dbg !5690
  br i1 %cmp129, label %land.rhs131, label %land.end137, !dbg !5691

land.rhs131:                                      ; preds = %while.cond128
  %57 = load ptr, ptr %walk, align 8, !dbg !5692
  %58 = load ptr, ptr %res.addr, align 8, !dbg !5693
  %sub.ptr.lhs.cast132 = ptrtoint ptr %57 to i64, !dbg !5694
  %sub.ptr.rhs.cast133 = ptrtoint ptr %58 to i64, !dbg !5694
  %sub.ptr.sub134 = sub i64 %sub.ptr.lhs.cast132, %sub.ptr.rhs.cast133, !dbg !5694
  %cmp135 = icmp slt i64 %sub.ptr.sub134, 11, !dbg !5695
  br label %land.end137

land.end137:                                      ; preds = %land.rhs131, %while.cond128
  %59 = phi i1 [ false, %while.cond128 ], [ %cmp135, %land.rhs131 ], !dbg !5696
  br i1 %59, label %while.body138, label %while.end224, !dbg !5688

while.body138:                                    ; preds = %land.end137
  %60 = load ptr, ptr %name.addr, align 8, !dbg !5697
  %incdec.ptr139 = getelementptr i8, ptr %60, i32 1, !dbg !5697
  store ptr %incdec.ptr139, ptr %name.addr, align 8, !dbg !5697
  %61 = load i8, ptr %60, align 1, !dbg !5699
  store i8 %61, ptr %c, align 1, !dbg !5700
  %62 = load i32, ptr %len.addr, align 4, !dbg !5701
  %dec140 = add i32 %62, -1, !dbg !5701
  store i32 %dec140, ptr %len.addr, align 4, !dbg !5701
  %63 = load ptr, ptr %opts.addr, align 8, !dbg !5702
  %name_check141 = getelementptr inbounds %struct.fat_mount_options, ptr %63, i32 0, i32 8, !dbg !5704
  %64 = load i8, ptr %name_check141, align 2, !dbg !5704
  %conv142 = zext i8 %64 to i32, !dbg !5702
  %cmp143 = icmp ne i32 %conv142, 114, !dbg !5705
  br i1 %cmp143, label %land.lhs.true145, label %if.end150, !dbg !5706

land.lhs.true145:                                 ; preds = %while.body138
  %65 = load i8, ptr %c, align 1, !dbg !5707
  %conv146 = zext i8 %65 to i32, !dbg !5707
  %call147 = call ptr @strchr(ptr noundef @bad_chars, i32 noundef %conv146) #10, !dbg !5708
  %tobool148 = icmp ne ptr %call147, null, !dbg !5708
  br i1 %tobool148, label %if.then149, label %if.end150, !dbg !5709

if.then149:                                       ; preds = %land.lhs.true145
  store i32 -22, ptr %retval, align 4, !dbg !5710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5710

if.end150:                                        ; preds = %land.lhs.true145, %while.body138
  %66 = load ptr, ptr %opts.addr, align 8, !dbg !5711
  %name_check151 = getelementptr inbounds %struct.fat_mount_options, ptr %66, i32 0, i32 8, !dbg !5713
  %67 = load i8, ptr %name_check151, align 2, !dbg !5713
  %conv152 = zext i8 %67 to i32, !dbg !5711
  %cmp153 = icmp eq i32 %conv152, 115, !dbg !5714
  br i1 %cmp153, label %land.lhs.true155, label %if.end160, !dbg !5715

land.lhs.true155:                                 ; preds = %if.end150
  %68 = load i8, ptr %c, align 1, !dbg !5716
  %conv156 = zext i8 %68 to i32, !dbg !5716
  %call157 = call ptr @strchr(ptr noundef @bad_if_strict, i32 noundef %conv156) #10, !dbg !5717
  %tobool158 = icmp ne ptr %call157, null, !dbg !5717
  br i1 %tobool158, label %if.then159, label %if.end160, !dbg !5718

if.then159:                                       ; preds = %land.lhs.true155
  store i32 -22, ptr %retval, align 4, !dbg !5719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5719

if.end160:                                        ; preds = %land.lhs.true155, %if.end150
  %69 = load i8, ptr %c, align 1, !dbg !5720
  %conv161 = zext i8 %69 to i32, !dbg !5720
  %cmp162 = icmp slt i32 %conv161, 32, !dbg !5722
  br i1 %cmp162, label %if.then172, label %lor.lhs.false164, !dbg !5723

lor.lhs.false164:                                 ; preds = %if.end160
  %70 = load i8, ptr %c, align 1, !dbg !5724
  %conv165 = zext i8 %70 to i32, !dbg !5724
  %cmp166 = icmp eq i32 %conv165, 58, !dbg !5725
  br i1 %cmp166, label %if.then172, label %lor.lhs.false168, !dbg !5726

lor.lhs.false168:                                 ; preds = %lor.lhs.false164
  %71 = load i8, ptr %c, align 1, !dbg !5727
  %conv169 = zext i8 %71 to i32, !dbg !5727
  %cmp170 = icmp eq i32 %conv169, 92, !dbg !5728
  br i1 %cmp170, label %if.then172, label %if.end173, !dbg !5729

if.then172:                                       ; preds = %lor.lhs.false168, %lor.lhs.false164, %if.end160
  store i32 -22, ptr %retval, align 4, !dbg !5730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5730

if.end173:                                        ; preds = %lor.lhs.false168
  %72 = load i8, ptr %c, align 1, !dbg !5731
  %conv174 = zext i8 %72 to i32, !dbg !5731
  %cmp175 = icmp eq i32 %conv174, 46, !dbg !5733
  br i1 %cmp175, label %if.then177, label %if.end184, !dbg !5734

if.then177:                                       ; preds = %if.end173
  %73 = load ptr, ptr %opts.addr, align 8, !dbg !5735
  %name_check178 = getelementptr inbounds %struct.fat_mount_options, ptr %73, i32 0, i32 8, !dbg !5738
  %74 = load i8, ptr %name_check178, align 2, !dbg !5738
  %conv179 = zext i8 %74 to i32, !dbg !5735
  %cmp180 = icmp eq i32 %conv179, 115, !dbg !5739
  br i1 %cmp180, label %if.then182, label %if.end183, !dbg !5740

if.then182:                                       ; preds = %if.then177
  store i32 -22, ptr %retval, align 4, !dbg !5741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5741

if.end183:                                        ; preds = %if.then177
  br label %while.end224, !dbg !5742

if.end184:                                        ; preds = %if.end173
  %75 = load i8, ptr %c, align 1, !dbg !5743
  %conv185 = zext i8 %75 to i32, !dbg !5743
  %cmp186 = icmp sge i32 %conv185, 65, !dbg !5745
  br i1 %cmp186, label %land.lhs.true188, label %if.end198, !dbg !5746

land.lhs.true188:                                 ; preds = %if.end184
  %76 = load i8, ptr %c, align 1, !dbg !5747
  %conv189 = zext i8 %76 to i32, !dbg !5747
  %cmp190 = icmp sle i32 %conv189, 90, !dbg !5748
  br i1 %cmp190, label %land.lhs.true192, label %if.end198, !dbg !5749

land.lhs.true192:                                 ; preds = %land.lhs.true188
  %77 = load ptr, ptr %opts.addr, align 8, !dbg !5750
  %name_check193 = getelementptr inbounds %struct.fat_mount_options, ptr %77, i32 0, i32 8, !dbg !5751
  %78 = load i8, ptr %name_check193, align 2, !dbg !5751
  %conv194 = zext i8 %78 to i32, !dbg !5750
  %cmp195 = icmp eq i32 %conv194, 115, !dbg !5752
  br i1 %cmp195, label %if.then197, label %if.end198, !dbg !5753

if.then197:                                       ; preds = %land.lhs.true192
  store i32 -22, ptr %retval, align 4, !dbg !5754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5754

if.end198:                                        ; preds = %land.lhs.true192, %land.lhs.true188, %if.end184
  %79 = load i8, ptr %c, align 1, !dbg !5755
  %conv199 = zext i8 %79 to i32, !dbg !5755
  %cmp200 = icmp eq i32 %conv199, 32, !dbg !5756
  %conv201 = zext i1 %cmp200 to i32, !dbg !5756
  store i32 %conv201, ptr %space, align 4, !dbg !5757
  %80 = load ptr, ptr %opts.addr, align 8, !dbg !5758
  %nocase202 = getelementptr inbounds %struct.fat_mount_options, ptr %80, i32 0, i32 12, !dbg !5760
  %bf.load203 = load i16, ptr %nocase202, align 8, !dbg !5760
  %bf.lshr204 = lshr i16 %bf.load203, 9, !dbg !5760
  %bf.clear205 = and i16 %bf.lshr204, 1, !dbg !5760
  %bf.cast206 = zext i16 %bf.clear205 to i32, !dbg !5760
  %tobool207 = icmp ne i32 %bf.cast206, 0, !dbg !5758
  br i1 %tobool207, label %if.else221, label %land.lhs.true208, !dbg !5761

land.lhs.true208:                                 ; preds = %if.end198
  %81 = load i8, ptr %c, align 1, !dbg !5762
  %conv209 = zext i8 %81 to i32, !dbg !5762
  %cmp210 = icmp sge i32 %conv209, 97, !dbg !5763
  br i1 %cmp210, label %land.lhs.true212, label %if.else221, !dbg !5764

land.lhs.true212:                                 ; preds = %land.lhs.true208
  %82 = load i8, ptr %c, align 1, !dbg !5765
  %conv213 = zext i8 %82 to i32, !dbg !5765
  %cmp214 = icmp sle i32 %conv213, 122, !dbg !5766
  br i1 %cmp214, label %if.then216, label %if.else221, !dbg !5767

if.then216:                                       ; preds = %land.lhs.true212
  %83 = load i8, ptr %c, align 1, !dbg !5768
  %conv217 = zext i8 %83 to i32, !dbg !5768
  %sub218 = sub i32 %conv217, 32, !dbg !5769
  %conv219 = trunc i32 %sub218 to i8, !dbg !5768
  %84 = load ptr, ptr %walk, align 8, !dbg !5770
  %incdec.ptr220 = getelementptr i8, ptr %84, i32 1, !dbg !5770
  store ptr %incdec.ptr220, ptr %walk, align 8, !dbg !5770
  store i8 %conv219, ptr %84, align 1, !dbg !5771
  br label %if.end223, !dbg !5772

if.else221:                                       ; preds = %land.lhs.true212, %land.lhs.true208, %if.end198
  %85 = load i8, ptr %c, align 1, !dbg !5773
  %86 = load ptr, ptr %walk, align 8, !dbg !5774
  %incdec.ptr222 = getelementptr i8, ptr %86, i32 1, !dbg !5774
  store ptr %incdec.ptr222, ptr %walk, align 8, !dbg !5774
  store i8 %85, ptr %86, align 1, !dbg !5775
  br label %if.end223

if.end223:                                        ; preds = %if.else221, %if.then216
  br label %while.cond128, !dbg !5688, !llvm.loop !5776

while.end224:                                     ; preds = %if.end183, %land.end137
  %87 = load i32, ptr %space, align 4, !dbg !5778
  %tobool225 = icmp ne i32 %87, 0, !dbg !5778
  br i1 %tobool225, label %if.then226, label %if.end227, !dbg !5780

if.then226:                                       ; preds = %while.end224
  store i32 -22, ptr %retval, align 4, !dbg !5781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5781

if.end227:                                        ; preds = %while.end224
  %88 = load ptr, ptr %opts.addr, align 8, !dbg !5782
  %name_check228 = getelementptr inbounds %struct.fat_mount_options, ptr %88, i32 0, i32 8, !dbg !5784
  %89 = load i8, ptr %name_check228, align 2, !dbg !5784
  %conv229 = zext i8 %89 to i32, !dbg !5782
  %cmp230 = icmp eq i32 %conv229, 115, !dbg !5785
  br i1 %cmp230, label %land.lhs.true232, label %if.end235, !dbg !5786

land.lhs.true232:                                 ; preds = %if.end227
  %90 = load i32, ptr %len.addr, align 4, !dbg !5787
  %tobool233 = icmp ne i32 %90, 0, !dbg !5787
  br i1 %tobool233, label %if.then234, label %if.end235, !dbg !5788

if.then234:                                       ; preds = %land.lhs.true232
  store i32 -22, ptr %retval, align 4, !dbg !5789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5789

if.end235:                                        ; preds = %land.lhs.true232, %if.end227
  br label %if.end236, !dbg !5790

if.end236:                                        ; preds = %if.end235, %while.end
  br label %while.cond237, !dbg !5791

while.cond237:                                    ; preds = %while.body243, %if.end236
  %91 = load ptr, ptr %walk, align 8, !dbg !5792
  %92 = load ptr, ptr %res.addr, align 8, !dbg !5793
  %sub.ptr.lhs.cast238 = ptrtoint ptr %91 to i64, !dbg !5794
  %sub.ptr.rhs.cast239 = ptrtoint ptr %92 to i64, !dbg !5794
  %sub.ptr.sub240 = sub i64 %sub.ptr.lhs.cast238, %sub.ptr.rhs.cast239, !dbg !5794
  %cmp241 = icmp slt i64 %sub.ptr.sub240, 11, !dbg !5795
  br i1 %cmp241, label %while.body243, label %while.end245, !dbg !5791

while.body243:                                    ; preds = %while.cond237
  %93 = load ptr, ptr %walk, align 8, !dbg !5796
  %incdec.ptr244 = getelementptr i8, ptr %93, i32 1, !dbg !5796
  store ptr %incdec.ptr244, ptr %walk, align 8, !dbg !5796
  store i8 32, ptr %93, align 1, !dbg !5797
  br label %while.cond237, !dbg !5791, !llvm.loop !5798

while.end245:                                     ; preds = %while.cond237
  store i32 0, ptr %retval, align 4, !dbg !5800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5800

cleanup:                                          ; preds = %while.end245, %if.then234, %if.then226, %if.then197, %if.then182, %if.then172, %if.then159, %if.then149, %if.then104, %if.then86, %if.then50, %if.then38, %if.then24, %if.then14, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %space) #12, !dbg !5801
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !5801
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk) #12, !dbg !5801
  %94 = load i32, ptr %retval, align 4, !dbg !5801
  ret i32 %94, !dbg !5801
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5802 dso_local i32 @fat_scan(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5805 dso_local ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5809 dso_local void @__brelse(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5810 dso_local { i64, i64 } @current_time(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_add_entry(ptr noundef %dir, ptr noundef %name, i32 noundef %is_dir, i32 noundef %is_hid, i32 noundef %cluster, ptr noundef %ts, ptr noundef %sinfo) #2 align 16 !dbg !5813 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %is_dir.addr = alloca i32, align 4
  %is_hid.addr = alloca i32, align 4
  %cluster.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %de = alloca %struct.msdos_dir_entry, align 4
  %time = alloca i16, align 2
  %date = alloca i16, align 2
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5818, metadata !DIExpression()), !dbg !5830
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5819, metadata !DIExpression()), !dbg !5831
  store i32 %is_dir, ptr %is_dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %is_dir.addr, metadata !5820, metadata !DIExpression()), !dbg !5832
  store i32 %is_hid, ptr %is_hid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %is_hid.addr, metadata !5821, metadata !DIExpression()), !dbg !5833
  store i32 %cluster, ptr %cluster.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cluster.addr, metadata !5822, metadata !DIExpression()), !dbg !5834
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !5823, metadata !DIExpression()), !dbg !5835
  store ptr %sinfo, ptr %sinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sinfo.addr, metadata !5824, metadata !DIExpression()), !dbg !5836
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #12, !dbg !5837
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5825, metadata !DIExpression()), !dbg !5838
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5839
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5840
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5840
  %call = call ptr @MSDOS_SB(ptr noundef %1) #10, !dbg !5841
  store ptr %call, ptr %sbi, align 8, !dbg !5838
  call void @llvm.lifetime.start.p0(i64 32, ptr %de) #12, !dbg !5842
  call void @llvm.dbg.declare(metadata ptr %de, metadata !5826, metadata !DIExpression()), !dbg !5843
  call void @llvm.lifetime.start.p0(i64 2, ptr %time) #12, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %time, metadata !5827, metadata !DIExpression()), !dbg !5845
  call void @llvm.lifetime.start.p0(i64 2, ptr %date) #12, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %date, metadata !5828, metadata !DIExpression()), !dbg !5846
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5829, metadata !DIExpression()), !dbg !5848
  %name1 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 0, !dbg !5849
  %arraydecay = getelementptr inbounds [11 x i8], ptr %name1, i64 0, i64 0, !dbg !5850
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5851
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 1 %2, i64 11, i1 false), !dbg !5850
  %3 = load i32, ptr %is_dir.addr, align 4, !dbg !5852
  %tobool = icmp ne i32 %3, 0, !dbg !5852
  %4 = zext i1 %tobool to i64, !dbg !5852
  %cond = select i1 %tobool, i32 16, i32 32, !dbg !5852
  %conv = trunc i32 %cond to i8, !dbg !5852
  %attr = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 1, !dbg !5853
  store i8 %conv, ptr %attr, align 1, !dbg !5854
  %5 = load i32, ptr %is_hid.addr, align 4, !dbg !5855
  %tobool2 = icmp ne i32 %5, 0, !dbg !5855
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5857

if.then:                                          ; preds = %entry
  %attr3 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 1, !dbg !5858
  %6 = load i8, ptr %attr3, align 1, !dbg !5859
  %conv4 = zext i8 %6 to i32, !dbg !5859
  %or = or i32 %conv4, 2, !dbg !5859
  %conv5 = trunc i32 %or to i8, !dbg !5859
  store i8 %conv5, ptr %attr3, align 1, !dbg !5859
  br label %if.end, !dbg !5860

if.end:                                           ; preds = %if.then, %entry
  %lcase = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 2, !dbg !5861
  store i8 0, ptr %lcase, align 4, !dbg !5862
  %7 = load ptr, ptr %sbi, align 8, !dbg !5863
  %8 = load ptr, ptr %ts.addr, align 8, !dbg !5864
  call void @fat_time_unix2fat(ptr noundef %7, ptr noundef %8, ptr noundef %time, ptr noundef %date, ptr noundef null) #10, !dbg !5865
  %adate = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 6, !dbg !5866
  store i16 0, ptr %adate, align 2, !dbg !5867
  %cdate = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 5, !dbg !5868
  store i16 0, ptr %cdate, align 4, !dbg !5869
  %ctime = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 4, !dbg !5870
  store i16 0, ptr %ctime, align 2, !dbg !5871
  %ctime_cs = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 3, !dbg !5872
  store i8 0, ptr %ctime_cs, align 1, !dbg !5873
  %9 = load i16, ptr %time, align 2, !dbg !5874
  %time6 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 8, !dbg !5875
  store i16 %9, ptr %time6, align 2, !dbg !5876
  %10 = load i16, ptr %date, align 2, !dbg !5877
  %date7 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 9, !dbg !5878
  store i16 %10, ptr %date7, align 4, !dbg !5879
  %11 = load i32, ptr %cluster.addr, align 4, !dbg !5880
  call void @fat_set_start(ptr noundef %de, i32 noundef %11) #10, !dbg !5881
  %size = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 11, !dbg !5882
  store i32 0, ptr %size, align 4, !dbg !5883
  %12 = load ptr, ptr %dir.addr, align 8, !dbg !5884
  %13 = load ptr, ptr %sinfo.addr, align 8, !dbg !5885
  %call8 = call i32 @fat_add_entries(ptr noundef %12, ptr noundef %de, i32 noundef 1, ptr noundef %13) #10, !dbg !5886
  store i32 %call8, ptr %err, align 4, !dbg !5887
  %14 = load i32, ptr %err, align 4, !dbg !5888
  %tobool9 = icmp ne i32 %14, 0, !dbg !5888
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5890

if.then10:                                        ; preds = %if.end
  %15 = load i32, ptr %err, align 4, !dbg !5891
  store i32 %15, ptr %retval, align 4, !dbg !5892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5892

if.end11:                                         ; preds = %if.end
  %16 = load ptr, ptr %dir.addr, align 8, !dbg !5893
  %17 = load ptr, ptr %ts.addr, align 8, !dbg !5894
  %call12 = call i32 @fat_truncate_time(ptr noundef %16, ptr noundef %17, i32 noundef 6) #10, !dbg !5895
  %18 = load ptr, ptr %dir.addr, align 8, !dbg !5896
  %i_sb13 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 9, !dbg !5896
  %19 = load ptr, ptr %i_sb13, align 8, !dbg !5896
  %s_flags = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 10, !dbg !5896
  %20 = load i64, ptr %s_flags, align 16, !dbg !5896
  %and = and i64 %20, 144, !dbg !5896
  %tobool14 = icmp ne i64 %and, 0, !dbg !5896
  br i1 %tobool14, label %if.then17, label %lor.lhs.false, !dbg !5896

lor.lhs.false:                                    ; preds = %if.end11
  %21 = load ptr, ptr %dir.addr, align 8, !dbg !5896
  %i_flags = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 5, !dbg !5896
  %22 = load i32, ptr %i_flags, align 4, !dbg !5896
  %and15 = and i32 %22, 65, !dbg !5896
  %tobool16 = icmp ne i32 %and15, 0, !dbg !5896
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !5898

if.then17:                                        ; preds = %lor.lhs.false, %if.end11
  %23 = load ptr, ptr %dir.addr, align 8, !dbg !5899
  %call18 = call i32 @fat_sync_inode(ptr noundef %23) #10, !dbg !5900
  br label %if.end19, !dbg !5901

if.else:                                          ; preds = %lor.lhs.false
  %24 = load ptr, ptr %dir.addr, align 8, !dbg !5902
  call void @mark_inode_dirty(ptr noundef %24) #10, !dbg !5903
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  store i32 0, ptr %retval, align 4, !dbg !5904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5904

cleanup:                                          ; preds = %if.end19, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !5905
  call void @llvm.lifetime.end.p0(i64 2, ptr %date) #12, !dbg !5905
  call void @llvm.lifetime.end.p0(i64 2, ptr %time) #12, !dbg !5905
  call void @llvm.lifetime.end.p0(i64 32, ptr %de) #12, !dbg !5905
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #12, !dbg !5905
  %25 = load i32, ptr %retval, align 4, !dbg !5905
  ret i32 %25, !dbg !5905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5906 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5910, metadata !DIExpression()), !dbg !5911
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5912
  %1 = ptrtoint ptr %0 to i64, !dbg !5912
  %2 = inttoptr i64 %1 to ptr, !dbg !5912
  %3 = ptrtoint ptr %2 to i64, !dbg !5912
  %cmp = icmp uge i64 %3, -4095, !dbg !5912
  %lnot = xor i1 %cmp, true, !dbg !5912
  %lnot1 = xor i1 %lnot, true, !dbg !5912
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5912
  %conv = sext i32 %lnot.ext to i64, !dbg !5912
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5912
  %tobool = icmp ne i64 %expval, 0, !dbg !5912
  ret i1 %tobool, !dbg !5913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !5914 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5920
  %1 = ptrtoint ptr %0 to i64, !dbg !5921
  ret i64 %1, !dbg !5922
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5923 dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5926 dso_local void @d_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5927 dso_local i32 @fat_flush_inodes(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5930 dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fat_set_start(ptr noundef %de, i32 noundef %cluster) #4 align 16 !dbg !5935 {
entry:
  %de.addr = alloca ptr, align 8
  %cluster.addr = alloca i32, align 4
  store ptr %de, ptr %de.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !5939, metadata !DIExpression()), !dbg !5941
  store i32 %cluster, ptr %cluster.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cluster.addr, metadata !5940, metadata !DIExpression()), !dbg !5942
  %0 = load i32, ptr %cluster.addr, align 4, !dbg !5943
  %conv = trunc i32 %0 to i16, !dbg !5943
  %1 = load ptr, ptr %de.addr, align 8, !dbg !5944
  %start = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 10, !dbg !5945
  store i16 %conv, ptr %start, align 2, !dbg !5946
  %2 = load i32, ptr %cluster.addr, align 4, !dbg !5947
  %shr = ashr i32 %2, 16, !dbg !5947
  %conv1 = trunc i32 %shr to i16, !dbg !5947
  %3 = load ptr, ptr %de.addr, align 8, !dbg !5948
  %starthi = getelementptr inbounds %struct.msdos_dir_entry, ptr %3, i32 0, i32 7, !dbg !5949
  store i16 %conv1, ptr %starthi, align 4, !dbg !5950
  ret void, !dbg !5951
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5952 dso_local i32 @fat_add_entries(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5955 dso_local i32 @fat_sync_inode(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mark_inode_dirty(ptr noundef %inode) #4 align 16 !dbg !5956 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5960
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #10, !dbg !5961
  ret void, !dbg !5962
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5963 dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #4 align 16 !dbg !5964 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5970
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5971
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5971
  ret ptr %1, !dbg !5972
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5973 dso_local i32 @fat_remove_entries(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5976 dso_local void @clear_nlink(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5977 dso_local void @fat_detach(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5978 dso_local i32 @fat_alloc_new_dir(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5981 dso_local void @inc_nlink(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5982 dso_local void @set_nlink(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5985 dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5986 dso_local i32 @fat_dir_empty(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5987 dso_local void @drop_nlink(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_msdos_rename(ptr noundef %old_dir, ptr noundef %old_name, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_name, ptr noundef %new_dentry, i32 noundef %is_hid) #2 align 16 !dbg !5988 {
entry:
  %old_dir.addr = alloca ptr, align 8
  %old_name.addr = alloca ptr, align 8
  %old_dentry.addr = alloca ptr, align 8
  %new_dir.addr = alloca ptr, align 8
  %new_name.addr = alloca ptr, align 8
  %new_dentry.addr = alloca ptr, align 8
  %is_hid.addr = alloca i32, align 4
  %dotdot_bh = alloca ptr, align 8
  %dotdot_de = alloca ptr, align 8
  %old_inode = alloca ptr, align 8
  %new_inode = alloca ptr, align 8
  %old_sinfo = alloca %struct.fat_slot_info, align 8
  %sinfo = alloca %struct.fat_slot_info, align 8
  %ts = alloca %struct.timespec64, align 8
  %new_i_pos = alloca i64, align 8
  %err = alloca i32, align 4
  %old_attrs = alloca i32, align 4
  %is_dir = alloca i32, align 4
  %update_dotdot = alloca i32, align 4
  %corrupt = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  %err2 = alloca i32, align 4
  store ptr %old_dir, ptr %old_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_dir.addr, metadata !5992, metadata !DIExpression()), !dbg !6018
  store ptr %old_name, ptr %old_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_name.addr, metadata !5993, metadata !DIExpression()), !dbg !6019
  store ptr %old_dentry, ptr %old_dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_dentry.addr, metadata !5994, metadata !DIExpression()), !dbg !6020
  store ptr %new_dir, ptr %new_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_dir.addr, metadata !5995, metadata !DIExpression()), !dbg !6021
  store ptr %new_name, ptr %new_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_name.addr, metadata !5996, metadata !DIExpression()), !dbg !6022
  store ptr %new_dentry, ptr %new_dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_dentry.addr, metadata !5997, metadata !DIExpression()), !dbg !6023
  store i32 %is_hid, ptr %is_hid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %is_hid.addr, metadata !5998, metadata !DIExpression()), !dbg !6024
  call void @llvm.lifetime.start.p0(i64 8, ptr %dotdot_bh) #12, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %dotdot_bh, metadata !5999, metadata !DIExpression()), !dbg !6026
  call void @llvm.lifetime.start.p0(i64 8, ptr %dotdot_de) #12, !dbg !6027
  call void @llvm.dbg.declare(metadata ptr %dotdot_de, metadata !6000, metadata !DIExpression()), !dbg !6028
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_inode) #12, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %old_inode, metadata !6001, metadata !DIExpression()), !dbg !6030
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_inode) #12, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %new_inode, metadata !6002, metadata !DIExpression()), !dbg !6031
  call void @llvm.lifetime.start.p0(i64 40, ptr %old_sinfo) #12, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %old_sinfo, metadata !6003, metadata !DIExpression()), !dbg !6033
  call void @llvm.lifetime.start.p0(i64 40, ptr %sinfo) #12, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !6004, metadata !DIExpression()), !dbg !6034
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #12, !dbg !6035
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !6005, metadata !DIExpression()), !dbg !6036
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_i_pos) #12, !dbg !6037
  call void @llvm.dbg.declare(metadata ptr %new_i_pos, metadata !6006, metadata !DIExpression()), !dbg !6038
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6007, metadata !DIExpression()), !dbg !6040
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_attrs) #12, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %old_attrs, metadata !6008, metadata !DIExpression()), !dbg !6041
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_dir) #12, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %is_dir, metadata !6009, metadata !DIExpression()), !dbg !6042
  call void @llvm.lifetime.start.p0(i64 4, ptr %update_dotdot) #12, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %update_dotdot, metadata !6010, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 4, ptr %corrupt) #12, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %corrupt, metadata !6011, metadata !DIExpression()), !dbg !6044
  store i32 0, ptr %corrupt, align 4, !dbg !6044
  store ptr null, ptr %dotdot_bh, align 8, !dbg !6045
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4, !dbg !6046
  store ptr null, ptr %bh, align 8, !dbg !6047
  %bh1 = getelementptr inbounds %struct.fat_slot_info, ptr %old_sinfo, i32 0, i32 4, !dbg !6048
  store ptr null, ptr %bh1, align 8, !dbg !6049
  %0 = load ptr, ptr %old_dentry.addr, align 8, !dbg !6050
  %call = call ptr @d_inode(ptr noundef %0) #10, !dbg !6051
  store ptr %call, ptr %old_inode, align 8, !dbg !6052
  %1 = load ptr, ptr %new_dentry.addr, align 8, !dbg !6053
  %call2 = call ptr @d_inode(ptr noundef %1) #10, !dbg !6054
  store ptr %call2, ptr %new_inode, align 8, !dbg !6055
  %2 = load ptr, ptr %old_dir.addr, align 8, !dbg !6056
  %3 = load ptr, ptr %old_name.addr, align 8, !dbg !6057
  %call3 = call i32 @fat_scan(ptr noundef %2, ptr noundef %3, ptr noundef %old_sinfo) #10, !dbg !6058
  store i32 %call3, ptr %err, align 4, !dbg !6059
  %4 = load i32, ptr %err, align 4, !dbg !6060
  %tobool = icmp ne i32 %4, 0, !dbg !6060
  br i1 %tobool, label %if.then, label %if.end, !dbg !6062

if.then:                                          ; preds = %entry
  store i32 -5, ptr %err, align 4, !dbg !6063
  br label %out, !dbg !6065

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %old_inode, align 8, !dbg !6066
  %i_mode = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 0, !dbg !6066
  %6 = load i16, ptr %i_mode, align 8, !dbg !6066
  %conv = zext i16 %6 to i32, !dbg !6066
  %and = and i32 %conv, 61440, !dbg !6066
  %cmp = icmp eq i32 %and, 16384, !dbg !6066
  %conv4 = zext i1 %cmp to i32, !dbg !6066
  store i32 %conv4, ptr %is_dir, align 4, !dbg !6067
  %7 = load i32, ptr %is_dir, align 4, !dbg !6068
  %tobool5 = icmp ne i32 %7, 0, !dbg !6068
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !6069

land.rhs:                                         ; preds = %if.end
  %8 = load ptr, ptr %old_dir.addr, align 8, !dbg !6070
  %9 = load ptr, ptr %new_dir.addr, align 8, !dbg !6071
  %cmp6 = icmp ne ptr %8, %9, !dbg !6072
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %10 = phi i1 [ false, %if.end ], [ %cmp6, %land.rhs ], !dbg !6073
  %land.ext = zext i1 %10 to i32, !dbg !6069
  store i32 %land.ext, ptr %update_dotdot, align 4, !dbg !6074
  %11 = load i32, ptr %update_dotdot, align 4, !dbg !6075
  %tobool8 = icmp ne i32 %11, 0, !dbg !6075
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !6077

if.then9:                                         ; preds = %land.end
  %12 = load ptr, ptr %old_inode, align 8, !dbg !6078
  %call10 = call i32 @fat_get_dotdot_entry(ptr noundef %12, ptr noundef %dotdot_bh, ptr noundef %dotdot_de) #10, !dbg !6081
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6081
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6082

if.then12:                                        ; preds = %if.then9
  store i32 -5, ptr %err, align 4, !dbg !6083
  br label %out, !dbg !6085

if.end13:                                         ; preds = %if.then9
  br label %if.end14, !dbg !6086

if.end14:                                         ; preds = %if.end13, %land.end
  %13 = load ptr, ptr %old_inode, align 8, !dbg !6087
  %call15 = call ptr @MSDOS_I(ptr noundef %13) #10, !dbg !6088
  %i_attrs = getelementptr inbounds %struct.msdos_inode_info, ptr %call15, i32 0, i32 7, !dbg !6089
  %14 = load i32, ptr %i_attrs, align 8, !dbg !6089
  store i32 %14, ptr %old_attrs, align 4, !dbg !6090
  %15 = load ptr, ptr %new_dir.addr, align 8, !dbg !6091
  %16 = load ptr, ptr %new_name.addr, align 8, !dbg !6092
  %call16 = call i32 @fat_scan(ptr noundef %15, ptr noundef %16, ptr noundef %sinfo) #10, !dbg !6093
  store i32 %call16, ptr %err, align 4, !dbg !6094
  %17 = load i32, ptr %err, align 4, !dbg !6095
  %tobool17 = icmp ne i32 %17, 0, !dbg !6095
  br i1 %tobool17, label %if.end61, label %if.then18, !dbg !6097

if.then18:                                        ; preds = %if.end14
  %18 = load ptr, ptr %new_inode, align 8, !dbg !6098
  %tobool19 = icmp ne ptr %18, null, !dbg !6098
  br i1 %tobool19, label %if.end60, label %if.then20, !dbg !6101

if.then20:                                        ; preds = %if.then18
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3, !dbg !6102
  %19 = load ptr, ptr %de, align 8, !dbg !6102
  %de21 = getelementptr inbounds %struct.fat_slot_info, ptr %old_sinfo, i32 0, i32 3, !dbg !6105
  %20 = load ptr, ptr %de21, align 8, !dbg !6105
  %cmp22 = icmp ne ptr %19, %20, !dbg !6106
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !6107

if.then24:                                        ; preds = %if.then20
  store i32 -22, ptr %err, align 4, !dbg !6108
  br label %out, !dbg !6110

if.end25:                                         ; preds = %if.then20
  %21 = load i32, ptr %is_hid.addr, align 4, !dbg !6111
  %tobool26 = icmp ne i32 %21, 0, !dbg !6111
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !6113

if.then27:                                        ; preds = %if.end25
  %22 = load ptr, ptr %old_inode, align 8, !dbg !6114
  %call28 = call ptr @MSDOS_I(ptr noundef %22) #10, !dbg !6115
  %i_attrs29 = getelementptr inbounds %struct.msdos_inode_info, ptr %call28, i32 0, i32 7, !dbg !6116
  %23 = load i32, ptr %i_attrs29, align 8, !dbg !6117
  %or = or i32 %23, 2, !dbg !6117
  store i32 %or, ptr %i_attrs29, align 8, !dbg !6117
  br label %if.end33, !dbg !6115

if.else:                                          ; preds = %if.end25
  %24 = load ptr, ptr %old_inode, align 8, !dbg !6118
  %call30 = call ptr @MSDOS_I(ptr noundef %24) #10, !dbg !6119
  %i_attrs31 = getelementptr inbounds %struct.msdos_inode_info, ptr %call30, i32 0, i32 7, !dbg !6120
  %25 = load i32, ptr %i_attrs31, align 8, !dbg !6121
  %and32 = and i32 %25, -3, !dbg !6121
  store i32 %and32, ptr %i_attrs31, align 8, !dbg !6121
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then27
  %26 = load ptr, ptr %old_dir.addr, align 8, !dbg !6122
  %i_sb = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 9, !dbg !6122
  %27 = load ptr, ptr %i_sb, align 8, !dbg !6122
  %s_flags = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 10, !dbg !6122
  %28 = load i64, ptr %s_flags, align 16, !dbg !6122
  %and34 = and i64 %28, 144, !dbg !6122
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6122
  br i1 %tobool35, label %if.then38, label %lor.lhs.false, !dbg !6122

lor.lhs.false:                                    ; preds = %if.end33
  %29 = load ptr, ptr %old_dir.addr, align 8, !dbg !6122
  %i_flags = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 5, !dbg !6122
  %30 = load i32, ptr %i_flags, align 4, !dbg !6122
  %and36 = and i32 %30, 65, !dbg !6122
  %tobool37 = icmp ne i32 %and36, 0, !dbg !6122
  br i1 %tobool37, label %if.then38, label %if.else45, !dbg !6124

if.then38:                                        ; preds = %lor.lhs.false, %if.end33
  %31 = load ptr, ptr %old_inode, align 8, !dbg !6125
  %call39 = call i32 @fat_sync_inode(ptr noundef %31) #10, !dbg !6127
  store i32 %call39, ptr %err, align 4, !dbg !6128
  %32 = load i32, ptr %err, align 4, !dbg !6129
  %tobool40 = icmp ne i32 %32, 0, !dbg !6129
  br i1 %tobool40, label %if.then41, label %if.end44, !dbg !6131

if.then41:                                        ; preds = %if.then38
  %33 = load i32, ptr %old_attrs, align 4, !dbg !6132
  %34 = load ptr, ptr %old_inode, align 8, !dbg !6134
  %call42 = call ptr @MSDOS_I(ptr noundef %34) #10, !dbg !6135
  %i_attrs43 = getelementptr inbounds %struct.msdos_inode_info, ptr %call42, i32 0, i32 7, !dbg !6136
  store i32 %33, ptr %i_attrs43, align 8, !dbg !6137
  br label %out, !dbg !6138

if.end44:                                         ; preds = %if.then38
  br label %if.end46, !dbg !6139

if.else45:                                        ; preds = %lor.lhs.false
  %35 = load ptr, ptr %old_inode, align 8, !dbg !6140
  call void @mark_inode_dirty(ptr noundef %35) #10, !dbg !6141
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.end44
  %36 = load ptr, ptr %old_dir.addr, align 8, !dbg !6142
  call void @inode_inc_iversion(ptr noundef %36) #10, !dbg !6143
  %37 = load ptr, ptr %old_dir.addr, align 8, !dbg !6144
  %call47 = call i32 @fat_truncate_time(ptr noundef %37, ptr noundef null, i32 noundef 6) #10, !dbg !6145
  %38 = load ptr, ptr %old_dir.addr, align 8, !dbg !6146
  %i_sb48 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 9, !dbg !6146
  %39 = load ptr, ptr %i_sb48, align 8, !dbg !6146
  %s_flags49 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 10, !dbg !6146
  %40 = load i64, ptr %s_flags49, align 16, !dbg !6146
  %and50 = and i64 %40, 144, !dbg !6146
  %tobool51 = icmp ne i64 %and50, 0, !dbg !6146
  br i1 %tobool51, label %if.then56, label %lor.lhs.false52, !dbg !6146

lor.lhs.false52:                                  ; preds = %if.end46
  %41 = load ptr, ptr %old_dir.addr, align 8, !dbg !6146
  %i_flags53 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 5, !dbg !6146
  %42 = load i32, ptr %i_flags53, align 4, !dbg !6146
  %and54 = and i32 %42, 65, !dbg !6146
  %tobool55 = icmp ne i32 %and54, 0, !dbg !6146
  br i1 %tobool55, label %if.then56, label %if.else58, !dbg !6148

if.then56:                                        ; preds = %lor.lhs.false52, %if.end46
  %43 = load ptr, ptr %old_dir.addr, align 8, !dbg !6149
  %call57 = call i32 @fat_sync_inode(ptr noundef %43) #10, !dbg !6150
  br label %if.end59, !dbg !6151

if.else58:                                        ; preds = %lor.lhs.false52
  %44 = load ptr, ptr %old_dir.addr, align 8, !dbg !6152
  call void @mark_inode_dirty(ptr noundef %44) #10, !dbg !6153
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then56
  br label %out, !dbg !6154

if.end60:                                         ; preds = %if.then18
  br label %if.end61, !dbg !6155

if.end61:                                         ; preds = %if.end60, %if.end14
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #12, !dbg !6156
  %45 = load ptr, ptr %old_inode, align 8, !dbg !6157
  %call62 = call { i64, i64 } @current_time(ptr noundef %45) #10, !dbg !6156
  %46 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !6156
  %47 = extractvalue { i64, i64 } %call62, 0, !dbg !6156
  store i64 %47, ptr %46, align 8, !dbg !6156
  %48 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !6156
  %49 = extractvalue { i64, i64 } %call62, 1, !dbg !6156
  store i64 %49, ptr %48, align 8, !dbg !6156
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 %tmp, i64 16, i1 false), !dbg !6156
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #12, !dbg !6156
  %50 = load ptr, ptr %new_inode, align 8, !dbg !6158
  %tobool63 = icmp ne ptr %50, null, !dbg !6158
  br i1 %tobool63, label %if.then64, label %if.else76, !dbg !6160

if.then64:                                        ; preds = %if.end61
  %51 = load i32, ptr %err, align 4, !dbg !6161
  %tobool65 = icmp ne i32 %51, 0, !dbg !6161
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !6164

if.then66:                                        ; preds = %if.then64
  br label %out, !dbg !6165

if.end67:                                         ; preds = %if.then64
  %52 = load i32, ptr %is_dir, align 4, !dbg !6166
  %tobool68 = icmp ne i32 %52, 0, !dbg !6166
  br i1 %tobool68, label %if.then69, label %if.end74, !dbg !6168

if.then69:                                        ; preds = %if.end67
  %53 = load ptr, ptr %new_inode, align 8, !dbg !6169
  %call70 = call i32 @fat_dir_empty(ptr noundef %53) #10, !dbg !6171
  store i32 %call70, ptr %err, align 4, !dbg !6172
  %54 = load i32, ptr %err, align 4, !dbg !6173
  %tobool71 = icmp ne i32 %54, 0, !dbg !6173
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !6175

if.then72:                                        ; preds = %if.then69
  br label %out, !dbg !6176

if.end73:                                         ; preds = %if.then69
  br label %if.end74, !dbg !6177

if.end74:                                         ; preds = %if.end73, %if.end67
  %55 = load ptr, ptr %new_inode, align 8, !dbg !6178
  %call75 = call ptr @MSDOS_I(ptr noundef %55) #10, !dbg !6179
  %i_pos = getelementptr inbounds %struct.msdos_inode_info, ptr %call75, i32 0, i32 8, !dbg !6180
  %56 = load i64, ptr %i_pos, align 8, !dbg !6180
  store i64 %56, ptr %new_i_pos, align 8, !dbg !6181
  %57 = load ptr, ptr %new_inode, align 8, !dbg !6182
  call void @fat_detach(ptr noundef %57) #10, !dbg !6183
  br label %if.end82, !dbg !6184

if.else76:                                        ; preds = %if.end61
  %58 = load ptr, ptr %new_dir.addr, align 8, !dbg !6185
  %59 = load ptr, ptr %new_name.addr, align 8, !dbg !6187
  %60 = load i32, ptr %is_dir, align 4, !dbg !6188
  %61 = load i32, ptr %is_hid.addr, align 4, !dbg !6189
  %call77 = call i32 @msdos_add_entry(ptr noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef %61, i32 noundef 0, ptr noundef %ts, ptr noundef %sinfo) #10, !dbg !6190
  store i32 %call77, ptr %err, align 4, !dbg !6191
  %62 = load i32, ptr %err, align 4, !dbg !6192
  %tobool78 = icmp ne i32 %62, 0, !dbg !6192
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !6194

if.then79:                                        ; preds = %if.else76
  br label %out, !dbg !6195

if.end80:                                         ; preds = %if.else76
  %i_pos81 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 0, !dbg !6196
  %63 = load i64, ptr %i_pos81, align 8, !dbg !6196
  store i64 %63, ptr %new_i_pos, align 8, !dbg !6197
  br label %if.end82

if.end82:                                         ; preds = %if.end80, %if.end74
  %64 = load ptr, ptr %new_dir.addr, align 8, !dbg !6198
  call void @inode_inc_iversion(ptr noundef %64) #10, !dbg !6199
  %65 = load ptr, ptr %old_inode, align 8, !dbg !6200
  call void @fat_detach(ptr noundef %65) #10, !dbg !6201
  %66 = load ptr, ptr %old_inode, align 8, !dbg !6202
  %67 = load i64, ptr %new_i_pos, align 8, !dbg !6203
  call void @fat_attach(ptr noundef %66, i64 noundef %67) #10, !dbg !6204
  %68 = load i32, ptr %is_hid.addr, align 4, !dbg !6205
  %tobool83 = icmp ne i32 %68, 0, !dbg !6205
  br i1 %tobool83, label %if.then84, label %if.else88, !dbg !6207

if.then84:                                        ; preds = %if.end82
  %69 = load ptr, ptr %old_inode, align 8, !dbg !6208
  %call85 = call ptr @MSDOS_I(ptr noundef %69) #10, !dbg !6209
  %i_attrs86 = getelementptr inbounds %struct.msdos_inode_info, ptr %call85, i32 0, i32 7, !dbg !6210
  %70 = load i32, ptr %i_attrs86, align 8, !dbg !6211
  %or87 = or i32 %70, 2, !dbg !6211
  store i32 %or87, ptr %i_attrs86, align 8, !dbg !6211
  br label %if.end92, !dbg !6209

if.else88:                                        ; preds = %if.end82
  %71 = load ptr, ptr %old_inode, align 8, !dbg !6212
  %call89 = call ptr @MSDOS_I(ptr noundef %71) #10, !dbg !6213
  %i_attrs90 = getelementptr inbounds %struct.msdos_inode_info, ptr %call89, i32 0, i32 7, !dbg !6214
  %72 = load i32, ptr %i_attrs90, align 8, !dbg !6215
  %and91 = and i32 %72, -3, !dbg !6215
  store i32 %and91, ptr %i_attrs90, align 8, !dbg !6215
  br label %if.end92

if.end92:                                         ; preds = %if.else88, %if.then84
  %73 = load ptr, ptr %new_dir.addr, align 8, !dbg !6216
  %i_sb93 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 9, !dbg !6216
  %74 = load ptr, ptr %i_sb93, align 8, !dbg !6216
  %s_flags94 = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 10, !dbg !6216
  %75 = load i64, ptr %s_flags94, align 16, !dbg !6216
  %and95 = and i64 %75, 144, !dbg !6216
  %tobool96 = icmp ne i64 %and95, 0, !dbg !6216
  br i1 %tobool96, label %if.then101, label %lor.lhs.false97, !dbg !6216

lor.lhs.false97:                                  ; preds = %if.end92
  %76 = load ptr, ptr %new_dir.addr, align 8, !dbg !6216
  %i_flags98 = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 5, !dbg !6216
  %77 = load i32, ptr %i_flags98, align 4, !dbg !6216
  %and99 = and i32 %77, 65, !dbg !6216
  %tobool100 = icmp ne i32 %and99, 0, !dbg !6216
  br i1 %tobool100, label %if.then101, label %if.else106, !dbg !6218

if.then101:                                       ; preds = %lor.lhs.false97, %if.end92
  %78 = load ptr, ptr %old_inode, align 8, !dbg !6219
  %call102 = call i32 @fat_sync_inode(ptr noundef %78) #10, !dbg !6221
  store i32 %call102, ptr %err, align 4, !dbg !6222
  %79 = load i32, ptr %err, align 4, !dbg !6223
  %tobool103 = icmp ne i32 %79, 0, !dbg !6223
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !6225

if.then104:                                       ; preds = %if.then101
  br label %error_inode, !dbg !6226

if.end105:                                        ; preds = %if.then101
  br label %if.end107, !dbg !6227

if.else106:                                       ; preds = %lor.lhs.false97
  %80 = load ptr, ptr %old_inode, align 8, !dbg !6228
  call void @mark_inode_dirty(ptr noundef %80) #10, !dbg !6229
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %if.end105
  %81 = load i32, ptr %update_dotdot, align 4, !dbg !6230
  %tobool108 = icmp ne i32 %81, 0, !dbg !6230
  br i1 %tobool108, label %if.then109, label %if.end128, !dbg !6232

if.then109:                                       ; preds = %if.end107
  %82 = load ptr, ptr %dotdot_de, align 8, !dbg !6233
  %83 = load ptr, ptr %new_dir.addr, align 8, !dbg !6235
  %call110 = call ptr @MSDOS_I(ptr noundef %83) #10, !dbg !6236
  %i_logstart = getelementptr inbounds %struct.msdos_inode_info, ptr %call110, i32 0, i32 6, !dbg !6237
  %84 = load i32, ptr %i_logstart, align 4, !dbg !6237
  call void @fat_set_start(ptr noundef %82, i32 noundef %84) #10, !dbg !6238
  %85 = load ptr, ptr %dotdot_bh, align 8, !dbg !6239
  %86 = load ptr, ptr %old_inode, align 8, !dbg !6240
  call void @mark_buffer_dirty_inode(ptr noundef %85, ptr noundef %86) #10, !dbg !6241
  %87 = load ptr, ptr %new_dir.addr, align 8, !dbg !6242
  %i_sb111 = getelementptr inbounds %struct.inode, ptr %87, i32 0, i32 9, !dbg !6242
  %88 = load ptr, ptr %i_sb111, align 8, !dbg !6242
  %s_flags112 = getelementptr inbounds %struct.super_block, ptr %88, i32 0, i32 10, !dbg !6242
  %89 = load i64, ptr %s_flags112, align 16, !dbg !6242
  %and113 = and i64 %89, 144, !dbg !6242
  %tobool114 = icmp ne i64 %and113, 0, !dbg !6242
  br i1 %tobool114, label %if.then119, label %lor.lhs.false115, !dbg !6242

lor.lhs.false115:                                 ; preds = %if.then109
  %90 = load ptr, ptr %new_dir.addr, align 8, !dbg !6242
  %i_flags116 = getelementptr inbounds %struct.inode, ptr %90, i32 0, i32 5, !dbg !6242
  %91 = load i32, ptr %i_flags116, align 4, !dbg !6242
  %and117 = and i32 %91, 65, !dbg !6242
  %tobool118 = icmp ne i32 %and117, 0, !dbg !6242
  br i1 %tobool118, label %if.then119, label %if.end124, !dbg !6244

if.then119:                                       ; preds = %lor.lhs.false115, %if.then109
  %92 = load ptr, ptr %dotdot_bh, align 8, !dbg !6245
  %call120 = call i32 @sync_dirty_buffer(ptr noundef %92) #10, !dbg !6247
  store i32 %call120, ptr %err, align 4, !dbg !6248
  %93 = load i32, ptr %err, align 4, !dbg !6249
  %tobool121 = icmp ne i32 %93, 0, !dbg !6249
  br i1 %tobool121, label %if.then122, label %if.end123, !dbg !6251

if.then122:                                       ; preds = %if.then119
  br label %error_dotdot, !dbg !6252

if.end123:                                        ; preds = %if.then119
  br label %if.end124, !dbg !6253

if.end124:                                        ; preds = %if.end123, %lor.lhs.false115
  %94 = load ptr, ptr %old_dir.addr, align 8, !dbg !6254
  call void @drop_nlink(ptr noundef %94) #10, !dbg !6255
  %95 = load ptr, ptr %new_inode, align 8, !dbg !6256
  %tobool125 = icmp ne ptr %95, null, !dbg !6256
  br i1 %tobool125, label %if.end127, label %if.then126, !dbg !6258

if.then126:                                       ; preds = %if.end124
  %96 = load ptr, ptr %new_dir.addr, align 8, !dbg !6259
  call void @inc_nlink(ptr noundef %96) #10, !dbg !6260
  br label %if.end127, !dbg !6260

if.end127:                                        ; preds = %if.then126, %if.end124
  br label %if.end128, !dbg !6261

if.end128:                                        ; preds = %if.end127, %if.end107
  %97 = load ptr, ptr %old_dir.addr, align 8, !dbg !6262
  %call129 = call i32 @fat_remove_entries(ptr noundef %97, ptr noundef %old_sinfo) #10, !dbg !6263
  store i32 %call129, ptr %err, align 4, !dbg !6264
  %bh130 = getelementptr inbounds %struct.fat_slot_info, ptr %old_sinfo, i32 0, i32 4, !dbg !6265
  store ptr null, ptr %bh130, align 8, !dbg !6266
  %98 = load i32, ptr %err, align 4, !dbg !6267
  %tobool131 = icmp ne i32 %98, 0, !dbg !6267
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !6269

if.then132:                                       ; preds = %if.end128
  br label %error_dotdot, !dbg !6270

if.end133:                                        ; preds = %if.end128
  %99 = load ptr, ptr %old_dir.addr, align 8, !dbg !6271
  call void @inode_inc_iversion(ptr noundef %99) #10, !dbg !6272
  %100 = load ptr, ptr %old_dir.addr, align 8, !dbg !6273
  %call134 = call i32 @fat_truncate_time(ptr noundef %100, ptr noundef %ts, i32 noundef 6) #10, !dbg !6274
  %101 = load ptr, ptr %old_dir.addr, align 8, !dbg !6275
  %i_sb135 = getelementptr inbounds %struct.inode, ptr %101, i32 0, i32 9, !dbg !6275
  %102 = load ptr, ptr %i_sb135, align 8, !dbg !6275
  %s_flags136 = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 10, !dbg !6275
  %103 = load i64, ptr %s_flags136, align 16, !dbg !6275
  %and137 = and i64 %103, 144, !dbg !6275
  %tobool138 = icmp ne i64 %and137, 0, !dbg !6275
  br i1 %tobool138, label %if.then143, label %lor.lhs.false139, !dbg !6275

lor.lhs.false139:                                 ; preds = %if.end133
  %104 = load ptr, ptr %old_dir.addr, align 8, !dbg !6275
  %i_flags140 = getelementptr inbounds %struct.inode, ptr %104, i32 0, i32 5, !dbg !6275
  %105 = load i32, ptr %i_flags140, align 4, !dbg !6275
  %and141 = and i32 %105, 65, !dbg !6275
  %tobool142 = icmp ne i32 %and141, 0, !dbg !6275
  br i1 %tobool142, label %if.then143, label %if.else145, !dbg !6277

if.then143:                                       ; preds = %lor.lhs.false139, %if.end133
  %106 = load ptr, ptr %old_dir.addr, align 8, !dbg !6278
  %call144 = call i32 @fat_sync_inode(ptr noundef %106) #10, !dbg !6279
  br label %if.end146, !dbg !6280

if.else145:                                       ; preds = %lor.lhs.false139
  %107 = load ptr, ptr %old_dir.addr, align 8, !dbg !6281
  call void @mark_inode_dirty(ptr noundef %107) #10, !dbg !6282
  br label %if.end146

if.end146:                                        ; preds = %if.else145, %if.then143
  %108 = load ptr, ptr %new_inode, align 8, !dbg !6283
  %tobool147 = icmp ne ptr %108, null, !dbg !6283
  br i1 %tobool147, label %if.then148, label %if.end153, !dbg !6285

if.then148:                                       ; preds = %if.end146
  %109 = load ptr, ptr %new_inode, align 8, !dbg !6286
  call void @drop_nlink(ptr noundef %109) #10, !dbg !6288
  %110 = load i32, ptr %is_dir, align 4, !dbg !6289
  %tobool149 = icmp ne i32 %110, 0, !dbg !6289
  br i1 %tobool149, label %if.then150, label %if.end151, !dbg !6291

if.then150:                                       ; preds = %if.then148
  %111 = load ptr, ptr %new_inode, align 8, !dbg !6292
  call void @drop_nlink(ptr noundef %111) #10, !dbg !6293
  br label %if.end151, !dbg !6293

if.end151:                                        ; preds = %if.then150, %if.then148
  %112 = load ptr, ptr %new_inode, align 8, !dbg !6294
  %call152 = call i32 @fat_truncate_time(ptr noundef %112, ptr noundef %ts, i32 noundef 4) #10, !dbg !6295
  br label %if.end153, !dbg !6296

if.end153:                                        ; preds = %if.end151, %if.end146
  br label %out, !dbg !6283

out:                                              ; preds = %if.end186, %if.end153, %if.then79, %if.then72, %if.then66, %if.end59, %if.then41, %if.then24, %if.then12, %if.then
  call void @llvm.dbg.label(metadata !6012), !dbg !6297
  %bh154 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4, !dbg !6298
  %113 = load ptr, ptr %bh154, align 8, !dbg !6298
  call void @brelse(ptr noundef %113) #10, !dbg !6299
  %114 = load ptr, ptr %dotdot_bh, align 8, !dbg !6300
  call void @brelse(ptr noundef %114) #10, !dbg !6301
  %bh155 = getelementptr inbounds %struct.fat_slot_info, ptr %old_sinfo, i32 0, i32 4, !dbg !6302
  %115 = load ptr, ptr %bh155, align 8, !dbg !6302
  call void @brelse(ptr noundef %115) #10, !dbg !6303
  %116 = load i32, ptr %err, align 4, !dbg !6304
  call void @llvm.lifetime.end.p0(i64 4, ptr %corrupt) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 4, ptr %update_dotdot) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_dir) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_attrs) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_i_pos) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 40, ptr %sinfo) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 40, ptr %old_sinfo) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_inode) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_inode) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %dotdot_de) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %dotdot_bh) #12, !dbg !6305
  ret i32 %116, !dbg !6306

error_dotdot:                                     ; preds = %if.then132, %if.then122
  call void @llvm.dbg.label(metadata !6013), !dbg !6307
  store i32 1, ptr %corrupt, align 4, !dbg !6308
  %117 = load i32, ptr %update_dotdot, align 4, !dbg !6309
  %tobool156 = icmp ne i32 %117, 0, !dbg !6309
  br i1 %tobool156, label %if.then157, label %if.end162, !dbg !6311

if.then157:                                       ; preds = %error_dotdot
  %118 = load ptr, ptr %dotdot_de, align 8, !dbg !6312
  %119 = load ptr, ptr %old_dir.addr, align 8, !dbg !6314
  %call158 = call ptr @MSDOS_I(ptr noundef %119) #10, !dbg !6315
  %i_logstart159 = getelementptr inbounds %struct.msdos_inode_info, ptr %call158, i32 0, i32 6, !dbg !6316
  %120 = load i32, ptr %i_logstart159, align 4, !dbg !6316
  call void @fat_set_start(ptr noundef %118, i32 noundef %120) #10, !dbg !6317
  %121 = load ptr, ptr %dotdot_bh, align 8, !dbg !6318
  %122 = load ptr, ptr %old_inode, align 8, !dbg !6319
  call void @mark_buffer_dirty_inode(ptr noundef %121, ptr noundef %122) #10, !dbg !6320
  %123 = load ptr, ptr %dotdot_bh, align 8, !dbg !6321
  %call160 = call i32 @sync_dirty_buffer(ptr noundef %123) #10, !dbg !6322
  %124 = load i32, ptr %corrupt, align 4, !dbg !6323
  %or161 = or i32 %124, %call160, !dbg !6323
  store i32 %or161, ptr %corrupt, align 4, !dbg !6323
  br label %if.end162, !dbg !6324

if.end162:                                        ; preds = %if.then157, %error_dotdot
  br label %error_inode, !dbg !6309

error_inode:                                      ; preds = %if.end162, %if.then104
  call void @llvm.dbg.label(metadata !6014), !dbg !6325
  %125 = load ptr, ptr %old_inode, align 8, !dbg !6326
  call void @fat_detach(ptr noundef %125) #10, !dbg !6327
  %126 = load ptr, ptr %old_inode, align 8, !dbg !6328
  %i_pos163 = getelementptr inbounds %struct.fat_slot_info, ptr %old_sinfo, i32 0, i32 0, !dbg !6329
  %127 = load i64, ptr %i_pos163, align 8, !dbg !6329
  call void @fat_attach(ptr noundef %126, i64 noundef %127) #10, !dbg !6330
  %128 = load i32, ptr %old_attrs, align 4, !dbg !6331
  %129 = load ptr, ptr %old_inode, align 8, !dbg !6332
  %call164 = call ptr @MSDOS_I(ptr noundef %129) #10, !dbg !6333
  %i_attrs165 = getelementptr inbounds %struct.msdos_inode_info, ptr %call164, i32 0, i32 7, !dbg !6334
  store i32 %128, ptr %i_attrs165, align 8, !dbg !6335
  %130 = load ptr, ptr %new_inode, align 8, !dbg !6336
  %tobool166 = icmp ne ptr %130, null, !dbg !6336
  br i1 %tobool166, label %if.then167, label %if.else173, !dbg !6337

if.then167:                                       ; preds = %error_inode
  %131 = load ptr, ptr %new_inode, align 8, !dbg !6338
  %132 = load i64, ptr %new_i_pos, align 8, !dbg !6340
  call void @fat_attach(ptr noundef %131, i64 noundef %132) #10, !dbg !6341
  %133 = load i32, ptr %corrupt, align 4, !dbg !6342
  %tobool168 = icmp ne i32 %133, 0, !dbg !6342
  br i1 %tobool168, label %if.then169, label %if.end172, !dbg !6344

if.then169:                                       ; preds = %if.then167
  %134 = load ptr, ptr %new_inode, align 8, !dbg !6345
  %call170 = call i32 @fat_sync_inode(ptr noundef %134) #10, !dbg !6346
  %135 = load i32, ptr %corrupt, align 4, !dbg !6347
  %or171 = or i32 %135, %call170, !dbg !6347
  store i32 %or171, ptr %corrupt, align 4, !dbg !6347
  br label %if.end172, !dbg !6348

if.end172:                                        ; preds = %if.then169, %if.then167
  br label %if.end180, !dbg !6349

if.else173:                                       ; preds = %error_inode
  call void @llvm.lifetime.start.p0(i64 4, ptr %err2) #12, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %err2, metadata !6015, metadata !DIExpression()), !dbg !6351
  %136 = load ptr, ptr %new_dir.addr, align 8, !dbg !6352
  %call174 = call i32 @fat_remove_entries(ptr noundef %136, ptr noundef %sinfo) #10, !dbg !6353
  store i32 %call174, ptr %err2, align 4, !dbg !6351
  %137 = load i32, ptr %corrupt, align 4, !dbg !6354
  %tobool175 = icmp ne i32 %137, 0, !dbg !6354
  br i1 %tobool175, label %if.then176, label %if.end178, !dbg !6356

if.then176:                                       ; preds = %if.else173
  %138 = load i32, ptr %err2, align 4, !dbg !6357
  %139 = load i32, ptr %corrupt, align 4, !dbg !6358
  %or177 = or i32 %139, %138, !dbg !6358
  store i32 %or177, ptr %corrupt, align 4, !dbg !6358
  br label %if.end178, !dbg !6359

if.end178:                                        ; preds = %if.then176, %if.else173
  %bh179 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4, !dbg !6360
  store ptr null, ptr %bh179, align 8, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 4, ptr %err2) #12, !dbg !6362
  br label %if.end180

if.end180:                                        ; preds = %if.end178, %if.end172
  %140 = load i32, ptr %corrupt, align 4, !dbg !6363
  %cmp181 = icmp slt i32 %140, 0, !dbg !6365
  br i1 %cmp181, label %if.then183, label %if.end186, !dbg !6366

if.then183:                                       ; preds = %if.end180
  %141 = load ptr, ptr %new_dir.addr, align 8, !dbg !6367
  %i_sb184 = getelementptr inbounds %struct.inode, ptr %141, i32 0, i32 9, !dbg !6367
  %142 = load ptr, ptr %i_sb184, align 8, !dbg !6367
  %i_pos185 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 0, !dbg !6367
  %143 = load i64, ptr %i_pos185, align 8, !dbg !6367
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %142, i32 noundef 1, ptr noundef @.str.1, ptr noundef @__func__.do_msdos_rename, i64 noundef %143) #11, !dbg !6367
  br label %if.end186, !dbg !6369

if.end186:                                        ; preds = %if.then183, %if.end180
  br label %out, !dbg !6370
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6371 dso_local i32 @fat_get_dotdot_entry(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @MSDOS_I(ptr noundef %inode) #4 align 16 !dbg !6376 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6380, metadata !DIExpression()), !dbg !6383
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6381, metadata !DIExpression()), !dbg !6384
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6384
  store ptr %0, ptr %__mptr, align 8, !dbg !6384
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6384
  %add.ptr = getelementptr i8, ptr %1, i64 -152, !dbg !6384
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !6385
  %2 = load ptr, ptr %tmp, align 8, !dbg !6384
  ret ptr %2, !dbg !6386
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_inc_iversion(ptr noundef %inode) #4 align 16 !dbg !6387 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6390, metadata !DIExpression()), !dbg !6391
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6392
  %call = call zeroext i1 @inode_maybe_inc_iversion(ptr noundef %0, i1 noundef zeroext true) #10, !dbg !6393
  ret void, !dbg !6394
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6395 dso_local void @fat_attach(ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6398 dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6401 dso_local i32 @sync_dirty_buffer(ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6404 dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6407 dso_local zeroext i1 @inode_maybe_inc_iversion(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_hash(ptr noundef %dentry, ptr noundef %qstr) #2 align 16 !dbg !6410 {
entry:
  %dentry.addr = alloca ptr, align 8
  %qstr.addr = alloca ptr, align 8
  %options = alloca ptr, align 8
  %msdos_name = alloca [11 x i8], align 1
  %error = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6412, metadata !DIExpression()), !dbg !6417
  store ptr %qstr, ptr %qstr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qstr.addr, metadata !6413, metadata !DIExpression()), !dbg !6418
  call void @llvm.lifetime.start.p0(i64 8, ptr %options) #12, !dbg !6419
  call void @llvm.dbg.declare(metadata ptr %options, metadata !6414, metadata !DIExpression()), !dbg !6420
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6421
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !6422
  %1 = load ptr, ptr %d_sb, align 8, !dbg !6422
  %call = call ptr @MSDOS_SB(ptr noundef %1) #10, !dbg !6423
  %options1 = getelementptr inbounds %struct.msdos_sb_info, ptr %call, i32 0, i32 19, !dbg !6424
  store ptr %options1, ptr %options, align 8, !dbg !6420
  call void @llvm.lifetime.start.p0(i64 11, ptr %msdos_name) #12, !dbg !6425
  call void @llvm.dbg.declare(metadata ptr %msdos_name, metadata !6415, metadata !DIExpression()), !dbg !6426
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6416, metadata !DIExpression()), !dbg !6428
  %2 = load ptr, ptr %qstr.addr, align 8, !dbg !6429
  %name = getelementptr inbounds %struct.qstr, ptr %2, i32 0, i32 1, !dbg !6430
  %3 = load ptr, ptr %name, align 8, !dbg !6430
  %4 = load ptr, ptr %qstr.addr, align 8, !dbg !6431
  %5 = getelementptr inbounds %struct.qstr, ptr %4, i32 0, i32 0, !dbg !6432
  %len = getelementptr inbounds %struct.anon.18, ptr %5, i32 0, i32 1, !dbg !6432
  %6 = load i32, ptr %len, align 4, !dbg !6432
  %arraydecay = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !6433
  %7 = load ptr, ptr %options, align 8, !dbg !6434
  %call2 = call i32 @msdos_format_name(ptr noundef %3, i32 noundef %6, ptr noundef %arraydecay, ptr noundef %7) #10, !dbg !6435
  store i32 %call2, ptr %error, align 4, !dbg !6436
  %8 = load i32, ptr %error, align 4, !dbg !6437
  %tobool = icmp ne i32 %8, 0, !dbg !6437
  br i1 %tobool, label %if.end, label %if.then, !dbg !6439

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !6440
  %arraydecay3 = getelementptr inbounds [11 x i8], ptr %msdos_name, i64 0, i64 0, !dbg !6441
  %call4 = call i32 @full_name_hash(ptr noundef %9, ptr noundef %arraydecay3, i32 noundef 11) #13, !dbg !6442
  %10 = load ptr, ptr %qstr.addr, align 8, !dbg !6443
  %11 = getelementptr inbounds %struct.qstr, ptr %10, i32 0, i32 0, !dbg !6444
  %hash = getelementptr inbounds %struct.anon.18, ptr %11, i32 0, i32 0, !dbg !6444
  store i32 %call4, ptr %hash, align 8, !dbg !6445
  br label %if.end, !dbg !6443

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6446
  call void @llvm.lifetime.end.p0(i64 11, ptr %msdos_name) #12, !dbg !6446
  call void @llvm.lifetime.end.p0(i64 8, ptr %options) #12, !dbg !6446
  ret i32 0, !dbg !6447
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msdos_cmp(ptr noundef %dentry, i32 noundef %len, ptr noundef %str, ptr noundef %name) #2 align 16 !dbg !6448 {
entry:
  %dentry.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %options = alloca ptr, align 8
  %a_msdos_name = alloca [11 x i8], align 1
  %b_msdos_name = alloca [11 x i8], align 1
  %error = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6450, metadata !DIExpression()), !dbg !6460
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6451, metadata !DIExpression()), !dbg !6461
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6452, metadata !DIExpression()), !dbg !6462
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6453, metadata !DIExpression()), !dbg !6463
  call void @llvm.lifetime.start.p0(i64 8, ptr %options) #12, !dbg !6464
  call void @llvm.dbg.declare(metadata ptr %options, metadata !6454, metadata !DIExpression()), !dbg !6465
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6466
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !6467
  %1 = load ptr, ptr %d_sb, align 8, !dbg !6467
  %call = call ptr @MSDOS_SB(ptr noundef %1) #10, !dbg !6468
  %options1 = getelementptr inbounds %struct.msdos_sb_info, ptr %call, i32 0, i32 19, !dbg !6469
  store ptr %options1, ptr %options, align 8, !dbg !6465
  call void @llvm.lifetime.start.p0(i64 11, ptr %a_msdos_name) #12, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %a_msdos_name, metadata !6455, metadata !DIExpression()), !dbg !6471
  call void @llvm.lifetime.start.p0(i64 11, ptr %b_msdos_name) #12, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %b_msdos_name, metadata !6456, metadata !DIExpression()), !dbg !6472
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6473
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6457, metadata !DIExpression()), !dbg !6474
  %2 = load ptr, ptr %name.addr, align 8, !dbg !6475
  %name2 = getelementptr inbounds %struct.qstr, ptr %2, i32 0, i32 1, !dbg !6476
  %3 = load ptr, ptr %name2, align 8, !dbg !6476
  %4 = load ptr, ptr %name.addr, align 8, !dbg !6477
  %5 = getelementptr inbounds %struct.qstr, ptr %4, i32 0, i32 0, !dbg !6478
  %len3 = getelementptr inbounds %struct.anon.18, ptr %5, i32 0, i32 1, !dbg !6478
  %6 = load i32, ptr %len3, align 4, !dbg !6478
  %arraydecay = getelementptr inbounds [11 x i8], ptr %a_msdos_name, i64 0, i64 0, !dbg !6479
  %7 = load ptr, ptr %options, align 8, !dbg !6480
  %call4 = call i32 @msdos_format_name(ptr noundef %3, i32 noundef %6, ptr noundef %arraydecay, ptr noundef %7) #10, !dbg !6481
  store i32 %call4, ptr %error, align 4, !dbg !6482
  %8 = load i32, ptr %error, align 4, !dbg !6483
  %tobool = icmp ne i32 %8, 0, !dbg !6483
  br i1 %tobool, label %if.then, label %if.end, !dbg !6485

if.then:                                          ; preds = %entry
  br label %old_compare, !dbg !6486

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %str.addr, align 8, !dbg !6487
  %10 = load i32, ptr %len.addr, align 4, !dbg !6488
  %arraydecay5 = getelementptr inbounds [11 x i8], ptr %b_msdos_name, i64 0, i64 0, !dbg !6489
  %11 = load ptr, ptr %options, align 8, !dbg !6490
  %call6 = call i32 @msdos_format_name(ptr noundef %9, i32 noundef %10, ptr noundef %arraydecay5, ptr noundef %11) #10, !dbg !6491
  store i32 %call6, ptr %error, align 4, !dbg !6492
  %12 = load i32, ptr %error, align 4, !dbg !6493
  %tobool7 = icmp ne i32 %12, 0, !dbg !6493
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6495

if.then8:                                         ; preds = %if.end
  br label %old_compare, !dbg !6496

if.end9:                                          ; preds = %if.end
  %arraydecay10 = getelementptr inbounds [11 x i8], ptr %a_msdos_name, i64 0, i64 0, !dbg !6497
  %arraydecay11 = getelementptr inbounds [11 x i8], ptr %b_msdos_name, i64 0, i64 0, !dbg !6498
  %call12 = call i32 @memcmp(ptr noundef %arraydecay10, ptr noundef %arraydecay11, i64 noundef 11) #10, !dbg !6499
  store i32 %call12, ptr %error, align 4, !dbg !6500
  br label %out, !dbg !6501

out:                                              ; preds = %if.end17, %if.end9
  call void @llvm.dbg.label(metadata !6458), !dbg !6502
  %13 = load i32, ptr %error, align 4, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 11, ptr %b_msdos_name) #12, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 11, ptr %a_msdos_name) #12, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 8, ptr %options) #12, !dbg !6504
  ret i32 %13, !dbg !6505

old_compare:                                      ; preds = %if.then8, %if.then
  call void @llvm.dbg.label(metadata !6459), !dbg !6506
  store i32 1, ptr %error, align 4, !dbg !6507
  %14 = load ptr, ptr %name.addr, align 8, !dbg !6508
  %15 = getelementptr inbounds %struct.qstr, ptr %14, i32 0, i32 0, !dbg !6510
  %len13 = getelementptr inbounds %struct.anon.18, ptr %15, i32 0, i32 1, !dbg !6510
  %16 = load i32, ptr %len13, align 4, !dbg !6510
  %17 = load i32, ptr %len.addr, align 4, !dbg !6511
  %cmp = icmp eq i32 %16, %17, !dbg !6512
  br i1 %cmp, label %if.then14, label %if.end17, !dbg !6513

if.then14:                                        ; preds = %old_compare
  %18 = load ptr, ptr %name.addr, align 8, !dbg !6514
  %name15 = getelementptr inbounds %struct.qstr, ptr %18, i32 0, i32 1, !dbg !6515
  %19 = load ptr, ptr %name15, align 8, !dbg !6515
  %20 = load ptr, ptr %str.addr, align 8, !dbg !6516
  %21 = load i32, ptr %len.addr, align 4, !dbg !6517
  %conv = zext i32 %21 to i64, !dbg !6517
  %call16 = call i32 @memcmp(ptr noundef %19, ptr noundef %20, i64 noundef %conv) #10, !dbg !6518
  store i32 %call16, ptr %error, align 4, !dbg !6519
  br label %if.end17, !dbg !6520

if.end17:                                         ; preds = %if.then14, %old_compare
  br label %out, !dbg !6521
}

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !6522 dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6526 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6529 dso_local i32 @register_filesystem(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind }
attributes #13 = { noredzone nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577}
!llvm.ident = !{!4578}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias320", scope: !2, file: !3, line: 672, type: !4567, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/fat/.namei_msdos.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/fat/msdos\22 -D KBUILD_BASENAME=\22namei_msdos\22 -D KBUILD_MODNAME=\22msdos\22 -D __KBUILD_MODNAME=kmod_msdos -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/fat/namei_msdos.ll fs/fat/namei_msdos.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !152, globals: !4520, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/fat/namei_msdos.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "714e08ebe40c55fdc1489dc561144bb7")
!4 = !{!5, !14, !19, !25, !33, !49, !56, !62, !69, !75, !82, !87, !95, !103, !112, !117, !122, !128, !134, !141, !147}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !15, line: 2052, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!18 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !20, line: 54, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "USRQUOTA", value: 0)
!23 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!24 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !26, line: 68, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!27 = !{!28, !29, !30, !31, !32}
!28 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!29 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !34, line: 1325, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!36 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!37 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!38 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!39 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!40 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!41 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!42 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!43 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!44 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!45 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!46 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!47 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!48 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !50, line: 15, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!53 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!54 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !57, line: 26, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !63, line: 312, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!66 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!67 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!68 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !70, line: 45, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!73 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!74 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !76, line: 487, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!79 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!80 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!81 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !83, line: 65, baseType: !7, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!86 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !88, line: 620, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!91 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!92 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!93 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!94 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !88, line: 597, baseType: !96, size: 32, elements: !97)
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!99 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!100 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!101 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!102 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !76, line: 547, baseType: !7, size: 32, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111}
!105 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!106 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!107 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!108 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!109 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!110 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!111 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !76, line: 564, baseType: !7, size: 32, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!115 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!116 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !76, line: 577, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!120 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!121 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !76, line: 503, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127}
!124 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!125 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!126 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!127 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !129, line: 16, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "TT_NONE", value: 0)
!132 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!133 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !135, line: 51, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!138 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!139 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!140 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "file_time_flags", file: !15, line: 2344, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "S_ATIME", value: 1)
!144 = !DIEnumerator(name: "S_MTIME", value: 2)
!145 = !DIEnumerator(name: "S_CTIME", value: 4)
!146 = !DIEnumerator(name: "S_VERSION", value: 8)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !{!153, !154, !4501, !228, !309, !295, !4502}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !63, line: 402, size: 9216, align: 512, elements: !156)
!156 = !{!157, !158, !165, !170, !4177, !4203, !4204, !4205, !4206, !4210, !4213, !4214, !4215, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4282, !4286, !4304, !4321, !4322, !4323, !4324, !4333, !4356, !4357, !4360, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4374, !4375, !4461, !4469, !4470, !4471, !4473, !4477, !4478, !4482, !4483, !4484, !4485, !4487, !4488, !4489, !4496, !4497, !4498, !4500}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !155, file: !63, line: 403, baseType: !62, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !155, file: !63, line: 406, baseType: !159, size: 128, offset: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !160, line: 190, size: 128, elements: !161)
!160 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !160, line: 191, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !159, file: !160, line: 191, baseType: !163, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !155, file: !63, line: 409, baseType: !166, size: 448, offset: 192)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 448, elements: !168)
!167 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !{!169}
!169 = !DISubrange(count: 56)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !155, file: !63, line: 417, baseType: !171, size: 768, offset: 640)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !63, line: 45, size: 768, elements: !172)
!172 = !{!173, !4171, !4172, !4173, !4176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !171, file: !63, line: 46, baseType: !174, size: 512)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !175, line: 64, size: 512, elements: !176)
!175 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!176 = !{!177, !180, !181, !183, !272, !4058, !4161, !4166, !4167, !4168, !4169, !4170}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 65, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !174, file: !175, line: 66, baseType: !159, size: 128, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !175, line: 67, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !174, file: !175, line: 68, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !175, line: 168, size: 768, elements: !186)
!186 = !{!187, !188, !231, !232}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !185, file: !175, line: 169, baseType: !159, size: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !185, file: !175, line: 170, baseType: !189, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !190, line: 29, baseType: !191)
!190 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !190, line: 17, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !190, line: 18, baseType: !194, size: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !190, line: 18, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !194, file: !190, line: 19, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !198, line: 14, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !197, file: !198, line: 15, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !202, line: 44, baseType: !203)
!202 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !202, line: 14, size: 32, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !202, line: 15, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !202, line: 15, size: 32, elements: !207)
!207 = !{!208, !213, !223}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !206, file: !202, line: 16, baseType: !209, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !160, line: 174, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 172, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !210, file: !160, line: 173, baseType: !96, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !202, line: 24, baseType: !214, size: 16)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !206, file: !202, line: 24, size: 16, elements: !215)
!215 = !{!216, !222}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !214, file: !202, line: 25, baseType: !217, size: 8)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !218, line: 17, baseType: !219)
!218 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !220, line: 21, baseType: !221)
!220 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!221 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !214, file: !202, line: 26, baseType: !217, size: 8, offset: 8)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !202, line: 28, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !206, file: !202, line: 28, size: 32, elements: !225)
!225 = !{!226, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !224, file: !202, line: 29, baseType: !227, size: 16)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !218, line: 19, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !220, line: 24, baseType: !229)
!229 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !224, file: !202, line: 30, baseType: !227, size: 16, offset: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !185, file: !175, line: 171, baseType: !174, size: 512, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !185, file: !175, line: 172, baseType: !233, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !175, line: 133, size: 192, elements: !236)
!236 = !{!237, !244, !249}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !235, file: !175, line: 134, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!96, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !175, line: 135, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!178, !242}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !235, file: !175, line: 136, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!96, !242, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !175, line: 125, size: 20736, elements: !256)
!256 = !{!257, !262, !266, !267, !271}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !255, file: !175, line: 126, baseType: !258, size: 192)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 192, elements: !260)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!260 = !{!261}
!261 = !DISubrange(count: 3)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !255, file: !175, line: 127, baseType: !263, size: 4096, offset: 192)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 4096, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !255, file: !175, line: 128, baseType: !96, size: 32, offset: 4288)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !255, file: !175, line: 129, baseType: !268, size: 16384, offset: 4320)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 16384, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 2048)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !255, file: !175, line: 130, baseType: !96, size: 32, offset: 20704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !174, file: !175, line: 69, baseType: !273, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !175, line: 116, size: 384, elements: !276)
!276 = !{!277, !281, !310, !4046, !4050, !4054}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !275, file: !175, line: 117, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !182}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !275, file: !175, line: 118, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !285, line: 254, size: 128, elements: !286)
!285 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!286 = !{!287, !302}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !284, file: !285, line: 255, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !182, !296, !259}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !160, line: 66, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !293, line: 73, baseType: !294)
!293 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !293, line: 15, baseType: !295)
!295 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !285, line: 30, size: 128, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !285, line: 31, baseType: !178, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !297, file: !285, line: 32, baseType: !301, size: 16, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !160, line: 24, baseType: !229)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !284, file: !285, line: 256, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!291, !182, !296, !178, !306}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 61, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !293, line: 72, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !293, line: 16, baseType: !309)
!309 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !275, file: !175, line: 119, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !285, line: 84, size: 320, elements: !315)
!315 = !{!316, !317, !321, !4042, !4044}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !285, line: 85, baseType: !178, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !314, file: !285, line: 86, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!301, !182, !296, !96}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !314, file: !285, line: 88, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!301, !182, !325, !96}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !285, line: 175, size: 512, elements: !327)
!327 = !{!328, !329, !330, !331, !4033, !4037, !4038}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !326, file: !285, line: 176, baseType: !297, size: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !326, file: !285, line: 177, baseType: !306, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !326, file: !285, line: 178, baseType: !153, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !326, file: !285, line: 179, baseType: !332, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !337)
!337 = !{!338, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !4027, !4028, !4029, !4030, !4031, !4032}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !336, file: !15, line: 473, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !341)
!341 = !{!342, !343, !344, !352, !353, !360, !361, !364, !365, !3862, !3863, !3864, !3865, !3866, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3906, !3909, !3910, !3911, !3920, !3921, !3922, !3923}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !340, file: !15, line: 642, baseType: !301, size: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !340, file: !15, line: 643, baseType: !229, size: 16, offset: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !340, file: !15, line: 644, baseType: !345, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !346, line: 23, baseType: !347)
!346 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 21, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !347, file: !346, line: 22, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !160, line: 37, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !293, line: 49, baseType: !7)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !340, file: !15, line: 645, baseType: !159, size: 128, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !340, file: !15, line: 646, baseType: !354, size: 32, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !346, line: 28, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 26, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !355, file: !346, line: 27, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !160, line: 38, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !293, line: 50, baseType: !7)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !340, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !340, file: !15, line: 650, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !340, file: !15, line: 651, baseType: !362, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !340, file: !15, line: 654, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !369)
!369 = !{!370, !3690, !3700, !3704, !3708, !3712, !3716, !3720, !3724, !3728, !3732, !3733, !3737, !3741, !3778, !3807, !3811, !3817, !3821, !3825, !3829, !3833, !3837, !3843, !3847}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !368, file: !15, line: 1967, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !339, !374, !7}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !376, line: 82, size: 1536, elements: !377)
!376 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!377 = !{!378, !379, !389, !397, !398, !418, !419, !423, !436, !3673, !3674, !3675, !3676, !3682, !3683, !3684}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !375, file: !376, line: 84, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !375, file: !376, line: 85, baseType: !380, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !381, line: 275, baseType: !382)
!381 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !381, line: 275, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !382, file: !381, line: 275, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !381, line: 69, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !381, line: 64, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !386, file: !381, line: 65, baseType: !7, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !375, file: !376, line: 86, baseType: !390, size: 128, offset: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !391, line: 38, size: 128, elements: !392)
!391 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!392 = !{!393, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !391, line: 39, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !390, file: !391, line: 39, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !375, file: !376, line: 87, baseType: !374, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !375, file: !376, line: 88, baseType: !399, size: 128, offset: 256)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !376, line: 49, size: 128, elements: !400)
!400 = !{!401, !415}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !376, line: 50, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !376, line: 50, size: 64, elements: !403)
!403 = !{!404, !411}
!404 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !376, line: 51, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !376, line: 51, size: 64, elements: !406)
!406 = !{!407, !410}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !405, file: !376, line: 52, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !218, line: 21, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !220, line: 27, baseType: !7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !405, file: !376, line: 52, baseType: !408, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !402, file: !376, line: 54, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !218, line: 23, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !220, line: 31, baseType: !414)
!414 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !376, line: 56, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !375, file: !376, line: 89, baseType: !339, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !375, file: !376, line: 91, baseType: !420, size: 256, offset: 448)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !375, file: !376, line: 94, baseType: !424, size: 64, offset: 704)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !425, line: 25, size: 64, elements: !426)
!425 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !425, line: 26, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !425, line: 26, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !428, file: !425, line: 28, baseType: !413, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !425, line: 30, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !425, line: 30, size: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !432, file: !425, line: 31, baseType: !189, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !432, file: !425, line: 32, baseType: !96, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !375, file: !376, line: 95, baseType: !437, size: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !376, line: 128, size: 1024, align: 512, elements: !440)
!440 = !{!441, !445, !446, !453, !459, !463, !467, !471, !472, !476, !480, !3663, !3667}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !439, file: !376, line: 129, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!96, !374, !7}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !439, file: !376, line: 130, baseType: !442, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !439, file: !376, line: 131, baseType: !447, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!96, !450, !452}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !439, file: !376, line: 132, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!96, !450, !7, !178, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !439, file: !376, line: 134, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!96, !450}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !439, file: !376, line: 135, baseType: !464, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!96, !374}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !439, file: !376, line: 136, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !374}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !439, file: !376, line: 137, baseType: !468, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !439, file: !376, line: 138, baseType: !473, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !374, !339}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !439, file: !376, line: 139, baseType: !477, size: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!259, !374, !259, !96}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !439, file: !376, line: 140, baseType: !481, size: 64, offset: 640)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !3662}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !486, line: 70, size: 256, elements: !487)
!486 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!487 = !{!488, !489, !3658, !3659}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !485, file: !486, line: 71, baseType: !374, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !485, file: !486, line: 72, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !492)
!492 = !{!493, !494, !497, !498, !499, !503, !552, !713, !753, !843, !847, !848, !849, !850, !851, !860, !861, !862, !863, !868, !872, !873, !1421, !1424, !1427, !1430, !1431, !1432, !1473, !3589, !3590, !3591, !3592, !3593, !3594, !3597, !3599, !3606, !3607, !3608, !3609, !3610, !3625, !3626, !3627, !3628, !3629, !3632, !3633, !3634, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !491, file: !15, line: 1191, baseType: !159, size: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !491, file: !15, line: 1192, baseType: !495, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !160, line: 21, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !160, line: 18, baseType: !408)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !491, file: !15, line: 1193, baseType: !221, size: 8, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !491, file: !15, line: 1194, baseType: !309, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !491, file: !15, line: 1195, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !160, line: 52, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !293, line: 88, baseType: !502)
!502 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !491, file: !15, line: 1196, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !506)
!506 = !{!507, !508, !509, !516, !520, !524, !528, !529, !530, !540, !544, !545, !546, !548, !549, !550, !551}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !505, file: !15, line: 2367, baseType: !178, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !505, file: !15, line: 2368, baseType: !96, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !505, file: !15, line: 2376, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!96, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !515, line: 32, flags: DIFlagFwdDecl)
!515 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!516 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !505, file: !15, line: 2377, baseType: !517, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !505, file: !15, line: 2378, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!374, !504, !96, !178, !153}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !505, file: !15, line: 2380, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !490}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !505, file: !15, line: 2381, baseType: !154, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !15, line: 2382, baseType: !504, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !505, file: !15, line: 2383, baseType: !531, size: 64, offset: 512)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !160, line: 194, size: 64, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !531, file: !160, line: 195, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !160, line: 198, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !160, line: 199, baseType: !534, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !535, file: !160, line: 199, baseType: !539, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !505, file: !15, line: 2385, baseType: !541, offset: 576)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !542, line: 206, elements: !543)
!542 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!543 = !{}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !505, file: !15, line: 2386, baseType: !541, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !505, file: !15, line: 2387, baseType: !541, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !505, file: !15, line: 2388, baseType: !547, offset: 576)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, elements: !260)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !505, file: !15, line: 2390, baseType: !541, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !505, file: !15, line: 2391, baseType: !541, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !505, file: !15, line: 2392, baseType: !541, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !505, file: !15, line: 2393, baseType: !541, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !491, file: !15, line: 1197, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !556)
!556 = !{!557, !561, !565, !566, !570, !576, !580, !581, !582, !586, !590, !594, !595, !596, !602, !607, !608, !615, !616, !617, !618, !622, !626, !695, !711, !712}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !555, file: !15, line: 2058, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!339, !490}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !555, file: !15, line: 2059, baseType: !562, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !339}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !555, file: !15, line: 2060, baseType: !562, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !555, file: !15, line: 2062, baseType: !567, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !339, !96}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !555, file: !15, line: 2063, baseType: !571, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!96, !339, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !555, file: !15, line: 2064, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!96, !339}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !555, file: !15, line: 2065, baseType: !562, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !555, file: !15, line: 2066, baseType: !525, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !555, file: !15, line: 2067, baseType: !583, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!96, !490, !96}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !555, file: !15, line: 2068, baseType: !587, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!96, !490, !14}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !555, file: !15, line: 2069, baseType: !591, size: 64, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!96, !490}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !555, file: !15, line: 2070, baseType: !587, size: 64, offset: 704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !555, file: !15, line: 2071, baseType: !591, size: 64, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !555, file: !15, line: 2072, baseType: !597, size: 64, offset: 832)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!96, !374, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !555, file: !15, line: 2073, baseType: !603, size: 64, offset: 896)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!96, !490, !606, !259}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !555, file: !15, line: 2074, baseType: !525, size: 64, offset: 960)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !555, file: !15, line: 2076, baseType: !609, size: 64, offset: 1024)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!96, !612, !374}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !614, line: 66, flags: DIFlagFwdDecl)
!614 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !555, file: !15, line: 2077, baseType: !609, size: 64, offset: 1088)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !555, file: !15, line: 2078, baseType: !609, size: 64, offset: 1152)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !555, file: !15, line: 2079, baseType: !609, size: 64, offset: 1216)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !555, file: !15, line: 2081, baseType: !619, size: 64, offset: 1280)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!291, !490, !96, !259, !306, !500}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !555, file: !15, line: 2082, baseType: !623, size: 64, offset: 1344)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!291, !490, !96, !178, !306, !500}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !555, file: !15, line: 2083, baseType: !627, size: 64, offset: 1408)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!630, !339}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !659, !660, !661, !662, !678, !679, !680}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !632, file: !20, line: 297, baseType: !535, size: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !632, file: !20, line: 298, baseType: !159, size: 128, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !632, file: !20, line: 299, baseType: !159, size: 128, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !632, file: !20, line: 300, baseType: !159, size: 128, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !632, file: !20, line: 301, baseType: !639, size: 256, offset: 512)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !640, line: 66, size: 256, elements: !641)
!640 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!641 = !{!642, !651, !653, !658}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !639, file: !640, line: 67, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !644, line: 13, baseType: !645)
!644 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !160, line: 181, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 179, size: 64, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !646, file: !160, line: 180, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !218, line: 22, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !220, line: 30, baseType: !502)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !639, file: !640, line: 68, baseType: !652, size: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !198, line: 23, baseType: !197)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !639, file: !640, line: 70, baseType: !654, size: 32, offset: 96)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !655, line: 15, size: 32, elements: !656)
!655 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !654, file: !655, line: 20, baseType: !209, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !639, file: !640, line: 72, baseType: !159, size: 128, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !632, file: !20, line: 302, baseType: !189, size: 32, offset: 768)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !632, file: !20, line: 303, baseType: !209, size: 32, offset: 800)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !632, file: !20, line: 304, baseType: !490, size: 64, offset: 832)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !632, file: !20, line: 305, baseType: !663, size: 64, offset: 896)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !664)
!664 = !{!665, !677}
!665 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !20, line: 69, baseType: !666, size: 32)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !20, line: 69, size: 32, elements: !667)
!667 = !{!668, !669, !670}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !666, file: !20, line: 70, baseType: !345, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !666, file: !20, line: 71, baseType: !354, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !666, file: !20, line: 72, baseType: !671, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !672, line: 24, baseType: !673)
!672 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 22, size: 32, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !673, file: !672, line: 23, baseType: !676, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !672, line: 20, baseType: !351)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !663, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !632, file: !20, line: 306, baseType: !500, size: 64, offset: 960)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !632, file: !20, line: 307, baseType: !309, size: 64, offset: 1024)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !632, file: !20, line: 308, baseType: !681, size: 576, offset: 1088)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !682)
!682 = !{!683, !685, !686, !687, !688, !689, !690, !691, !694}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !681, file: !20, line: 206, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !502)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !681, file: !20, line: 207, baseType: !684, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !681, file: !20, line: 208, baseType: !684, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !681, file: !20, line: 209, baseType: !684, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !681, file: !20, line: 210, baseType: !684, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !681, file: !20, line: 211, baseType: !684, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !681, file: !20, line: 212, baseType: !684, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !681, file: !20, line: 213, baseType: !692, size: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !693, line: 8, baseType: !650)
!693 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !681, file: !20, line: 214, baseType: !692, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !555, file: !15, line: 2085, baseType: !696, size: 64, offset: 1472)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!295, !490, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !701, line: 15, size: 256, elements: !702)
!701 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!702 = !{!703, !705, !706, !707, !708}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !700, file: !701, line: 16, baseType: !704, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !160, line: 154, baseType: !7)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !700, file: !701, line: 19, baseType: !96, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !700, file: !701, line: 26, baseType: !309, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !700, file: !701, line: 33, baseType: !309, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !700, file: !701, line: 36, baseType: !709, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !34, line: 33, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !555, file: !15, line: 2087, baseType: !696, size: 64, offset: 1536)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !555, file: !15, line: 2089, baseType: !525, size: 64, offset: 1600)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !491, file: !15, line: 1198, baseType: !714, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !717)
!717 = !{!718, !722, !726, !730, !731, !732, !733, !734, !739, !744, !748}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !716, file: !20, line: 325, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!96, !631}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !716, file: !20, line: 326, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!631, !490, !96}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !716, file: !20, line: 327, baseType: !727, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !631}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !716, file: !20, line: 328, baseType: !719, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !716, file: !20, line: 329, baseType: !719, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !716, file: !20, line: 330, baseType: !719, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !716, file: !20, line: 331, baseType: !583, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !716, file: !20, line: 334, baseType: !735, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!738, !339}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !716, file: !20, line: 335, baseType: !740, size: 64, offset: 512)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!96, !339, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !716, file: !20, line: 337, baseType: !745, size: 64, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!96, !339, !738}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !716, file: !20, line: 339, baseType: !749, size: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!96, !490, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !491, file: !15, line: 1199, baseType: !754, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !757)
!757 = !{!758, !769, !770, !774, !775, !776, !791, !814, !818, !819, !842}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !756, file: !20, line: 431, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!96, !490, !96, !96, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !765, line: 8, size: 128, elements: !766)
!765 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !764, file: !765, line: 9, baseType: !484, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !764, file: !765, line: 10, baseType: !374, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !756, file: !20, line: 432, baseType: !583, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !756, file: !20, line: 433, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!96, !490, !7}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !756, file: !20, line: 434, baseType: !771, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !756, file: !20, line: 435, baseType: !583, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !756, file: !20, line: 436, baseType: !777, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!96, !490, !96, !780}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !781, file: !20, line: 418, baseType: !96, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !781, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !781, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !781, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !781, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !781, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !781, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !781, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !756, file: !20, line: 437, baseType: !792, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!96, !490, !663, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !796, file: !20, line: 346, baseType: !96, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !796, file: !20, line: 347, baseType: !412, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !796, file: !20, line: 348, baseType: !412, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !796, file: !20, line: 349, baseType: !412, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !796, file: !20, line: 350, baseType: !412, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !796, file: !20, line: 351, baseType: !412, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !796, file: !20, line: 352, baseType: !412, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !796, file: !20, line: 353, baseType: !649, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !796, file: !20, line: 355, baseType: !649, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !796, file: !20, line: 356, baseType: !96, size: 32, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !796, file: !20, line: 357, baseType: !96, size: 32, offset: 608)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !796, file: !20, line: 358, baseType: !412, size: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !796, file: !20, line: 359, baseType: !412, size: 64, offset: 704)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !796, file: !20, line: 360, baseType: !412, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !796, file: !20, line: 361, baseType: !649, size: 64, offset: 832)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !796, file: !20, line: 362, baseType: !96, size: 32, offset: 896)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !756, file: !20, line: 438, baseType: !815, size: 64, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!96, !490, !752, !795}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !756, file: !20, line: 440, baseType: !792, size: 64, offset: 512)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !756, file: !20, line: 441, baseType: !820, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!96, !490, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !824, file: !20, line: 412, baseType: !7, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !824, file: !20, line: 413, baseType: !828, size: 1344, offset: 64)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 1344, elements: !260)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !841}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !20, line: 398, baseType: !7, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !829, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !829, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !829, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !829, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !829, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !829, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !829, file: !20, line: 406, baseType: !414, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !829, file: !20, line: 407, baseType: !840, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !160, line: 132, baseType: !412)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !829, file: !20, line: 408, baseType: !840, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !756, file: !20, line: 442, baseType: !771, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !491, file: !15, line: 1200, baseType: !844, size: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !491, file: !15, line: 1201, baseType: !309, size: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !491, file: !15, line: 1202, baseType: !309, size: 64, offset: 704)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !491, file: !15, line: 1203, baseType: !309, size: 64, offset: 768)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !491, file: !15, line: 1204, baseType: !374, size: 64, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !491, file: !15, line: 1205, baseType: !852, size: 320, offset: 896)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !853, line: 48, size: 320, elements: !854)
!853 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!854 = !{!855, !856, !857, !858, !859}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !852, file: !853, line: 49, baseType: !643, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !852, file: !853, line: 55, baseType: !643, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !852, file: !853, line: 57, baseType: !654, size: 32, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !852, file: !853, line: 59, baseType: !652, size: 32, offset: 160)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !852, file: !853, line: 60, baseType: !159, size: 128, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !491, file: !15, line: 1206, baseType: !96, size: 32, offset: 1216)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !491, file: !15, line: 1207, baseType: !209, size: 32, offset: 1248)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !491, file: !15, line: 1209, baseType: !153, size: 64, offset: 1280)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !491, file: !15, line: 1211, baseType: !864, size: 64, offset: 1344)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !491, file: !15, line: 1223, baseType: !869, size: 64, offset: 1408)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !391, line: 34, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !869, file: !391, line: 35, baseType: !394, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !491, file: !15, line: 1224, baseType: !159, size: 128, offset: 1472)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !491, file: !15, line: 1225, baseType: !874, size: 64, offset: 1600)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !876, line: 40, size: 7424, elements: !877)
!876 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!877 = !{!878, !880, !881, !884, !888, !891, !892, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !908, !909, !910, !911, !912, !913, !914, !917, !918}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !875, file: !876, line: 41, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !160, line: 131, baseType: !412)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !875, file: !876, line: 42, baseType: !879, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !875, file: !876, line: 43, baseType: !882, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !614, line: 1453, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !875, file: !876, line: 44, baseType: !885, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !887, line: 74, flags: DIFlagFwdDecl)
!887 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!888 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !875, file: !876, line: 45, baseType: !889, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !876, line: 45, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !875, file: !876, line: 46, baseType: !309, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !875, file: !876, line: 47, baseType: !893, size: 8, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !160, line: 35, baseType: !894)
!894 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !875, file: !876, line: 48, baseType: !217, size: 8, offset: 392)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !875, file: !876, line: 49, baseType: !893, size: 8, offset: 400)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !875, file: !876, line: 50, baseType: !893, size: 8, offset: 408)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !875, file: !876, line: 51, baseType: !495, size: 32, offset: 416)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !875, file: !876, line: 52, baseType: !209, size: 32, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !875, file: !876, line: 53, baseType: !189, size: 32, offset: 480)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !875, file: !876, line: 54, baseType: !339, size: 64, offset: 512)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !875, file: !876, line: 55, baseType: !153, size: 64, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !875, file: !876, line: 56, baseType: !153, size: 64, offset: 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !875, file: !876, line: 57, baseType: !905, size: 64, offset: 704)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !876, line: 57, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !875, file: !876, line: 58, baseType: !639, size: 256, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !875, file: !876, line: 60, baseType: !96, size: 32, offset: 1024)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !875, file: !876, line: 61, baseType: !96, size: 32, offset: 1056)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !875, file: !876, line: 62, baseType: !182, size: 64, offset: 1088)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !875, file: !876, line: 65, baseType: !639, size: 256, offset: 1152)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !875, file: !876, line: 66, baseType: !490, size: 64, offset: 1408)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !875, file: !876, line: 68, baseType: !915, size: 64, offset: 1472)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !876, line: 68, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !875, file: !876, line: 72, baseType: !893, size: 8, offset: 1536)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !875, file: !876, line: 77, baseType: !919, size: 5824, offset: 1600)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !76, line: 705, size: 5824, elements: !920)
!920 = !{!921, !922, !924, !927, !928, !983, !1053, !1054, !1055, !1056, !1057, !1064, !1278, !1291, !1301, !1305, !1307, !1308, !1309, !1313, !1320, !1321, !1324, !1327, !1331, !1334, !1335, !1336, !1337, !1338, !1339, !1398, !1399, !1400, !1403, !1406, !1415, !1416, !1417, !1418, !1419, !1420}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !919, file: !76, line: 706, baseType: !174, size: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !919, file: !76, line: 707, baseType: !923, size: 64, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !919, file: !76, line: 709, baseType: !925, size: 64, offset: 576)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !76, line: 37, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !919, file: !76, line: 711, baseType: !178, size: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !919, file: !76, line: 712, baseType: !929, size: 64, offset: 704)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !76, line: 89, size: 384, elements: !932)
!932 = !{!933, !934, !935, !941, !948, !952}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !931, file: !76, line: 90, baseType: !178, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !931, file: !76, line: 91, baseType: !311, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !931, file: !76, line: 92, baseType: !936, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!96, !939, !254}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !931, file: !76, line: 93, baseType: !942, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!259, !939, !945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !931, file: !76, line: 95, baseType: !949, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !923}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !931, file: !76, line: 97, baseType: !953, size: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !88, line: 286, size: 1472, elements: !956)
!956 = !{!957, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !955, file: !88, line: 287, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!96, !923}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !955, file: !88, line: 288, baseType: !949, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !955, file: !88, line: 289, baseType: !958, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !955, file: !88, line: 290, baseType: !958, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !955, file: !88, line: 291, baseType: !958, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !955, file: !88, line: 292, baseType: !958, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !955, file: !88, line: 293, baseType: !958, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !955, file: !88, line: 294, baseType: !958, size: 64, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !955, file: !88, line: 295, baseType: !958, size: 64, offset: 512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !955, file: !88, line: 296, baseType: !958, size: 64, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !955, file: !88, line: 297, baseType: !958, size: 64, offset: 640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !955, file: !88, line: 298, baseType: !958, size: 64, offset: 704)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !955, file: !88, line: 299, baseType: !958, size: 64, offset: 768)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !955, file: !88, line: 300, baseType: !958, size: 64, offset: 832)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !955, file: !88, line: 301, baseType: !958, size: 64, offset: 896)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !955, file: !88, line: 302, baseType: !958, size: 64, offset: 960)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !955, file: !88, line: 303, baseType: !958, size: 64, offset: 1024)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !955, file: !88, line: 304, baseType: !958, size: 64, offset: 1088)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !955, file: !88, line: 305, baseType: !958, size: 64, offset: 1152)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !955, file: !88, line: 306, baseType: !958, size: 64, offset: 1216)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !955, file: !88, line: 307, baseType: !958, size: 64, offset: 1280)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !955, file: !88, line: 308, baseType: !958, size: 64, offset: 1344)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !955, file: !88, line: 309, baseType: !958, size: 64, offset: 1408)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !919, file: !76, line: 714, baseType: !984, size: 64, offset: 768)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !987, line: 80, size: 1344, elements: !988)
!987 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!988 = !{!989, !990, !991, !992, !993, !994, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1052}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !986, file: !987, line: 81, baseType: !178, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !986, file: !987, line: 82, baseType: !178, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !986, file: !987, line: 83, baseType: !311, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !986, file: !987, line: 84, baseType: !311, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !986, file: !987, line: 85, baseType: !311, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !986, file: !987, line: 87, baseType: !995, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!96, !923, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !70, line: 96, size: 1152, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1011, !1015, !1016, !1017, !1018, !1019, !1027, !1028, !1029, !1030, !1031, !1032}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !999, file: !70, line: 97, baseType: !178, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !999, file: !70, line: 98, baseType: !984, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !999, file: !70, line: 100, baseType: !154, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !999, file: !70, line: 101, baseType: !178, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !999, file: !70, line: 103, baseType: !893, size: 8, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !999, file: !70, line: 104, baseType: !69, size: 32, offset: 288)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !999, file: !70, line: 106, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !70, line: 106, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !999, file: !70, line: 107, baseType: !1012, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !70, line: 107, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !999, file: !70, line: 109, baseType: !958, size: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !999, file: !70, line: 110, baseType: !949, size: 64, offset: 512)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !999, file: !70, line: 111, baseType: !958, size: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !999, file: !70, line: 112, baseType: !949, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !999, file: !70, line: 113, baseType: !1020, size: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!96, !923, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !88, line: 60, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !88, line: 58, size: 32, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1024, file: !88, line: 59, baseType: !96, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !999, file: !70, line: 114, baseType: !958, size: 64, offset: 768)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !999, file: !70, line: 115, baseType: !311, size: 64, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !999, file: !70, line: 116, baseType: !311, size: 64, offset: 896)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !999, file: !70, line: 118, baseType: !953, size: 64, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !999, file: !70, line: 119, baseType: !949, size: 64, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !999, file: !70, line: 121, baseType: !1033, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !70, line: 121, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !986, file: !987, line: 88, baseType: !936, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !986, file: !987, line: 89, baseType: !958, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !986, file: !987, line: 90, baseType: !949, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !986, file: !987, line: 91, baseType: !949, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !986, file: !987, line: 92, baseType: !949, size: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !986, file: !987, line: 94, baseType: !958, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !986, file: !987, line: 95, baseType: !958, size: 64, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !986, file: !987, line: 97, baseType: !1020, size: 64, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !986, file: !987, line: 98, baseType: !958, size: 64, offset: 896)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !986, file: !987, line: 100, baseType: !958, size: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !986, file: !987, line: 102, baseType: !958, size: 64, offset: 1024)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !986, file: !987, line: 103, baseType: !949, size: 64, offset: 1088)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !986, file: !987, line: 105, baseType: !953, size: 64, offset: 1152)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !986, file: !987, line: 107, baseType: !1049, size: 64, offset: 1216)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !987, line: 107, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !986, file: !987, line: 109, baseType: !893, size: 8, offset: 1280)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !919, file: !76, line: 715, baseType: !998, size: 64, offset: 832)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !919, file: !76, line: 717, baseType: !153, size: 64, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !919, file: !76, line: 719, baseType: !153, size: 64, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !919, file: !76, line: 721, baseType: !639, size: 256, offset: 1024)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !919, file: !76, line: 725, baseType: !1058, size: 448, offset: 1280)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !76, line: 517, size: 448, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1058, file: !76, line: 518, baseType: !159, size: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1058, file: !76, line: 519, baseType: !159, size: 128, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1058, file: !76, line: 520, baseType: !159, size: 128, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1058, file: !76, line: 521, baseType: !75, size: 32, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !919, file: !76, line: 726, baseType: !1065, size: 2496, offset: 1728)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !88, line: 663, size: 2496, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1092, !1132, !1133, !1134, !1135, !1136, !1137, !1218, !1219, !1231, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1269, !1275}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1065, file: !88, line: 664, baseType: !1023, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1065, file: !88, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1065, file: !88, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1065, file: !88, line: 667, baseType: !893, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1065, file: !88, line: 668, baseType: !893, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1065, file: !88, line: 669, baseType: !893, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1065, file: !88, line: 670, baseType: !893, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1065, file: !88, line: 671, baseType: !893, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1065, file: !88, line: 672, baseType: !893, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1065, file: !88, line: 673, baseType: !893, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1065, file: !88, line: 674, baseType: !893, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1065, file: !88, line: 675, baseType: !408, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1065, file: !88, line: 676, baseType: !189, size: 32, offset: 96)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1065, file: !88, line: 678, baseType: !159, size: 128, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1065, file: !88, line: 679, baseType: !1082, size: 256, offset: 256)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1083, line: 26, size: 256, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1082, file: !1083, line: 27, baseType: !7, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1082, file: !1083, line: 28, baseType: !1087, size: 192, offset: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1088, line: 43, size: 192, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1087, file: !1088, line: 44, baseType: !652, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1087, file: !1088, line: 45, baseType: !159, size: 128, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1065, file: !88, line: 680, baseType: !1093, size: 64, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1095, line: 43, size: 1536, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1104, !1116, !1117, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1094, file: !1095, line: 44, baseType: !178, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1094, file: !1095, line: 45, baseType: !96, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1094, file: !1095, line: 46, baseType: !159, size: 128, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1094, file: !1095, line: 47, baseType: !189, size: 32, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1094, file: !1095, line: 48, baseType: !1102, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !88, line: 629, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1094, file: !1095, line: 49, baseType: !1105, size: 320, offset: 384)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1106, line: 11, size: 320, elements: !1107)
!1106 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1107 = !{!1108, !1109, !1110, !1115}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1105, file: !1106, line: 16, baseType: !535, size: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1105, file: !1106, line: 17, baseType: !309, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1105, file: !1106, line: 18, baseType: !1111, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1105, file: !1106, line: 19, baseType: !408, size: 32, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1094, file: !1095, line: 50, baseType: !309, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1094, file: !1095, line: 51, baseType: !1118, size: 64, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1119, line: 29, baseType: !649)
!1119 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1094, file: !1095, line: 52, baseType: !1118, size: 64, offset: 832)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1094, file: !1095, line: 53, baseType: !1118, size: 64, offset: 896)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1094, file: !1095, line: 54, baseType: !1118, size: 64, offset: 960)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1094, file: !1095, line: 55, baseType: !1118, size: 64, offset: 1024)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1094, file: !1095, line: 56, baseType: !309, size: 64, offset: 1088)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1094, file: !1095, line: 57, baseType: !309, size: 64, offset: 1152)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1094, file: !1095, line: 58, baseType: !309, size: 64, offset: 1216)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1094, file: !1095, line: 59, baseType: !309, size: 64, offset: 1280)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1094, file: !1095, line: 60, baseType: !309, size: 64, offset: 1344)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1094, file: !1095, line: 61, baseType: !923, size: 64, offset: 1408)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1094, file: !1095, line: 62, baseType: !893, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1094, file: !1095, line: 63, baseType: !893, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1065, file: !88, line: 681, baseType: !893, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1065, file: !88, line: 682, baseType: !893, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1065, file: !88, line: 683, baseType: !893, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1065, file: !88, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1065, file: !88, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1065, file: !88, line: 690, baseType: !1138, size: 512, offset: 640)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !83, line: 118, size: 512, elements: !1139)
!1139 = !{!1140, !1153, !1154, !1159, !1214, !1215, !1216, !1217}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1138, file: !83, line: 119, baseType: !1141, size: 256)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1142, line: 9, size: 256, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1143 = !{!1144, !1152}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1141, file: !1142, line: 10, baseType: !1145, size: 192, align: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1146, line: 5, size: 192, align: 64, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1147 = !{!1148, !1149, !1151}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1145, file: !1146, line: 6, baseType: !309, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1145, file: !1146, line: 7, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1145, file: !1146, line: 8, baseType: !1150, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1141, file: !1142, line: 11, baseType: !1118, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1138, file: !83, line: 120, baseType: !1118, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1138, file: !83, line: 121, baseType: !1155, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!82, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1138, file: !83, line: 122, baseType: !1160, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !83, line: 159, size: 512, align: 512, elements: !1162)
!1162 = !{!1163, !1188, !1189, !1192, !1197, !1198, !1209, !1213}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1161, file: !83, line: 160, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !83, line: 215, size: 4608, align: 512, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1165, file: !83, line: 216, baseType: !652, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1165, file: !83, line: 217, baseType: !7, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1165, file: !83, line: 218, baseType: !7, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1165, file: !83, line: 219, baseType: !7, size: 32, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1165, file: !83, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1165, file: !83, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1165, file: !83, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1165, file: !83, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1165, file: !83, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1165, file: !83, line: 226, baseType: !7, size: 32, offset: 160)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1165, file: !83, line: 227, baseType: !229, size: 16, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1165, file: !83, line: 228, baseType: !229, size: 16, offset: 208)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1165, file: !83, line: 229, baseType: !7, size: 32, offset: 224)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1165, file: !83, line: 235, baseType: !1118, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1165, file: !83, line: 236, baseType: !1158, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1165, file: !83, line: 237, baseType: !1118, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1165, file: !83, line: 238, baseType: !1158, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1165, file: !83, line: 239, baseType: !1185, size: 4096, align: 512, offset: 512)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1161, size: 4096, align: 512, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 8)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1161, file: !83, line: 161, baseType: !7, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1161, file: !83, line: 162, baseType: !1190, size: 32, offset: 96)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !160, line: 32, baseType: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !293, line: 96, baseType: !96)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1161, file: !83, line: 163, baseType: !1193, size: 32, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !381, line: 274, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !381, line: 274, size: 32, elements: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1194, file: !381, line: 274, baseType: !385, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1161, file: !83, line: 164, baseType: !1158, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1161, file: !83, line: 165, baseType: !1199, size: 128, offset: 256)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1142, line: 14, size: 128, elements: !1200)
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1199, file: !1142, line: 15, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1146, line: 26, size: 128, elements: !1203)
!1203 = !{!1204, !1208}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1202, file: !1146, line: 27, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1146, line: 12, size: 64, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1205, file: !1146, line: 13, baseType: !1150, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1202, file: !1146, line: 28, baseType: !1150, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1161, file: !83, line: 166, baseType: !1210, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1118}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1161, file: !83, line: 167, baseType: !1118, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1138, file: !83, line: 123, baseType: !217, size: 8, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1138, file: !83, line: 124, baseType: !217, size: 8, offset: 456)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1138, file: !83, line: 125, baseType: !217, size: 8, offset: 464)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1138, file: !83, line: 126, baseType: !217, size: 8, offset: 472)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1065, file: !88, line: 691, baseType: !412, size: 64, offset: 1152)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1065, file: !88, line: 692, baseType: !1220, size: 256, offset: 1216)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1221, line: 98, size: 256, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1222 = !{!1223, !1224, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1220, file: !1221, line: 99, baseType: !643, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1220, file: !1221, line: 100, baseType: !159, size: 128, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1220, file: !1221, line: 101, baseType: !1226, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1221, line: 21, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1065, file: !88, line: 693, baseType: !1232, size: 192, offset: 1472)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1233, line: 41, baseType: !1234)
!1233 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1233, line: 37, size: 192, elements: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1234, file: !1233, line: 38, baseType: !189, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1234, file: !1233, line: 39, baseType: !159, size: 128, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1065, file: !88, line: 694, baseType: !1102, size: 64, offset: 1664)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1065, file: !88, line: 695, baseType: !209, size: 32, offset: 1728)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1065, file: !88, line: 696, baseType: !209, size: 32, offset: 1760)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1065, file: !88, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1065, file: !88, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1065, file: !88, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1065, file: !88, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1065, file: !88, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1065, file: !88, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1065, file: !88, line: 703, baseType: !893, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1065, file: !88, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1065, file: !88, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1065, file: !88, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1065, file: !88, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1065, file: !88, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1065, file: !88, line: 709, baseType: !7, size: 32, offset: 1824)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1065, file: !88, line: 710, baseType: !87, size: 32, offset: 1856)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1065, file: !88, line: 711, baseType: !95, size: 32, offset: 1888)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1065, file: !88, line: 712, baseType: !95, size: 32, offset: 1920)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1065, file: !88, line: 713, baseType: !96, size: 32, offset: 1952)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1065, file: !88, line: 714, baseType: !96, size: 32, offset: 1984)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1065, file: !88, line: 715, baseType: !412, size: 64, offset: 2048)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1065, file: !88, line: 716, baseType: !412, size: 64, offset: 2112)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1065, file: !88, line: 717, baseType: !412, size: 64, offset: 2176)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1065, file: !88, line: 718, baseType: !412, size: 64, offset: 2240)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1065, file: !88, line: 720, baseType: !1264, size: 64, offset: 2304)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !88, line: 632, size: 64, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1265, file: !88, line: 633, baseType: !189, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1265, file: !88, line: 634, baseType: !7, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1065, file: !88, line: 721, baseType: !1270, size: 64, offset: 2368)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !923, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !218, line: 20, baseType: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !220, line: 26, baseType: !96)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1065, file: !88, line: 722, baseType: !1276, size: 64, offset: 2432)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !88, line: 722, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !919, file: !76, line: 727, baseType: !1279, size: 64, offset: 4224)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !88, line: 742, size: 1792, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1288, !1289, !1290}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1280, file: !88, line: 743, baseType: !955, size: 1472)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1280, file: !88, line: 744, baseType: !958, size: 64, offset: 1472)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1280, file: !88, line: 745, baseType: !1285, size: 64, offset: 1536)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !923, !893}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1280, file: !88, line: 746, baseType: !958, size: 64, offset: 1600)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1280, file: !88, line: 747, baseType: !949, size: 64, offset: 1664)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1280, file: !88, line: 748, baseType: !949, size: 64, offset: 1728)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !919, file: !76, line: 736, baseType: !1292, size: 128, offset: 4288)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !76, line: 529, size: 128, elements: !1293)
!1293 = !{!1294, !1298}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1292, file: !76, line: 531, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1297, line: 13, flags: DIFlagFwdDecl)
!1297 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1292, file: !76, line: 532, baseType: !1299, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !76, line: 49, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !919, file: !76, line: 738, baseType: !1302, size: 64, offset: 4416)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1304)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !76, line: 738, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !919, file: !76, line: 740, baseType: !1306, size: 64, offset: 4480)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !919, file: !76, line: 741, baseType: !412, size: 64, offset: 4544)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !919, file: !76, line: 746, baseType: !412, size: 64, offset: 4608)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !919, file: !76, line: 747, baseType: !1310, size: 64, offset: 4672)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !76, line: 747, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !919, file: !76, line: 749, baseType: !1314, size: 64, offset: 4736)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !76, line: 428, size: 128, elements: !1316)
!1316 = !{!1317, !1318, !1319}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1315, file: !76, line: 433, baseType: !7, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1315, file: !76, line: 434, baseType: !7, size: 32, offset: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1315, file: !76, line: 435, baseType: !309, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !919, file: !76, line: 751, baseType: !159, size: 128, offset: 4800)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !919, file: !76, line: 762, baseType: !1322, size: 64, offset: 4928)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !76, line: 762, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !919, file: !76, line: 770, baseType: !1325, offset: 4992)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1326, line: 5, elements: !543)
!1326 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !919, file: !76, line: 772, baseType: !1328, size: 64, offset: 4992)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1330, line: 18, flags: DIFlagFwdDecl)
!1330 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !919, file: !76, line: 773, baseType: !1332, size: 64, offset: 5056)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !987, line: 22, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !919, file: !76, line: 776, baseType: !96, size: 32, offset: 5120)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !919, file: !76, line: 778, baseType: !495, size: 32, offset: 5152)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !919, file: !76, line: 779, baseType: !408, size: 32, offset: 5184)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !919, file: !76, line: 781, baseType: !189, size: 32, offset: 5216)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !919, file: !76, line: 782, baseType: !159, size: 128, offset: 5248)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !919, file: !76, line: 784, baseType: !1340, size: 64, offset: 5376)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1343, line: 52, size: 768, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1353, !1357, !1358, !1359, !1389, !1393, !1397}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1342, file: !1343, line: 53, baseType: !178, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1342, file: !1343, line: 55, baseType: !311, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1342, file: !1343, line: 56, baseType: !311, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1342, file: !1343, line: 58, baseType: !936, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1342, file: !1343, line: 59, baseType: !1350, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!259, !939, !945}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1342, file: !1343, line: 61, baseType: !1354, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !1340}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1342, file: !1343, line: 62, baseType: !949, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1342, file: !1343, line: 64, baseType: !958, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1342, file: !1343, line: 66, baseType: !1360, size: 64, offset: 512)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !57, line: 39, size: 384, elements: !1363)
!1363 = !{!1364, !1365, !1369, !1373, !1381, !1385}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1362, file: !57, line: 40, baseType: !56, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1362, file: !57, line: 41, baseType: !1366, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!893}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1362, file: !57, line: 42, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!153}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1362, file: !57, line: 43, baseType: !1374, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1377, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !57, line: 19, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1362, file: !57, line: 44, baseType: !1382, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1377}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1362, file: !57, line: 45, baseType: !1386, size: 64, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !153}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1342, file: !1343, line: 67, baseType: !1390, size: 64, offset: 576)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1377, !939}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1342, file: !1343, line: 69, baseType: !1394, size: 64, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !939, !946, !947}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1342, file: !1343, line: 71, baseType: !953, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !919, file: !76, line: 785, baseType: !311, size: 64, offset: 5440)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !919, file: !76, line: 787, baseType: !949, size: 64, offset: 5504)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !919, file: !76, line: 788, baseType: !1401, size: 64, offset: 5568)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !76, line: 46, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !919, file: !76, line: 789, baseType: !1404, size: 64, offset: 5632)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !76, line: 48, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !919, file: !76, line: 791, baseType: !1407, size: 64, offset: 5696)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !76, line: 597, size: 128, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1408, file: !76, line: 598, baseType: !103, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1408, file: !76, line: 599, baseType: !112, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1408, file: !76, line: 600, baseType: !117, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1408, file: !76, line: 601, baseType: !893, size: 8, offset: 96)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1408, file: !76, line: 602, baseType: !893, size: 8, offset: 104)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !919, file: !76, line: 793, baseType: !122, size: 32, offset: 5760)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !919, file: !76, line: 795, baseType: !893, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !919, file: !76, line: 796, baseType: !893, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !919, file: !76, line: 797, baseType: !893, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !919, file: !76, line: 798, baseType: !893, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !919, file: !76, line: 799, baseType: !893, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !491, file: !15, line: 1226, baseType: !1422, size: 64, offset: 1664)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !491, file: !15, line: 1227, baseType: !1425, size: 64, offset: 1728)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !491, file: !15, line: 1228, baseType: !1428, size: 64, offset: 1792)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !491, file: !15, line: 1229, baseType: !535, size: 128, offset: 1856)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !491, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !491, file: !15, line: 1231, baseType: !1433, size: 2496, offset: 2048)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1439, !1471}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1433, file: !20, line: 522, baseType: !7, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1433, file: !20, line: 523, baseType: !852, size: 320, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1433, file: !20, line: 524, baseType: !1438, size: 192, offset: 384)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 192, elements: !260)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1433, file: !20, line: 525, baseType: !1440, size: 1728, offset: 576)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1441, size: 1728, elements: !260)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1442)
!1442 = !{!1443, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1441, file: !20, line: 223, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1446)
!1446 = !{!1447, !1448, !1461, !1462}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1445, file: !20, line: 446, baseType: !96, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1445, file: !20, line: 447, baseType: !1449, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1451, file: !20, line: 313, baseType: !583, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1451, file: !20, line: 314, baseType: !583, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1451, file: !20, line: 315, baseType: !583, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1451, file: !20, line: 316, baseType: !583, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1451, file: !20, line: 317, baseType: !719, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1451, file: !20, line: 318, baseType: !719, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1451, file: !20, line: 319, baseType: !719, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1451, file: !20, line: 320, baseType: !749, size: 64, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1445, file: !20, line: 448, baseType: !154, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1445, file: !20, line: 449, baseType: !1444, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1441, file: !20, line: 224, baseType: !96, size: 32, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1441, file: !20, line: 226, baseType: !159, size: 128, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1441, file: !20, line: 227, baseType: !309, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1441, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1441, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1441, file: !20, line: 230, baseType: !684, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1441, file: !20, line: 231, baseType: !684, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1441, file: !20, line: 232, baseType: !153, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1433, file: !20, line: 526, baseType: !1472, size: 192, offset: 2304)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1449, size: 192, elements: !260)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !491, file: !15, line: 1233, baseType: !1474, size: 2368, offset: 4544)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1474, file: !15, line: 1185, baseType: !229, size: 16)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1474, file: !15, line: 1186, baseType: !229, size: 16, offset: 16)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1474, file: !15, line: 1187, baseType: !1479, size: 2304, offset: 64)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1480, size: 2304, elements: !260)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1481, line: 12, size: 768, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1482 = !{!1483, !1499, !1501, !3587, !3588}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1480, file: !1481, line: 13, baseType: !1484, size: 384)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1485, line: 17, size: 384, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1486 = !{!1487, !1488, !1489, !1490}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1484, file: !1485, line: 18, baseType: !96, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1484, file: !1485, line: 19, baseType: !96, size: 32, offset: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1484, file: !1485, line: 20, baseType: !1232, size: 192, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1484, file: !1485, line: 22, baseType: !1491, size: 128, align: 64, offset: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !160, line: 232, size: 128, align: 64, elements: !1492)
!1492 = !{!1493, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1491, file: !160, line: 233, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1491, file: !160, line: 234, baseType: !1496, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1494}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1480, file: !1481, line: 14, baseType: !1500, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1480, file: !1481, line: 15, baseType: !1502, size: 64, offset: 448)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1503, line: 16, size: 64, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1502, file: !1503, line: 17, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !614, line: 746, size: 58368, elements: !1508)
!1508 = !{!1509, !1517, !1518, !1519, !1525, !1526, !1527, !1528, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1599, !1610, !1630, !1634, !1637, !1668, !1669, !1670, !1671, !1682, !1684, !1685, !1686, !1687, !1688, !1689, !1700, !1701, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1718, !1719, !1726, !1727, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2771, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2786, !2787, !2788, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2820, !2826, !2827, !2828, !2829, !2830, !2834, !2837, !2844, !2849, !2852, !2855, !2858, !2862, !3002, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3042, !3043, !3044, !3053, !3061, !3062, !3063, !3064, !3065, !3070, !3071, !3072, !3075, !3076, !3079, !3082, !3085, !3092, !3095, !3096, !3182, !3183, !3184, !3185, !3186, !3192, !3193, !3194, !3195, !3198, !3199, !3202, !3205, !3206, !3209, !3210, !3211, !3214, !3215, !3216, !3217, !3218, !3219, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3251, !3252, !3258, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3340, !3342, !3343, !3344, !3345, !3346, !3347, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3364, !3365, !3366}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1507, file: !614, line: 752, baseType: !1510, size: 192)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1511, line: 56, size: 192, elements: !1512)
!1511 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1512 = !{!1513, !1514, !1515, !1516}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1510, file: !1511, line: 57, baseType: !309, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1510, file: !1511, line: 58, baseType: !309, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1510, file: !1511, line: 59, baseType: !408, size: 32, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1510, file: !1511, line: 61, baseType: !408, size: 32, offset: 160)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1507, file: !614, line: 754, baseType: !7, size: 32, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1507, file: !614, line: 767, baseType: !153, size: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1507, file: !614, line: 768, baseType: !1520, size: 32, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1521, line: 113, baseType: !1522)
!1521 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1521, line: 111, size: 32, elements: !1523)
!1523 = !{!1524}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1522, file: !1521, line: 112, baseType: !209, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1507, file: !614, line: 770, baseType: !7, size: 32, offset: 352)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1507, file: !614, line: 771, baseType: !7, size: 32, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1507, file: !614, line: 774, baseType: !96, size: 32, offset: 416)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1507, file: !614, line: 775, baseType: !1529, size: 128, offset: 448)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1530, line: 58, size: 128, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1531 = !{!1532, !1538, !1543, !1544}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1529, file: !1530, line: 59, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1534, line: 60, size: 64, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1535 = !{!1536}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1533, file: !1534, line: 61, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1530, line: 60, baseType: !1539, size: 32, offset: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1529, file: !1530, line: 60, size: 32, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1539, file: !1530, line: 61, baseType: !7, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1539, file: !1530, line: 62, baseType: !209, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1529, file: !1530, line: 65, baseType: !227, size: 16, offset: 96)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1529, file: !1530, line: 65, baseType: !227, size: 16, offset: 112)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1507, file: !614, line: 776, baseType: !7, size: 32, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1507, file: !614, line: 777, baseType: !309, size: 64, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1507, file: !614, line: 778, baseType: !1506, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1507, file: !614, line: 787, baseType: !96, size: 32, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1507, file: !614, line: 788, baseType: !96, size: 32, offset: 800)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1507, file: !614, line: 790, baseType: !96, size: 32, offset: 832)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1507, file: !614, line: 792, baseType: !96, size: 32, offset: 864)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1507, file: !614, line: 793, baseType: !96, size: 32, offset: 896)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1507, file: !614, line: 794, baseType: !96, size: 32, offset: 928)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1507, file: !614, line: 795, baseType: !7, size: 32, offset: 960)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1507, file: !614, line: 797, baseType: !1556, size: 2048, offset: 1024)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !614, line: 551, size: 2048, elements: !1557)
!1557 = !{!1558, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1578, !1581, !1582, !1583}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1556, file: !614, line: 553, baseType: !1559, size: 128)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !614, line: 411, size: 128, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1559, file: !614, line: 412, baseType: !309, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1559, file: !614, line: 413, baseType: !408, size: 32, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1556, file: !614, line: 554, baseType: !1145, size: 192, align: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1556, file: !614, line: 555, baseType: !412, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1556, file: !614, line: 556, baseType: !412, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1556, file: !614, line: 558, baseType: !159, size: 128, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1556, file: !614, line: 559, baseType: !7, size: 32, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1556, file: !614, line: 561, baseType: !412, size: 64, offset: 640)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1556, file: !614, line: 562, baseType: !412, size: 64, offset: 704)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1556, file: !614, line: 563, baseType: !412, size: 64, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1556, file: !614, line: 564, baseType: !412, size: 64, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1556, file: !614, line: 565, baseType: !649, size: 64, offset: 896)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1556, file: !614, line: 566, baseType: !412, size: 64, offset: 960)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1556, file: !614, line: 568, baseType: !412, size: 64, offset: 1024)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1556, file: !614, line: 571, baseType: !96, size: 32, offset: 1088)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1556, file: !614, line: 572, baseType: !1577, size: 64, offset: 1152)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1556, file: !614, line: 574, baseType: !1579, size: 64, offset: 1216)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !614, line: 49, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1556, file: !614, line: 576, baseType: !1579, size: 64, offset: 1280)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1556, file: !614, line: 578, baseType: !309, size: 64, offset: 1344)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1556, file: !614, line: 588, baseType: !1584, size: 512, align: 512, offset: 1536)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !614, line: 497, size: 512, align: 512, elements: !1585)
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1584, file: !614, line: 498, baseType: !412, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1584, file: !614, line: 499, baseType: !412, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1584, file: !614, line: 500, baseType: !412, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1584, file: !614, line: 501, baseType: !408, size: 32, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1584, file: !614, line: 502, baseType: !408, size: 32, offset: 224)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1584, file: !614, line: 503, baseType: !309, size: 64, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1584, file: !614, line: 504, baseType: !309, size: 64, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1584, file: !614, line: 505, baseType: !309, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1584, file: !614, line: 506, baseType: !1595, size: 64, align: 64, offset: 448)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !614, line: 445, size: 64, align: 64, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1595, file: !614, line: 446, baseType: !7, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1595, file: !614, line: 447, baseType: !7, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1507, file: !614, line: 798, baseType: !1600, size: 384, offset: 3072)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !614, line: 592, size: 384, elements: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1600, file: !614, line: 593, baseType: !159, size: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1600, file: !614, line: 594, baseType: !309, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1600, file: !614, line: 595, baseType: !309, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1600, file: !614, line: 596, baseType: !7, size: 32, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1600, file: !614, line: 597, baseType: !229, size: 16, offset: 288)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1600, file: !614, line: 598, baseType: !229, size: 16, offset: 304)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1600, file: !614, line: 600, baseType: !1609, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1507, file: !614, line: 799, baseType: !1611, size: 1792, offset: 3456)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !614, line: 610, size: 1792, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1611, file: !614, line: 611, baseType: !1145, size: 192, align: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1611, file: !614, line: 618, baseType: !412, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1611, file: !614, line: 619, baseType: !412, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1611, file: !614, line: 620, baseType: !412, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1611, file: !614, line: 621, baseType: !412, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1611, file: !614, line: 622, baseType: !412, size: 64, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1611, file: !614, line: 629, baseType: !649, size: 64, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1611, file: !614, line: 630, baseType: !412, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1611, file: !614, line: 631, baseType: !7, size: 32, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1611, file: !614, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1611, file: !614, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1611, file: !614, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1611, file: !614, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1611, file: !614, line: 662, baseType: !1138, size: 512, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1611, file: !614, line: 671, baseType: !1138, size: 512, offset: 1216)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1611, file: !614, line: 679, baseType: !1629, size: 64, offset: 1728)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1507, file: !614, line: 800, baseType: !1631, size: 64, offset: 5248)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !614, line: 800, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1507, file: !614, line: 809, baseType: !1635, size: 64, offset: 5312)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !614, line: 70, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1507, file: !614, line: 825, baseType: !1638, size: 2048, align: 512, offset: 5632)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !614, line: 509, size: 2048, align: 512, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1638, file: !614, line: 511, baseType: !412, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1638, file: !614, line: 512, baseType: !412, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1638, file: !614, line: 513, baseType: !412, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1638, file: !614, line: 514, baseType: !412, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1638, file: !614, line: 515, baseType: !412, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1638, file: !614, line: 516, baseType: !412, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1638, file: !614, line: 518, baseType: !412, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1638, file: !614, line: 519, baseType: !412, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1638, file: !614, line: 520, baseType: !649, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1638, file: !614, line: 522, baseType: !412, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1638, file: !614, line: 523, baseType: !412, size: 64, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1638, file: !614, line: 524, baseType: !649, size: 64, offset: 704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1638, file: !614, line: 526, baseType: !649, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1638, file: !614, line: 527, baseType: !412, size: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1638, file: !614, line: 529, baseType: !412, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1638, file: !614, line: 530, baseType: !412, size: 64, offset: 960)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1638, file: !614, line: 531, baseType: !412, size: 64, offset: 1024)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1638, file: !614, line: 532, baseType: !412, size: 64, offset: 1088)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1638, file: !614, line: 533, baseType: !412, size: 64, offset: 1152)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1638, file: !614, line: 535, baseType: !412, size: 64, offset: 1216)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1638, file: !614, line: 536, baseType: !412, size: 64, offset: 1280)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1638, file: !614, line: 537, baseType: !412, size: 64, offset: 1344)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1638, file: !614, line: 538, baseType: !412, size: 64, offset: 1408)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1638, file: !614, line: 539, baseType: !412, size: 64, offset: 1472)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1638, file: !614, line: 540, baseType: !412, size: 64, offset: 1536)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1638, file: !614, line: 541, baseType: !412, size: 64, offset: 1600)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1638, file: !614, line: 542, baseType: !412, size: 64, offset: 1664)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1638, file: !614, line: 543, baseType: !412, size: 64, offset: 1728)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1507, file: !614, line: 833, baseType: !7, size: 32, offset: 7680)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1507, file: !614, line: 836, baseType: !7, size: 32, offset: 7712)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1507, file: !614, line: 837, baseType: !96, size: 32, offset: 7744)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1507, file: !614, line: 838, baseType: !1672, size: 64, offset: 7808)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1674)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1675, line: 19, baseType: !1676)
!1675 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1675, line: 19, size: 64, elements: !1677)
!1677 = !{!1678}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1676, file: !1675, line: 19, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 64, elements: !1680)
!1680 = !{!1681}
!1681 = !DISubrange(count: 1)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1507, file: !614, line: 839, baseType: !1683, size: 64, offset: 7872)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1507, file: !614, line: 840, baseType: !1674, size: 64, offset: 7936)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1507, file: !614, line: 841, baseType: !153, size: 64, offset: 8000)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1507, file: !614, line: 843, baseType: !229, size: 16, offset: 8064)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1507, file: !614, line: 845, baseType: !229, size: 16, offset: 8080)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1507, file: !614, line: 848, baseType: !96, size: 32, offset: 8096)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1507, file: !614, line: 849, baseType: !1690, size: 32, offset: 8128)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !614, line: 718, size: 32, elements: !1691)
!1691 = !{!1692, !1699}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1690, file: !614, line: 724, baseType: !1693, size: 32)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !614, line: 719, size: 32, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1693, file: !614, line: 720, baseType: !217, size: 8)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1693, file: !614, line: 721, baseType: !217, size: 8, offset: 8)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1693, file: !614, line: 722, baseType: !217, size: 8, offset: 16)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1693, file: !614, line: 723, baseType: !217, size: 8, offset: 24)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1690, file: !614, line: 725, baseType: !408, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1507, file: !614, line: 850, baseType: !159, size: 128, offset: 8192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1507, file: !614, line: 851, baseType: !1702, size: 64, offset: 8320)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !614, line: 60, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1507, file: !614, line: 855, baseType: !309, size: 64, offset: 8384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1507, file: !614, line: 856, baseType: !217, size: 8, offset: 8448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1507, file: !614, line: 857, baseType: !217, size: 8, offset: 8456)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1507, file: !614, line: 858, baseType: !96, size: 32, offset: 8480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1507, file: !614, line: 859, baseType: !159, size: 128, offset: 8512)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1507, file: !614, line: 860, baseType: !96, size: 32, offset: 8640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1507, file: !614, line: 861, baseType: !159, size: 128, offset: 8704)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1507, file: !614, line: 873, baseType: !1712, size: 256, offset: 8832)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !614, line: 376, size: 256, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1712, file: !614, line: 381, baseType: !309, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1712, file: !614, line: 384, baseType: !414, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1712, file: !614, line: 389, baseType: !414, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1712, file: !614, line: 392, baseType: !414, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1507, file: !614, line: 875, baseType: !159, size: 128, offset: 9088)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1507, file: !614, line: 877, baseType: !1720, size: 320, offset: 9216)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1721, line: 86, size: 320, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1722 = !{!1723, !1724, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1720, file: !1721, line: 87, baseType: !96, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1720, file: !1721, line: 88, baseType: !159, size: 128, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1720, file: !1721, line: 89, baseType: !159, size: 128, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1507, file: !614, line: 878, baseType: !1145, size: 192, align: 64, offset: 9536)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1507, file: !614, line: 881, baseType: !1728, size: 64, offset: 9728)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !34, line: 733, size: 10240, elements: !1730)
!1730 = !{!1731, !2690}
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !34, line: 734, baseType: !1732, size: 10240)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !34, line: 734, size: 10240, elements: !1733)
!1733 = !{!1734, !1738, !1751, !2567, !2568, !2569, !2570, !2571, !2572, !2579, !2580, !2581, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2620, !2622, !2625, !2670, !2671, !2672, !2675, !2676, !2677, !2680, !2681, !2682, !2688, !2689}
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !34, line: 739, baseType: !1735, size: 512, align: 512)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !34, line: 739, size: 512, align: 512, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1735, file: !34, line: 747, baseType: !209, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1732, file: !34, line: 750, baseType: !1739, size: 128, offset: 512)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1740, line: 218, size: 128, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1741 = !{!1742, !1749, !1750}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !1740, line: 219, baseType: !1743, size: 32)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1739, file: !1740, line: 219, size: 32, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1743, file: !1740, line: 220, baseType: !189, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1743, file: !1740, line: 221, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1740, line: 197, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1740, line: 197, elements: !543)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1739, file: !1740, line: 223, baseType: !7, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1739, file: !1740, line: 224, baseType: !153, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1732, file: !34, line: 752, baseType: !1752, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!309, !1755, !309, !309, !309, !309}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !1757)
!1757 = !{!1758, !1764, !1765, !1767, !1768, !1769, !1770, !1771, !1823, !2014, !2023, !2024, !2025, !2557, !2558, !2559, !2560, !2562, !2563, !2566}
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !15, line: 995, baseType: !1759, size: 128)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1756, file: !15, line: 995, size: 128, elements: !1760)
!1760 = !{!1761, !1762, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1759, file: !15, line: 996, baseType: !1533, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1759, file: !15, line: 997, baseType: !1491, size: 128, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1759, file: !15, line: 998, baseType: !7, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1756, file: !15, line: 1005, baseType: !189, size: 32, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1756, file: !15, line: 1006, baseType: !1766, size: 32, offset: 160)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !160, line: 156, baseType: !7)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1756, file: !15, line: 1007, baseType: !643, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1756, file: !15, line: 1008, baseType: !639, size: 256, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1756, file: !15, line: 1009, baseType: !500, size: 64, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1756, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1756, file: !15, line: 1011, baseType: !1772, size: 256, offset: 640)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !1773)
!1773 = !{!1774, !1795, !1819, !1820, !1821, !1822}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1772, file: !15, line: 949, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1776, line: 34, baseType: !1777)
!1776 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1776, line: 25, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1777, file: !1776, line: 26, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1781, line: 27, baseType: !1782)
!1781 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1781, line: 13, size: 64, elements: !1783)
!1783 = !{!1784, !1794}
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !1781, line: 14, baseType: !1785, size: 32)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !1781, line: 14, size: 32, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1785, file: !1781, line: 15, baseType: !209, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1781, line: 16, baseType: !1789, size: 32)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !1781, line: 16, size: 32, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1789, file: !1781, line: 18, baseType: !217, size: 8)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1789, file: !1781, line: 19, baseType: !1793, size: 24, offset: 8)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 24, elements: !260)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1782, file: !1781, line: 26, baseType: !201, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1772, file: !15, line: 950, baseType: !1796, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1806, !1807, !1808, !1809}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1797, file: !6, line: 61, baseType: !1520, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1797, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !6, line: 63, baseType: !189, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1797, file: !6, line: 65, baseType: !1803, size: 256, offset: 128)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 256, elements: !1804)
!1804 = !{!1805}
!1805 = !DISubrange(count: 4)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1797, file: !6, line: 66, baseType: !531, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1797, file: !6, line: 68, baseType: !1232, size: 192, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1797, file: !6, line: 69, baseType: !1491, size: 128, align: 64, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1797, file: !6, line: 70, baseType: !1810, offset: 768)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1811, elements: !1817)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1811, file: !6, line: 55, baseType: !96, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1811, file: !6, line: 56, baseType: !1815, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!1817 = !{!1818}
!1818 = !DISubrange(count: -1)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1772, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1772, file: !15, line: 952, baseType: !345, size: 32, offset: 160)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1772, file: !15, line: 952, baseType: !345, size: 32, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1772, file: !15, line: 953, baseType: !96, size: 32, offset: 224)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1756, file: !15, line: 1012, baseType: !1824, size: 64, offset: 896)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1827, line: 110, size: 1472, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1845, !1846, !1847, !1848, !1849, !1850, !1959, !1960, !1961, !1962, !1963, !1994, !1997, !2001, !2009}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1826, file: !1827, line: 111, baseType: !643, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1826, file: !1827, line: 112, baseType: !345, size: 32, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1826, file: !1827, line: 113, baseType: !354, size: 32, offset: 96)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1826, file: !1827, line: 114, baseType: !345, size: 32, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1826, file: !1827, line: 115, baseType: !354, size: 32, offset: 160)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1826, file: !1827, line: 116, baseType: !345, size: 32, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1826, file: !1827, line: 117, baseType: !354, size: 32, offset: 224)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1826, file: !1827, line: 118, baseType: !345, size: 32, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1826, file: !1827, line: 119, baseType: !354, size: 32, offset: 288)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1826, file: !1827, line: 120, baseType: !7, size: 32, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1826, file: !1827, line: 121, baseType: !1840, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1841, line: 24, baseType: !1842)
!1841 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1841, line: 24, size: 64, elements: !1843)
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1842, file: !1841, line: 24, baseType: !412, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1826, file: !1827, line: 122, baseType: !1840, size: 64, offset: 448)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1826, file: !1827, line: 123, baseType: !1840, size: 64, offset: 512)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1826, file: !1827, line: 124, baseType: !1840, size: 64, offset: 576)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1826, file: !1827, line: 125, baseType: !1840, size: 64, offset: 640)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1826, file: !1827, line: 127, baseType: !221, size: 8, offset: 704)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1826, file: !1827, line: 129, baseType: !1851, size: 64, offset: 768)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1853, line: 195, size: 1728, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1854 = !{!1855, !1856, !1859, !1864, !1865, !1868, !1869, !1874, !1875, !1876, !1877, !1880, !1881, !1882, !1884, !1885, !1923, !1944}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1852, file: !1853, line: 196, baseType: !1520, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1852, file: !1853, line: 197, baseType: !1857, size: 32, offset: 32)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1853, line: 28, baseType: !1858)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !160, line: 104, baseType: !1273)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !1853, line: 198, baseType: !1860, size: 192, offset: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !1853, line: 198, size: 192, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1860, file: !1853, line: 199, baseType: !159, size: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1860, file: !1853, line: 200, baseType: !1145, size: 192, align: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1852, file: !1853, line: 205, baseType: !852, size: 320, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1852, file: !1853, line: 206, baseType: !1866, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1853, line: 206, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1852, file: !1853, line: 207, baseType: !153, size: 64, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !1853, line: 208, baseType: !1870, size: 64, offset: 704)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !1853, line: 208, size: 64, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1870, file: !1853, line: 209, baseType: !692, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1870, file: !1853, line: 210, baseType: !692, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1852, file: !1853, line: 212, baseType: !692, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1852, file: !1853, line: 213, baseType: !345, size: 32, offset: 832)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1852, file: !1853, line: 214, baseType: !354, size: 32, offset: 864)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1852, file: !1853, line: 215, baseType: !1878, size: 32, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1853, line: 31, baseType: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !160, line: 110, baseType: !408)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1852, file: !1853, line: 216, baseType: !229, size: 16, offset: 928)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1852, file: !1853, line: 217, baseType: !229, size: 16, offset: 944)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1852, file: !1853, line: 221, baseType: !1883, size: 16, offset: 960)
!1883 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1852, file: !1853, line: 228, baseType: !309, size: 64, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !1853, line: 245, baseType: !1886, size: 320, offset: 1088)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !1853, line: 245, size: 320, elements: !1887)
!1887 = !{!1888, !1915}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1886, file: !1853, line: 246, baseType: !1889, size: 320)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1853, line: 114, size: 320, elements: !1890)
!1890 = !{!1891, !1892, !1904, !1907, !1914}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1889, file: !1853, line: 116, baseType: !309, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !1853, line: 117, baseType: !1893, size: 64, offset: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1889, file: !1853, line: 117, size: 64, elements: !1894)
!1894 = !{!1895, !1903}
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1893, file: !1853, line: 118, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1893, file: !1853, line: 118, size: 64, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1896, file: !1853, line: 120, baseType: !227, size: 16)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1896, file: !1853, line: 121, baseType: !1900, size: 48, offset: 16)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 48, elements: !1901)
!1901 = !{!1902}
!1902 = !DISubrange(count: 6)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1893, file: !1853, line: 127, baseType: !309, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1889, file: !1853, line: 129, baseType: !1905, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1853, line: 102, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1889, file: !1853, line: 130, baseType: !1908, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1853, line: 108, size: 192, elements: !1910)
!1910 = !{!1911, !1912, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1909, file: !1853, line: 109, baseType: !1491, size: 128, align: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1909, file: !1853, line: 110, baseType: !1520, size: 32, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1909, file: !1853, line: 111, baseType: !893, size: 8, offset: 160)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1889, file: !1853, line: 131, baseType: !178, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !1853, line: 247, baseType: !1916, size: 320)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !1853, line: 247, size: 320, elements: !1917)
!1917 = !{!1918, !1919, !1920, !1921, !1922}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1916, file: !1853, line: 248, baseType: !309, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1916, file: !1853, line: 249, baseType: !309, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1916, file: !1853, line: 250, baseType: !1905, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1916, file: !1853, line: 251, baseType: !1908, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1916, file: !1853, line: 252, baseType: !259, size: 64, offset: 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !1853, line: 260, baseType: !1924, size: 256, offset: 1408)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !1853, line: 260, size: 256, elements: !1925)
!1925 = !{!1926, !1932}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1924, file: !1853, line: 261, baseType: !1927, size: 256)
!1927 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1853, line: 134, size: 256, elements: !1928)
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1927, file: !1853, line: 135, baseType: !153, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1853, line: 136, baseType: !1931, size: 256)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !1804)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1924, file: !1853, line: 262, baseType: !1933, size: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1924, file: !1853, line: 262, size: 256, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1933, file: !1853, line: 264, baseType: !159, size: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1933, file: !1853, line: 265, baseType: !1937, size: 128, offset: 128)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1938, line: 22, size: 128, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1939 = !{!1940, !1943}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1937, file: !1938, line: 23, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1938, line: 23, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1937, file: !1938, line: 24, baseType: !309, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1852, file: !1853, line: 280, baseType: !1945, size: 64, offset: 1664)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1853, line: 176, size: 192, elements: !1947)
!1947 = !{!1948, !1957, !1958}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1946, file: !1853, line: 177, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1853, line: 171, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!96, !1851, !1953, !1955, !1851}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1946, file: !1853, line: 178, baseType: !1851, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1946, file: !1853, line: 179, baseType: !1905, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1826, file: !1827, line: 130, baseType: !1851, size: 64, offset: 832)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1826, file: !1827, line: 131, baseType: !1851, size: 64, offset: 896)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1826, file: !1827, line: 132, baseType: !1851, size: 64, offset: 960)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1826, file: !1827, line: 135, baseType: !153, size: 64, offset: 1024)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1826, file: !1827, line: 137, baseType: !1964, size: 64, offset: 1088)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1966, line: 14, size: 1088, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1967 = !{!1968, !1969, !1978, !1979, !1980, !1981, !1982, !1983}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1965, file: !1966, line: 15, baseType: !1520, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1965, file: !1966, line: 17, baseType: !1970, size: 320, offset: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1971, line: 22, size: 320, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1972 = !{!1973, !1974, !1975, !1976}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1970, file: !1971, line: 23, baseType: !652, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1970, file: !1971, line: 24, baseType: !649, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1970, file: !1971, line: 26, baseType: !159, size: 128, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1970, file: !1971, line: 28, baseType: !1977, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1965, file: !1966, line: 19, baseType: !309, size: 64, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1965, file: !1966, line: 20, baseType: !643, size: 64, offset: 448)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1965, file: !1966, line: 23, baseType: !535, size: 128, offset: 512)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1965, file: !1966, line: 24, baseType: !345, size: 32, offset: 640)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1965, file: !1966, line: 29, baseType: !643, size: 64, offset: 704)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1965, file: !1966, line: 36, baseType: !1984, size: 320, offset: 768)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1985, line: 15, size: 320, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1984, file: !1985, line: 16, baseType: !652, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1984, file: !1985, line: 18, baseType: !96, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1984, file: !1985, line: 19, baseType: !96, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1984, file: !1985, line: 20, baseType: !96, size: 32, offset: 96)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1984, file: !1985, line: 21, baseType: !96, size: 32, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1984, file: !1985, line: 22, baseType: !309, size: 64, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1984, file: !1985, line: 23, baseType: !309, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1826, file: !1827, line: 138, baseType: !1995, size: 64, offset: 1152)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !346, line: 18, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1826, file: !1827, line: 139, baseType: !1998, size: 64, offset: 1216)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2000, line: 16, flags: DIFlagFwdDecl)
!2000 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1826, file: !1827, line: 140, baseType: !2002, size: 64, offset: 1280)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1827, line: 25, size: 64, elements: !2004)
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2003, file: !1827, line: 26, baseType: !209, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2003, file: !1827, line: 27, baseType: !96, size: 32, offset: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2003, file: !1827, line: 28, baseType: !2008, offset: 64)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, elements: !1817)
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1827, line: 142, baseType: !2010, size: 128, offset: 1344)
!2010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !1827, line: 142, size: 128, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2010, file: !1827, line: 143, baseType: !96, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2010, file: !1827, line: 144, baseType: !1491, size: 128, align: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1756, file: !15, line: 1013, baseType: !2015, size: 256, offset: 960)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2015, file: !15, line: 971, baseType: !309, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2015, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2015, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2015, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2015, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2015, file: !15, line: 976, baseType: !500, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1756, file: !15, line: 1014, baseType: !764, size: 128, offset: 1216)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1756, file: !15, line: 1015, baseType: !339, size: 64, offset: 1344)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1756, file: !15, line: 1016, baseType: !2026, size: 64, offset: 1408)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !2029)
!2029 = !{!2030, !2031, !2035, !2040, !2044, !2442, !2443, !2449, !2462, !2470, !2474, !2475, !2479, !2480, !2484, !2489, !2490, !2494, !2498, !2504, !2505, !2509, !2510, !2516, !2520, !2524, !2530, !2534, !2538, !2542, !2546, !2547, !2553}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2028, file: !15, line: 1915, baseType: !154, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2028, file: !15, line: 1916, baseType: !2032, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!500, !1755, !500, !96}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2028, file: !15, line: 1917, baseType: !2036, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!291, !1755, !259, !306, !2039}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2028, file: !15, line: 1918, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!291, !1755, !178, !306, !2039}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2028, file: !15, line: 1919, baseType: !2045, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!291, !2048, !2440}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2050)
!2050 = !{!2051, !2052, !2053, !2057, !2058, !2059, !2060}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2049, file: !15, line: 374, baseType: !1755, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2049, file: !15, line: 375, baseType: !500, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2049, file: !15, line: 376, baseType: !2054, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !2048, !295}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2049, file: !15, line: 377, baseType: !153, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2049, file: !15, line: 378, baseType: !96, size: 32, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2049, file: !15, line: 379, baseType: !227, size: 16, offset: 288)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !15, line: 380, baseType: !2061, size: 64, offset: 320)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2049, file: !15, line: 380, size: 64, elements: !2062)
!2062 = !{!2063, !2436}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2061, file: !15, line: 386, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !2066, line: 998, size: 448, elements: !2067)
!2066 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!2067 = !{!2068, !2422, !2423}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2065, file: !2066, line: 999, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !34, line: 293, size: 1536, elements: !2071)
!2071 = !{!2072, !2389, !2403}
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !34, line: 295, baseType: !2073, size: 512)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2070, file: !34, line: 295, size: 512, elements: !2074)
!2074 = !{!2075, !2101}
!2075 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !34, line: 296, baseType: !2076, size: 448)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2073, file: !34, line: 296, size: 448, elements: !2077)
!2077 = !{!2078, !2079, !2088, !2089, !2090, !2099, !2100}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2076, file: !34, line: 298, baseType: !309, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2076, file: !34, line: 299, baseType: !2080, size: 128, offset: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2076, file: !34, line: 299, size: 128, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2080, file: !34, line: 300, baseType: !159, size: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !34, line: 302, baseType: !2084, size: 128)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !34, line: 302, size: 128, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2084, file: !34, line: 303, baseType: !153, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2084, file: !34, line: 305, baseType: !7, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2076, file: !34, line: 310, baseType: !335, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2076, file: !34, line: 311, baseType: !309, size: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !2076, file: !34, line: 312, baseType: !2091, size: 64, offset: 320)
!2091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2076, file: !34, line: 312, size: 64, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2091, file: !34, line: 313, baseType: !153, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2091, file: !34, line: 314, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !34, line: 257, baseType: !2096)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 255, size: 64, elements: !2097)
!2097 = !{!2098}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2096, file: !34, line: 256, baseType: !309, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2076, file: !34, line: 316, baseType: !209, size: 32, offset: 384)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2076, file: !34, line: 317, baseType: !209, size: 32, offset: 416)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2073, file: !34, line: 323, baseType: !2102, size: 512, align: 128)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !34, line: 74, size: 512, align: 128, elements: !2103)
!2103 = !{!2104, !2105, !2383, !2388}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2102, file: !34, line: 75, baseType: !309, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !34, line: 83, baseType: !2106, size: 320, offset: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2102, file: !34, line: 83, size: 320, elements: !2107)
!2107 = !{!2108, !2129, !2143, !2147, !2382}
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !34, line: 84, baseType: !2109, size: 320)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2106, file: !34, line: 84, size: 320, elements: !2110)
!2110 = !{!2111, !2122, !2123, !2128}
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !2109, file: !34, line: 90, baseType: !2112, size: 128)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2109, file: !34, line: 90, size: 128, elements: !2113)
!2113 = !{!2114, !2115, !2120, !2121}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2112, file: !34, line: 91, baseType: !159, size: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !34, line: 94, baseType: !2116, size: 128)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !34, line: 94, size: 128, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2116, file: !34, line: 96, baseType: !153, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2116, file: !34, line: 98, baseType: !7, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2112, file: !34, line: 102, baseType: !159, size: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2112, file: !34, line: 103, baseType: !159, size: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2109, file: !34, line: 106, baseType: !335, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2109, file: !34, line: 107, baseType: !2124, size: 64, offset: 192)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2109, file: !34, line: 107, size: 64, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2124, file: !34, line: 108, baseType: !309, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2124, file: !34, line: 109, baseType: !309, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2109, file: !34, line: 117, baseType: !309, size: 64, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !34, line: 119, baseType: !2130, size: 320)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2106, file: !34, line: 119, size: 320, elements: !2131)
!2131 = !{!2132, !2133, !2136, !2137, !2138}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2130, file: !34, line: 124, baseType: !309, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2130, file: !34, line: 125, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !34, line: 125, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2130, file: !34, line: 126, baseType: !309, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2130, file: !34, line: 127, baseType: !309, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !34, line: 128, baseType: !2139, size: 64, offset: 256)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2130, file: !34, line: 128, size: 64, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2139, file: !34, line: 133, baseType: !309, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2139, file: !34, line: 138, baseType: !643, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !34, line: 141, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2106, file: !34, line: 141, size: 64, elements: !2145)
!2145 = !{!2146}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2144, file: !34, line: 142, baseType: !309, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !34, line: 144, baseType: !2148, size: 128)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2106, file: !34, line: 144, size: 128, elements: !2149)
!2149 = !{!2150, !2381}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2148, file: !34, line: 146, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !26, line: 126, size: 1216, elements: !2153)
!2153 = !{!2154, !2164, !2185, !2186, !2187, !2188, !2189, !2363, !2364, !2365}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2152, file: !26, line: 127, baseType: !2155, size: 384)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !26, line: 21, size: 384, elements: !2156)
!2156 = !{!2157, !2158, !2160, !2161, !2162, !2163}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2155, file: !26, line: 22, baseType: !309, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2155, file: !26, line: 23, baseType: !2159, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2155, file: !26, line: 24, baseType: !2159, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2155, file: !26, line: 25, baseType: !309, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2155, file: !26, line: 26, baseType: !309, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2155, file: !26, line: 27, baseType: !309, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2152, file: !26, line: 128, baseType: !2165, size: 128, offset: 384)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2166, line: 105, size: 128, elements: !2167)
!2166 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2165, file: !2166, line: 110, baseType: !309, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2165, file: !2166, line: 118, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2166, line: 95, size: 448, elements: !2172)
!2172 = !{!2173, !2174, !2180, !2181, !2182, !2183, !2184}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2171, file: !2166, line: 96, baseType: !643, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2171, file: !2166, line: 97, baseType: !2175, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2166, line: 60, baseType: !2177)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2171, file: !2166, line: 98, baseType: !2175, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2171, file: !2166, line: 99, baseType: !893, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2171, file: !2166, line: 100, baseType: !893, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2171, file: !2166, line: 101, baseType: !1491, size: 128, align: 64, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2171, file: !2166, line: 102, baseType: !2179, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2152, file: !26, line: 129, baseType: !1082, size: 256, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2152, file: !26, line: 130, baseType: !25, size: 32, offset: 768)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2152, file: !26, line: 131, baseType: !7, size: 32, offset: 800)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2152, file: !26, line: 132, baseType: !309, size: 64, offset: 832)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2152, file: !26, line: 133, baseType: !2190, size: 64, offset: 896)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !26, line: 77, size: 192, elements: !2193)
!2193 = !{!2194, !2199, !2359}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2192, file: !26, line: 83, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2192, file: !26, line: 89, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !34, line: 1184, baseType: !7)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2206, line: 512, size: 896, elements: !2207)
!2206 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2207 = !{!2208, !2326, !2327, !2334, !2341, !2351, !2352, !2353, !2355, !2357}
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !2206, line: 513, baseType: !2209, size: 320)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !2206, line: 513, size: 320, elements: !2210)
!2210 = !{!2211, !2322, !2323, !2324, !2325}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2209, file: !2206, line: 514, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !34, line: 625, size: 1344, elements: !2214)
!2214 = !{!2215, !2224, !2225, !2233, !2240, !2241, !2246, !2247, !2252, !2253, !2256, !2315, !2316, !2317, !2318, !2319, !2320}
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !34, line: 628, baseType: !2216, size: 128)
!2216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !34, line: 628, size: 128, elements: !2217)
!2217 = !{!2218, !2223}
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !34, line: 629, baseType: !2219, size: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2216, file: !34, line: 629, size: 128, elements: !2220)
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2219, file: !34, line: 631, baseType: !309, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2219, file: !34, line: 632, baseType: !309, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2216, file: !34, line: 635, baseType: !1491, size: 128, align: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2213, file: !34, line: 639, baseType: !1728, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2213, file: !34, line: 640, baseType: !2226, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2227, line: 297, baseType: !2228)
!2227 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2227, line: 297, size: 64, elements: !2229)
!2229 = !{!2230}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2228, file: !2227, line: 297, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2232, line: 19, baseType: !309)
!2232 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !34, line: 646, baseType: !2234, size: 64, offset: 256)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !34, line: 646, size: 64, elements: !2235)
!2235 = !{!2236, !2239}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2234, file: !34, line: 647, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !34, line: 542, baseType: !309)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2234, file: !34, line: 648, baseType: !2238, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2213, file: !34, line: 666, baseType: !96, size: 32, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2213, file: !34, line: 667, baseType: !2242, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !34, line: 579, size: 320, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2243, file: !34, line: 580, baseType: !852, size: 320)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2213, file: !34, line: 670, baseType: !893, size: 8, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2213, file: !34, line: 681, baseType: !2248, size: 256, offset: 512)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2213, file: !34, line: 678, size: 256, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2248, file: !34, line: 679, baseType: !1145, size: 192, align: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2248, file: !34, line: 680, baseType: !309, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2213, file: !34, line: 689, baseType: !159, size: 128, offset: 768)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2213, file: !34, line: 691, baseType: !2254, size: 64, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !34, line: 691, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2213, file: !34, line: 694, baseType: !2257, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2206, line: 563, size: 1024, elements: !2260)
!2260 = !{!2261, !2265, !2266, !2270, !2274, !2278, !2279, !2283, !2287, !2291, !2292, !2293, !2297, !2301, !2307, !2311}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2259, file: !2206, line: 564, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{null, !2212}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2259, file: !2206, line: 569, baseType: !2262, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2259, file: !2206, line: 571, baseType: !2267, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!96, !2212, !309}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2259, file: !2206, line: 572, baseType: !2271, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!96, !2212}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2259, file: !2206, line: 578, baseType: !2275, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!96, !2212, !309, !309, !309}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2259, file: !2206, line: 580, baseType: !2200, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2259, file: !2206, line: 581, baseType: !2280, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!2203, !2204, !7}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2259, file: !2206, line: 582, baseType: !2284, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!2203, !2204, !309, !309}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2259, file: !2206, line: 584, baseType: !2288, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!309, !2212}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2259, file: !2206, line: 588, baseType: !2200, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2259, file: !2206, line: 591, baseType: !2200, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2259, file: !2206, line: 597, baseType: !2294, size: 64, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!96, !2212, !309, !153, !96, !96}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2259, file: !2206, line: 603, baseType: !2298, size: 64, offset: 768)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!178, !2212}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2259, file: !2206, line: 613, baseType: !2302, size: 64, offset: 832)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!96, !2212, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !34, line: 717, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2259, file: !2206, line: 625, baseType: !2308, size: 64, offset: 896)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!2305, !2212, !309}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2259, file: !2206, line: 633, baseType: !2312, size: 64, offset: 960)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!2198, !2212, !309}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2213, file: !34, line: 697, baseType: !309, size: 64, offset: 1024)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2213, file: !34, line: 699, baseType: !1755, size: 64, offset: 1088)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2213, file: !34, line: 700, baseType: !153, size: 64, offset: 1152)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2213, file: !34, line: 711, baseType: !643, size: 64, offset: 1216)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2213, file: !34, line: 717, baseType: !2305, size: 64, offset: 1280)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2213, file: !34, line: 722, baseType: !2321, offset: 1344)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !34, line: 570, elements: !543)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2209, file: !2206, line: 515, baseType: !704, size: 32, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2209, file: !2206, line: 516, baseType: !309, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2209, file: !2206, line: 517, baseType: !309, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2209, file: !2206, line: 518, baseType: !309, size: 64, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2205, file: !2206, line: 520, baseType: !33, size: 32, offset: 320)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2205, file: !2206, line: 522, baseType: !2328, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2232, line: 22, baseType: !2330)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2232, line: 22, size: 64, elements: !2331)
!2331 = !{!2332}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2330, file: !2232, line: 22, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2232, line: 15, baseType: !309)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2205, file: !2206, line: 524, baseType: !2335, size: 64, offset: 448)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2227, line: 372, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2227, line: 372, size: 64, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2337, file: !2227, line: 372, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2232, line: 16, baseType: !309)
!2341 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !2206, line: 527, baseType: !2342, size: 64, offset: 512)
!2342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !2206, line: 527, size: 64, elements: !2343)
!2343 = !{!2344, !2350}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2342, file: !2206, line: 528, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2232, line: 21, baseType: !2346)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2232, line: 21, size: 64, elements: !2347)
!2347 = !{!2348}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2346, file: !2232, line: 21, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2232, line: 14, baseType: !309)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2342, file: !2206, line: 529, baseType: !2329, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2205, file: !2206, line: 534, baseType: !2198, size: 64, offset: 576)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2205, file: !2206, line: 535, baseType: !2198, size: 64, offset: 640)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2205, file: !2206, line: 541, baseType: !2354, size: 64, offset: 704)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2205, file: !2206, line: 545, baseType: !2356, size: 64, offset: 768)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2205, file: !2206, line: 549, baseType: !2358, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2227, line: 520, baseType: !2198)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2192, file: !26, line: 100, baseType: !2360, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!96, !2151, !309, !309, !96}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2152, file: !26, line: 134, baseType: !153, size: 64, offset: 960)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2152, file: !26, line: 135, baseType: !96, size: 32, offset: 1024)
!2365 = !DIDerivedType(tag: DW_TAG_member, scope: !2152, file: !26, line: 136, baseType: !2366, size: 128, offset: 1088)
!2366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2152, file: !26, line: 136, size: 128, elements: !2367)
!2367 = !{!2368, !2374}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2366, file: !26, line: 137, baseType: !2369, size: 128)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2370, line: 6, size: 128, elements: !2371)
!2370 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2371 = !{!2372, !2373}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2369, file: !2370, line: 7, baseType: !412, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2369, file: !2370, line: 8, baseType: !412, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2366, file: !26, line: 138, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2366, file: !26, line: 138, elements: !2376)
!2376 = !{!2377, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2375, file: !26, line: 138, baseType: !2378)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2375, file: !26, line: 138, elements: !543)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2375, file: !26, line: 138, baseType: !2380)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2369, elements: !1817)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2148, file: !34, line: 147, baseType: !153, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2106, file: !34, line: 161, baseType: !1491, size: 128, align: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !34, line: 164, baseType: !2384, size: 32, offset: 384)
!2384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2102, file: !34, line: 164, size: 32, elements: !2385)
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2384, file: !34, line: 169, baseType: !209, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2384, file: !34, line: 177, baseType: !7, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2102, file: !34, line: 181, baseType: !209, size: 32, offset: 416)
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !34, line: 325, baseType: !2390, size: 512, offset: 512)
!2390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2070, file: !34, line: 325, size: 512, elements: !2391)
!2391 = !{!2392, !2402}
!2392 = !DIDerivedType(tag: DW_TAG_member, scope: !2390, file: !34, line: 326, baseType: !2393, size: 320)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2390, file: !34, line: 326, size: 320, elements: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2400, !2401}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2393, file: !34, line: 327, baseType: !309, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2393, file: !34, line: 328, baseType: !309, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2393, file: !34, line: 329, baseType: !309, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2393, file: !34, line: 331, baseType: !209, size: 32, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2393, file: !34, line: 332, baseType: !209, size: 32, offset: 224)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2393, file: !34, line: 333, baseType: !209, size: 32, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2393, file: !34, line: 335, baseType: !7, size: 32, offset: 288)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2390, file: !34, line: 339, baseType: !2102, size: 512, align: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !34, line: 341, baseType: !2404, size: 512, offset: 1024)
!2404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2070, file: !34, line: 341, size: 512, elements: !2405)
!2405 = !{!2406, !2415, !2421}
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !2404, file: !34, line: 342, baseType: !2407, size: 384)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2404, file: !34, line: 342, size: 384, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412, !2413, !2414}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2407, file: !34, line: 343, baseType: !309, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2407, file: !34, line: 344, baseType: !309, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2407, file: !34, line: 346, baseType: !153, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2407, file: !34, line: 347, baseType: !153, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2407, file: !34, line: 348, baseType: !153, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2407, file: !34, line: 349, baseType: !153, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, scope: !2404, file: !34, line: 352, baseType: !2416, size: 256)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2404, file: !34, line: 352, size: 256, elements: !2417)
!2417 = !{!2418, !2419, !2420}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2416, file: !34, line: 353, baseType: !309, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2416, file: !34, line: 354, baseType: !309, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2416, file: !34, line: 356, baseType: !159, size: 128, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2404, file: !34, line: 359, baseType: !2102, size: 512, align: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2065, file: !2066, line: 1000, baseType: !96, size: 32, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2065, file: !2066, line: 1001, baseType: !2424, size: 320, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1233, line: 14, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1233, line: 30, size: 320, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2435}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2425, file: !1233, line: 31, baseType: !7, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2425, file: !1233, line: 32, baseType: !153, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2425, file: !1233, line: 33, baseType: !2430, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1233, line: 16, baseType: !2431)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!96, !2434, !7, !96, !153}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2425, file: !1233, line: 34, baseType: !159, size: 128, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2061, file: !15, line: 395, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!291, !153}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2028, file: !15, line: 1920, baseType: !2045, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2028, file: !15, line: 1921, baseType: !2444, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!96, !2048, !2447, !7}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2028, file: !15, line: 1923, baseType: !2450, size: 64, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!96, !1755, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !2455)
!2455 = !{!2456, !2461}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2454, file: !15, line: 1859, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !2458)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!893, !2453, !178, !96, !500, !412, !7}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2454, file: !15, line: 1860, baseType: !500, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2028, file: !15, line: 1924, baseType: !2463, size: 64, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!2466, !1755, !2468}
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2467, line: 59, baseType: !7)
!2467 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !515, line: 31, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2028, file: !15, line: 1925, baseType: !2471, size: 64, offset: 576)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!295, !1755, !7, !309}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2028, file: !15, line: 1926, baseType: !2471, size: 64, offset: 640)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2028, file: !15, line: 1927, baseType: !2476, size: 64, offset: 704)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!96, !1755, !2212}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2028, file: !15, line: 1928, baseType: !309, size: 64, offset: 768)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2028, file: !15, line: 1929, baseType: !2481, size: 64, offset: 832)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!96, !339, !1755}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2028, file: !15, line: 1930, baseType: !2485, size: 64, offset: 896)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!96, !1755, !2488}
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !153)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2028, file: !15, line: 1931, baseType: !2481, size: 64, offset: 960)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2028, file: !15, line: 1932, baseType: !2491, size: 64, offset: 1024)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!96, !1755, !500, !500, !96}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2028, file: !15, line: 1933, baseType: !2495, size: 64, offset: 1088)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!96, !96, !1755, !96}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2028, file: !15, line: 1934, baseType: !2499, size: 64, offset: 1152)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!96, !1755, !96, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2028, file: !15, line: 1935, baseType: !1752, size: 64, offset: 1216)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2028, file: !15, line: 1936, baseType: !2506, size: 64, offset: 1280)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!96, !96}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2028, file: !15, line: 1937, baseType: !2499, size: 64, offset: 1344)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2028, file: !15, line: 1938, baseType: !2511, size: 64, offset: 1408)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!291, !2514, !1755, !2039, !306, !7}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !614, line: 59, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2028, file: !15, line: 1939, baseType: !2517, size: 64, offset: 1472)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!291, !1755, !2039, !2514, !306, !7}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2028, file: !15, line: 1940, baseType: !2521, size: 64, offset: 1536)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !1755}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2028, file: !15, line: 1941, baseType: !2525, size: 64, offset: 1600)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!96, !1755, !96, !2528, !2529}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2028, file: !15, line: 1942, baseType: !2531, size: 64, offset: 1664)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!295, !1755, !96, !500, !500}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2028, file: !15, line: 1944, baseType: !2535, size: 64, offset: 1728)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !612, !1755}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2028, file: !15, line: 1948, baseType: !2539, size: 64, offset: 1792)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!291, !1755, !500, !1755, !500, !306, !7}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2028, file: !15, line: 1950, baseType: !2543, size: 64, offset: 1856)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!500, !1755, !500, !1755, !500, !500, !7}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2028, file: !15, line: 1953, baseType: !2491, size: 64, offset: 1920)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2028, file: !15, line: 1954, baseType: !2548, size: 64, offset: 1984)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!96, !2551, !7}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2028, file: !15, line: 1955, baseType: !2554, size: 64, offset: 2048)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!96, !2551, !2447, !7}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1756, file: !15, line: 1018, baseType: !412, size: 64, offset: 1472)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1756, file: !15, line: 1020, baseType: !153, size: 64, offset: 1536)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1756, file: !15, line: 1023, baseType: !153, size: 64, offset: 1600)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1756, file: !15, line: 1027, baseType: !2561, size: 64, offset: 1664)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1756, file: !15, line: 1029, baseType: !335, size: 64, offset: 1728)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1756, file: !15, line: 1030, baseType: !2564, size: 32, offset: 1792)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2565, line: 8, baseType: !408)
!2565 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1756, file: !15, line: 1031, baseType: !2564, size: 32, offset: 1824)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1732, file: !34, line: 756, baseType: !309, size: 64, offset: 704)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1732, file: !34, line: 757, baseType: !309, size: 64, offset: 768)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1732, file: !34, line: 760, baseType: !309, size: 64, offset: 832)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1732, file: !34, line: 761, baseType: !309, size: 64, offset: 896)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1732, file: !34, line: 763, baseType: !309, size: 64, offset: 960)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1732, file: !34, line: 764, baseType: !2573, size: 64, offset: 1024)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2227, line: 299, baseType: !2575)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2227, line: 299, size: 64, elements: !2576)
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2575, file: !2227, line: 299, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2232, line: 18, baseType: !309)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1732, file: !34, line: 773, baseType: !209, size: 32, offset: 1088)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1732, file: !34, line: 785, baseType: !209, size: 32, offset: 1120)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1732, file: !34, line: 795, baseType: !2582, size: 64, offset: 1152)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !34, line: 726, size: 128, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2583, file: !34, line: 727, baseType: !412, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2583, file: !34, line: 728, baseType: !96, size: 32, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1732, file: !34, line: 801, baseType: !309, size: 64, offset: 1216)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1732, file: !34, line: 804, baseType: !643, size: 64, offset: 1280)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1732, file: !34, line: 806, baseType: !96, size: 32, offset: 1344)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1732, file: !34, line: 808, baseType: !189, size: 32, offset: 1376)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1732, file: !34, line: 823, baseType: !852, size: 320, offset: 1408)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1732, file: !34, line: 825, baseType: !159, size: 128, offset: 1728)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1732, file: !34, line: 845, baseType: !96, size: 32, offset: 1856)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1732, file: !34, line: 849, baseType: !309, size: 64, offset: 1920)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1732, file: !34, line: 850, baseType: !309, size: 64, offset: 1984)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1732, file: !34, line: 852, baseType: !309, size: 64, offset: 2048)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1732, file: !34, line: 853, baseType: !309, size: 64, offset: 2112)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1732, file: !34, line: 854, baseType: !645, size: 64, offset: 2176)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1732, file: !34, line: 855, baseType: !309, size: 64, offset: 2240)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1732, file: !34, line: 856, baseType: !309, size: 64, offset: 2304)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1732, file: !34, line: 857, baseType: !309, size: 64, offset: 2368)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1732, file: !34, line: 858, baseType: !309, size: 64, offset: 2432)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1732, file: !34, line: 865, baseType: !385, size: 32, offset: 2496)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1732, file: !34, line: 867, baseType: !189, size: 32, offset: 2528)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1732, file: !34, line: 869, baseType: !309, size: 64, offset: 2560)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1732, file: !34, line: 869, baseType: !309, size: 64, offset: 2624)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1732, file: !34, line: 869, baseType: !309, size: 64, offset: 2688)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1732, file: !34, line: 869, baseType: !309, size: 64, offset: 2752)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1732, file: !34, line: 870, baseType: !309, size: 64, offset: 2816)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1732, file: !34, line: 870, baseType: !309, size: 64, offset: 2880)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1732, file: !34, line: 870, baseType: !309, size: 64, offset: 2944)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1732, file: !34, line: 871, baseType: !309, size: 64, offset: 3008)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1732, file: !34, line: 871, baseType: !309, size: 64, offset: 3072)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1732, file: !34, line: 871, baseType: !309, size: 64, offset: 3136)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1732, file: !34, line: 871, baseType: !309, size: 64, offset: 3200)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1732, file: !34, line: 873, baseType: !2617, size: 3328, offset: 3264)
!2617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 3328, elements: !2618)
!2618 = !{!2619}
!2619 = !DISubrange(count: 52)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1732, file: !34, line: 875, baseType: !2621, size: 1280, offset: 6592)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1970, size: 1280, elements: !1804)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1732, file: !34, line: 877, baseType: !2623, size: 64, offset: 7872)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !34, line: 877, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1732, file: !34, line: 880, baseType: !2626, size: 1088, offset: 7936)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2627, line: 72, baseType: !2628)
!2627 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2627, line: 23, size: 1088, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2637, !2638, !2639, !2640, !2665, !2666, !2667}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2628, file: !2627, line: 28, baseType: !412, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2628, file: !2627, line: 38, baseType: !645, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2628, file: !2627, line: 40, baseType: !309, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2628, file: !2627, line: 43, baseType: !852, size: 320, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2628, file: !2627, line: 44, baseType: !2635, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2627, line: 44, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2628, file: !2627, line: 48, baseType: !309, size: 64, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2628, file: !2627, line: 59, baseType: !639, size: 256, offset: 640)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2628, file: !2627, line: 60, baseType: !153, size: 64, offset: 896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2628, file: !2627, line: 61, baseType: !2641, size: 64, offset: 960)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2644, line: 13, size: 1216, elements: !2645)
!2644 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2643, file: !2644, line: 14, baseType: !153, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2643, file: !2644, line: 15, baseType: !309, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2643, file: !2644, line: 17, baseType: !309, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2643, file: !2644, line: 17, baseType: !309, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2643, file: !2644, line: 18, baseType: !309, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2643, file: !2644, line: 18, baseType: !309, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2643, file: !2644, line: 19, baseType: !1377, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2643, file: !2644, line: 21, baseType: !295, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2643, file: !2644, line: 23, baseType: !295, size: 64, offset: 512)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2643, file: !2644, line: 24, baseType: !295, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2643, file: !2644, line: 25, baseType: !295, size: 64, offset: 640)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2643, file: !2644, line: 26, baseType: !295, size: 64, offset: 704)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2643, file: !2644, line: 27, baseType: !295, size: 64, offset: 768)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2643, file: !2644, line: 28, baseType: !295, size: 64, offset: 832)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2643, file: !2644, line: 29, baseType: !295, size: 64, offset: 896)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2643, file: !2644, line: 30, baseType: !295, size: 64, offset: 960)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2643, file: !2644, line: 31, baseType: !295, size: 64, offset: 1024)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2643, file: !2644, line: 32, baseType: !295, size: 64, offset: 1088)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2643, file: !2644, line: 33, baseType: !295, size: 64, offset: 1152)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2628, file: !2627, line: 63, baseType: !209, size: 32, offset: 1024)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2628, file: !2627, line: 69, baseType: !227, size: 16, offset: 1056)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2628, file: !2627, line: 70, baseType: !2668, size: 16, offset: 1072)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !218, line: 18, baseType: !2669)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !220, line: 23, baseType: !1883)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !34, line: 882, baseType: !309, size: 64, offset: 9024)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1732, file: !34, line: 885, baseType: !189, size: 32, offset: 9088)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1732, file: !34, line: 886, baseType: !2673, size: 64, offset: 9152)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !34, line: 732, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1732, file: !34, line: 901, baseType: !1995, size: 64, offset: 9216)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1732, file: !34, line: 904, baseType: !1755, size: 64, offset: 9280)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1732, file: !34, line: 906, baseType: !2678, size: 64, offset: 9344)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !34, line: 906, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1732, file: !34, line: 930, baseType: !209, size: 32, offset: 9408)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1732, file: !34, line: 933, baseType: !209, size: 32, offset: 9440)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1732, file: !34, line: 935, baseType: !2683, size: 64, offset: 9472)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !135, line: 103, size: 64, elements: !2684)
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2683, file: !135, line: 104, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !135, line: 101, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1732, file: !34, line: 940, baseType: !643, size: 64, offset: 9536)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1732, file: !34, line: 942, baseType: !1220, size: 256, offset: 9600)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1729, file: !34, line: 986, baseType: !2691, offset: 10240)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, elements: !1817)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1507, file: !614, line: 882, baseType: !1728, size: 64, offset: 9792)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1507, file: !614, line: 884, baseType: !96, size: 32, offset: 9856)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1507, file: !614, line: 885, baseType: !96, size: 32, offset: 9888)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1507, file: !614, line: 886, baseType: !96, size: 32, offset: 9920)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1507, file: !614, line: 888, baseType: !96, size: 32, offset: 9952)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1507, file: !614, line: 890, baseType: !309, size: 64, offset: 9984)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1507, file: !614, line: 893, baseType: !7, size: 32, offset: 10048)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1507, file: !614, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1507, file: !614, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1507, file: !614, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1507, file: !614, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1507, file: !614, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1507, file: !614, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1507, file: !614, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1507, file: !614, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1507, file: !614, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1507, file: !614, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1507, file: !614, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1507, file: !614, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1507, file: !614, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1507, file: !614, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1507, file: !614, line: 969, baseType: !309, size: 64, offset: 10176)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1507, file: !614, line: 971, baseType: !2715, size: 448, offset: 10240)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !129, line: 25, size: 448, elements: !2716)
!2716 = !{!2717, !2718, !2723}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2715, file: !129, line: 26, baseType: !309, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2715, file: !129, line: 27, baseType: !2719, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!295, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, scope: !2715, file: !129, line: 28, baseType: !2724, size: 320, offset: 128)
!2724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2715, file: !129, line: 28, size: 320, elements: !2725)
!2725 = !{!2726, !2736, !2761}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2724, file: !129, line: 37, baseType: !2727, size: 320)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2724, file: !129, line: 30, size: 320, elements: !2728)
!2728 = !{!2729, !2731, !2732, !2733, !2734, !2735}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2727, file: !129, line: 31, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2727, file: !129, line: 32, baseType: !408, size: 32, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2727, file: !129, line: 33, baseType: !408, size: 32, offset: 96)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2727, file: !129, line: 34, baseType: !408, size: 32, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2727, file: !129, line: 35, baseType: !412, size: 64, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2727, file: !129, line: 36, baseType: !2730, size: 64, offset: 256)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2724, file: !129, line: 47, baseType: !2737, size: 192)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2724, file: !129, line: 39, size: 192, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2760}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2737, file: !129, line: 40, baseType: !1190, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2737, file: !129, line: 41, baseType: !128, size: 32, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, scope: !2737, file: !129, line: 42, baseType: !2742, size: 64, offset: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2737, file: !129, line: 42, size: 64, elements: !2743)
!2743 = !{!2744, !2752}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2742, file: !129, line: 43, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2747, line: 7, size: 128, elements: !2748)
!2747 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2748 = !{!2749, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2746, file: !2747, line: 8, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !293, line: 93, baseType: !502)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2746, file: !2747, line: 9, baseType: !502, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2742, file: !129, line: 44, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2755, line: 7, size: 64, elements: !2756)
!2755 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2756 = !{!2757, !2759}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2754, file: !2755, line: 8, baseType: !2758, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2755, line: 5, baseType: !1273)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2754, file: !2755, line: 9, baseType: !1273, size: 32, offset: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2737, file: !129, line: 46, baseType: !412, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2724, file: !129, line: 55, baseType: !2762, size: 256)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2724, file: !129, line: 49, size: 256, elements: !2763)
!2763 = !{!2764, !2767, !2768, !2769, !2770}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2762, file: !129, line: 50, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !129, line: 14, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2762, file: !129, line: 51, baseType: !96, size: 32, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2762, file: !129, line: 52, baseType: !96, size: 32, offset: 96)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2762, file: !129, line: 53, baseType: !309, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2762, file: !129, line: 54, baseType: !309, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1507, file: !614, line: 973, baseType: !2772, size: 32, offset: 10688)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !160, line: 27, baseType: !2773)
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !293, line: 28, baseType: !96)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1507, file: !614, line: 974, baseType: !2772, size: 32, offset: 10720)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1507, file: !614, line: 978, baseType: !309, size: 64, offset: 10752)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1507, file: !614, line: 987, baseType: !1506, size: 64, offset: 10816)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1507, file: !614, line: 990, baseType: !1506, size: 64, offset: 10880)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1507, file: !614, line: 995, baseType: !159, size: 128, offset: 10944)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1507, file: !614, line: 996, baseType: !159, size: 128, offset: 11072)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1507, file: !614, line: 997, baseType: !1506, size: 64, offset: 11200)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1507, file: !614, line: 1005, baseType: !159, size: 128, offset: 11264)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1507, file: !614, line: 1006, baseType: !159, size: 128, offset: 11392)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1507, file: !614, line: 1009, baseType: !1796, size: 64, offset: 11520)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1507, file: !614, line: 1010, baseType: !2785, size: 512, offset: 11584)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 512, elements: !1804)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1507, file: !614, line: 1011, baseType: !159, size: 128, offset: 12096)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1507, file: !614, line: 1012, baseType: !159, size: 128, offset: 12224)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1507, file: !614, line: 1014, baseType: !2789, size: 64, offset: 12352)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1507, file: !614, line: 1017, baseType: !606, size: 64, offset: 12416)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1507, file: !614, line: 1020, baseType: !606, size: 64, offset: 12480)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1507, file: !614, line: 1023, baseType: !153, size: 64, offset: 12544)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1507, file: !614, line: 1025, baseType: !412, size: 64, offset: 12608)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1507, file: !614, line: 1026, baseType: !412, size: 64, offset: 12672)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1507, file: !614, line: 1031, baseType: !412, size: 64, offset: 12736)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1507, file: !614, line: 1032, baseType: !2797, size: 192, offset: 12800)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !614, line: 324, size: 192, elements: !2798)
!2798 = !{!2799, !2800, !2801}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2797, file: !614, line: 326, baseType: !412, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2797, file: !614, line: 327, baseType: !412, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2797, file: !614, line: 328, baseType: !652, size: 32, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1507, file: !614, line: 1041, baseType: !309, size: 64, offset: 12992)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1507, file: !614, line: 1042, baseType: !309, size: 64, offset: 13056)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1507, file: !614, line: 1045, baseType: !412, size: 64, offset: 13120)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1507, file: !614, line: 1048, baseType: !412, size: 64, offset: 13184)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1507, file: !614, line: 1051, baseType: !309, size: 64, offset: 13248)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1507, file: !614, line: 1052, baseType: !309, size: 64, offset: 13312)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1507, file: !614, line: 1055, baseType: !2809, size: 640, offset: 13376)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2810, line: 132, size: 640, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2811 = !{!2812, !2818, !2819}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2809, file: !2810, line: 133, baseType: !2813, size: 576)
!2813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2814, size: 576, elements: !260)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2810, line: 117, size: 192, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2814, file: !2810, line: 118, baseType: !412, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2814, file: !2810, line: 119, baseType: !1199, size: 128, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2809, file: !2810, line: 134, baseType: !7, size: 32, offset: 576)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2809, file: !2810, line: 135, baseType: !7, size: 32, offset: 608)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1507, file: !614, line: 1058, baseType: !2821, size: 448, offset: 14016)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2810, line: 144, size: 448, elements: !2822)
!2822 = !{!2823, !2824, !2825}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2821, file: !2810, line: 145, baseType: !1491, size: 128, align: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2821, file: !2810, line: 146, baseType: !639, size: 256, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2821, file: !2810, line: 147, baseType: !7, size: 32, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1507, file: !614, line: 1064, baseType: !1824, size: 64, offset: 14464)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1507, file: !614, line: 1067, baseType: !1824, size: 64, offset: 14528)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1507, file: !614, line: 1070, baseType: !1824, size: 64, offset: 14592)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1507, file: !614, line: 1074, baseType: !1851, size: 64, offset: 14656)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1507, file: !614, line: 1084, baseType: !2831, size: 128, offset: 14720)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 128, elements: !2832)
!2832 = !{!2833}
!2833 = !DISubrange(count: 16)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1507, file: !614, line: 1086, baseType: !2835, size: 64, offset: 14848)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !614, line: 55, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1507, file: !614, line: 1089, baseType: !2838, size: 64, offset: 14912)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2839, line: 12, size: 64, elements: !2840)
!2839 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2840 = !{!2841}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2838, file: !2839, line: 13, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2839, line: 8, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1507, file: !614, line: 1090, baseType: !2845, size: 128, offset: 14976)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2846, line: 13, size: 128, elements: !2847)
!2846 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2847 = !{!2848}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2845, file: !2846, line: 14, baseType: !159, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1507, file: !614, line: 1097, baseType: !2850, size: 64, offset: 15104)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !614, line: 50, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1507, file: !614, line: 1100, baseType: !2853, size: 64, offset: 15168)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !614, line: 1100, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1507, file: !614, line: 1103, baseType: !2856, size: 64, offset: 15232)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !614, line: 53, flags: DIFlagFwdDecl)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1507, file: !614, line: 1107, baseType: !2859, size: 64, offset: 15296)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2861, line: 35, flags: DIFlagFwdDecl)
!2861 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1507, file: !614, line: 1110, baseType: !2863, size: 64, offset: 15360)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2865, line: 93, size: 8768, elements: !2866)
!2865 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2916, !2925, !2926, !2928, !2929, !2930, !2933, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2971, !2972, !2979, !2989, !2992, !2993, !2996, !2997, !2998, !2999, !3000, !3001}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2864, file: !2865, line: 94, baseType: !1520, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2864, file: !2865, line: 95, baseType: !209, size: 32, offset: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2864, file: !2865, line: 96, baseType: !96, size: 32, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2864, file: !2865, line: 97, baseType: !96, size: 32, offset: 96)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2864, file: !2865, line: 98, baseType: !159, size: 128, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2864, file: !2865, line: 100, baseType: !1232, size: 192, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2864, file: !2865, line: 103, baseType: !1506, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2864, file: !2865, line: 106, baseType: !2875, size: 192, offset: 512)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2000, line: 32, size: 192, elements: !2876)
!2876 = !{!2877, !2878}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2875, file: !2000, line: 33, baseType: !159, size: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2875, file: !2000, line: 34, baseType: !2879, size: 64, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2880, line: 25, baseType: !2881)
!2880 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2880, line: 23, size: 64, elements: !2882)
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2881, file: !2880, line: 24, baseType: !1679, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2864, file: !2865, line: 109, baseType: !531, size: 64, offset: 704)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2864, file: !2865, line: 112, baseType: !96, size: 32, offset: 768)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2864, file: !2865, line: 114, baseType: !96, size: 32, offset: 800)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2864, file: !2865, line: 115, baseType: !1506, size: 64, offset: 832)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2864, file: !2865, line: 118, baseType: !96, size: 32, offset: 896)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2864, file: !2865, line: 119, baseType: !7, size: 32, offset: 928)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2864, file: !2865, line: 121, baseType: !2891, size: 64, offset: 960)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2865, line: 80, size: 448, elements: !2893)
!2893 = !{!2894, !2895, !2901}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2892, file: !2865, line: 81, baseType: !209, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2892, file: !2865, line: 82, baseType: !2896, size: 128, offset: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2865, line: 75, size: 128, elements: !2897)
!2897 = !{!2898, !2899}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2896, file: !2865, line: 76, baseType: !1506, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2896, file: !2865, line: 77, baseType: !2900, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2892, file: !2865, line: 83, baseType: !1082, size: 256, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2864, file: !2865, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2864, file: !2865, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2864, file: !2865, line: 138, baseType: !7, size: 32, offset: 1056)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2864, file: !2865, line: 139, baseType: !159, size: 128, offset: 1088)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2864, file: !2865, line: 142, baseType: !1138, size: 512, offset: 1216)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2864, file: !2865, line: 143, baseType: !1118, size: 64, offset: 1728)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2864, file: !2865, line: 150, baseType: !2909, size: 256, offset: 1792)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2910, size: 256, elements: !2914)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2865, line: 38, size: 128, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2910, file: !2865, line: 39, baseType: !412, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2910, file: !2865, line: 40, baseType: !412, size: 64, offset: 64)
!2914 = !{!2915}
!2915 = !DISubrange(count: 2)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2864, file: !2865, line: 156, baseType: !2917, size: 192, offset: 2048)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2865, line: 66, size: 192, elements: !2918)
!2918 = !{!2919}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2917, file: !2865, line: 67, baseType: !2920, size: 192)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2865, line: 47, size: 192, elements: !2921)
!2921 = !{!2922, !2923, !2924}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2920, file: !2865, line: 48, baseType: !645, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2920, file: !2865, line: 49, baseType: !645, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2920, file: !2865, line: 50, baseType: !645, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2864, file: !2865, line: 160, baseType: !2809, size: 640, offset: 2240)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2864, file: !2865, line: 163, baseType: !2927, size: 256, offset: 2880)
!2927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1796, size: 256, elements: !1804)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2864, file: !2865, line: 169, baseType: !1796, size: 64, offset: 3136)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2864, file: !2865, line: 172, baseType: !96, size: 32, offset: 3200)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2864, file: !2865, line: 174, baseType: !2931, size: 64, offset: 3264)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2865, line: 174, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2864, file: !2865, line: 185, baseType: !2934, size: 64, offset: 3328)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !381, line: 860, baseType: !2935)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 853, size: 64, elements: !2936)
!2936 = !{!2937, !2938}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2935, file: !381, line: 858, baseType: !380, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2935, file: !381, line: 859, baseType: !189, size: 32, offset: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2864, file: !2865, line: 186, baseType: !412, size: 64, offset: 3392)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2864, file: !2865, line: 186, baseType: !412, size: 64, offset: 3456)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2864, file: !2865, line: 186, baseType: !412, size: 64, offset: 3520)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2864, file: !2865, line: 186, baseType: !412, size: 64, offset: 3584)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2864, file: !2865, line: 187, baseType: !412, size: 64, offset: 3648)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2864, file: !2865, line: 188, baseType: !412, size: 64, offset: 3712)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2864, file: !2865, line: 189, baseType: !2797, size: 192, offset: 3776)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2864, file: !2865, line: 190, baseType: !309, size: 64, offset: 3968)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2864, file: !2865, line: 190, baseType: !309, size: 64, offset: 4032)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2864, file: !2865, line: 190, baseType: !309, size: 64, offset: 4096)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2864, file: !2865, line: 190, baseType: !309, size: 64, offset: 4160)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2864, file: !2865, line: 191, baseType: !309, size: 64, offset: 4224)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2864, file: !2865, line: 191, baseType: !309, size: 64, offset: 4288)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2864, file: !2865, line: 191, baseType: !309, size: 64, offset: 4352)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2864, file: !2865, line: 191, baseType: !309, size: 64, offset: 4416)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2864, file: !2865, line: 192, baseType: !309, size: 64, offset: 4480)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2864, file: !2865, line: 192, baseType: !309, size: 64, offset: 4544)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2864, file: !2865, line: 192, baseType: !309, size: 64, offset: 4608)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2864, file: !2865, line: 192, baseType: !309, size: 64, offset: 4672)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2864, file: !2865, line: 193, baseType: !309, size: 64, offset: 4736)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2864, file: !2865, line: 193, baseType: !309, size: 64, offset: 4800)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2864, file: !2865, line: 194, baseType: !2961, size: 448, offset: 4864)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2962, line: 12, size: 448, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2961, file: !2962, line: 15, baseType: !412, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2961, file: !2962, line: 17, baseType: !412, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2961, file: !2962, line: 19, baseType: !412, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2961, file: !2962, line: 21, baseType: !412, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2961, file: !2962, line: 29, baseType: !412, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2961, file: !2962, line: 35, baseType: !412, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2961, file: !2962, line: 44, baseType: !412, size: 64, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2864, file: !2865, line: 202, baseType: !414, size: 64, offset: 5312)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2864, file: !2865, line: 213, baseType: !2973, size: 2048, offset: 5376)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2974, size: 2048, elements: !2832)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2975, line: 43, size: 128, elements: !2976)
!2975 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2974, file: !2975, line: 44, baseType: !308, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2974, file: !2975, line: 45, baseType: !308, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2864, file: !2865, line: 216, baseType: !2980, size: 448, offset: 7424)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2865, line: 30, size: 448, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2980, file: !2865, line: 31, baseType: !96, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2980, file: !2865, line: 32, baseType: !295, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2980, file: !2865, line: 33, baseType: !309, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2980, file: !2865, line: 34, baseType: !412, size: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2980, file: !2865, line: 34, baseType: !412, size: 64, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2980, file: !2865, line: 35, baseType: !309, size: 64, offset: 320)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2980, file: !2865, line: 35, baseType: !309, size: 64, offset: 384)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2864, file: !2865, line: 219, baseType: !2990, size: 64, offset: 7872)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2865, line: 219, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2864, file: !2865, line: 222, baseType: !7, size: 32, offset: 7936)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2864, file: !2865, line: 223, baseType: !2994, size: 64, offset: 8000)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2865, line: 223, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2864, file: !2865, line: 230, baseType: !893, size: 8, offset: 8064)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2864, file: !2865, line: 231, baseType: !1883, size: 16, offset: 8080)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2864, file: !2865, line: 232, baseType: !1883, size: 16, offset: 8096)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2864, file: !2865, line: 234, baseType: !1728, size: 64, offset: 8128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2864, file: !2865, line: 237, baseType: !639, size: 256, offset: 8192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2864, file: !2865, line: 243, baseType: !852, size: 320, offset: 8448)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1507, file: !614, line: 1111, baseType: !3003, size: 64, offset: 15424)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2865, line: 20, size: 16640, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3009}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3004, file: !2865, line: 21, baseType: !189, size: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3004, file: !2865, line: 22, baseType: !1520, size: 32, offset: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3004, file: !2865, line: 23, baseType: !1232, size: 192, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3004, file: !2865, line: 24, baseType: !3010, size: 16384, offset: 256)
!3010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3011, size: 16384, elements: !264)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2000, line: 51, size: 256, elements: !3012)
!3012 = !{!3013}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3011, file: !2000, line: 52, baseType: !3014, size: 256)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2000, line: 37, size: 256, elements: !3015)
!3015 = !{!3016, !3023, !3024, !3030}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3014, file: !2000, line: 39, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3018, line: 83, baseType: !3019)
!3018 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3018, line: 82, baseType: !3021)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !96}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3014, file: !2000, line: 40, baseType: !309, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3014, file: !2000, line: 46, baseType: !3025, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3018, line: 86, baseType: !3026)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3018, line: 85, baseType: !3028)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3014, file: !2000, line: 48, baseType: !2879, size: 64, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1507, file: !614, line: 1112, baseType: !2879, size: 64, offset: 15488)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1507, file: !614, line: 1113, baseType: !2879, size: 64, offset: 15552)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1507, file: !614, line: 1115, baseType: !2879, size: 64, offset: 15616)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1507, file: !614, line: 1116, baseType: !2875, size: 192, offset: 15680)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1507, file: !614, line: 1117, baseType: !309, size: 64, offset: 15872)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1507, file: !614, line: 1118, baseType: !306, size: 64, offset: 15936)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1507, file: !614, line: 1119, baseType: !7, size: 32, offset: 16000)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1507, file: !614, line: 1121, baseType: !1494, size: 64, offset: 16064)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1507, file: !614, line: 1125, baseType: !3040, size: 64, offset: 16128)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !614, line: 43, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1507, file: !614, line: 1127, baseType: !345, size: 32, offset: 16192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1507, file: !614, line: 1128, baseType: !7, size: 32, offset: 16224)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1507, file: !614, line: 1130, baseType: !3045, size: 128, offset: 16256)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3046, line: 37, size: 128, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3045, file: !3046, line: 38, baseType: !96, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3045, file: !3046, line: 39, baseType: !209, size: 32, offset: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3045, file: !3046, line: 40, baseType: !3051, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3046, line: 24, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1507, file: !614, line: 1131, baseType: !3054, size: 256, offset: 16384)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3055, line: 12, size: 256, elements: !3056)
!3055 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3056 = !{!3057, !3058, !3059, !3060}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3054, file: !3055, line: 13, baseType: !259, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3054, file: !3055, line: 14, baseType: !309, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3054, file: !3055, line: 15, baseType: !309, size: 64, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3054, file: !3055, line: 16, baseType: !893, size: 8, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1507, file: !614, line: 1134, baseType: !412, size: 64, offset: 16640)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1507, file: !614, line: 1135, baseType: !412, size: 64, offset: 16704)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1507, file: !614, line: 1138, baseType: !189, size: 32, offset: 16768)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1507, file: !614, line: 1141, baseType: !652, size: 32, offset: 16800)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1507, file: !614, line: 1143, baseType: !3066, size: 64, offset: 16832)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !614, line: 735, size: 64, elements: !3067)
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3066, file: !614, line: 736, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1507, file: !614, line: 1147, baseType: !1202, size: 128, offset: 16896)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1507, file: !614, line: 1149, baseType: !1506, size: 64, offset: 17024)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1507, file: !614, line: 1151, baseType: !3073, size: 64, offset: 17088)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !614, line: 1151, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1507, file: !614, line: 1188, baseType: !153, size: 64, offset: 17152)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1507, file: !614, line: 1191, baseType: !3077, size: 64, offset: 17216)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !614, line: 44, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1507, file: !614, line: 1194, baseType: !3080, size: 64, offset: 17280)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !614, line: 45, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1507, file: !614, line: 1197, baseType: !3083, size: 64, offset: 17344)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !614, line: 61, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1507, file: !614, line: 1199, baseType: !3086, size: 64, offset: 17408)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !887, line: 99, size: 128, elements: !3088)
!3088 = !{!3089, !3090, !3091}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3087, file: !887, line: 100, baseType: !643, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3087, file: !887, line: 101, baseType: !209, size: 32, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3087, file: !887, line: 103, baseType: !229, size: 16, offset: 96)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1507, file: !614, line: 1202, baseType: !3093, size: 64, offset: 17472)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !614, line: 48, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1507, file: !614, line: 1205, baseType: !309, size: 64, offset: 17536)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1507, file: !614, line: 1206, baseType: !3097, size: 64, offset: 17600)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2000, line: 14, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2000, line: 12, size: 384, elements: !3100)
!3100 = !{!3101}
!3101 = !DIDerivedType(tag: DW_TAG_member, scope: !3099, file: !2000, line: 13, baseType: !3102, size: 384)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3099, file: !2000, line: 13, size: 384, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3102, file: !2000, line: 13, baseType: !96, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3102, file: !2000, line: 13, baseType: !96, size: 32, offset: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3102, file: !2000, line: 13, baseType: !96, size: 32, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3102, file: !2000, line: 13, baseType: !3108, size: 256, offset: 128)
!3108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3109, line: 37, size: 256, elements: !3110)
!3109 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3110 = !{!3111, !3116, !3129, !3135, !3144, !3171, !3176}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3108, file: !3109, line: 42, baseType: !3112, size: 64)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !3109, line: 39, size: 64, elements: !3113)
!3113 = !{!3114, !3115}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3112, file: !3109, line: 40, baseType: !2773, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3112, file: !3109, line: 41, baseType: !351, size: 32, offset: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3108, file: !3109, line: 50, baseType: !3117, size: 192)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !3109, line: 45, size: 192, elements: !3118)
!3118 = !{!3119, !3121, !3122, !3128}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3117, file: !3109, line: 46, baseType: !3120, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !293, line: 95, baseType: !96)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3117, file: !3109, line: 47, baseType: !96, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3117, file: !3109, line: 48, baseType: !3123, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3109, line: 11, baseType: !3124)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3109, line: 8, size: 64, elements: !3125)
!3125 = !{!3126, !3127}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3124, file: !3109, line: 9, baseType: !96, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3124, file: !3109, line: 10, baseType: !153, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3117, file: !3109, line: 49, baseType: !96, size: 32, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3108, file: !3109, line: 57, baseType: !3130, size: 128)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !3109, line: 53, size: 128, elements: !3131)
!3131 = !{!3132, !3133, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3130, file: !3109, line: 54, baseType: !2773, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3130, file: !3109, line: 55, baseType: !351, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3130, file: !3109, line: 56, baseType: !3123, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3108, file: !3109, line: 66, baseType: !3136, size: 256)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !3109, line: 60, size: 256, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3141, !3143}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3136, file: !3109, line: 61, baseType: !2773, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3136, file: !3109, line: 62, baseType: !351, size: 32, offset: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3136, file: !3109, line: 63, baseType: !96, size: 32, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3136, file: !3109, line: 64, baseType: !3142, size: 64, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !293, line: 94, baseType: !294)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3136, file: !3109, line: 65, baseType: !3142, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3108, file: !3109, line: 105, baseType: !3145, size: 256)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !3109, line: 69, size: 256, elements: !3146)
!3146 = !{!3147, !3148}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3145, file: !3109, line: 70, baseType: !153, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3145, file: !3109, line: 79, baseType: !3149, size: 192, offset: 64)
!3149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3145, file: !3109, line: 79, size: 192, elements: !3150)
!3150 = !{!3151, !3152, !3153, !3160, !3165}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3149, file: !3109, line: 81, baseType: !96, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3149, file: !3109, line: 86, baseType: !1883, size: 16)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3149, file: !3109, line: 92, baseType: !3154, size: 192)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !3109, line: 88, size: 192, elements: !3155)
!3155 = !{!3156, !3158, !3159}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3154, file: !3109, line: 89, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 64, elements: !1186)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3154, file: !3109, line: 90, baseType: !153, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3154, file: !3109, line: 91, baseType: !153, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3149, file: !3109, line: 97, baseType: !3161, size: 96)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !3109, line: 94, size: 96, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3161, file: !3109, line: 95, baseType: !3157, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3161, file: !3109, line: 96, baseType: !409, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3149, file: !3109, line: 103, baseType: !3166, size: 128)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !3109, line: 99, size: 128, elements: !3167)
!3167 = !{!3168, !3169, !3170}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3166, file: !3109, line: 100, baseType: !309, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3166, file: !3109, line: 101, baseType: !409, size: 32, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3166, file: !3109, line: 102, baseType: !409, size: 32, offset: 96)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3108, file: !3109, line: 111, baseType: !3172, size: 128)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !3109, line: 108, size: 128, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3172, file: !3109, line: 109, baseType: !295, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3172, file: !3109, line: 110, baseType: !96, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3108, file: !3109, line: 118, baseType: !3177, size: 128)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !3109, line: 114, size: 128, elements: !3178)
!3178 = !{!3179, !3180, !3181}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3177, file: !3109, line: 115, baseType: !153, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3177, file: !3109, line: 116, baseType: !96, size: 32, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3177, file: !3109, line: 117, baseType: !7, size: 32, offset: 96)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1507, file: !614, line: 1208, baseType: !2961, size: 448, offset: 17664)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1507, file: !614, line: 1215, baseType: !412, size: 64, offset: 18112)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1507, file: !614, line: 1217, baseType: !412, size: 64, offset: 18176)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1507, file: !614, line: 1219, baseType: !412, size: 64, offset: 18240)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1507, file: !614, line: 1223, baseType: !3187, size: 64, offset: 18304)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3188, line: 99, baseType: !3189)
!3188 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3188, line: 99, size: 64, elements: !3190)
!3190 = !{!3191}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3189, file: !3188, line: 99, baseType: !1679, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1507, file: !614, line: 1225, baseType: !380, size: 32, offset: 18368)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1507, file: !614, line: 1226, baseType: !96, size: 32, offset: 18400)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1507, file: !614, line: 1227, baseType: !96, size: 32, offset: 18432)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1507, file: !614, line: 1231, baseType: !3196, size: 64, offset: 18496)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !614, line: 1231, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1507, file: !614, line: 1233, baseType: !159, size: 128, offset: 18560)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1507, file: !614, line: 1240, baseType: !3200, size: 64, offset: 18688)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !614, line: 62, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1507, file: !614, line: 1242, baseType: !3203, size: 64, offset: 18752)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !614, line: 1242, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1507, file: !614, line: 1244, baseType: !159, size: 128, offset: 18816)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1507, file: !614, line: 1245, baseType: !3207, size: 64, offset: 18944)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !614, line: 51, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1507, file: !614, line: 1246, baseType: !639, size: 256, offset: 19008)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1507, file: !614, line: 1247, baseType: !7, size: 32, offset: 19264)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1507, file: !614, line: 1250, baseType: !3212, size: 64, offset: 19328)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !614, line: 57, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1507, file: !614, line: 1251, baseType: !639, size: 256, offset: 19392)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1507, file: !614, line: 1252, baseType: !159, size: 128, offset: 19648)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1507, file: !614, line: 1259, baseType: !2305, size: 64, offset: 19776)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1507, file: !614, line: 1260, baseType: !1883, size: 16, offset: 19840)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1507, file: !614, line: 1261, baseType: !1883, size: 16, offset: 19856)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1507, file: !614, line: 1314, baseType: !3220, size: 64, offset: 19904)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3222, line: 62, size: 256, align: 256, elements: !3223)
!3222 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3221, file: !3222, line: 75, baseType: !409, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3221, file: !3222, line: 90, baseType: !409, size: 32, offset: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3221, file: !3222, line: 112, baseType: !413, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3221, file: !3222, line: 132, baseType: !409, size: 32, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3221, file: !3222, line: 140, baseType: !409, size: 32, offset: 160)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3221, file: !3222, line: 149, baseType: !409, size: 32, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3221, file: !3222, line: 154, baseType: !3231, offset: 224)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, elements: !1817)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1507, file: !614, line: 1315, baseType: !408, size: 32, offset: 19968)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1507, file: !614, line: 1316, baseType: !408, size: 32, offset: 20000)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1507, file: !614, line: 1321, baseType: !309, size: 64, offset: 20032)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1507, file: !614, line: 1325, baseType: !96, size: 32, offset: 20096)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1507, file: !614, line: 1326, baseType: !96, size: 32, offset: 20128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1507, file: !614, line: 1327, baseType: !96, size: 32, offset: 20160)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1507, file: !614, line: 1328, baseType: !96, size: 32, offset: 20192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1507, file: !614, line: 1329, baseType: !1491, size: 128, align: 64, offset: 20224)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1507, file: !614, line: 1332, baseType: !3241, size: 128, offset: 20352)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3242, line: 51, size: 128, elements: !3243)
!3242 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3243 = !{!3244, !3249, !3250}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3241, file: !3242, line: 60, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3246, line: 7, size: 64, elements: !3247)
!3246 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3247 = !{!3248}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3245, file: !3246, line: 12, baseType: !1676, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3241, file: !3242, line: 63, baseType: !893, size: 8, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3241, file: !3242, line: 70, baseType: !893, size: 8, offset: 72)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1507, file: !614, line: 1335, baseType: !2514, size: 64, offset: 20480)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1507, file: !614, line: 1337, baseType: !3253, size: 128, offset: 20544)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3242, line: 39, size: 128, elements: !3254)
!3254 = !{!3255, !3256, !3257}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3253, file: !3242, line: 40, baseType: !2198, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3253, file: !3242, line: 42, baseType: !409, size: 32, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3253, file: !3242, line: 43, baseType: !409, size: 32, offset: 96)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1507, file: !614, line: 1340, baseType: !3259, size: 64, offset: 20672)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !614, line: 69, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1507, file: !614, line: 1351, baseType: !96, size: 32, offset: 20736)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1507, file: !614, line: 1352, baseType: !96, size: 32, offset: 20768)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1507, file: !614, line: 1354, baseType: !309, size: 64, offset: 20800)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1507, file: !614, line: 1364, baseType: !412, size: 64, offset: 20864)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1507, file: !614, line: 1365, baseType: !412, size: 64, offset: 20928)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1507, file: !614, line: 1412, baseType: !309, size: 64, offset: 20992)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1507, file: !614, line: 1453, baseType: !882, size: 64, offset: 21056)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1507, file: !614, line: 1457, baseType: !3269, size: 64, offset: 21120)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !135, line: 61, size: 576, elements: !3271)
!3271 = !{!3272, !3273, !3292, !3295, !3296, !3329, !3339}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3270, file: !135, line: 62, baseType: !134, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3270, file: !135, line: 64, baseType: !3274, size: 192, offset: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3270, file: !135, line: 64, size: 192, elements: !3275)
!3275 = !{!3276, !3287}
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3274, file: !135, line: 65, baseType: !3277, size: 192)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !135, line: 65, size: 192, elements: !3278)
!3278 = !{!3279, !3286}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3277, file: !135, line: 66, baseType: !3280, size: 128)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3281, line: 50, size: 128, elements: !3282)
!3281 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3282 = !{!3283, !3284, !3285}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3280, file: !3281, line: 52, baseType: !309, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3280, file: !3281, line: 54, baseType: !7, size: 32, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3280, file: !3281, line: 55, baseType: !7, size: 32, offset: 96)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3277, file: !135, line: 67, baseType: !309, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, scope: !3274, file: !135, line: 70, baseType: !3288, size: 192)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !135, line: 70, size: 192, elements: !3289)
!3289 = !{!3290, !3291}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3288, file: !135, line: 71, baseType: !1491, size: 128, align: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3288, file: !135, line: 72, baseType: !309, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3270, file: !135, line: 76, baseType: !3293, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !135, line: 76, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3270, file: !135, line: 77, baseType: !309, size: 64, offset: 320)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3270, file: !135, line: 79, baseType: !3297, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3281, line: 25, size: 256, elements: !3299)
!3299 = !{!3300, !3306, !3310}
!3300 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !3281, line: 26, baseType: !3301, size: 128)
!3301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3298, file: !3281, line: 26, size: 128, elements: !3302)
!3302 = !{!3303, !3305}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3301, file: !3281, line: 27, baseType: !3304, size: 128)
!3304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !2832)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3301, file: !3281, line: 28, baseType: !3304, size: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3298, file: !3281, line: 31, baseType: !3307, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3309)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3281, line: 23, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !3281, line: 33, baseType: !3311, size: 64, offset: 192)
!3311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3298, file: !3281, line: 33, size: 64, elements: !3312)
!3312 = !{!3313, !3319, !3324}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3311, file: !3281, line: 38, baseType: !3314, size: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3281, line: 34, size: 64, elements: !3315)
!3315 = !{!3316, !3317, !3318}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3314, file: !3281, line: 35, baseType: !1273, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3314, file: !3281, line: 36, baseType: !217, size: 8, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3314, file: !3281, line: 37, baseType: !217, size: 8, offset: 40)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3311, file: !3281, line: 42, baseType: !3320, size: 16)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3281, line: 39, size: 16, elements: !3321)
!3321 = !{!3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3320, file: !3281, line: 40, baseType: !217, size: 8)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3320, file: !3281, line: 41, baseType: !217, size: 8, offset: 8)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3311, file: !3281, line: 46, baseType: !3325, size: 16)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3281, line: 43, size: 16, elements: !3326)
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3325, file: !3281, line: 44, baseType: !217, size: 8)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3325, file: !3281, line: 45, baseType: !217, size: 8, offset: 8)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3270, file: !135, line: 81, baseType: !3330, size: 64, offset: 448)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !135, line: 85, size: 384, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3331, file: !135, line: 86, baseType: !3293, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3331, file: !135, line: 87, baseType: !309, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3331, file: !135, line: 88, baseType: !309, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3331, file: !135, line: 89, baseType: !309, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3331, file: !135, line: 90, baseType: !893, size: 8, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3331, file: !135, line: 92, baseType: !3330, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3270, file: !135, line: 82, baseType: !7, size: 32, offset: 512)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1507, file: !614, line: 1463, baseType: !3341, offset: 21184)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !614, line: 739, elements: !543)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1507, file: !614, line: 1470, baseType: !1491, size: 128, align: 64, offset: 21184)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1507, file: !614, line: 1471, baseType: !1520, size: 32, offset: 21312)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1507, file: !614, line: 1472, baseType: !96, size: 32, offset: 21344)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1507, file: !614, line: 1474, baseType: !1506, size: 64, offset: 21376)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1507, file: !614, line: 1475, baseType: !1105, size: 320, offset: 21440)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1507, file: !614, line: 1478, baseType: !3348, size: 64, offset: 21760)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !614, line: 1478, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1507, file: !614, line: 1482, baseType: !1520, size: 32, offset: 21824)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1507, file: !614, line: 1489, baseType: !153, size: 64, offset: 21888)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1507, file: !614, line: 1504, baseType: !153, size: 64, offset: 21952)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1507, file: !614, line: 1505, baseType: !413, size: 64, offset: 22016)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1507, file: !614, line: 1506, baseType: !412, size: 64, offset: 22080)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1507, file: !614, line: 1507, baseType: !413, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1507, file: !614, line: 1508, baseType: !413, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1507, file: !614, line: 1509, baseType: !413, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1507, file: !614, line: 1510, baseType: !1491, size: 128, align: 64, offset: 22208)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1507, file: !614, line: 1511, baseType: !96, size: 32, offset: 22336)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1507, file: !614, line: 1515, baseType: !3361, size: 64, offset: 22400)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1534, line: 56, size: 64, elements: !3362)
!3362 = !{!3363}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3361, file: !1534, line: 57, baseType: !1537, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1507, file: !614, line: 1518, baseType: !3361, size: 64, offset: 22464)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1507, file: !614, line: 1528, baseType: !1491, size: 128, align: 64, offset: 22528)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1507, file: !614, line: 1552, baseType: !3367, size: 35328, offset: 23040)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3368, line: 430, size: 35328, elements: !3369)
!3368 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3369 = !{!3370, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3399, !3400, !3401, !3402, !3403, !3404, !3407, !3408, !3409, !3410}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3367, file: !3368, line: 432, baseType: !3371, size: 192)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3372, size: 192, elements: !260)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3373, line: 16, size: 64, elements: !3374)
!3373 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3372, file: !3373, line: 17, baseType: !227, size: 16)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3372, file: !3373, line: 18, baseType: !227, size: 16, offset: 16)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3372, file: !3373, line: 19, baseType: !227, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3372, file: !3373, line: 19, baseType: !227, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3372, file: !3373, line: 19, baseType: !227, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3372, file: !3373, line: 19, baseType: !227, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3372, file: !3373, line: 19, baseType: !227, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3372, file: !3373, line: 20, baseType: !227, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3372, file: !3373, line: 20, baseType: !227, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3372, file: !3373, line: 20, baseType: !227, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3372, file: !3373, line: 20, baseType: !227, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3372, file: !3373, line: 20, baseType: !227, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3372, file: !3373, line: 20, baseType: !227, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3367, file: !3368, line: 436, baseType: !309, size: 64, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3367, file: !3368, line: 440, baseType: !229, size: 16, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3367, file: !3368, line: 441, baseType: !229, size: 16, offset: 272)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3367, file: !3368, line: 442, baseType: !229, size: 16, offset: 288)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3367, file: !3368, line: 443, baseType: !229, size: 16, offset: 304)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3367, file: !3368, line: 447, baseType: !309, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3367, file: !3368, line: 448, baseType: !309, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3367, file: !3368, line: 459, baseType: !3396, size: 256, offset: 448)
!3396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3397, size: 256, elements: !1804)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3368, line: 428, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3367, file: !3368, line: 461, baseType: !309, size: 64, offset: 704)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3367, file: !3368, line: 463, baseType: !309, size: 64, offset: 768)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3367, file: !3368, line: 465, baseType: !309, size: 64, offset: 832)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3367, file: !3368, line: 466, baseType: !309, size: 64, offset: 896)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3367, file: !3368, line: 467, baseType: !309, size: 64, offset: 960)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3367, file: !3368, line: 473, baseType: !3405, size: 64, offset: 1024)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3368, line: 10, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3367, file: !3368, line: 480, baseType: !309, size: 64, offset: 1088)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3367, file: !3368, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3367, file: !3368, line: 491, baseType: !408, size: 32, offset: 1184)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3367, file: !3368, line: 501, baseType: !3411, size: 33792, offset: 1536)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3412, line: 448, size: 33792, elements: !3413)
!3412 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3413 = !{!3414, !3415, !3416, !3578, !3579, !3585, !3586}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3411, file: !3412, line: 461, baseType: !7, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3411, file: !3412, line: 468, baseType: !309, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3411, file: !3412, line: 476, baseType: !3417, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3412, line: 356, size: 33280, align: 512, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3418, file: !3412, line: 358, baseType: !7, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3418, file: !3412, line: 361, baseType: !7, size: 32, offset: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3418, file: !3412, line: 364, baseType: !412, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3418, file: !3412, line: 367, baseType: !412, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3418, file: !3412, line: 370, baseType: !412, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3418, file: !3412, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3418, file: !3412, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3418, file: !3412, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3418, file: !3412, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3418, file: !3412, line: 397, baseType: !3430, size: 32768, offset: 512)
!3430 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3412, line: 348, size: 32768, elements: !3431)
!3431 = !{!3432, !3447, !3484, !3561, !3574}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3430, file: !3412, line: 349, baseType: !3433, size: 896)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3412, line: 12, size: 896, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3446}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3433, file: !3412, line: 13, baseType: !408, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3433, file: !3412, line: 14, baseType: !408, size: 32, offset: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3433, file: !3412, line: 15, baseType: !408, size: 32, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3433, file: !3412, line: 16, baseType: !408, size: 32, offset: 96)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3433, file: !3412, line: 17, baseType: !408, size: 32, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3433, file: !3412, line: 18, baseType: !408, size: 32, offset: 160)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3433, file: !3412, line: 19, baseType: !408, size: 32, offset: 192)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3433, file: !3412, line: 22, baseType: !3443, size: 640, offset: 224)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 640, elements: !3444)
!3444 = !{!3445}
!3445 = !DISubrange(count: 20)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3433, file: !3412, line: 25, baseType: !408, size: 32, offset: 864)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3430, file: !3412, line: 350, baseType: !3448, size: 4096, align: 128)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3412, line: 34, size: 4096, align: 128, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3469, !3470, !3471, !3473, !3475, !3479}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3448, file: !3412, line: 35, baseType: !227, size: 16)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3448, file: !3412, line: 36, baseType: !227, size: 16, offset: 16)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3448, file: !3412, line: 37, baseType: !227, size: 16, offset: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3448, file: !3412, line: 38, baseType: !227, size: 16, offset: 48)
!3454 = !DIDerivedType(tag: DW_TAG_member, scope: !3448, file: !3412, line: 39, baseType: !3455, size: 128, offset: 64)
!3455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3448, file: !3412, line: 39, size: 128, elements: !3456)
!3456 = !{!3457, !3462}
!3457 = !DIDerivedType(tag: DW_TAG_member, scope: !3455, file: !3412, line: 40, baseType: !3458, size: 128)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3455, file: !3412, line: 40, size: 128, elements: !3459)
!3459 = !{!3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3458, file: !3412, line: 41, baseType: !412, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3458, file: !3412, line: 42, baseType: !412, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !3455, file: !3412, line: 44, baseType: !3463, size: 128)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3455, file: !3412, line: 44, size: 128, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3463, file: !3412, line: 45, baseType: !408, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3463, file: !3412, line: 46, baseType: !408, size: 32, offset: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3463, file: !3412, line: 47, baseType: !408, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3463, file: !3412, line: 48, baseType: !408, size: 32, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3448, file: !3412, line: 51, baseType: !408, size: 32, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3448, file: !3412, line: 52, baseType: !408, size: 32, offset: 224)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3448, file: !3412, line: 55, baseType: !3472, size: 1024, offset: 256)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 1024, elements: !421)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3448, file: !3412, line: 58, baseType: !3474, size: 2048, offset: 1280)
!3474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 2048, elements: !264)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3448, file: !3412, line: 60, baseType: !3476, size: 384, offset: 3328)
!3476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 384, elements: !3477)
!3477 = !{!3478}
!3478 = !DISubrange(count: 12)
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3448, file: !3412, line: 62, baseType: !3480, size: 384, offset: 3712)
!3480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3448, file: !3412, line: 62, size: 384, elements: !3481)
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3480, file: !3412, line: 63, baseType: !3476, size: 384)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3480, file: !3412, line: 64, baseType: !3476, size: 384)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3430, file: !3412, line: 351, baseType: !3485, size: 1088)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3412, line: 79, size: 1088, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3560}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3485, file: !3412, line: 80, baseType: !408, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3485, file: !3412, line: 81, baseType: !408, size: 32, offset: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3485, file: !3412, line: 82, baseType: !408, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3485, file: !3412, line: 83, baseType: !408, size: 32, offset: 96)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3485, file: !3412, line: 84, baseType: !408, size: 32, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3485, file: !3412, line: 85, baseType: !408, size: 32, offset: 160)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3485, file: !3412, line: 86, baseType: !408, size: 32, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3485, file: !3412, line: 88, baseType: !3443, size: 640, offset: 224)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3485, file: !3412, line: 89, baseType: !217, size: 8, offset: 864)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3485, file: !3412, line: 90, baseType: !217, size: 8, offset: 872)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3485, file: !3412, line: 91, baseType: !217, size: 8, offset: 880)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3485, file: !3412, line: 92, baseType: !217, size: 8, offset: 888)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3485, file: !3412, line: 93, baseType: !217, size: 8, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3485, file: !3412, line: 94, baseType: !217, size: 8, offset: 904)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3485, file: !3412, line: 95, baseType: !3502, size: 64, offset: 960)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3504, line: 11, size: 128, elements: !3505)
!3504 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3503, file: !3504, line: 12, baseType: !295, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3503, file: !3504, line: 13, baseType: !3508, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3510, line: 103, size: 1344, elements: !3511)
!3510 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3540, !3541, !3542}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3509, file: !3510, line: 109, baseType: !309, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3509, file: !3510, line: 110, baseType: !309, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3509, file: !3510, line: 111, baseType: !309, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3509, file: !3510, line: 112, baseType: !309, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3509, file: !3510, line: 113, baseType: !309, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3509, file: !3510, line: 114, baseType: !309, size: 64, offset: 320)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3509, file: !3510, line: 117, baseType: !309, size: 64, offset: 384)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3509, file: !3510, line: 118, baseType: !309, size: 64, offset: 448)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3509, file: !3510, line: 119, baseType: !309, size: 64, offset: 512)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3509, file: !3510, line: 120, baseType: !309, size: 64, offset: 576)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3509, file: !3510, line: 121, baseType: !309, size: 64, offset: 640)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3509, file: !3510, line: 122, baseType: !309, size: 64, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3509, file: !3510, line: 123, baseType: !309, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3509, file: !3510, line: 124, baseType: !309, size: 64, offset: 832)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3509, file: !3510, line: 125, baseType: !309, size: 64, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3509, file: !3510, line: 139, baseType: !309, size: 64, offset: 960)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3509, file: !3510, line: 142, baseType: !309, size: 64, offset: 1024)
!3529 = !DIDerivedType(tag: DW_TAG_member, scope: !3509, file: !3510, line: 144, baseType: !3530, size: 64, offset: 1088)
!3530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3509, file: !3510, line: 144, size: 64, elements: !3531)
!3531 = !{!3532, !3533, !3534}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3530, file: !3510, line: 146, baseType: !227, size: 16)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3530, file: !3510, line: 148, baseType: !412, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3530, file: !3510, line: 150, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3510, line: 59, size: 64, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3535, file: !3510, line: 61, baseType: !412, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3535, file: !3510, line: 63, baseType: !412, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3535, file: !3510, line: 65, baseType: !412, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3509, file: !3510, line: 153, baseType: !309, size: 64, offset: 1152)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3509, file: !3510, line: 154, baseType: !309, size: 64, offset: 1216)
!3542 = !DIDerivedType(tag: DW_TAG_member, scope: !3509, file: !3510, line: 156, baseType: !3543, size: 64, offset: 1280)
!3543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3509, file: !3510, line: 156, size: 64, elements: !3544)
!3544 = !{!3545, !3546, !3547}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3543, file: !3510, line: 158, baseType: !227, size: 16)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3543, file: !3510, line: 160, baseType: !412, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3543, file: !3510, line: 162, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3510, line: 69, size: 64, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3548, file: !3510, line: 71, baseType: !412, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3548, file: !3510, line: 73, baseType: !412, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3548, file: !3510, line: 75, baseType: !412, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3548, file: !3510, line: 77, baseType: !412, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3548, file: !3510, line: 80, baseType: !412, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3548, file: !3510, line: 83, baseType: !412, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3548, file: !3510, line: 86, baseType: !412, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3548, file: !3510, line: 88, baseType: !412, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3548, file: !3510, line: 93, baseType: !412, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3548, file: !3510, line: 100, baseType: !412, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3485, file: !3412, line: 96, baseType: !408, size: 32, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3430, file: !3412, line: 352, baseType: !3562, size: 4608, align: 512)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3412, line: 333, size: 4608, align: 512, elements: !3563)
!3563 = !{!3564, !3565, !3572}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3562, file: !3412, line: 334, baseType: !3448, size: 4096, align: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3562, file: !3412, line: 335, baseType: !3566, size: 512, offset: 4096)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3412, line: 312, size: 512, elements: !3567)
!3567 = !{!3568, !3569, !3570}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3566, file: !3412, line: 313, baseType: !412, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3566, file: !3412, line: 314, baseType: !412, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3566, file: !3412, line: 315, baseType: !3571, size: 384, offset: 128)
!3571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !1901)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3562, file: !3412, line: 336, baseType: !3573, offset: 4608)
!3573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !1817)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3430, file: !3412, line: 353, baseType: !3575, size: 32768)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 32768, elements: !3576)
!3576 = !{!3577}
!3577 = !DISubrange(count: 4096)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3411, file: !3412, line: 484, baseType: !3417, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3411, file: !3412, line: 491, baseType: !3580, size: 128, offset: 256)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3412, line: 404, size: 128, elements: !3581)
!3581 = !{!3582, !3583, !3584}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3580, file: !3412, line: 424, baseType: !412, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3580, file: !3412, line: 432, baseType: !7, size: 32, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3580, file: !3412, line: 440, baseType: !7, size: 32, offset: 96)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3411, file: !3412, line: 498, baseType: !3580, size: 128, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3411, file: !3412, line: 508, baseType: !3418, size: 33280, align: 512, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1480, file: !1481, line: 16, baseType: !1232, size: 192, offset: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1480, file: !1481, line: 17, baseType: !209, size: 32, offset: 704)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !491, file: !15, line: 1240, baseType: !153, size: 64, offset: 6912)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !491, file: !15, line: 1243, baseType: !408, size: 32, offset: 6976)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !491, file: !15, line: 1245, baseType: !692, size: 64, offset: 7040)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !491, file: !15, line: 1246, baseType: !692, size: 64, offset: 7104)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !491, file: !15, line: 1248, baseType: !409, size: 32, offset: 7168)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !491, file: !15, line: 1249, baseType: !3595, size: 64, offset: 7232)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !491, file: !15, line: 1252, baseType: !3598, size: 256, offset: 7296)
!3598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !421)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !491, file: !15, line: 1253, baseType: !3600, size: 128, offset: 7552)
!3600 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3601, line: 21, baseType: !3602)
!3601 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3601, line: 19, size: 128, elements: !3603)
!3603 = !{!3604}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3602, file: !3601, line: 20, baseType: !3605, size: 128)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !2832)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !491, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !491, file: !15, line: 1261, baseType: !639, size: 256, offset: 7744)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !491, file: !15, line: 1267, baseType: !178, size: 64, offset: 8000)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !491, file: !15, line: 1269, baseType: !437, size: 64, offset: 8064)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !491, file: !15, line: 1271, baseType: !3611, size: 448, offset: 8128)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !701, line: 63, size: 448, elements: !3612)
!3612 = !{!3613, !3618, !3619, !3620, !3621, !3622, !3623}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3611, file: !701, line: 64, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!309, !3617, !699}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3611, file: !701, line: 66, baseType: !3614, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3611, file: !701, line: 69, baseType: !295, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3611, file: !701, line: 70, baseType: !96, size: 32, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3611, file: !701, line: 71, baseType: !7, size: 32, offset: 224)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3611, file: !701, line: 74, baseType: !159, size: 128, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3611, file: !701, line: 85, baseType: !3624, size: 64, offset: 384)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !491, file: !15, line: 1274, baseType: !643, size: 64, offset: 8576)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !491, file: !15, line: 1280, baseType: !643, size: 64, offset: 8640)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !491, file: !15, line: 1283, baseType: !96, size: 32, offset: 8704)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !491, file: !15, line: 1286, baseType: !2564, size: 32, offset: 8736)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !491, file: !15, line: 1289, baseType: !3630, size: 64, offset: 8768)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1221, line: 18, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !491, file: !15, line: 1290, baseType: !531, size: 64, offset: 8832)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !491, file: !15, line: 1297, baseType: !1995, size: 64, offset: 8896)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !491, file: !15, line: 1304, baseType: !3635, size: 64, offset: 8960)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3636, line: 49, size: 64, elements: !3637)
!3636 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3637 = !{!3638}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3635, file: !3636, line: 50, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3636, line: 41, size: 512, align: 512, elements: !3641)
!3641 = !{!3642, !3643, !3648}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3640, file: !3636, line: 43, baseType: !189, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3640, file: !3636, line: 45, baseType: !3644, size: 192, offset: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3636, line: 29, size: 192, elements: !3645)
!3645 = !{!3646, !3647}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3644, file: !3636, line: 30, baseType: !159, size: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3644, file: !3636, line: 32, baseType: !295, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3640, file: !3636, line: 46, baseType: !295, size: 64, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !491, file: !15, line: 1305, baseType: !3635, size: 64, offset: 9024)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !491, file: !15, line: 1306, baseType: !1491, size: 128, align: 64, offset: 9088)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !491, file: !15, line: 1307, baseType: !1220, size: 256, offset: 9216)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !491, file: !15, line: 1309, baseType: !639, size: 256, offset: 9472)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !491, file: !15, line: 1314, baseType: !96, size: 32, offset: 9728)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !491, file: !15, line: 1317, baseType: !189, size: 32, align: 512, offset: 10240)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !491, file: !15, line: 1318, baseType: !159, size: 128, offset: 10304)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !491, file: !15, line: 1320, baseType: !189, size: 32, offset: 10432)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !491, file: !15, line: 1321, baseType: !159, size: 128, offset: 10496)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !485, file: !486, line: 73, baseType: !96, size: 32, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !485, file: !486, line: 74, baseType: !3660, size: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1841, line: 42, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !439, file: !376, line: 141, baseType: !3664, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!96, !762, !893}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !439, file: !376, line: 142, baseType: !3668, size: 64, offset: 768)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!374, !374, !3671}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !375, file: !376, line: 96, baseType: !490, size: 64, offset: 832)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !375, file: !376, line: 97, baseType: !309, size: 64, offset: 896)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !375, file: !376, line: 98, baseType: !153, size: 64, offset: 960)
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 100, baseType: !3677, size: 128, offset: 1024)
!3677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 100, size: 128, elements: !3678)
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3677, file: !376, line: 101, baseType: !159, size: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3677, file: !376, line: 102, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !375, file: !376, line: 104, baseType: !159, size: 128, offset: 1152)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !375, file: !376, line: 105, baseType: !159, size: 128, offset: 1280)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !375, file: !376, line: 113, baseType: !3685, size: 128, offset: 1408)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 109, size: 128, elements: !3686)
!3686 = !{!3687, !3688, !3689}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3685, file: !376, line: 110, baseType: !535, size: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3685, file: !376, line: 111, baseType: !390, size: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3685, file: !376, line: 112, baseType: !1491, size: 128, align: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !368, file: !15, line: 1968, baseType: !3691, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!178, !374, !339, !3694}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3696, line: 10, size: 128, elements: !3697)
!3696 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3697 = !{!3698, !3699}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3695, file: !3696, line: 11, baseType: !1386, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3695, file: !3696, line: 12, baseType: !153, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !368, file: !15, line: 1969, baseType: !3701, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!96, !3660, !339, !96}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !368, file: !15, line: 1970, baseType: !3705, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!362, !339, !96, !893}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !368, file: !15, line: 1972, baseType: !3709, size: 64, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!96, !374, !259, !96}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !368, file: !15, line: 1974, baseType: !3713, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!96, !3660, !339, !374, !301, !893}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !368, file: !15, line: 1976, baseType: !3717, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!96, !374, !339, !374}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !368, file: !15, line: 1977, baseType: !3721, size: 64, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!96, !339, !374}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !368, file: !15, line: 1978, baseType: !3725, size: 64, offset: 512)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!96, !3660, !339, !374, !178}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !368, file: !15, line: 1980, baseType: !3729, size: 64, offset: 576)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!96, !3660, !339, !374, !301}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !368, file: !15, line: 1982, baseType: !3721, size: 64, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !368, file: !15, line: 1983, baseType: !3734, size: 64, offset: 704)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!96, !3660, !339, !374, !301, !495}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !368, file: !15, line: 1985, baseType: !3738, size: 64, offset: 768)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!96, !3660, !339, !374, !339, !374, !7}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !368, file: !15, line: 1987, baseType: !3742, size: 64, offset: 832)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!96, !3660, !374, !3745}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3760, !3769, !3770, !3775, !3776, !3777}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3746, file: !15, line: 227, baseType: !7, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3746, file: !15, line: 228, baseType: !301, size: 16, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, scope: !3746, file: !15, line: 241, baseType: !3751, size: 32, offset: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3746, file: !15, line: 241, size: 32, elements: !3752)
!3752 = !{!3753, !3754}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3751, file: !15, line: 242, baseType: !345, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3751, file: !15, line: 243, baseType: !3755, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3756, line: 16, baseType: !3757)
!3756 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3756, line: 14, size: 32, elements: !3758)
!3758 = !{!3759}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3757, file: !3756, line: 15, baseType: !350, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, scope: !3746, file: !15, line: 245, baseType: !3761, size: 32, offset: 96)
!3761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3746, file: !15, line: 245, size: 32, elements: !3762)
!3762 = !{!3763, !3764}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3761, file: !15, line: 246, baseType: !354, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3761, file: !15, line: 247, baseType: !3765, size: 32)
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3756, line: 20, baseType: !3766)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3756, line: 18, size: 32, elements: !3767)
!3767 = !{!3768}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3766, file: !3756, line: 19, baseType: !358, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3746, file: !15, line: 249, baseType: !500, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3746, file: !15, line: 250, baseType: !3771, size: 128, offset: 192)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !693, line: 13, size: 128, elements: !3772)
!3772 = !{!3773, !3774}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3771, file: !693, line: 14, baseType: !692, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3771, file: !693, line: 15, baseType: !295, size: 64, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3746, file: !15, line: 251, baseType: !3771, size: 128, offset: 320)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3746, file: !15, line: 252, baseType: !3771, size: 128, offset: 448)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3746, file: !15, line: 259, baseType: !1755, size: 64, offset: 576)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !368, file: !15, line: 1988, baseType: !3779, size: 64, offset: 896)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!96, !3660, !762, !3782, !408, !7}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3784, line: 22, size: 1280, elements: !3785)
!3784 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3783, file: !3784, line: 23, baseType: !408, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3783, file: !3784, line: 24, baseType: !301, size: 16, offset: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3783, file: !3784, line: 25, baseType: !7, size: 32, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3783, file: !3784, line: 26, baseType: !1879, size: 32, offset: 96)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3783, file: !3784, line: 27, baseType: !412, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3783, file: !3784, line: 28, baseType: !412, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3783, file: !3784, line: 41, baseType: !412, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3783, file: !3784, line: 42, baseType: !495, size: 32, offset: 320)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3783, file: !3784, line: 43, baseType: !495, size: 32, offset: 352)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3783, file: !3784, line: 44, baseType: !345, size: 32, offset: 384)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3783, file: !3784, line: 45, baseType: !354, size: 32, offset: 416)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3783, file: !3784, line: 46, baseType: !500, size: 64, offset: 448)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3783, file: !3784, line: 47, baseType: !3771, size: 128, offset: 512)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3783, file: !3784, line: 48, baseType: !3771, size: 128, offset: 640)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3783, file: !3784, line: 49, baseType: !3771, size: 128, offset: 768)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3783, file: !3784, line: 50, baseType: !3771, size: 128, offset: 896)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3783, file: !3784, line: 51, baseType: !412, size: 64, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3783, file: !3784, line: 52, baseType: !412, size: 64, offset: 1088)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3783, file: !3784, line: 53, baseType: !408, size: 32, offset: 1152)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3783, file: !3784, line: 54, baseType: !408, size: 32, offset: 1184)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3783, file: !3784, line: 55, baseType: !412, size: 64, offset: 1216)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !368, file: !15, line: 1990, baseType: !3808, size: 64, offset: 960)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!291, !374, !259, !306}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !368, file: !15, line: 1991, baseType: !3812, size: 64, offset: 1024)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!96, !339, !3815, !412, !412}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !368, file: !15, line: 1993, baseType: !3818, size: 64, offset: 1088)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!96, !339, !96}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !368, file: !15, line: 1994, baseType: !3822, size: 64, offset: 1152)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!96, !339, !374, !1755, !7, !301}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !368, file: !15, line: 1997, baseType: !3826, size: 64, offset: 1216)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!96, !3660, !339, !1755, !301}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !368, file: !15, line: 1999, baseType: !3830, size: 64, offset: 1280)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!362, !3660, !374, !96}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !368, file: !15, line: 2001, baseType: !3834, size: 64, offset: 1344)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!96, !3660, !374, !362, !96}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !368, file: !15, line: 2003, baseType: !3838, size: 64, offset: 1408)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!96, !3660, !374, !3841}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !368, file: !15, line: 2005, baseType: !3844, size: 64, offset: 1472)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!96, !374, !3841}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !368, file: !15, line: 2006, baseType: !3848, size: 64, offset: 1536)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!3851, !339}
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !3853)
!3853 = !{!3854, !3861}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3852, file: !15, line: 3193, baseType: !3855, size: 128)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3856, line: 296, size: 128, elements: !3857)
!3856 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3857 = !{!3858, !3859, !3860}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3855, file: !3856, line: 297, baseType: !189, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3855, file: !3856, line: 299, baseType: !704, size: 32, offset: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3855, file: !3856, line: 300, baseType: !153, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3852, file: !15, line: 3194, baseType: !408, size: 32, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !340, file: !15, line: 655, baseType: !490, size: 64, offset: 448)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !340, file: !15, line: 656, baseType: !335, size: 64, offset: 512)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !340, file: !15, line: 659, baseType: !153, size: 64, offset: 576)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !340, file: !15, line: 663, baseType: !309, size: 64, offset: 640)
!3866 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !15, line: 671, baseType: !3867, size: 32, offset: 704)
!3867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !15, line: 671, size: 32, elements: !3868)
!3868 = !{!3869, !3871}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3867, file: !15, line: 672, baseType: !3870, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3867, file: !15, line: 673, baseType: !7, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !340, file: !15, line: 675, baseType: !495, size: 32, offset: 736)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !340, file: !15, line: 676, baseType: !500, size: 64, offset: 768)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !340, file: !15, line: 677, baseType: !3771, size: 128, offset: 832)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !340, file: !15, line: 678, baseType: !3771, size: 128, offset: 960)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !340, file: !15, line: 679, baseType: !3771, size: 128, offset: 1088)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !340, file: !15, line: 680, baseType: !189, size: 32, offset: 1216)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !340, file: !15, line: 681, baseType: !229, size: 16, offset: 1248)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !340, file: !15, line: 682, baseType: !217, size: 8, offset: 1264)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !340, file: !15, line: 683, baseType: !217, size: 8, offset: 1272)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !340, file: !15, line: 684, baseType: !840, size: 64, offset: 1280)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !340, file: !15, line: 691, baseType: !309, size: 64, offset: 1344)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !340, file: !15, line: 692, baseType: !852, size: 320, offset: 1408)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !340, file: !15, line: 694, baseType: !309, size: 64, offset: 1728)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !340, file: !15, line: 695, baseType: !309, size: 64, offset: 1792)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !340, file: !15, line: 697, baseType: !535, size: 128, offset: 1856)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !340, file: !15, line: 698, baseType: !159, size: 128, offset: 1984)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !340, file: !15, line: 707, baseType: !159, size: 128, offset: 2112)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !340, file: !15, line: 708, baseType: !159, size: 128, offset: 2240)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !15, line: 709, baseType: !3891, size: 128, offset: 2368)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !15, line: 709, size: 128, elements: !3892)
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3891, file: !15, line: 710, baseType: !531, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3891, file: !15, line: 711, baseType: !1491, size: 128, align: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !340, file: !15, line: 713, baseType: !645, size: 64, offset: 2496)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !340, file: !15, line: 714, baseType: !645, size: 64, offset: 2560)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !340, file: !15, line: 715, baseType: !209, size: 32, offset: 2624)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !340, file: !15, line: 716, baseType: !209, size: 32, offset: 2656)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !340, file: !15, line: 717, baseType: !209, size: 32, offset: 2688)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !340, file: !15, line: 719, baseType: !209, size: 32, offset: 2720)
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !15, line: 721, baseType: !3902, size: 64, offset: 2752)
!3902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !15, line: 721, size: 64, elements: !3903)
!3903 = !{!3904, !3905}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3902, file: !15, line: 722, baseType: !2026, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3902, file: !15, line: 723, baseType: !562, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !340, file: !15, line: 725, baseType: !3907, size: 64, offset: 2816)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !340, file: !15, line: 726, baseType: !336, size: 1536, align: 64, offset: 2880)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !340, file: !15, line: 727, baseType: !159, size: 128, offset: 4416)
!3911 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !15, line: 728, baseType: !3912, size: 64, offset: 4544)
!3912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !15, line: 728, size: 64, elements: !3913)
!3913 = !{!3914, !3915, !3918, !3919}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3912, file: !15, line: 729, baseType: !2514, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3912, file: !15, line: 730, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3912, file: !15, line: 731, baseType: !259, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3912, file: !15, line: 732, baseType: !7, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !340, file: !15, line: 735, baseType: !409, size: 32, offset: 4608)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !340, file: !15, line: 738, baseType: !409, size: 32, offset: 4640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !340, file: !15, line: 739, baseType: !3595, size: 64, offset: 4672)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !340, file: !15, line: 750, baseType: !153, size: 64, offset: 4736)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !336, file: !15, line: 474, baseType: !3855, size: 128, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !336, file: !15, line: 475, baseType: !852, size: 320, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !336, file: !15, line: 476, baseType: !704, size: 32, offset: 512)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !336, file: !15, line: 477, baseType: !209, size: 32, offset: 544)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !336, file: !15, line: 482, baseType: !1202, size: 128, offset: 576)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !336, file: !15, line: 483, baseType: !309, size: 64, offset: 704)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !336, file: !15, line: 484, baseType: !309, size: 64, offset: 768)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !336, file: !15, line: 485, baseType: !3932, size: 64, offset: 832)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3934)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !3935)
!3935 = !{!3936, !3940, !3944, !3948, !3952, !3968, !3973, !3977, !3981, !3985, !3989, !3993, !3994, !3998, !4002, !4006, !4011, !4015, !4022, !4023}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3934, file: !15, line: 405, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!96, !2198, !574}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3934, file: !15, line: 406, baseType: !3941, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!96, !1755, !2069}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3934, file: !15, line: 409, baseType: !3945, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!96, !335, !574}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3934, file: !15, line: 412, baseType: !3949, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!893, !335, !2069}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3934, file: !15, line: 414, baseType: !3953, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !3956}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !2066, line: 1276, size: 448, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3963, !3964, !3965, !3966, !3967}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3957, file: !2066, line: 1277, baseType: !1755, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3957, file: !2066, line: 1278, baseType: !335, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !3957, file: !2066, line: 1279, baseType: !3962, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3957, file: !2066, line: 1281, baseType: !309, size: 64, offset: 192)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3957, file: !2066, line: 1282, baseType: !7, size: 32, offset: 256)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3957, file: !2066, line: 1283, baseType: !7, size: 32, offset: 288)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !3957, file: !2066, line: 1284, baseType: !893, size: 8, offset: 320)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !3957, file: !2066, line: 1285, baseType: !309, size: 64, offset: 384)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3934, file: !15, line: 416, baseType: !3969, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!96, !1755, !335, !500, !7, !3972, !2529}
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3934, file: !15, line: 419, baseType: !3974, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!96, !1755, !335, !500, !7, !7, !2198, !153}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3934, file: !15, line: 424, baseType: !3978, size: 64, offset: 448)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!879, !335, !879}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3934, file: !15, line: 425, baseType: !3982, size: 64, offset: 512)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !2069, !306, !306}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3934, file: !15, line: 426, baseType: !3986, size: 64, offset: 576)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!893, !2069, !704}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3934, file: !15, line: 427, baseType: !3990, size: 64, offset: 640)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !2069}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3934, file: !15, line: 428, baseType: !2045, size: 64, offset: 704)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3934, file: !15, line: 433, baseType: !3995, size: 64, offset: 768)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!96, !335, !2069, !2069, !49}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3934, file: !15, line: 435, baseType: !3999, size: 64, offset: 832)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!96, !2069}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3934, file: !15, line: 436, baseType: !4003, size: 64, offset: 896)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!893, !2069, !306, !306}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3934, file: !15, line: 438, baseType: !4007, size: 64, offset: 960)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !2069, !4010, !4010}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3934, file: !15, line: 439, baseType: !4012, size: 64, offset: 1024)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!96, !335, !2198}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3934, file: !15, line: 442, baseType: !4016, size: 64, offset: 1088)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!96, !4019, !1755, !4021}
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3934, file: !15, line: 444, baseType: !2521, size: 64, offset: 1152)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3934, file: !15, line: 445, baseType: !4024, size: 64, offset: 1216)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!96, !2048, !2440}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !15, line: 486, baseType: !309, size: 64, offset: 896)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !336, file: !15, line: 487, baseType: !852, size: 320, offset: 960)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !336, file: !15, line: 488, baseType: !2564, size: 32, offset: 1280)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !336, file: !15, line: 489, baseType: !189, size: 32, offset: 1312)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !336, file: !15, line: 490, baseType: !159, size: 128, offset: 1344)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !336, file: !15, line: 491, baseType: !153, size: 64, offset: 1472)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !326, file: !285, line: 180, baseType: !4034, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!291, !1755, !182, !325, !259, !500, !306}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !326, file: !285, line: 182, baseType: !4034, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !326, file: !285, line: 184, baseType: !4039, size: 64, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!96, !1755, !182, !325, !2212}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !314, file: !285, line: 90, baseType: !4043, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !314, file: !285, line: 91, baseType: !4045, size: 64, offset: 256)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !275, file: !175, line: 120, baseType: !4047, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!1360, !242}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !275, file: !175, line: 121, baseType: !4051, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!1377, !242}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !275, file: !175, line: 122, baseType: !4055, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{null, !242, !946, !947}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !174, file: !175, line: 70, baseType: !4059, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !515, line: 190, size: 1152, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4153, !4154, !4155, !4156, !4157, !4160}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4060, file: !515, line: 191, baseType: !209, size: 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4060, file: !515, line: 192, baseType: !209, size: 32, offset: 32)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4060, file: !515, line: 202, baseType: !4059, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4060, file: !515, line: 203, baseType: !178, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4060, file: !515, line: 205, baseType: !1145, size: 192, align: 64, offset: 192)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4060, file: !515, line: 207, baseType: !1377, size: 64, offset: 384)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4060, file: !515, line: 208, baseType: !7, size: 32, offset: 448)
!4069 = !DIDerivedType(tag: DW_TAG_member, scope: !4060, file: !515, line: 209, baseType: !4070, size: 256, offset: 512)
!4070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4060, file: !515, line: 209, size: 256, elements: !4071)
!4071 = !{!4072, !4081, !4085}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4070, file: !515, line: 210, baseType: !4073, size: 256)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !515, line: 153, size: 256, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4080}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4073, file: !515, line: 154, baseType: !309, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4073, file: !515, line: 156, baseType: !1205, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4073, file: !515, line: 162, baseType: !4078, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !515, line: 162, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4073, file: !515, line: 167, baseType: !309, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4070, file: !515, line: 211, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !515, line: 170, size: 64, elements: !4083)
!4083 = !{!4084}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4082, file: !515, line: 171, baseType: !4059, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4070, file: !515, line: 212, baseType: !4086, size: 256)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !515, line: 174, size: 256, elements: !4087)
!4087 = !{!4088, !4148, !4151, !4152}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4086, file: !515, line: 175, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4091)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !515, line: 271, size: 768, elements: !4092)
!4092 = !{!4093, !4113, !4117, !4121, !4125, !4129, !4133, !4137, !4138, !4139, !4140, !4144}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4091, file: !515, line: 276, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!96, !4097}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !515, line: 251, size: 1216, elements: !4099)
!4099 = !{!4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4098, file: !515, line: 253, baseType: !4059, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4098, file: !515, line: 254, baseType: !1755, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4098, file: !515, line: 255, baseType: !612, size: 64, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4098, file: !515, line: 256, baseType: !153, size: 64, offset: 192)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4098, file: !515, line: 259, baseType: !639, size: 256, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4098, file: !515, line: 260, baseType: !639, size: 256, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4098, file: !515, line: 261, baseType: !96, size: 32, offset: 768)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4098, file: !515, line: 262, baseType: !159, size: 128, offset: 832)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4098, file: !515, line: 263, baseType: !259, size: 64, offset: 960)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4098, file: !515, line: 265, baseType: !306, size: 64, offset: 1024)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4098, file: !515, line: 266, baseType: !893, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4098, file: !515, line: 267, baseType: !893, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4098, file: !515, line: 268, baseType: !2257, size: 64, offset: 1152)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4091, file: !515, line: 277, baseType: !4114, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !4097}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4091, file: !515, line: 290, baseType: !4118, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!96, !612, !153}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4091, file: !515, line: 292, baseType: !4122, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!153, !612, !2039}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4091, file: !515, line: 293, baseType: !4126, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!153, !612, !153, !2039}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4091, file: !515, line: 294, baseType: !4130, size: 64, offset: 320)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{null, !612, !153}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4091, file: !515, line: 296, baseType: !4134, size: 64, offset: 384)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!291, !4097, !259, !306, !500}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4091, file: !515, line: 306, baseType: !306, size: 64, offset: 448)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4091, file: !515, line: 313, baseType: !893, size: 8, offset: 512)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4091, file: !515, line: 314, baseType: !4134, size: 64, offset: 576)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4091, file: !515, line: 317, baseType: !4141, size: 64, offset: 640)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!2466, !4097, !2468}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4091, file: !515, line: 320, baseType: !4145, size: 64, offset: 704)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!96, !4097, !2212}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4086, file: !515, line: 176, baseType: !4149, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !515, line: 35, flags: DIFlagFwdDecl)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4086, file: !515, line: 177, baseType: !500, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4086, file: !515, line: 178, baseType: !4059, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4060, file: !515, line: 215, baseType: !153, size: 64, offset: 768)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4060, file: !515, line: 221, baseType: !412, size: 64, offset: 832)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4060, file: !515, line: 223, baseType: !229, size: 16, offset: 896)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4060, file: !515, line: 224, baseType: !301, size: 16, offset: 912)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4060, file: !515, line: 225, baseType: !4158, size: 64, offset: 960)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !515, line: 36, flags: DIFlagFwdDecl)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4060, file: !515, line: 227, baseType: !1491, size: 128, align: 64, offset: 1024)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !174, file: !175, line: 71, baseType: !4162, size: 32, offset: 448)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4163, line: 19, size: 32, elements: !4164)
!4163 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4164 = !{!4165}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4162, file: !4163, line: 20, baseType: !1520, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !174, file: !175, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !174, file: !175, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !174, file: !175, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !174, file: !175, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !174, file: !175, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !171, file: !63, line: 47, baseType: !154, size: 64, offset: 512)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !171, file: !63, line: 48, baseType: !182, size: 64, offset: 576)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !171, file: !63, line: 49, baseType: !4174, size: 64, offset: 640)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !63, line: 49, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !171, file: !63, line: 50, baseType: !2789, size: 64, offset: 704)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !155, file: !63, line: 418, baseType: !4178, size: 64, offset: 1408)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !63, line: 53, size: 448, elements: !4180)
!4180 = !{!4181, !4182, !4187, !4191, !4195, !4199}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4179, file: !63, line: 54, baseType: !297, size: 128)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4179, file: !63, line: 55, baseType: !4183, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!291, !4178, !4186, !259}
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4179, file: !63, line: 57, baseType: !4188, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!291, !4178, !4186, !178, !306}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4179, file: !63, line: 59, baseType: !4192, size: 64, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !154, !178}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4179, file: !63, line: 60, baseType: !4196, size: 64, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!96, !154}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4179, file: !63, line: 61, baseType: !4200, size: 64, offset: 384)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{null, !154}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !155, file: !63, line: 419, baseType: !178, size: 64, offset: 1472)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !155, file: !63, line: 420, baseType: !178, size: 64, offset: 1536)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !155, file: !63, line: 421, baseType: !182, size: 64, offset: 1600)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !155, file: !63, line: 424, baseType: !4207, size: 64, offset: 1664)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !63, line: 424, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !155, file: !63, line: 425, baseType: !4211, size: 64, offset: 1728)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !155, file: !63, line: 426, baseType: !7, size: 32, offset: 1792)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !155, file: !63, line: 435, baseType: !639, size: 256, offset: 1856)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !155, file: !63, line: 437, baseType: !4216, size: 64, offset: 2112)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4218, line: 69, size: 320, elements: !4219)
!4218 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4219 = !{!4220, !4221, !4222, !4239, !4241, !4245, !4246}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4217, file: !4218, line: 70, baseType: !178, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4217, file: !4218, line: 71, baseType: !154, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4217, file: !4218, line: 72, baseType: !4223, size: 64, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4225)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4218, line: 47, size: 256, elements: !4226)
!4226 = !{!4227, !4228, !4234, !4238}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4225, file: !4218, line: 49, baseType: !7, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4225, file: !4218, line: 51, baseType: !4229, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!96, !178, !4232}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4217)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4225, file: !4218, line: 53, baseType: !4235, size: 64, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!96, !259, !4232}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4225, file: !4218, line: 55, baseType: !1386, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4217, file: !4218, line: 73, baseType: !4240, size: 16, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4217, file: !4218, line: 74, baseType: !4242, size: 8, offset: 208)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !218, line: 16, baseType: !4243)
!4243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !220, line: 20, baseType: !4244)
!4244 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4217, file: !4218, line: 75, baseType: !217, size: 8, offset: 216)
!4246 = !DIDerivedType(tag: DW_TAG_member, scope: !4217, file: !4218, line: 76, baseType: !4247, size: 64, offset: 256)
!4247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4217, file: !4218, line: 76, size: 64, elements: !4248)
!4248 = !{!4249, !4250, !4257}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4247, file: !4218, line: 77, baseType: !153, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4247, file: !4218, line: 78, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4253)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4218, line: 86, size: 128, elements: !4254)
!4254 = !{!4255, !4256}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4253, file: !4218, line: 87, baseType: !7, size: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4253, file: !4218, line: 88, baseType: !259, size: 64, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4247, file: !4218, line: 79, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4260)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4218, line: 92, size: 256, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4260, file: !4218, line: 94, baseType: !7, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4260, file: !4218, line: 95, baseType: !7, size: 32, offset: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4260, file: !4218, line: 96, baseType: !1500, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4260, file: !4218, line: 97, baseType: !4223, size: 64, offset: 128)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4260, file: !4218, line: 98, baseType: !153, size: 64, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !155, file: !63, line: 438, baseType: !7, size: 32, offset: 2176)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !155, file: !63, line: 441, baseType: !7, size: 32, offset: 2208)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !155, file: !63, line: 442, baseType: !4207, size: 64, offset: 2240)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !155, file: !63, line: 443, baseType: !4211, size: 64, offset: 2304)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !155, file: !63, line: 444, baseType: !893, size: 8, offset: 2368)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !155, file: !63, line: 451, baseType: !893, size: 8, offset: 2376)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !155, file: !63, line: 454, baseType: !7, size: 32, offset: 2400)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !155, file: !63, line: 455, baseType: !4275, size: 64, offset: 2432)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4277, line: 23, size: 96, elements: !4278)
!4277 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4278 = !{!4279, !4280, !4281}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4276, file: !4277, line: 24, baseType: !96, size: 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4276, file: !4277, line: 24, baseType: !96, size: 32, offset: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4276, file: !4277, line: 24, baseType: !96, size: 32, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !155, file: !63, line: 458, baseType: !4283, size: 64, offset: 2496)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!96}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !155, file: !63, line: 460, baseType: !4287, size: 4032, align: 512, offset: 2560)
!4287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4288, size: 4032, elements: !4302)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !63, line: 362, size: 576, elements: !4289)
!4289 = !{!4290, !4291, !4292}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4288, file: !63, line: 363, baseType: !153, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4288, file: !63, line: 364, baseType: !7, size: 32, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4288, file: !63, line: 367, baseType: !4293, size: 448, offset: 128)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !63, line: 319, size: 448, elements: !4294)
!4294 = !{!4295, !4296}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4293, file: !63, line: 320, baseType: !154, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4293, file: !63, line: 321, baseType: !4297, size: 384, offset: 64)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4298, line: 40, size: 384, elements: !4299)
!4298 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4299 = !{!4300}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4297, file: !4298, line: 41, baseType: !4301, size: 384, align: 64)
!4301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1145, size: 384, align: 64, elements: !2914)
!4302 = !{!4303}
!4303 = !DISubrange(count: 7)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !155, file: !63, line: 463, baseType: !4305, size: 192, offset: 6592)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4306, line: 8, size: 192, elements: !4307)
!4306 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4307 = !{!4308, !4309, !4310}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4305, file: !4306, line: 10, baseType: !7, size: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4305, file: !4306, line: 11, baseType: !606, size: 64, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4305, file: !4306, line: 12, baseType: !4311, size: 64, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4313, line: 59, size: 48, elements: !4314)
!4313 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4314 = !{!4315, !4316, !4317, !4318, !4319, !4320}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4312, file: !4313, line: 60, baseType: !2668, size: 16)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4312, file: !4313, line: 61, baseType: !2668, size: 16, offset: 16)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4312, file: !4313, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4312, file: !4313, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4312, file: !4313, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4312, file: !4313, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !155, file: !63, line: 465, baseType: !309, size: 64, offset: 6784)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !155, file: !63, line: 469, baseType: !7, size: 32, offset: 6848)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !155, file: !63, line: 470, baseType: !159, size: 128, offset: 6912)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !155, file: !63, line: 471, baseType: !4325, size: 64, offset: 7040)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4327, line: 33, size: 96, elements: !4328)
!4327 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4328 = !{!4329, !4330, !4331, !4332}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4326, file: !4327, line: 37, baseType: !96, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4326, file: !4327, line: 43, baseType: !96, size: 32, offset: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4326, file: !4327, line: 45, baseType: !229, size: 16, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4326, file: !4327, line: 47, baseType: !229, size: 16, offset: 80)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !155, file: !63, line: 476, baseType: !4334, size: 64, offset: 7104)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !63, line: 378, size: 256, elements: !4336)
!4336 = !{!4337, !4353, !4354, !4355}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4335, file: !63, line: 379, baseType: !4338, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4340, line: 204, baseType: !4341)
!4340 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4340, line: 197, size: 192, elements: !4342)
!4342 = !{!4343, !4345, !4346, !4347, !4349, !4351}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4341, file: !4340, line: 198, baseType: !4344, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4340, line: 21, baseType: !409)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4341, file: !4340, line: 199, baseType: !221, size: 8, offset: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4341, file: !4340, line: 200, baseType: !221, size: 8, offset: 40)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4341, file: !4340, line: 201, baseType: !4348, size: 16, offset: 48)
!4348 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4340, line: 17, baseType: !228)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4341, file: !4340, line: 202, baseType: !4350, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4340, line: 16, baseType: !413)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4341, file: !4340, line: 203, baseType: !4352, size: 64, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4340, line: 22, baseType: !413)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4335, file: !63, line: 380, baseType: !7, size: 32, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4335, file: !63, line: 381, baseType: !259, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4335, file: !63, line: 382, baseType: !259, size: 64, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !155, file: !63, line: 477, baseType: !4335, size: 256, offset: 7168)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !155, file: !63, line: 480, baseType: !4358, size: 64, offset: 7424)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !63, line: 480, flags: DIFlagFwdDecl)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !155, file: !63, line: 483, baseType: !4361, size: 64, offset: 7488)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !63, line: 483, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !155, file: !63, line: 488, baseType: !259, size: 64, offset: 7552)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !155, file: !63, line: 492, baseType: !153, size: 64, offset: 7616)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !155, file: !63, line: 493, baseType: !7, size: 32, offset: 7680)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !155, file: !63, line: 495, baseType: !153, size: 64, offset: 7744)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !155, file: !63, line: 496, baseType: !7, size: 32, offset: 7808)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !155, file: !63, line: 499, baseType: !7, size: 32, offset: 7840)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !155, file: !63, line: 500, baseType: !4370, size: 64, offset: 7872)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4372, line: 45, baseType: !4373)
!4372 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !155, file: !63, line: 503, baseType: !7, size: 32, offset: 7936)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !155, file: !63, line: 504, baseType: !4376, size: 64, offset: 8000)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4379, line: 96, size: 192, elements: !4380)
!4379 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4380 = !{!4381, !4382, !4425, !4427}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4378, file: !4379, line: 97, baseType: !7, size: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4378, file: !4379, line: 98, baseType: !4383, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4379, line: 24, size: 3072, elements: !4385)
!4385 = !{!4386, !4388, !4389, !4390, !4391, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4422, !4423, !4424}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4384, file: !4379, line: 26, baseType: !4387, size: 128)
!4387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 128, elements: !2914)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4384, file: !4379, line: 27, baseType: !4387, size: 128, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4384, file: !4379, line: 28, baseType: !96, size: 32, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4384, file: !4379, line: 31, baseType: !189, size: 32, align: 512, offset: 512)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4384, file: !4379, line: 32, baseType: !4392, size: 960, offset: 576)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4393, line: 206, size: 960, elements: !4394)
!4393 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4394 = !{!4395, !4396, !4399, !4401, !4402, !4404}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4392, file: !4393, line: 207, baseType: !1494, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4392, file: !4393, line: 208, baseType: !4397, size: 256, offset: 64)
!4397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4398, size: 256, elements: !1804)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4392, file: !4393, line: 209, baseType: !4400, size: 256, offset: 320)
!4400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !1804)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4392, file: !4393, line: 213, baseType: !295, size: 64, offset: 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4392, file: !4393, line: 215, baseType: !4403, size: 256, offset: 640)
!4403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !1804)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4392, file: !4393, line: 216, baseType: !217, size: 8, offset: 896)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4384, file: !4379, line: 33, baseType: !309, size: 64, offset: 1536)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4384, file: !4379, line: 34, baseType: !309, size: 64, offset: 1600)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4384, file: !4379, line: 35, baseType: !893, size: 8, offset: 1664)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4384, file: !4379, line: 36, baseType: !1105, size: 320, offset: 1728)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4384, file: !4379, line: 37, baseType: !1220, size: 256, offset: 2048)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4384, file: !4379, line: 38, baseType: !1491, size: 128, align: 64, offset: 2304)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4384, file: !4379, line: 39, baseType: !4412, size: 64, offset: 2432)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4379, line: 49, size: 768, elements: !4414)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4421}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4413, file: !4379, line: 50, baseType: !189, size: 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4413, file: !4379, line: 51, baseType: !4400, size: 256, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4413, file: !4379, line: 53, baseType: !4400, size: 256, offset: 320)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4413, file: !4379, line: 54, baseType: !309, size: 64, offset: 576)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4413, file: !4379, line: 55, baseType: !4412, size: 64, offset: 640)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4413, file: !4379, line: 56, baseType: !96, size: 32, offset: 704)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4413, file: !4379, line: 57, baseType: !96, size: 32, offset: 736)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4384, file: !4379, line: 40, baseType: !309, size: 64, offset: 2496)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4384, file: !4379, line: 42, baseType: !96, size: 32, offset: 2560)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4384, file: !4379, line: 43, baseType: !4377, size: 64, offset: 2624)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4378, file: !4379, line: 99, baseType: !4426, offset: 128)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !542, line: 211, elements: !543)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4378, file: !4379, line: 100, baseType: !4428, size: 64, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4379, line: 63, size: 3008, elements: !4430)
!4430 = !{!4431, !4432, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4460}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4429, file: !4379, line: 64, baseType: !4412, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4429, file: !4379, line: 65, baseType: !4433, size: 192, offset: 64)
!4433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4412, size: 192, elements: !260)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4429, file: !4379, line: 67, baseType: !96, size: 32, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4429, file: !4379, line: 68, baseType: !639, size: 256, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4429, file: !4379, line: 69, baseType: !189, size: 32, offset: 576)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4429, file: !4379, line: 70, baseType: !639, size: 256, offset: 640)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4429, file: !4379, line: 71, baseType: !309, size: 64, offset: 896)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4429, file: !4379, line: 72, baseType: !309, size: 64, offset: 960)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4429, file: !4379, line: 73, baseType: !309, size: 64, offset: 1024)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4429, file: !4379, line: 74, baseType: !309, size: 64, offset: 1088)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4429, file: !4379, line: 75, baseType: !309, size: 64, offset: 1152)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4429, file: !4379, line: 76, baseType: !309, size: 64, offset: 1216)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4429, file: !4379, line: 77, baseType: !309, size: 64, offset: 1280)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4429, file: !4379, line: 78, baseType: !309, size: 64, offset: 1344)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4429, file: !4379, line: 79, baseType: !893, size: 8, offset: 1408)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4429, file: !4379, line: 80, baseType: !309, size: 64, offset: 1472)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4429, file: !4379, line: 81, baseType: !639, size: 256, offset: 1536)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4429, file: !4379, line: 82, baseType: !1082, size: 256, offset: 1792)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4429, file: !4379, line: 84, baseType: !209, size: 32, offset: 2048)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4429, file: !4379, line: 87, baseType: !309, size: 64, offset: 2112)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4429, file: !4379, line: 88, baseType: !309, size: 64, offset: 2176)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4429, file: !4379, line: 89, baseType: !4454, size: 704, offset: 2240)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1221, line: 111, size: 704, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4459}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4454, file: !1221, line: 112, baseType: !1220, size: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4454, file: !1221, line: 113, baseType: !1105, size: 320, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4454, file: !1221, line: 116, baseType: !3630, size: 64, offset: 576)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4454, file: !1221, line: 117, baseType: !96, size: 32, offset: 640)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4429, file: !4379, line: 90, baseType: !4377, size: 64, offset: 2944)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !155, file: !63, line: 515, baseType: !4462, size: 64, offset: 8064)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4464, line: 117, size: 128, elements: !4465)
!4464 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4465 = !{!4466, !4467, !4468}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4463, file: !4464, line: 118, baseType: !1273, size: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4463, file: !4464, line: 119, baseType: !1273, size: 32, offset: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4463, file: !4464, line: 120, baseType: !295, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !155, file: !63, line: 516, baseType: !7, size: 32, offset: 8128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !155, file: !63, line: 519, baseType: !7, size: 32, offset: 8160)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !155, file: !63, line: 520, baseType: !4472, size: 64, offset: 8192)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !155, file: !63, line: 523, baseType: !4474, size: 64, offset: 8256)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !63, line: 523, flags: DIFlagFwdDecl)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !155, file: !63, line: 524, baseType: !7, size: 32, offset: 8320)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !155, file: !63, line: 525, baseType: !4479, size: 64, offset: 8384)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !63, line: 525, flags: DIFlagFwdDecl)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !155, file: !63, line: 526, baseType: !7, size: 32, offset: 8448)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !155, file: !63, line: 533, baseType: !153, size: 64, offset: 8512)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !155, file: !63, line: 534, baseType: !7, size: 32, offset: 8576)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !155, file: !63, line: 535, baseType: !4486, size: 64, offset: 8640)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !155, file: !63, line: 536, baseType: !7, size: 32, offset: 8704)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !155, file: !63, line: 539, baseType: !96, size: 32, offset: 8736)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !155, file: !63, line: 540, baseType: !4490, size: 64, offset: 8768)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4492, line: 32, size: 64, elements: !4493)
!4492 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4493 = !{!4494, !4495}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4491, file: !4492, line: 33, baseType: !1273, size: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4491, file: !4492, line: 34, baseType: !1273, size: 32, offset: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !155, file: !63, line: 563, baseType: !159, size: 128, offset: 8832)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !155, file: !63, line: 565, baseType: !159, size: 128, offset: 8960)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !155, file: !63, line: 568, baseType: !4499, size: 64, offset: 9088)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !155, file: !63, line: 570, baseType: !209, size: 32, offset: 9152)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2467, line: 36, baseType: !228)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_inode_info", file: !4504, line: 112, size: 6016, elements: !4505)
!4504 = !DIFile(filename: "fs/fat/fat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83afc15ac4ff27e2fd85303f483c9bf6")
!4505 = !{!4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru_lock", scope: !4503, file: !4504, line: 113, baseType: !189, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru", scope: !4503, file: !4504, line: 114, baseType: !159, size: 128, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_caches", scope: !4503, file: !4504, line: 115, baseType: !96, size: 32, offset: 192)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid_id", scope: !4503, file: !4504, line: 117, baseType: !7, size: 32, offset: 224)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "mmu_private", scope: !4503, file: !4504, line: 120, baseType: !500, size: 64, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !4503, file: !4504, line: 122, baseType: !96, size: 32, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "i_logstart", scope: !4503, file: !4504, line: 123, baseType: !96, size: 32, offset: 352)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "i_attrs", scope: !4503, file: !4504, line: 124, baseType: !96, size: 32, offset: 384)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "i_pos", scope: !4503, file: !4504, line: 125, baseType: !500, size: 64, offset: 448)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "i_fat_hash", scope: !4503, file: !4504, line: 126, baseType: !535, size: 128, offset: 512)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_hash", scope: !4503, file: !4504, line: 127, baseType: !535, size: 128, offset: 640)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "truncate_lock", scope: !4503, file: !4504, line: 128, baseType: !852, size: 320, offset: 768)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "i_crtime", scope: !4503, file: !4504, line: 129, baseType: !3771, size: 128, offset: 1088)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !4503, file: !4504, line: 130, baseType: !340, size: 4800, offset: 1216)
!4520 = !{!0, !4521, !4526, !4531, !4534, !4539, !4541, !4545, !4547, !4549, !4551, !4554, !4557, !4562, !4565}
!4521 = !DIGlobalVariableExpression(var: !4522, expr: !DIExpression())
!4522 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file321", scope: !2, file: !3, line: 684, type: !4523, isLocal: true, isDefinition: true, align: 8)
!4523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 192, elements: !4524)
!4524 = !{!4525}
!4525 = !DISubrange(count: 24)
!4526 = !DIGlobalVariableExpression(var: !4527, expr: !DIExpression())
!4527 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license322", scope: !2, file: !3, line: 684, type: !4528, isLocal: true, isDefinition: true, align: 8)
!4528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 144, elements: !4529)
!4529 = !{!4530}
!4530 = !DISubrange(count: 18)
!4531 = !DIGlobalVariableExpression(var: !4532, expr: !DIExpression())
!4532 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author323", scope: !2, file: !3, line: 685, type: !4533, isLocal: true, isDefinition: true, align: 8)
!4533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !421)
!4534 = !DIGlobalVariableExpression(var: !4535, expr: !DIExpression())
!4535 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description324", scope: !2, file: !3, line: 686, type: !4536, isLocal: true, isDefinition: true, align: 8)
!4536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 352, elements: !4537)
!4537 = !{!4538}
!4538 = !DISubrange(count: 44)
!4539 = !DIGlobalVariableExpression(var: !4540, expr: !DIExpression())
!4540 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_msdos__325_688_init_msdos_fs6326", scope: !2, file: !3, line: 688, type: !153, isLocal: true, isDefinition: true)
!4541 = !DIGlobalVariableExpression(var: !4542, expr: !DIExpression())
!4542 = distinct !DIGlobalVariable(name: "__exitcall_exit_msdos_fs", scope: !2, file: !3, line: 689, type: !4543, isLocal: true, isDefinition: true)
!4543 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4544, line: 120, baseType: !4499)
!4544 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4545 = !DIGlobalVariableExpression(var: !4546, expr: !DIExpression())
!4546 = distinct !DIGlobalVariable(scope: null, file: !3, line: 667, type: !1900, isLocal: true, isDefinition: true)
!4547 = !DIGlobalVariableExpression(var: !4548, expr: !DIExpression())
!4548 = distinct !DIGlobalVariable(name: "msdos_fs_type", scope: !2, file: !3, line: 665, type: !505, isLocal: true, isDefinition: true)
!4549 = !DIGlobalVariableExpression(var: !4550, expr: !DIExpression())
!4550 = distinct !DIGlobalVariable(name: "msdos_dir_inode_operations", scope: !2, file: !3, line: 634, type: !367, isLocal: true, isDefinition: true)
!4551 = !DIGlobalVariableExpression(var: !4552, expr: !DIExpression())
!4552 = distinct !DIGlobalVariable(name: "bad_chars", scope: !2, file: !3, line: 15, type: !4553, isLocal: true, isDefinition: true)
!4553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 56, elements: !4302)
!4554 = !DIGlobalVariableExpression(var: !4555, expr: !DIExpression())
!4555 = distinct !DIGlobalVariable(name: "bad_if_strict", scope: !2, file: !3, line: 16, type: !4556, isLocal: true, isDefinition: true)
!4556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 48, elements: !1901)
!4557 = !DIGlobalVariableExpression(var: !4558, expr: !DIExpression())
!4558 = distinct !DIGlobalVariable(scope: null, file: !3, line: 589, type: !4559, isLocal: true, isDefinition: true)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 304, elements: !4560)
!4560 = !{!4561}
!4561 = !DISubrange(count: 38)
!4562 = !DIGlobalVariableExpression(var: !4563, expr: !DIExpression())
!4563 = distinct !DIGlobalVariable(scope: null, file: !3, line: 589, type: !4564, isLocal: true, isDefinition: true)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !2832)
!4565 = !DIGlobalVariableExpression(var: !4566, expr: !DIExpression())
!4566 = distinct !DIGlobalVariable(name: "msdos_dentry_operations", scope: !2, file: !3, line: 191, type: !438, isLocal: true, isDefinition: true)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 168, elements: !4568)
!4568 = !{!4569}
!4569 = !DISubrange(count: 21)
!4570 = !{i32 7, !"Dwarf Version", i32 5}
!4571 = !{i32 2, !"Debug Info Version", i32 3}
!4572 = !{i32 1, !"wchar_size", i32 2}
!4573 = !{i32 8, !"cf-protection-branch", i32 1}
!4574 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4575 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4576 = !{i32 1, !"Code Model", i32 2}
!4577 = !{i32 1, !"override-stack-alignment", i32 8}
!4578 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4579 = distinct !DISubprogram(name: "exit_msdos_fs", scope: !3, file: !3, line: 679, type: !3028, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4580 = !DILocation(line: 681, column: 2, scope: !4579)
!4581 = !DILocation(line: 682, column: 1, scope: !4579)
!4582 = !DISubprogram(name: "unregister_filesystem", scope: !15, file: !15, line: 2446, type: !4583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!96, !504}
!4585 = distinct !DISubprogram(name: "__initstub__kmod_msdos__325_688_init_msdos_fs6", scope: !3, file: !3, line: 688, type: !4284, scopeLine: 688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4586 = !DILocation(line: 688, column: 1, scope: !4585)
!4587 = distinct !DISubprogram(name: "init_msdos_fs", scope: !3, file: !3, line: 674, type: !4284, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4588 = !DILocation(line: 676, column: 9, scope: !4587)
!4589 = !DILocation(line: 676, column: 2, scope: !4587)
!4590 = distinct !DISubprogram(name: "msdos_mount", scope: !3, file: !3, line: 658, type: !522, scopeLine: 661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4591)
!4591 = !{!4592, !4593, !4594, !4595}
!4592 = !DILocalVariable(name: "fs_type", arg: 1, scope: !4590, file: !3, line: 658, type: !504)
!4593 = !DILocalVariable(name: "flags", arg: 2, scope: !4590, file: !3, line: 659, type: !96)
!4594 = !DILocalVariable(name: "dev_name", arg: 3, scope: !4590, file: !3, line: 659, type: !178)
!4595 = !DILocalVariable(name: "data", arg: 4, scope: !4590, file: !3, line: 660, type: !153)
!4596 = !DILocation(line: 658, column: 60, scope: !4590)
!4597 = !DILocation(line: 659, column: 8, scope: !4590)
!4598 = !DILocation(line: 659, column: 27, scope: !4590)
!4599 = !DILocation(line: 660, column: 10, scope: !4590)
!4600 = !DILocation(line: 662, column: 20, scope: !4590)
!4601 = !DILocation(line: 662, column: 29, scope: !4590)
!4602 = !DILocation(line: 662, column: 36, scope: !4590)
!4603 = !DILocation(line: 662, column: 46, scope: !4590)
!4604 = !DILocation(line: 662, column: 9, scope: !4590)
!4605 = !DILocation(line: 662, column: 2, scope: !4590)
!4606 = !DISubprogram(name: "mount_bdev", scope: !15, file: !15, line: 2398, type: !4607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!374, !504, !96, !178, !153, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!96, !490, !153, !96}
!4612 = distinct !DISubprogram(name: "msdos_fill_super", scope: !3, file: !3, line: 653, type: !4610, scopeLine: 654, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4613 = !{!4614, !4615, !4616}
!4614 = !DILocalVariable(name: "sb", arg: 1, scope: !4612, file: !3, line: 653, type: !490)
!4615 = !DILocalVariable(name: "data", arg: 2, scope: !4612, file: !3, line: 653, type: !153)
!4616 = !DILocalVariable(name: "silent", arg: 3, scope: !4612, file: !3, line: 653, type: !96)
!4617 = !DILocation(line: 653, column: 49, scope: !4612)
!4618 = !DILocation(line: 653, column: 59, scope: !4612)
!4619 = !DILocation(line: 653, column: 69, scope: !4612)
!4620 = !DILocation(line: 655, column: 24, scope: !4612)
!4621 = !DILocation(line: 655, column: 28, scope: !4612)
!4622 = !DILocation(line: 655, column: 34, scope: !4612)
!4623 = !DILocation(line: 655, column: 9, scope: !4612)
!4624 = !DILocation(line: 655, column: 2, scope: !4612)
!4625 = !DISubprogram(name: "fat_fill_super", scope: !4504, file: !4504, line: 418, type: !4626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!96, !490, !153, !96, !96, !525}
!4628 = distinct !DISubprogram(name: "setup", scope: !3, file: !3, line: 646, type: !526, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4629)
!4629 = !{!4630}
!4630 = !DILocalVariable(name: "sb", arg: 1, scope: !4628, file: !3, line: 646, type: !490)
!4631 = !DILocation(line: 646, column: 39, scope: !4628)
!4632 = !DILocation(line: 648, column: 11, scope: !4628)
!4633 = !DILocation(line: 648, column: 2, scope: !4628)
!4634 = !DILocation(line: 648, column: 16, scope: !4628)
!4635 = !DILocation(line: 648, column: 24, scope: !4628)
!4636 = !DILocation(line: 649, column: 2, scope: !4628)
!4637 = !DILocation(line: 649, column: 6, scope: !4628)
!4638 = !DILocation(line: 649, column: 13, scope: !4628)
!4639 = !DILocation(line: 650, column: 2, scope: !4628)
!4640 = !DILocation(line: 650, column: 6, scope: !4628)
!4641 = !DILocation(line: 650, column: 14, scope: !4628)
!4642 = !DILocation(line: 651, column: 1, scope: !4628)
!4643 = distinct !DISubprogram(name: "MSDOS_SB", scope: !4504, file: !4504, line: 141, type: !4644, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4742)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!4646, !490}
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_sb_info", file: !4504, line: 63, size: 35776, elements: !4648)
!4648 = !{!4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4698, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4730, !4731, !4732, !4733, !4734, !4738, !4739, !4740, !4741}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "sec_per_clus", scope: !4647, file: !4504, line: 64, baseType: !229, size: 16)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_bits", scope: !4647, file: !4504, line: 65, baseType: !229, size: 16, offset: 16)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_size", scope: !4647, file: !4504, line: 66, baseType: !7, size: 32, offset: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "fats", scope: !4647, file: !4504, line: 67, baseType: !221, size: 8, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "fat_bits", scope: !4647, file: !4504, line: 67, baseType: !221, size: 8, offset: 72)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fat_start", scope: !4647, file: !4504, line: 68, baseType: !229, size: 16, offset: 80)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "fat_length", scope: !4647, file: !4504, line: 69, baseType: !309, size: 64, offset: 128)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "dir_start", scope: !4647, file: !4504, line: 70, baseType: !309, size: 64, offset: 192)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "dir_entries", scope: !4647, file: !4504, line: 71, baseType: !229, size: 16, offset: 256)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "data_start", scope: !4647, file: !4504, line: 72, baseType: !309, size: 64, offset: 320)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "max_cluster", scope: !4647, file: !4504, line: 73, baseType: !309, size: 64, offset: 384)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "root_cluster", scope: !4647, file: !4504, line: 74, baseType: !309, size: 64, offset: 448)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "fsinfo_sector", scope: !4647, file: !4504, line: 75, baseType: !309, size: 64, offset: 512)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "fat_lock", scope: !4647, file: !4504, line: 76, baseType: !639, size: 256, offset: 576)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_build_inode_lock", scope: !4647, file: !4504, line: 77, baseType: !639, size: 256, offset: 832)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock", scope: !4647, file: !4504, line: 78, baseType: !639, size: 256, offset: 1088)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "prev_free", scope: !4647, file: !4504, line: 79, baseType: !7, size: 32, offset: 1344)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4647, file: !4504, line: 80, baseType: !7, size: 32, offset: 1376)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "free_clus_valid", scope: !4647, file: !4504, line: 81, baseType: !7, size: 32, offset: 1408)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4647, file: !4504, line: 82, baseType: !4669, size: 384, offset: 1472)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_mount_options", file: !4504, line: 27, size: 384, elements: !4670)
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "fs_uid", scope: !4669, file: !4504, line: 28, baseType: !345, size: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fs_gid", scope: !4669, file: !4504, line: 29, baseType: !354, size: 32, offset: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "fs_fmask", scope: !4669, file: !4504, line: 30, baseType: !229, size: 16, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "fs_dmask", scope: !4669, file: !4504, line: 31, baseType: !229, size: 16, offset: 80)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "codepage", scope: !4669, file: !4504, line: 32, baseType: !229, size: 16, offset: 96)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset", scope: !4669, file: !4504, line: 33, baseType: !96, size: 32, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "iocharset", scope: !4669, file: !4504, line: 34, baseType: !259, size: 64, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4669, file: !4504, line: 35, baseType: !229, size: 16, offset: 256)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "name_check", scope: !4669, file: !4504, line: 36, baseType: !221, size: 8, offset: 272)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4669, file: !4504, line: 37, baseType: !221, size: 8, offset: 280)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "nfs", scope: !4669, file: !4504, line: 38, baseType: !221, size: 8, offset: 288)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "allow_utime", scope: !4669, file: !4504, line: 39, baseType: !229, size: 16, offset: 304)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !4669, file: !4504, line: 40, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "showexec", scope: !4669, file: !4504, line: 41, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "sys_immutable", scope: !4669, file: !4504, line: 42, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dotsOK", scope: !4669, file: !4504, line: 43, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "isvfat", scope: !4669, file: !4504, line: 44, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !4669, file: !4504, line: 45, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "unicode_xlate", scope: !4669, file: !4504, line: 46, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "numtail", scope: !4669, file: !4504, line: 47, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4669, file: !4504, line: 48, baseType: !7, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "nocase", scope: !4669, file: !4504, line: 49, baseType: !7, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "usefree", scope: !4669, file: !4504, line: 50, baseType: !7, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "tz_set", scope: !4669, file: !4504, line: 51, baseType: !7, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "rodir", scope: !4669, file: !4504, line: 52, baseType: !7, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "discard", scope: !4669, file: !4504, line: 53, baseType: !7, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dos1xfloppy", scope: !4669, file: !4504, line: 54, baseType: !7, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "nls_disk", scope: !4647, file: !4504, line: 83, baseType: !4699, size: 64, offset: 1856)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nls_table", file: !4701, line: 25, size: 512, elements: !4702)
!4701 = !DIFile(filename: "./include/linux/nls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f76e83aacaae45c8b04af57df30b5af2")
!4702 = !{!4703, !4704, !4705, !4711, !4716, !4717, !4718, !4719}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !4700, file: !4701, line: 26, baseType: !178, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !4700, file: !4701, line: 27, baseType: !178, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "uni2char", scope: !4700, file: !4701, line: 28, baseType: !4706, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!96, !4709, !4710, !96}
!4709 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !4701, line: 19, baseType: !227)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "char2uni", scope: !4700, file: !4701, line: 29, baseType: !4712, size: 64, offset: 192)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!96, !416, !96, !4715}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "charset2lower", scope: !4700, file: !4701, line: 31, baseType: !416, size: 64, offset: 256)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "charset2upper", scope: !4700, file: !4701, line: 32, baseType: !416, size: 64, offset: 320)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4700, file: !4701, line: 33, baseType: !154, size: 64, offset: 384)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4700, file: !4701, line: 34, baseType: !4699, size: 64, offset: 448)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "nls_io", scope: !4647, file: !4504, line: 84, baseType: !4699, size: 64, offset: 1920)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dir_ops", scope: !4647, file: !4504, line: 85, baseType: !1377, size: 64, offset: 1984)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "dir_per_block", scope: !4647, file: !4504, line: 86, baseType: !96, size: 32, offset: 2048)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "dir_per_block_bits", scope: !4647, file: !4504, line: 87, baseType: !96, size: 32, offset: 2080)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "vol_id", scope: !4647, file: !4504, line: 88, baseType: !7, size: 32, offset: 2112)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "fatent_shift", scope: !4647, file: !4504, line: 90, baseType: !96, size: 32, offset: 2144)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "fatent_ops", scope: !4647, file: !4504, line: 91, baseType: !4727, size: 64, offset: 2176)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4729)
!4729 = !DICompositeType(tag: DW_TAG_structure_type, name: "fatent_operations", file: !4504, line: 91, flags: DIFlagFwdDecl)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "fat_inode", scope: !4647, file: !4504, line: 92, baseType: !339, size: 64, offset: 2240)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "fsinfo_inode", scope: !4647, file: !4504, line: 93, baseType: !339, size: 64, offset: 2304)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !4647, file: !4504, line: 95, baseType: !1984, size: 320, offset: 2368)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "inode_hash_lock", scope: !4647, file: !4504, line: 97, baseType: !189, size: 32, offset: 2688)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "inode_hashtable", scope: !4647, file: !4504, line: 98, baseType: !4735, size: 16384, offset: 2752)
!4735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 16384, elements: !4736)
!4736 = !{!4737}
!4737 = !DISubrange(count: 256)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash_lock", scope: !4647, file: !4504, line: 100, baseType: !189, size: 32, offset: 19136)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hashtable", scope: !4647, file: !4504, line: 101, baseType: !4735, size: 16384, offset: 19200)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4647, file: !4504, line: 103, baseType: !7, size: 32, offset: 35584)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4647, file: !4504, line: 104, baseType: !1491, size: 128, align: 64, offset: 35648)
!4742 = !{!4743}
!4743 = !DILocalVariable(name: "sb", arg: 1, scope: !4643, file: !4504, line: 141, type: !490)
!4744 = !DILocation(line: 141, column: 66, scope: !4643)
!4745 = !DILocation(line: 143, column: 9, scope: !4643)
!4746 = !DILocation(line: 143, column: 13, scope: !4643)
!4747 = !DILocation(line: 143, column: 2, scope: !4643)
!4748 = distinct !DISubprogram(name: "msdos_lookup", scope: !3, file: !3, line: 201, type: !372, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4749)
!4749 = !{!4750, !4751, !4752, !4753, !4754, !4807, !4808}
!4750 = !DILocalVariable(name: "dir", arg: 1, scope: !4748, file: !3, line: 201, type: !339)
!4751 = !DILocalVariable(name: "dentry", arg: 2, scope: !4748, file: !3, line: 201, type: !374)
!4752 = !DILocalVariable(name: "flags", arg: 3, scope: !4748, file: !3, line: 202, type: !7)
!4753 = !DILocalVariable(name: "sb", scope: !4748, file: !3, line: 204, type: !490)
!4754 = !DILocalVariable(name: "sinfo", scope: !4748, file: !3, line: 205, type: !4755)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_slot_info", file: !4504, line: 133, size: 320, elements: !4756)
!4756 = !{!4757, !4758, !4759, !4760, !4781}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "i_pos", scope: !4755, file: !4504, line: 134, baseType: !500, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "slot_off", scope: !4755, file: !4504, line: 135, baseType: !500, size: 64, offset: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_slots", scope: !4755, file: !4504, line: 136, baseType: !96, size: 32, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !4755, file: !4504, line: 137, baseType: !4761, size: 64, offset: 192)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_dir_entry", file: !4763, line: 172, size: 256, elements: !4764)
!4763 = !DIFile(filename: "./include/uapi/linux/msdos_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3cb8f933672ca730d2ef7b5cb690cdb")
!4764 = !{!4765, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4762, file: !4763, line: 173, baseType: !4766, size: 88)
!4766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 88, elements: !4767)
!4767 = !{!4768}
!4768 = !DISubrange(count: 11)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4762, file: !4763, line: 174, baseType: !219, size: 8, offset: 88)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "lcase", scope: !4762, file: !4763, line: 175, baseType: !219, size: 8, offset: 96)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "ctime_cs", scope: !4762, file: !4763, line: 176, baseType: !219, size: 8, offset: 104)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4762, file: !4763, line: 177, baseType: !4501, size: 16, offset: 112)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "cdate", scope: !4762, file: !4763, line: 178, baseType: !4501, size: 16, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "adate", scope: !4762, file: !4763, line: 179, baseType: !4501, size: 16, offset: 144)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "starthi", scope: !4762, file: !4763, line: 180, baseType: !4501, size: 16, offset: 160)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4762, file: !4763, line: 181, baseType: !4501, size: 16, offset: 176)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4762, file: !4763, line: 181, baseType: !4501, size: 16, offset: 192)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4762, file: !4763, line: 181, baseType: !4501, size: 16, offset: 208)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4762, file: !4763, line: 182, baseType: !4780, size: 32, offset: 224)
!4780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2467, line: 38, baseType: !409)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !4755, file: !4504, line: 138, baseType: !4782, size: 64, offset: 256)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !4784, line: 59, size: 832, elements: !4785)
!4784 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!4785 = !{!4786, !4787, !4788, !4793, !4794, !4795, !4796, !4797, !4802, !4803, !4804, !4805, !4806}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !4783, file: !4784, line: 60, baseType: !309, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !4783, file: !4784, line: 61, baseType: !4782, size: 64, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, scope: !4783, file: !4784, line: 62, baseType: !4789, size: 64, offset: 128)
!4789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4783, file: !4784, line: 62, size: 64, elements: !4790)
!4790 = !{!4791, !4792}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !4789, file: !4784, line: 63, baseType: !2198, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !4789, file: !4784, line: 64, baseType: !2069, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !4783, file: !4784, line: 67, baseType: !879, size: 64, offset: 192)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !4783, file: !4784, line: 68, baseType: !306, size: 64, offset: 256)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !4783, file: !4784, line: 69, baseType: !259, size: 64, offset: 320)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !4783, file: !4784, line: 71, baseType: !874, size: 64, offset: 384)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !4783, file: !4784, line: 72, baseType: !4798, size: 64, offset: 448)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !4784, line: 48, baseType: !4800)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{null, !4782, !96}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !4783, file: !4784, line: 73, baseType: !153, size: 64, offset: 512)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !4783, file: !4784, line: 74, baseType: !159, size: 128, offset: 576)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !4783, file: !4784, line: 75, baseType: !335, size: 64, offset: 704)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !4783, file: !4784, line: 77, baseType: !209, size: 32, offset: 768)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !4783, file: !4784, line: 78, baseType: !189, size: 32, offset: 800)
!4807 = !DILocalVariable(name: "inode", scope: !4748, file: !3, line: 206, type: !339)
!4808 = !DILocalVariable(name: "err", scope: !4748, file: !3, line: 207, type: !96)
!4809 = !DILocation(line: 201, column: 50, scope: !4748)
!4810 = !DILocation(line: 201, column: 70, scope: !4748)
!4811 = !DILocation(line: 202, column: 21, scope: !4748)
!4812 = !DILocation(line: 204, column: 2, scope: !4748)
!4813 = !DILocation(line: 204, column: 22, scope: !4748)
!4814 = !DILocation(line: 204, column: 27, scope: !4748)
!4815 = !DILocation(line: 204, column: 32, scope: !4748)
!4816 = !DILocation(line: 205, column: 2, scope: !4748)
!4817 = !DILocation(line: 205, column: 23, scope: !4748)
!4818 = !DILocation(line: 206, column: 2, scope: !4748)
!4819 = !DILocation(line: 206, column: 16, scope: !4748)
!4820 = !DILocation(line: 207, column: 2, scope: !4748)
!4821 = !DILocation(line: 207, column: 6, scope: !4748)
!4822 = !DILocation(line: 209, column: 23, scope: !4748)
!4823 = !DILocation(line: 209, column: 14, scope: !4748)
!4824 = !DILocation(line: 209, column: 28, scope: !4748)
!4825 = !DILocation(line: 209, column: 2, scope: !4748)
!4826 = !DILocation(line: 210, column: 19, scope: !4748)
!4827 = !DILocation(line: 210, column: 24, scope: !4748)
!4828 = !DILocation(line: 210, column: 32, scope: !4748)
!4829 = !DILocation(line: 210, column: 39, scope: !4748)
!4830 = !DILocation(line: 210, column: 45, scope: !4748)
!4831 = !DILocation(line: 210, column: 53, scope: !4748)
!4832 = !DILocation(line: 210, column: 60, scope: !4748)
!4833 = !DILocation(line: 210, column: 8, scope: !4748)
!4834 = !DILocation(line: 210, column: 6, scope: !4748)
!4835 = !DILocation(line: 211, column: 10, scope: !4748)
!4836 = !DILocation(line: 211, column: 2, scope: !4748)
!4837 = !DILocation(line: 213, column: 9, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 211, column: 15)
!4839 = !DILocation(line: 214, column: 3, scope: !4838)
!4840 = !DILocation(line: 216, column: 27, scope: !4838)
!4841 = !DILocation(line: 216, column: 37, scope: !4838)
!4842 = !DILocation(line: 216, column: 47, scope: !4838)
!4843 = !DILocation(line: 216, column: 11, scope: !4838)
!4844 = !DILocation(line: 216, column: 9, scope: !4838)
!4845 = !DILocation(line: 217, column: 16, scope: !4838)
!4846 = !DILocation(line: 217, column: 3, scope: !4838)
!4847 = !DILocation(line: 218, column: 3, scope: !4838)
!4848 = !DILocation(line: 220, column: 19, scope: !4838)
!4849 = !DILocation(line: 220, column: 11, scope: !4838)
!4850 = !DILocation(line: 220, column: 9, scope: !4838)
!4851 = !DILocation(line: 221, column: 2, scope: !4838)
!4852 = !DILocation(line: 222, column: 25, scope: !4748)
!4853 = !DILocation(line: 222, column: 16, scope: !4748)
!4854 = !DILocation(line: 222, column: 30, scope: !4748)
!4855 = !DILocation(line: 222, column: 2, scope: !4748)
!4856 = !DILocation(line: 223, column: 24, scope: !4748)
!4857 = !DILocation(line: 223, column: 31, scope: !4748)
!4858 = !DILocation(line: 223, column: 9, scope: !4748)
!4859 = !DILocation(line: 224, column: 1, scope: !4748)
!4860 = !DILocation(line: 223, column: 2, scope: !4748)
!4861 = distinct !DISubprogram(name: "msdos_create", scope: !3, file: !3, line: 264, type: !3714, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4862)
!4862 = !{!4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4874, !4875, !4876}
!4863 = !DILocalVariable(name: "idmap", arg: 1, scope: !4861, file: !3, line: 264, type: !3660)
!4864 = !DILocalVariable(name: "dir", arg: 2, scope: !4861, file: !3, line: 264, type: !339)
!4865 = !DILocalVariable(name: "dentry", arg: 3, scope: !4861, file: !3, line: 265, type: !374)
!4866 = !DILocalVariable(name: "mode", arg: 4, scope: !4861, file: !3, line: 265, type: !301)
!4867 = !DILocalVariable(name: "excl", arg: 5, scope: !4861, file: !3, line: 265, type: !893)
!4868 = !DILocalVariable(name: "sb", scope: !4861, file: !3, line: 267, type: !490)
!4869 = !DILocalVariable(name: "inode", scope: !4861, file: !3, line: 268, type: !339)
!4870 = !DILocalVariable(name: "sinfo", scope: !4861, file: !3, line: 269, type: !4755)
!4871 = !DILocalVariable(name: "ts", scope: !4861, file: !3, line: 270, type: !3771)
!4872 = !DILocalVariable(name: "msdos_name", scope: !4861, file: !3, line: 271, type: !4873)
!4873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 88, elements: !4767)
!4874 = !DILocalVariable(name: "err", scope: !4861, file: !3, line: 272, type: !96)
!4875 = !DILocalVariable(name: "is_hid", scope: !4861, file: !3, line: 272, type: !96)
!4876 = !DILabel(scope: !4861, name: "out", file: !3, line: 302)
!4877 = !DILocation(line: 264, column: 43, scope: !4861)
!4878 = !DILocation(line: 264, column: 64, scope: !4861)
!4879 = !DILocation(line: 265, column: 19, scope: !4861)
!4880 = !DILocation(line: 265, column: 35, scope: !4861)
!4881 = !DILocation(line: 265, column: 46, scope: !4861)
!4882 = !DILocation(line: 267, column: 2, scope: !4861)
!4883 = !DILocation(line: 267, column: 22, scope: !4861)
!4884 = !DILocation(line: 267, column: 27, scope: !4861)
!4885 = !DILocation(line: 267, column: 32, scope: !4861)
!4886 = !DILocation(line: 268, column: 2, scope: !4861)
!4887 = !DILocation(line: 268, column: 16, scope: !4861)
!4888 = !DILocation(line: 269, column: 2, scope: !4861)
!4889 = !DILocation(line: 269, column: 23, scope: !4861)
!4890 = !DILocation(line: 270, column: 2, scope: !4861)
!4891 = !DILocation(line: 270, column: 20, scope: !4861)
!4892 = !DILocation(line: 271, column: 2, scope: !4861)
!4893 = !DILocation(line: 271, column: 16, scope: !4861)
!4894 = !DILocation(line: 272, column: 2, scope: !4861)
!4895 = !DILocation(line: 272, column: 6, scope: !4861)
!4896 = !DILocation(line: 272, column: 11, scope: !4861)
!4897 = !DILocation(line: 274, column: 23, scope: !4861)
!4898 = !DILocation(line: 274, column: 14, scope: !4861)
!4899 = !DILocation(line: 274, column: 28, scope: !4861)
!4900 = !DILocation(line: 274, column: 2, scope: !4861)
!4901 = !DILocation(line: 276, column: 26, scope: !4861)
!4902 = !DILocation(line: 276, column: 34, scope: !4861)
!4903 = !DILocation(line: 276, column: 41, scope: !4861)
!4904 = !DILocation(line: 276, column: 47, scope: !4861)
!4905 = !DILocation(line: 276, column: 55, scope: !4861)
!4906 = !DILocation(line: 276, column: 62, scope: !4861)
!4907 = !DILocation(line: 277, column: 5, scope: !4861)
!4908 = !DILocation(line: 277, column: 27, scope: !4861)
!4909 = !DILocation(line: 277, column: 18, scope: !4861)
!4910 = !DILocation(line: 277, column: 32, scope: !4861)
!4911 = !DILocation(line: 276, column: 8, scope: !4861)
!4912 = !DILocation(line: 276, column: 6, scope: !4861)
!4913 = !DILocation(line: 278, column: 6, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 278, column: 6)
!4915 = !DILocation(line: 278, column: 6, scope: !4861)
!4916 = !DILocation(line: 279, column: 3, scope: !4914)
!4917 = !DILocation(line: 280, column: 12, scope: !4861)
!4918 = !DILocation(line: 280, column: 20, scope: !4861)
!4919 = !DILocation(line: 280, column: 27, scope: !4861)
!4920 = !DILocation(line: 280, column: 35, scope: !4861)
!4921 = !DILocation(line: 280, column: 43, scope: !4861)
!4922 = !DILocation(line: 280, column: 47, scope: !4861)
!4923 = !DILocation(line: 280, column: 61, scope: !4861)
!4924 = !DILocation(line: 0, scope: !4861)
!4925 = !DILocation(line: 280, column: 9, scope: !4861)
!4926 = !DILocation(line: 282, column: 16, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 282, column: 6)
!4928 = !DILocation(line: 282, column: 21, scope: !4927)
!4929 = !DILocation(line: 282, column: 7, scope: !4927)
!4930 = !DILocation(line: 282, column: 6, scope: !4861)
!4931 = !DILocation(line: 283, column: 16, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 282, column: 42)
!4933 = !DILocation(line: 283, column: 3, scope: !4932)
!4934 = !DILocation(line: 284, column: 7, scope: !4932)
!4935 = !DILocation(line: 285, column: 3, scope: !4932)
!4936 = !DILocation(line: 288, column: 7, scope: !4861)
!4937 = !DILocation(line: 288, column: 20, scope: !4861)
!4938 = !DILocation(line: 289, column: 24, scope: !4861)
!4939 = !DILocation(line: 289, column: 29, scope: !4861)
!4940 = !DILocation(line: 289, column: 44, scope: !4861)
!4941 = !DILocation(line: 289, column: 8, scope: !4861)
!4942 = !DILocation(line: 289, column: 6, scope: !4861)
!4943 = !DILocation(line: 290, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 290, column: 6)
!4945 = !DILocation(line: 290, column: 6, scope: !4861)
!4946 = !DILocation(line: 291, column: 3, scope: !4944)
!4947 = !DILocation(line: 292, column: 26, scope: !4861)
!4948 = !DILocation(line: 292, column: 36, scope: !4861)
!4949 = !DILocation(line: 292, column: 46, scope: !4861)
!4950 = !DILocation(line: 292, column: 10, scope: !4861)
!4951 = !DILocation(line: 292, column: 8, scope: !4861)
!4952 = !DILocation(line: 293, column: 15, scope: !4861)
!4953 = !DILocation(line: 293, column: 2, scope: !4861)
!4954 = !DILocation(line: 294, column: 13, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 294, column: 6)
!4956 = !DILocation(line: 294, column: 6, scope: !4955)
!4957 = !DILocation(line: 294, column: 6, scope: !4861)
!4958 = !DILocation(line: 295, column: 17, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 294, column: 21)
!4960 = !DILocation(line: 295, column: 9, scope: !4959)
!4961 = !DILocation(line: 295, column: 7, scope: !4959)
!4962 = !DILocation(line: 296, column: 3, scope: !4959)
!4963 = !DILocation(line: 298, column: 20, scope: !4861)
!4964 = !DILocation(line: 298, column: 2, scope: !4861)
!4965 = !DILocation(line: 301, column: 16, scope: !4861)
!4966 = !DILocation(line: 301, column: 24, scope: !4861)
!4967 = !DILocation(line: 301, column: 2, scope: !4861)
!4968 = !DILocation(line: 302, column: 1, scope: !4861)
!4969 = !DILocation(line: 303, column: 25, scope: !4861)
!4970 = !DILocation(line: 303, column: 16, scope: !4861)
!4971 = !DILocation(line: 303, column: 30, scope: !4861)
!4972 = !DILocation(line: 303, column: 2, scope: !4861)
!4973 = !DILocation(line: 304, column: 7, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 304, column: 6)
!4975 = !DILocation(line: 304, column: 6, scope: !4861)
!4976 = !DILocation(line: 305, column: 26, scope: !4974)
!4977 = !DILocation(line: 305, column: 30, scope: !4974)
!4978 = !DILocation(line: 305, column: 35, scope: !4974)
!4979 = !DILocation(line: 305, column: 9, scope: !4974)
!4980 = !DILocation(line: 305, column: 7, scope: !4974)
!4981 = !DILocation(line: 305, column: 3, scope: !4974)
!4982 = !DILocation(line: 306, column: 9, scope: !4861)
!4983 = !DILocation(line: 307, column: 1, scope: !4861)
!4984 = !DILocation(line: 306, column: 2, scope: !4861)
!4985 = distinct !DISubprogram(name: "msdos_unlink", scope: !3, file: !3, line: 402, type: !3722, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4986)
!4986 = !{!4987, !4988, !4989, !4990, !4991, !4992, !4993}
!4987 = !DILocalVariable(name: "dir", arg: 1, scope: !4985, file: !3, line: 402, type: !339)
!4988 = !DILocalVariable(name: "dentry", arg: 2, scope: !4985, file: !3, line: 402, type: !374)
!4989 = !DILocalVariable(name: "inode", scope: !4985, file: !3, line: 404, type: !339)
!4990 = !DILocalVariable(name: "sb", scope: !4985, file: !3, line: 405, type: !490)
!4991 = !DILocalVariable(name: "sinfo", scope: !4985, file: !3, line: 406, type: !4755)
!4992 = !DILocalVariable(name: "err", scope: !4985, file: !3, line: 407, type: !96)
!4993 = !DILabel(scope: !4985, name: "out", file: !3, line: 420)
!4994 = !DILocation(line: 402, column: 39, scope: !4985)
!4995 = !DILocation(line: 402, column: 59, scope: !4985)
!4996 = !DILocation(line: 404, column: 2, scope: !4985)
!4997 = !DILocation(line: 404, column: 16, scope: !4985)
!4998 = !DILocation(line: 404, column: 32, scope: !4985)
!4999 = !DILocation(line: 404, column: 24, scope: !4985)
!5000 = !DILocation(line: 405, column: 2, scope: !4985)
!5001 = !DILocation(line: 405, column: 22, scope: !4985)
!5002 = !DILocation(line: 405, column: 27, scope: !4985)
!5003 = !DILocation(line: 405, column: 34, scope: !4985)
!5004 = !DILocation(line: 406, column: 2, scope: !4985)
!5005 = !DILocation(line: 406, column: 23, scope: !4985)
!5006 = !DILocation(line: 407, column: 2, scope: !4985)
!5007 = !DILocation(line: 407, column: 6, scope: !4985)
!5008 = !DILocation(line: 409, column: 23, scope: !4985)
!5009 = !DILocation(line: 409, column: 14, scope: !4985)
!5010 = !DILocation(line: 409, column: 28, scope: !4985)
!5011 = !DILocation(line: 409, column: 2, scope: !4985)
!5012 = !DILocation(line: 410, column: 19, scope: !4985)
!5013 = !DILocation(line: 410, column: 24, scope: !4985)
!5014 = !DILocation(line: 410, column: 32, scope: !4985)
!5015 = !DILocation(line: 410, column: 39, scope: !4985)
!5016 = !DILocation(line: 410, column: 45, scope: !4985)
!5017 = !DILocation(line: 410, column: 53, scope: !4985)
!5018 = !DILocation(line: 410, column: 60, scope: !4985)
!5019 = !DILocation(line: 410, column: 8, scope: !4985)
!5020 = !DILocation(line: 410, column: 6, scope: !4985)
!5021 = !DILocation(line: 411, column: 6, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 411, column: 6)
!5023 = !DILocation(line: 411, column: 6, scope: !4985)
!5024 = !DILocation(line: 412, column: 3, scope: !5022)
!5025 = !DILocation(line: 414, column: 27, scope: !4985)
!5026 = !DILocation(line: 414, column: 8, scope: !4985)
!5027 = !DILocation(line: 414, column: 6, scope: !4985)
!5028 = !DILocation(line: 415, column: 6, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 415, column: 6)
!5030 = !DILocation(line: 415, column: 6, scope: !4985)
!5031 = !DILocation(line: 416, column: 3, scope: !5029)
!5032 = !DILocation(line: 417, column: 14, scope: !4985)
!5033 = !DILocation(line: 417, column: 2, scope: !4985)
!5034 = !DILocation(line: 418, column: 20, scope: !4985)
!5035 = !DILocation(line: 418, column: 2, scope: !4985)
!5036 = !DILocation(line: 419, column: 13, scope: !4985)
!5037 = !DILocation(line: 419, column: 2, scope: !4985)
!5038 = !DILocation(line: 420, column: 1, scope: !4985)
!5039 = !DILocation(line: 421, column: 25, scope: !4985)
!5040 = !DILocation(line: 421, column: 16, scope: !4985)
!5041 = !DILocation(line: 421, column: 30, scope: !4985)
!5042 = !DILocation(line: 421, column: 2, scope: !4985)
!5043 = !DILocation(line: 422, column: 7, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 422, column: 6)
!5045 = !DILocation(line: 422, column: 6, scope: !4985)
!5046 = !DILocation(line: 423, column: 26, scope: !5044)
!5047 = !DILocation(line: 423, column: 30, scope: !5044)
!5048 = !DILocation(line: 423, column: 35, scope: !5044)
!5049 = !DILocation(line: 423, column: 9, scope: !5044)
!5050 = !DILocation(line: 423, column: 7, scope: !5044)
!5051 = !DILocation(line: 423, column: 3, scope: !5044)
!5052 = !DILocation(line: 425, column: 9, scope: !4985)
!5053 = !DILocation(line: 426, column: 1, scope: !4985)
!5054 = !DILocation(line: 425, column: 2, scope: !4985)
!5055 = distinct !DISubprogram(name: "msdos_mkdir", scope: !3, file: !3, line: 342, type: !3730, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5056)
!5056 = !{!5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070}
!5057 = !DILocalVariable(name: "idmap", arg: 1, scope: !5055, file: !3, line: 342, type: !3660)
!5058 = !DILocalVariable(name: "dir", arg: 2, scope: !5055, file: !3, line: 342, type: !339)
!5059 = !DILocalVariable(name: "dentry", arg: 3, scope: !5055, file: !3, line: 343, type: !374)
!5060 = !DILocalVariable(name: "mode", arg: 4, scope: !5055, file: !3, line: 343, type: !301)
!5061 = !DILocalVariable(name: "sb", scope: !5055, file: !3, line: 345, type: !490)
!5062 = !DILocalVariable(name: "sinfo", scope: !5055, file: !3, line: 346, type: !4755)
!5063 = !DILocalVariable(name: "inode", scope: !5055, file: !3, line: 347, type: !339)
!5064 = !DILocalVariable(name: "msdos_name", scope: !5055, file: !3, line: 348, type: !4873)
!5065 = !DILocalVariable(name: "ts", scope: !5055, file: !3, line: 349, type: !3771)
!5066 = !DILocalVariable(name: "err", scope: !5055, file: !3, line: 350, type: !96)
!5067 = !DILocalVariable(name: "is_hid", scope: !5055, file: !3, line: 350, type: !96)
!5068 = !DILocalVariable(name: "cluster", scope: !5055, file: !3, line: 350, type: !96)
!5069 = !DILabel(scope: !5055, name: "out_free", file: !3, line: 394)
!5070 = !DILabel(scope: !5055, name: "out", file: !3, line: 396)
!5071 = !DILocation(line: 342, column: 42, scope: !5055)
!5072 = !DILocation(line: 342, column: 63, scope: !5055)
!5073 = !DILocation(line: 343, column: 25, scope: !5055)
!5074 = !DILocation(line: 343, column: 41, scope: !5055)
!5075 = !DILocation(line: 345, column: 2, scope: !5055)
!5076 = !DILocation(line: 345, column: 22, scope: !5055)
!5077 = !DILocation(line: 345, column: 27, scope: !5055)
!5078 = !DILocation(line: 345, column: 32, scope: !5055)
!5079 = !DILocation(line: 346, column: 2, scope: !5055)
!5080 = !DILocation(line: 346, column: 23, scope: !5055)
!5081 = !DILocation(line: 347, column: 2, scope: !5055)
!5082 = !DILocation(line: 347, column: 16, scope: !5055)
!5083 = !DILocation(line: 348, column: 2, scope: !5055)
!5084 = !DILocation(line: 348, column: 16, scope: !5055)
!5085 = !DILocation(line: 349, column: 2, scope: !5055)
!5086 = !DILocation(line: 349, column: 20, scope: !5055)
!5087 = !DILocation(line: 350, column: 2, scope: !5055)
!5088 = !DILocation(line: 350, column: 6, scope: !5055)
!5089 = !DILocation(line: 350, column: 11, scope: !5055)
!5090 = !DILocation(line: 350, column: 19, scope: !5055)
!5091 = !DILocation(line: 352, column: 23, scope: !5055)
!5092 = !DILocation(line: 352, column: 14, scope: !5055)
!5093 = !DILocation(line: 352, column: 28, scope: !5055)
!5094 = !DILocation(line: 352, column: 2, scope: !5055)
!5095 = !DILocation(line: 354, column: 26, scope: !5055)
!5096 = !DILocation(line: 354, column: 34, scope: !5055)
!5097 = !DILocation(line: 354, column: 41, scope: !5055)
!5098 = !DILocation(line: 354, column: 47, scope: !5055)
!5099 = !DILocation(line: 354, column: 55, scope: !5055)
!5100 = !DILocation(line: 354, column: 62, scope: !5055)
!5101 = !DILocation(line: 355, column: 5, scope: !5055)
!5102 = !DILocation(line: 355, column: 27, scope: !5055)
!5103 = !DILocation(line: 355, column: 18, scope: !5055)
!5104 = !DILocation(line: 355, column: 32, scope: !5055)
!5105 = !DILocation(line: 354, column: 8, scope: !5055)
!5106 = !DILocation(line: 354, column: 6, scope: !5055)
!5107 = !DILocation(line: 356, column: 6, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 356, column: 6)
!5109 = !DILocation(line: 356, column: 6, scope: !5055)
!5110 = !DILocation(line: 357, column: 3, scope: !5108)
!5111 = !DILocation(line: 358, column: 12, scope: !5055)
!5112 = !DILocation(line: 358, column: 20, scope: !5055)
!5113 = !DILocation(line: 358, column: 27, scope: !5055)
!5114 = !DILocation(line: 358, column: 35, scope: !5055)
!5115 = !DILocation(line: 358, column: 43, scope: !5055)
!5116 = !DILocation(line: 358, column: 47, scope: !5055)
!5117 = !DILocation(line: 358, column: 61, scope: !5055)
!5118 = !DILocation(line: 0, scope: !5055)
!5119 = !DILocation(line: 358, column: 9, scope: !5055)
!5120 = !DILocation(line: 360, column: 16, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 360, column: 6)
!5122 = !DILocation(line: 360, column: 21, scope: !5121)
!5123 = !DILocation(line: 360, column: 7, scope: !5121)
!5124 = !DILocation(line: 360, column: 6, scope: !5055)
!5125 = !DILocation(line: 361, column: 16, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 360, column: 42)
!5127 = !DILocation(line: 361, column: 3, scope: !5126)
!5128 = !DILocation(line: 362, column: 7, scope: !5126)
!5129 = !DILocation(line: 363, column: 3, scope: !5126)
!5130 = !DILocation(line: 366, column: 7, scope: !5055)
!5131 = !DILocation(line: 366, column: 20, scope: !5055)
!5132 = !DILocation(line: 367, column: 30, scope: !5055)
!5133 = !DILocation(line: 367, column: 12, scope: !5055)
!5134 = !DILocation(line: 367, column: 10, scope: !5055)
!5135 = !DILocation(line: 368, column: 6, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 368, column: 6)
!5137 = !DILocation(line: 368, column: 14, scope: !5136)
!5138 = !DILocation(line: 368, column: 6, scope: !5055)
!5139 = !DILocation(line: 369, column: 9, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 368, column: 19)
!5141 = !DILocation(line: 369, column: 7, scope: !5140)
!5142 = !DILocation(line: 370, column: 3, scope: !5140)
!5143 = !DILocation(line: 372, column: 24, scope: !5055)
!5144 = !DILocation(line: 372, column: 29, scope: !5055)
!5145 = !DILocation(line: 372, column: 44, scope: !5055)
!5146 = !DILocation(line: 372, column: 52, scope: !5055)
!5147 = !DILocation(line: 372, column: 8, scope: !5055)
!5148 = !DILocation(line: 372, column: 6, scope: !5055)
!5149 = !DILocation(line: 373, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 373, column: 6)
!5151 = !DILocation(line: 373, column: 6, scope: !5055)
!5152 = !DILocation(line: 374, column: 3, scope: !5150)
!5153 = !DILocation(line: 375, column: 12, scope: !5055)
!5154 = !DILocation(line: 375, column: 2, scope: !5055)
!5155 = !DILocation(line: 377, column: 26, scope: !5055)
!5156 = !DILocation(line: 377, column: 36, scope: !5055)
!5157 = !DILocation(line: 377, column: 46, scope: !5055)
!5158 = !DILocation(line: 377, column: 10, scope: !5055)
!5159 = !DILocation(line: 377, column: 8, scope: !5055)
!5160 = !DILocation(line: 378, column: 15, scope: !5055)
!5161 = !DILocation(line: 378, column: 2, scope: !5055)
!5162 = !DILocation(line: 379, column: 13, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 379, column: 6)
!5164 = !DILocation(line: 379, column: 6, scope: !5163)
!5165 = !DILocation(line: 379, column: 6, scope: !5055)
!5166 = !DILocation(line: 380, column: 17, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 379, column: 21)
!5168 = !DILocation(line: 380, column: 9, scope: !5167)
!5169 = !DILocation(line: 380, column: 7, scope: !5167)
!5170 = !DILocation(line: 382, column: 3, scope: !5167)
!5171 = !DILocation(line: 384, column: 12, scope: !5055)
!5172 = !DILocation(line: 384, column: 2, scope: !5055)
!5173 = !DILocation(line: 385, column: 20, scope: !5055)
!5174 = !DILocation(line: 385, column: 2, scope: !5055)
!5175 = !DILocation(line: 388, column: 16, scope: !5055)
!5176 = !DILocation(line: 388, column: 24, scope: !5055)
!5177 = !DILocation(line: 388, column: 2, scope: !5055)
!5178 = !DILocation(line: 390, column: 25, scope: !5055)
!5179 = !DILocation(line: 390, column: 16, scope: !5055)
!5180 = !DILocation(line: 390, column: 30, scope: !5055)
!5181 = !DILocation(line: 390, column: 2, scope: !5055)
!5182 = !DILocation(line: 391, column: 19, scope: !5055)
!5183 = !DILocation(line: 391, column: 23, scope: !5055)
!5184 = !DILocation(line: 391, column: 28, scope: !5055)
!5185 = !DILocation(line: 391, column: 2, scope: !5055)
!5186 = !DILocation(line: 392, column: 2, scope: !5055)
!5187 = !DILocation(line: 394, column: 1, scope: !5055)
!5188 = !DILocation(line: 395, column: 20, scope: !5055)
!5189 = !DILocation(line: 395, column: 25, scope: !5055)
!5190 = !DILocation(line: 395, column: 2, scope: !5055)
!5191 = !DILocation(line: 396, column: 1, scope: !5055)
!5192 = !DILocation(line: 397, column: 25, scope: !5055)
!5193 = !DILocation(line: 397, column: 16, scope: !5055)
!5194 = !DILocation(line: 397, column: 30, scope: !5055)
!5195 = !DILocation(line: 397, column: 2, scope: !5055)
!5196 = !DILocation(line: 398, column: 9, scope: !5055)
!5197 = !DILocation(line: 398, column: 2, scope: !5055)
!5198 = !DILocation(line: 399, column: 1, scope: !5055)
!5199 = distinct !DISubprogram(name: "msdos_rmdir", scope: !3, file: !3, line: 310, type: !3722, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5200)
!5200 = !{!5201, !5202, !5203, !5204, !5205, !5206, !5207}
!5201 = !DILocalVariable(name: "dir", arg: 1, scope: !5199, file: !3, line: 310, type: !339)
!5202 = !DILocalVariable(name: "dentry", arg: 2, scope: !5199, file: !3, line: 310, type: !374)
!5203 = !DILocalVariable(name: "sb", scope: !5199, file: !3, line: 312, type: !490)
!5204 = !DILocalVariable(name: "inode", scope: !5199, file: !3, line: 313, type: !339)
!5205 = !DILocalVariable(name: "sinfo", scope: !5199, file: !3, line: 314, type: !4755)
!5206 = !DILocalVariable(name: "err", scope: !5199, file: !3, line: 315, type: !96)
!5207 = !DILabel(scope: !5199, name: "out", file: !3, line: 333)
!5208 = !DILocation(line: 310, column: 38, scope: !5199)
!5209 = !DILocation(line: 310, column: 58, scope: !5199)
!5210 = !DILocation(line: 312, column: 2, scope: !5199)
!5211 = !DILocation(line: 312, column: 22, scope: !5199)
!5212 = !DILocation(line: 312, column: 27, scope: !5199)
!5213 = !DILocation(line: 312, column: 32, scope: !5199)
!5214 = !DILocation(line: 313, column: 2, scope: !5199)
!5215 = !DILocation(line: 313, column: 16, scope: !5199)
!5216 = !DILocation(line: 313, column: 32, scope: !5199)
!5217 = !DILocation(line: 313, column: 24, scope: !5199)
!5218 = !DILocation(line: 314, column: 2, scope: !5199)
!5219 = !DILocation(line: 314, column: 23, scope: !5199)
!5220 = !DILocation(line: 315, column: 2, scope: !5199)
!5221 = !DILocation(line: 315, column: 6, scope: !5199)
!5222 = !DILocation(line: 317, column: 23, scope: !5199)
!5223 = !DILocation(line: 317, column: 14, scope: !5199)
!5224 = !DILocation(line: 317, column: 28, scope: !5199)
!5225 = !DILocation(line: 317, column: 2, scope: !5199)
!5226 = !DILocation(line: 318, column: 22, scope: !5199)
!5227 = !DILocation(line: 318, column: 8, scope: !5199)
!5228 = !DILocation(line: 318, column: 6, scope: !5199)
!5229 = !DILocation(line: 319, column: 6, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 319, column: 6)
!5231 = !DILocation(line: 319, column: 6, scope: !5199)
!5232 = !DILocation(line: 320, column: 3, scope: !5230)
!5233 = !DILocation(line: 321, column: 19, scope: !5199)
!5234 = !DILocation(line: 321, column: 24, scope: !5199)
!5235 = !DILocation(line: 321, column: 32, scope: !5199)
!5236 = !DILocation(line: 321, column: 39, scope: !5199)
!5237 = !DILocation(line: 321, column: 45, scope: !5199)
!5238 = !DILocation(line: 321, column: 53, scope: !5199)
!5239 = !DILocation(line: 321, column: 60, scope: !5199)
!5240 = !DILocation(line: 321, column: 8, scope: !5199)
!5241 = !DILocation(line: 321, column: 6, scope: !5199)
!5242 = !DILocation(line: 322, column: 6, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 322, column: 6)
!5244 = !DILocation(line: 322, column: 6, scope: !5199)
!5245 = !DILocation(line: 323, column: 3, scope: !5243)
!5246 = !DILocation(line: 325, column: 27, scope: !5199)
!5247 = !DILocation(line: 325, column: 8, scope: !5199)
!5248 = !DILocation(line: 325, column: 6, scope: !5199)
!5249 = !DILocation(line: 326, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 326, column: 6)
!5251 = !DILocation(line: 326, column: 6, scope: !5199)
!5252 = !DILocation(line: 327, column: 3, scope: !5250)
!5253 = !DILocation(line: 328, column: 13, scope: !5199)
!5254 = !DILocation(line: 328, column: 2, scope: !5199)
!5255 = !DILocation(line: 330, column: 14, scope: !5199)
!5256 = !DILocation(line: 330, column: 2, scope: !5199)
!5257 = !DILocation(line: 331, column: 20, scope: !5199)
!5258 = !DILocation(line: 331, column: 2, scope: !5199)
!5259 = !DILocation(line: 332, column: 13, scope: !5199)
!5260 = !DILocation(line: 332, column: 2, scope: !5199)
!5261 = !DILocation(line: 333, column: 1, scope: !5199)
!5262 = !DILocation(line: 334, column: 25, scope: !5199)
!5263 = !DILocation(line: 334, column: 16, scope: !5199)
!5264 = !DILocation(line: 334, column: 30, scope: !5199)
!5265 = !DILocation(line: 334, column: 2, scope: !5199)
!5266 = !DILocation(line: 335, column: 7, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 335, column: 6)
!5268 = !DILocation(line: 335, column: 6, scope: !5199)
!5269 = !DILocation(line: 336, column: 26, scope: !5267)
!5270 = !DILocation(line: 336, column: 30, scope: !5267)
!5271 = !DILocation(line: 336, column: 35, scope: !5267)
!5272 = !DILocation(line: 336, column: 9, scope: !5267)
!5273 = !DILocation(line: 336, column: 7, scope: !5267)
!5274 = !DILocation(line: 336, column: 3, scope: !5267)
!5275 = !DILocation(line: 338, column: 9, scope: !5199)
!5276 = !DILocation(line: 339, column: 1, scope: !5199)
!5277 = !DILocation(line: 338, column: 2, scope: !5199)
!5278 = distinct !DISubprogram(name: "msdos_rename", scope: !3, file: !3, line: 597, type: !3739, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5279)
!5279 = !{!5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291}
!5280 = !DILocalVariable(name: "idmap", arg: 1, scope: !5278, file: !3, line: 597, type: !3660)
!5281 = !DILocalVariable(name: "old_dir", arg: 2, scope: !5278, file: !3, line: 598, type: !339)
!5282 = !DILocalVariable(name: "old_dentry", arg: 3, scope: !5278, file: !3, line: 598, type: !374)
!5283 = !DILocalVariable(name: "new_dir", arg: 4, scope: !5278, file: !3, line: 599, type: !339)
!5284 = !DILocalVariable(name: "new_dentry", arg: 5, scope: !5278, file: !3, line: 599, type: !374)
!5285 = !DILocalVariable(name: "flags", arg: 6, scope: !5278, file: !3, line: 600, type: !7)
!5286 = !DILocalVariable(name: "sb", scope: !5278, file: !3, line: 602, type: !490)
!5287 = !DILocalVariable(name: "old_msdos_name", scope: !5278, file: !3, line: 603, type: !4873)
!5288 = !DILocalVariable(name: "new_msdos_name", scope: !5278, file: !3, line: 603, type: !4873)
!5289 = !DILocalVariable(name: "err", scope: !5278, file: !3, line: 604, type: !96)
!5290 = !DILocalVariable(name: "is_hid", scope: !5278, file: !3, line: 604, type: !96)
!5291 = !DILabel(scope: !5278, name: "out", file: !3, line: 627)
!5292 = !DILocation(line: 597, column: 43, scope: !5278)
!5293 = !DILocation(line: 598, column: 18, scope: !5278)
!5294 = !DILocation(line: 598, column: 42, scope: !5278)
!5295 = !DILocation(line: 599, column: 18, scope: !5278)
!5296 = !DILocation(line: 599, column: 42, scope: !5278)
!5297 = !DILocation(line: 600, column: 17, scope: !5278)
!5298 = !DILocation(line: 602, column: 2, scope: !5278)
!5299 = !DILocation(line: 602, column: 22, scope: !5278)
!5300 = !DILocation(line: 602, column: 27, scope: !5278)
!5301 = !DILocation(line: 602, column: 36, scope: !5278)
!5302 = !DILocation(line: 603, column: 2, scope: !5278)
!5303 = !DILocation(line: 603, column: 16, scope: !5278)
!5304 = !DILocation(line: 603, column: 44, scope: !5278)
!5305 = !DILocation(line: 604, column: 2, scope: !5278)
!5306 = !DILocation(line: 604, column: 6, scope: !5278)
!5307 = !DILocation(line: 604, column: 11, scope: !5278)
!5308 = !DILocation(line: 606, column: 6, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 606, column: 6)
!5310 = !DILocation(line: 606, column: 12, scope: !5309)
!5311 = !DILocation(line: 606, column: 6, scope: !5278)
!5312 = !DILocation(line: 607, column: 3, scope: !5309)
!5313 = !DILocation(line: 609, column: 23, scope: !5278)
!5314 = !DILocation(line: 609, column: 14, scope: !5278)
!5315 = !DILocation(line: 609, column: 28, scope: !5278)
!5316 = !DILocation(line: 609, column: 2, scope: !5278)
!5317 = !DILocation(line: 611, column: 26, scope: !5278)
!5318 = !DILocation(line: 611, column: 38, scope: !5278)
!5319 = !DILocation(line: 611, column: 45, scope: !5278)
!5320 = !DILocation(line: 612, column: 5, scope: !5278)
!5321 = !DILocation(line: 612, column: 17, scope: !5278)
!5322 = !DILocation(line: 612, column: 24, scope: !5278)
!5323 = !DILocation(line: 612, column: 29, scope: !5278)
!5324 = !DILocation(line: 613, column: 15, scope: !5278)
!5325 = !DILocation(line: 613, column: 24, scope: !5278)
!5326 = !DILocation(line: 613, column: 6, scope: !5278)
!5327 = !DILocation(line: 613, column: 31, scope: !5278)
!5328 = !DILocation(line: 611, column: 8, scope: !5278)
!5329 = !DILocation(line: 611, column: 6, scope: !5278)
!5330 = !DILocation(line: 614, column: 6, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 614, column: 6)
!5332 = !DILocation(line: 614, column: 6, scope: !5278)
!5333 = !DILocation(line: 615, column: 3, scope: !5331)
!5334 = !DILocation(line: 616, column: 26, scope: !5278)
!5335 = !DILocation(line: 616, column: 38, scope: !5278)
!5336 = !DILocation(line: 616, column: 45, scope: !5278)
!5337 = !DILocation(line: 617, column: 5, scope: !5278)
!5338 = !DILocation(line: 617, column: 17, scope: !5278)
!5339 = !DILocation(line: 617, column: 24, scope: !5278)
!5340 = !DILocation(line: 617, column: 29, scope: !5278)
!5341 = !DILocation(line: 618, column: 15, scope: !5278)
!5342 = !DILocation(line: 618, column: 24, scope: !5278)
!5343 = !DILocation(line: 618, column: 6, scope: !5278)
!5344 = !DILocation(line: 618, column: 31, scope: !5278)
!5345 = !DILocation(line: 616, column: 8, scope: !5278)
!5346 = !DILocation(line: 616, column: 6, scope: !5278)
!5347 = !DILocation(line: 619, column: 6, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 619, column: 6)
!5349 = !DILocation(line: 619, column: 6, scope: !5278)
!5350 = !DILocation(line: 620, column: 3, scope: !5348)
!5351 = !DILocation(line: 623, column: 8, scope: !5278)
!5352 = !DILocation(line: 623, column: 20, scope: !5278)
!5353 = !DILocation(line: 623, column: 27, scope: !5278)
!5354 = !DILocation(line: 623, column: 35, scope: !5278)
!5355 = !DILocation(line: 623, column: 43, scope: !5278)
!5356 = !DILocation(line: 623, column: 47, scope: !5278)
!5357 = !DILocation(line: 623, column: 65, scope: !5278)
!5358 = !DILocation(line: 0, scope: !5278)
!5359 = !DILocation(line: 622, column: 9, scope: !5278)
!5360 = !DILocation(line: 625, column: 24, scope: !5278)
!5361 = !DILocation(line: 625, column: 33, scope: !5278)
!5362 = !DILocation(line: 625, column: 49, scope: !5278)
!5363 = !DILocation(line: 626, column: 10, scope: !5278)
!5364 = !DILocation(line: 626, column: 19, scope: !5278)
!5365 = !DILocation(line: 626, column: 35, scope: !5278)
!5366 = !DILocation(line: 626, column: 47, scope: !5278)
!5367 = !DILocation(line: 625, column: 8, scope: !5278)
!5368 = !DILocation(line: 625, column: 6, scope: !5278)
!5369 = !DILocation(line: 625, column: 2, scope: !5278)
!5370 = !DILocation(line: 627, column: 1, scope: !5278)
!5371 = !DILocation(line: 628, column: 25, scope: !5278)
!5372 = !DILocation(line: 628, column: 16, scope: !5278)
!5373 = !DILocation(line: 628, column: 30, scope: !5278)
!5374 = !DILocation(line: 628, column: 2, scope: !5278)
!5375 = !DILocation(line: 629, column: 7, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 629, column: 6)
!5377 = !DILocation(line: 629, column: 6, scope: !5278)
!5378 = !DILocation(line: 630, column: 26, scope: !5376)
!5379 = !DILocation(line: 630, column: 30, scope: !5376)
!5380 = !DILocation(line: 630, column: 39, scope: !5376)
!5381 = !DILocation(line: 630, column: 9, scope: !5376)
!5382 = !DILocation(line: 630, column: 7, scope: !5376)
!5383 = !DILocation(line: 630, column: 3, scope: !5376)
!5384 = !DILocation(line: 631, column: 9, scope: !5278)
!5385 = !DILocation(line: 631, column: 2, scope: !5278)
!5386 = !DILocation(line: 632, column: 1, scope: !5278)
!5387 = !DISubprogram(name: "mutex_lock", scope: !640, file: !640, line: 227, type: !5388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{null, !5390}
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!5391 = distinct !DISubprogram(name: "msdos_find", scope: !3, file: !3, line: 119, type: !5392, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5395)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!96, !339, !416, !96, !5394}
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!5395 = !{!5396, !5397, !5398, !5399, !5400, !5401, !5402}
!5396 = !DILocalVariable(name: "dir", arg: 1, scope: !5391, file: !3, line: 119, type: !339)
!5397 = !DILocalVariable(name: "name", arg: 2, scope: !5391, file: !3, line: 119, type: !416)
!5398 = !DILocalVariable(name: "len", arg: 3, scope: !5391, file: !3, line: 119, type: !96)
!5399 = !DILocalVariable(name: "sinfo", arg: 4, scope: !5391, file: !3, line: 120, type: !5394)
!5400 = !DILocalVariable(name: "sbi", scope: !5391, file: !3, line: 122, type: !4646)
!5401 = !DILocalVariable(name: "msdos_name", scope: !5391, file: !3, line: 123, type: !4873)
!5402 = !DILocalVariable(name: "err", scope: !5391, file: !3, line: 124, type: !96)
!5403 = !DILocation(line: 119, column: 37, scope: !5391)
!5404 = !DILocation(line: 119, column: 63, scope: !5391)
!5405 = !DILocation(line: 119, column: 73, scope: !5391)
!5406 = !DILocation(line: 120, column: 31, scope: !5391)
!5407 = !DILocation(line: 122, column: 2, scope: !5391)
!5408 = !DILocation(line: 122, column: 24, scope: !5391)
!5409 = !DILocation(line: 122, column: 39, scope: !5391)
!5410 = !DILocation(line: 122, column: 44, scope: !5391)
!5411 = !DILocation(line: 122, column: 30, scope: !5391)
!5412 = !DILocation(line: 123, column: 2, scope: !5391)
!5413 = !DILocation(line: 123, column: 16, scope: !5391)
!5414 = !DILocation(line: 124, column: 2, scope: !5391)
!5415 = !DILocation(line: 124, column: 6, scope: !5391)
!5416 = !DILocation(line: 126, column: 26, scope: !5391)
!5417 = !DILocation(line: 126, column: 32, scope: !5391)
!5418 = !DILocation(line: 126, column: 37, scope: !5391)
!5419 = !DILocation(line: 126, column: 50, scope: !5391)
!5420 = !DILocation(line: 126, column: 55, scope: !5391)
!5421 = !DILocation(line: 126, column: 8, scope: !5391)
!5422 = !DILocation(line: 126, column: 6, scope: !5391)
!5423 = !DILocation(line: 127, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 127, column: 6)
!5425 = !DILocation(line: 127, column: 6, scope: !5391)
!5426 = !DILocation(line: 128, column: 3, scope: !5424)
!5427 = !DILocation(line: 130, column: 17, scope: !5391)
!5428 = !DILocation(line: 130, column: 22, scope: !5391)
!5429 = !DILocation(line: 130, column: 34, scope: !5391)
!5430 = !DILocation(line: 130, column: 8, scope: !5391)
!5431 = !DILocation(line: 130, column: 6, scope: !5391)
!5432 = !DILocation(line: 131, column: 7, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 131, column: 6)
!5434 = !DILocation(line: 131, column: 11, scope: !5433)
!5435 = !DILocation(line: 131, column: 14, scope: !5433)
!5436 = !DILocation(line: 131, column: 19, scope: !5433)
!5437 = !DILocation(line: 131, column: 27, scope: !5433)
!5438 = !DILocation(line: 131, column: 6, scope: !5391)
!5439 = !DILocation(line: 132, column: 7, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 132, column: 7)
!5441 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 131, column: 35)
!5442 = !DILocation(line: 132, column: 15, scope: !5440)
!5443 = !DILocation(line: 132, column: 7, scope: !5441)
!5444 = !DILocation(line: 133, column: 10, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 133, column: 8)
!5446 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 132, column: 23)
!5447 = !DILocation(line: 133, column: 17, scope: !5445)
!5448 = !DILocation(line: 133, column: 21, scope: !5445)
!5449 = !DILocation(line: 133, column: 26, scope: !5445)
!5450 = !DILocation(line: 133, column: 8, scope: !5446)
!5451 = !DILocation(line: 134, column: 9, scope: !5445)
!5452 = !DILocation(line: 134, column: 5, scope: !5445)
!5453 = !DILocation(line: 135, column: 3, scope: !5446)
!5454 = !DILocation(line: 136, column: 8, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 136, column: 8)
!5456 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 135, column: 10)
!5457 = !DILocation(line: 136, column: 15, scope: !5455)
!5458 = !DILocation(line: 136, column: 19, scope: !5455)
!5459 = !DILocation(line: 136, column: 24, scope: !5455)
!5460 = !DILocation(line: 136, column: 8, scope: !5456)
!5461 = !DILocation(line: 137, column: 9, scope: !5455)
!5462 = !DILocation(line: 137, column: 5, scope: !5455)
!5463 = !DILocation(line: 139, column: 7, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 139, column: 7)
!5465 = !DILocation(line: 139, column: 7, scope: !5441)
!5466 = !DILocation(line: 140, column: 11, scope: !5464)
!5467 = !DILocation(line: 140, column: 18, scope: !5464)
!5468 = !DILocation(line: 140, column: 4, scope: !5464)
!5469 = !DILocation(line: 141, column: 2, scope: !5441)
!5470 = !DILocation(line: 142, column: 9, scope: !5391)
!5471 = !DILocation(line: 142, column: 2, scope: !5391)
!5472 = !DILocation(line: 143, column: 1, scope: !5391)
!5473 = !DISubprogram(name: "fat_build_inode", scope: !4504, file: !4504, line: 415, type: !5474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{!339, !490, !4761, !500}
!5476 = distinct !DISubprogram(name: "brelse", scope: !4784, file: !4784, line: 311, type: !5477, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5479)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{null, !4782}
!5479 = !{!5480}
!5480 = !DILocalVariable(name: "bh", arg: 1, scope: !5476, file: !4784, line: 311, type: !4782)
!5481 = !DILocation(line: 311, column: 47, scope: !5476)
!5482 = !DILocation(line: 313, column: 6, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5476, file: !4784, line: 313, column: 6)
!5484 = !DILocation(line: 313, column: 6, scope: !5476)
!5485 = !DILocation(line: 314, column: 12, scope: !5483)
!5486 = !DILocation(line: 314, column: 3, scope: !5483)
!5487 = !DILocation(line: 315, column: 1, scope: !5476)
!5488 = distinct !DISubprogram(name: "ERR_PTR", scope: !5489, file: !5489, line: 39, type: !5490, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5492)
!5489 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!153, !295}
!5492 = !{!5493}
!5493 = !DILocalVariable(name: "error", arg: 1, scope: !5488, file: !5489, line: 39, type: !295)
!5494 = !DILocation(line: 39, column: 48, scope: !5488)
!5495 = !DILocation(line: 41, column: 18, scope: !5488)
!5496 = !DILocation(line: 41, column: 9, scope: !5488)
!5497 = !DILocation(line: 41, column: 2, scope: !5488)
!5498 = !DISubprogram(name: "mutex_unlock", scope: !640, file: !640, line: 246, type: !5388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5499 = !DISubprogram(name: "d_splice_alias", scope: !376, file: !376, line: 235, type: !5500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{!374, !339, !374}
!5502 = distinct !DISubprogram(name: "msdos_format_name", scope: !3, file: !3, line: 19, type: !5503, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5506)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!96, !416, !96, !4710, !5505}
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!5506 = !{!5507, !5508, !5509, !5510, !5511, !5512, !5513}
!5507 = !DILocalVariable(name: "name", arg: 1, scope: !5502, file: !3, line: 19, type: !416)
!5508 = !DILocalVariable(name: "len", arg: 2, scope: !5502, file: !3, line: 19, type: !96)
!5509 = !DILocalVariable(name: "res", arg: 3, scope: !5502, file: !3, line: 20, type: !4710)
!5510 = !DILocalVariable(name: "opts", arg: 4, scope: !5502, file: !3, line: 20, type: !5505)
!5511 = !DILocalVariable(name: "walk", scope: !5502, file: !3, line: 28, type: !4710)
!5512 = !DILocalVariable(name: "c", scope: !5502, file: !3, line: 29, type: !221)
!5513 = !DILocalVariable(name: "space", scope: !5502, file: !3, line: 30, type: !96)
!5514 = !DILocation(line: 19, column: 51, scope: !5502)
!5515 = !DILocation(line: 19, column: 61, scope: !5502)
!5516 = !DILocation(line: 20, column: 24, scope: !5502)
!5517 = !DILocation(line: 20, column: 55, scope: !5502)
!5518 = !DILocation(line: 28, column: 2, scope: !5502)
!5519 = !DILocation(line: 28, column: 17, scope: !5502)
!5520 = !DILocation(line: 29, column: 2, scope: !5502)
!5521 = !DILocation(line: 29, column: 16, scope: !5502)
!5522 = !DILocation(line: 30, column: 2, scope: !5502)
!5523 = !DILocation(line: 30, column: 6, scope: !5502)
!5524 = !DILocation(line: 32, column: 6, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 32, column: 6)
!5526 = !DILocation(line: 32, column: 14, scope: !5525)
!5527 = !DILocation(line: 32, column: 6, scope: !5502)
!5528 = !DILocation(line: 33, column: 7, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 33, column: 7)
!5530 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 32, column: 22)
!5531 = !DILocation(line: 33, column: 13, scope: !5529)
!5532 = !DILocation(line: 33, column: 7, scope: !5530)
!5533 = !DILocation(line: 35, column: 8, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 33, column: 21)
!5535 = !DILocation(line: 36, column: 7, scope: !5534)
!5536 = !DILocation(line: 37, column: 3, scope: !5534)
!5537 = !DILocation(line: 38, column: 4, scope: !5529)
!5538 = !DILocation(line: 39, column: 2, scope: !5530)
!5539 = !DILocation(line: 43, column: 8, scope: !5502)
!5540 = !DILocation(line: 44, column: 4, scope: !5502)
!5541 = !DILocation(line: 45, column: 14, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 45, column: 2)
!5543 = !DILocation(line: 45, column: 12, scope: !5542)
!5544 = !DILocation(line: 45, column: 7, scope: !5542)
!5545 = !DILocation(line: 45, column: 19, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 45, column: 2)
!5547 = !DILocation(line: 45, column: 23, scope: !5546)
!5548 = !DILocation(line: 45, column: 26, scope: !5546)
!5549 = !DILocation(line: 45, column: 33, scope: !5546)
!5550 = !DILocation(line: 45, column: 31, scope: !5546)
!5551 = !DILocation(line: 45, column: 37, scope: !5546)
!5552 = !DILocation(line: 0, scope: !5546)
!5553 = !DILocation(line: 45, column: 2, scope: !5542)
!5554 = !DILocation(line: 46, column: 12, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 45, column: 50)
!5556 = !DILocation(line: 46, column: 7, scope: !5555)
!5557 = !DILocation(line: 46, column: 5, scope: !5555)
!5558 = !DILocation(line: 47, column: 6, scope: !5555)
!5559 = !DILocation(line: 48, column: 7, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 48, column: 7)
!5561 = !DILocation(line: 48, column: 13, scope: !5560)
!5562 = !DILocation(line: 48, column: 24, scope: !5560)
!5563 = !DILocation(line: 48, column: 31, scope: !5560)
!5564 = !DILocation(line: 48, column: 52, scope: !5560)
!5565 = !DILocation(line: 48, column: 34, scope: !5560)
!5566 = !DILocation(line: 48, column: 7, scope: !5555)
!5567 = !DILocation(line: 49, column: 4, scope: !5560)
!5568 = !DILocation(line: 50, column: 7, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 50, column: 7)
!5570 = !DILocation(line: 50, column: 13, scope: !5569)
!5571 = !DILocation(line: 50, column: 24, scope: !5569)
!5572 = !DILocation(line: 50, column: 31, scope: !5569)
!5573 = !DILocation(line: 50, column: 56, scope: !5569)
!5574 = !DILocation(line: 50, column: 34, scope: !5569)
!5575 = !DILocation(line: 50, column: 7, scope: !5555)
!5576 = !DILocation(line: 51, column: 4, scope: !5569)
!5577 = !DILocation(line: 52, column: 7, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 52, column: 7)
!5579 = !DILocation(line: 52, column: 9, scope: !5578)
!5580 = !DILocation(line: 52, column: 16, scope: !5578)
!5581 = !DILocation(line: 52, column: 19, scope: !5578)
!5582 = !DILocation(line: 52, column: 21, scope: !5578)
!5583 = !DILocation(line: 52, column: 28, scope: !5578)
!5584 = !DILocation(line: 52, column: 31, scope: !5578)
!5585 = !DILocation(line: 52, column: 37, scope: !5578)
!5586 = !DILocation(line: 52, column: 48, scope: !5578)
!5587 = !DILocation(line: 52, column: 7, scope: !5555)
!5588 = !DILocation(line: 53, column: 4, scope: !5578)
!5589 = !DILocation(line: 54, column: 7, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 54, column: 7)
!5591 = !DILocation(line: 54, column: 9, scope: !5590)
!5592 = !DILocation(line: 54, column: 15, scope: !5590)
!5593 = !DILocation(line: 54, column: 18, scope: !5590)
!5594 = !DILocation(line: 54, column: 20, scope: !5590)
!5595 = !DILocation(line: 54, column: 27, scope: !5590)
!5596 = !DILocation(line: 54, column: 30, scope: !5590)
!5597 = !DILocation(line: 54, column: 32, scope: !5590)
!5598 = !DILocation(line: 54, column: 7, scope: !5555)
!5599 = !DILocation(line: 55, column: 4, scope: !5590)
!5600 = !DILocation(line: 64, column: 8, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 64, column: 7)
!5602 = !DILocation(line: 64, column: 15, scope: !5601)
!5603 = !DILocation(line: 64, column: 12, scope: !5601)
!5604 = !DILocation(line: 64, column: 21, scope: !5601)
!5605 = !DILocation(line: 64, column: 25, scope: !5601)
!5606 = !DILocation(line: 64, column: 27, scope: !5601)
!5607 = !DILocation(line: 64, column: 7, scope: !5555)
!5608 = !DILocation(line: 65, column: 6, scope: !5601)
!5609 = !DILocation(line: 65, column: 4, scope: !5601)
!5610 = !DILocation(line: 66, column: 7, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 66, column: 7)
!5612 = !DILocation(line: 66, column: 9, scope: !5611)
!5613 = !DILocation(line: 66, column: 7, scope: !5555)
!5614 = !DILocation(line: 67, column: 4, scope: !5611)
!5615 = !DILocation(line: 68, column: 12, scope: !5555)
!5616 = !DILocation(line: 68, column: 14, scope: !5555)
!5617 = !DILocation(line: 68, column: 9, scope: !5555)
!5618 = !DILocation(line: 69, column: 13, scope: !5555)
!5619 = !DILocation(line: 69, column: 19, scope: !5555)
!5620 = !DILocation(line: 69, column: 26, scope: !5555)
!5621 = !DILocation(line: 69, column: 29, scope: !5555)
!5622 = !DILocation(line: 69, column: 31, scope: !5555)
!5623 = !DILocation(line: 69, column: 38, scope: !5555)
!5624 = !DILocation(line: 69, column: 41, scope: !5555)
!5625 = !DILocation(line: 69, column: 43, scope: !5555)
!5626 = !DILocation(line: 69, column: 11, scope: !5555)
!5627 = !DILocation(line: 69, column: 53, scope: !5555)
!5628 = !DILocation(line: 69, column: 55, scope: !5555)
!5629 = !DILocation(line: 69, column: 62, scope: !5555)
!5630 = !DILocation(line: 69, column: 4, scope: !5555)
!5631 = !DILocation(line: 69, column: 9, scope: !5555)
!5632 = !DILocation(line: 70, column: 2, scope: !5555)
!5633 = !DILocation(line: 45, column: 46, scope: !5546)
!5634 = !DILocation(line: 45, column: 2, scope: !5546)
!5635 = distinct !{!5635, !5553, !5636, !5637, !5638}
!5636 = !DILocation(line: 70, column: 2, scope: !5542)
!5637 = !{!"llvm.loop.mustprogress"}
!5638 = !{!"llvm.loop.unroll.disable"}
!5639 = !DILocation(line: 71, column: 6, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 71, column: 6)
!5641 = !DILocation(line: 71, column: 6, scope: !5502)
!5642 = !DILocation(line: 72, column: 3, scope: !5640)
!5643 = !DILocation(line: 73, column: 6, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 73, column: 6)
!5645 = !DILocation(line: 73, column: 12, scope: !5644)
!5646 = !DILocation(line: 73, column: 23, scope: !5644)
!5647 = !DILocation(line: 73, column: 30, scope: !5644)
!5648 = !DILocation(line: 73, column: 33, scope: !5644)
!5649 = !DILocation(line: 73, column: 37, scope: !5644)
!5650 = !DILocation(line: 73, column: 40, scope: !5644)
!5651 = !DILocation(line: 73, column: 42, scope: !5644)
!5652 = !DILocation(line: 73, column: 6, scope: !5502)
!5653 = !DILocation(line: 74, column: 12, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 73, column: 50)
!5655 = !DILocation(line: 74, column: 7, scope: !5654)
!5656 = !DILocation(line: 74, column: 5, scope: !5654)
!5657 = !DILocation(line: 75, column: 6, scope: !5654)
!5658 = !DILocation(line: 76, column: 7, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 76, column: 7)
!5660 = !DILocation(line: 76, column: 9, scope: !5659)
!5661 = !DILocation(line: 76, column: 7, scope: !5654)
!5662 = !DILocation(line: 77, column: 4, scope: !5659)
!5663 = !DILocation(line: 78, column: 2, scope: !5654)
!5664 = !DILocation(line: 79, column: 2, scope: !5502)
!5665 = !DILocation(line: 79, column: 9, scope: !5502)
!5666 = !DILocation(line: 79, column: 11, scope: !5502)
!5667 = !DILocation(line: 79, column: 18, scope: !5502)
!5668 = !DILocation(line: 79, column: 24, scope: !5502)
!5669 = !DILocation(line: 0, scope: !5502)
!5670 = !DILocation(line: 80, column: 12, scope: !5502)
!5671 = !DILocation(line: 80, column: 7, scope: !5502)
!5672 = !DILocation(line: 80, column: 5, scope: !5502)
!5673 = distinct !{!5673, !5664, !5670, !5637, !5638}
!5674 = !DILocation(line: 81, column: 6, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 81, column: 6)
!5676 = !DILocation(line: 81, column: 8, scope: !5675)
!5677 = !DILocation(line: 81, column: 6, scope: !5502)
!5678 = !DILocation(line: 82, column: 3, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 81, column: 16)
!5680 = !DILocation(line: 82, column: 10, scope: !5679)
!5681 = !DILocation(line: 82, column: 17, scope: !5679)
!5682 = !DILocation(line: 82, column: 15, scope: !5679)
!5683 = !DILocation(line: 82, column: 21, scope: !5679)
!5684 = !DILocation(line: 83, column: 9, scope: !5679)
!5685 = !DILocation(line: 83, column: 12, scope: !5679)
!5686 = distinct !{!5686, !5678, !5687, !5637, !5638}
!5687 = !DILocation(line: 83, column: 14, scope: !5679)
!5688 = !DILocation(line: 84, column: 3, scope: !5679)
!5689 = !DILocation(line: 84, column: 10, scope: !5679)
!5690 = !DILocation(line: 84, column: 14, scope: !5679)
!5691 = !DILocation(line: 84, column: 18, scope: !5679)
!5692 = !DILocation(line: 84, column: 21, scope: !5679)
!5693 = !DILocation(line: 84, column: 28, scope: !5679)
!5694 = !DILocation(line: 84, column: 26, scope: !5679)
!5695 = !DILocation(line: 84, column: 32, scope: !5679)
!5696 = !DILocation(line: 0, scope: !5679)
!5697 = !DILocation(line: 85, column: 13, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 84, column: 46)
!5699 = !DILocation(line: 85, column: 8, scope: !5698)
!5700 = !DILocation(line: 85, column: 6, scope: !5698)
!5701 = !DILocation(line: 86, column: 7, scope: !5698)
!5702 = !DILocation(line: 87, column: 8, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 87, column: 8)
!5704 = !DILocation(line: 87, column: 14, scope: !5703)
!5705 = !DILocation(line: 87, column: 25, scope: !5703)
!5706 = !DILocation(line: 87, column: 32, scope: !5703)
!5707 = !DILocation(line: 87, column: 53, scope: !5703)
!5708 = !DILocation(line: 87, column: 35, scope: !5703)
!5709 = !DILocation(line: 87, column: 8, scope: !5698)
!5710 = !DILocation(line: 88, column: 5, scope: !5703)
!5711 = !DILocation(line: 89, column: 8, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 89, column: 8)
!5713 = !DILocation(line: 89, column: 14, scope: !5712)
!5714 = !DILocation(line: 89, column: 25, scope: !5712)
!5715 = !DILocation(line: 89, column: 32, scope: !5712)
!5716 = !DILocation(line: 90, column: 30, scope: !5712)
!5717 = !DILocation(line: 90, column: 8, scope: !5712)
!5718 = !DILocation(line: 89, column: 8, scope: !5698)
!5719 = !DILocation(line: 91, column: 5, scope: !5712)
!5720 = !DILocation(line: 92, column: 8, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 92, column: 8)
!5722 = !DILocation(line: 92, column: 10, scope: !5721)
!5723 = !DILocation(line: 92, column: 16, scope: !5721)
!5724 = !DILocation(line: 92, column: 19, scope: !5721)
!5725 = !DILocation(line: 92, column: 21, scope: !5721)
!5726 = !DILocation(line: 92, column: 28, scope: !5721)
!5727 = !DILocation(line: 92, column: 31, scope: !5721)
!5728 = !DILocation(line: 92, column: 33, scope: !5721)
!5729 = !DILocation(line: 92, column: 8, scope: !5698)
!5730 = !DILocation(line: 93, column: 5, scope: !5721)
!5731 = !DILocation(line: 94, column: 8, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 94, column: 8)
!5733 = !DILocation(line: 94, column: 10, scope: !5732)
!5734 = !DILocation(line: 94, column: 8, scope: !5698)
!5735 = !DILocation(line: 95, column: 9, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 95, column: 9)
!5737 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 94, column: 18)
!5738 = !DILocation(line: 95, column: 15, scope: !5736)
!5739 = !DILocation(line: 95, column: 26, scope: !5736)
!5740 = !DILocation(line: 95, column: 9, scope: !5737)
!5741 = !DILocation(line: 96, column: 6, scope: !5736)
!5742 = !DILocation(line: 97, column: 5, scope: !5737)
!5743 = !DILocation(line: 99, column: 8, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 99, column: 8)
!5745 = !DILocation(line: 99, column: 10, scope: !5744)
!5746 = !DILocation(line: 99, column: 17, scope: !5744)
!5747 = !DILocation(line: 99, column: 20, scope: !5744)
!5748 = !DILocation(line: 99, column: 22, scope: !5744)
!5749 = !DILocation(line: 99, column: 29, scope: !5744)
!5750 = !DILocation(line: 99, column: 32, scope: !5744)
!5751 = !DILocation(line: 99, column: 38, scope: !5744)
!5752 = !DILocation(line: 99, column: 49, scope: !5744)
!5753 = !DILocation(line: 99, column: 8, scope: !5698)
!5754 = !DILocation(line: 100, column: 5, scope: !5744)
!5755 = !DILocation(line: 101, column: 12, scope: !5698)
!5756 = !DILocation(line: 101, column: 14, scope: !5698)
!5757 = !DILocation(line: 101, column: 10, scope: !5698)
!5758 = !DILocation(line: 102, column: 9, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 102, column: 8)
!5760 = !DILocation(line: 102, column: 15, scope: !5759)
!5761 = !DILocation(line: 102, column: 22, scope: !5759)
!5762 = !DILocation(line: 102, column: 25, scope: !5759)
!5763 = !DILocation(line: 102, column: 27, scope: !5759)
!5764 = !DILocation(line: 102, column: 34, scope: !5759)
!5765 = !DILocation(line: 102, column: 37, scope: !5759)
!5766 = !DILocation(line: 102, column: 39, scope: !5759)
!5767 = !DILocation(line: 102, column: 8, scope: !5698)
!5768 = !DILocation(line: 103, column: 15, scope: !5759)
!5769 = !DILocation(line: 103, column: 17, scope: !5759)
!5770 = !DILocation(line: 103, column: 10, scope: !5759)
!5771 = !DILocation(line: 103, column: 13, scope: !5759)
!5772 = !DILocation(line: 103, column: 5, scope: !5759)
!5773 = !DILocation(line: 105, column: 15, scope: !5759)
!5774 = !DILocation(line: 105, column: 10, scope: !5759)
!5775 = !DILocation(line: 105, column: 13, scope: !5759)
!5776 = distinct !{!5776, !5688, !5777, !5637, !5638}
!5777 = !DILocation(line: 106, column: 3, scope: !5679)
!5778 = !DILocation(line: 107, column: 7, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 107, column: 7)
!5780 = !DILocation(line: 107, column: 7, scope: !5679)
!5781 = !DILocation(line: 108, column: 4, scope: !5779)
!5782 = !DILocation(line: 109, column: 7, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 109, column: 7)
!5784 = !DILocation(line: 109, column: 13, scope: !5783)
!5785 = !DILocation(line: 109, column: 24, scope: !5783)
!5786 = !DILocation(line: 109, column: 31, scope: !5783)
!5787 = !DILocation(line: 109, column: 34, scope: !5783)
!5788 = !DILocation(line: 109, column: 7, scope: !5679)
!5789 = !DILocation(line: 110, column: 4, scope: !5783)
!5790 = !DILocation(line: 111, column: 2, scope: !5679)
!5791 = !DILocation(line: 112, column: 2, scope: !5502)
!5792 = !DILocation(line: 112, column: 9, scope: !5502)
!5793 = !DILocation(line: 112, column: 16, scope: !5502)
!5794 = !DILocation(line: 112, column: 14, scope: !5502)
!5795 = !DILocation(line: 112, column: 20, scope: !5502)
!5796 = !DILocation(line: 113, column: 8, scope: !5502)
!5797 = !DILocation(line: 113, column: 11, scope: !5502)
!5798 = distinct !{!5798, !5791, !5799, !5637, !5638}
!5799 = !DILocation(line: 113, column: 13, scope: !5502)
!5800 = !DILocation(line: 115, column: 2, scope: !5502)
!5801 = !DILocation(line: 116, column: 1, scope: !5502)
!5802 = !DISubprogram(name: "fat_scan", scope: !4504, file: !4504, line: 330, type: !5803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5803 = !DISubroutineType(types: !5804)
!5804 = !{!96, !339, !416, !5394}
!5805 = !DISubprogram(name: "strchr", scope: !5806, file: !5806, line: 100, type: !5807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5806 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5807 = !DISubroutineType(types: !5808)
!5808 = !{!259, !178, !96}
!5809 = !DISubprogram(name: "__brelse", scope: !4784, file: !4784, line: 232, type: !5477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5810 = !DISubprogram(name: "current_time", scope: !15, file: !15, line: 1514, type: !5811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!3771, !339}
!5813 = distinct !DISubprogram(name: "msdos_add_entry", scope: !3, file: !3, line: 227, type: !5814, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5817)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!96, !339, !416, !96, !96, !96, !5816, !5394}
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!5817 = !{!5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5826, !5827, !5828, !5829}
!5818 = !DILocalVariable(name: "dir", arg: 1, scope: !5813, file: !3, line: 227, type: !339)
!5819 = !DILocalVariable(name: "name", arg: 2, scope: !5813, file: !3, line: 227, type: !416)
!5820 = !DILocalVariable(name: "is_dir", arg: 3, scope: !5813, file: !3, line: 228, type: !96)
!5821 = !DILocalVariable(name: "is_hid", arg: 4, scope: !5813, file: !3, line: 228, type: !96)
!5822 = !DILocalVariable(name: "cluster", arg: 5, scope: !5813, file: !3, line: 228, type: !96)
!5823 = !DILocalVariable(name: "ts", arg: 6, scope: !5813, file: !3, line: 229, type: !5816)
!5824 = !DILocalVariable(name: "sinfo", arg: 7, scope: !5813, file: !3, line: 229, type: !5394)
!5825 = !DILocalVariable(name: "sbi", scope: !5813, file: !3, line: 231, type: !4646)
!5826 = !DILocalVariable(name: "de", scope: !5813, file: !3, line: 232, type: !4762)
!5827 = !DILocalVariable(name: "time", scope: !5813, file: !3, line: 233, type: !4501)
!5828 = !DILocalVariable(name: "date", scope: !5813, file: !3, line: 233, type: !4501)
!5829 = !DILocalVariable(name: "err", scope: !5813, file: !3, line: 234, type: !96)
!5830 = !DILocation(line: 227, column: 42, scope: !5813)
!5831 = !DILocation(line: 227, column: 68, scope: !5813)
!5832 = !DILocation(line: 228, column: 11, scope: !5813)
!5833 = !DILocation(line: 228, column: 23, scope: !5813)
!5834 = !DILocation(line: 228, column: 35, scope: !5813)
!5835 = !DILocation(line: 229, column: 26, scope: !5813)
!5836 = !DILocation(line: 229, column: 52, scope: !5813)
!5837 = !DILocation(line: 231, column: 2, scope: !5813)
!5838 = !DILocation(line: 231, column: 24, scope: !5813)
!5839 = !DILocation(line: 231, column: 39, scope: !5813)
!5840 = !DILocation(line: 231, column: 44, scope: !5813)
!5841 = !DILocation(line: 231, column: 30, scope: !5813)
!5842 = !DILocation(line: 232, column: 2, scope: !5813)
!5843 = !DILocation(line: 232, column: 25, scope: !5813)
!5844 = !DILocation(line: 233, column: 2, scope: !5813)
!5845 = !DILocation(line: 233, column: 9, scope: !5813)
!5846 = !DILocation(line: 233, column: 15, scope: !5813)
!5847 = !DILocation(line: 234, column: 2, scope: !5813)
!5848 = !DILocation(line: 234, column: 6, scope: !5813)
!5849 = !DILocation(line: 236, column: 12, scope: !5813)
!5850 = !DILocation(line: 236, column: 2, scope: !5813)
!5851 = !DILocation(line: 236, column: 18, scope: !5813)
!5852 = !DILocation(line: 237, column: 12, scope: !5813)
!5853 = !DILocation(line: 237, column: 5, scope: !5813)
!5854 = !DILocation(line: 237, column: 10, scope: !5813)
!5855 = !DILocation(line: 238, column: 6, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 238, column: 6)
!5857 = !DILocation(line: 238, column: 6, scope: !5813)
!5858 = !DILocation(line: 239, column: 6, scope: !5856)
!5859 = !DILocation(line: 239, column: 11, scope: !5856)
!5860 = !DILocation(line: 239, column: 3, scope: !5856)
!5861 = !DILocation(line: 240, column: 5, scope: !5813)
!5862 = !DILocation(line: 240, column: 11, scope: !5813)
!5863 = !DILocation(line: 241, column: 20, scope: !5813)
!5864 = !DILocation(line: 241, column: 25, scope: !5813)
!5865 = !DILocation(line: 241, column: 2, scope: !5813)
!5866 = !DILocation(line: 242, column: 16, scope: !5813)
!5867 = !DILocation(line: 242, column: 22, scope: !5813)
!5868 = !DILocation(line: 242, column: 5, scope: !5813)
!5869 = !DILocation(line: 242, column: 11, scope: !5813)
!5870 = !DILocation(line: 243, column: 5, scope: !5813)
!5871 = !DILocation(line: 243, column: 11, scope: !5813)
!5872 = !DILocation(line: 244, column: 5, scope: !5813)
!5873 = !DILocation(line: 244, column: 14, scope: !5813)
!5874 = !DILocation(line: 245, column: 12, scope: !5813)
!5875 = !DILocation(line: 245, column: 5, scope: !5813)
!5876 = !DILocation(line: 245, column: 10, scope: !5813)
!5877 = !DILocation(line: 246, column: 12, scope: !5813)
!5878 = !DILocation(line: 246, column: 5, scope: !5813)
!5879 = !DILocation(line: 246, column: 10, scope: !5813)
!5880 = !DILocation(line: 247, column: 21, scope: !5813)
!5881 = !DILocation(line: 247, column: 2, scope: !5813)
!5882 = !DILocation(line: 248, column: 5, scope: !5813)
!5883 = !DILocation(line: 248, column: 10, scope: !5813)
!5884 = !DILocation(line: 250, column: 24, scope: !5813)
!5885 = !DILocation(line: 250, column: 37, scope: !5813)
!5886 = !DILocation(line: 250, column: 8, scope: !5813)
!5887 = !DILocation(line: 250, column: 6, scope: !5813)
!5888 = !DILocation(line: 251, column: 6, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 251, column: 6)
!5890 = !DILocation(line: 251, column: 6, scope: !5813)
!5891 = !DILocation(line: 252, column: 10, scope: !5889)
!5892 = !DILocation(line: 252, column: 3, scope: !5889)
!5893 = !DILocation(line: 254, column: 20, scope: !5813)
!5894 = !DILocation(line: 254, column: 25, scope: !5813)
!5895 = !DILocation(line: 254, column: 2, scope: !5813)
!5896 = !DILocation(line: 255, column: 6, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 255, column: 6)
!5898 = !DILocation(line: 255, column: 6, scope: !5813)
!5899 = !DILocation(line: 256, column: 24, scope: !5897)
!5900 = !DILocation(line: 256, column: 9, scope: !5897)
!5901 = !DILocation(line: 256, column: 3, scope: !5897)
!5902 = !DILocation(line: 258, column: 20, scope: !5897)
!5903 = !DILocation(line: 258, column: 3, scope: !5897)
!5904 = !DILocation(line: 260, column: 2, scope: !5813)
!5905 = !DILocation(line: 261, column: 1, scope: !5813)
!5906 = distinct !DISubprogram(name: "IS_ERR", scope: !5489, file: !5489, line: 59, type: !5907, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5909)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!893, !1377}
!5909 = !{!5910}
!5910 = !DILocalVariable(name: "ptr", arg: 1, scope: !5906, file: !5489, line: 59, type: !1377)
!5911 = !DILocation(line: 59, column: 60, scope: !5906)
!5912 = !DILocation(line: 61, column: 9, scope: !5906)
!5913 = !DILocation(line: 61, column: 2, scope: !5906)
!5914 = distinct !DISubprogram(name: "PTR_ERR", scope: !5489, file: !5489, line: 49, type: !5915, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5917)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!295, !1377}
!5917 = !{!5918}
!5918 = !DILocalVariable(name: "ptr", arg: 1, scope: !5914, file: !5489, line: 49, type: !1377)
!5919 = !DILocation(line: 49, column: 61, scope: !5914)
!5920 = !DILocation(line: 51, column: 16, scope: !5914)
!5921 = !DILocation(line: 51, column: 9, scope: !5914)
!5922 = !DILocation(line: 51, column: 2, scope: !5914)
!5923 = !DISubprogram(name: "fat_truncate_time", scope: !4504, file: !4504, line: 461, type: !5924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!96, !339, !5816, !96}
!5926 = !DISubprogram(name: "d_instantiate", scope: !376, file: !376, line: 221, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5927 = !DISubprogram(name: "fat_flush_inodes", scope: !4504, file: !4504, line: 422, type: !5928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{!96, !490, !339, !339}
!5930 = !DISubprogram(name: "fat_time_unix2fat", scope: !4504, file: !4504, line: 455, type: !5931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{null, !4646, !5816, !5933, !5933, !5934}
!5933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!5935 = distinct !DISubprogram(name: "fat_set_start", scope: !4504, file: !4504, line: 294, type: !5936, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5938)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{null, !4761, !96}
!5938 = !{!5939, !5940}
!5939 = !DILocalVariable(name: "de", arg: 1, scope: !5935, file: !4504, line: 294, type: !4761)
!5940 = !DILocalVariable(name: "cluster", arg: 2, scope: !5935, file: !4504, line: 294, type: !96)
!5941 = !DILocation(line: 294, column: 58, scope: !5935)
!5942 = !DILocation(line: 294, column: 66, scope: !5935)
!5943 = !DILocation(line: 296, column: 16, scope: !5935)
!5944 = !DILocation(line: 296, column: 2, scope: !5935)
!5945 = !DILocation(line: 296, column: 6, scope: !5935)
!5946 = !DILocation(line: 296, column: 14, scope: !5935)
!5947 = !DILocation(line: 297, column: 16, scope: !5935)
!5948 = !DILocation(line: 297, column: 2, scope: !5935)
!5949 = !DILocation(line: 297, column: 6, scope: !5935)
!5950 = !DILocation(line: 297, column: 14, scope: !5935)
!5951 = !DILocation(line: 298, column: 1, scope: !5935)
!5952 = !DISubprogram(name: "fat_add_entries", scope: !4504, file: !4504, line: 337, type: !5953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5953 = !DISubroutineType(types: !5954)
!5954 = !{!96, !339, !153, !96, !5394}
!5955 = !DISubprogram(name: "fat_sync_inode", scope: !4504, file: !4504, line: 417, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5956 = distinct !DISubprogram(name: "mark_inode_dirty", scope: !15, file: !15, line: 2302, type: !563, scopeLine: 2303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5957)
!5957 = !{!5958}
!5958 = !DILocalVariable(name: "inode", arg: 1, scope: !5956, file: !15, line: 2302, type: !339)
!5959 = !DILocation(line: 2302, column: 51, scope: !5956)
!5960 = !DILocation(line: 2304, column: 21, scope: !5956)
!5961 = !DILocation(line: 2304, column: 2, scope: !5956)
!5962 = !DILocation(line: 2305, column: 1, scope: !5956)
!5963 = !DISubprogram(name: "__mark_inode_dirty", scope: !15, file: !15, line: 2301, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5964 = distinct !DISubprogram(name: "d_inode", scope: !376, file: !376, line: 514, type: !5965, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5967)
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!339, !450}
!5967 = !{!5968}
!5968 = !DILocalVariable(name: "dentry", arg: 1, scope: !5964, file: !376, line: 514, type: !450)
!5969 = !DILocation(line: 514, column: 58, scope: !5964)
!5970 = !DILocation(line: 516, column: 9, scope: !5964)
!5971 = !DILocation(line: 516, column: 17, scope: !5964)
!5972 = !DILocation(line: 516, column: 2, scope: !5964)
!5973 = !DISubprogram(name: "fat_remove_entries", scope: !4504, file: !4504, line: 339, type: !5974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5974 = !DISubroutineType(types: !5975)
!5975 = !{!96, !339, !5394}
!5976 = !DISubprogram(name: "clear_nlink", scope: !15, file: !15, line: 2329, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5977 = !DISubprogram(name: "fat_detach", scope: !4504, file: !4504, line: 413, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5978 = !DISubprogram(name: "fat_alloc_new_dir", scope: !4504, file: !4504, line: 336, type: !5979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5979 = !DISubroutineType(types: !5980)
!5980 = !{!96, !339, !5816}
!5981 = !DISubprogram(name: "inc_nlink", scope: !15, file: !15, line: 2327, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5982 = !DISubprogram(name: "set_nlink", scope: !15, file: !15, line: 2330, type: !5983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5983 = !DISubroutineType(types: !5984)
!5984 = !{null, !339, !7}
!5985 = !DISubprogram(name: "fat_free_clusters", scope: !4504, file: !4504, line: 392, type: !3819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5986 = !DISubprogram(name: "fat_dir_empty", scope: !4504, file: !4504, line: 328, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5987 = !DISubprogram(name: "drop_nlink", scope: !15, file: !15, line: 2328, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5988 = distinct !DISubprogram(name: "do_msdos_rename", scope: !3, file: !3, line: 428, type: !5989, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5991)
!5989 = !DISubroutineType(types: !5990)
!5990 = !{!96, !339, !4710, !374, !339, !4710, !374, !96}
!5991 = !{!5992, !5993, !5994, !5995, !5996, !5997, !5998, !5999, !6000, !6001, !6002, !6003, !6004, !6005, !6006, !6007, !6008, !6009, !6010, !6011, !6012, !6013, !6014, !6015}
!5992 = !DILocalVariable(name: "old_dir", arg: 1, scope: !5988, file: !3, line: 428, type: !339)
!5993 = !DILocalVariable(name: "old_name", arg: 2, scope: !5988, file: !3, line: 428, type: !4710)
!5994 = !DILocalVariable(name: "old_dentry", arg: 3, scope: !5988, file: !3, line: 429, type: !374)
!5995 = !DILocalVariable(name: "new_dir", arg: 4, scope: !5988, file: !3, line: 430, type: !339)
!5996 = !DILocalVariable(name: "new_name", arg: 5, scope: !5988, file: !3, line: 430, type: !4710)
!5997 = !DILocalVariable(name: "new_dentry", arg: 6, scope: !5988, file: !3, line: 431, type: !374)
!5998 = !DILocalVariable(name: "is_hid", arg: 7, scope: !5988, file: !3, line: 431, type: !96)
!5999 = !DILocalVariable(name: "dotdot_bh", scope: !5988, file: !3, line: 433, type: !4782)
!6000 = !DILocalVariable(name: "dotdot_de", scope: !5988, file: !3, line: 434, type: !4761)
!6001 = !DILocalVariable(name: "old_inode", scope: !5988, file: !3, line: 435, type: !339)
!6002 = !DILocalVariable(name: "new_inode", scope: !5988, file: !3, line: 435, type: !339)
!6003 = !DILocalVariable(name: "old_sinfo", scope: !5988, file: !3, line: 436, type: !4755)
!6004 = !DILocalVariable(name: "sinfo", scope: !5988, file: !3, line: 436, type: !4755)
!6005 = !DILocalVariable(name: "ts", scope: !5988, file: !3, line: 437, type: !3771)
!6006 = !DILocalVariable(name: "new_i_pos", scope: !5988, file: !3, line: 438, type: !500)
!6007 = !DILocalVariable(name: "err", scope: !5988, file: !3, line: 439, type: !96)
!6008 = !DILocalVariable(name: "old_attrs", scope: !5988, file: !3, line: 439, type: !96)
!6009 = !DILocalVariable(name: "is_dir", scope: !5988, file: !3, line: 439, type: !96)
!6010 = !DILocalVariable(name: "update_dotdot", scope: !5988, file: !3, line: 439, type: !96)
!6011 = !DILocalVariable(name: "corrupt", scope: !5988, file: !3, line: 439, type: !96)
!6012 = !DILabel(scope: !5988, name: "out", file: !3, line: 555)
!6013 = !DILabel(scope: !5988, name: "error_dotdot", file: !3, line: 561)
!6014 = !DILabel(scope: !5988, name: "error_inode", file: !3, line: 570)
!6015 = !DILocalVariable(name: "err2", scope: !6016, file: !3, line: 583, type: !96)
!6016 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 578, column: 9)
!6017 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 574, column: 6)
!6018 = !DILocation(line: 428, column: 42, scope: !5988)
!6019 = !DILocation(line: 428, column: 66, scope: !5988)
!6020 = !DILocation(line: 429, column: 22, scope: !5988)
!6021 = !DILocation(line: 430, column: 21, scope: !5988)
!6022 = !DILocation(line: 430, column: 45, scope: !5988)
!6023 = !DILocation(line: 431, column: 22, scope: !5988)
!6024 = !DILocation(line: 431, column: 38, scope: !5988)
!6025 = !DILocation(line: 433, column: 2, scope: !5988)
!6026 = !DILocation(line: 433, column: 22, scope: !5988)
!6027 = !DILocation(line: 434, column: 2, scope: !5988)
!6028 = !DILocation(line: 434, column: 26, scope: !5988)
!6029 = !DILocation(line: 435, column: 2, scope: !5988)
!6030 = !DILocation(line: 435, column: 16, scope: !5988)
!6031 = !DILocation(line: 435, column: 28, scope: !5988)
!6032 = !DILocation(line: 436, column: 2, scope: !5988)
!6033 = !DILocation(line: 436, column: 23, scope: !5988)
!6034 = !DILocation(line: 436, column: 34, scope: !5988)
!6035 = !DILocation(line: 437, column: 2, scope: !5988)
!6036 = !DILocation(line: 437, column: 20, scope: !5988)
!6037 = !DILocation(line: 438, column: 2, scope: !5988)
!6038 = !DILocation(line: 438, column: 9, scope: !5988)
!6039 = !DILocation(line: 439, column: 2, scope: !5988)
!6040 = !DILocation(line: 439, column: 6, scope: !5988)
!6041 = !DILocation(line: 439, column: 11, scope: !5988)
!6042 = !DILocation(line: 439, column: 22, scope: !5988)
!6043 = !DILocation(line: 439, column: 30, scope: !5988)
!6044 = !DILocation(line: 439, column: 45, scope: !5988)
!6045 = !DILocation(line: 441, column: 38, scope: !5988)
!6046 = !DILocation(line: 441, column: 23, scope: !5988)
!6047 = !DILocation(line: 441, column: 26, scope: !5988)
!6048 = !DILocation(line: 441, column: 12, scope: !5988)
!6049 = !DILocation(line: 441, column: 15, scope: !5988)
!6050 = !DILocation(line: 442, column: 22, scope: !5988)
!6051 = !DILocation(line: 442, column: 14, scope: !5988)
!6052 = !DILocation(line: 442, column: 12, scope: !5988)
!6053 = !DILocation(line: 443, column: 22, scope: !5988)
!6054 = !DILocation(line: 443, column: 14, scope: !5988)
!6055 = !DILocation(line: 443, column: 12, scope: !5988)
!6056 = !DILocation(line: 445, column: 17, scope: !5988)
!6057 = !DILocation(line: 445, column: 26, scope: !5988)
!6058 = !DILocation(line: 445, column: 8, scope: !5988)
!6059 = !DILocation(line: 445, column: 6, scope: !5988)
!6060 = !DILocation(line: 446, column: 6, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 446, column: 6)
!6062 = !DILocation(line: 446, column: 6, scope: !5988)
!6063 = !DILocation(line: 447, column: 7, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 446, column: 11)
!6065 = !DILocation(line: 448, column: 3, scope: !6064)
!6066 = !DILocation(line: 451, column: 11, scope: !5988)
!6067 = !DILocation(line: 451, column: 9, scope: !5988)
!6068 = !DILocation(line: 452, column: 19, scope: !5988)
!6069 = !DILocation(line: 452, column: 26, scope: !5988)
!6070 = !DILocation(line: 452, column: 29, scope: !5988)
!6071 = !DILocation(line: 452, column: 40, scope: !5988)
!6072 = !DILocation(line: 452, column: 37, scope: !5988)
!6073 = !DILocation(line: 0, scope: !5988)
!6074 = !DILocation(line: 452, column: 16, scope: !5988)
!6075 = !DILocation(line: 453, column: 6, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 453, column: 6)
!6077 = !DILocation(line: 453, column: 6, scope: !5988)
!6078 = !DILocation(line: 454, column: 28, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 454, column: 7)
!6080 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 453, column: 21)
!6081 = !DILocation(line: 454, column: 7, scope: !6079)
!6082 = !DILocation(line: 454, column: 7, scope: !6080)
!6083 = !DILocation(line: 455, column: 8, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 454, column: 64)
!6085 = !DILocation(line: 456, column: 4, scope: !6084)
!6086 = !DILocation(line: 458, column: 2, scope: !6080)
!6087 = !DILocation(line: 460, column: 22, scope: !5988)
!6088 = !DILocation(line: 460, column: 14, scope: !5988)
!6089 = !DILocation(line: 460, column: 34, scope: !5988)
!6090 = !DILocation(line: 460, column: 12, scope: !5988)
!6091 = !DILocation(line: 461, column: 17, scope: !5988)
!6092 = !DILocation(line: 461, column: 26, scope: !5988)
!6093 = !DILocation(line: 461, column: 8, scope: !5988)
!6094 = !DILocation(line: 461, column: 6, scope: !5988)
!6095 = !DILocation(line: 462, column: 7, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 462, column: 6)
!6097 = !DILocation(line: 462, column: 6, scope: !5988)
!6098 = !DILocation(line: 463, column: 8, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 463, column: 7)
!6100 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 462, column: 12)
!6101 = !DILocation(line: 463, column: 7, scope: !6100)
!6102 = !DILocation(line: 465, column: 14, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 465, column: 8)
!6104 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 463, column: 19)
!6105 = !DILocation(line: 465, column: 30, scope: !6103)
!6106 = !DILocation(line: 465, column: 17, scope: !6103)
!6107 = !DILocation(line: 465, column: 8, scope: !6104)
!6108 = !DILocation(line: 466, column: 9, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 465, column: 34)
!6110 = !DILocation(line: 467, column: 5, scope: !6109)
!6111 = !DILocation(line: 469, column: 8, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 469, column: 8)
!6113 = !DILocation(line: 469, column: 8, scope: !6104)
!6114 = !DILocation(line: 470, column: 13, scope: !6112)
!6115 = !DILocation(line: 470, column: 5, scope: !6112)
!6116 = !DILocation(line: 470, column: 25, scope: !6112)
!6117 = !DILocation(line: 470, column: 33, scope: !6112)
!6118 = !DILocation(line: 472, column: 13, scope: !6112)
!6119 = !DILocation(line: 472, column: 5, scope: !6112)
!6120 = !DILocation(line: 472, column: 25, scope: !6112)
!6121 = !DILocation(line: 472, column: 33, scope: !6112)
!6122 = !DILocation(line: 473, column: 8, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 473, column: 8)
!6124 = !DILocation(line: 473, column: 8, scope: !6104)
!6125 = !DILocation(line: 474, column: 26, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 473, column: 29)
!6127 = !DILocation(line: 474, column: 11, scope: !6126)
!6128 = !DILocation(line: 474, column: 9, scope: !6126)
!6129 = !DILocation(line: 475, column: 9, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 475, column: 9)
!6131 = !DILocation(line: 475, column: 9, scope: !6126)
!6132 = !DILocation(line: 476, column: 36, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 475, column: 14)
!6134 = !DILocation(line: 476, column: 14, scope: !6133)
!6135 = !DILocation(line: 476, column: 6, scope: !6133)
!6136 = !DILocation(line: 476, column: 26, scope: !6133)
!6137 = !DILocation(line: 476, column: 34, scope: !6133)
!6138 = !DILocation(line: 477, column: 6, scope: !6133)
!6139 = !DILocation(line: 479, column: 4, scope: !6126)
!6140 = !DILocation(line: 480, column: 22, scope: !6123)
!6141 = !DILocation(line: 480, column: 5, scope: !6123)
!6142 = !DILocation(line: 482, column: 23, scope: !6104)
!6143 = !DILocation(line: 482, column: 4, scope: !6104)
!6144 = !DILocation(line: 483, column: 22, scope: !6104)
!6145 = !DILocation(line: 483, column: 4, scope: !6104)
!6146 = !DILocation(line: 484, column: 8, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 484, column: 8)
!6148 = !DILocation(line: 484, column: 8, scope: !6104)
!6149 = !DILocation(line: 485, column: 26, scope: !6147)
!6150 = !DILocation(line: 485, column: 11, scope: !6147)
!6151 = !DILocation(line: 485, column: 5, scope: !6147)
!6152 = !DILocation(line: 487, column: 22, scope: !6147)
!6153 = !DILocation(line: 487, column: 5, scope: !6147)
!6154 = !DILocation(line: 488, column: 4, scope: !6104)
!6155 = !DILocation(line: 490, column: 2, scope: !6100)
!6156 = !DILocation(line: 492, column: 7, scope: !5988)
!6157 = !DILocation(line: 492, column: 20, scope: !5988)
!6158 = !DILocation(line: 493, column: 6, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 493, column: 6)
!6160 = !DILocation(line: 493, column: 6, scope: !5988)
!6161 = !DILocation(line: 494, column: 7, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 494, column: 7)
!6163 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 493, column: 17)
!6164 = !DILocation(line: 494, column: 7, scope: !6163)
!6165 = !DILocation(line: 495, column: 4, scope: !6162)
!6166 = !DILocation(line: 496, column: 7, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 496, column: 7)
!6168 = !DILocation(line: 496, column: 7, scope: !6163)
!6169 = !DILocation(line: 497, column: 24, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6167, file: !3, line: 496, column: 15)
!6171 = !DILocation(line: 497, column: 10, scope: !6170)
!6172 = !DILocation(line: 497, column: 8, scope: !6170)
!6173 = !DILocation(line: 498, column: 8, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 498, column: 8)
!6175 = !DILocation(line: 498, column: 8, scope: !6170)
!6176 = !DILocation(line: 499, column: 5, scope: !6174)
!6177 = !DILocation(line: 500, column: 3, scope: !6170)
!6178 = !DILocation(line: 501, column: 23, scope: !6163)
!6179 = !DILocation(line: 501, column: 15, scope: !6163)
!6180 = !DILocation(line: 501, column: 35, scope: !6163)
!6181 = !DILocation(line: 501, column: 13, scope: !6163)
!6182 = !DILocation(line: 502, column: 14, scope: !6163)
!6183 = !DILocation(line: 502, column: 3, scope: !6163)
!6184 = !DILocation(line: 503, column: 2, scope: !6163)
!6185 = !DILocation(line: 504, column: 25, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 503, column: 9)
!6187 = !DILocation(line: 504, column: 34, scope: !6186)
!6188 = !DILocation(line: 504, column: 44, scope: !6186)
!6189 = !DILocation(line: 504, column: 52, scope: !6186)
!6190 = !DILocation(line: 504, column: 9, scope: !6186)
!6191 = !DILocation(line: 504, column: 7, scope: !6186)
!6192 = !DILocation(line: 506, column: 7, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 506, column: 7)
!6194 = !DILocation(line: 506, column: 7, scope: !6186)
!6195 = !DILocation(line: 507, column: 4, scope: !6193)
!6196 = !DILocation(line: 508, column: 21, scope: !6186)
!6197 = !DILocation(line: 508, column: 13, scope: !6186)
!6198 = !DILocation(line: 510, column: 21, scope: !5988)
!6199 = !DILocation(line: 510, column: 2, scope: !5988)
!6200 = !DILocation(line: 512, column: 13, scope: !5988)
!6201 = !DILocation(line: 512, column: 2, scope: !5988)
!6202 = !DILocation(line: 513, column: 13, scope: !5988)
!6203 = !DILocation(line: 513, column: 24, scope: !5988)
!6204 = !DILocation(line: 513, column: 2, scope: !5988)
!6205 = !DILocation(line: 514, column: 6, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 514, column: 6)
!6207 = !DILocation(line: 514, column: 6, scope: !5988)
!6208 = !DILocation(line: 515, column: 11, scope: !6206)
!6209 = !DILocation(line: 515, column: 3, scope: !6206)
!6210 = !DILocation(line: 515, column: 23, scope: !6206)
!6211 = !DILocation(line: 515, column: 31, scope: !6206)
!6212 = !DILocation(line: 517, column: 11, scope: !6206)
!6213 = !DILocation(line: 517, column: 3, scope: !6206)
!6214 = !DILocation(line: 517, column: 23, scope: !6206)
!6215 = !DILocation(line: 517, column: 31, scope: !6206)
!6216 = !DILocation(line: 518, column: 6, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 518, column: 6)
!6218 = !DILocation(line: 518, column: 6, scope: !5988)
!6219 = !DILocation(line: 519, column: 24, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 518, column: 27)
!6221 = !DILocation(line: 519, column: 9, scope: !6220)
!6222 = !DILocation(line: 519, column: 7, scope: !6220)
!6223 = !DILocation(line: 520, column: 7, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 520, column: 7)
!6225 = !DILocation(line: 520, column: 7, scope: !6220)
!6226 = !DILocation(line: 521, column: 4, scope: !6224)
!6227 = !DILocation(line: 522, column: 2, scope: !6220)
!6228 = !DILocation(line: 523, column: 20, scope: !6217)
!6229 = !DILocation(line: 523, column: 3, scope: !6217)
!6230 = !DILocation(line: 525, column: 6, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 525, column: 6)
!6232 = !DILocation(line: 525, column: 6, scope: !5988)
!6233 = !DILocation(line: 526, column: 17, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6231, file: !3, line: 525, column: 21)
!6235 = !DILocation(line: 526, column: 36, scope: !6234)
!6236 = !DILocation(line: 526, column: 28, scope: !6234)
!6237 = !DILocation(line: 526, column: 46, scope: !6234)
!6238 = !DILocation(line: 526, column: 3, scope: !6234)
!6239 = !DILocation(line: 527, column: 27, scope: !6234)
!6240 = !DILocation(line: 527, column: 38, scope: !6234)
!6241 = !DILocation(line: 527, column: 3, scope: !6234)
!6242 = !DILocation(line: 528, column: 7, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 528, column: 7)
!6244 = !DILocation(line: 528, column: 7, scope: !6234)
!6245 = !DILocation(line: 529, column: 28, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6243, file: !3, line: 528, column: 28)
!6247 = !DILocation(line: 529, column: 10, scope: !6246)
!6248 = !DILocation(line: 529, column: 8, scope: !6246)
!6249 = !DILocation(line: 530, column: 8, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 530, column: 8)
!6251 = !DILocation(line: 530, column: 8, scope: !6246)
!6252 = !DILocation(line: 531, column: 5, scope: !6250)
!6253 = !DILocation(line: 532, column: 3, scope: !6246)
!6254 = !DILocation(line: 533, column: 14, scope: !6234)
!6255 = !DILocation(line: 533, column: 3, scope: !6234)
!6256 = !DILocation(line: 534, column: 8, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 534, column: 7)
!6258 = !DILocation(line: 534, column: 7, scope: !6234)
!6259 = !DILocation(line: 535, column: 14, scope: !6257)
!6260 = !DILocation(line: 535, column: 4, scope: !6257)
!6261 = !DILocation(line: 536, column: 2, scope: !6234)
!6262 = !DILocation(line: 538, column: 27, scope: !5988)
!6263 = !DILocation(line: 538, column: 8, scope: !5988)
!6264 = !DILocation(line: 538, column: 6, scope: !5988)
!6265 = !DILocation(line: 539, column: 12, scope: !5988)
!6266 = !DILocation(line: 539, column: 15, scope: !5988)
!6267 = !DILocation(line: 540, column: 6, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 540, column: 6)
!6269 = !DILocation(line: 540, column: 6, scope: !5988)
!6270 = !DILocation(line: 541, column: 3, scope: !6268)
!6271 = !DILocation(line: 542, column: 21, scope: !5988)
!6272 = !DILocation(line: 542, column: 2, scope: !5988)
!6273 = !DILocation(line: 543, column: 20, scope: !5988)
!6274 = !DILocation(line: 543, column: 2, scope: !5988)
!6275 = !DILocation(line: 544, column: 6, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 544, column: 6)
!6277 = !DILocation(line: 544, column: 6, scope: !5988)
!6278 = !DILocation(line: 545, column: 24, scope: !6276)
!6279 = !DILocation(line: 545, column: 9, scope: !6276)
!6280 = !DILocation(line: 545, column: 3, scope: !6276)
!6281 = !DILocation(line: 547, column: 20, scope: !6276)
!6282 = !DILocation(line: 547, column: 3, scope: !6276)
!6283 = !DILocation(line: 549, column: 6, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 549, column: 6)
!6285 = !DILocation(line: 549, column: 6, scope: !5988)
!6286 = !DILocation(line: 550, column: 14, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6284, file: !3, line: 549, column: 17)
!6288 = !DILocation(line: 550, column: 3, scope: !6287)
!6289 = !DILocation(line: 551, column: 7, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6287, file: !3, line: 551, column: 7)
!6291 = !DILocation(line: 551, column: 7, scope: !6287)
!6292 = !DILocation(line: 552, column: 15, scope: !6290)
!6293 = !DILocation(line: 552, column: 4, scope: !6290)
!6294 = !DILocation(line: 553, column: 21, scope: !6287)
!6295 = !DILocation(line: 553, column: 3, scope: !6287)
!6296 = !DILocation(line: 554, column: 2, scope: !6287)
!6297 = !DILocation(line: 555, column: 1, scope: !5988)
!6298 = !DILocation(line: 556, column: 15, scope: !5988)
!6299 = !DILocation(line: 556, column: 2, scope: !5988)
!6300 = !DILocation(line: 557, column: 9, scope: !5988)
!6301 = !DILocation(line: 557, column: 2, scope: !5988)
!6302 = !DILocation(line: 558, column: 19, scope: !5988)
!6303 = !DILocation(line: 558, column: 2, scope: !5988)
!6304 = !DILocation(line: 559, column: 9, scope: !5988)
!6305 = !DILocation(line: 594, column: 1, scope: !5988)
!6306 = !DILocation(line: 559, column: 2, scope: !5988)
!6307 = !DILocation(line: 561, column: 1, scope: !5988)
!6308 = !DILocation(line: 563, column: 10, scope: !5988)
!6309 = !DILocation(line: 565, column: 6, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 565, column: 6)
!6311 = !DILocation(line: 565, column: 6, scope: !5988)
!6312 = !DILocation(line: 566, column: 17, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 565, column: 21)
!6314 = !DILocation(line: 566, column: 36, scope: !6313)
!6315 = !DILocation(line: 566, column: 28, scope: !6313)
!6316 = !DILocation(line: 566, column: 46, scope: !6313)
!6317 = !DILocation(line: 566, column: 3, scope: !6313)
!6318 = !DILocation(line: 567, column: 27, scope: !6313)
!6319 = !DILocation(line: 567, column: 38, scope: !6313)
!6320 = !DILocation(line: 567, column: 3, scope: !6313)
!6321 = !DILocation(line: 568, column: 32, scope: !6313)
!6322 = !DILocation(line: 568, column: 14, scope: !6313)
!6323 = !DILocation(line: 568, column: 11, scope: !6313)
!6324 = !DILocation(line: 569, column: 2, scope: !6313)
!6325 = !DILocation(line: 570, column: 1, scope: !5988)
!6326 = !DILocation(line: 571, column: 13, scope: !5988)
!6327 = !DILocation(line: 571, column: 2, scope: !5988)
!6328 = !DILocation(line: 572, column: 13, scope: !5988)
!6329 = !DILocation(line: 572, column: 34, scope: !5988)
!6330 = !DILocation(line: 572, column: 2, scope: !5988)
!6331 = !DILocation(line: 573, column: 32, scope: !5988)
!6332 = !DILocation(line: 573, column: 10, scope: !5988)
!6333 = !DILocation(line: 573, column: 2, scope: !5988)
!6334 = !DILocation(line: 573, column: 22, scope: !5988)
!6335 = !DILocation(line: 573, column: 30, scope: !5988)
!6336 = !DILocation(line: 574, column: 6, scope: !6017)
!6337 = !DILocation(line: 574, column: 6, scope: !5988)
!6338 = !DILocation(line: 575, column: 14, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 574, column: 17)
!6340 = !DILocation(line: 575, column: 25, scope: !6339)
!6341 = !DILocation(line: 575, column: 3, scope: !6339)
!6342 = !DILocation(line: 576, column: 7, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 576, column: 7)
!6344 = !DILocation(line: 576, column: 7, scope: !6339)
!6345 = !DILocation(line: 577, column: 30, scope: !6343)
!6346 = !DILocation(line: 577, column: 15, scope: !6343)
!6347 = !DILocation(line: 577, column: 12, scope: !6343)
!6348 = !DILocation(line: 577, column: 4, scope: !6343)
!6349 = !DILocation(line: 578, column: 2, scope: !6339)
!6350 = !DILocation(line: 583, column: 3, scope: !6016)
!6351 = !DILocation(line: 583, column: 7, scope: !6016)
!6352 = !DILocation(line: 583, column: 33, scope: !6016)
!6353 = !DILocation(line: 583, column: 14, scope: !6016)
!6354 = !DILocation(line: 584, column: 7, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 584, column: 7)
!6356 = !DILocation(line: 584, column: 7, scope: !6016)
!6357 = !DILocation(line: 585, column: 15, scope: !6355)
!6358 = !DILocation(line: 585, column: 12, scope: !6355)
!6359 = !DILocation(line: 585, column: 4, scope: !6355)
!6360 = !DILocation(line: 586, column: 9, scope: !6016)
!6361 = !DILocation(line: 586, column: 12, scope: !6016)
!6362 = !DILocation(line: 587, column: 2, scope: !6017)
!6363 = !DILocation(line: 588, column: 6, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 588, column: 6)
!6365 = !DILocation(line: 588, column: 14, scope: !6364)
!6366 = !DILocation(line: 588, column: 6, scope: !5988)
!6367 = !DILocation(line: 589, column: 3, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 588, column: 19)
!6369 = !DILocation(line: 592, column: 2, scope: !6368)
!6370 = !DILocation(line: 593, column: 2, scope: !5988)
!6371 = !DISubprogram(name: "fat_get_dotdot_entry", scope: !4504, file: !4504, line: 334, type: !6372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6372 = !DISubroutineType(types: !6373)
!6373 = !{!96, !339, !6374, !6375}
!6374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!6375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!6376 = distinct !DISubprogram(name: "MSDOS_I", scope: !4504, file: !4504, line: 174, type: !6377, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6379)
!6377 = !DISubroutineType(types: !6378)
!6378 = !{!4502, !339}
!6379 = !{!6380, !6381}
!6380 = !DILocalVariable(name: "inode", arg: 1, scope: !6376, file: !4504, line: 174, type: !339)
!6381 = !DILocalVariable(name: "__mptr", scope: !6382, file: !4504, line: 176, type: !153)
!6382 = distinct !DILexicalBlock(scope: !6376, file: !4504, line: 176, column: 9)
!6383 = !DILocation(line: 174, column: 62, scope: !6376)
!6384 = !DILocation(line: 176, column: 9, scope: !6382)
!6385 = !DILocation(line: 176, column: 9, scope: !6376)
!6386 = !DILocation(line: 176, column: 2, scope: !6376)
!6387 = distinct !DISubprogram(name: "inode_inc_iversion", scope: !6388, file: !6388, line: 203, type: !563, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6388 = !DIFile(filename: "./include/linux/iversion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d11c512d815f63563e11093b24615e3b")
!6389 = !{!6390}
!6390 = !DILocalVariable(name: "inode", arg: 1, scope: !6387, file: !6388, line: 203, type: !339)
!6391 = !DILocation(line: 203, column: 34, scope: !6387)
!6392 = !DILocation(line: 205, column: 27, scope: !6387)
!6393 = !DILocation(line: 205, column: 2, scope: !6387)
!6394 = !DILocation(line: 206, column: 1, scope: !6387)
!6395 = !DISubprogram(name: "fat_attach", scope: !4504, file: !4504, line: 412, type: !6396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6396 = !DISubroutineType(types: !6397)
!6397 = !{null, !339, !500}
!6398 = !DISubprogram(name: "mark_buffer_dirty_inode", scope: !4784, file: !4784, line: 213, type: !6399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6399 = !DISubroutineType(types: !6400)
!6400 = !{null, !4782, !339}
!6401 = !DISubprogram(name: "sync_dirty_buffer", scope: !4784, file: !4784, line: 241, type: !6402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6402 = !DISubroutineType(types: !6403)
!6403 = !{!96, !4782}
!6404 = !DISubprogram(name: "__fat_fs_error", scope: !4504, file: !4504, line: 432, type: !6405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6405 = !DISubroutineType(types: !6406)
!6406 = !{null, !490, !96, !178, null}
!6407 = !DISubprogram(name: "inode_maybe_inc_iversion", scope: !6388, file: !6388, line: 193, type: !6408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6408 = !DISubroutineType(types: !6409)
!6409 = !{!893, !339, !893}
!6410 = distinct !DISubprogram(name: "msdos_hash", scope: !3, file: !3, line: 151, type: !448, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6411)
!6411 = !{!6412, !6413, !6414, !6415, !6416}
!6412 = !DILocalVariable(name: "dentry", arg: 1, scope: !6410, file: !3, line: 151, type: !450)
!6413 = !DILocalVariable(name: "qstr", arg: 2, scope: !6410, file: !3, line: 151, type: !452)
!6414 = !DILocalVariable(name: "options", scope: !6410, file: !3, line: 153, type: !5505)
!6415 = !DILocalVariable(name: "msdos_name", scope: !6410, file: !3, line: 154, type: !4873)
!6416 = !DILocalVariable(name: "error", scope: !6410, file: !3, line: 155, type: !96)
!6417 = !DILocation(line: 151, column: 44, scope: !6410)
!6418 = !DILocation(line: 151, column: 65, scope: !6410)
!6419 = !DILocation(line: 153, column: 2, scope: !6410)
!6420 = !DILocation(line: 153, column: 28, scope: !6410)
!6421 = !DILocation(line: 153, column: 48, scope: !6410)
!6422 = !DILocation(line: 153, column: 56, scope: !6410)
!6423 = !DILocation(line: 153, column: 39, scope: !6410)
!6424 = !DILocation(line: 153, column: 63, scope: !6410)
!6425 = !DILocation(line: 154, column: 2, scope: !6410)
!6426 = !DILocation(line: 154, column: 16, scope: !6410)
!6427 = !DILocation(line: 155, column: 2, scope: !6410)
!6428 = !DILocation(line: 155, column: 6, scope: !6410)
!6429 = !DILocation(line: 157, column: 28, scope: !6410)
!6430 = !DILocation(line: 157, column: 34, scope: !6410)
!6431 = !DILocation(line: 157, column: 40, scope: !6410)
!6432 = !DILocation(line: 157, column: 46, scope: !6410)
!6433 = !DILocation(line: 157, column: 51, scope: !6410)
!6434 = !DILocation(line: 157, column: 63, scope: !6410)
!6435 = !DILocation(line: 157, column: 10, scope: !6410)
!6436 = !DILocation(line: 157, column: 8, scope: !6410)
!6437 = !DILocation(line: 158, column: 7, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 158, column: 6)
!6439 = !DILocation(line: 158, column: 6, scope: !6410)
!6440 = !DILocation(line: 159, column: 31, scope: !6438)
!6441 = !DILocation(line: 159, column: 39, scope: !6438)
!6442 = !DILocation(line: 159, column: 16, scope: !6438)
!6443 = !DILocation(line: 159, column: 3, scope: !6438)
!6444 = !DILocation(line: 159, column: 9, scope: !6438)
!6445 = !DILocation(line: 159, column: 14, scope: !6438)
!6446 = !DILocation(line: 161, column: 1, scope: !6410)
!6447 = !DILocation(line: 160, column: 2, scope: !6410)
!6448 = distinct !DISubprogram(name: "msdos_cmp", scope: !3, file: !3, line: 167, type: !455, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6449)
!6449 = !{!6450, !6451, !6452, !6453, !6454, !6455, !6456, !6457, !6458, !6459}
!6450 = !DILocalVariable(name: "dentry", arg: 1, scope: !6448, file: !3, line: 167, type: !450)
!6451 = !DILocalVariable(name: "len", arg: 2, scope: !6448, file: !3, line: 168, type: !7)
!6452 = !DILocalVariable(name: "str", arg: 3, scope: !6448, file: !3, line: 168, type: !178)
!6453 = !DILocalVariable(name: "name", arg: 4, scope: !6448, file: !3, line: 168, type: !457)
!6454 = !DILocalVariable(name: "options", scope: !6448, file: !3, line: 170, type: !5505)
!6455 = !DILocalVariable(name: "a_msdos_name", scope: !6448, file: !3, line: 171, type: !4873)
!6456 = !DILocalVariable(name: "b_msdos_name", scope: !6448, file: !3, line: 171, type: !4873)
!6457 = !DILocalVariable(name: "error", scope: !6448, file: !3, line: 172, type: !96)
!6458 = !DILabel(scope: !6448, name: "out", file: !3, line: 181)
!6459 = !DILabel(scope: !6448, name: "old_compare", file: !3, line: 184)
!6460 = !DILocation(line: 167, column: 43, scope: !6448)
!6461 = !DILocation(line: 168, column: 16, scope: !6448)
!6462 = !DILocation(line: 168, column: 33, scope: !6448)
!6463 = !DILocation(line: 168, column: 57, scope: !6448)
!6464 = !DILocation(line: 170, column: 2, scope: !6448)
!6465 = !DILocation(line: 170, column: 28, scope: !6448)
!6466 = !DILocation(line: 170, column: 48, scope: !6448)
!6467 = !DILocation(line: 170, column: 56, scope: !6448)
!6468 = !DILocation(line: 170, column: 39, scope: !6448)
!6469 = !DILocation(line: 170, column: 63, scope: !6448)
!6470 = !DILocation(line: 171, column: 2, scope: !6448)
!6471 = !DILocation(line: 171, column: 16, scope: !6448)
!6472 = !DILocation(line: 171, column: 42, scope: !6448)
!6473 = !DILocation(line: 172, column: 2, scope: !6448)
!6474 = !DILocation(line: 172, column: 6, scope: !6448)
!6475 = !DILocation(line: 174, column: 28, scope: !6448)
!6476 = !DILocation(line: 174, column: 34, scope: !6448)
!6477 = !DILocation(line: 174, column: 40, scope: !6448)
!6478 = !DILocation(line: 174, column: 46, scope: !6448)
!6479 = !DILocation(line: 174, column: 51, scope: !6448)
!6480 = !DILocation(line: 174, column: 65, scope: !6448)
!6481 = !DILocation(line: 174, column: 10, scope: !6448)
!6482 = !DILocation(line: 174, column: 8, scope: !6448)
!6483 = !DILocation(line: 175, column: 6, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 175, column: 6)
!6485 = !DILocation(line: 175, column: 6, scope: !6448)
!6486 = !DILocation(line: 176, column: 3, scope: !6484)
!6487 = !DILocation(line: 177, column: 28, scope: !6448)
!6488 = !DILocation(line: 177, column: 33, scope: !6448)
!6489 = !DILocation(line: 177, column: 38, scope: !6448)
!6490 = !DILocation(line: 177, column: 52, scope: !6448)
!6491 = !DILocation(line: 177, column: 10, scope: !6448)
!6492 = !DILocation(line: 177, column: 8, scope: !6448)
!6493 = !DILocation(line: 178, column: 6, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 178, column: 6)
!6495 = !DILocation(line: 178, column: 6, scope: !6448)
!6496 = !DILocation(line: 179, column: 3, scope: !6494)
!6497 = !DILocation(line: 180, column: 17, scope: !6448)
!6498 = !DILocation(line: 180, column: 31, scope: !6448)
!6499 = !DILocation(line: 180, column: 10, scope: !6448)
!6500 = !DILocation(line: 180, column: 8, scope: !6448)
!6501 = !DILocation(line: 180, column: 2, scope: !6448)
!6502 = !DILocation(line: 181, column: 1, scope: !6448)
!6503 = !DILocation(line: 182, column: 9, scope: !6448)
!6504 = !DILocation(line: 189, column: 1, scope: !6448)
!6505 = !DILocation(line: 182, column: 2, scope: !6448)
!6506 = !DILocation(line: 184, column: 1, scope: !6448)
!6507 = !DILocation(line: 185, column: 8, scope: !6448)
!6508 = !DILocation(line: 186, column: 6, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 186, column: 6)
!6510 = !DILocation(line: 186, column: 12, scope: !6509)
!6511 = !DILocation(line: 186, column: 19, scope: !6509)
!6512 = !DILocation(line: 186, column: 16, scope: !6509)
!6513 = !DILocation(line: 186, column: 6, scope: !6448)
!6514 = !DILocation(line: 187, column: 18, scope: !6509)
!6515 = !DILocation(line: 187, column: 24, scope: !6509)
!6516 = !DILocation(line: 187, column: 30, scope: !6509)
!6517 = !DILocation(line: 187, column: 35, scope: !6509)
!6518 = !DILocation(line: 187, column: 11, scope: !6509)
!6519 = !DILocation(line: 187, column: 9, scope: !6509)
!6520 = !DILocation(line: 187, column: 3, scope: !6509)
!6521 = !DILocation(line: 188, column: 2, scope: !6448)
!6522 = !DISubprogram(name: "full_name_hash", scope: !6523, file: !6523, line: 66, type: !6524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6523 = !DIFile(filename: "./include/linux/stringhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7b260b93de90497fc2d684369b4dec9")
!6524 = !DISubroutineType(types: !6525)
!6525 = !{!7, !1377, !178, !7}
!6526 = !DISubprogram(name: "memcmp", scope: !5806, file: !5806, line: 196, type: !6527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6527 = !DISubroutineType(types: !6528)
!6528 = !{!96, !1377, !1377, !307}
!6529 = !DISubprogram(name: "register_filesystem", scope: !15, file: !15, line: 2445, type: !4583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
