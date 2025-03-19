; ModuleID = 'fs/ramfs/inode.c'
source_filename = "fs/ramfs/inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init..kmod_ramfs__322_299_init_ramfs_fs\22, \22a\22\09\09"
module asm "__initcall__kmod_ramfs__322_299_init_ramfs_fs5:\09\09\09"
module asm ".long\09__initstub__kmod_ramfs__322_299_init_ramfs_fs5 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mnt_idmap = type opaque
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.timespec64 = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.14, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.15, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.16, ptr, %struct.address_space, %struct.list_head, %union.anon.17, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.14 = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.16 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.17 = type { ptr }
%struct.ramfs_fs_info = type { %struct.ramfs_mount_opts }
%struct.ramfs_mount_opts = type { i16 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
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
%struct.file = type { %union.anon.24, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.25, %struct.qspinlock }
%union.anon.25 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.27 }
%union.anon.27 = type { i64 }

@nop_mnt_idmap = external dso_local global %struct.mnt_idmap, align 1
@ram_aops = external dso_local constant %struct.address_space_operations, align 8
@ramfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ramfs_file_operations = external dso_local constant %struct.file_operations, align 8
@ramfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr @ramfs_create, ptr @simple_link, ptr @simple_unlink, ptr @ramfs_symlink, ptr @ramfs_mkdir, ptr @simple_rmdir, ptr @ramfs_mknod, ptr @simple_rename, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ramfs_tmpfile, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !0
@simple_dir_operations = external dso_local constant %struct.file_operations, align 8
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !227
@ramfs_fs_parameters = hidden constant [2 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str, ptr @fs_param_is_u32, i8 0, i16 0, ptr inttoptr (i64 8 to ptr) }, %struct.fs_parameter_spec zeroinitializer], align 16, !dbg !232
@ramfs_context_ops = internal constant %struct.fs_context_operations { ptr @ramfs_free_fc, ptr null, ptr @ramfs_parse_param, ptr null, ptr @ramfs_get_tree, ptr null }, align 8, !dbg !4784
@__UNIQUE_ID___addressable___initstub__kmod_ramfs__322_299_init_ramfs_fs5323 = internal global ptr @__initstub__kmod_ramfs__322_299_init_ramfs_fs5, section ".discard.addressable", align 8, !dbg !4777
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4779
@ramfs_ops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @ramfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4786
@.str.2 = private unnamed_addr constant [9 x i8] c",mode=%o\00", align 1, !dbg !4788
@ramfs_fs_type = internal global %struct.file_system_type { ptr @.str.3, i32 8, ptr @ramfs_init_fs_context, ptr @ramfs_fs_parameters, ptr null, ptr @ramfs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !4795
@.str.3 = private unnamed_addr constant [6 x i8] c"ramfs\00", align 1, !dbg !4793
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_ramfs__322_299_init_ramfs_fs5323], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ramfs_get_inode(ptr noundef %sb, ptr noundef %dir, i16 noundef zeroext %mode, i32 noundef %dev) #0 align 16 !dbg !4806 {
entry:
  %sb.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %dev.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4810, metadata !DIExpression()), !dbg !4815
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4811, metadata !DIExpression()), !dbg !4816
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4812, metadata !DIExpression()), !dbg !4817
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4813, metadata !DIExpression()), !dbg !4818
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !4819
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4814, metadata !DIExpression()), !dbg !4820
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4821
  %call = call ptr @new_inode(ptr noundef %0) #16, !dbg !4822
  store ptr %call, ptr %inode, align 8, !dbg !4820
  %1 = load ptr, ptr %inode, align 8, !dbg !4823
  %tobool = icmp ne ptr %1, null, !dbg !4823
  br i1 %tobool, label %if.then, label %if.end, !dbg !4825

if.then:                                          ; preds = %entry
  %call1 = call i32 @get_next_ino() #16, !dbg !4826
  %conv = zext i32 %call1 to i64, !dbg !4826
  %2 = load ptr, ptr %inode, align 8, !dbg !4828
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 12, !dbg !4829
  store i64 %conv, ptr %i_ino, align 8, !dbg !4830
  %3 = load ptr, ptr %inode, align 8, !dbg !4831
  %4 = load ptr, ptr %dir.addr, align 8, !dbg !4832
  %5 = load i16, ptr %mode.addr, align 2, !dbg !4833
  call void @inode_init_owner(ptr noundef @nop_mnt_idmap, ptr noundef %3, ptr noundef %4, i16 noundef zeroext %5) #16, !dbg !4834
  %6 = load ptr, ptr %inode, align 8, !dbg !4835
  %i_mapping = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10, !dbg !4836
  %7 = load ptr, ptr %i_mapping, align 8, !dbg !4836
  %a_ops = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 8, !dbg !4837
  store ptr @ram_aops, ptr %a_ops, align 8, !dbg !4838
  %8 = load ptr, ptr %inode, align 8, !dbg !4839
  %i_mapping2 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 10, !dbg !4840
  %9 = load ptr, ptr %i_mapping2, align 8, !dbg !4840
  call void @mapping_set_gfp_mask(ptr noundef %9, i32 noundef 1051842) #16, !dbg !4841
  %10 = load ptr, ptr %inode, align 8, !dbg !4842
  %i_mapping3 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 10, !dbg !4843
  %11 = load ptr, ptr %i_mapping3, align 8, !dbg !4843
  call void @mapping_set_unevictable(ptr noundef %11) #16, !dbg !4844
  %12 = load ptr, ptr %inode, align 8, !dbg !4845
  %i_atime = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 16, !dbg !4846
  %13 = load ptr, ptr %inode, align 8, !dbg !4847
  %i_mtime = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 17, !dbg !4848
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #15, !dbg !4849
  %14 = load ptr, ptr %inode, align 8, !dbg !4850
  %call4 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %14) #16, !dbg !4849
  %15 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !4849
  %16 = extractvalue { i64, i64 } %call4, 0, !dbg !4849
  store i64 %16, ptr %15, align 8, !dbg !4849
  %17 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !4849
  %18 = extractvalue { i64, i64 } %call4, 1, !dbg !4849
  store i64 %18, ptr %17, align 8, !dbg !4849
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !4849
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #15, !dbg !4849
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %i_mtime, i64 16, i1 false), !dbg !4851
  %19 = load i16, ptr %mode.addr, align 2, !dbg !4852
  %conv5 = zext i16 %19 to i32, !dbg !4852
  %and = and i32 %conv5, 61440, !dbg !4853
  switch i32 %and, label %sw.default [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb6
    i32 40960, label %sw.bb8
  ], !dbg !4854

sw.default:                                       ; preds = %if.then
  %20 = load ptr, ptr %inode, align 8, !dbg !4855
  %21 = load i16, ptr %mode.addr, align 2, !dbg !4857
  %22 = load i32, ptr %dev.addr, align 4, !dbg !4858
  call void @init_special_inode(ptr noundef %20, i16 noundef zeroext %21, i32 noundef %22) #16, !dbg !4859
  br label %sw.epilog, !dbg !4860

sw.bb:                                            ; preds = %if.then
  %23 = load ptr, ptr %inode, align 8, !dbg !4861
  %i_op = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8, !dbg !4862
  store ptr @ramfs_file_inode_operations, ptr %i_op, align 8, !dbg !4863
  %24 = load ptr, ptr %inode, align 8, !dbg !4864
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 39, !dbg !4865
  store ptr @ramfs_file_operations, ptr %25, align 8, !dbg !4866
  br label %sw.epilog, !dbg !4867

sw.bb6:                                           ; preds = %if.then
  %26 = load ptr, ptr %inode, align 8, !dbg !4868
  %i_op7 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 8, !dbg !4869
  store ptr @ramfs_dir_inode_operations, ptr %i_op7, align 8, !dbg !4870
  %27 = load ptr, ptr %inode, align 8, !dbg !4871
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 39, !dbg !4872
  store ptr @simple_dir_operations, ptr %28, align 8, !dbg !4873
  %29 = load ptr, ptr %inode, align 8, !dbg !4874
  call void @inc_nlink(ptr noundef %29) #16, !dbg !4875
  br label %sw.epilog, !dbg !4876

sw.bb8:                                           ; preds = %if.then
  %30 = load ptr, ptr %inode, align 8, !dbg !4877
  %i_op9 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8, !dbg !4878
  store ptr @page_symlink_inode_operations, ptr %i_op9, align 8, !dbg !4879
  %31 = load ptr, ptr %inode, align 8, !dbg !4880
  call void @inode_nohighmem(ptr noundef %31) #16, !dbg !4881
  br label %sw.epilog, !dbg !4882

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb, %sw.default
  br label %if.end, !dbg !4883

if.end:                                           ; preds = %sw.epilog, %entry
  %32 = load ptr, ptr %inode, align 8, !dbg !4884
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !4885
  ret ptr %32, !dbg !4886
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4887 dso_local ptr @new_inode(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4888 dso_local i32 @get_next_ino() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4891 dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mapping_set_gfp_mask(ptr noundef %m, i32 noundef %mask) #4 align 16 !dbg !4894 {
entry:
  %m.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4898, metadata !DIExpression()), !dbg !4900
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4899, metadata !DIExpression()), !dbg !4901
  %0 = load i32, ptr %mask.addr, align 4, !dbg !4902
  %1 = load ptr, ptr %m.addr, align 8, !dbg !4903
  %gfp_mask = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3, !dbg !4904
  store i32 %0, ptr %gfp_mask, align 8, !dbg !4905
  ret void, !dbg !4906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mapping_set_unevictable(ptr noundef %mapping) #4 align 16 !dbg !4907 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !4911, metadata !DIExpression()), !dbg !4912
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !4913
  %flags = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9, !dbg !4914
  call void @set_bit(i64 noundef 3, ptr noundef %flags) #16, !dbg !4915
  ret void, !dbg !4916
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4917 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4920 dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4923 dso_local void @inc_nlink(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4924 dso_local void @inode_nohighmem(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ramfs_init_fs_context(ptr noundef %fc) #0 align 16 !dbg !4925 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4927, metadata !DIExpression()), !dbg !4936
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #15, !dbg !4937
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !4928, metadata !DIExpression()), !dbg !4938
  %call = call noalias ptr @kzalloc(i64 noundef 2, i32 noundef 3264) #17, !dbg !4939
  store ptr %call, ptr %fsi, align 8, !dbg !4940
  %0 = load ptr, ptr %fsi, align 8, !dbg !4941
  %tobool = icmp ne ptr %0, null, !dbg !4941
  br i1 %tobool, label %if.end, label %if.then, !dbg !4943

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4944

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fsi, align 8, !dbg !4945
  %mount_opts = getelementptr inbounds %struct.ramfs_fs_info, ptr %1, i32 0, i32 0, !dbg !4946
  %mode = getelementptr inbounds %struct.ramfs_mount_opts, ptr %mount_opts, i32 0, i32 0, !dbg !4947
  store i16 493, ptr %mode, align 2, !dbg !4948
  %2 = load ptr, ptr %fsi, align 8, !dbg !4949
  %3 = load ptr, ptr %fc.addr, align 8, !dbg !4950
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %3, i32 0, i32 12, !dbg !4951
  store ptr %2, ptr %s_fs_info, align 8, !dbg !4952
  %4 = load ptr, ptr %fc.addr, align 8, !dbg !4953
  %ops = getelementptr inbounds %struct.fs_context, ptr %4, i32 0, i32 0, !dbg !4954
  store ptr @ramfs_context_ops, ptr %ops, align 8, !dbg !4955
  store i32 0, ptr %retval, align 4, !dbg !4956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4956

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #15, !dbg !4957
  %5 = load i32, ptr %retval, align 4, !dbg !4957
  ret i32 %5, !dbg !4957
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4958 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4962, metadata !DIExpression()), !dbg !4964
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4963, metadata !DIExpression()), !dbg !4965
  %0 = load i64, ptr %size.addr, align 8, !dbg !4966
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4967
  %or = or i32 %1, 256, !dbg !4968
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !4969
  ret ptr %call, !dbg !4970
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ramfs_kill_sb(ptr noundef %sb) #0 align 16 !dbg !4971 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4973, metadata !DIExpression()), !dbg !4974
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4975
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !4976
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !4976
  call void @kfree(ptr noundef %1) #16, !dbg !4977
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4978
  call void @kill_litter_super(ptr noundef %2) #16, !dbg !4979
  ret void, !dbg !4980
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4981 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4984 dso_local void @kill_litter_super(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_ramfs__322_299_init_ramfs_fs5() #7 section ".init.text" align 16 !dbg !4985 {
entry:
  %call = call i32 @init_ramfs_fs() #18, !dbg !4986
  ret i32 %call, !dbg !4986
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_ramfs_fs() #7 section ".init.text" align 16 !dbg !4987 {
entry:
  %call = call i32 @register_filesystem(ptr noundef @ramfs_fs_type) #16, !dbg !4988
  ret i32 %call, !dbg !4989
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !4990 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4997, metadata !DIExpression()), !dbg !4999
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4998, metadata !DIExpression()), !dbg !5000
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5001
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5002
  %div = sdiv i64 %1, 64, !dbg !5002
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5003
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !5004
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5005
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5006
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !5007
  ret void, !dbg !5008
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !5009 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5017, metadata !DIExpression()), !dbg !5019
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5018, metadata !DIExpression()), !dbg !5020
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5021
  %1 = load i64, ptr %size.addr, align 8, !dbg !5022
  %conv = trunc i64 %1 to i32, !dbg !5022
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !5023
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5024
  %3 = load i64, ptr %size.addr, align 8, !dbg !5024
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #16, !dbg !5024
  ret void, !dbg !5025
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !5026 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5029, metadata !DIExpression()), !dbg !5031
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5030, metadata !DIExpression()), !dbg !5032
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5033
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5035
  br i1 %1, label %if.then, label %if.else, !dbg !5036

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5037
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5037
  %shr = ashr i64 %3, 3, !dbg !5037
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5037
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5039
  %and = and i64 %4, 7, !dbg !5039
  %sh_prom = trunc i64 %and to i32, !dbg !5039
  %shl = shl i32 1, %sh_prom, !dbg !5039
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #15, !dbg !5040, !srcloc !5041
  br label %if.end, !dbg !5042

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5043
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5045
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #15, !dbg !5046, !srcloc !5047
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5048
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5049 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5054, metadata !DIExpression()), !dbg !5056
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5055, metadata !DIExpression()), !dbg !5057
  ret i1 true, !dbg !5058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5059 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5064, metadata !DIExpression()), !dbg !5067
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5065, metadata !DIExpression()), !dbg !5068
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5066, metadata !DIExpression()), !dbg !5069
  ret void, !dbg !5070
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ramfs_create(ptr noundef %idmap, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 16 !dbg !5071 {
entry:
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %excl.addr = alloca i8, align 1
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5073, metadata !DIExpression()), !dbg !5078
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5074, metadata !DIExpression()), !dbg !5079
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5075, metadata !DIExpression()), !dbg !5080
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5076, metadata !DIExpression()), !dbg !5081
  %frombool = zext i1 %excl to i8
  store i8 %frombool, ptr %excl.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %excl.addr, metadata !5077, metadata !DIExpression()), !dbg !5082
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5083
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5084
  %2 = load i16, ptr %mode.addr, align 2, !dbg !5085
  %conv = zext i16 %2 to i32, !dbg !5085
  %or = or i32 %conv, 32768, !dbg !5086
  %conv1 = trunc i32 %or to i16, !dbg !5085
  %call = call i32 @ramfs_mknod(ptr noundef @nop_mnt_idmap, ptr noundef %0, ptr noundef %1, i16 noundef zeroext %conv1, i32 noundef 0) #16, !dbg !5087
  ret i32 %call, !dbg !5088
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_link(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ramfs_symlink(ptr noundef %idmap, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 16 !dbg !5089 {
entry:
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %symname.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %error = alloca i32, align 4
  %l = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5091, metadata !DIExpression()), !dbg !5100
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5092, metadata !DIExpression()), !dbg !5101
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5093, metadata !DIExpression()), !dbg !5102
  store ptr %symname, ptr %symname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !5094, metadata !DIExpression()), !dbg !5103
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5095, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !5106
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5096, metadata !DIExpression()), !dbg !5107
  store i32 -28, ptr %error, align 4, !dbg !5107
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5108
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5109
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5109
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5110
  %call = call ptr @ramfs_get_inode(ptr noundef %1, ptr noundef %2, i16 noundef zeroext -24065, i32 noundef 0) #16, !dbg !5111
  store ptr %call, ptr %inode, align 8, !dbg !5112
  %3 = load ptr, ptr %inode, align 8, !dbg !5113
  %tobool = icmp ne ptr %3, null, !dbg !5113
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5114

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #15, !dbg !5115
  call void @llvm.dbg.declare(metadata ptr %l, metadata !5097, metadata !DIExpression()), !dbg !5116
  %4 = load ptr, ptr %symname.addr, align 8, !dbg !5117
  %call1 = call i64 @strlen(ptr noundef %4) #16, !dbg !5118
  %add = add i64 %call1, 1, !dbg !5119
  %conv = trunc i64 %add to i32, !dbg !5118
  store i32 %conv, ptr %l, align 4, !dbg !5116
  %5 = load ptr, ptr %inode, align 8, !dbg !5120
  %6 = load ptr, ptr %symname.addr, align 8, !dbg !5121
  %7 = load i32, ptr %l, align 4, !dbg !5122
  %call2 = call i32 @page_symlink(ptr noundef %5, ptr noundef %6, i32 noundef %7) #16, !dbg !5123
  store i32 %call2, ptr %error, align 4, !dbg !5124
  %8 = load i32, ptr %error, align 4, !dbg !5125
  %tobool3 = icmp ne i32 %8, 0, !dbg !5125
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !5127

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !5128
  %10 = load ptr, ptr %inode, align 8, !dbg !5130
  call void @d_instantiate(ptr noundef %9, ptr noundef %10) #16, !dbg !5131
  %11 = load ptr, ptr %dentry.addr, align 8, !dbg !5132
  %call5 = call ptr @dget(ptr noundef %11) #16, !dbg !5133
  %12 = load ptr, ptr %dir.addr, align 8, !dbg !5134
  %i_mtime = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 17, !dbg !5135
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #15, !dbg !5136
  %13 = load ptr, ptr %dir.addr, align 8, !dbg !5137
  %call6 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %13) #16, !dbg !5136
  %14 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !5136
  %15 = extractvalue { i64, i64 } %call6, 0, !dbg !5136
  store i64 %15, ptr %14, align 8, !dbg !5136
  %16 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !5136
  %17 = extractvalue { i64, i64 } %call6, 1, !dbg !5136
  store i64 %17, ptr %16, align 8, !dbg !5136
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !5136
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #15, !dbg !5136
  br label %if.end, !dbg !5138

if.else:                                          ; preds = %if.then
  %18 = load ptr, ptr %inode, align 8, !dbg !5139
  call void @iput(ptr noundef %18) #16, !dbg !5140
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #15, !dbg !5141
  br label %if.end7, !dbg !5142

if.end7:                                          ; preds = %if.end, %entry
  %19 = load i32, ptr %error, align 4, !dbg !5143
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !5144
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !5144
  ret i32 %19, !dbg !5145
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ramfs_mkdir(ptr noundef %idmap, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 16 !dbg !5146 {
entry:
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %retval1 = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5148, metadata !DIExpression()), !dbg !5153
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5149, metadata !DIExpression()), !dbg !5154
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5150, metadata !DIExpression()), !dbg !5155
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5151, metadata !DIExpression()), !dbg !5156
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #15, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5152, metadata !DIExpression()), !dbg !5158
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5159
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5160
  %2 = load i16, ptr %mode.addr, align 2, !dbg !5161
  %conv = zext i16 %2 to i32, !dbg !5161
  %or = or i32 %conv, 16384, !dbg !5162
  %conv2 = trunc i32 %or to i16, !dbg !5161
  %call = call i32 @ramfs_mknod(ptr noundef @nop_mnt_idmap, ptr noundef %0, ptr noundef %1, i16 noundef zeroext %conv2, i32 noundef 0) #16, !dbg !5163
  store i32 %call, ptr %retval1, align 4, !dbg !5158
  %3 = load i32, ptr %retval1, align 4, !dbg !5164
  %tobool = icmp ne i32 %3, 0, !dbg !5164
  br i1 %tobool, label %if.end, label %if.then, !dbg !5166

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dir.addr, align 8, !dbg !5167
  call void @inc_nlink(ptr noundef %4) #16, !dbg !5168
  br label %if.end, !dbg !5168

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %retval1, align 4, !dbg !5169
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #15, !dbg !5170
  ret i32 %5, !dbg !5171
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_rmdir(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ramfs_mknod(ptr noundef %idmap, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #0 align 16 !dbg !5172 {
entry:
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %dev.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %error = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5174, metadata !DIExpression()), !dbg !5181
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5175, metadata !DIExpression()), !dbg !5182
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5176, metadata !DIExpression()), !dbg !5183
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5177, metadata !DIExpression()), !dbg !5184
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5178, metadata !DIExpression()), !dbg !5185
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !5186
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5179, metadata !DIExpression()), !dbg !5187
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5188
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5189
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5189
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5190
  %3 = load i16, ptr %mode.addr, align 2, !dbg !5191
  %4 = load i32, ptr %dev.addr, align 4, !dbg !5192
  %call = call ptr @ramfs_get_inode(ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) #16, !dbg !5193
  store ptr %call, ptr %inode, align 8, !dbg !5187
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5180, metadata !DIExpression()), !dbg !5195
  store i32 -28, ptr %error, align 4, !dbg !5195
  %5 = load ptr, ptr %inode, align 8, !dbg !5196
  %tobool = icmp ne ptr %5, null, !dbg !5196
  br i1 %tobool, label %if.then, label %if.end, !dbg !5198

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !5199
  %7 = load ptr, ptr %inode, align 8, !dbg !5201
  call void @d_instantiate(ptr noundef %6, ptr noundef %7) #16, !dbg !5202
  %8 = load ptr, ptr %dentry.addr, align 8, !dbg !5203
  %call1 = call ptr @dget(ptr noundef %8) #16, !dbg !5204
  store i32 0, ptr %error, align 4, !dbg !5205
  %9 = load ptr, ptr %dir.addr, align 8, !dbg !5206
  %i_mtime = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 17, !dbg !5207
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #15, !dbg !5208
  %10 = load ptr, ptr %dir.addr, align 8, !dbg !5209
  %call2 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %10) #16, !dbg !5208
  %11 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !5208
  %12 = extractvalue { i64, i64 } %call2, 0, !dbg !5208
  store i64 %12, ptr %11, align 8, !dbg !5208
  %13 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !5208
  %14 = extractvalue { i64, i64 } %call2, 1, !dbg !5208
  store i64 %14, ptr %13, align 8, !dbg !5208
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !5208
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #15, !dbg !5208
  br label %if.end, !dbg !5210

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, ptr %error, align 4, !dbg !5211
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !5212
  ret i32 %15, !dbg !5213
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ramfs_tmpfile(ptr noundef %idmap, ptr noundef %dir, ptr noundef %file, i16 noundef zeroext %mode) #0 align 16 !dbg !5214 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5216, metadata !DIExpression()), !dbg !5221
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5217, metadata !DIExpression()), !dbg !5222
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5218, metadata !DIExpression()), !dbg !5223
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5219, metadata !DIExpression()), !dbg !5224
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5220, metadata !DIExpression()), !dbg !5226
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5227
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5228
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5228
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5229
  %3 = load i16, ptr %mode.addr, align 2, !dbg !5230
  %call = call ptr @ramfs_get_inode(ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef 0) #16, !dbg !5231
  store ptr %call, ptr %inode, align 8, !dbg !5232
  %4 = load ptr, ptr %inode, align 8, !dbg !5233
  %tobool = icmp ne ptr %4, null, !dbg !5233
  br i1 %tobool, label %if.end, label %if.then, !dbg !5235

if.then:                                          ; preds = %entry
  store i32 -28, ptr %retval, align 4, !dbg !5236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5236

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %file.addr, align 8, !dbg !5237
  %6 = load ptr, ptr %inode, align 8, !dbg !5238
  call void @d_tmpfile(ptr noundef %5, ptr noundef %6) #16, !dbg !5239
  %7 = load ptr, ptr %file.addr, align 8, !dbg !5240
  %call1 = call i32 @finish_open_simple(ptr noundef %7, i32 noundef 0) #16, !dbg !5241
  store i32 %call1, ptr %retval, align 4, !dbg !5242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5242

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !5243
  %8 = load i32, ptr %retval, align 4, !dbg !5243
  ret i32 %8, !dbg !5243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5244 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5248 dso_local i32 @page_symlink(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5251 dso_local void @d_instantiate(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget(ptr noundef %dentry) #4 align 16 !dbg !5252 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5256, metadata !DIExpression()), !dbg !5257
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5258
  %tobool = icmp ne ptr %0, null, !dbg !5258
  br i1 %tobool, label %if.then, label %if.end, !dbg !5260

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5261
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !5262
  call void @lockref_get(ptr noundef %d_lockref) #16, !dbg !5263
  br label %if.end, !dbg !5263

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5264
  ret ptr %2, !dbg !5265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5266 dso_local void @iput(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5267 dso_local void @lockref_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5271 dso_local void @d_tmpfile(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @finish_open_simple(ptr noundef %file, i32 noundef %error) #4 align 16 !dbg !5274 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5278, metadata !DIExpression()), !dbg !5280
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5279, metadata !DIExpression()), !dbg !5281
  %0 = load i32, ptr %error.addr, align 4, !dbg !5282
  %tobool = icmp ne i32 %0, 0, !dbg !5282
  br i1 %tobool, label %if.then, label %if.end, !dbg !5284

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %error.addr, align 4, !dbg !5285
  store i32 %1, ptr %retval, align 4, !dbg !5286
  br label %return, !dbg !5286

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !5287
  %3 = load ptr, ptr %file.addr, align 8, !dbg !5288
  %f_path = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 10, !dbg !5289
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !5290
  %4 = load ptr, ptr %dentry, align 8, !dbg !5290
  %call = call i32 @finish_open(ptr noundef %2, ptr noundef %4, ptr noundef null) #16, !dbg !5291
  store i32 %call, ptr %retval, align 4, !dbg !5292
  br label %return, !dbg !5292

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5293
  ret i32 %5, !dbg !5293
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5294 dso_local i32 @finish_open(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5297 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5299, metadata !DIExpression()), !dbg !5304
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5300, metadata !DIExpression()), !dbg !5305
  %0 = load i64, ptr %size.addr, align 8, !dbg !5306
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5307
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5308

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5309
  %tobool = icmp ne i64 %2, 0, !dbg !5309
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5310

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5311
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5301, metadata !DIExpression()), !dbg !5312
  %3 = load i64, ptr %size.addr, align 8, !dbg !5313
  %cmp = icmp ugt i64 %3, 8192, !dbg !5315
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5316

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5317
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5318
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5319
  store ptr %call, ptr %retval, align 8, !dbg !5320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5320

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5321
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5321
  store i32 %call2, ptr %index, align 4, !dbg !5322
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5323
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5324
  %9 = ptrtoint ptr %8 to i64, !dbg !5324
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5325
  %idxprom = zext i32 %call3 to i64, !dbg !5326
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5326
  %10 = load i32, ptr %index, align 4, !dbg !5327
  %idxprom4 = zext i32 %10 to i64, !dbg !5326
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5326
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5326
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5328
  %13 = load i64, ptr %size.addr, align 8, !dbg !5329
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5330
  store ptr %call6, ptr %retval, align 8, !dbg !5331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5331

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5332
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5333
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5334
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5335
  store ptr %call8, ptr %retval, align 8, !dbg !5336
  br label %return, !dbg !5336

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5337
  ret ptr %16, !dbg !5337
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5338 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !5339 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5343, metadata !DIExpression()), !dbg !5345
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5344, metadata !DIExpression()), !dbg !5346
  %0 = load i64, ptr %size.addr, align 8, !dbg !5347
  %tobool = icmp ne i64 %0, 0, !dbg !5347
  br i1 %tobool, label %if.end, label %if.then, !dbg !5349

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5350
  br label %return, !dbg !5350

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5351
  %cmp = icmp ule i64 %1, 8, !dbg !5353
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5354

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5355
  br label %return, !dbg !5355

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5356
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5358
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5359

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5360
  %cmp4 = icmp ule i64 %3, 96, !dbg !5361
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5362

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5363
  br label %return, !dbg !5363

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5364
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5366
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5367

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5368
  %cmp9 = icmp ule i64 %5, 192, !dbg !5369
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5370

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5371
  br label %return, !dbg !5371

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5372
  %cmp12 = icmp ule i64 %6, 8, !dbg !5374
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5375

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5376
  br label %return, !dbg !5376

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5377
  %cmp15 = icmp ule i64 %7, 16, !dbg !5379
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5380

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5381
  br label %return, !dbg !5381

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5382
  %cmp18 = icmp ule i64 %8, 32, !dbg !5384
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5385

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5386
  br label %return, !dbg !5386

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5387
  %cmp21 = icmp ule i64 %9, 64, !dbg !5389
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5390

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5391
  br label %return, !dbg !5391

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5392
  %cmp24 = icmp ule i64 %10, 128, !dbg !5394
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5395

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5396
  br label %return, !dbg !5396

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5397
  %cmp27 = icmp ule i64 %11, 256, !dbg !5399
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5400

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5401
  br label %return, !dbg !5401

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5402
  %cmp30 = icmp ule i64 %12, 512, !dbg !5404
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5405

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5406
  br label %return, !dbg !5406

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5407
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5409
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5410

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5411
  br label %return, !dbg !5411

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5412
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5414
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5415

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5416
  br label %return, !dbg !5416

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5417
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5419
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5420

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5421
  br label %return, !dbg !5421

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5422
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5424
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5425

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5426
  br label %return, !dbg !5426

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5427
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5429
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5430

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5431
  br label %return, !dbg !5431

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5432
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5434
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5435

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5436
  br label %return, !dbg !5436

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5437
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5439
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5440

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5441
  br label %return, !dbg !5441

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5442
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5444
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5445

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5446
  br label %return, !dbg !5446

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5447
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5449
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5450

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5451
  br label %return, !dbg !5451

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5452
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5454
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5455

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5456
  br label %return, !dbg !5456

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5457
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5459
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5460

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5461
  br label %return, !dbg !5461

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5462
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5464
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5465

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5466
  br label %return, !dbg !5466

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5467, !range !5469, !noundef !1231
  %tobool69 = trunc i8 %25 to i1, !dbg !5467
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5470

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5471

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !5472, !srcloc !5475
  unreachable, !dbg !5472

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5476

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5477

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5478

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5480

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5478

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !5482, !srcloc !5484
  br label %do.end75, !dbg !5482

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5478

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5485
  br label %return, !dbg !5485

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5486
  ret i32 %26, !dbg !5486
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5487 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !5493 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5497, metadata !DIExpression()), !dbg !5499
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5498, metadata !DIExpression()), !dbg !5500
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5501
  %and = and i32 %0, 17, !dbg !5501
  %cmp = icmp eq i32 %and, 0, !dbg !5501
  %lnot = xor i1 %cmp, true, !dbg !5501
  %lnot1 = xor i1 %lnot, true, !dbg !5501
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5501
  %conv = sext i32 %lnot.ext to i64, !dbg !5501
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5501
  %tobool = icmp ne i64 %expval, 0, !dbg !5501
  br i1 %tobool, label %if.then, label %if.end, !dbg !5503

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5504
  br label %return, !dbg !5504

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5505
  %and2 = and i32 %1, 1, !dbg !5507
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5507
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5508

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5509
  br label %return, !dbg !5509

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5510
  br label %return, !dbg !5510

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5512
  ret i32 %2, !dbg !5512
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5513 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5514 dso_local void @__compiletime_assert_245() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ramfs_free_fc(ptr noundef %fc) #0 align 16 !dbg !5515 {
entry:
  %fc.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5519
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12, !dbg !5520
  %1 = load ptr, ptr %s_fs_info, align 8, !dbg !5520
  call void @kfree(ptr noundef %1) #16, !dbg !5521
  ret void, !dbg !5522
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ramfs_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 16 !dbg !5523 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %result = alloca %struct.fs_parse_result, align 8
  %fsi = alloca ptr, align 8
  %opt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5525, metadata !DIExpression()), !dbg !5530
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5526, metadata !DIExpression()), !dbg !5531
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #15, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5527, metadata !DIExpression()), !dbg !5533
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #15, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !5528, metadata !DIExpression()), !dbg !5535
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5536
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12, !dbg !5537
  %1 = load ptr, ptr %s_fs_info, align 8, !dbg !5537
  store ptr %1, ptr %fsi, align 8, !dbg !5535
  call void @llvm.lifetime.start.p0(i64 4, ptr %opt) #15, !dbg !5538
  call void @llvm.dbg.declare(metadata ptr %opt, metadata !5529, metadata !DIExpression()), !dbg !5539
  %2 = load ptr, ptr %fc.addr, align 8, !dbg !5540
  %3 = load ptr, ptr %param.addr, align 8, !dbg !5541
  %call = call i32 @fs_parse(ptr noundef %2, ptr noundef @ramfs_fs_parameters, ptr noundef %3, ptr noundef %result) #16, !dbg !5542
  store i32 %call, ptr %opt, align 4, !dbg !5543
  %4 = load i32, ptr %opt, align 4, !dbg !5544
  %cmp = icmp eq i32 %4, -519, !dbg !5546
  br i1 %cmp, label %if.then, label %if.end4, !dbg !5547

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %fc.addr, align 8, !dbg !5548
  %6 = load ptr, ptr %param.addr, align 8, !dbg !5550
  %call1 = call i32 @vfs_parse_fs_param_source(ptr noundef %5, ptr noundef %6) #16, !dbg !5551
  store i32 %call1, ptr %opt, align 4, !dbg !5552
  %7 = load i32, ptr %opt, align 4, !dbg !5553
  %cmp2 = icmp ne i32 %7, -519, !dbg !5555
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5556

if.then3:                                         ; preds = %if.then
  %8 = load i32, ptr %opt, align 4, !dbg !5557
  store i32 %8, ptr %retval, align 4, !dbg !5558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5558

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !5559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5559

if.end4:                                          ; preds = %entry
  %9 = load i32, ptr %opt, align 4, !dbg !5560
  %cmp5 = icmp slt i32 %9, 0, !dbg !5562
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5563

if.then6:                                         ; preds = %if.end4
  %10 = load i32, ptr %opt, align 4, !dbg !5564
  store i32 %10, ptr %retval, align 4, !dbg !5565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5565

if.end7:                                          ; preds = %if.end4
  %11 = load i32, ptr %opt, align 4, !dbg !5566
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
  ], !dbg !5567

sw.bb:                                            ; preds = %if.end7
  %12 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1, !dbg !5568
  %13 = load i32, ptr %12, align 8, !dbg !5568
  %and = and i32 %13, 4095, !dbg !5570
  %conv = trunc i32 %and to i16, !dbg !5571
  %14 = load ptr, ptr %fsi, align 8, !dbg !5572
  %mount_opts = getelementptr inbounds %struct.ramfs_fs_info, ptr %14, i32 0, i32 0, !dbg !5573
  %mode = getelementptr inbounds %struct.ramfs_mount_opts, ptr %mount_opts, i32 0, i32 0, !dbg !5574
  store i16 %conv, ptr %mode, align 2, !dbg !5575
  br label %sw.epilog, !dbg !5576

sw.epilog:                                        ; preds = %if.end7, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !5577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5577

cleanup:                                          ; preds = %sw.epilog, %if.then6, %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %opt) #15, !dbg !5578
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #15, !dbg !5578
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #15, !dbg !5578
  %15 = load i32, ptr %retval, align 4, !dbg !5578
  ret i32 %15, !dbg !5578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ramfs_get_tree(ptr noundef %fc) #0 align 16 !dbg !5579 {
entry:
  %fc.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5583
  %call = call i32 @get_tree_nodev(ptr noundef %0, ptr noundef @ramfs_fill_super) #16, !dbg !5584
  ret i32 %call, !dbg !5585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fs_parse(ptr noundef %fc, ptr noundef %desc, ptr noundef %param, ptr noundef %result) #4 align 16 !dbg !5586 {
entry:
  %fc.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5590, metadata !DIExpression()), !dbg !5594
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5591, metadata !DIExpression()), !dbg !5595
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5592, metadata !DIExpression()), !dbg !5596
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !5593, metadata !DIExpression()), !dbg !5597
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5598
  %log = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, !dbg !5599
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !5600
  %2 = load ptr, ptr %param.addr, align 8, !dbg !5601
  %3 = load ptr, ptr %result.addr, align 8, !dbg !5602
  %call = call i32 @__fs_parse(ptr noundef %log, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16, !dbg !5603
  ret i32 %call, !dbg !5604
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5605 dso_local i32 @vfs_parse_fs_param_source(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5606 dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5607 dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ramfs_fill_super(ptr noundef %sb, ptr noundef %fc) #0 align 16 !dbg !5613 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %fc.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5615, metadata !DIExpression()), !dbg !5619
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5616, metadata !DIExpression()), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #15, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !5617, metadata !DIExpression()), !dbg !5622
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5623
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5624
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5624
  store ptr %1, ptr %fsi, align 8, !dbg !5622
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !5625
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5618, metadata !DIExpression()), !dbg !5626
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !5627
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 4, !dbg !5628
  store i64 9223372036854775807, ptr %s_maxbytes, align 32, !dbg !5629
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !5630
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3, !dbg !5631
  store i64 4096, ptr %s_blocksize, align 8, !dbg !5632
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !5633
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 2, !dbg !5634
  store i8 12, ptr %s_blocksize_bits, align 4, !dbg !5635
  %5 = load ptr, ptr %sb.addr, align 8, !dbg !5636
  %s_magic = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 12, !dbg !5637
  store i64 2240043254, ptr %s_magic, align 32, !dbg !5638
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !5639
  %s_op = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 6, !dbg !5640
  store ptr @ramfs_ops, ptr %s_op, align 16, !dbg !5641
  %7 = load ptr, ptr %sb.addr, align 8, !dbg !5642
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 30, !dbg !5643
  store i32 1, ptr %s_time_gran, align 8, !dbg !5644
  %8 = load ptr, ptr %sb.addr, align 8, !dbg !5645
  %9 = load ptr, ptr %fsi, align 8, !dbg !5646
  %mount_opts = getelementptr inbounds %struct.ramfs_fs_info, ptr %9, i32 0, i32 0, !dbg !5647
  %mode = getelementptr inbounds %struct.ramfs_mount_opts, ptr %mount_opts, i32 0, i32 0, !dbg !5648
  %10 = load i16, ptr %mode, align 2, !dbg !5648
  %conv = zext i16 %10 to i32, !dbg !5646
  %or = or i32 16384, %conv, !dbg !5649
  %conv1 = trunc i32 %or to i16, !dbg !5650
  %call = call ptr @ramfs_get_inode(ptr noundef %8, ptr noundef null, i16 noundef zeroext %conv1, i32 noundef 0) #16, !dbg !5651
  store ptr %call, ptr %inode, align 8, !dbg !5652
  %11 = load ptr, ptr %inode, align 8, !dbg !5653
  %call2 = call ptr @d_make_root(ptr noundef %11) #16, !dbg !5654
  %12 = load ptr, ptr %sb.addr, align 8, !dbg !5655
  %s_root = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 13, !dbg !5656
  store ptr %call2, ptr %s_root, align 8, !dbg !5657
  %13 = load ptr, ptr %sb.addr, align 8, !dbg !5658
  %s_root3 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 13, !dbg !5660
  %14 = load ptr, ptr %s_root3, align 8, !dbg !5660
  %tobool = icmp ne ptr %14, null, !dbg !5658
  br i1 %tobool, label %if.end, label %if.then, !dbg !5661

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5662

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5663

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !5664
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #15, !dbg !5664
  %15 = load i32, ptr %retval, align 4, !dbg !5664
  ret i32 %15, !dbg !5664
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5665 dso_local ptr @d_make_root(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ramfs_show_options(ptr noundef %m, ptr noundef %root) #0 align 16 !dbg !5668 {
entry:
  %m.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5670, metadata !DIExpression()), !dbg !5673
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5671, metadata !DIExpression()), !dbg !5674
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #15, !dbg !5675
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !5672, metadata !DIExpression()), !dbg !5676
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5677
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5678
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5678
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !5679
  %2 = load ptr, ptr %s_fs_info, align 32, !dbg !5679
  store ptr %2, ptr %fsi, align 8, !dbg !5676
  %3 = load ptr, ptr %fsi, align 8, !dbg !5680
  %mount_opts = getelementptr inbounds %struct.ramfs_fs_info, ptr %3, i32 0, i32 0, !dbg !5682
  %mode = getelementptr inbounds %struct.ramfs_mount_opts, ptr %mount_opts, i32 0, i32 0, !dbg !5683
  %4 = load i16, ptr %mode, align 2, !dbg !5683
  %conv = zext i16 %4 to i32, !dbg !5680
  %cmp = icmp ne i32 %conv, 493, !dbg !5684
  br i1 %cmp, label %if.then, label %if.end, !dbg !5685

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %m.addr, align 8, !dbg !5686
  %6 = load ptr, ptr %fsi, align 8, !dbg !5687
  %mount_opts2 = getelementptr inbounds %struct.ramfs_fs_info, ptr %6, i32 0, i32 0, !dbg !5688
  %mode3 = getelementptr inbounds %struct.ramfs_mount_opts, ptr %mount_opts2, i32 0, i32 0, !dbg !5689
  %7 = load i16, ptr %mode3, align 2, !dbg !5689
  %conv4 = zext i16 %7 to i32, !dbg !5687
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.2, i32 noundef %conv4) #16, !dbg !5690
  br label %if.end, !dbg !5690

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #15, !dbg !5691
  ret i32 0, !dbg !5692
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5693 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5696 dso_local i32 @register_filesystem(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804}
!llvm.ident = !{!4805}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ramfs_dir_inode_operations", scope: !2, file: !3, line: 160, type: !471, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/ramfs/.inode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/ramfs/ramfs\22 -D KBUILD_BASENAME=\22inode\22 -D KBUILD_MODNAME=\22ramfs\22 -D __KBUILD_MODNAME=kmod_ramfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/ramfs/inode.ll fs/ramfs/inode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !211, globals: !226, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/ramfs/inode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "69e9c40002db6b7e784a85ba4f884190")
!4 = !{!5, !15, !23, !30, !38, !54, !59, !66, !72, !77, !86, !91, !97, !103, !110, !115, !123, !131, !140, !145, !150, !156, !168, !174, !181, !193, !198, !208}
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !24, line: 312, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!27 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!28 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!29 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !31, line: 68, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!37 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !39, line: 1325, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!41 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!42 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!43 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!44 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!45 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!46 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!47 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!48 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!49 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!50 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!51 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!52 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!53 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !55, line: 32, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!58 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !60, line: 15, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!63 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!64 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!65 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !67, line: 26, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!70 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!71 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !6, line: 29, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!75 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!76 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !6, line: 38, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85}
!79 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!80 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!81 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!82 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!83 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!84 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!85 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !87, line: 2052, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!90 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !92, line: 54, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "USRQUOTA", value: 0)
!95 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!96 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !98, line: 45, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!101 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!102 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !104, line: 487, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!105 = !{!106, !107, !108, !109}
!106 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!107 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!108 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!109 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !111, line: 65, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!114 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !116, line: 620, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!117 = !{!118, !119, !120, !121, !122}
!118 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!119 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!120 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!121 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!122 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !116, line: 597, baseType: !124, size: 32, elements: !125)
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !{!126, !127, !128, !129, !130}
!126 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!127 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!128 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!129 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!130 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !104, line: 547, baseType: !7, size: 32, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139}
!133 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!134 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!135 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!136 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!137 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!138 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!139 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !104, line: 564, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!143 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !104, line: 577, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!148 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !104, line: 503, baseType: !7, size: 32, elements: !151)
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!153 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!154 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!155 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !157, line: 44, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167}
!159 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!160 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!161 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!162 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!163 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!164 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!165 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!166 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!167 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !169, line: 16, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!170 = !{!171, !172, !173}
!171 = !DIEnumerator(name: "TT_NONE", value: 0)
!172 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!173 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !175, line: 51, baseType: !7, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!176 = !{!177, !178, !179, !180}
!177 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!178 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!179 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!180 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mapping_flags", file: !182, line: 197, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192}
!184 = !DIEnumerator(name: "AS_EIO", value: 0)
!185 = !DIEnumerator(name: "AS_ENOSPC", value: 1)
!186 = !DIEnumerator(name: "AS_MM_ALL_LOCKS", value: 2)
!187 = !DIEnumerator(name: "AS_UNEVICTABLE", value: 3)
!188 = !DIEnumerator(name: "AS_EXITING", value: 4)
!189 = !DIEnumerator(name: "AS_NO_WRITEBACK_TAGS", value: 5)
!190 = !DIEnumerator(name: "AS_LARGE_FOLIO_SUPPORT", value: 6)
!191 = !DIEnumerator(name: "AS_RELEASE_ALWAYS", value: 7)
!192 = !DIEnumerator(name: "AS_STABLE_WRITES", value: 8)
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
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ramfs_param", file: !3, line: 191, baseType: !7, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIEnumerator(name: "Opt_mode", value: 0)
!211 = !{!212, !214, !215, !218, !221, !222, !225}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !213, line: 154, baseType: !7)
!213 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !217)
!217 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !220)
!220 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!221 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !213, line: 52, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !224, line: 88, baseType: !225)
!224 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!225 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!226 = !{!227, !232, !4777, !0, !4779, !4784, !4786, !4788, !4793, !4795}
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 40, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 5)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "ramfs_fs_parameters", scope: !2, file: !3, line: 195, type: !234, isLocal: false, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 512, elements: !3197)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !237, line: 39, size: 256, elements: !238)
!237 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!238 = !{!239, !242, !4774, !4775, !4776}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !237, line: 40, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !237, line: 41, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !237, line: 22, baseType: !245)
!245 = !DISubroutineType(types: !246)
!246 = !{!124, !247, !1789, !634, !4763}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !6, line: 76, size: 128, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !248, file: !6, line: 77, baseType: !240, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !248, file: !6, line: 78, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !6, line: 173, size: 640, elements: !254)
!254 = !{!255, !265, !271, !272, !273, !4761}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !253, file: !6, line: 174, baseType: !256, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !257, line: 113, baseType: !258)
!257 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !257, line: 111, size: 32, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !258, file: !257, line: 112, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !213, line: 174, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 172, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !262, file: !213, line: 173, baseType: !124, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !253, file: !6, line: 175, baseType: !266, size: 8, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !267, line: 17, baseType: !268)
!267 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !269, line: 21, baseType: !270)
!269 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!270 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !253, file: !6, line: 176, baseType: !266, size: 8, offset: 40)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !253, file: !6, line: 177, baseType: !266, size: 8, offset: 48)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !253, file: !6, line: 178, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !24, line: 402, size: 9216, align: 512, elements: !276)
!276 = !{!277, !278, !284, !288, !4443, !4469, !4470, !4471, !4472, !4476, !4479, !4480, !4481, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4548, !4552, !4570, !4587, !4588, !4589, !4590, !4599, !4622, !4623, !4626, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4640, !4641, !4721, !4729, !4730, !4731, !4733, !4737, !4738, !4742, !4743, !4744, !4745, !4747, !4748, !4749, !4756, !4757, !4758, !4760}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !24, line: 403, baseType: !23, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !275, file: !24, line: 406, baseType: !279, size: 128, offset: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !213, line: 190, size: 128, elements: !280)
!280 = !{!281, !283}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !213, line: 191, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !279, file: !213, line: 191, baseType: !282, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !24, line: 409, baseType: !285, size: 448, offset: 192)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 448, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 56)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !275, file: !24, line: 417, baseType: !289, size: 768, offset: 640)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !24, line: 45, size: 768, elements: !290)
!290 = !{!291, !4437, !4438, !4439, !4442}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !289, file: !24, line: 46, baseType: !292, size: 512)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !293, line: 64, size: 512, elements: !294)
!293 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!294 = !{!295, !296, !297, !299, !379, !4339, !4431, !4432, !4433, !4434, !4435, !4436}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !293, line: 65, baseType: !240, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !292, file: !293, line: 66, baseType: !279, size: 128, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !292, file: !293, line: 67, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !292, file: !293, line: 68, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !293, line: 168, size: 768, elements: !302)
!302 = !{!303, !304, !338, !339}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !301, file: !293, line: 169, baseType: !279, size: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !301, file: !293, line: 170, baseType: !305, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !306, line: 29, baseType: !307)
!306 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !306, line: 17, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !306, line: 18, baseType: !310, size: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !306, line: 18, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !310, file: !306, line: 19, baseType: !313, size: 32)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !314, line: 14, size: 32, elements: !315)
!314 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !313, file: !314, line: 15, baseType: !317, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !318, line: 44, baseType: !319)
!318 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !318, line: 14, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !318, line: 15, baseType: !322, size: 32)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !318, line: 15, size: 32, elements: !323)
!323 = !{!324, !325, !330}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !322, file: !318, line: 16, baseType: !261, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !318, line: 24, baseType: !326, size: 16)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !318, line: 24, size: 16, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !326, file: !318, line: 25, baseType: !266, size: 8)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !326, file: !318, line: 26, baseType: !266, size: 8, offset: 8)
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !318, line: 28, baseType: !331, size: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !318, line: 28, size: 32, elements: !332)
!332 = !{!333, !337}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !331, file: !318, line: 29, baseType: !334, size: 16)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !267, line: 19, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !269, line: 24, baseType: !336)
!336 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !331, file: !318, line: 30, baseType: !334, size: 16, offset: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !301, file: !293, line: 171, baseType: !292, size: 512, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !301, file: !293, line: 172, baseType: !340, size: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !293, line: 133, size: 192, elements: !343)
!343 = !{!344, !351, !356}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !342, file: !293, line: 134, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!124, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !293, line: 135, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!240, !349}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !342, file: !293, line: 136, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!124, !349, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !293, line: 125, size: 20736, elements: !363)
!363 = !{!364, !369, !373, !374, !378}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !362, file: !293, line: 126, baseType: !365, size: 192)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 192, elements: !367)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!367 = !{!368}
!368 = !DISubrange(count: 3)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !362, file: !293, line: 127, baseType: !370, size: 4096, offset: 192)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 4096, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !362, file: !293, line: 128, baseType: !124, size: 32, offset: 4288)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !362, file: !293, line: 129, baseType: !375, size: 16384, offset: 4320)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 16384, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 2048)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !362, file: !293, line: 130, baseType: !124, size: 32, offset: 20704)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !292, file: !293, line: 69, baseType: !380, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !293, line: 116, size: 384, elements: !383)
!383 = !{!384, !388, !414, !4327, !4331, !4335}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !382, file: !293, line: 117, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !298}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !382, file: !293, line: 118, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !392, line: 254, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!393 = !{!394, !407}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !391, file: !392, line: 255, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!398, !298, !401, !366}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !213, line: 66, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !224, line: 73, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !224, line: 15, baseType: !220)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !392, line: 30, size: 128, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !402, file: !392, line: 31, baseType: !240, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !402, file: !392, line: 32, baseType: !406, size: 16, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !213, line: 24, baseType: !336)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !391, file: !392, line: 256, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!398, !298, !401, !240, !411}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !213, line: 61, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !224, line: 72, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !224, line: 16, baseType: !221)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !382, file: !293, line: 119, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !392, line: 84, size: 320, elements: !419)
!419 = !{!420, !421, !425, !4323, !4325}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !418, file: !392, line: 85, baseType: !240, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !418, file: !392, line: 86, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!406, !298, !401, !124}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !418, file: !392, line: 88, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!406, !298, !429, !124}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !392, line: 175, size: 512, elements: !431)
!431 = !{!432, !433, !434, !435, !4314, !4318, !4319}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !430, file: !392, line: 176, baseType: !402, size: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !430, file: !392, line: 177, baseType: !411, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !430, file: !392, line: 178, baseType: !214, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !430, file: !392, line: 179, baseType: !436, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !87, line: 472, size: 1536, align: 64, elements: !441)
!441 = !{!442, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4308, !4309, !4310, !4311, !4312, !4313}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !440, file: !87, line: 473, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !87, line: 641, size: 4800, elements: !445)
!445 = !{!446, !447, !448, !456, !457, !464, !465, !468, !469, !4143, !4144, !4145, !4146, !4147, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4187, !4190, !4191, !4192, !4201, !4202, !4203, !4204}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !444, file: !87, line: 642, baseType: !406, size: 16)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !444, file: !87, line: 643, baseType: !336, size: 16, offset: 16)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !444, file: !87, line: 644, baseType: !449, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !450, line: 23, baseType: !451)
!450 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 21, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !451, file: !450, line: 22, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !213, line: 37, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !224, line: 49, baseType: !7)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !444, file: !87, line: 645, baseType: !279, size: 128, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !444, file: !87, line: 646, baseType: !458, size: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !450, line: 28, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 26, size: 32, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !459, file: !450, line: 27, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !213, line: 38, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !224, line: 50, baseType: !7)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !444, file: !87, line: 647, baseType: !7, size: 32, offset: 224)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !444, file: !87, line: 650, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !87, line: 607, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !444, file: !87, line: 651, baseType: !466, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !444, file: !87, line: 654, baseType: !470, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !87, line: 1966, size: 2048, align: 512, elements: !473)
!473 = !{!474, !3971, !3981, !3985, !3989, !3993, !3997, !4001, !4005, !4009, !4013, !4014, !4018, !4022, !4059, !4088, !4092, !4098, !4102, !4106, !4110, !4114, !4118, !4124, !4128}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !472, file: !87, line: 1967, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !443, !478, !7}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !480, line: 82, size: 1536, elements: !481)
!480 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!481 = !{!482, !483, !493, !501, !502, !522, !523, !527, !540, !3954, !3955, !3956, !3957, !3963, !3964, !3965}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !479, file: !480, line: 84, baseType: !7, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !479, file: !480, line: 85, baseType: !484, size: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !485, line: 275, baseType: !486)
!485 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !485, line: 275, size: 32, elements: !487)
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !486, file: !485, line: 275, baseType: !489, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !485, line: 69, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !485, line: 64, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !490, file: !485, line: 65, baseType: !7, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !479, file: !480, line: 86, baseType: !494, size: 128, offset: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !495, line: 38, size: 128, elements: !496)
!495 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!496 = !{!497, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !495, line: 39, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !494, file: !495, line: 39, baseType: !500, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !479, file: !480, line: 87, baseType: !478, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !479, file: !480, line: 88, baseType: !503, size: 128, offset: 256)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !480, line: 49, size: 128, elements: !504)
!504 = !{!505, !519}
!505 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !480, line: 50, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !480, line: 50, size: 64, elements: !507)
!507 = !{!508, !515}
!508 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !480, line: 51, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !506, file: !480, line: 51, size: 64, elements: !510)
!510 = !{!511, !514}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !509, file: !480, line: 52, baseType: !512, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !267, line: 21, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !269, line: 27, baseType: !7)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !509, file: !480, line: 52, baseType: !512, size: 32, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !506, file: !480, line: 54, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !267, line: 23, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !269, line: 31, baseType: !518)
!518 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !503, file: !480, line: 56, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !479, file: !480, line: 89, baseType: !443, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !479, file: !480, line: 91, baseType: !524, size: 256, offset: 448)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !479, file: !480, line: 94, baseType: !528, size: 64, offset: 704)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !529, line: 25, size: 64, elements: !530)
!529 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !529, line: 26, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 26, size: 64, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !532, file: !529, line: 28, baseType: !517, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !529, line: 30, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !532, file: !529, line: 30, size: 64, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !536, file: !529, line: 31, baseType: !305, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !536, file: !529, line: 32, baseType: !124, size: 32, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !479, file: !480, line: 95, baseType: !541, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !480, line: 128, size: 1024, align: 512, elements: !544)
!544 = !{!545, !549, !550, !557, !563, !567, !571, !575, !576, !580, !584, !3944, !3948}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !543, file: !480, line: 129, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!124, !478, !7}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !543, file: !480, line: 130, baseType: !546, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !543, file: !480, line: 131, baseType: !551, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!124, !554, !556}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !543, file: !480, line: 132, baseType: !558, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!124, !554, !7, !240, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !543, file: !480, line: 134, baseType: !564, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!124, !554}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !543, file: !480, line: 135, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!124, !478}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !543, file: !480, line: 136, baseType: !572, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !478}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !543, file: !480, line: 137, baseType: !572, size: 64, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !543, file: !480, line: 138, baseType: !577, size: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !478, !443}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !543, file: !480, line: 139, baseType: !581, size: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!366, !478, !366, !124}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !543, file: !480, line: 140, baseType: !585, size: 64, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!588, !3943}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !590, line: 70, size: 256, elements: !591)
!590 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!591 = !{!592, !593, !3939, !3940}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !589, file: !590, line: 71, baseType: !478, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !589, file: !590, line: 72, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !87, line: 1190, size: 10752, elements: !596)
!596 = !{!597, !598, !601, !602, !603, !604, !1812, !1965, !2005, !2090, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2107, !2111, !2112, !2620, !2623, !2693, !2696, !2697, !2698, !2739, !3872, !3873, !3874, !3875, !3876, !3877, !3880, !3882, !3889, !3890, !3891, !3892, !3893, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !595, file: !87, line: 1191, baseType: !279, size: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !595, file: !87, line: 1192, baseType: !599, size: 32, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !213, line: 21, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !213, line: 18, baseType: !512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !595, file: !87, line: 1193, baseType: !270, size: 8, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !595, file: !87, line: 1194, baseType: !221, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !595, file: !87, line: 1195, baseType: !222, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !595, file: !87, line: 1196, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !87, line: 2366, size: 576, elements: !607)
!607 = !{!608, !609, !610, !1788, !1790, !1794, !1798, !1799, !1800, !1801, !1804, !1805, !1806, !1808, !1809, !1810, !1811}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !606, file: !87, line: 2367, baseType: !240, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !606, file: !87, line: 2368, baseType: !124, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !606, file: !87, line: 2376, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!124, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !6, line: 90, size: 1216, elements: !616)
!616 = !{!617, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !615, file: !6, line: 91, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !6, line: 115, size: 384, elements: !621)
!621 = !{!622, !626, !630, !1759, !1763, !1764}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !620, file: !6, line: 116, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !614}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !620, file: !6, line: 117, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!124, !614, !614}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !620, file: !6, line: 118, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!124, !614, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !6, line: 63, size: 320, elements: !636)
!636 = !{!637, !638, !639, !1757, !1758}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !635, file: !6, line: 64, baseType: !240, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !6, line: 65, baseType: !5, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !6, line: 66, baseType: !640, size: 64, offset: 128)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !6, line: 66, size: 64, elements: !641)
!641 = !{!642, !643, !644, !658}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !640, file: !6, line: 67, baseType: !366, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !640, file: !6, line: 68, baseType: !214, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !6, line: 69, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !87, line: 2470, size: 256, elements: !647)
!647 = !{!648, !649, !650, !651, !654}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !87, line: 2471, baseType: !240, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !646, file: !87, line: 2472, baseType: !240, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !646, file: !87, line: 2473, baseType: !261, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !646, file: !87, line: 2474, baseType: !652, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !87, line: 2469, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !646, file: !87, line: 2475, baseType: !655, offset: 256)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: -1)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !640, file: !6, line: 70, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !87, line: 994, size: 1856, align: 64, elements: !661)
!661 = !{!662, !681, !682, !684, !693, !706, !707, !708, !773, !985, !994, !1000, !1001, !1747, !1748, !1749, !1750, !1752, !1753, !1756}
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !87, line: 995, baseType: !663, size: 128)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !87, line: 995, size: 128, elements: !664)
!664 = !{!665, !671, !680}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !663, file: !87, line: 996, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !667, line: 60, size: 64, elements: !668)
!667 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !666, file: !667, line: 61, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !663, file: !87, line: 997, baseType: !672, size: 128, align: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !213, line: 232, size: 128, align: 64, elements: !673)
!673 = !{!674, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !213, line: 233, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !672, file: !213, line: 234, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !675}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !663, file: !87, line: 998, baseType: !7, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !660, file: !87, line: 1005, baseType: !305, size: 32, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !660, file: !87, line: 1006, baseType: !683, size: 32, offset: 160)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !213, line: 156, baseType: !7)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !660, file: !87, line: 1007, baseType: !685, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !686, line: 13, baseType: !687)
!686 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !213, line: 181, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 179, size: 64, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !688, file: !213, line: 180, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !267, line: 22, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !269, line: 30, baseType: !225)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !660, file: !87, line: 1008, baseType: !694, size: 256, offset: 256)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !695, line: 66, size: 256, elements: !696)
!695 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!696 = !{!697, !698, !700, !705}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !694, file: !695, line: 67, baseType: !685, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !694, file: !695, line: 68, baseType: !699, size: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !314, line: 23, baseType: !313)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !694, file: !695, line: 70, baseType: !701, size: 32, offset: 96)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !702, line: 15, size: 32, elements: !703)
!702 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !701, file: !702, line: 20, baseType: !261, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !694, file: !695, line: 72, baseType: !279, size: 128, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !660, file: !87, line: 1009, baseType: !222, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !660, file: !87, line: 1010, baseType: !7, size: 32, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !660, file: !87, line: 1011, baseType: !709, size: 256, offset: 640)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !87, line: 948, size: 256, elements: !710)
!710 = !{!711, !732, !769, !770, !771, !772}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !87, line: 949, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !713, line: 34, baseType: !714)
!713 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 25, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !714, file: !713, line: 26, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !718, line: 27, baseType: !719)
!718 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !718, line: 13, size: 64, elements: !720)
!720 = !{!721, !731}
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !718, line: 14, baseType: !722, size: 32)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !718, line: 14, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !722, file: !718, line: 15, baseType: !261, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 16, baseType: !726, size: 32)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 16, size: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !726, file: !718, line: 18, baseType: !266, size: 8)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !726, file: !718, line: 19, baseType: !730, size: 24, offset: 8)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 24, elements: !367)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !719, file: !718, line: 26, baseType: !317, size: 32, offset: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !709, file: !87, line: 950, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !16, line: 59, size: 768, elements: !735)
!735 = !{!736, !737, !738, !739, !752, !753, !760, !761}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !734, file: !16, line: 61, baseType: !256, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !734, file: !16, line: 62, baseType: !7, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !734, file: !16, line: 63, baseType: !305, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !734, file: !16, line: 65, baseType: !740, size: 256, offset: 128)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 256, elements: !750)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !213, line: 194, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !741, file: !213, line: 195, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !213, line: 198, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !213, line: 199, baseType: !744, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !745, file: !213, line: 199, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!750 = !{!751}
!751 = !DISubrange(count: 4)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !734, file: !16, line: 66, baseType: !741, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !734, file: !16, line: 68, baseType: !754, size: 192, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !755, line: 41, baseType: !756)
!755 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !755, line: 37, size: 192, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !756, file: !755, line: 38, baseType: !305, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !756, file: !755, line: 39, baseType: !279, size: 128, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !734, file: !16, line: 69, baseType: !672, size: 128, align: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !734, file: !16, line: 70, baseType: !762, offset: 768)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, elements: !656)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !16, line: 54, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !763, file: !16, line: 55, baseType: !124, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !763, file: !16, line: 56, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !16, line: 56, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !709, file: !87, line: 951, baseType: !15, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !709, file: !87, line: 952, baseType: !449, size: 32, offset: 160)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !709, file: !87, line: 952, baseType: !449, size: 32, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !709, file: !87, line: 953, baseType: !124, size: 32, offset: 224)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !660, file: !87, line: 1012, baseType: !774, size: 64, offset: 896)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !777, line: 110, size: 1472, elements: !778)
!777 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !795, !796, !797, !798, !799, !800, !930, !931, !932, !933, !934, !965, !968, !972, !980}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !776, file: !777, line: 111, baseType: !685, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !776, file: !777, line: 112, baseType: !449, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !776, file: !777, line: 113, baseType: !458, size: 32, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !776, file: !777, line: 114, baseType: !449, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !776, file: !777, line: 115, baseType: !458, size: 32, offset: 160)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !776, file: !777, line: 116, baseType: !449, size: 32, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !776, file: !777, line: 117, baseType: !458, size: 32, offset: 224)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !776, file: !777, line: 118, baseType: !449, size: 32, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !776, file: !777, line: 119, baseType: !458, size: 32, offset: 288)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !776, file: !777, line: 120, baseType: !7, size: 32, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !776, file: !777, line: 121, baseType: !790, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !791, line: 24, baseType: !792)
!791 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !791, line: 24, size: 64, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !792, file: !791, line: 24, baseType: !516, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !776, file: !777, line: 122, baseType: !790, size: 64, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !776, file: !777, line: 123, baseType: !790, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !776, file: !777, line: 124, baseType: !790, size: 64, offset: 576)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !776, file: !777, line: 125, baseType: !790, size: 64, offset: 640)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !776, file: !777, line: 127, baseType: !270, size: 8, offset: 704)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !776, file: !777, line: 129, baseType: !801, size: 64, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !803, line: 195, size: 1728, elements: !804)
!803 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!804 = !{!805, !806, !811, !823, !832, !835, !836, !843, !844, !845, !846, !849, !850, !851, !853, !854, !894, !915}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !802, file: !803, line: 196, baseType: !256, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !802, file: !803, line: 197, baseType: !807, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !803, line: 28, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !213, line: 104, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !267, line: 20, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !269, line: 26, baseType: !124)
!811 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !803, line: 198, baseType: !812, size: 192, offset: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !803, line: 198, size: 192, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !812, file: !803, line: 199, baseType: !279, size: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !812, file: !803, line: 200, baseType: !816, size: 192, align: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !817, line: 5, size: 192, align: 64, elements: !818)
!817 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!818 = !{!819, !820, !822}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !816, file: !817, line: 6, baseType: !221, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !816, file: !817, line: 7, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !816, file: !817, line: 8, baseType: !821, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !802, file: !803, line: 205, baseType: !824, size: 320, offset: 256)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !825, line: 48, size: 320, elements: !826)
!825 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!826 = !{!827, !828, !829, !830, !831}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !824, file: !825, line: 49, baseType: !685, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !824, file: !825, line: 55, baseType: !685, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !824, file: !825, line: 57, baseType: !701, size: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !824, file: !825, line: 59, baseType: !699, size: 32, offset: 160)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !824, file: !825, line: 60, baseType: !279, size: 128, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !802, file: !803, line: 206, baseType: !833, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !803, line: 206, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !802, file: !803, line: 207, baseType: !214, size: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !803, line: 208, baseType: !837, size: 64, offset: 704)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !803, line: 208, size: 64, elements: !838)
!838 = !{!839, !842}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !837, file: !803, line: 209, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !841, line: 8, baseType: !692)
!841 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!842 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !837, file: !803, line: 210, baseType: !840, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !802, file: !803, line: 212, baseType: !840, size: 64, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !802, file: !803, line: 213, baseType: !449, size: 32, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !802, file: !803, line: 214, baseType: !458, size: 32, offset: 864)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !802, file: !803, line: 215, baseType: !847, size: 32, offset: 896)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !803, line: 31, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !213, line: 110, baseType: !512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !802, file: !803, line: 216, baseType: !336, size: 16, offset: 928)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !802, file: !803, line: 217, baseType: !336, size: 16, offset: 944)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !802, file: !803, line: 221, baseType: !852, size: 16, offset: 960)
!852 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !802, file: !803, line: 228, baseType: !221, size: 64, offset: 1024)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !803, line: 245, baseType: !855, size: 320, offset: 1088)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !803, line: 245, size: 320, elements: !856)
!856 = !{!857, !886}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !855, file: !803, line: 246, baseType: !858, size: 320)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !803, line: 114, size: 320, elements: !859)
!859 = !{!860, !861, !873, !876, !885}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !858, file: !803, line: 116, baseType: !221, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !803, line: 117, baseType: !862, size: 64, offset: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !803, line: 117, size: 64, elements: !863)
!863 = !{!864, !872}
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !803, line: 118, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !803, line: 118, size: 64, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !865, file: !803, line: 120, baseType: !334, size: 16)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !865, file: !803, line: 121, baseType: !869, size: 48, offset: 16)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 48, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 6)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !862, file: !803, line: 127, baseType: !221, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !858, file: !803, line: 129, baseType: !874, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !803, line: 102, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !858, file: !803, line: 130, baseType: !877, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !803, line: 108, size: 192, elements: !879)
!879 = !{!880, !881, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !878, file: !803, line: 109, baseType: !672, size: 128, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !878, file: !803, line: 110, baseType: !256, size: 32, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !878, file: !803, line: 111, baseType: !883, size: 8, offset: 160)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !213, line: 35, baseType: !884)
!884 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !858, file: !803, line: 131, baseType: !240, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !803, line: 247, baseType: !887, size: 320)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !855, file: !803, line: 247, size: 320, elements: !888)
!888 = !{!889, !890, !891, !892, !893}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !887, file: !803, line: 248, baseType: !221, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !887, file: !803, line: 249, baseType: !221, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !887, file: !803, line: 250, baseType: !874, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !887, file: !803, line: 251, baseType: !877, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !887, file: !803, line: 252, baseType: !366, size: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !803, line: 260, baseType: !895, size: 256, offset: 1408)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !803, line: 260, size: 256, elements: !896)
!896 = !{!897, !903}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !895, file: !803, line: 261, baseType: !898, size: 256)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !803, line: 134, size: 256, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !898, file: !803, line: 135, baseType: !214, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !898, file: !803, line: 136, baseType: !902, size: 256)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 256, elements: !750)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !803, line: 262, baseType: !904, size: 256)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !803, line: 262, size: 256, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !904, file: !803, line: 264, baseType: !279, size: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !904, file: !803, line: 265, baseType: !908, size: 128, offset: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !909, line: 22, size: 128, elements: !910)
!909 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!910 = !{!911, !914}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !908, file: !909, line: 23, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !909, line: 23, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !908, file: !909, line: 24, baseType: !221, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !802, file: !803, line: 280, baseType: !916, size: 64, offset: 1664)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !803, line: 176, size: 192, elements: !918)
!918 = !{!919, !928, !929}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !917, file: !803, line: 177, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !803, line: 171, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!124, !801, !924, !926, !801}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !917, file: !803, line: 178, baseType: !801, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !917, file: !803, line: 179, baseType: !874, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !776, file: !777, line: 130, baseType: !801, size: 64, offset: 832)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !776, file: !777, line: 131, baseType: !801, size: 64, offset: 896)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !776, file: !777, line: 132, baseType: !801, size: 64, offset: 960)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !776, file: !777, line: 135, baseType: !214, size: 64, offset: 1024)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !776, file: !777, line: 137, baseType: !935, size: 64, offset: 1088)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !937, line: 14, size: 1088, elements: !938)
!937 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!938 = !{!939, !940, !949, !950, !951, !952, !953, !954}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !936, file: !937, line: 15, baseType: !256, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !936, file: !937, line: 17, baseType: !941, size: 320, offset: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !942, line: 22, size: 320, elements: !943)
!942 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!943 = !{!944, !945, !946, !947}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !941, file: !942, line: 23, baseType: !699, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !941, file: !942, line: 24, baseType: !691, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !941, file: !942, line: 26, baseType: !279, size: 128, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !941, file: !942, line: 28, baseType: !948, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !936, file: !937, line: 19, baseType: !221, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !936, file: !937, line: 20, baseType: !685, size: 64, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !936, file: !937, line: 23, baseType: !745, size: 128, offset: 512)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !936, file: !937, line: 24, baseType: !449, size: 32, offset: 640)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !936, file: !937, line: 29, baseType: !685, size: 64, offset: 704)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !936, file: !937, line: 36, baseType: !955, size: 320, offset: 768)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !956, line: 15, size: 320, elements: !957)
!956 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!957 = !{!958, !959, !960, !961, !962, !963, !964}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !955, file: !956, line: 16, baseType: !699, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !955, file: !956, line: 18, baseType: !124, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !955, file: !956, line: 19, baseType: !124, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !955, file: !956, line: 20, baseType: !124, size: 32, offset: 96)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !955, file: !956, line: 21, baseType: !124, size: 32, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !955, file: !956, line: 22, baseType: !221, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !955, file: !956, line: 23, baseType: !221, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !776, file: !777, line: 138, baseType: !966, size: 64, offset: 1152)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !450, line: 18, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !776, file: !777, line: 139, baseType: !969, size: 64, offset: 1216)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !971, line: 16, flags: DIFlagFwdDecl)
!971 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!972 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !776, file: !777, line: 140, baseType: !973, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !777, line: 25, size: 64, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !974, file: !777, line: 26, baseType: !261, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !974, file: !777, line: 27, baseType: !124, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !974, file: !777, line: 28, baseType: !979, offset: 64)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, elements: !656)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 142, baseType: !981, size: 128, offset: 1344)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 142, size: 128, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !981, file: !777, line: 143, baseType: !124, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !981, file: !777, line: 144, baseType: !672, size: 128, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !660, file: !87, line: 1013, baseType: !986, size: 256, offset: 960)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !87, line: 970, size: 256, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !986, file: !87, line: 971, baseType: !221, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !986, file: !87, line: 972, baseType: !7, size: 32, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !986, file: !87, line: 973, baseType: !7, size: 32, offset: 96)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !986, file: !87, line: 974, baseType: !7, size: 32, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !986, file: !87, line: 975, baseType: !7, size: 32, offset: 160)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !986, file: !87, line: 976, baseType: !222, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !660, file: !87, line: 1014, baseType: !995, size: 128, offset: 1216)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !996, line: 8, size: 128, elements: !997)
!996 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !995, file: !996, line: 9, baseType: !588, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !995, file: !996, line: 10, baseType: !478, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !660, file: !87, line: 1015, baseType: !443, size: 64, offset: 1344)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !660, file: !87, line: 1016, baseType: !1002, size: 64, offset: 1408)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !87, line: 1914, size: 2112, elements: !1005)
!1005 = !{!1006, !1007, !1011, !1016, !1020, !1593, !1594, !1600, !1613, !1621, !1625, !1626, !1630, !1631, !1635, !1640, !1641, !1645, !1649, !1655, !1656, !1660, !1661, !1668, !1672, !1676, !1682, !1686, !1728, !1732, !1736, !1737, !1743}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1004, file: !87, line: 1915, baseType: !274, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1004, file: !87, line: 1916, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!222, !659, !222, !124}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1004, file: !87, line: 1917, baseType: !1012, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!398, !659, !366, !411, !1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1004, file: !87, line: 1918, baseType: !1017, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!398, !659, !240, !411, !1015}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1004, file: !87, line: 1919, baseType: !1021, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!398, !1024, !1591}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !87, line: 373, size: 384, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1033, !1034, !1035, !1036}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1025, file: !87, line: 374, baseType: !659, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1025, file: !87, line: 375, baseType: !222, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1025, file: !87, line: 376, baseType: !1030, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !1024, !220}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1025, file: !87, line: 377, baseType: !214, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1025, file: !87, line: 378, baseType: !124, size: 32, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1025, file: !87, line: 379, baseType: !334, size: 16, offset: 288)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !87, line: 380, baseType: !1037, size: 64, offset: 320)
!1037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1025, file: !87, line: 380, size: 64, elements: !1038)
!1038 = !{!1039, !1587}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1037, file: !87, line: 386, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !182, line: 998, size: 448, elements: !1042)
!1042 = !{!1043, !1573, !1574}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1041, file: !182, line: 999, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !39, line: 293, size: 1536, elements: !1046)
!1046 = !{!1047, !1540, !1554}
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !39, line: 295, baseType: !1048, size: 512)
!1048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !39, line: 295, size: 512, elements: !1049)
!1049 = !{!1050, !1076}
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !39, line: 296, baseType: !1051, size: 448)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !39, line: 296, size: 448, elements: !1052)
!1052 = !{!1053, !1054, !1063, !1064, !1065, !1074, !1075}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1051, file: !39, line: 298, baseType: !221, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !39, line: 299, baseType: !1055, size: 128, offset: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !39, line: 299, size: 128, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1055, file: !39, line: 300, baseType: !279, size: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !39, line: 302, baseType: !1059, size: 128)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !39, line: 302, size: 128, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1059, file: !39, line: 303, baseType: !214, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1059, file: !39, line: 305, baseType: !7, size: 32, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1051, file: !39, line: 310, baseType: !439, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1051, file: !39, line: 311, baseType: !221, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !39, line: 312, baseType: !1066, size: 64, offset: 320)
!1066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !39, line: 312, size: 64, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1066, file: !39, line: 313, baseType: !214, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1066, file: !39, line: 314, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !39, line: 257, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 255, size: 64, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1071, file: !39, line: 256, baseType: !221, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1051, file: !39, line: 316, baseType: !261, size: 32, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1051, file: !39, line: 317, baseType: !261, size: 32, offset: 416)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1048, file: !39, line: 323, baseType: !1077, size: 512, align: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !39, line: 74, size: 512, align: 128, elements: !1078)
!1078 = !{!1079, !1080, !1534, !1539}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !39, line: 75, baseType: !221, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !39, line: 83, baseType: !1081, size: 320, offset: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !39, line: 83, size: 320, elements: !1082)
!1082 = !{!1083, !1104, !1118, !1122, !1533}
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !39, line: 84, baseType: !1084, size: 320)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !39, line: 84, size: 320, elements: !1085)
!1085 = !{!1086, !1097, !1098, !1103}
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !39, line: 90, baseType: !1087, size: 128)
!1087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !39, line: 90, size: 128, elements: !1088)
!1088 = !{!1089, !1090, !1095, !1096}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1087, file: !39, line: 91, baseType: !279, size: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !39, line: 94, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !39, line: 94, size: 128, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1091, file: !39, line: 96, baseType: !214, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1091, file: !39, line: 98, baseType: !7, size: 32, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1087, file: !39, line: 102, baseType: !279, size: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1087, file: !39, line: 103, baseType: !279, size: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1084, file: !39, line: 106, baseType: !439, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !39, line: 107, baseType: !1099, size: 64, offset: 192)
!1099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !39, line: 107, size: 64, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1099, file: !39, line: 108, baseType: !221, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1099, file: !39, line: 109, baseType: !221, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1084, file: !39, line: 117, baseType: !221, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !39, line: 119, baseType: !1105, size: 320)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !39, line: 119, size: 320, elements: !1106)
!1106 = !{!1107, !1108, !1111, !1112, !1113}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1105, file: !39, line: 124, baseType: !221, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1105, file: !39, line: 125, baseType: !1109, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !39, line: 125, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1105, file: !39, line: 126, baseType: !221, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1105, file: !39, line: 127, baseType: !221, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !39, line: 128, baseType: !1114, size: 64, offset: 256)
!1114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !39, line: 128, size: 64, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1114, file: !39, line: 133, baseType: !221, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1114, file: !39, line: 138, baseType: !685, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !39, line: 141, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !39, line: 141, size: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1119, file: !39, line: 142, baseType: !221, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !39, line: 144, baseType: !1123, size: 128)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !39, line: 144, size: 128, elements: !1124)
!1124 = !{!1125, !1532}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1123, file: !39, line: 146, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 126, size: 1216, elements: !1128)
!1128 = !{!1129, !1139, !1160, !1171, !1172, !1173, !1174, !1514, !1515, !1516}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1127, file: !31, line: 127, baseType: !1130, size: 384)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 21, size: 384, elements: !1131)
!1131 = !{!1132, !1133, !1135, !1136, !1137, !1138}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1130, file: !31, line: 22, baseType: !221, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1130, file: !31, line: 23, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1130, file: !31, line: 24, baseType: !1134, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1130, file: !31, line: 25, baseType: !221, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1130, file: !31, line: 26, baseType: !221, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1130, file: !31, line: 27, baseType: !221, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1127, file: !31, line: 128, baseType: !1140, size: 128, offset: 384)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1141, line: 105, size: 128, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1140, file: !1141, line: 110, baseType: !221, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1140, file: !1141, line: 118, baseType: !1145, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1141, line: 95, size: 448, elements: !1147)
!1147 = !{!1148, !1149, !1155, !1156, !1157, !1158, !1159}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1146, file: !1141, line: 96, baseType: !685, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1146, file: !1141, line: 97, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1141, line: 60, baseType: !1152)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !1154}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1146, file: !1141, line: 98, baseType: !1150, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1146, file: !1141, line: 99, baseType: !883, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1146, file: !1141, line: 100, baseType: !883, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1146, file: !1141, line: 101, baseType: !672, size: 128, align: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1146, file: !1141, line: 102, baseType: !1154, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1127, file: !31, line: 129, baseType: !1161, size: 256, offset: 512)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1162, line: 26, size: 256, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1161, file: !1162, line: 27, baseType: !7, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1161, file: !1162, line: 28, baseType: !1166, size: 192, offset: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1167, line: 43, size: 192, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1166, file: !1167, line: 44, baseType: !699, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1166, file: !1167, line: 45, baseType: !279, size: 128, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1127, file: !31, line: 130, baseType: !30, size: 32, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !31, line: 131, baseType: !7, size: 32, offset: 800)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1127, file: !31, line: 132, baseType: !221, size: 64, offset: 832)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1127, file: !31, line: 133, baseType: !1175, size: 64, offset: 896)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 77, size: 192, elements: !1178)
!1178 = !{!1179, !1184, !1510}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1177, file: !31, line: 83, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1177, file: !31, line: 89, baseType: !1185, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !39, line: 1184, baseType: !7)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1191, line: 512, size: 896, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1192 = !{!1193, !1477, !1478, !1485, !1492, !1502, !1503, !1504, !1506, !1508}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1191, line: 513, baseType: !1194, size: 320)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !1191, line: 513, size: 320, elements: !1195)
!1195 = !{!1196, !1473, !1474, !1475, !1476}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1194, file: !1191, line: 514, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !39, line: 625, size: 1344, elements: !1199)
!1199 = !{!1200, !1209, !1378, !1384, !1391, !1392, !1397, !1398, !1403, !1404, !1407, !1466, !1467, !1468, !1469, !1470, !1471}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !39, line: 628, baseType: !1201, size: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !39, line: 628, size: 128, elements: !1202)
!1202 = !{!1203, !1208}
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !39, line: 629, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !39, line: 629, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1204, file: !39, line: 631, baseType: !221, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1204, file: !39, line: 632, baseType: !221, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1201, file: !39, line: 635, baseType: !672, size: 128, align: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1198, file: !39, line: 639, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !39, line: 733, size: 10240, elements: !1212)
!1212 = !{!1213, !1376}
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !39, line: 734, baseType: !1214, size: 10240)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1211, file: !39, line: 734, size: 10240, elements: !1215)
!1215 = !{!1216, !1220, !1234, !1238, !1239, !1240, !1241, !1242, !1243, !1252, !1253, !1254, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1293, !1295, !1298, !1345, !1346, !1347, !1350, !1351, !1352, !1355, !1356, !1357, !1363, !1364}
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !39, line: 739, baseType: !1217, size: 512, align: 512)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !39, line: 739, size: 512, align: 512, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1217, file: !39, line: 747, baseType: !261, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1214, file: !39, line: 750, baseType: !1221, size: 128, offset: 512)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1222, line: 218, size: 128, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1223 = !{!1224, !1232, !1233}
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !1222, line: 219, baseType: !1225, size: 32)
!1225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1221, file: !1222, line: 219, size: 32, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1225, file: !1222, line: 220, baseType: !305, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1225, file: !1222, line: 221, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1222, line: 197, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 197, elements: !1231)
!1231 = !{}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1221, file: !1222, line: 223, baseType: !7, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1221, file: !1222, line: 224, baseType: !214, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1214, file: !39, line: 752, baseType: !1235, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!221, !659, !221, !221, !221, !221}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1214, file: !39, line: 756, baseType: !221, size: 64, offset: 704)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1214, file: !39, line: 757, baseType: !221, size: 64, offset: 768)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1214, file: !39, line: 760, baseType: !221, size: 64, offset: 832)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1214, file: !39, line: 761, baseType: !221, size: 64, offset: 896)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1214, file: !39, line: 763, baseType: !221, size: 64, offset: 960)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1214, file: !39, line: 764, baseType: !1244, size: 64, offset: 1024)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1246, line: 299, baseType: !1247)
!1246 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 299, size: 64, elements: !1248)
!1248 = !{!1249}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1247, file: !1246, line: 299, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1251, line: 18, baseType: !221)
!1251 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1214, file: !39, line: 773, baseType: !261, size: 32, offset: 1088)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1214, file: !39, line: 785, baseType: !261, size: 32, offset: 1120)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1214, file: !39, line: 795, baseType: !1255, size: 64, offset: 1152)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !39, line: 726, size: 128, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1256, file: !39, line: 727, baseType: !516, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1256, file: !39, line: 728, baseType: !124, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1214, file: !39, line: 801, baseType: !221, size: 64, offset: 1216)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1214, file: !39, line: 804, baseType: !685, size: 64, offset: 1280)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1214, file: !39, line: 806, baseType: !124, size: 32, offset: 1344)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1214, file: !39, line: 808, baseType: !305, size: 32, offset: 1376)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1214, file: !39, line: 823, baseType: !824, size: 320, offset: 1408)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1214, file: !39, line: 825, baseType: !279, size: 128, offset: 1728)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1214, file: !39, line: 845, baseType: !124, size: 32, offset: 1856)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1214, file: !39, line: 849, baseType: !221, size: 64, offset: 1920)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1214, file: !39, line: 850, baseType: !221, size: 64, offset: 1984)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1214, file: !39, line: 852, baseType: !221, size: 64, offset: 2048)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1214, file: !39, line: 853, baseType: !221, size: 64, offset: 2112)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1214, file: !39, line: 854, baseType: !687, size: 64, offset: 2176)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1214, file: !39, line: 855, baseType: !221, size: 64, offset: 2240)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1214, file: !39, line: 856, baseType: !221, size: 64, offset: 2304)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1214, file: !39, line: 857, baseType: !221, size: 64, offset: 2368)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1214, file: !39, line: 858, baseType: !221, size: 64, offset: 2432)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1214, file: !39, line: 865, baseType: !489, size: 32, offset: 2496)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1214, file: !39, line: 867, baseType: !305, size: 32, offset: 2528)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1214, file: !39, line: 869, baseType: !221, size: 64, offset: 2560)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1214, file: !39, line: 869, baseType: !221, size: 64, offset: 2624)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1214, file: !39, line: 869, baseType: !221, size: 64, offset: 2688)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1214, file: !39, line: 869, baseType: !221, size: 64, offset: 2752)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1214, file: !39, line: 870, baseType: !221, size: 64, offset: 2816)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1214, file: !39, line: 870, baseType: !221, size: 64, offset: 2880)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1214, file: !39, line: 870, baseType: !221, size: 64, offset: 2944)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1214, file: !39, line: 871, baseType: !221, size: 64, offset: 3008)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1214, file: !39, line: 871, baseType: !221, size: 64, offset: 3072)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1214, file: !39, line: 871, baseType: !221, size: 64, offset: 3136)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1214, file: !39, line: 871, baseType: !221, size: 64, offset: 3200)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1214, file: !39, line: 873, baseType: !1290, size: 3328, offset: 3264)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 3328, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 52)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1214, file: !39, line: 875, baseType: !1294, size: 1280, offset: 6592)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 1280, elements: !750)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1214, file: !39, line: 877, baseType: !1296, size: 64, offset: 7872)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !39, line: 877, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1214, file: !39, line: 880, baseType: !1299, size: 1088, offset: 7936)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1300, line: 72, baseType: !1301)
!1300 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1300, line: 23, size: 1088, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1310, !1311, !1312, !1313, !1340, !1341, !1342}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1301, file: !1300, line: 28, baseType: !516, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1301, file: !1300, line: 38, baseType: !687, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1301, file: !1300, line: 40, baseType: !221, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1301, file: !1300, line: 43, baseType: !824, size: 320, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1301, file: !1300, line: 44, baseType: !1308, size: 64, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1300, line: 44, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1301, file: !1300, line: 48, baseType: !221, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1301, file: !1300, line: 59, baseType: !694, size: 256, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1301, file: !1300, line: 60, baseType: !214, size: 64, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1301, file: !1300, line: 61, baseType: !1314, size: 64, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1317, line: 13, size: 1216, elements: !1318)
!1317 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1316, file: !1317, line: 14, baseType: !214, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1316, file: !1317, line: 15, baseType: !221, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1316, file: !1317, line: 17, baseType: !221, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1316, file: !1317, line: 17, baseType: !221, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1316, file: !1317, line: 18, baseType: !221, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1316, file: !1317, line: 18, baseType: !221, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1316, file: !1317, line: 19, baseType: !1326, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1316, file: !1317, line: 21, baseType: !220, size: 64, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1316, file: !1317, line: 23, baseType: !220, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1316, file: !1317, line: 24, baseType: !220, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1316, file: !1317, line: 25, baseType: !220, size: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1316, file: !1317, line: 26, baseType: !220, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1316, file: !1317, line: 27, baseType: !220, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1316, file: !1317, line: 28, baseType: !220, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1316, file: !1317, line: 29, baseType: !220, size: 64, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1316, file: !1317, line: 30, baseType: !220, size: 64, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1316, file: !1317, line: 31, baseType: !220, size: 64, offset: 1024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1316, file: !1317, line: 32, baseType: !220, size: 64, offset: 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1316, file: !1317, line: 33, baseType: !220, size: 64, offset: 1152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1301, file: !1300, line: 63, baseType: !261, size: 32, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1301, file: !1300, line: 69, baseType: !334, size: 16, offset: 1056)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1301, file: !1300, line: 70, baseType: !1343, size: 16, offset: 1072)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !267, line: 18, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !269, line: 23, baseType: !852)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !39, line: 882, baseType: !221, size: 64, offset: 9024)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1214, file: !39, line: 885, baseType: !305, size: 32, offset: 9088)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1214, file: !39, line: 886, baseType: !1348, size: 64, offset: 9152)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !39, line: 732, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1214, file: !39, line: 901, baseType: !966, size: 64, offset: 9216)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1214, file: !39, line: 904, baseType: !659, size: 64, offset: 9280)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1214, file: !39, line: 906, baseType: !1353, size: 64, offset: 9344)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !39, line: 906, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1214, file: !39, line: 930, baseType: !261, size: 32, offset: 9408)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1214, file: !39, line: 933, baseType: !261, size: 32, offset: 9440)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1214, file: !39, line: 935, baseType: !1358, size: 64, offset: 9472)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !175, line: 103, size: 64, elements: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1358, file: !175, line: 104, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !175, line: 101, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1214, file: !39, line: 940, baseType: !685, size: 64, offset: 9536)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1214, file: !39, line: 942, baseType: !1365, size: 256, offset: 9600)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1366, line: 98, size: 256, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1365, file: !1366, line: 99, baseType: !685, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1365, file: !1366, line: 100, baseType: !279, size: 128, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1365, file: !1366, line: 101, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1366, line: 21, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1211, file: !39, line: 986, baseType: !1377, offset: 10240)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !656)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1198, file: !39, line: 640, baseType: !1379, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1246, line: 297, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1246, line: 297, size: 64, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1380, file: !1246, line: 297, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1251, line: 19, baseType: !221)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !39, line: 646, baseType: !1385, size: 64, offset: 256)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !39, line: 646, size: 64, elements: !1386)
!1386 = !{!1387, !1390}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1385, file: !39, line: 647, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !39, line: 542, baseType: !221)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1385, file: !39, line: 648, baseType: !1389, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1198, file: !39, line: 666, baseType: !124, size: 32, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1198, file: !39, line: 667, baseType: !1393, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !39, line: 579, size: 320, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !39, line: 580, baseType: !824, size: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1198, file: !39, line: 670, baseType: !883, size: 8, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1198, file: !39, line: 681, baseType: !1399, size: 256, offset: 512)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !39, line: 678, size: 256, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1399, file: !39, line: 679, baseType: !816, size: 192, align: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1399, file: !39, line: 680, baseType: !221, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1198, file: !39, line: 689, baseType: !279, size: 128, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1198, file: !39, line: 691, baseType: !1405, size: 64, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !39, line: 691, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1198, file: !39, line: 694, baseType: !1408, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1191, line: 563, size: 1024, elements: !1411)
!1411 = !{!1412, !1416, !1417, !1421, !1425, !1429, !1430, !1434, !1438, !1442, !1443, !1444, !1448, !1452, !1458, !1462}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1410, file: !1191, line: 564, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !1197}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1410, file: !1191, line: 569, baseType: !1413, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1410, file: !1191, line: 571, baseType: !1418, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!124, !1197, !221}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1410, file: !1191, line: 572, baseType: !1422, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!124, !1197}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1410, file: !1191, line: 578, baseType: !1426, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!124, !1197, !221, !221, !221}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1410, file: !1191, line: 580, baseType: !1185, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1410, file: !1191, line: 581, baseType: !1431, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1188, !1189, !7}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1410, file: !1191, line: 582, baseType: !1435, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1188, !1189, !221, !221}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1410, file: !1191, line: 584, baseType: !1439, size: 64, offset: 512)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!221, !1197}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1410, file: !1191, line: 588, baseType: !1185, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1410, file: !1191, line: 591, baseType: !1185, size: 64, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1410, file: !1191, line: 597, baseType: !1445, size: 64, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!124, !1197, !221, !214, !124, !124}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1410, file: !1191, line: 603, baseType: !1449, size: 64, offset: 768)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!240, !1197}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1410, file: !1191, line: 613, baseType: !1453, size: 64, offset: 832)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!124, !1197, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !39, line: 717, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1410, file: !1191, line: 625, baseType: !1459, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1456, !1197, !221}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1410, file: !1191, line: 633, baseType: !1463, size: 64, offset: 960)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!1183, !1197, !221}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1198, file: !39, line: 697, baseType: !221, size: 64, offset: 1024)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1198, file: !39, line: 699, baseType: !659, size: 64, offset: 1088)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1198, file: !39, line: 700, baseType: !214, size: 64, offset: 1152)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1198, file: !39, line: 711, baseType: !685, size: 64, offset: 1216)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1198, file: !39, line: 717, baseType: !1456, size: 64, offset: 1280)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1198, file: !39, line: 722, baseType: !1472, offset: 1344)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !39, line: 570, elements: !1231)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1194, file: !1191, line: 515, baseType: !212, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1194, file: !1191, line: 516, baseType: !221, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1194, file: !1191, line: 517, baseType: !221, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1194, file: !1191, line: 518, baseType: !221, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !1191, line: 520, baseType: !38, size: 32, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1190, file: !1191, line: 522, baseType: !1479, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1251, line: 22, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1251, line: 22, size: 64, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1481, file: !1251, line: 22, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1251, line: 15, baseType: !221)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1190, file: !1191, line: 524, baseType: !1486, size: 64, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1246, line: 372, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 372, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1488, file: !1246, line: 372, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1251, line: 16, baseType: !221)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1191, line: 527, baseType: !1493, size: 64, offset: 512)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1191, line: 527, size: 64, elements: !1494)
!1494 = !{!1495, !1501}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1493, file: !1191, line: 528, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1251, line: 21, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1251, line: 21, size: 64, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1497, file: !1251, line: 21, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1251, line: 14, baseType: !221)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1493, file: !1191, line: 529, baseType: !1480, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1190, file: !1191, line: 534, baseType: !1183, size: 64, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1190, file: !1191, line: 535, baseType: !1183, size: 64, offset: 640)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1190, file: !1191, line: 541, baseType: !1505, size: 64, offset: 704)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1190, file: !1191, line: 545, baseType: !1507, size: 64, offset: 768)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1190, file: !1191, line: 549, baseType: !1509, size: 64, offset: 832)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1246, line: 520, baseType: !1183)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1177, file: !31, line: 100, baseType: !1511, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!124, !1126, !221, !221, !124}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1127, file: !31, line: 134, baseType: !214, size: 64, offset: 960)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1127, file: !31, line: 135, baseType: !124, size: 32, offset: 1024)
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !31, line: 136, baseType: !1517, size: 128, offset: 1088)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !31, line: 136, size: 128, elements: !1518)
!1518 = !{!1519, !1525}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1517, file: !31, line: 137, baseType: !1520, size: 128)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1521, line: 6, size: 128, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1520, file: !1521, line: 7, baseType: !516, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1520, file: !1521, line: 8, baseType: !516, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !31, line: 138, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !31, line: 138, elements: !1527)
!1527 = !{!1528, !1530}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1526, file: !31, line: 138, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !31, line: 138, elements: !1231)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1526, file: !31, line: 138, baseType: !1531)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1520, elements: !656)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1123, file: !39, line: 147, baseType: !214, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1081, file: !39, line: 161, baseType: !672, size: 128, align: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !39, line: 164, baseType: !1535, size: 32, offset: 384)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !39, line: 164, size: 32, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1535, file: !39, line: 169, baseType: !261, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1535, file: !39, line: 177, baseType: !7, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1077, file: !39, line: 181, baseType: !261, size: 32, offset: 416)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !39, line: 325, baseType: !1541, size: 512, offset: 512)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !39, line: 325, size: 512, elements: !1542)
!1542 = !{!1543, !1553}
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !39, line: 326, baseType: !1544, size: 320)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1541, file: !39, line: 326, size: 320, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1544, file: !39, line: 327, baseType: !221, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1544, file: !39, line: 328, baseType: !221, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1544, file: !39, line: 329, baseType: !221, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1544, file: !39, line: 331, baseType: !261, size: 32, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1544, file: !39, line: 332, baseType: !261, size: 32, offset: 224)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1544, file: !39, line: 333, baseType: !261, size: 32, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1544, file: !39, line: 335, baseType: !7, size: 32, offset: 288)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1541, file: !39, line: 339, baseType: !1077, size: 512, align: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !39, line: 341, baseType: !1555, size: 512, offset: 1024)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !39, line: 341, size: 512, elements: !1556)
!1556 = !{!1557, !1566, !1572}
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !39, line: 342, baseType: !1558, size: 384)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !39, line: 342, size: 384, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1558, file: !39, line: 343, baseType: !221, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1558, file: !39, line: 344, baseType: !221, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1558, file: !39, line: 346, baseType: !214, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1558, file: !39, line: 347, baseType: !214, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1558, file: !39, line: 348, baseType: !214, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1558, file: !39, line: 349, baseType: !214, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !39, line: 352, baseType: !1567, size: 256)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !39, line: 352, size: 256, elements: !1568)
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1567, file: !39, line: 353, baseType: !221, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1567, file: !39, line: 354, baseType: !221, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1567, file: !39, line: 356, baseType: !279, size: 128, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1555, file: !39, line: 359, baseType: !1077, size: 512, align: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1041, file: !182, line: 1000, baseType: !124, size: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1041, file: !182, line: 1001, baseType: !1575, size: 320, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !755, line: 14, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !755, line: 30, size: 320, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1586}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1576, file: !755, line: 31, baseType: !7, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1576, file: !755, line: 32, baseType: !214, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1576, file: !755, line: 33, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !755, line: 16, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!124, !1585, !7, !124, !214}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1576, file: !755, line: 34, baseType: !279, size: 128, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1037, file: !87, line: 395, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!398, !214}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !87, line: 69, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1004, file: !87, line: 1920, baseType: !1021, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1004, file: !87, line: 1921, baseType: !1595, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!124, !1024, !1598, !7}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !87, line: 53, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1004, file: !87, line: 1923, baseType: !1601, size: 64, offset: 448)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!124, !659, !1604}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !87, line: 1858, size: 128, elements: !1606)
!1606 = !{!1607, !1612}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1605, file: !87, line: 1859, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !87, line: 1855, baseType: !1609)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!883, !1604, !240, !124, !222, !516, !7}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1605, file: !87, line: 1860, baseType: !222, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1004, file: !87, line: 1924, baseType: !1614, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !659, !1619}
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1618, line: 59, baseType: !7)
!1618 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !87, line: 61, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1004, file: !87, line: 1925, baseType: !1622, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!220, !659, !7, !221}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1004, file: !87, line: 1926, baseType: !1622, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1004, file: !87, line: 1927, baseType: !1627, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!124, !659, !1197}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1004, file: !87, line: 1928, baseType: !221, size: 64, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1004, file: !87, line: 1929, baseType: !1632, size: 64, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!124, !443, !659}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1004, file: !87, line: 1930, baseType: !1636, size: 64, offset: 896)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!124, !659, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !87, line: 1061, baseType: !214)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1004, file: !87, line: 1931, baseType: !1632, size: 64, offset: 960)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1004, file: !87, line: 1932, baseType: !1642, size: 64, offset: 1024)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!124, !659, !222, !222, !124}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1004, file: !87, line: 1933, baseType: !1646, size: 64, offset: 1088)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!124, !124, !659, !124}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1004, file: !87, line: 1934, baseType: !1650, size: 64, offset: 1152)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!124, !659, !124, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !87, line: 1063, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1004, file: !87, line: 1935, baseType: !1235, size: 64, offset: 1216)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1004, file: !87, line: 1936, baseType: !1657, size: 64, offset: 1280)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!124, !124}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1004, file: !87, line: 1937, baseType: !1650, size: 64, offset: 1344)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1004, file: !87, line: 1938, baseType: !1662, size: 64, offset: 1408)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!398, !1665, !659, !1015, !411, !7}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1667, line: 59, flags: DIFlagFwdDecl)
!1667 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1004, file: !87, line: 1939, baseType: !1669, size: 64, offset: 1472)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!398, !659, !1015, !1665, !411, !7}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1004, file: !87, line: 1940, baseType: !1673, size: 64, offset: 1536)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !659}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1004, file: !87, line: 1941, baseType: !1677, size: 64, offset: 1600)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!124, !659, !124, !1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1004, file: !87, line: 1942, baseType: !1683, size: 64, offset: 1664)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!220, !659, !124, !222, !222}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1004, file: !87, line: 1944, baseType: !1687, size: 64, offset: 1728)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !1690, !659}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1692, line: 17, size: 960, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1723, !1724, !1727}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1691, file: !1692, line: 18, baseType: !366, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1691, file: !1692, line: 19, baseType: !411, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1691, file: !1692, line: 20, baseType: !411, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1691, file: !1692, line: 21, baseType: !411, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1691, file: !1692, line: 22, baseType: !411, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1691, file: !1692, line: 23, baseType: !222, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1691, file: !1692, line: 24, baseType: !222, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1691, file: !1692, line: 25, baseType: !694, size: 256, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1691, file: !1692, line: 26, baseType: !1703, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1692, line: 32, size: 256, elements: !1706)
!1706 = !{!1707, !1711, !1715, !1719}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1705, file: !1692, line: 33, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!214, !1690, !1015}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1705, file: !1692, line: 34, baseType: !1712, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !1690, !214}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1705, file: !1692, line: 35, baseType: !1716, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!214, !1690, !214, !1015}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1705, file: !1692, line: 36, baseType: !1720, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!124, !1690, !214}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1691, file: !1692, line: 27, baseType: !124, size: 32, offset: 768)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1691, file: !1692, line: 28, baseType: !1725, size: 64, offset: 832)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1691, file: !1692, line: 29, baseType: !214, size: 64, offset: 896)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1004, file: !87, line: 1948, baseType: !1729, size: 64, offset: 1792)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!398, !659, !222, !659, !222, !411, !7}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1004, file: !87, line: 1950, baseType: !1733, size: 64, offset: 1856)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!222, !659, !222, !659, !222, !222, !7}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1004, file: !87, line: 1953, baseType: !1642, size: 64, offset: 1920)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1004, file: !87, line: 1954, baseType: !1738, size: 64, offset: 1984)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!124, !1741, !7}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !87, line: 1911, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1004, file: !87, line: 1955, baseType: !1744, size: 64, offset: 2048)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!124, !1741, !1598, !7}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !660, file: !87, line: 1018, baseType: !516, size: 64, offset: 1472)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !660, file: !87, line: 1020, baseType: !214, size: 64, offset: 1536)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !660, file: !87, line: 1023, baseType: !214, size: 64, offset: 1600)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !660, file: !87, line: 1027, baseType: !1751, size: 64, offset: 1664)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !660, file: !87, line: 1029, baseType: !439, size: 64, offset: 1728)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !660, file: !87, line: 1030, baseType: !1754, size: 32, offset: 1792)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1755, line: 8, baseType: !512)
!1755 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !660, file: !87, line: 1031, baseType: !1754, size: 32, offset: 1824)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !635, file: !6, line: 72, baseType: !411, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !635, file: !6, line: 73, baseType: !124, size: 32, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !620, file: !6, line: 119, baseType: !1760, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!124, !614, !214}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !620, file: !6, line: 120, baseType: !611, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !620, file: !6, line: 121, baseType: !611, size: 64, offset: 320)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !615, file: !6, line: 92, baseType: !694, size: 256, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !615, file: !6, line: 93, baseType: !605, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !615, file: !6, line: 94, baseType: !214, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !615, file: !6, line: 95, baseType: !214, size: 64, offset: 448)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !615, file: !6, line: 96, baseType: !478, size: 64, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !615, file: !6, line: 97, baseType: !966, size: 64, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !615, file: !6, line: 98, baseType: !1772, size: 64, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !803, line: 34, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !615, file: !6, line: 99, baseType: !774, size: 64, offset: 704)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !615, file: !6, line: 100, baseType: !248, size: 128, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !615, file: !6, line: 101, baseType: !240, size: 64, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !615, file: !6, line: 102, baseType: !214, size: 64, offset: 960)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !615, file: !6, line: 103, baseType: !214, size: 64, offset: 1024)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !615, file: !6, line: 104, baseType: !7, size: 32, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !615, file: !6, line: 105, baseType: !7, size: 32, offset: 1120)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !615, file: !6, line: 106, baseType: !7, size: 32, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !615, file: !6, line: 107, baseType: !72, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !615, file: !6, line: 108, baseType: !77, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !615, file: !6, line: 109, baseType: !883, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !615, file: !6, line: 110, baseType: !883, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !615, file: !6, line: 111, baseType: !883, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !615, file: !6, line: 112, baseType: !883, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !606, file: !87, line: 2377, baseType: !1789, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !606, file: !87, line: 2378, baseType: !1791, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!478, !605, !124, !240, !214}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !606, file: !87, line: 2380, baseType: !1795, size: 64, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !594}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !606, file: !87, line: 2381, baseType: !274, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !87, line: 2382, baseType: !605, size: 64, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !606, file: !87, line: 2383, baseType: !741, size: 64, offset: 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !606, file: !87, line: 2385, baseType: !1802, offset: 576)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1803, line: 206, elements: !1231)
!1803 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !606, file: !87, line: 2386, baseType: !1802, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !606, file: !87, line: 2387, baseType: !1802, offset: 576)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !606, file: !87, line: 2388, baseType: !1807, offset: 576)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1802, elements: !367)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !606, file: !87, line: 2390, baseType: !1802, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !606, file: !87, line: 2391, baseType: !1802, offset: 576)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !606, file: !87, line: 2392, baseType: !1802, offset: 576)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !606, file: !87, line: 2393, baseType: !1802, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !595, file: !87, line: 1197, baseType: !1813, size: 64, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !87, line: 2057, size: 1664, elements: !1816)
!1816 = !{!1817, !1821, !1825, !1826, !1830, !1854, !1858, !1859, !1860, !1864, !1868, !1872, !1873, !1874, !1880, !1885, !1886, !1890, !1891, !1892, !1893, !1897, !1901, !1948, !1963, !1964}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1815, file: !87, line: 2058, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!443, !594}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1815, file: !87, line: 2059, baseType: !1822, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !443}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1815, file: !87, line: 2060, baseType: !1822, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1815, file: !87, line: 2062, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !443, !124}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1815, file: !87, line: 2063, baseType: !1831, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!124, !443, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !55, line: 42, size: 384, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1835, file: !55, line: 43, baseType: !220, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1835, file: !55, line: 45, baseType: !220, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1835, file: !55, line: 52, baseType: !222, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1835, file: !55, line: 53, baseType: !222, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1835, file: !55, line: 55, baseType: !54, size: 32, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1835, file: !55, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1835, file: !55, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1835, file: !55, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1835, file: !55, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1835, file: !55, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1835, file: !55, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1835, file: !55, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1835, file: !55, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1835, file: !55, line: 78, baseType: !1851, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !55, line: 78, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1815, file: !87, line: 2064, baseType: !1855, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!124, !443}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1815, file: !87, line: 2065, baseType: !1822, size: 64, offset: 384)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1815, file: !87, line: 2066, baseType: !1795, size: 64, offset: 448)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1815, file: !87, line: 2067, baseType: !1861, size: 64, offset: 512)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!124, !594, !124}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1815, file: !87, line: 2068, baseType: !1865, size: 64, offset: 576)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!124, !594, !86}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1815, file: !87, line: 2069, baseType: !1869, size: 64, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!124, !594}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1815, file: !87, line: 2070, baseType: !1865, size: 64, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1815, file: !87, line: 2071, baseType: !1869, size: 64, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1815, file: !87, line: 2072, baseType: !1875, size: 64, offset: 832)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!124, !478, !1878}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !87, line: 62, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1815, file: !87, line: 2073, baseType: !1881, size: 64, offset: 896)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!124, !594, !1884, !366}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1815, file: !87, line: 2074, baseType: !1795, size: 64, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1815, file: !87, line: 2076, baseType: !1887, size: 64, offset: 1024)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!124, !1690, !478}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1815, file: !87, line: 2077, baseType: !1887, size: 64, offset: 1088)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1815, file: !87, line: 2078, baseType: !1887, size: 64, offset: 1152)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1815, file: !87, line: 2079, baseType: !1887, size: 64, offset: 1216)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1815, file: !87, line: 2081, baseType: !1894, size: 64, offset: 1280)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!398, !594, !124, !366, !411, !222}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1815, file: !87, line: 2082, baseType: !1898, size: 64, offset: 1344)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!398, !594, !124, !240, !411, !222}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1815, file: !87, line: 2083, baseType: !1902, size: 64, offset: 1408)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!1905, !443}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !92, line: 296, size: 1664, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1933, !1934, !1935}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1907, file: !92, line: 297, baseType: !745, size: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1907, file: !92, line: 298, baseType: !279, size: 128, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1907, file: !92, line: 299, baseType: !279, size: 128, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1907, file: !92, line: 300, baseType: !279, size: 128, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1907, file: !92, line: 301, baseType: !694, size: 256, offset: 512)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1907, file: !92, line: 302, baseType: !305, size: 32, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1907, file: !92, line: 303, baseType: !261, size: 32, offset: 800)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1907, file: !92, line: 304, baseType: !594, size: 64, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1907, file: !92, line: 305, baseType: !1918, size: 64, offset: 896)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !92, line: 68, size: 64, elements: !1919)
!1919 = !{!1920, !1932}
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !92, line: 69, baseType: !1921, size: 32)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1918, file: !92, line: 69, size: 32, elements: !1922)
!1922 = !{!1923, !1924, !1925}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1921, file: !92, line: 70, baseType: !449, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1921, file: !92, line: 71, baseType: !458, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1921, file: !92, line: 72, baseType: !1926, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1927, line: 24, baseType: !1928)
!1927 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1927, line: 22, size: 32, elements: !1929)
!1929 = !{!1930}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1928, file: !1927, line: 23, baseType: !1931, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1927, line: 20, baseType: !455)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1918, file: !92, line: 74, baseType: !91, size: 32, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1907, file: !92, line: 306, baseType: !222, size: 64, offset: 960)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1907, file: !92, line: 307, baseType: !221, size: 64, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1907, file: !92, line: 308, baseType: !1936, size: 576, offset: 1088)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !92, line: 205, size: 576, elements: !1937)
!1937 = !{!1938, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1936, file: !92, line: 206, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !92, line: 66, baseType: !225)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1936, file: !92, line: 207, baseType: !1939, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1936, file: !92, line: 208, baseType: !1939, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1936, file: !92, line: 209, baseType: !1939, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1936, file: !92, line: 210, baseType: !1939, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1936, file: !92, line: 211, baseType: !1939, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1936, file: !92, line: 212, baseType: !1939, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1936, file: !92, line: 213, baseType: !840, size: 64, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1936, file: !92, line: 214, baseType: !840, size: 64, offset: 512)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1815, file: !87, line: 2085, baseType: !1949, size: 64, offset: 1472)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!220, !594, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1954, line: 15, size: 256, elements: !1955)
!1954 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1955 = !{!1956, !1957, !1958, !1959, !1960}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1953, file: !1954, line: 16, baseType: !212, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1953, file: !1954, line: 19, baseType: !124, size: 32, offset: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1953, file: !1954, line: 26, baseType: !221, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1953, file: !1954, line: 33, baseType: !221, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1953, file: !1954, line: 36, baseType: !1961, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1954, line: 36, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1815, file: !87, line: 2087, baseType: !1949, size: 64, offset: 1536)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1815, file: !87, line: 2089, baseType: !1795, size: 64, offset: 1600)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !595, file: !87, line: 1198, baseType: !1966, size: 64, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !92, line: 324, size: 704, elements: !1969)
!1969 = !{!1970, !1974, !1978, !1982, !1983, !1984, !1985, !1986, !1991, !1996, !2000}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1968, file: !92, line: 325, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!124, !1906}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1968, file: !92, line: 326, baseType: !1975, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!1906, !594, !124}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1968, file: !92, line: 327, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !1906}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1968, file: !92, line: 328, baseType: !1971, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1968, file: !92, line: 329, baseType: !1971, size: 64, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1968, file: !92, line: 330, baseType: !1971, size: 64, offset: 320)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1968, file: !92, line: 331, baseType: !1861, size: 64, offset: 384)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1968, file: !92, line: 334, baseType: !1987, size: 64, offset: 448)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!1990, !443}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1968, file: !92, line: 335, baseType: !1992, size: 64, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!124, !443, !1995}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1968, file: !92, line: 337, baseType: !1997, size: 64, offset: 576)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!124, !443, !1990}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1968, file: !92, line: 339, baseType: !2001, size: 64, offset: 640)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!124, !594, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !595, file: !87, line: 1199, baseType: !2006, size: 64, offset: 512)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !92, line: 430, size: 704, elements: !2009)
!2009 = !{!2010, !2016, !2017, !2021, !2022, !2023, !2038, !2061, !2065, !2066, !2089}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2008, file: !92, line: 431, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!124, !594, !124, !124, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2008, file: !92, line: 432, baseType: !1861, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2008, file: !92, line: 433, baseType: !2018, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!124, !594, !7}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2008, file: !92, line: 434, baseType: !2018, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2008, file: !92, line: 435, baseType: !1861, size: 64, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2008, file: !92, line: 436, baseType: !2024, size: 64, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!124, !594, !124, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !92, line: 417, size: 256, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2028, file: !92, line: 418, baseType: !124, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2028, file: !92, line: 419, baseType: !7, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2028, file: !92, line: 420, baseType: !7, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2028, file: !92, line: 422, baseType: !7, size: 32, offset: 96)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2028, file: !92, line: 423, baseType: !7, size: 32, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2028, file: !92, line: 424, baseType: !7, size: 32, offset: 160)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2028, file: !92, line: 425, baseType: !7, size: 32, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2028, file: !92, line: 426, baseType: !7, size: 32, offset: 224)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2008, file: !92, line: 437, baseType: !2039, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!124, !594, !1918, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !92, line: 345, size: 960, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2043, file: !92, line: 346, baseType: !124, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2043, file: !92, line: 347, baseType: !516, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2043, file: !92, line: 348, baseType: !516, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2043, file: !92, line: 349, baseType: !516, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2043, file: !92, line: 350, baseType: !516, size: 64, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2043, file: !92, line: 351, baseType: !516, size: 64, offset: 320)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2043, file: !92, line: 352, baseType: !516, size: 64, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2043, file: !92, line: 353, baseType: !691, size: 64, offset: 448)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2043, file: !92, line: 355, baseType: !691, size: 64, offset: 512)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2043, file: !92, line: 356, baseType: !124, size: 32, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2043, file: !92, line: 357, baseType: !124, size: 32, offset: 608)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2043, file: !92, line: 358, baseType: !516, size: 64, offset: 640)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2043, file: !92, line: 359, baseType: !516, size: 64, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2043, file: !92, line: 360, baseType: !516, size: 64, offset: 768)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2043, file: !92, line: 361, baseType: !691, size: 64, offset: 832)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2043, file: !92, line: 362, baseType: !124, size: 32, offset: 896)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2008, file: !92, line: 438, baseType: !2062, size: 64, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!124, !594, !2004, !2042}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2008, file: !92, line: 440, baseType: !2039, size: 64, offset: 512)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2008, file: !92, line: 441, baseType: !2067, size: 64, offset: 576)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!124, !594, !2070}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !92, line: 411, size: 1408, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2071, file: !92, line: 412, baseType: !7, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2071, file: !92, line: 413, baseType: !2075, size: 1344, offset: 64)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2076, size: 1344, elements: !367)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !92, line: 397, size: 448, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2088}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2076, file: !92, line: 398, baseType: !7, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2076, file: !92, line: 399, baseType: !7, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2076, file: !92, line: 401, baseType: !7, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2076, file: !92, line: 402, baseType: !7, size: 32, offset: 96)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2076, file: !92, line: 403, baseType: !7, size: 32, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2076, file: !92, line: 404, baseType: !7, size: 32, offset: 160)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2076, file: !92, line: 405, baseType: !7, size: 32, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2076, file: !92, line: 406, baseType: !518, size: 64, offset: 256)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2076, file: !92, line: 407, baseType: !2087, size: 64, offset: 320)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !213, line: 132, baseType: !516)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2076, file: !92, line: 408, baseType: !2087, size: 64, offset: 384)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2008, file: !92, line: 442, baseType: !2018, size: 64, offset: 640)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !595, file: !87, line: 1200, baseType: !2091, size: 64, offset: 576)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2093)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !87, line: 54, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !595, file: !87, line: 1201, baseType: !221, size: 64, offset: 640)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !595, file: !87, line: 1202, baseType: !221, size: 64, offset: 704)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !595, file: !87, line: 1203, baseType: !221, size: 64, offset: 768)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !595, file: !87, line: 1204, baseType: !478, size: 64, offset: 832)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !595, file: !87, line: 1205, baseType: !824, size: 320, offset: 896)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !595, file: !87, line: 1206, baseType: !124, size: 32, offset: 1216)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !595, file: !87, line: 1207, baseType: !261, size: 32, offset: 1248)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !595, file: !87, line: 1209, baseType: !214, size: 64, offset: 1280)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !595, file: !87, line: 1211, baseType: !2103, size: 64, offset: 1344)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2106)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !87, line: 1211, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !595, file: !87, line: 1223, baseType: !2108, size: 64, offset: 1408)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !495, line: 34, size: 64, elements: !2109)
!2109 = !{!2110}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2108, file: !495, line: 35, baseType: !498, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !595, file: !87, line: 1224, baseType: !279, size: 128, offset: 1472)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !595, file: !87, line: 1225, baseType: !2113, size: 64, offset: 1600)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2115, line: 40, size: 7424, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2116 = !{!2117, !2119, !2120, !2123, !2127, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2154, !2155}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2114, file: !2115, line: 41, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !213, line: 131, baseType: !516)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2114, file: !2115, line: 42, baseType: !2118, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2114, file: !2115, line: 43, baseType: !2121, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1667, line: 1453, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2114, file: !2115, line: 44, baseType: !2124, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2126, line: 74, flags: DIFlagFwdDecl)
!2126 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2114, file: !2115, line: 45, baseType: !2128, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2115, line: 45, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2114, file: !2115, line: 46, baseType: !221, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2114, file: !2115, line: 47, baseType: !883, size: 8, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2114, file: !2115, line: 48, baseType: !266, size: 8, offset: 392)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2114, file: !2115, line: 49, baseType: !883, size: 8, offset: 400)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2114, file: !2115, line: 50, baseType: !883, size: 8, offset: 408)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2114, file: !2115, line: 51, baseType: !599, size: 32, offset: 416)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2114, file: !2115, line: 52, baseType: !261, size: 32, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2114, file: !2115, line: 53, baseType: !305, size: 32, offset: 480)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2114, file: !2115, line: 54, baseType: !443, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2114, file: !2115, line: 55, baseType: !214, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2114, file: !2115, line: 56, baseType: !214, size: 64, offset: 640)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2114, file: !2115, line: 57, baseType: !2142, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2144)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2115, line: 57, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2114, file: !2115, line: 58, baseType: !694, size: 256, offset: 768)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2114, file: !2115, line: 60, baseType: !124, size: 32, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2114, file: !2115, line: 61, baseType: !124, size: 32, offset: 1056)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2114, file: !2115, line: 62, baseType: !298, size: 64, offset: 1088)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2114, file: !2115, line: 65, baseType: !694, size: 256, offset: 1152)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2114, file: !2115, line: 66, baseType: !594, size: 64, offset: 1408)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2114, file: !2115, line: 68, baseType: !2152, size: 64, offset: 1472)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2115, line: 68, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2114, file: !2115, line: 72, baseType: !883, size: 8, offset: 1536)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2114, file: !2115, line: 77, baseType: !2156, size: 5824, offset: 1600)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !104, line: 705, size: 5824, elements: !2157)
!2157 = !{!2158, !2159, !2161, !2164, !2165, !2220, !2290, !2291, !2292, !2293, !2294, !2301, !2479, !2492, !2502, !2506, !2508, !2509, !2510, !2514, !2521, !2522, !2525, !2528, !2532, !2535, !2536, !2537, !2538, !2539, !2540, !2597, !2598, !2599, !2602, !2605, !2614, !2615, !2616, !2617, !2618, !2619}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2156, file: !104, line: 706, baseType: !292, size: 512)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2156, file: !104, line: 707, baseType: !2160, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2156, file: !104, line: 709, baseType: !2162, size: 64, offset: 576)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !104, line: 37, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2156, file: !104, line: 711, baseType: !240, size: 64, offset: 640)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2156, file: !104, line: 712, baseType: !2166, size: 64, offset: 704)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2168)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !104, line: 89, size: 384, elements: !2169)
!2169 = !{!2170, !2171, !2172, !2178, !2185, !2189}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2168, file: !104, line: 90, baseType: !240, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2168, file: !104, line: 91, baseType: !415, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2168, file: !104, line: 92, baseType: !2173, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!124, !2176, !361}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2156)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2168, file: !104, line: 93, baseType: !2179, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!366, !2176, !2182, !2183, !2184}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2168, file: !104, line: 95, baseType: !2186, size: 64, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !2160}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2168, file: !104, line: 97, baseType: !2190, size: 64, offset: 320)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !116, line: 286, size: 1472, elements: !2193)
!2193 = !{!2194, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2192, file: !116, line: 287, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!124, !2160}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2192, file: !116, line: 288, baseType: !2186, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2192, file: !116, line: 289, baseType: !2195, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2192, file: !116, line: 290, baseType: !2195, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2192, file: !116, line: 291, baseType: !2195, size: 64, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2192, file: !116, line: 292, baseType: !2195, size: 64, offset: 320)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2192, file: !116, line: 293, baseType: !2195, size: 64, offset: 384)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2192, file: !116, line: 294, baseType: !2195, size: 64, offset: 448)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2192, file: !116, line: 295, baseType: !2195, size: 64, offset: 512)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2192, file: !116, line: 296, baseType: !2195, size: 64, offset: 576)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2192, file: !116, line: 297, baseType: !2195, size: 64, offset: 640)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2192, file: !116, line: 298, baseType: !2195, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2192, file: !116, line: 299, baseType: !2195, size: 64, offset: 768)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2192, file: !116, line: 300, baseType: !2195, size: 64, offset: 832)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2192, file: !116, line: 301, baseType: !2195, size: 64, offset: 896)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2192, file: !116, line: 302, baseType: !2195, size: 64, offset: 960)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2192, file: !116, line: 303, baseType: !2195, size: 64, offset: 1024)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2192, file: !116, line: 304, baseType: !2195, size: 64, offset: 1088)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2192, file: !116, line: 305, baseType: !2195, size: 64, offset: 1152)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2192, file: !116, line: 306, baseType: !2195, size: 64, offset: 1216)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2192, file: !116, line: 307, baseType: !2195, size: 64, offset: 1280)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2192, file: !116, line: 308, baseType: !2195, size: 64, offset: 1344)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2192, file: !116, line: 309, baseType: !2195, size: 64, offset: 1408)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2156, file: !104, line: 714, baseType: !2221, size: 64, offset: 768)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2224, line: 80, size: 1344, elements: !2225)
!2224 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2289}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2223, file: !2224, line: 81, baseType: !240, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2223, file: !2224, line: 82, baseType: !240, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2223, file: !2224, line: 83, baseType: !415, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2223, file: !2224, line: 84, baseType: !415, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2223, file: !2224, line: 85, baseType: !415, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2223, file: !2224, line: 87, baseType: !2232, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!124, !2160, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !98, line: 96, size: 1152, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2248, !2252, !2253, !2254, !2255, !2256, !2264, !2265, !2266, !2267, !2268, !2269}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2236, file: !98, line: 97, baseType: !240, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2236, file: !98, line: 98, baseType: !2221, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2236, file: !98, line: 100, baseType: !274, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2236, file: !98, line: 101, baseType: !240, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2236, file: !98, line: 103, baseType: !883, size: 8, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2236, file: !98, line: 104, baseType: !97, size: 32, offset: 288)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2236, file: !98, line: 106, baseType: !2245, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2247)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !98, line: 106, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2236, file: !98, line: 107, baseType: !2249, size: 64, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2251)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !98, line: 107, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2236, file: !98, line: 109, baseType: !2195, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2236, file: !98, line: 110, baseType: !2186, size: 64, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2236, file: !98, line: 111, baseType: !2195, size: 64, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2236, file: !98, line: 112, baseType: !2186, size: 64, offset: 640)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2236, file: !98, line: 113, baseType: !2257, size: 64, offset: 704)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!124, !2160, !2260}
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !116, line: 60, baseType: !2261)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !116, line: 58, size: 32, elements: !2262)
!2262 = !{!2263}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2261, file: !116, line: 59, baseType: !124, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2236, file: !98, line: 114, baseType: !2195, size: 64, offset: 768)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2236, file: !98, line: 115, baseType: !415, size: 64, offset: 832)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2236, file: !98, line: 116, baseType: !415, size: 64, offset: 896)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2236, file: !98, line: 118, baseType: !2190, size: 64, offset: 960)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2236, file: !98, line: 119, baseType: !2186, size: 64, offset: 1024)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2236, file: !98, line: 121, baseType: !2270, size: 64, offset: 1088)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !98, line: 121, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2223, file: !2224, line: 88, baseType: !2173, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2223, file: !2224, line: 89, baseType: !2195, size: 64, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2223, file: !2224, line: 90, baseType: !2186, size: 64, offset: 512)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2223, file: !2224, line: 91, baseType: !2186, size: 64, offset: 576)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2223, file: !2224, line: 92, baseType: !2186, size: 64, offset: 640)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2223, file: !2224, line: 94, baseType: !2195, size: 64, offset: 704)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2223, file: !2224, line: 95, baseType: !2195, size: 64, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2223, file: !2224, line: 97, baseType: !2257, size: 64, offset: 832)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2223, file: !2224, line: 98, baseType: !2195, size: 64, offset: 896)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2223, file: !2224, line: 100, baseType: !2195, size: 64, offset: 960)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2223, file: !2224, line: 102, baseType: !2195, size: 64, offset: 1024)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2223, file: !2224, line: 103, baseType: !2186, size: 64, offset: 1088)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2223, file: !2224, line: 105, baseType: !2190, size: 64, offset: 1152)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2223, file: !2224, line: 107, baseType: !2286, size: 64, offset: 1216)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2288)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2224, line: 107, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2223, file: !2224, line: 109, baseType: !883, size: 8, offset: 1280)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2156, file: !104, line: 715, baseType: !2235, size: 64, offset: 832)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2156, file: !104, line: 717, baseType: !214, size: 64, offset: 896)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2156, file: !104, line: 719, baseType: !214, size: 64, offset: 960)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2156, file: !104, line: 721, baseType: !694, size: 256, offset: 1024)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2156, file: !104, line: 725, baseType: !2295, size: 448, offset: 1280)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !104, line: 517, size: 448, elements: !2296)
!2296 = !{!2297, !2298, !2299, !2300}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2295, file: !104, line: 518, baseType: !279, size: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2295, file: !104, line: 519, baseType: !279, size: 128, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2295, file: !104, line: 520, baseType: !279, size: 128, offset: 256)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2295, file: !104, line: 521, baseType: !103, size: 32, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2156, file: !104, line: 726, baseType: !2302, size: 2496, offset: 1728)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !116, line: 663, size: 2496, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2359, !2360, !2361, !2362, !2363, !2364, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2472, !2476}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2302, file: !116, line: 664, baseType: !2260, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2302, file: !116, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2302, file: !116, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2302, file: !116, line: 667, baseType: !883, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2302, file: !116, line: 668, baseType: !883, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2302, file: !116, line: 669, baseType: !883, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2302, file: !116, line: 670, baseType: !883, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2302, file: !116, line: 671, baseType: !883, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2302, file: !116, line: 672, baseType: !883, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2302, file: !116, line: 673, baseType: !883, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2302, file: !116, line: 674, baseType: !883, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2302, file: !116, line: 675, baseType: !512, size: 32, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2302, file: !116, line: 676, baseType: !305, size: 32, offset: 96)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2302, file: !116, line: 678, baseType: !279, size: 128, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2302, file: !116, line: 679, baseType: !1161, size: 256, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2302, file: !116, line: 680, baseType: !2320, size: 64, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2322, line: 43, size: 1536, elements: !2323)
!2322 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2331, !2343, !2344, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2321, file: !2322, line: 44, baseType: !240, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2321, file: !2322, line: 45, baseType: !124, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2321, file: !2322, line: 46, baseType: !279, size: 128, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2321, file: !2322, line: 47, baseType: !305, size: 32, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2321, file: !2322, line: 48, baseType: !2329, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !116, line: 629, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2321, file: !2322, line: 49, baseType: !2332, size: 320, offset: 384)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2333, line: 11, size: 320, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2334 = !{!2335, !2336, !2337, !2342}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2332, file: !2333, line: 16, baseType: !745, size: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2332, file: !2333, line: 17, baseType: !221, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2332, file: !2333, line: 18, baseType: !2338, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2332, file: !2333, line: 19, baseType: !512, size: 32, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2321, file: !2322, line: 50, baseType: !221, size: 64, offset: 704)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2321, file: !2322, line: 51, baseType: !2345, size: 64, offset: 768)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2346, line: 29, baseType: !691)
!2346 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2321, file: !2322, line: 52, baseType: !2345, size: 64, offset: 832)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2321, file: !2322, line: 53, baseType: !2345, size: 64, offset: 896)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2321, file: !2322, line: 54, baseType: !2345, size: 64, offset: 960)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2321, file: !2322, line: 55, baseType: !2345, size: 64, offset: 1024)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2321, file: !2322, line: 56, baseType: !221, size: 64, offset: 1088)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2321, file: !2322, line: 57, baseType: !221, size: 64, offset: 1152)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2321, file: !2322, line: 58, baseType: !221, size: 64, offset: 1216)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2321, file: !2322, line: 59, baseType: !221, size: 64, offset: 1280)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2321, file: !2322, line: 60, baseType: !221, size: 64, offset: 1344)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2321, file: !2322, line: 61, baseType: !2160, size: 64, offset: 1408)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2321, file: !2322, line: 62, baseType: !883, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2321, file: !2322, line: 63, baseType: !883, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2302, file: !116, line: 681, baseType: !883, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2302, file: !116, line: 682, baseType: !883, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2302, file: !116, line: 683, baseType: !883, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2302, file: !116, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2302, file: !116, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2302, file: !116, line: 690, baseType: !2365, size: 512, offset: 640)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !111, line: 118, size: 512, elements: !2366)
!2366 = !{!2367, !2373, !2374, !2379, !2434, !2435, !2436, !2437}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2365, file: !111, line: 119, baseType: !2368, size: 256)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2369, line: 9, size: 256, elements: !2370)
!2369 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2368, file: !2369, line: 10, baseType: !816, size: 192, align: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2368, file: !2369, line: 11, baseType: !2345, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2365, file: !111, line: 120, baseType: !2345, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2365, file: !111, line: 121, baseType: !2375, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!110, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2365, file: !111, line: 122, baseType: !2380, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !111, line: 159, size: 512, align: 512, elements: !2382)
!2382 = !{!2383, !2408, !2409, !2412, !2417, !2418, !2429, !2433}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2381, file: !111, line: 160, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !111, line: 215, size: 4608, align: 512, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2385, file: !111, line: 216, baseType: !699, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2385, file: !111, line: 217, baseType: !7, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2385, file: !111, line: 218, baseType: !7, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2385, file: !111, line: 219, baseType: !7, size: 32, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2385, file: !111, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2385, file: !111, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2385, file: !111, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2385, file: !111, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2385, file: !111, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2385, file: !111, line: 226, baseType: !7, size: 32, offset: 160)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2385, file: !111, line: 227, baseType: !336, size: 16, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2385, file: !111, line: 228, baseType: !336, size: 16, offset: 208)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2385, file: !111, line: 229, baseType: !7, size: 32, offset: 224)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2385, file: !111, line: 235, baseType: !2345, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2385, file: !111, line: 236, baseType: !2378, size: 64, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2385, file: !111, line: 237, baseType: !2345, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2385, file: !111, line: 238, baseType: !2378, size: 64, offset: 448)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2385, file: !111, line: 239, baseType: !2405, size: 4096, align: 512, offset: 512)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2381, size: 4096, align: 512, elements: !2406)
!2406 = !{!2407}
!2407 = !DISubrange(count: 8)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2381, file: !111, line: 161, baseType: !7, size: 32, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2381, file: !111, line: 162, baseType: !2410, size: 32, offset: 96)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !213, line: 32, baseType: !2411)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !224, line: 96, baseType: !124)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2381, file: !111, line: 163, baseType: !2413, size: 32, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !485, line: 274, baseType: !2414)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !485, line: 274, size: 32, elements: !2415)
!2415 = !{!2416}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2414, file: !485, line: 274, baseType: !489, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2381, file: !111, line: 164, baseType: !2378, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2381, file: !111, line: 165, baseType: !2419, size: 128, offset: 256)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2369, line: 14, size: 128, elements: !2420)
!2420 = !{!2421}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2419, file: !2369, line: 15, baseType: !2422, size: 128)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !817, line: 26, size: 128, elements: !2423)
!2423 = !{!2424, !2428}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2422, file: !817, line: 27, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !817, line: 12, size: 64, elements: !2426)
!2426 = !{!2427}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2425, file: !817, line: 13, baseType: !821, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2422, file: !817, line: 28, baseType: !821, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2381, file: !111, line: 166, baseType: !2430, size: 64, offset: 384)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!2345}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2381, file: !111, line: 167, baseType: !2345, size: 64, offset: 448)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2365, file: !111, line: 123, baseType: !266, size: 8, offset: 448)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2365, file: !111, line: 124, baseType: !266, size: 8, offset: 456)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2365, file: !111, line: 125, baseType: !266, size: 8, offset: 464)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2365, file: !111, line: 126, baseType: !266, size: 8, offset: 472)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2302, file: !116, line: 691, baseType: !516, size: 64, offset: 1152)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2302, file: !116, line: 692, baseType: !1365, size: 256, offset: 1216)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2302, file: !116, line: 693, baseType: !754, size: 192, offset: 1472)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2302, file: !116, line: 694, baseType: !2329, size: 64, offset: 1664)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2302, file: !116, line: 695, baseType: !261, size: 32, offset: 1728)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2302, file: !116, line: 696, baseType: !261, size: 32, offset: 1760)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2302, file: !116, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2302, file: !116, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2302, file: !116, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2302, file: !116, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2302, file: !116, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2302, file: !116, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2302, file: !116, line: 703, baseType: !883, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2302, file: !116, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2302, file: !116, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2302, file: !116, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2302, file: !116, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2302, file: !116, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2302, file: !116, line: 709, baseType: !7, size: 32, offset: 1824)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2302, file: !116, line: 710, baseType: !115, size: 32, offset: 1856)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2302, file: !116, line: 711, baseType: !123, size: 32, offset: 1888)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2302, file: !116, line: 712, baseType: !123, size: 32, offset: 1920)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2302, file: !116, line: 713, baseType: !124, size: 32, offset: 1952)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2302, file: !116, line: 714, baseType: !124, size: 32, offset: 1984)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2302, file: !116, line: 715, baseType: !516, size: 64, offset: 2048)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2302, file: !116, line: 716, baseType: !516, size: 64, offset: 2112)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2302, file: !116, line: 717, baseType: !516, size: 64, offset: 2176)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2302, file: !116, line: 718, baseType: !516, size: 64, offset: 2240)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2302, file: !116, line: 720, baseType: !2467, size: 64, offset: 2304)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !116, line: 632, size: 64, elements: !2469)
!2469 = !{!2470, !2471}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2468, file: !116, line: 633, baseType: !305, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2468, file: !116, line: 634, baseType: !7, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2302, file: !116, line: 721, baseType: !2473, size: 64, offset: 2368)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2160, !809}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2302, file: !116, line: 722, baseType: !2477, size: 64, offset: 2432)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !116, line: 722, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2156, file: !104, line: 727, baseType: !2480, size: 64, offset: 4224)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !116, line: 742, size: 1792, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2489, !2490, !2491}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2481, file: !116, line: 743, baseType: !2192, size: 1472)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2481, file: !116, line: 744, baseType: !2195, size: 64, offset: 1472)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2481, file: !116, line: 745, baseType: !2486, size: 64, offset: 1536)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !2160, !883}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2481, file: !116, line: 746, baseType: !2195, size: 64, offset: 1600)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2481, file: !116, line: 747, baseType: !2186, size: 64, offset: 1664)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2481, file: !116, line: 748, baseType: !2186, size: 64, offset: 1728)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2156, file: !104, line: 736, baseType: !2493, size: 128, offset: 4288)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !104, line: 529, size: 128, elements: !2494)
!2494 = !{!2495, !2499}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2493, file: !104, line: 531, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2498, line: 13, flags: DIFlagFwdDecl)
!2498 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2493, file: !104, line: 532, baseType: !2500, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !104, line: 49, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2156, file: !104, line: 738, baseType: !2503, size: 64, offset: 4416)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2505)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !104, line: 738, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2156, file: !104, line: 740, baseType: !2507, size: 64, offset: 4480)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2156, file: !104, line: 741, baseType: !516, size: 64, offset: 4544)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2156, file: !104, line: 746, baseType: !516, size: 64, offset: 4608)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2156, file: !104, line: 747, baseType: !2511, size: 64, offset: 4672)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2513)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !104, line: 747, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2156, file: !104, line: 749, baseType: !2515, size: 64, offset: 4736)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !104, line: 428, size: 128, elements: !2517)
!2517 = !{!2518, !2519, !2520}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2516, file: !104, line: 433, baseType: !7, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2516, file: !104, line: 434, baseType: !7, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2516, file: !104, line: 435, baseType: !221, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2156, file: !104, line: 751, baseType: !279, size: 128, offset: 4800)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2156, file: !104, line: 762, baseType: !2523, size: 64, offset: 4928)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !104, line: 762, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2156, file: !104, line: 770, baseType: !2526, offset: 4992)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2527, line: 5, elements: !1231)
!2527 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2156, file: !104, line: 772, baseType: !2529, size: 64, offset: 4992)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2531, line: 18, flags: DIFlagFwdDecl)
!2531 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2156, file: !104, line: 773, baseType: !2533, size: 64, offset: 5056)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2224, line: 22, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2156, file: !104, line: 776, baseType: !124, size: 32, offset: 5120)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2156, file: !104, line: 778, baseType: !599, size: 32, offset: 5152)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2156, file: !104, line: 779, baseType: !512, size: 32, offset: 5184)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2156, file: !104, line: 781, baseType: !305, size: 32, offset: 5216)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2156, file: !104, line: 782, baseType: !279, size: 128, offset: 5248)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2156, file: !104, line: 784, baseType: !2541, size: 64, offset: 5376)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2543)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2544, line: 52, size: 768, elements: !2545)
!2544 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2554, !2558, !2559, !2560, !2588, !2592, !2596}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2543, file: !2544, line: 53, baseType: !240, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2543, file: !2544, line: 55, baseType: !415, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2543, file: !2544, line: 56, baseType: !415, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2543, file: !2544, line: 58, baseType: !2173, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2543, file: !2544, line: 59, baseType: !2551, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!366, !2176, !2182}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2543, file: !2544, line: 61, baseType: !2555, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2541}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2543, file: !2544, line: 62, baseType: !2186, size: 64, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2543, file: !2544, line: 64, baseType: !2195, size: 64, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2543, file: !2544, line: 66, baseType: !2561, size: 64, offset: 512)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !67, line: 39, size: 384, elements: !2564)
!2564 = !{!2565, !2566, !2570, !2574, !2580, !2584}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2563, file: !67, line: 40, baseType: !66, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2563, file: !67, line: 41, baseType: !2567, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!883}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2563, file: !67, line: 42, baseType: !2571, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!214}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2563, file: !67, line: 43, baseType: !2575, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!1326, !2578}
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !67, line: 19, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2563, file: !67, line: 44, baseType: !2581, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!1326}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2563, file: !67, line: 45, baseType: !2585, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{null, !214}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2543, file: !2544, line: 67, baseType: !2589, size: 64, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!1326, !2176}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2543, file: !2544, line: 69, baseType: !2593, size: 64, offset: 640)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !2176, !2183, !2184}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2543, file: !2544, line: 71, baseType: !2190, size: 64, offset: 704)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2156, file: !104, line: 785, baseType: !415, size: 64, offset: 5440)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2156, file: !104, line: 787, baseType: !2186, size: 64, offset: 5504)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2156, file: !104, line: 788, baseType: !2600, size: 64, offset: 5568)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !104, line: 46, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2156, file: !104, line: 789, baseType: !2603, size: 64, offset: 5632)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !104, line: 48, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2156, file: !104, line: 791, baseType: !2606, size: 64, offset: 5696)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !104, line: 597, size: 128, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2607, file: !104, line: 598, baseType: !131, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2607, file: !104, line: 599, baseType: !140, size: 32, offset: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2607, file: !104, line: 600, baseType: !145, size: 32, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2607, file: !104, line: 601, baseType: !883, size: 8, offset: 96)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2607, file: !104, line: 602, baseType: !883, size: 8, offset: 104)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2156, file: !104, line: 793, baseType: !150, size: 32, offset: 5760)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2156, file: !104, line: 795, baseType: !883, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2156, file: !104, line: 796, baseType: !883, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2156, file: !104, line: 797, baseType: !883, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2156, file: !104, line: 798, baseType: !883, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2156, file: !104, line: 799, baseType: !883, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !595, file: !87, line: 1226, baseType: !2621, size: 64, offset: 1664)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !87, line: 1226, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !595, file: !87, line: 1227, baseType: !2624, size: 64, offset: 1728)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !157, line: 163, size: 6848, elements: !2626)
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2685, !2686, !2687, !2688, !2690, !2691, !2692}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2625, file: !157, line: 164, baseType: !516, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2625, file: !157, line: 165, baseType: !816, size: 192, align: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2625, file: !157, line: 166, baseType: !279, size: 128, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2625, file: !157, line: 167, baseType: !221, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2625, file: !157, line: 168, baseType: !221, size: 64, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2625, file: !157, line: 170, baseType: !2633, size: 32, offset: 512)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2634, line: 19, size: 32, elements: !2635)
!2634 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2635 = !{!2636}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2633, file: !2634, line: 20, baseType: !256, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2625, file: !157, line: 171, baseType: !7, size: 32, offset: 544)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2625, file: !157, line: 172, baseType: !7, size: 32, offset: 576)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2625, file: !157, line: 173, baseType: !7, size: 32, offset: 608)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2625, file: !157, line: 173, baseType: !7, size: 32, offset: 640)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2625, file: !157, line: 179, baseType: !685, size: 64, offset: 704)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2625, file: !157, line: 184, baseType: !221, size: 64, offset: 768)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2625, file: !157, line: 186, baseType: !2644, size: 4672, offset: 832)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !157, line: 105, size: 4672, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2670, !2671, !2672, !2673, !2674, !2683, !2684}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2644, file: !157, line: 106, baseType: !2624, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2644, file: !157, line: 108, baseType: !221, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2644, file: !157, line: 109, baseType: !221, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2644, file: !157, line: 111, baseType: !279, size: 128, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2644, file: !157, line: 112, baseType: !279, size: 128, offset: 320)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2644, file: !157, line: 113, baseType: !279, size: 128, offset: 448)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2644, file: !157, line: 114, baseType: !279, size: 128, offset: 576)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2644, file: !157, line: 115, baseType: !305, size: 32, offset: 704)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2644, file: !157, line: 117, baseType: !261, size: 32, offset: 736)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2644, file: !157, line: 118, baseType: !1294, size: 1280, offset: 768)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2644, file: !157, line: 120, baseType: !221, size: 64, offset: 2048)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2644, file: !157, line: 121, baseType: !221, size: 64, offset: 2112)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2644, file: !157, line: 122, baseType: !221, size: 64, offset: 2176)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2644, file: !157, line: 123, baseType: !221, size: 64, offset: 2240)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2644, file: !157, line: 124, baseType: !221, size: 64, offset: 2304)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2644, file: !157, line: 132, baseType: !221, size: 64, offset: 2368)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2644, file: !157, line: 133, baseType: !221, size: 64, offset: 2432)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2644, file: !157, line: 135, baseType: !2664, size: 384, offset: 2496)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2665, line: 76, size: 384, elements: !2666)
!2665 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2666 = !{!2667, !2668, !2669}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2664, file: !2665, line: 78, baseType: !941, size: 320)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2664, file: !2665, line: 80, baseType: !7, size: 32, offset: 320)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2664, file: !2665, line: 81, baseType: !699, size: 32, offset: 352)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2644, file: !157, line: 136, baseType: !124, size: 32, offset: 2880)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2644, file: !157, line: 137, baseType: !156, size: 32, offset: 2912)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2644, file: !157, line: 139, baseType: !305, size: 32, offset: 2944)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2644, file: !157, line: 140, baseType: !279, size: 128, offset: 3008)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2644, file: !157, line: 141, baseType: !2675, size: 704, offset: 3136)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1366, line: 111, size: 704, elements: !2676)
!2676 = !{!2677, !2678, !2679, !2682}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2675, file: !1366, line: 112, baseType: !1365, size: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2675, file: !1366, line: 113, baseType: !2332, size: 320, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2675, file: !1366, line: 116, baseType: !2680, size: 64, offset: 576)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1366, line: 18, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2675, file: !1366, line: 117, baseType: !124, size: 32, offset: 640)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2644, file: !157, line: 142, baseType: !2675, size: 704, offset: 3840)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2644, file: !157, line: 144, baseType: !279, size: 128, offset: 4544)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2625, file: !157, line: 187, baseType: !279, size: 128, offset: 5504)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2625, file: !157, line: 193, baseType: !754, size: 192, offset: 5632)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2625, file: !157, line: 195, baseType: !2160, size: 64, offset: 5824)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2625, file: !157, line: 196, baseType: !2689, size: 512, offset: 5888)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 512, elements: !371)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2625, file: !157, line: 197, baseType: !2160, size: 64, offset: 6400)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2625, file: !157, line: 199, baseType: !2332, size: 320, offset: 6464)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2625, file: !157, line: 202, baseType: !478, size: 64, offset: 6784)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !595, file: !87, line: 1228, baseType: !2694, size: 64, offset: 1792)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !87, line: 1228, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !595, file: !87, line: 1229, baseType: !745, size: 128, offset: 1856)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !595, file: !87, line: 1230, baseType: !7, size: 32, offset: 1984)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !595, file: !87, line: 1231, baseType: !2699, size: 2496, offset: 2048)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !92, line: 521, size: 2496, elements: !2700)
!2700 = !{!2701, !2702, !2703, !2705, !2737}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2699, file: !92, line: 522, baseType: !7, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2699, file: !92, line: 523, baseType: !824, size: 320, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2699, file: !92, line: 524, baseType: !2704, size: 192, offset: 384)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 192, elements: !367)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2699, file: !92, line: 525, baseType: !2706, size: 1728, offset: 576)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2707, size: 1728, elements: !367)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !92, line: 222, size: 576, elements: !2708)
!2708 = !{!2709, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2707, file: !92, line: 223, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !92, line: 445, size: 256, elements: !2712)
!2712 = !{!2713, !2714, !2727, !2728}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2711, file: !92, line: 446, baseType: !124, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2711, file: !92, line: 447, baseType: !2715, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2717)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !92, line: 312, size: 512, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2717, file: !92, line: 313, baseType: !1861, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2717, file: !92, line: 314, baseType: !1861, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2717, file: !92, line: 315, baseType: !1861, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2717, file: !92, line: 316, baseType: !1861, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2717, file: !92, line: 317, baseType: !1971, size: 64, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2717, file: !92, line: 318, baseType: !1971, size: 64, offset: 320)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2717, file: !92, line: 319, baseType: !1971, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2717, file: !92, line: 320, baseType: !2001, size: 64, offset: 448)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2711, file: !92, line: 448, baseType: !274, size: 64, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2711, file: !92, line: 449, baseType: !2710, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2707, file: !92, line: 224, baseType: !124, size: 32, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2707, file: !92, line: 226, baseType: !279, size: 128, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2707, file: !92, line: 227, baseType: !221, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2707, file: !92, line: 228, baseType: !7, size: 32, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2707, file: !92, line: 229, baseType: !7, size: 32, offset: 352)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2707, file: !92, line: 230, baseType: !1939, size: 64, offset: 384)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2707, file: !92, line: 231, baseType: !1939, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2707, file: !92, line: 232, baseType: !214, size: 64, offset: 512)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2699, file: !92, line: 526, baseType: !2738, size: 192, offset: 2304)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2715, size: 192, elements: !367)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !595, file: !87, line: 1233, baseType: !2740, size: 2368, offset: 4544)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !87, line: 1184, size: 2368, elements: !2741)
!2741 = !{!2742, !2743, !2744}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2740, file: !87, line: 1185, baseType: !336, size: 16)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2740, file: !87, line: 1186, baseType: !336, size: 16, offset: 16)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2740, file: !87, line: 1187, baseType: !2745, size: 2304, offset: 64)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2746, size: 2304, elements: !367)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2747, line: 12, size: 768, elements: !2748)
!2747 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2748 = !{!2749, !2757, !2759, !3870, !3871}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2746, file: !2747, line: 13, baseType: !2750, size: 384)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2751, line: 17, size: 384, elements: !2752)
!2751 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2752 = !{!2753, !2754, !2755, !2756}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2750, file: !2751, line: 18, baseType: !124, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2750, file: !2751, line: 19, baseType: !124, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2750, file: !2751, line: 20, baseType: !754, size: 192, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2750, file: !2751, line: 22, baseType: !672, size: 128, align: 64, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2746, file: !2747, line: 14, baseType: !2758, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2746, file: !2747, line: 15, baseType: !2760, size: 64, offset: 448)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2761, line: 16, size: 64, elements: !2762)
!2761 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2762 = !{!2763}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2760, file: !2761, line: 17, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1667, line: 746, size: 58368, elements: !2766)
!2766 = !{!2767, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2847, !2858, !2878, !2882, !2885, !2916, !2917, !2918, !2919, !2930, !2932, !2933, !2934, !2935, !2936, !2937, !2948, !2949, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2966, !2967, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !3055, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3070, !3071, !3072, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3104, !3110, !3111, !3112, !3113, !3114, !3118, !3121, !3128, !3133, !3136, !3139, !3142, !3145, !3285, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3325, !3326, !3327, !3336, !3344, !3345, !3346, !3347, !3348, !3353, !3354, !3355, !3358, !3359, !3362, !3365, !3368, !3375, !3378, !3379, !3465, !3466, !3467, !3468, !3469, !3475, !3476, !3477, !3478, !3481, !3482, !3485, !3488, !3489, !3492, !3493, !3494, !3497, !3498, !3499, !3500, !3501, !3502, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3534, !3535, !3541, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3623, !3625, !3626, !3627, !3628, !3629, !3630, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3647, !3648, !3649}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2765, file: !1667, line: 752, baseType: !2768, size: 192)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2769, line: 56, size: 192, elements: !2770)
!2769 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2768, file: !2769, line: 57, baseType: !221, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2768, file: !2769, line: 58, baseType: !221, size: 64, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2768, file: !2769, line: 59, baseType: !512, size: 32, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2768, file: !2769, line: 61, baseType: !512, size: 32, offset: 160)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2765, file: !1667, line: 754, baseType: !7, size: 32, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2765, file: !1667, line: 767, baseType: !214, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2765, file: !1667, line: 768, baseType: !256, size: 32, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2765, file: !1667, line: 770, baseType: !7, size: 32, offset: 352)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2765, file: !1667, line: 771, baseType: !7, size: 32, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2765, file: !1667, line: 774, baseType: !124, size: 32, offset: 416)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2765, file: !1667, line: 775, baseType: !2782, size: 128, offset: 448)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2783, line: 58, size: 128, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2784 = !{!2785, !2786, !2791, !2792}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2782, file: !2783, line: 59, baseType: !666, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, scope: !2782, file: !2783, line: 60, baseType: !2787, size: 32, offset: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2782, file: !2783, line: 60, size: 32, elements: !2788)
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2787, file: !2783, line: 61, baseType: !7, size: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2787, file: !2783, line: 62, baseType: !261, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2782, file: !2783, line: 65, baseType: !334, size: 16, offset: 96)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2782, file: !2783, line: 65, baseType: !334, size: 16, offset: 112)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2765, file: !1667, line: 776, baseType: !7, size: 32, offset: 576)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2765, file: !1667, line: 777, baseType: !221, size: 64, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2765, file: !1667, line: 778, baseType: !2764, size: 64, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2765, file: !1667, line: 787, baseType: !124, size: 32, offset: 768)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2765, file: !1667, line: 788, baseType: !124, size: 32, offset: 800)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2765, file: !1667, line: 790, baseType: !124, size: 32, offset: 832)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2765, file: !1667, line: 792, baseType: !124, size: 32, offset: 864)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2765, file: !1667, line: 793, baseType: !124, size: 32, offset: 896)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2765, file: !1667, line: 794, baseType: !124, size: 32, offset: 928)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2765, file: !1667, line: 795, baseType: !7, size: 32, offset: 960)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2765, file: !1667, line: 797, baseType: !2804, size: 2048, offset: 1024)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1667, line: 551, size: 2048, elements: !2805)
!2805 = !{!2806, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2826, !2829, !2830, !2831}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2804, file: !1667, line: 553, baseType: !2807, size: 128)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1667, line: 411, size: 128, elements: !2808)
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2807, file: !1667, line: 412, baseType: !221, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2807, file: !1667, line: 413, baseType: !512, size: 32, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2804, file: !1667, line: 554, baseType: !816, size: 192, align: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2804, file: !1667, line: 555, baseType: !516, size: 64, offset: 320)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2804, file: !1667, line: 556, baseType: !516, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2804, file: !1667, line: 558, baseType: !279, size: 128, offset: 448)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2804, file: !1667, line: 559, baseType: !7, size: 32, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2804, file: !1667, line: 561, baseType: !516, size: 64, offset: 640)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2804, file: !1667, line: 562, baseType: !516, size: 64, offset: 704)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2804, file: !1667, line: 563, baseType: !516, size: 64, offset: 768)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2804, file: !1667, line: 564, baseType: !516, size: 64, offset: 832)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2804, file: !1667, line: 565, baseType: !691, size: 64, offset: 896)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2804, file: !1667, line: 566, baseType: !516, size: 64, offset: 960)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2804, file: !1667, line: 568, baseType: !516, size: 64, offset: 1024)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2804, file: !1667, line: 571, baseType: !124, size: 32, offset: 1088)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2804, file: !1667, line: 572, baseType: !2825, size: 64, offset: 1152)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2804, file: !1667, line: 574, baseType: !2827, size: 64, offset: 1216)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1667, line: 49, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2804, file: !1667, line: 576, baseType: !2827, size: 64, offset: 1280)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2804, file: !1667, line: 578, baseType: !221, size: 64, offset: 1344)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2804, file: !1667, line: 588, baseType: !2832, size: 512, align: 512, offset: 1536)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1667, line: 497, size: 512, align: 512, elements: !2833)
!2833 = !{!2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2832, file: !1667, line: 498, baseType: !516, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2832, file: !1667, line: 499, baseType: !516, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2832, file: !1667, line: 500, baseType: !516, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2832, file: !1667, line: 501, baseType: !512, size: 32, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2832, file: !1667, line: 502, baseType: !512, size: 32, offset: 224)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2832, file: !1667, line: 503, baseType: !221, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2832, file: !1667, line: 504, baseType: !221, size: 64, offset: 320)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2832, file: !1667, line: 505, baseType: !221, size: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2832, file: !1667, line: 506, baseType: !2843, size: 64, align: 64, offset: 448)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1667, line: 445, size: 64, align: 64, elements: !2844)
!2844 = !{!2845, !2846}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2843, file: !1667, line: 446, baseType: !7, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2843, file: !1667, line: 447, baseType: !7, size: 32, offset: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2765, file: !1667, line: 798, baseType: !2848, size: 384, offset: 3072)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1667, line: 592, size: 384, elements: !2849)
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2848, file: !1667, line: 593, baseType: !279, size: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2848, file: !1667, line: 594, baseType: !221, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2848, file: !1667, line: 595, baseType: !221, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2848, file: !1667, line: 596, baseType: !7, size: 32, offset: 256)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2848, file: !1667, line: 597, baseType: !336, size: 16, offset: 288)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2848, file: !1667, line: 598, baseType: !336, size: 16, offset: 304)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2848, file: !1667, line: 600, baseType: !2857, size: 64, offset: 320)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2765, file: !1667, line: 799, baseType: !2859, size: 1792, offset: 3456)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1667, line: 610, size: 1792, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2859, file: !1667, line: 611, baseType: !816, size: 192, align: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2859, file: !1667, line: 618, baseType: !516, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2859, file: !1667, line: 619, baseType: !516, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2859, file: !1667, line: 620, baseType: !516, size: 64, offset: 320)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2859, file: !1667, line: 621, baseType: !516, size: 64, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2859, file: !1667, line: 622, baseType: !516, size: 64, offset: 448)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2859, file: !1667, line: 629, baseType: !691, size: 64, offset: 512)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2859, file: !1667, line: 630, baseType: !516, size: 64, offset: 576)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2859, file: !1667, line: 631, baseType: !7, size: 32, offset: 640)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2859, file: !1667, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2859, file: !1667, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2859, file: !1667, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2859, file: !1667, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2859, file: !1667, line: 662, baseType: !2365, size: 512, offset: 704)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2859, file: !1667, line: 671, baseType: !2365, size: 512, offset: 1216)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2859, file: !1667, line: 679, baseType: !2877, size: 64, offset: 1728)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2765, file: !1667, line: 800, baseType: !2879, size: 64, offset: 5248)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2881)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1667, line: 800, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2765, file: !1667, line: 809, baseType: !2883, size: 64, offset: 5312)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1667, line: 70, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2765, file: !1667, line: 825, baseType: !2886, size: 2048, align: 512, offset: 5632)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1667, line: 509, size: 2048, align: 512, elements: !2887)
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2886, file: !1667, line: 511, baseType: !516, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2886, file: !1667, line: 512, baseType: !516, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2886, file: !1667, line: 513, baseType: !516, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2886, file: !1667, line: 514, baseType: !516, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2886, file: !1667, line: 515, baseType: !516, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2886, file: !1667, line: 516, baseType: !516, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2886, file: !1667, line: 518, baseType: !516, size: 64, offset: 384)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2886, file: !1667, line: 519, baseType: !516, size: 64, offset: 448)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2886, file: !1667, line: 520, baseType: !691, size: 64, offset: 512)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2886, file: !1667, line: 522, baseType: !516, size: 64, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2886, file: !1667, line: 523, baseType: !516, size: 64, offset: 640)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2886, file: !1667, line: 524, baseType: !691, size: 64, offset: 704)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2886, file: !1667, line: 526, baseType: !691, size: 64, offset: 768)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2886, file: !1667, line: 527, baseType: !516, size: 64, offset: 832)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2886, file: !1667, line: 529, baseType: !516, size: 64, offset: 896)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2886, file: !1667, line: 530, baseType: !516, size: 64, offset: 960)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2886, file: !1667, line: 531, baseType: !516, size: 64, offset: 1024)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2886, file: !1667, line: 532, baseType: !516, size: 64, offset: 1088)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2886, file: !1667, line: 533, baseType: !516, size: 64, offset: 1152)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2886, file: !1667, line: 535, baseType: !516, size: 64, offset: 1216)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2886, file: !1667, line: 536, baseType: !516, size: 64, offset: 1280)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2886, file: !1667, line: 537, baseType: !516, size: 64, offset: 1344)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2886, file: !1667, line: 538, baseType: !516, size: 64, offset: 1408)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2886, file: !1667, line: 539, baseType: !516, size: 64, offset: 1472)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2886, file: !1667, line: 540, baseType: !516, size: 64, offset: 1536)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2886, file: !1667, line: 541, baseType: !516, size: 64, offset: 1600)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2886, file: !1667, line: 542, baseType: !516, size: 64, offset: 1664)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2886, file: !1667, line: 543, baseType: !516, size: 64, offset: 1728)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2765, file: !1667, line: 833, baseType: !7, size: 32, offset: 7680)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2765, file: !1667, line: 836, baseType: !7, size: 32, offset: 7712)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2765, file: !1667, line: 837, baseType: !124, size: 32, offset: 7744)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2765, file: !1667, line: 838, baseType: !2920, size: 64, offset: 7808)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2922)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2923, line: 19, baseType: !2924)
!2923 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2923, line: 19, size: 64, elements: !2925)
!2925 = !{!2926}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2924, file: !2923, line: 19, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 64, elements: !2928)
!2928 = !{!2929}
!2929 = !DISubrange(count: 1)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2765, file: !1667, line: 839, baseType: !2931, size: 64, offset: 7872)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2765, file: !1667, line: 840, baseType: !2922, size: 64, offset: 7936)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2765, file: !1667, line: 841, baseType: !214, size: 64, offset: 8000)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2765, file: !1667, line: 843, baseType: !336, size: 16, offset: 8064)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2765, file: !1667, line: 845, baseType: !336, size: 16, offset: 8080)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2765, file: !1667, line: 848, baseType: !124, size: 32, offset: 8096)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2765, file: !1667, line: 849, baseType: !2938, size: 32, offset: 8128)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1667, line: 718, size: 32, elements: !2939)
!2939 = !{!2940, !2947}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2938, file: !1667, line: 724, baseType: !2941, size: 32)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !1667, line: 719, size: 32, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2941, file: !1667, line: 720, baseType: !266, size: 8)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2941, file: !1667, line: 721, baseType: !266, size: 8, offset: 8)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2941, file: !1667, line: 722, baseType: !266, size: 8, offset: 16)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2941, file: !1667, line: 723, baseType: !266, size: 8, offset: 24)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2938, file: !1667, line: 725, baseType: !512, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2765, file: !1667, line: 850, baseType: !279, size: 128, offset: 8192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2765, file: !1667, line: 851, baseType: !2950, size: 64, offset: 8320)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1667, line: 60, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2765, file: !1667, line: 855, baseType: !221, size: 64, offset: 8384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2765, file: !1667, line: 856, baseType: !266, size: 8, offset: 8448)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2765, file: !1667, line: 857, baseType: !266, size: 8, offset: 8456)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2765, file: !1667, line: 858, baseType: !124, size: 32, offset: 8480)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2765, file: !1667, line: 859, baseType: !279, size: 128, offset: 8512)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2765, file: !1667, line: 860, baseType: !124, size: 32, offset: 8640)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2765, file: !1667, line: 861, baseType: !279, size: 128, offset: 8704)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2765, file: !1667, line: 873, baseType: !2960, size: 256, offset: 8832)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1667, line: 376, size: 256, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2960, file: !1667, line: 381, baseType: !221, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2960, file: !1667, line: 384, baseType: !518, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2960, file: !1667, line: 389, baseType: !518, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2960, file: !1667, line: 392, baseType: !518, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2765, file: !1667, line: 875, baseType: !279, size: 128, offset: 9088)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2765, file: !1667, line: 877, baseType: !2968, size: 320, offset: 9216)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2969, line: 86, size: 320, elements: !2970)
!2969 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2970 = !{!2971, !2972, !2973}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2968, file: !2969, line: 87, baseType: !124, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2968, file: !2969, line: 88, baseType: !279, size: 128, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2968, file: !2969, line: 89, baseType: !279, size: 128, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2765, file: !1667, line: 878, baseType: !816, size: 192, align: 64, offset: 9536)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2765, file: !1667, line: 881, baseType: !1210, size: 64, offset: 9728)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2765, file: !1667, line: 882, baseType: !1210, size: 64, offset: 9792)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2765, file: !1667, line: 884, baseType: !124, size: 32, offset: 9856)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2765, file: !1667, line: 885, baseType: !124, size: 32, offset: 9888)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2765, file: !1667, line: 886, baseType: !124, size: 32, offset: 9920)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2765, file: !1667, line: 888, baseType: !124, size: 32, offset: 9952)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2765, file: !1667, line: 890, baseType: !221, size: 64, offset: 9984)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2765, file: !1667, line: 893, baseType: !7, size: 32, offset: 10048)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2765, file: !1667, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2765, file: !1667, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2765, file: !1667, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2765, file: !1667, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2765, file: !1667, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2765, file: !1667, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2765, file: !1667, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2765, file: !1667, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2765, file: !1667, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2765, file: !1667, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2765, file: !1667, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2765, file: !1667, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2765, file: !1667, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2765, file: !1667, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2765, file: !1667, line: 969, baseType: !221, size: 64, offset: 10176)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2765, file: !1667, line: 971, baseType: !2999, size: 448, offset: 10240)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !169, line: 25, size: 448, elements: !3000)
!3000 = !{!3001, !3002, !3007}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2999, file: !169, line: 26, baseType: !221, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2999, file: !169, line: 27, baseType: !3003, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!220, !3006}
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, scope: !2999, file: !169, line: 28, baseType: !3008, size: 320, offset: 128)
!3008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2999, file: !169, line: 28, size: 320, elements: !3009)
!3009 = !{!3010, !3020, !3045}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3008, file: !169, line: 37, baseType: !3011, size: 320)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3008, file: !169, line: 30, size: 320, elements: !3012)
!3012 = !{!3013, !3015, !3016, !3017, !3018, !3019}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3011, file: !169, line: 31, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3011, file: !169, line: 32, baseType: !512, size: 32, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3011, file: !169, line: 33, baseType: !512, size: 32, offset: 96)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3011, file: !169, line: 34, baseType: !512, size: 32, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3011, file: !169, line: 35, baseType: !516, size: 64, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3011, file: !169, line: 36, baseType: !3014, size: 64, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3008, file: !169, line: 47, baseType: !3021, size: 192)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3008, file: !169, line: 39, size: 192, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3044}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3021, file: !169, line: 40, baseType: !2410, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3021, file: !169, line: 41, baseType: !168, size: 32, offset: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, scope: !3021, file: !169, line: 42, baseType: !3026, size: 64, offset: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3021, file: !169, line: 42, size: 64, elements: !3027)
!3027 = !{!3028, !3036}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3026, file: !169, line: 43, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3031, line: 7, size: 128, elements: !3032)
!3031 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3032 = !{!3033, !3035}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3030, file: !3031, line: 8, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !224, line: 93, baseType: !225)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3030, file: !3031, line: 9, baseType: !225, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3026, file: !169, line: 44, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3039, line: 7, size: 64, elements: !3040)
!3039 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3040 = !{!3041, !3043}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3038, file: !3039, line: 8, baseType: !3042, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3039, line: 5, baseType: !809)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3038, file: !3039, line: 9, baseType: !809, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3021, file: !169, line: 46, baseType: !516, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3008, file: !169, line: 55, baseType: !3046, size: 256)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3008, file: !169, line: 49, size: 256, elements: !3047)
!3047 = !{!3048, !3051, !3052, !3053, !3054}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3046, file: !169, line: 50, baseType: !3049, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !169, line: 14, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3046, file: !169, line: 51, baseType: !124, size: 32, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3046, file: !169, line: 52, baseType: !124, size: 32, offset: 96)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3046, file: !169, line: 53, baseType: !221, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3046, file: !169, line: 54, baseType: !221, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2765, file: !1667, line: 973, baseType: !3056, size: 32, offset: 10688)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !213, line: 27, baseType: !3057)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !224, line: 28, baseType: !124)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2765, file: !1667, line: 974, baseType: !3056, size: 32, offset: 10720)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2765, file: !1667, line: 978, baseType: !221, size: 64, offset: 10752)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2765, file: !1667, line: 987, baseType: !2764, size: 64, offset: 10816)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2765, file: !1667, line: 990, baseType: !2764, size: 64, offset: 10880)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2765, file: !1667, line: 995, baseType: !279, size: 128, offset: 10944)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2765, file: !1667, line: 996, baseType: !279, size: 128, offset: 11072)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2765, file: !1667, line: 997, baseType: !2764, size: 64, offset: 11200)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2765, file: !1667, line: 1005, baseType: !279, size: 128, offset: 11264)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2765, file: !1667, line: 1006, baseType: !279, size: 128, offset: 11392)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2765, file: !1667, line: 1009, baseType: !733, size: 64, offset: 11520)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2765, file: !1667, line: 1010, baseType: !3069, size: 512, offset: 11584)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 512, elements: !750)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2765, file: !1667, line: 1011, baseType: !279, size: 128, offset: 12096)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2765, file: !1667, line: 1012, baseType: !279, size: 128, offset: 12224)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2765, file: !1667, line: 1014, baseType: !3073, size: 64, offset: 12352)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2765, file: !1667, line: 1017, baseType: !1884, size: 64, offset: 12416)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2765, file: !1667, line: 1020, baseType: !1884, size: 64, offset: 12480)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2765, file: !1667, line: 1023, baseType: !214, size: 64, offset: 12544)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2765, file: !1667, line: 1025, baseType: !516, size: 64, offset: 12608)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2765, file: !1667, line: 1026, baseType: !516, size: 64, offset: 12672)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2765, file: !1667, line: 1031, baseType: !516, size: 64, offset: 12736)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2765, file: !1667, line: 1032, baseType: !3081, size: 192, offset: 12800)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1667, line: 324, size: 192, elements: !3082)
!3082 = !{!3083, !3084, !3085}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3081, file: !1667, line: 326, baseType: !516, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3081, file: !1667, line: 327, baseType: !516, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3081, file: !1667, line: 328, baseType: !699, size: 32, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2765, file: !1667, line: 1041, baseType: !221, size: 64, offset: 12992)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2765, file: !1667, line: 1042, baseType: !221, size: 64, offset: 13056)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2765, file: !1667, line: 1045, baseType: !516, size: 64, offset: 13120)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2765, file: !1667, line: 1048, baseType: !516, size: 64, offset: 13184)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2765, file: !1667, line: 1051, baseType: !221, size: 64, offset: 13248)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2765, file: !1667, line: 1052, baseType: !221, size: 64, offset: 13312)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2765, file: !1667, line: 1055, baseType: !3093, size: 640, offset: 13376)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3094, line: 132, size: 640, elements: !3095)
!3094 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3095 = !{!3096, !3102, !3103}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3093, file: !3094, line: 133, baseType: !3097, size: 576)
!3097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3098, size: 576, elements: !367)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3094, line: 117, size: 192, elements: !3099)
!3099 = !{!3100, !3101}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3098, file: !3094, line: 118, baseType: !516, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3098, file: !3094, line: 119, baseType: !2419, size: 128, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3093, file: !3094, line: 134, baseType: !7, size: 32, offset: 576)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3093, file: !3094, line: 135, baseType: !7, size: 32, offset: 608)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2765, file: !1667, line: 1058, baseType: !3105, size: 448, offset: 14016)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3094, line: 144, size: 448, elements: !3106)
!3106 = !{!3107, !3108, !3109}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3105, file: !3094, line: 145, baseType: !672, size: 128, align: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3105, file: !3094, line: 146, baseType: !694, size: 256, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3105, file: !3094, line: 147, baseType: !7, size: 32, offset: 384)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2765, file: !1667, line: 1064, baseType: !774, size: 64, offset: 14464)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2765, file: !1667, line: 1067, baseType: !774, size: 64, offset: 14528)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2765, file: !1667, line: 1070, baseType: !774, size: 64, offset: 14592)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2765, file: !1667, line: 1074, baseType: !801, size: 64, offset: 14656)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2765, file: !1667, line: 1084, baseType: !3115, size: 128, offset: 14720)
!3115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !3116)
!3116 = !{!3117}
!3117 = !DISubrange(count: 16)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2765, file: !1667, line: 1086, baseType: !3119, size: 64, offset: 14848)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1667, line: 55, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2765, file: !1667, line: 1089, baseType: !3122, size: 64, offset: 14912)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3123, line: 12, size: 64, elements: !3124)
!3123 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3122, file: !3123, line: 13, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3123, line: 8, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2765, file: !1667, line: 1090, baseType: !3129, size: 128, offset: 14976)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3130, line: 13, size: 128, elements: !3131)
!3130 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3131 = !{!3132}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3129, file: !3130, line: 14, baseType: !279, size: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2765, file: !1667, line: 1097, baseType: !3134, size: 64, offset: 15104)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1667, line: 50, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2765, file: !1667, line: 1100, baseType: !3137, size: 64, offset: 15168)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1667, line: 1100, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2765, file: !1667, line: 1103, baseType: !3140, size: 64, offset: 15232)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1667, line: 53, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2765, file: !1667, line: 1107, baseType: !3143, size: 64, offset: 15296)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1667, line: 56, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2765, file: !1667, line: 1110, baseType: !3146, size: 64, offset: 15360)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3148, line: 93, size: 8768, elements: !3149)
!3148 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3199, !3208, !3209, !3211, !3212, !3213, !3216, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3254, !3255, !3262, !3272, !3275, !3276, !3279, !3280, !3281, !3282, !3283, !3284}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3147, file: !3148, line: 94, baseType: !256, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3147, file: !3148, line: 95, baseType: !261, size: 32, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3147, file: !3148, line: 96, baseType: !124, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3147, file: !3148, line: 97, baseType: !124, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3147, file: !3148, line: 98, baseType: !279, size: 128, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3147, file: !3148, line: 100, baseType: !754, size: 192, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3147, file: !3148, line: 103, baseType: !2764, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3147, file: !3148, line: 106, baseType: !3158, size: 192, offset: 512)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !971, line: 32, size: 192, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3158, file: !971, line: 33, baseType: !279, size: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3158, file: !971, line: 34, baseType: !3162, size: 64, offset: 128)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3163, line: 25, baseType: !3164)
!3163 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3163, line: 23, size: 64, elements: !3165)
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3164, file: !3163, line: 24, baseType: !2927, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3147, file: !3148, line: 109, baseType: !741, size: 64, offset: 704)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3147, file: !3148, line: 112, baseType: !124, size: 32, offset: 768)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3147, file: !3148, line: 114, baseType: !124, size: 32, offset: 800)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3147, file: !3148, line: 115, baseType: !2764, size: 64, offset: 832)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3147, file: !3148, line: 118, baseType: !124, size: 32, offset: 896)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3147, file: !3148, line: 119, baseType: !7, size: 32, offset: 928)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3147, file: !3148, line: 121, baseType: !3174, size: 64, offset: 960)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3148, line: 80, size: 448, elements: !3176)
!3176 = !{!3177, !3178, !3184}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3175, file: !3148, line: 81, baseType: !261, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3175, file: !3148, line: 82, baseType: !3179, size: 128, offset: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3148, line: 75, size: 128, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3179, file: !3148, line: 76, baseType: !2764, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3179, file: !3148, line: 77, baseType: !3183, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3175, file: !3148, line: 83, baseType: !1161, size: 256, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3147, file: !3148, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3147, file: !3148, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3147, file: !3148, line: 138, baseType: !7, size: 32, offset: 1056)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3147, file: !3148, line: 139, baseType: !279, size: 128, offset: 1088)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3147, file: !3148, line: 142, baseType: !2365, size: 512, offset: 1216)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3147, file: !3148, line: 143, baseType: !2345, size: 64, offset: 1728)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3147, file: !3148, line: 150, baseType: !3192, size: 256, offset: 1792)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3193, size: 256, elements: !3197)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3148, line: 38, size: 128, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3193, file: !3148, line: 39, baseType: !516, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3193, file: !3148, line: 40, baseType: !516, size: 64, offset: 64)
!3197 = !{!3198}
!3198 = !DISubrange(count: 2)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3147, file: !3148, line: 156, baseType: !3200, size: 192, offset: 2048)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3148, line: 66, size: 192, elements: !3201)
!3201 = !{!3202}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3200, file: !3148, line: 67, baseType: !3203, size: 192)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3148, line: 47, size: 192, elements: !3204)
!3204 = !{!3205, !3206, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3203, file: !3148, line: 48, baseType: !687, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3203, file: !3148, line: 49, baseType: !687, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3203, file: !3148, line: 50, baseType: !687, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3147, file: !3148, line: 160, baseType: !3093, size: 640, offset: 2240)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3147, file: !3148, line: 163, baseType: !3210, size: 256, offset: 2880)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 256, elements: !750)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3147, file: !3148, line: 169, baseType: !733, size: 64, offset: 3136)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3147, file: !3148, line: 172, baseType: !124, size: 32, offset: 3200)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3147, file: !3148, line: 174, baseType: !3214, size: 64, offset: 3264)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3148, line: 174, flags: DIFlagFwdDecl)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3147, file: !3148, line: 185, baseType: !3217, size: 64, offset: 3328)
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !485, line: 860, baseType: !3218)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 853, size: 64, elements: !3219)
!3219 = !{!3220, !3221}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3218, file: !485, line: 858, baseType: !484, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3218, file: !485, line: 859, baseType: !305, size: 32, offset: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3147, file: !3148, line: 186, baseType: !516, size: 64, offset: 3392)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3147, file: !3148, line: 186, baseType: !516, size: 64, offset: 3456)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3147, file: !3148, line: 186, baseType: !516, size: 64, offset: 3520)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3147, file: !3148, line: 186, baseType: !516, size: 64, offset: 3584)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3147, file: !3148, line: 187, baseType: !516, size: 64, offset: 3648)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3147, file: !3148, line: 188, baseType: !516, size: 64, offset: 3712)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3147, file: !3148, line: 189, baseType: !3081, size: 192, offset: 3776)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3147, file: !3148, line: 190, baseType: !221, size: 64, offset: 3968)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3147, file: !3148, line: 190, baseType: !221, size: 64, offset: 4032)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3147, file: !3148, line: 190, baseType: !221, size: 64, offset: 4096)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3147, file: !3148, line: 190, baseType: !221, size: 64, offset: 4160)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3147, file: !3148, line: 191, baseType: !221, size: 64, offset: 4224)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3147, file: !3148, line: 191, baseType: !221, size: 64, offset: 4288)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3147, file: !3148, line: 191, baseType: !221, size: 64, offset: 4352)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3147, file: !3148, line: 191, baseType: !221, size: 64, offset: 4416)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3147, file: !3148, line: 192, baseType: !221, size: 64, offset: 4480)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3147, file: !3148, line: 192, baseType: !221, size: 64, offset: 4544)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3147, file: !3148, line: 192, baseType: !221, size: 64, offset: 4608)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3147, file: !3148, line: 192, baseType: !221, size: 64, offset: 4672)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3147, file: !3148, line: 193, baseType: !221, size: 64, offset: 4736)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3147, file: !3148, line: 193, baseType: !221, size: 64, offset: 4800)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3147, file: !3148, line: 194, baseType: !3244, size: 448, offset: 4864)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3245, line: 12, size: 448, elements: !3246)
!3245 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252, !3253}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3244, file: !3245, line: 15, baseType: !516, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3244, file: !3245, line: 17, baseType: !516, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3244, file: !3245, line: 19, baseType: !516, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3244, file: !3245, line: 21, baseType: !516, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3244, file: !3245, line: 29, baseType: !516, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3244, file: !3245, line: 35, baseType: !516, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3244, file: !3245, line: 44, baseType: !516, size: 64, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3147, file: !3148, line: 202, baseType: !518, size: 64, offset: 5312)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3147, file: !3148, line: 213, baseType: !3256, size: 2048, offset: 5376)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3257, size: 2048, elements: !3116)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3258, line: 43, size: 128, elements: !3259)
!3258 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3259 = !{!3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3257, file: !3258, line: 44, baseType: !413, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3257, file: !3258, line: 45, baseType: !413, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3147, file: !3148, line: 216, baseType: !3263, size: 448, offset: 7424)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3148, line: 30, size: 448, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3263, file: !3148, line: 31, baseType: !124, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3263, file: !3148, line: 32, baseType: !220, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3263, file: !3148, line: 33, baseType: !221, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3263, file: !3148, line: 34, baseType: !516, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3263, file: !3148, line: 34, baseType: !516, size: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3263, file: !3148, line: 35, baseType: !221, size: 64, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3263, file: !3148, line: 35, baseType: !221, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3147, file: !3148, line: 219, baseType: !3273, size: 64, offset: 7872)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3148, line: 219, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3147, file: !3148, line: 222, baseType: !7, size: 32, offset: 7936)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3147, file: !3148, line: 223, baseType: !3277, size: 64, offset: 8000)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3148, line: 223, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3147, file: !3148, line: 230, baseType: !883, size: 8, offset: 8064)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3147, file: !3148, line: 231, baseType: !852, size: 16, offset: 8080)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3147, file: !3148, line: 232, baseType: !852, size: 16, offset: 8096)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3147, file: !3148, line: 234, baseType: !1210, size: 64, offset: 8128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3147, file: !3148, line: 237, baseType: !694, size: 256, offset: 8192)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3147, file: !3148, line: 243, baseType: !824, size: 320, offset: 8448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2765, file: !1667, line: 1111, baseType: !3286, size: 64, offset: 15424)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3148, line: 20, size: 16640, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3292}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3287, file: !3148, line: 21, baseType: !305, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3287, file: !3148, line: 22, baseType: !256, size: 32, offset: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3287, file: !3148, line: 23, baseType: !754, size: 192, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3287, file: !3148, line: 24, baseType: !3293, size: 16384, offset: 256)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3294, size: 16384, elements: !371)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !971, line: 51, size: 256, elements: !3295)
!3295 = !{!3296}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3294, file: !971, line: 52, baseType: !3297, size: 256)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !971, line: 37, size: 256, elements: !3298)
!3298 = !{!3299, !3306, !3307, !3313}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3297, file: !971, line: 39, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3301, line: 83, baseType: !3302)
!3301 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3301, line: 82, baseType: !3304)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !124}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3297, file: !971, line: 40, baseType: !221, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3297, file: !971, line: 46, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3301, line: 86, baseType: !3309)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3301, line: 85, baseType: !3311)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{null}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3297, file: !971, line: 48, baseType: !3162, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2765, file: !1667, line: 1112, baseType: !3162, size: 64, offset: 15488)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2765, file: !1667, line: 1113, baseType: !3162, size: 64, offset: 15552)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2765, file: !1667, line: 1115, baseType: !3162, size: 64, offset: 15616)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2765, file: !1667, line: 1116, baseType: !3158, size: 192, offset: 15680)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2765, file: !1667, line: 1117, baseType: !221, size: 64, offset: 15872)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2765, file: !1667, line: 1118, baseType: !411, size: 64, offset: 15936)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2765, file: !1667, line: 1119, baseType: !7, size: 32, offset: 16000)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2765, file: !1667, line: 1121, baseType: !675, size: 64, offset: 16064)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2765, file: !1667, line: 1125, baseType: !3323, size: 64, offset: 16128)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1667, line: 43, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2765, file: !1667, line: 1127, baseType: !449, size: 32, offset: 16192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2765, file: !1667, line: 1128, baseType: !7, size: 32, offset: 16224)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2765, file: !1667, line: 1130, baseType: !3328, size: 128, offset: 16256)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3329, line: 37, size: 128, elements: !3330)
!3329 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3330 = !{!3331, !3332, !3333}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3328, file: !3329, line: 38, baseType: !124, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3328, file: !3329, line: 39, baseType: !261, size: 32, offset: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3328, file: !3329, line: 40, baseType: !3334, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3329, line: 24, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2765, file: !1667, line: 1131, baseType: !3337, size: 256, offset: 16384)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3338, line: 12, size: 256, elements: !3339)
!3338 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3339 = !{!3340, !3341, !3342, !3343}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3337, file: !3338, line: 13, baseType: !366, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3337, file: !3338, line: 14, baseType: !221, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3337, file: !3338, line: 15, baseType: !221, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3337, file: !3338, line: 16, baseType: !883, size: 8, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2765, file: !1667, line: 1134, baseType: !516, size: 64, offset: 16640)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2765, file: !1667, line: 1135, baseType: !516, size: 64, offset: 16704)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2765, file: !1667, line: 1138, baseType: !305, size: 32, offset: 16768)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2765, file: !1667, line: 1141, baseType: !699, size: 32, offset: 16800)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2765, file: !1667, line: 1143, baseType: !3349, size: 64, offset: 16832)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1667, line: 735, size: 64, elements: !3350)
!3350 = !{!3351}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3349, file: !1667, line: 736, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2765, file: !1667, line: 1147, baseType: !2422, size: 128, offset: 16896)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2765, file: !1667, line: 1149, baseType: !2764, size: 64, offset: 17024)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2765, file: !1667, line: 1151, baseType: !3356, size: 64, offset: 17088)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1667, line: 1151, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2765, file: !1667, line: 1188, baseType: !214, size: 64, offset: 17152)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2765, file: !1667, line: 1191, baseType: !3360, size: 64, offset: 17216)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1667, line: 44, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2765, file: !1667, line: 1194, baseType: !3363, size: 64, offset: 17280)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1667, line: 45, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2765, file: !1667, line: 1197, baseType: !3366, size: 64, offset: 17344)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1667, line: 61, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2765, file: !1667, line: 1199, baseType: !3369, size: 64, offset: 17408)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2126, line: 99, size: 128, elements: !3371)
!3371 = !{!3372, !3373, !3374}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3370, file: !2126, line: 100, baseType: !685, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3370, file: !2126, line: 101, baseType: !261, size: 32, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3370, file: !2126, line: 103, baseType: !336, size: 16, offset: 96)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2765, file: !1667, line: 1202, baseType: !3376, size: 64, offset: 17472)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1667, line: 48, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2765, file: !1667, line: 1205, baseType: !221, size: 64, offset: 17536)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2765, file: !1667, line: 1206, baseType: !3380, size: 64, offset: 17600)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !971, line: 14, baseType: !3382)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !971, line: 12, size: 384, elements: !3383)
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, scope: !3382, file: !971, line: 13, baseType: !3385, size: 384)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3382, file: !971, line: 13, size: 384, elements: !3386)
!3386 = !{!3387, !3388, !3389, !3390}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3385, file: !971, line: 13, baseType: !124, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3385, file: !971, line: 13, baseType: !124, size: 32, offset: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3385, file: !971, line: 13, baseType: !124, size: 32, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3385, file: !971, line: 13, baseType: !3391, size: 256, offset: 128)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3392, line: 37, size: 256, elements: !3393)
!3392 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3393 = !{!3394, !3399, !3412, !3418, !3427, !3454, !3459}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3391, file: !3392, line: 42, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 39, size: 64, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3395, file: !3392, line: 40, baseType: !3057, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3395, file: !3392, line: 41, baseType: !455, size: 32, offset: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3391, file: !3392, line: 50, baseType: !3400, size: 192)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 45, size: 192, elements: !3401)
!3401 = !{!3402, !3404, !3405, !3411}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3400, file: !3392, line: 46, baseType: !3403, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !224, line: 95, baseType: !124)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3400, file: !3392, line: 47, baseType: !124, size: 32, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3400, file: !3392, line: 48, baseType: !3406, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3392, line: 11, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3392, line: 8, size: 64, elements: !3408)
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3407, file: !3392, line: 9, baseType: !124, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3407, file: !3392, line: 10, baseType: !214, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3400, file: !3392, line: 49, baseType: !124, size: 32, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3391, file: !3392, line: 57, baseType: !3413, size: 128)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 53, size: 128, elements: !3414)
!3414 = !{!3415, !3416, !3417}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3413, file: !3392, line: 54, baseType: !3057, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3413, file: !3392, line: 55, baseType: !455, size: 32, offset: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3413, file: !3392, line: 56, baseType: !3406, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3391, file: !3392, line: 66, baseType: !3419, size: 256)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 60, size: 256, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3424, !3426}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3419, file: !3392, line: 61, baseType: !3057, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3419, file: !3392, line: 62, baseType: !455, size: 32, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3419, file: !3392, line: 63, baseType: !124, size: 32, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3419, file: !3392, line: 64, baseType: !3425, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !224, line: 94, baseType: !400)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3419, file: !3392, line: 65, baseType: !3425, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3391, file: !3392, line: 105, baseType: !3428, size: 256)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 69, size: 256, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3428, file: !3392, line: 70, baseType: !214, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3392, line: 79, baseType: !3432, size: 192, offset: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3428, file: !3392, line: 79, size: 192, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3443, !3448}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3432, file: !3392, line: 81, baseType: !124, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3432, file: !3392, line: 86, baseType: !852, size: 16)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3432, file: !3392, line: 92, baseType: !3437, size: 192)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3432, file: !3392, line: 88, size: 192, elements: !3438)
!3438 = !{!3439, !3441, !3442}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3437, file: !3392, line: 89, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 64, elements: !2406)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3437, file: !3392, line: 90, baseType: !214, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3437, file: !3392, line: 91, baseType: !214, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3432, file: !3392, line: 97, baseType: !3444, size: 96)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3432, file: !3392, line: 94, size: 96, elements: !3445)
!3445 = !{!3446, !3447}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3444, file: !3392, line: 95, baseType: !3440, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3444, file: !3392, line: 96, baseType: !513, size: 32, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3432, file: !3392, line: 103, baseType: !3449, size: 128)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3432, file: !3392, line: 99, size: 128, elements: !3450)
!3450 = !{!3451, !3452, !3453}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3449, file: !3392, line: 100, baseType: !221, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3449, file: !3392, line: 101, baseType: !513, size: 32, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3449, file: !3392, line: 102, baseType: !513, size: 32, offset: 96)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3391, file: !3392, line: 111, baseType: !3455, size: 128)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 108, size: 128, elements: !3456)
!3456 = !{!3457, !3458}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3455, file: !3392, line: 109, baseType: !220, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3455, file: !3392, line: 110, baseType: !124, size: 32, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3391, file: !3392, line: 118, baseType: !3460, size: 128)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 114, size: 128, elements: !3461)
!3461 = !{!3462, !3463, !3464}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3460, file: !3392, line: 115, baseType: !214, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3460, file: !3392, line: 116, baseType: !124, size: 32, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3460, file: !3392, line: 117, baseType: !7, size: 32, offset: 96)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2765, file: !1667, line: 1208, baseType: !3244, size: 448, offset: 17664)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2765, file: !1667, line: 1215, baseType: !516, size: 64, offset: 18112)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2765, file: !1667, line: 1217, baseType: !516, size: 64, offset: 18176)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2765, file: !1667, line: 1219, baseType: !516, size: 64, offset: 18240)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2765, file: !1667, line: 1223, baseType: !3470, size: 64, offset: 18304)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3471, line: 99, baseType: !3472)
!3471 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3471, line: 99, size: 64, elements: !3473)
!3473 = !{!3474}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3472, file: !3471, line: 99, baseType: !2927, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2765, file: !1667, line: 1225, baseType: !484, size: 32, offset: 18368)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2765, file: !1667, line: 1226, baseType: !124, size: 32, offset: 18400)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2765, file: !1667, line: 1227, baseType: !124, size: 32, offset: 18432)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2765, file: !1667, line: 1231, baseType: !3479, size: 64, offset: 18496)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1667, line: 1231, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2765, file: !1667, line: 1233, baseType: !279, size: 128, offset: 18560)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2765, file: !1667, line: 1240, baseType: !3483, size: 64, offset: 18688)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1667, line: 62, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2765, file: !1667, line: 1242, baseType: !3486, size: 64, offset: 18752)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1667, line: 1242, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2765, file: !1667, line: 1244, baseType: !279, size: 128, offset: 18816)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2765, file: !1667, line: 1245, baseType: !3490, size: 64, offset: 18944)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1667, line: 51, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2765, file: !1667, line: 1246, baseType: !694, size: 256, offset: 19008)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2765, file: !1667, line: 1247, baseType: !7, size: 32, offset: 19264)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2765, file: !1667, line: 1250, baseType: !3495, size: 64, offset: 19328)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1667, line: 57, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2765, file: !1667, line: 1251, baseType: !694, size: 256, offset: 19392)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2765, file: !1667, line: 1252, baseType: !279, size: 128, offset: 19648)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2765, file: !1667, line: 1259, baseType: !1456, size: 64, offset: 19776)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2765, file: !1667, line: 1260, baseType: !852, size: 16, offset: 19840)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2765, file: !1667, line: 1261, baseType: !852, size: 16, offset: 19856)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2765, file: !1667, line: 1314, baseType: !3503, size: 64, offset: 19904)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3505, line: 62, size: 256, align: 256, elements: !3506)
!3505 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3504, file: !3505, line: 75, baseType: !513, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3504, file: !3505, line: 90, baseType: !513, size: 32, offset: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3504, file: !3505, line: 112, baseType: !517, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3504, file: !3505, line: 132, baseType: !513, size: 32, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3504, file: !3505, line: 140, baseType: !513, size: 32, offset: 160)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3504, file: !3505, line: 149, baseType: !513, size: 32, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3504, file: !3505, line: 154, baseType: !3514, offset: 224)
!3514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !656)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2765, file: !1667, line: 1315, baseType: !512, size: 32, offset: 19968)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2765, file: !1667, line: 1316, baseType: !512, size: 32, offset: 20000)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2765, file: !1667, line: 1321, baseType: !221, size: 64, offset: 20032)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2765, file: !1667, line: 1325, baseType: !124, size: 32, offset: 20096)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2765, file: !1667, line: 1326, baseType: !124, size: 32, offset: 20128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2765, file: !1667, line: 1327, baseType: !124, size: 32, offset: 20160)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2765, file: !1667, line: 1328, baseType: !124, size: 32, offset: 20192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2765, file: !1667, line: 1329, baseType: !672, size: 128, align: 64, offset: 20224)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2765, file: !1667, line: 1332, baseType: !3524, size: 128, offset: 20352)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3525, line: 51, size: 128, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3526 = !{!3527, !3532, !3533}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3524, file: !3525, line: 60, baseType: !3528, size: 64)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3529, line: 7, size: 64, elements: !3530)
!3529 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3530 = !{!3531}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3528, file: !3529, line: 12, baseType: !2924, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3524, file: !3525, line: 63, baseType: !883, size: 8, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3524, file: !3525, line: 70, baseType: !883, size: 8, offset: 72)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2765, file: !1667, line: 1335, baseType: !1665, size: 64, offset: 20480)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2765, file: !1667, line: 1337, baseType: !3536, size: 128, offset: 20544)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3525, line: 39, size: 128, elements: !3537)
!3537 = !{!3538, !3539, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3536, file: !3525, line: 40, baseType: !1183, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3536, file: !3525, line: 42, baseType: !513, size: 32, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3536, file: !3525, line: 43, baseType: !513, size: 32, offset: 96)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2765, file: !1667, line: 1340, baseType: !3542, size: 64, offset: 20672)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1667, line: 69, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2765, file: !1667, line: 1351, baseType: !124, size: 32, offset: 20736)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2765, file: !1667, line: 1352, baseType: !124, size: 32, offset: 20768)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2765, file: !1667, line: 1354, baseType: !221, size: 64, offset: 20800)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2765, file: !1667, line: 1364, baseType: !516, size: 64, offset: 20864)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2765, file: !1667, line: 1365, baseType: !516, size: 64, offset: 20928)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2765, file: !1667, line: 1412, baseType: !221, size: 64, offset: 20992)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2765, file: !1667, line: 1453, baseType: !2121, size: 64, offset: 21056)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2765, file: !1667, line: 1457, baseType: !3552, size: 64, offset: 21120)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !175, line: 61, size: 576, elements: !3554)
!3554 = !{!3555, !3556, !3575, !3578, !3579, !3612, !3622}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3553, file: !175, line: 62, baseType: !174, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, scope: !3553, file: !175, line: 64, baseType: !3557, size: 192, offset: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3553, file: !175, line: 64, size: 192, elements: !3558)
!3558 = !{!3559, !3570}
!3559 = !DIDerivedType(tag: DW_TAG_member, scope: !3557, file: !175, line: 65, baseType: !3560, size: 192)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3557, file: !175, line: 65, size: 192, elements: !3561)
!3561 = !{!3562, !3569}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3560, file: !175, line: 66, baseType: !3563, size: 128)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3564, line: 50, size: 128, elements: !3565)
!3564 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3565 = !{!3566, !3567, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3563, file: !3564, line: 52, baseType: !221, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3563, file: !3564, line: 54, baseType: !7, size: 32, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3563, file: !3564, line: 55, baseType: !7, size: 32, offset: 96)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3560, file: !175, line: 67, baseType: !221, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, scope: !3557, file: !175, line: 70, baseType: !3571, size: 192)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3557, file: !175, line: 70, size: 192, elements: !3572)
!3572 = !{!3573, !3574}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3571, file: !175, line: 71, baseType: !672, size: 128, align: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3571, file: !175, line: 72, baseType: !221, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3553, file: !175, line: 76, baseType: !3576, size: 64, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !175, line: 76, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3553, file: !175, line: 77, baseType: !221, size: 64, offset: 320)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3553, file: !175, line: 79, baseType: !3580, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3564, line: 25, size: 256, elements: !3582)
!3582 = !{!3583, !3589, !3593}
!3583 = !DIDerivedType(tag: DW_TAG_member, scope: !3581, file: !3564, line: 26, baseType: !3584, size: 128)
!3584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3581, file: !3564, line: 26, size: 128, elements: !3585)
!3585 = !{!3586, !3588}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3584, file: !3564, line: 27, baseType: !3587, size: 128)
!3587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 128, elements: !3116)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3584, file: !3564, line: 28, baseType: !3587, size: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3581, file: !3564, line: 31, baseType: !3590, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3592)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3564, line: 23, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, scope: !3581, file: !3564, line: 33, baseType: !3594, size: 64, offset: 192)
!3594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3581, file: !3564, line: 33, size: 64, elements: !3595)
!3595 = !{!3596, !3602, !3607}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3594, file: !3564, line: 38, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3594, file: !3564, line: 34, size: 64, elements: !3598)
!3598 = !{!3599, !3600, !3601}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3597, file: !3564, line: 35, baseType: !809, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3597, file: !3564, line: 36, baseType: !266, size: 8, offset: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3597, file: !3564, line: 37, baseType: !266, size: 8, offset: 40)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3594, file: !3564, line: 42, baseType: !3603, size: 16)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3594, file: !3564, line: 39, size: 16, elements: !3604)
!3604 = !{!3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3603, file: !3564, line: 40, baseType: !266, size: 8)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3603, file: !3564, line: 41, baseType: !266, size: 8, offset: 8)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3594, file: !3564, line: 46, baseType: !3608, size: 16)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3594, file: !3564, line: 43, size: 16, elements: !3609)
!3609 = !{!3610, !3611}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3608, file: !3564, line: 44, baseType: !266, size: 8)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3608, file: !3564, line: 45, baseType: !266, size: 8, offset: 8)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3553, file: !175, line: 81, baseType: !3613, size: 64, offset: 448)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !175, line: 85, size: 384, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3614, file: !175, line: 86, baseType: !3576, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3614, file: !175, line: 87, baseType: !221, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3614, file: !175, line: 88, baseType: !221, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3614, file: !175, line: 89, baseType: !221, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3614, file: !175, line: 90, baseType: !883, size: 8, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3614, file: !175, line: 92, baseType: !3613, size: 64, offset: 320)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3553, file: !175, line: 82, baseType: !7, size: 32, offset: 512)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2765, file: !1667, line: 1463, baseType: !3624, offset: 21184)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1667, line: 739, elements: !1231)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2765, file: !1667, line: 1470, baseType: !672, size: 128, align: 64, offset: 21184)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2765, file: !1667, line: 1471, baseType: !256, size: 32, offset: 21312)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2765, file: !1667, line: 1472, baseType: !124, size: 32, offset: 21344)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2765, file: !1667, line: 1474, baseType: !2764, size: 64, offset: 21376)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2765, file: !1667, line: 1475, baseType: !2332, size: 320, offset: 21440)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2765, file: !1667, line: 1478, baseType: !3631, size: 64, offset: 21760)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1667, line: 1478, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2765, file: !1667, line: 1482, baseType: !256, size: 32, offset: 21824)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2765, file: !1667, line: 1489, baseType: !214, size: 64, offset: 21888)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2765, file: !1667, line: 1504, baseType: !214, size: 64, offset: 21952)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2765, file: !1667, line: 1505, baseType: !517, size: 64, offset: 22016)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2765, file: !1667, line: 1506, baseType: !516, size: 64, offset: 22080)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2765, file: !1667, line: 1507, baseType: !517, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2765, file: !1667, line: 1508, baseType: !517, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2765, file: !1667, line: 1509, baseType: !517, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2765, file: !1667, line: 1510, baseType: !672, size: 128, align: 64, offset: 22208)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2765, file: !1667, line: 1511, baseType: !124, size: 32, offset: 22336)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2765, file: !1667, line: 1515, baseType: !3644, size: 64, offset: 22400)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !667, line: 56, size: 64, elements: !3645)
!3645 = !{!3646}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3644, file: !667, line: 57, baseType: !670, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2765, file: !1667, line: 1518, baseType: !3644, size: 64, offset: 22464)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2765, file: !1667, line: 1528, baseType: !672, size: 128, align: 64, offset: 22528)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2765, file: !1667, line: 1552, baseType: !3650, size: 35328, offset: 23040)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3651, line: 430, size: 35328, elements: !3652)
!3651 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3652 = !{!3653, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3682, !3683, !3684, !3685, !3686, !3687, !3690, !3691, !3692, !3693}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3650, file: !3651, line: 432, baseType: !3654, size: 192)
!3654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3655, size: 192, elements: !367)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3656, line: 16, size: 64, elements: !3657)
!3656 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3657 = !{!3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3655, file: !3656, line: 17, baseType: !334, size: 16)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3655, file: !3656, line: 18, baseType: !334, size: 16, offset: 16)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3655, file: !3656, line: 19, baseType: !334, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3655, file: !3656, line: 19, baseType: !334, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3655, file: !3656, line: 19, baseType: !334, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3655, file: !3656, line: 19, baseType: !334, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3655, file: !3656, line: 19, baseType: !334, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3655, file: !3656, line: 20, baseType: !334, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3655, file: !3656, line: 20, baseType: !334, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3655, file: !3656, line: 20, baseType: !334, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3655, file: !3656, line: 20, baseType: !334, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3655, file: !3656, line: 20, baseType: !334, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3655, file: !3656, line: 20, baseType: !334, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3650, file: !3651, line: 436, baseType: !221, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3650, file: !3651, line: 440, baseType: !336, size: 16, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3650, file: !3651, line: 441, baseType: !336, size: 16, offset: 272)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3650, file: !3651, line: 442, baseType: !336, size: 16, offset: 288)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3650, file: !3651, line: 443, baseType: !336, size: 16, offset: 304)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3650, file: !3651, line: 447, baseType: !221, size: 64, offset: 320)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3650, file: !3651, line: 448, baseType: !221, size: 64, offset: 384)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3650, file: !3651, line: 459, baseType: !3679, size: 256, offset: 448)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3680, size: 256, elements: !750)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3651, line: 428, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3650, file: !3651, line: 461, baseType: !221, size: 64, offset: 704)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3650, file: !3651, line: 463, baseType: !221, size: 64, offset: 768)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3650, file: !3651, line: 465, baseType: !221, size: 64, offset: 832)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3650, file: !3651, line: 466, baseType: !221, size: 64, offset: 896)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3650, file: !3651, line: 467, baseType: !221, size: 64, offset: 960)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3650, file: !3651, line: 473, baseType: !3688, size: 64, offset: 1024)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3651, line: 10, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3650, file: !3651, line: 480, baseType: !221, size: 64, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3650, file: !3651, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3650, file: !3651, line: 491, baseType: !512, size: 32, offset: 1184)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3650, file: !3651, line: 501, baseType: !3694, size: 33792, offset: 1536)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3695, line: 448, size: 33792, elements: !3696)
!3695 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3696 = !{!3697, !3698, !3699, !3861, !3862, !3868, !3869}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3694, file: !3695, line: 461, baseType: !7, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3694, file: !3695, line: 468, baseType: !221, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3694, file: !3695, line: 476, baseType: !3700, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3695, line: 356, size: 33280, align: 512, elements: !3702)
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3701, file: !3695, line: 358, baseType: !7, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3701, file: !3695, line: 361, baseType: !7, size: 32, offset: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3701, file: !3695, line: 364, baseType: !516, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3701, file: !3695, line: 367, baseType: !516, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3701, file: !3695, line: 370, baseType: !516, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3701, file: !3695, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3701, file: !3695, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3701, file: !3695, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3701, file: !3695, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3701, file: !3695, line: 397, baseType: !3713, size: 32768, offset: 512)
!3713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3695, line: 348, size: 32768, elements: !3714)
!3714 = !{!3715, !3730, !3767, !3844, !3857}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3713, file: !3695, line: 349, baseType: !3716, size: 896)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3695, line: 12, size: 896, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3729}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3716, file: !3695, line: 13, baseType: !512, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3716, file: !3695, line: 14, baseType: !512, size: 32, offset: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3716, file: !3695, line: 15, baseType: !512, size: 32, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3716, file: !3695, line: 16, baseType: !512, size: 32, offset: 96)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3716, file: !3695, line: 17, baseType: !512, size: 32, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3716, file: !3695, line: 18, baseType: !512, size: 32, offset: 160)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3716, file: !3695, line: 19, baseType: !512, size: 32, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3716, file: !3695, line: 22, baseType: !3726, size: 640, offset: 224)
!3726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 640, elements: !3727)
!3727 = !{!3728}
!3728 = !DISubrange(count: 20)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3716, file: !3695, line: 25, baseType: !512, size: 32, offset: 864)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3713, file: !3695, line: 350, baseType: !3731, size: 4096, align: 128)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3695, line: 34, size: 4096, align: 128, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3752, !3753, !3754, !3756, !3758, !3762}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3731, file: !3695, line: 35, baseType: !334, size: 16)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3731, file: !3695, line: 36, baseType: !334, size: 16, offset: 16)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3731, file: !3695, line: 37, baseType: !334, size: 16, offset: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3731, file: !3695, line: 38, baseType: !334, size: 16, offset: 48)
!3737 = !DIDerivedType(tag: DW_TAG_member, scope: !3731, file: !3695, line: 39, baseType: !3738, size: 128, offset: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !3695, line: 39, size: 128, elements: !3739)
!3739 = !{!3740, !3745}
!3740 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !3695, line: 40, baseType: !3741, size: 128)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3738, file: !3695, line: 40, size: 128, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3741, file: !3695, line: 41, baseType: !516, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3741, file: !3695, line: 42, baseType: !516, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !3695, line: 44, baseType: !3746, size: 128)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3738, file: !3695, line: 44, size: 128, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3746, file: !3695, line: 45, baseType: !512, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3746, file: !3695, line: 46, baseType: !512, size: 32, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3746, file: !3695, line: 47, baseType: !512, size: 32, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3746, file: !3695, line: 48, baseType: !512, size: 32, offset: 96)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3731, file: !3695, line: 51, baseType: !512, size: 32, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3731, file: !3695, line: 52, baseType: !512, size: 32, offset: 224)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3731, file: !3695, line: 55, baseType: !3755, size: 1024, offset: 256)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 1024, elements: !525)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3731, file: !3695, line: 58, baseType: !3757, size: 2048, offset: 1280)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 2048, elements: !371)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3731, file: !3695, line: 60, baseType: !3759, size: 384, offset: 3328)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 384, elements: !3760)
!3760 = !{!3761}
!3761 = !DISubrange(count: 12)
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !3731, file: !3695, line: 62, baseType: !3763, size: 384, offset: 3712)
!3763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !3695, line: 62, size: 384, elements: !3764)
!3764 = !{!3765, !3766}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3763, file: !3695, line: 63, baseType: !3759, size: 384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3763, file: !3695, line: 64, baseType: !3759, size: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3713, file: !3695, line: 351, baseType: !3768, size: 1088)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3695, line: 79, size: 1088, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3843}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3768, file: !3695, line: 80, baseType: !512, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3768, file: !3695, line: 81, baseType: !512, size: 32, offset: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3768, file: !3695, line: 82, baseType: !512, size: 32, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3768, file: !3695, line: 83, baseType: !512, size: 32, offset: 96)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3768, file: !3695, line: 84, baseType: !512, size: 32, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3768, file: !3695, line: 85, baseType: !512, size: 32, offset: 160)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3768, file: !3695, line: 86, baseType: !512, size: 32, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3768, file: !3695, line: 88, baseType: !3726, size: 640, offset: 224)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3768, file: !3695, line: 89, baseType: !266, size: 8, offset: 864)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3768, file: !3695, line: 90, baseType: !266, size: 8, offset: 872)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3768, file: !3695, line: 91, baseType: !266, size: 8, offset: 880)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3768, file: !3695, line: 92, baseType: !266, size: 8, offset: 888)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3768, file: !3695, line: 93, baseType: !266, size: 8, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3768, file: !3695, line: 94, baseType: !266, size: 8, offset: 904)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3768, file: !3695, line: 95, baseType: !3785, size: 64, offset: 960)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3787, line: 11, size: 128, elements: !3788)
!3787 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3788 = !{!3789, !3790}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3786, file: !3787, line: 12, baseType: !220, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3786, file: !3787, line: 13, baseType: !3791, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3793, line: 103, size: 1344, elements: !3794)
!3793 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3823, !3824, !3825}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3792, file: !3793, line: 109, baseType: !221, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3792, file: !3793, line: 110, baseType: !221, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3792, file: !3793, line: 111, baseType: !221, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3792, file: !3793, line: 112, baseType: !221, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3792, file: !3793, line: 113, baseType: !221, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3792, file: !3793, line: 114, baseType: !221, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3792, file: !3793, line: 117, baseType: !221, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3792, file: !3793, line: 118, baseType: !221, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3792, file: !3793, line: 119, baseType: !221, size: 64, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3792, file: !3793, line: 120, baseType: !221, size: 64, offset: 576)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3792, file: !3793, line: 121, baseType: !221, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3792, file: !3793, line: 122, baseType: !221, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3792, file: !3793, line: 123, baseType: !221, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3792, file: !3793, line: 124, baseType: !221, size: 64, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3792, file: !3793, line: 125, baseType: !221, size: 64, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3792, file: !3793, line: 139, baseType: !221, size: 64, offset: 960)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3792, file: !3793, line: 142, baseType: !221, size: 64, offset: 1024)
!3812 = !DIDerivedType(tag: DW_TAG_member, scope: !3792, file: !3793, line: 144, baseType: !3813, size: 64, offset: 1088)
!3813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3792, file: !3793, line: 144, size: 64, elements: !3814)
!3814 = !{!3815, !3816, !3817}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3813, file: !3793, line: 146, baseType: !334, size: 16)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3813, file: !3793, line: 148, baseType: !516, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3813, file: !3793, line: 150, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3793, line: 59, size: 64, elements: !3819)
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3818, file: !3793, line: 61, baseType: !516, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3818, file: !3793, line: 63, baseType: !516, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3818, file: !3793, line: 65, baseType: !516, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3792, file: !3793, line: 153, baseType: !221, size: 64, offset: 1152)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3792, file: !3793, line: 154, baseType: !221, size: 64, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3792, file: !3793, line: 156, baseType: !3826, size: 64, offset: 1280)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3792, file: !3793, line: 156, size: 64, elements: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3826, file: !3793, line: 158, baseType: !334, size: 16)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3826, file: !3793, line: 160, baseType: !516, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3826, file: !3793, line: 162, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3793, line: 69, size: 64, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3831, file: !3793, line: 71, baseType: !516, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3831, file: !3793, line: 73, baseType: !516, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3831, file: !3793, line: 75, baseType: !516, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3831, file: !3793, line: 77, baseType: !516, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3831, file: !3793, line: 80, baseType: !516, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3831, file: !3793, line: 83, baseType: !516, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3831, file: !3793, line: 86, baseType: !516, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3831, file: !3793, line: 88, baseType: !516, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3831, file: !3793, line: 93, baseType: !516, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3831, file: !3793, line: 100, baseType: !516, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3768, file: !3695, line: 96, baseType: !512, size: 32, offset: 1024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3713, file: !3695, line: 352, baseType: !3845, size: 4608, align: 512)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3695, line: 333, size: 4608, align: 512, elements: !3846)
!3846 = !{!3847, !3848, !3855}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3845, file: !3695, line: 334, baseType: !3731, size: 4096, align: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3845, file: !3695, line: 335, baseType: !3849, size: 512, offset: 4096)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3695, line: 312, size: 512, elements: !3850)
!3850 = !{!3851, !3852, !3853}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3849, file: !3695, line: 313, baseType: !516, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3849, file: !3695, line: 314, baseType: !516, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3849, file: !3695, line: 315, baseType: !3854, size: 384, offset: 128)
!3854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 384, elements: !870)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3845, file: !3695, line: 336, baseType: !3856, offset: 4608)
!3856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, elements: !656)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3713, file: !3695, line: 353, baseType: !3858, size: 32768)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 32768, elements: !3859)
!3859 = !{!3860}
!3860 = !DISubrange(count: 4096)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3694, file: !3695, line: 484, baseType: !3700, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3694, file: !3695, line: 491, baseType: !3863, size: 128, offset: 256)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3695, line: 404, size: 128, elements: !3864)
!3864 = !{!3865, !3866, !3867}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3863, file: !3695, line: 424, baseType: !516, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3863, file: !3695, line: 432, baseType: !7, size: 32, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3863, file: !3695, line: 440, baseType: !7, size: 32, offset: 96)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3694, file: !3695, line: 498, baseType: !3863, size: 128, offset: 384)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3694, file: !3695, line: 508, baseType: !3701, size: 33280, align: 512, offset: 512)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2746, file: !2747, line: 16, baseType: !754, size: 192, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2746, file: !2747, line: 17, baseType: !261, size: 32, offset: 704)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !595, file: !87, line: 1240, baseType: !214, size: 64, offset: 6912)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !595, file: !87, line: 1243, baseType: !512, size: 32, offset: 6976)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !595, file: !87, line: 1245, baseType: !840, size: 64, offset: 7040)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !595, file: !87, line: 1246, baseType: !840, size: 64, offset: 7104)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !595, file: !87, line: 1248, baseType: !513, size: 32, offset: 7168)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !595, file: !87, line: 1249, baseType: !3878, size: 64, offset: 7232)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !87, line: 634, flags: DIFlagFwdDecl)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !595, file: !87, line: 1252, baseType: !3881, size: 256, offset: 7296)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !525)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !595, file: !87, line: 1253, baseType: !3883, size: 128, offset: 7552)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3884, line: 21, baseType: !3885)
!3884 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3884, line: 19, size: 128, elements: !3886)
!3886 = !{!3887}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3885, file: !3884, line: 20, baseType: !3888, size: 128)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 128, elements: !3116)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !595, file: !87, line: 1255, baseType: !7, size: 32, offset: 7680)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !595, file: !87, line: 1261, baseType: !694, size: 256, offset: 7744)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !595, file: !87, line: 1267, baseType: !240, size: 64, offset: 8000)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !595, file: !87, line: 1269, baseType: !541, size: 64, offset: 8064)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !595, file: !87, line: 1271, baseType: !3894, size: 448, offset: 8128)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1954, line: 63, size: 448, elements: !3895)
!3895 = !{!3896, !3901, !3902, !3903, !3904, !3905, !3906}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3894, file: !1954, line: 64, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!221, !3900, !1952}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3894, file: !1954, line: 66, baseType: !3897, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3894, file: !1954, line: 69, baseType: !220, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3894, file: !1954, line: 70, baseType: !124, size: 32, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3894, file: !1954, line: 71, baseType: !7, size: 32, offset: 224)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3894, file: !1954, line: 74, baseType: !279, size: 128, offset: 256)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3894, file: !1954, line: 85, baseType: !3907, size: 64, offset: 384)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !595, file: !87, line: 1274, baseType: !685, size: 64, offset: 8576)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !595, file: !87, line: 1280, baseType: !685, size: 64, offset: 8640)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !595, file: !87, line: 1283, baseType: !124, size: 32, offset: 8704)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !595, file: !87, line: 1286, baseType: !1754, size: 32, offset: 8736)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !595, file: !87, line: 1289, baseType: !2680, size: 64, offset: 8768)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !595, file: !87, line: 1290, baseType: !741, size: 64, offset: 8832)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !595, file: !87, line: 1297, baseType: !966, size: 64, offset: 8896)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !595, file: !87, line: 1304, baseType: !3916, size: 64, offset: 8960)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3917, line: 49, size: 64, elements: !3918)
!3917 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3918 = !{!3919}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3916, file: !3917, line: 50, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3917, line: 41, size: 512, align: 512, elements: !3922)
!3922 = !{!3923, !3924, !3929}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3921, file: !3917, line: 43, baseType: !305, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3921, file: !3917, line: 45, baseType: !3925, size: 192, offset: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3917, line: 29, size: 192, elements: !3926)
!3926 = !{!3927, !3928}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3925, file: !3917, line: 30, baseType: !279, size: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3925, file: !3917, line: 32, baseType: !220, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3921, file: !3917, line: 46, baseType: !220, size: 64, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !595, file: !87, line: 1305, baseType: !3916, size: 64, offset: 9024)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !595, file: !87, line: 1306, baseType: !672, size: 128, align: 64, offset: 9088)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !595, file: !87, line: 1307, baseType: !1365, size: 256, offset: 9216)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !595, file: !87, line: 1309, baseType: !694, size: 256, offset: 9472)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !595, file: !87, line: 1314, baseType: !124, size: 32, offset: 9728)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !595, file: !87, line: 1317, baseType: !305, size: 32, align: 512, offset: 10240)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !595, file: !87, line: 1318, baseType: !279, size: 128, offset: 10304)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !595, file: !87, line: 1320, baseType: !305, size: 32, offset: 10432)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !595, file: !87, line: 1321, baseType: !279, size: 128, offset: 10496)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !589, file: !590, line: 73, baseType: !124, size: 32, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !589, file: !590, line: 74, baseType: !3941, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !791, line: 42, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !543, file: !480, line: 141, baseType: !3945, size: 64, offset: 704)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!124, !2014, !883}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !543, file: !480, line: 142, baseType: !3949, size: 64, offset: 768)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!478, !478, !3952}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !479, file: !480, line: 96, baseType: !594, size: 64, offset: 832)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !479, file: !480, line: 97, baseType: !221, size: 64, offset: 896)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !479, file: !480, line: 98, baseType: !214, size: 64, offset: 960)
!3957 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !480, line: 100, baseType: !3958, size: 128, offset: 1024)
!3958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 100, size: 128, elements: !3959)
!3959 = !{!3960, !3961}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3958, file: !480, line: 101, baseType: !279, size: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3958, file: !480, line: 102, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !479, file: !480, line: 104, baseType: !279, size: 128, offset: 1152)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !479, file: !480, line: 105, baseType: !279, size: 128, offset: 1280)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !479, file: !480, line: 113, baseType: !3966, size: 128, offset: 1408)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 109, size: 128, elements: !3967)
!3967 = !{!3968, !3969, !3970}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3966, file: !480, line: 110, baseType: !745, size: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3966, file: !480, line: 111, baseType: !494, size: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3966, file: !480, line: 112, baseType: !672, size: 128, align: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !472, file: !87, line: 1968, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!240, !478, !443, !3975}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3977, line: 10, size: 128, elements: !3978)
!3977 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3978 = !{!3979, !3980}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3976, file: !3977, line: 11, baseType: !2585, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3976, file: !3977, line: 12, baseType: !214, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !472, file: !87, line: 1969, baseType: !3982, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!124, !3941, !443, !124}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !472, file: !87, line: 1970, baseType: !3986, size: 64, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!466, !443, !124, !883}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !472, file: !87, line: 1972, baseType: !3990, size: 64, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!124, !478, !366, !124}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !472, file: !87, line: 1974, baseType: !3994, size: 64, offset: 320)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!124, !3941, !443, !478, !406, !883}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !472, file: !87, line: 1976, baseType: !3998, size: 64, offset: 384)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!124, !478, !443, !478}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !472, file: !87, line: 1977, baseType: !4002, size: 64, offset: 448)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!124, !443, !478}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !472, file: !87, line: 1978, baseType: !4006, size: 64, offset: 512)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!124, !3941, !443, !478, !240}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !472, file: !87, line: 1980, baseType: !4010, size: 64, offset: 576)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!124, !3941, !443, !478, !406}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !472, file: !87, line: 1982, baseType: !4002, size: 64, offset: 640)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !472, file: !87, line: 1983, baseType: !4015, size: 64, offset: 704)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!124, !3941, !443, !478, !406, !599}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !472, file: !87, line: 1985, baseType: !4019, size: 64, offset: 768)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!124, !3941, !443, !478, !443, !478, !7}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !472, file: !87, line: 1987, baseType: !4023, size: 64, offset: 832)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!124, !3941, !478, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !87, line: 226, size: 640, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4041, !4050, !4051, !4056, !4057, !4058}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4027, file: !87, line: 227, baseType: !7, size: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4027, file: !87, line: 228, baseType: !406, size: 16, offset: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !87, line: 241, baseType: !4032, size: 32, offset: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4027, file: !87, line: 241, size: 32, elements: !4033)
!4033 = !{!4034, !4035}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4032, file: !87, line: 242, baseType: !449, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4032, file: !87, line: 243, baseType: !4036, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4037, line: 16, baseType: !4038)
!4037 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4037, line: 14, size: 32, elements: !4039)
!4039 = !{!4040}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4038, file: !4037, line: 15, baseType: !454, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !87, line: 245, baseType: !4042, size: 32, offset: 96)
!4042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4027, file: !87, line: 245, size: 32, elements: !4043)
!4043 = !{!4044, !4045}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4042, file: !87, line: 246, baseType: !458, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4042, file: !87, line: 247, baseType: !4046, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4037, line: 20, baseType: !4047)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4037, line: 18, size: 32, elements: !4048)
!4048 = !{!4049}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4047, file: !4037, line: 19, baseType: !462, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4027, file: !87, line: 249, baseType: !222, size: 64, offset: 128)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4027, file: !87, line: 250, baseType: !4052, size: 128, offset: 192)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !841, line: 13, size: 128, elements: !4053)
!4053 = !{!4054, !4055}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4052, file: !841, line: 14, baseType: !840, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4052, file: !841, line: 15, baseType: !220, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4027, file: !87, line: 251, baseType: !4052, size: 128, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4027, file: !87, line: 252, baseType: !4052, size: 128, offset: 448)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4027, file: !87, line: 259, baseType: !659, size: 64, offset: 576)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !472, file: !87, line: 1988, baseType: !4060, size: 64, offset: 896)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!124, !3941, !2014, !4063, !512, !7}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4065, line: 22, size: 1280, elements: !4066)
!4065 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4066 = !{!4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4064, file: !4065, line: 23, baseType: !512, size: 32)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4064, file: !4065, line: 24, baseType: !406, size: 16, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4064, file: !4065, line: 25, baseType: !7, size: 32, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4064, file: !4065, line: 26, baseType: !848, size: 32, offset: 96)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4064, file: !4065, line: 27, baseType: !516, size: 64, offset: 128)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4064, file: !4065, line: 28, baseType: !516, size: 64, offset: 192)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4064, file: !4065, line: 41, baseType: !516, size: 64, offset: 256)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4064, file: !4065, line: 42, baseType: !599, size: 32, offset: 320)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4064, file: !4065, line: 43, baseType: !599, size: 32, offset: 352)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4064, file: !4065, line: 44, baseType: !449, size: 32, offset: 384)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4064, file: !4065, line: 45, baseType: !458, size: 32, offset: 416)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4064, file: !4065, line: 46, baseType: !222, size: 64, offset: 448)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4064, file: !4065, line: 47, baseType: !4052, size: 128, offset: 512)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4064, file: !4065, line: 48, baseType: !4052, size: 128, offset: 640)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4064, file: !4065, line: 49, baseType: !4052, size: 128, offset: 768)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4064, file: !4065, line: 50, baseType: !4052, size: 128, offset: 896)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4064, file: !4065, line: 51, baseType: !516, size: 64, offset: 1024)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4064, file: !4065, line: 52, baseType: !516, size: 64, offset: 1088)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4064, file: !4065, line: 53, baseType: !512, size: 32, offset: 1152)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4064, file: !4065, line: 54, baseType: !512, size: 32, offset: 1184)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4064, file: !4065, line: 55, baseType: !516, size: 64, offset: 1216)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !472, file: !87, line: 1990, baseType: !4089, size: 64, offset: 960)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!398, !478, !366, !411}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !472, file: !87, line: 1991, baseType: !4093, size: 64, offset: 1024)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!124, !443, !4096, !516, !516}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !87, line: 55, flags: DIFlagFwdDecl)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !472, file: !87, line: 1993, baseType: !4099, size: 64, offset: 1088)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!124, !443, !124}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !472, file: !87, line: 1994, baseType: !4103, size: 64, offset: 1152)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!124, !443, !478, !659, !7, !406}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !472, file: !87, line: 1997, baseType: !4107, size: 64, offset: 1216)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!124, !3941, !443, !659, !406}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !472, file: !87, line: 1999, baseType: !4111, size: 64, offset: 1280)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!466, !3941, !478, !124}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !472, file: !87, line: 2001, baseType: !4115, size: 64, offset: 1344)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!124, !3941, !478, !466, !124}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !472, file: !87, line: 2003, baseType: !4119, size: 64, offset: 1408)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!124, !3941, !478, !4122}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !87, line: 76, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !472, file: !87, line: 2005, baseType: !4125, size: 64, offset: 1472)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!124, !478, !4122}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !472, file: !87, line: 2006, baseType: !4129, size: 64, offset: 1536)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!4132, !443}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !87, line: 3192, size: 192, elements: !4134)
!4134 = !{!4135, !4142}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4133, file: !87, line: 3193, baseType: !4136, size: 128)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !4137, line: 296, size: 128, elements: !4138)
!4137 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!4138 = !{!4139, !4140, !4141}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !4136, file: !4137, line: 297, baseType: !305, size: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !4136, file: !4137, line: 299, baseType: !212, size: 32, offset: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !4136, file: !4137, line: 300, baseType: !214, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4133, file: !87, line: 3194, baseType: !512, size: 32, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !444, file: !87, line: 655, baseType: !594, size: 64, offset: 448)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !444, file: !87, line: 656, baseType: !439, size: 64, offset: 512)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !444, file: !87, line: 659, baseType: !214, size: 64, offset: 576)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !444, file: !87, line: 663, baseType: !221, size: 64, offset: 640)
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !87, line: 671, baseType: !4148, size: 32, offset: 704)
!4148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !87, line: 671, size: 32, elements: !4149)
!4149 = !{!4150, !4152}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4148, file: !87, line: 672, baseType: !4151, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4148, file: !87, line: 673, baseType: !7, size: 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !444, file: !87, line: 675, baseType: !599, size: 32, offset: 736)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !444, file: !87, line: 676, baseType: !222, size: 64, offset: 768)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !444, file: !87, line: 677, baseType: !4052, size: 128, offset: 832)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !444, file: !87, line: 678, baseType: !4052, size: 128, offset: 960)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !444, file: !87, line: 679, baseType: !4052, size: 128, offset: 1088)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !444, file: !87, line: 680, baseType: !305, size: 32, offset: 1216)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !444, file: !87, line: 681, baseType: !336, size: 16, offset: 1248)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !444, file: !87, line: 682, baseType: !266, size: 8, offset: 1264)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !444, file: !87, line: 683, baseType: !266, size: 8, offset: 1272)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !444, file: !87, line: 684, baseType: !2087, size: 64, offset: 1280)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !444, file: !87, line: 691, baseType: !221, size: 64, offset: 1344)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !444, file: !87, line: 692, baseType: !824, size: 320, offset: 1408)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !444, file: !87, line: 694, baseType: !221, size: 64, offset: 1728)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !444, file: !87, line: 695, baseType: !221, size: 64, offset: 1792)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !444, file: !87, line: 697, baseType: !745, size: 128, offset: 1856)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !444, file: !87, line: 698, baseType: !279, size: 128, offset: 1984)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !444, file: !87, line: 707, baseType: !279, size: 128, offset: 2112)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !444, file: !87, line: 708, baseType: !279, size: 128, offset: 2240)
!4171 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !87, line: 709, baseType: !4172, size: 128, offset: 2368)
!4172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !87, line: 709, size: 128, elements: !4173)
!4173 = !{!4174, !4175}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4172, file: !87, line: 710, baseType: !741, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4172, file: !87, line: 711, baseType: !672, size: 128, align: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !444, file: !87, line: 713, baseType: !687, size: 64, offset: 2496)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !444, file: !87, line: 714, baseType: !687, size: 64, offset: 2560)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !444, file: !87, line: 715, baseType: !261, size: 32, offset: 2624)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !444, file: !87, line: 716, baseType: !261, size: 32, offset: 2656)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !444, file: !87, line: 717, baseType: !261, size: 32, offset: 2688)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !444, file: !87, line: 719, baseType: !261, size: 32, offset: 2720)
!4182 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !87, line: 721, baseType: !4183, size: 64, offset: 2752)
!4183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !87, line: 721, size: 64, elements: !4184)
!4184 = !{!4185, !4186}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4183, file: !87, line: 722, baseType: !1002, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4183, file: !87, line: 723, baseType: !1822, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !444, file: !87, line: 725, baseType: !4188, size: 64, offset: 2816)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !87, line: 725, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !444, file: !87, line: 726, baseType: !440, size: 1536, align: 64, offset: 2880)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !444, file: !87, line: 727, baseType: !279, size: 128, offset: 4416)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !87, line: 728, baseType: !4193, size: 64, offset: 4544)
!4193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !87, line: 728, size: 64, elements: !4194)
!4194 = !{!4195, !4196, !4199, !4200}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4193, file: !87, line: 729, baseType: !1665, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4193, file: !87, line: 730, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !87, line: 730, flags: DIFlagFwdDecl)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4193, file: !87, line: 731, baseType: !366, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4193, file: !87, line: 732, baseType: !7, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !444, file: !87, line: 735, baseType: !513, size: 32, offset: 4608)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !444, file: !87, line: 738, baseType: !513, size: 32, offset: 4640)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !444, file: !87, line: 739, baseType: !3878, size: 64, offset: 4672)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !444, file: !87, line: 750, baseType: !214, size: 64, offset: 4736)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !440, file: !87, line: 474, baseType: !4136, size: 128, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !440, file: !87, line: 475, baseType: !824, size: 320, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !440, file: !87, line: 476, baseType: !212, size: 32, offset: 512)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !440, file: !87, line: 477, baseType: !261, size: 32, offset: 544)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !440, file: !87, line: 482, baseType: !2422, size: 128, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !440, file: !87, line: 483, baseType: !221, size: 64, offset: 704)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !440, file: !87, line: 484, baseType: !221, size: 64, offset: 768)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !440, file: !87, line: 485, baseType: !4213, size: 64, offset: 832)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4215)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !87, line: 404, size: 1280, elements: !4216)
!4216 = !{!4217, !4221, !4225, !4229, !4233, !4249, !4254, !4258, !4262, !4266, !4270, !4274, !4275, !4279, !4283, !4287, !4292, !4296, !4303, !4304}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4215, file: !87, line: 405, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!124, !1183, !1834}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4215, file: !87, line: 406, baseType: !4222, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!124, !659, !1044}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4215, file: !87, line: 409, baseType: !4226, size: 64, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!124, !439, !1834}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4215, file: !87, line: 412, baseType: !4230, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!883, !439, !1044}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4215, file: !87, line: 414, baseType: !4234, size: 64, offset: 256)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{null, !4237}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !182, line: 1276, size: 448, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4244, !4245, !4246, !4247, !4248}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4238, file: !182, line: 1277, baseType: !659, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4238, file: !182, line: 1278, baseType: !439, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4238, file: !182, line: 1279, baseType: !4243, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4238, file: !182, line: 1281, baseType: !221, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4238, file: !182, line: 1282, baseType: !7, size: 32, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4238, file: !182, line: 1283, baseType: !7, size: 32, offset: 288)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4238, file: !182, line: 1284, baseType: !883, size: 8, offset: 320)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4238, file: !182, line: 1285, baseType: !221, size: 64, offset: 384)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4215, file: !87, line: 416, baseType: !4250, size: 64, offset: 320)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!124, !659, !439, !222, !7, !4253, !1681}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4215, file: !87, line: 419, baseType: !4255, size: 64, offset: 384)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!124, !659, !439, !222, !7, !7, !1183, !214}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4215, file: !87, line: 424, baseType: !4259, size: 64, offset: 448)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!2118, !439, !2118}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4215, file: !87, line: 425, baseType: !4263, size: 64, offset: 512)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{null, !1044, !411, !411}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4215, file: !87, line: 426, baseType: !4267, size: 64, offset: 576)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!883, !1044, !212}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4215, file: !87, line: 427, baseType: !4271, size: 64, offset: 640)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{null, !1044}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4215, file: !87, line: 428, baseType: !1021, size: 64, offset: 704)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4215, file: !87, line: 433, baseType: !4276, size: 64, offset: 768)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!124, !439, !1044, !1044, !59}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4215, file: !87, line: 435, baseType: !4280, size: 64, offset: 832)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!124, !1044}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4215, file: !87, line: 436, baseType: !4284, size: 64, offset: 896)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!883, !1044, !411, !411}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4215, file: !87, line: 438, baseType: !4288, size: 64, offset: 960)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !1044, !4291, !4291}
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4215, file: !87, line: 439, baseType: !4293, size: 64, offset: 1024)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!124, !439, !1183}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4215, file: !87, line: 442, baseType: !4297, size: 64, offset: 1088)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!124, !4300, !659, !4302}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !87, line: 66, flags: DIFlagFwdDecl)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4215, file: !87, line: 444, baseType: !1673, size: 64, offset: 1152)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4215, file: !87, line: 445, baseType: !4305, size: 64, offset: 1216)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!124, !1024, !1591}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !87, line: 486, baseType: !221, size: 64, offset: 896)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !440, file: !87, line: 487, baseType: !824, size: 320, offset: 960)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !440, file: !87, line: 488, baseType: !1754, size: 32, offset: 1280)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !440, file: !87, line: 489, baseType: !305, size: 32, offset: 1312)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !440, file: !87, line: 490, baseType: !279, size: 128, offset: 1344)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !440, file: !87, line: 491, baseType: !214, size: 64, offset: 1472)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !430, file: !392, line: 180, baseType: !4315, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!398, !659, !298, !429, !366, !222, !411}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !430, file: !392, line: 182, baseType: !4315, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !430, file: !392, line: 184, baseType: !4320, size: 64, offset: 448)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!124, !659, !298, !429, !1197}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !418, file: !392, line: 90, baseType: !4324, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !418, file: !392, line: 91, baseType: !4326, size: 64, offset: 256)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !382, file: !293, line: 120, baseType: !4328, size: 64, offset: 192)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!2561, !349}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !382, file: !293, line: 121, baseType: !4332, size: 64, offset: 256)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!1326, !349}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !382, file: !293, line: 122, baseType: !4336, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{null, !349, !2183, !2184}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !292, file: !293, line: 70, baseType: !4340, size: 64, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4342, line: 190, size: 1152, elements: !4343)
!4342 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4423, !4424, !4425, !4426, !4427, !4430}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4341, file: !4342, line: 191, baseType: !261, size: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4341, file: !4342, line: 192, baseType: !261, size: 32, offset: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4341, file: !4342, line: 202, baseType: !4340, size: 64, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4341, file: !4342, line: 203, baseType: !240, size: 64, offset: 128)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4341, file: !4342, line: 205, baseType: !816, size: 192, align: 64, offset: 192)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4341, file: !4342, line: 207, baseType: !1326, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4341, file: !4342, line: 208, baseType: !7, size: 32, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_member, scope: !4341, file: !4342, line: 209, baseType: !4352, size: 256, offset: 512)
!4352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4341, file: !4342, line: 209, size: 256, elements: !4353)
!4353 = !{!4354, !4363, !4367}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4352, file: !4342, line: 210, baseType: !4355, size: 256)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4342, line: 153, size: 256, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4362}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4355, file: !4342, line: 154, baseType: !221, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4355, file: !4342, line: 156, baseType: !2425, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4355, file: !4342, line: 162, baseType: !4360, size: 64, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4342, line: 162, flags: DIFlagFwdDecl)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4355, file: !4342, line: 167, baseType: !221, size: 64, offset: 192)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4352, file: !4342, line: 211, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4342, line: 170, size: 64, elements: !4365)
!4365 = !{!4366}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4364, file: !4342, line: 171, baseType: !4340, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4352, file: !4342, line: 212, baseType: !4368, size: 256)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4342, line: 174, size: 256, elements: !4369)
!4369 = !{!4370, !4418, !4421, !4422}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4368, file: !4342, line: 175, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4342, line: 271, size: 768, elements: !4374)
!4374 = !{!4375, !4395, !4399, !4400, !4401, !4402, !4403, !4407, !4408, !4409, !4410, !4414}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4373, file: !4342, line: 276, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!124, !4379}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4342, line: 251, size: 1216, elements: !4381)
!4381 = !{!4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4380, file: !4342, line: 253, baseType: !4340, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4380, file: !4342, line: 254, baseType: !659, size: 64, offset: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4380, file: !4342, line: 255, baseType: !1690, size: 64, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4380, file: !4342, line: 256, baseType: !214, size: 64, offset: 192)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4380, file: !4342, line: 259, baseType: !694, size: 256, offset: 256)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4380, file: !4342, line: 260, baseType: !694, size: 256, offset: 512)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4380, file: !4342, line: 261, baseType: !124, size: 32, offset: 768)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4380, file: !4342, line: 262, baseType: !279, size: 128, offset: 832)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4380, file: !4342, line: 263, baseType: !366, size: 64, offset: 960)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4380, file: !4342, line: 265, baseType: !411, size: 64, offset: 1024)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4380, file: !4342, line: 266, baseType: !883, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4380, file: !4342, line: 267, baseType: !883, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4380, file: !4342, line: 268, baseType: !1408, size: 64, offset: 1152)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4373, file: !4342, line: 277, baseType: !4396, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{null, !4379}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4373, file: !4342, line: 290, baseType: !1720, size: 64, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4373, file: !4342, line: 292, baseType: !1708, size: 64, offset: 192)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4373, file: !4342, line: 293, baseType: !1716, size: 64, offset: 256)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4373, file: !4342, line: 294, baseType: !1712, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4373, file: !4342, line: 296, baseType: !4404, size: 64, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!398, !4379, !366, !411, !222}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4373, file: !4342, line: 306, baseType: !411, size: 64, offset: 448)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4373, file: !4342, line: 313, baseType: !883, size: 8, offset: 512)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4373, file: !4342, line: 314, baseType: !4404, size: 64, offset: 576)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4373, file: !4342, line: 317, baseType: !4411, size: 64, offset: 640)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!1617, !4379, !1619}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4373, file: !4342, line: 320, baseType: !4415, size: 64, offset: 704)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!124, !4379, !1197}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4368, file: !4342, line: 176, baseType: !4419, size: 64, offset: 64)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4342, line: 35, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4368, file: !4342, line: 177, baseType: !222, size: 64, offset: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4368, file: !4342, line: 178, baseType: !4340, size: 64, offset: 192)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4341, file: !4342, line: 215, baseType: !214, size: 64, offset: 768)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4341, file: !4342, line: 221, baseType: !516, size: 64, offset: 832)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4341, file: !4342, line: 223, baseType: !336, size: 16, offset: 896)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4341, file: !4342, line: 224, baseType: !406, size: 16, offset: 912)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4341, file: !4342, line: 225, baseType: !4428, size: 64, offset: 960)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4342, line: 36, flags: DIFlagFwdDecl)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4341, file: !4342, line: 227, baseType: !672, size: 128, align: 64, offset: 1024)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !292, file: !293, line: 71, baseType: !2633, size: 32, offset: 448)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !292, file: !293, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !292, file: !293, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !292, file: !293, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !292, file: !293, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !292, file: !293, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !289, file: !24, line: 47, baseType: !274, size: 64, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !289, file: !24, line: 48, baseType: !298, size: 64, offset: 576)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !289, file: !24, line: 49, baseType: !4440, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !24, line: 49, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !289, file: !24, line: 50, baseType: !3073, size: 64, offset: 704)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !275, file: !24, line: 418, baseType: !4444, size: 64, offset: 1408)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !24, line: 53, size: 448, elements: !4446)
!4446 = !{!4447, !4448, !4453, !4457, !4461, !4465}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4445, file: !24, line: 54, baseType: !402, size: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4445, file: !24, line: 55, baseType: !4449, size: 64, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!398, !4444, !4452, !366}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4445, file: !24, line: 57, baseType: !4454, size: 64, offset: 192)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!398, !4444, !4452, !240, !411}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4445, file: !24, line: 59, baseType: !4458, size: 64, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{null, !274, !240}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4445, file: !24, line: 60, baseType: !4462, size: 64, offset: 320)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!124, !274}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4445, file: !24, line: 61, baseType: !4466, size: 64, offset: 384)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !274}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !275, file: !24, line: 419, baseType: !240, size: 64, offset: 1472)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !275, file: !24, line: 420, baseType: !240, size: 64, offset: 1536)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !275, file: !24, line: 421, baseType: !298, size: 64, offset: 1600)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !275, file: !24, line: 424, baseType: !4473, size: 64, offset: 1664)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4475)
!4475 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !24, line: 424, flags: DIFlagFwdDecl)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !275, file: !24, line: 425, baseType: !4477, size: 64, offset: 1728)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !275, file: !24, line: 426, baseType: !7, size: 32, offset: 1792)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !275, file: !24, line: 435, baseType: !694, size: 256, offset: 1856)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !275, file: !24, line: 437, baseType: !4482, size: 64, offset: 2112)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4484, line: 69, size: 320, elements: !4485)
!4484 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4485 = !{!4486, !4487, !4488, !4505, !4507, !4511, !4512}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4483, file: !4484, line: 70, baseType: !240, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4483, file: !4484, line: 71, baseType: !274, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4483, file: !4484, line: 72, baseType: !4489, size: 64, offset: 128)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4491)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4484, line: 47, size: 256, elements: !4492)
!4492 = !{!4493, !4494, !4500, !4504}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4491, file: !4484, line: 49, baseType: !7, size: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4491, file: !4484, line: 51, baseType: !4495, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!124, !240, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4483)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4491, file: !4484, line: 53, baseType: !4501, size: 64, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!124, !366, !4498}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4491, file: !4484, line: 55, baseType: !2585, size: 64, offset: 192)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4483, file: !4484, line: 73, baseType: !4506, size: 16, offset: 192)
!4506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4483, file: !4484, line: 74, baseType: !4508, size: 8, offset: 208)
!4508 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !267, line: 16, baseType: !4509)
!4509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !269, line: 20, baseType: !4510)
!4510 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4483, file: !4484, line: 75, baseType: !266, size: 8, offset: 216)
!4512 = !DIDerivedType(tag: DW_TAG_member, scope: !4483, file: !4484, line: 76, baseType: !4513, size: 64, offset: 256)
!4513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4483, file: !4484, line: 76, size: 64, elements: !4514)
!4514 = !{!4515, !4516, !4523}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4513, file: !4484, line: 77, baseType: !214, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4513, file: !4484, line: 78, baseType: !4517, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4519)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4484, line: 86, size: 128, elements: !4520)
!4520 = !{!4521, !4522}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4519, file: !4484, line: 87, baseType: !7, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4519, file: !4484, line: 88, baseType: !366, size: 64, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4513, file: !4484, line: 79, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4526)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4484, line: 92, size: 256, elements: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4526, file: !4484, line: 94, baseType: !7, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4526, file: !4484, line: 95, baseType: !7, size: 32, offset: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4526, file: !4484, line: 96, baseType: !2758, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4526, file: !4484, line: 97, baseType: !4489, size: 64, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4526, file: !4484, line: 98, baseType: !214, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !275, file: !24, line: 438, baseType: !7, size: 32, offset: 2176)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !275, file: !24, line: 441, baseType: !7, size: 32, offset: 2208)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !275, file: !24, line: 442, baseType: !4473, size: 64, offset: 2240)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !275, file: !24, line: 443, baseType: !4477, size: 64, offset: 2304)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !275, file: !24, line: 444, baseType: !883, size: 8, offset: 2368)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !275, file: !24, line: 451, baseType: !883, size: 8, offset: 2376)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !275, file: !24, line: 454, baseType: !7, size: 32, offset: 2400)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !275, file: !24, line: 455, baseType: !4541, size: 64, offset: 2432)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4543, line: 23, size: 96, elements: !4544)
!4543 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4544 = !{!4545, !4546, !4547}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4542, file: !4543, line: 24, baseType: !124, size: 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4542, file: !4543, line: 24, baseType: !124, size: 32, offset: 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4542, file: !4543, line: 24, baseType: !124, size: 32, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !275, file: !24, line: 458, baseType: !4549, size: 64, offset: 2496)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!124}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !275, file: !24, line: 460, baseType: !4553, size: 4032, align: 512, offset: 2560)
!4553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4554, size: 4032, elements: !4568)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !24, line: 362, size: 576, elements: !4555)
!4555 = !{!4556, !4557, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4554, file: !24, line: 363, baseType: !214, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4554, file: !24, line: 364, baseType: !7, size: 32, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4554, file: !24, line: 367, baseType: !4559, size: 448, offset: 128)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !24, line: 319, size: 448, elements: !4560)
!4560 = !{!4561, !4562}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4559, file: !24, line: 320, baseType: !274, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4559, file: !24, line: 321, baseType: !4563, size: 384, offset: 64)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4564, line: 40, size: 384, elements: !4565)
!4564 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4565 = !{!4566}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4563, file: !4564, line: 41, baseType: !4567, size: 384, align: 64)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 384, align: 64, elements: !3197)
!4568 = !{!4569}
!4569 = !DISubrange(count: 7)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !275, file: !24, line: 463, baseType: !4571, size: 192, offset: 6592)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4572, line: 8, size: 192, elements: !4573)
!4572 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4573 = !{!4574, !4575, !4576}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4571, file: !4572, line: 10, baseType: !7, size: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4571, file: !4572, line: 11, baseType: !1884, size: 64, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4571, file: !4572, line: 12, baseType: !4577, size: 64, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4579, line: 59, size: 48, elements: !4580)
!4579 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4580 = !{!4581, !4582, !4583, !4584, !4585, !4586}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4578, file: !4579, line: 60, baseType: !1343, size: 16)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4578, file: !4579, line: 61, baseType: !1343, size: 16, offset: 16)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4578, file: !4579, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4578, file: !4579, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4578, file: !4579, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4578, file: !4579, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !275, file: !24, line: 465, baseType: !221, size: 64, offset: 6784)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !275, file: !24, line: 469, baseType: !7, size: 32, offset: 6848)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !275, file: !24, line: 470, baseType: !279, size: 128, offset: 6912)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !275, file: !24, line: 471, baseType: !4591, size: 64, offset: 7040)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4593, line: 33, size: 96, elements: !4594)
!4593 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4594 = !{!4595, !4596, !4597, !4598}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4592, file: !4593, line: 37, baseType: !124, size: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4592, file: !4593, line: 43, baseType: !124, size: 32, offset: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4592, file: !4593, line: 45, baseType: !336, size: 16, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4592, file: !4593, line: 47, baseType: !336, size: 16, offset: 80)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !275, file: !24, line: 476, baseType: !4600, size: 64, offset: 7104)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !24, line: 378, size: 256, elements: !4602)
!4602 = !{!4603, !4619, !4620, !4621}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4601, file: !24, line: 379, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4606, line: 204, baseType: !4607)
!4606 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4606, line: 197, size: 192, elements: !4608)
!4608 = !{!4609, !4611, !4612, !4613, !4615, !4617}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4607, file: !4606, line: 198, baseType: !4610, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4606, line: 21, baseType: !513)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4607, file: !4606, line: 199, baseType: !270, size: 8, offset: 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4607, file: !4606, line: 200, baseType: !270, size: 8, offset: 40)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4607, file: !4606, line: 201, baseType: !4614, size: 16, offset: 48)
!4614 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4606, line: 17, baseType: !335)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4607, file: !4606, line: 202, baseType: !4616, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4606, line: 16, baseType: !517)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4607, file: !4606, line: 203, baseType: !4618, size: 64, offset: 128)
!4618 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4606, line: 22, baseType: !517)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4601, file: !24, line: 380, baseType: !7, size: 32, offset: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4601, file: !24, line: 381, baseType: !366, size: 64, offset: 128)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4601, file: !24, line: 382, baseType: !366, size: 64, offset: 192)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !275, file: !24, line: 477, baseType: !4601, size: 256, offset: 7168)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !275, file: !24, line: 480, baseType: !4624, size: 64, offset: 7424)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !24, line: 480, flags: DIFlagFwdDecl)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !275, file: !24, line: 483, baseType: !4627, size: 64, offset: 7488)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !24, line: 483, flags: DIFlagFwdDecl)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !275, file: !24, line: 488, baseType: !366, size: 64, offset: 7552)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !275, file: !24, line: 492, baseType: !214, size: 64, offset: 7616)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !275, file: !24, line: 493, baseType: !7, size: 32, offset: 7680)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !275, file: !24, line: 495, baseType: !214, size: 64, offset: 7744)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !275, file: !24, line: 496, baseType: !7, size: 32, offset: 7808)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !275, file: !24, line: 499, baseType: !7, size: 32, offset: 7840)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !275, file: !24, line: 500, baseType: !4636, size: 64, offset: 7872)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4638, line: 45, baseType: !4639)
!4638 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !275, file: !24, line: 503, baseType: !7, size: 32, offset: 7936)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !275, file: !24, line: 504, baseType: !4642, size: 64, offset: 8000)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4645, line: 96, size: 192, elements: !4646)
!4645 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4646 = !{!4647, !4648, !4691, !4693}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4644, file: !4645, line: 97, baseType: !7, size: 32)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4644, file: !4645, line: 98, baseType: !4649, size: 64, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4645, line: 24, size: 3072, elements: !4651)
!4651 = !{!4652, !4654, !4655, !4656, !4657, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4688, !4689, !4690}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4650, file: !4645, line: 26, baseType: !4653, size: 128)
!4653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 128, elements: !3197)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4650, file: !4645, line: 27, baseType: !4653, size: 128, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4650, file: !4645, line: 28, baseType: !124, size: 32, offset: 256)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4650, file: !4645, line: 31, baseType: !305, size: 32, align: 512, offset: 512)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4650, file: !4645, line: 32, baseType: !4658, size: 960, offset: 576)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4659, line: 206, size: 960, elements: !4660)
!4659 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4660 = !{!4661, !4662, !4665, !4667, !4668, !4670}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4658, file: !4659, line: 207, baseType: !675, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4658, file: !4659, line: 208, baseType: !4663, size: 256, offset: 64)
!4663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4664, size: 256, elements: !750)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4658, file: !4659, line: 209, baseType: !4666, size: 256, offset: 320)
!4666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !750)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4658, file: !4659, line: 213, baseType: !220, size: 64, offset: 576)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4658, file: !4659, line: 215, baseType: !4669, size: 256, offset: 640)
!4669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !750)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4658, file: !4659, line: 216, baseType: !266, size: 8, offset: 896)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4650, file: !4645, line: 33, baseType: !221, size: 64, offset: 1536)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4650, file: !4645, line: 34, baseType: !221, size: 64, offset: 1600)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4650, file: !4645, line: 35, baseType: !883, size: 8, offset: 1664)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4650, file: !4645, line: 36, baseType: !2332, size: 320, offset: 1728)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4650, file: !4645, line: 37, baseType: !1365, size: 256, offset: 2048)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4650, file: !4645, line: 38, baseType: !672, size: 128, align: 64, offset: 2304)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4650, file: !4645, line: 39, baseType: !4678, size: 64, offset: 2432)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4645, line: 49, size: 768, elements: !4680)
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4686, !4687}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4679, file: !4645, line: 50, baseType: !305, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4679, file: !4645, line: 51, baseType: !4666, size: 256, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4679, file: !4645, line: 53, baseType: !4666, size: 256, offset: 320)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4679, file: !4645, line: 54, baseType: !221, size: 64, offset: 576)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4679, file: !4645, line: 55, baseType: !4678, size: 64, offset: 640)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4679, file: !4645, line: 56, baseType: !124, size: 32, offset: 704)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4679, file: !4645, line: 57, baseType: !124, size: 32, offset: 736)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4650, file: !4645, line: 40, baseType: !221, size: 64, offset: 2496)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4650, file: !4645, line: 42, baseType: !124, size: 32, offset: 2560)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4650, file: !4645, line: 43, baseType: !4643, size: 64, offset: 2624)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4644, file: !4645, line: 99, baseType: !4692, offset: 128)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1803, line: 211, elements: !1231)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4644, file: !4645, line: 100, baseType: !4694, size: 64, offset: 128)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4645, line: 63, size: 3008, elements: !4696)
!4696 = !{!4697, !4698, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4695, file: !4645, line: 64, baseType: !4678, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4695, file: !4645, line: 65, baseType: !4699, size: 192, offset: 64)
!4699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4678, size: 192, elements: !367)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4695, file: !4645, line: 67, baseType: !124, size: 32, offset: 256)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4695, file: !4645, line: 68, baseType: !694, size: 256, offset: 320)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4695, file: !4645, line: 69, baseType: !305, size: 32, offset: 576)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4695, file: !4645, line: 70, baseType: !694, size: 256, offset: 640)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4695, file: !4645, line: 71, baseType: !221, size: 64, offset: 896)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4695, file: !4645, line: 72, baseType: !221, size: 64, offset: 960)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4695, file: !4645, line: 73, baseType: !221, size: 64, offset: 1024)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4695, file: !4645, line: 74, baseType: !221, size: 64, offset: 1088)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4695, file: !4645, line: 75, baseType: !221, size: 64, offset: 1152)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4695, file: !4645, line: 76, baseType: !221, size: 64, offset: 1216)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4695, file: !4645, line: 77, baseType: !221, size: 64, offset: 1280)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4695, file: !4645, line: 78, baseType: !221, size: 64, offset: 1344)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4695, file: !4645, line: 79, baseType: !883, size: 8, offset: 1408)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4695, file: !4645, line: 80, baseType: !221, size: 64, offset: 1472)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4695, file: !4645, line: 81, baseType: !694, size: 256, offset: 1536)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4695, file: !4645, line: 82, baseType: !1161, size: 256, offset: 1792)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4695, file: !4645, line: 84, baseType: !261, size: 32, offset: 2048)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4695, file: !4645, line: 87, baseType: !221, size: 64, offset: 2112)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4695, file: !4645, line: 88, baseType: !221, size: 64, offset: 2176)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4695, file: !4645, line: 89, baseType: !2675, size: 704, offset: 2240)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4695, file: !4645, line: 90, baseType: !4643, size: 64, offset: 2944)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !275, file: !24, line: 515, baseType: !4722, size: 64, offset: 8064)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4724, line: 117, size: 128, elements: !4725)
!4724 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4725 = !{!4726, !4727, !4728}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4723, file: !4724, line: 118, baseType: !809, size: 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4723, file: !4724, line: 119, baseType: !809, size: 32, offset: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4723, file: !4724, line: 120, baseType: !220, size: 64, offset: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !275, file: !24, line: 516, baseType: !7, size: 32, offset: 8128)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !275, file: !24, line: 519, baseType: !7, size: 32, offset: 8160)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !275, file: !24, line: 520, baseType: !4732, size: 64, offset: 8192)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !275, file: !24, line: 523, baseType: !4734, size: 64, offset: 8256)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !24, line: 523, flags: DIFlagFwdDecl)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !275, file: !24, line: 524, baseType: !7, size: 32, offset: 8320)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !275, file: !24, line: 525, baseType: !4739, size: 64, offset: 8384)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !24, line: 525, flags: DIFlagFwdDecl)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !275, file: !24, line: 526, baseType: !7, size: 32, offset: 8448)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !275, file: !24, line: 533, baseType: !214, size: 64, offset: 8512)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !275, file: !24, line: 534, baseType: !7, size: 32, offset: 8576)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !275, file: !24, line: 535, baseType: !4746, size: 64, offset: 8640)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !275, file: !24, line: 536, baseType: !7, size: 32, offset: 8704)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !275, file: !24, line: 539, baseType: !124, size: 32, offset: 8736)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !275, file: !24, line: 540, baseType: !4750, size: 64, offset: 8768)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4752, line: 32, size: 64, elements: !4753)
!4752 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4753 = !{!4754, !4755}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4751, file: !4752, line: 33, baseType: !809, size: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4751, file: !4752, line: 34, baseType: !809, size: 32, offset: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !275, file: !24, line: 563, baseType: !279, size: 128, offset: 8832)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !275, file: !24, line: 565, baseType: !279, size: 128, offset: 8960)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !275, file: !24, line: 568, baseType: !4759, size: 64, offset: 9088)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !275, file: !24, line: 570, baseType: !261, size: 32, offset: 9152)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !253, file: !6, line: 179, baseType: !4762, size: 512, offset: 128)
!4762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 512, elements: !2406)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !237, line: 53, size: 128, elements: !4765)
!4765 = !{!4766, !4767}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !4764, file: !237, line: 54, baseType: !883, size: 8)
!4767 = !DIDerivedType(tag: DW_TAG_member, scope: !4764, file: !237, line: 55, baseType: !4768, size: 64, offset: 64)
!4768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4764, file: !237, line: 55, size: 64, elements: !4769)
!4769 = !{!4770, !4771, !4772, !4773}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !4768, file: !237, line: 56, baseType: !883, size: 8)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !4768, file: !237, line: 57, baseType: !124, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !4768, file: !237, line: 58, baseType: !7, size: 32)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !4768, file: !237, line: 59, baseType: !516, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !236, file: !237, line: 42, baseType: !266, size: 8, offset: 128)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !237, line: 43, baseType: !336, size: 16, offset: 144)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !236, file: !237, line: 47, baseType: !1326, size: 64, offset: 192)
!4777 = !DIGlobalVariableExpression(var: !4778, expr: !DIExpression())
!4778 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_ramfs__322_299_init_ramfs_fs5323", scope: !2, file: !3, line: 299, type: !214, isLocal: true, isDefinition: true)
!4779 = !DIGlobalVariableExpression(var: !4780, expr: !DIExpression())
!4780 = distinct !DIGlobalVariable(scope: null, file: !199, line: 480, type: !4781, isLocal: true, isDefinition: true)
!4781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 168, elements: !4782)
!4782 = !{!4783}
!4783 = !DISubrange(count: 21)
!4784 = !DIGlobalVariableExpression(var: !4785, expr: !DIExpression())
!4785 = distinct !DIGlobalVariable(name: "ramfs_context_ops", scope: !2, file: !3, line: 261, type: !619, isLocal: true, isDefinition: true)
!4786 = !DIGlobalVariableExpression(var: !4787, expr: !DIExpression())
!4787 = distinct !DIGlobalVariable(name: "ramfs_ops", scope: !2, file: !3, line: 185, type: !1814, isLocal: true, isDefinition: true)
!4788 = !DIGlobalVariableExpression(var: !4789, expr: !DIExpression())
!4789 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !4790, isLocal: true, isDefinition: true)
!4790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 72, elements: !4791)
!4791 = !{!4792}
!4792 = !DISubrange(count: 9)
!4793 = !DIGlobalVariableExpression(var: !4794, expr: !DIExpression())
!4794 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !869, isLocal: true, isDefinition: true)
!4795 = !DIGlobalVariableExpression(var: !4796, expr: !DIExpression())
!4796 = distinct !DIGlobalVariable(name: "ramfs_fs_type", scope: !2, file: !3, line: 287, type: !606, isLocal: true, isDefinition: true)
!4797 = !{i32 7, !"Dwarf Version", i32 5}
!4798 = !{i32 2, !"Debug Info Version", i32 3}
!4799 = !{i32 1, !"wchar_size", i32 2}
!4800 = !{i32 8, !"cf-protection-branch", i32 1}
!4801 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4802 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4803 = !{i32 1, !"Code Model", i32 2}
!4804 = !{i32 1, !"override-stack-alignment", i32 8}
!4805 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4806 = distinct !DISubprogram(name: "ramfs_get_inode", scope: !3, file: !3, line: 57, type: !4807, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!443, !594, !3952, !406, !599}
!4809 = !{!4810, !4811, !4812, !4813, !4814}
!4810 = !DILocalVariable(name: "sb", arg: 1, scope: !4806, file: !3, line: 57, type: !594)
!4811 = !DILocalVariable(name: "dir", arg: 2, scope: !4806, file: !3, line: 58, type: !3952)
!4812 = !DILocalVariable(name: "mode", arg: 3, scope: !4806, file: !3, line: 58, type: !406)
!4813 = !DILocalVariable(name: "dev", arg: 4, scope: !4806, file: !3, line: 58, type: !599)
!4814 = !DILocalVariable(name: "inode", scope: !4806, file: !3, line: 60, type: !443)
!4815 = !DILocation(line: 57, column: 51, scope: !4806)
!4816 = !DILocation(line: 58, column: 25, scope: !4806)
!4817 = !DILocation(line: 58, column: 38, scope: !4806)
!4818 = !DILocation(line: 58, column: 50, scope: !4806)
!4819 = !DILocation(line: 60, column: 2, scope: !4806)
!4820 = !DILocation(line: 60, column: 17, scope: !4806)
!4821 = !DILocation(line: 60, column: 35, scope: !4806)
!4822 = !DILocation(line: 60, column: 25, scope: !4806)
!4823 = !DILocation(line: 62, column: 6, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 62, column: 6)
!4825 = !DILocation(line: 62, column: 6, scope: !4806)
!4826 = !DILocation(line: 63, column: 18, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 62, column: 13)
!4828 = !DILocation(line: 63, column: 3, scope: !4827)
!4829 = !DILocation(line: 63, column: 10, scope: !4827)
!4830 = !DILocation(line: 63, column: 16, scope: !4827)
!4831 = !DILocation(line: 64, column: 36, scope: !4827)
!4832 = !DILocation(line: 64, column: 43, scope: !4827)
!4833 = !DILocation(line: 64, column: 48, scope: !4827)
!4834 = !DILocation(line: 64, column: 3, scope: !4827)
!4835 = !DILocation(line: 65, column: 3, scope: !4827)
!4836 = !DILocation(line: 65, column: 10, scope: !4827)
!4837 = !DILocation(line: 65, column: 21, scope: !4827)
!4838 = !DILocation(line: 65, column: 27, scope: !4827)
!4839 = !DILocation(line: 66, column: 24, scope: !4827)
!4840 = !DILocation(line: 66, column: 31, scope: !4827)
!4841 = !DILocation(line: 66, column: 3, scope: !4827)
!4842 = !DILocation(line: 67, column: 27, scope: !4827)
!4843 = !DILocation(line: 67, column: 34, scope: !4827)
!4844 = !DILocation(line: 67, column: 3, scope: !4827)
!4845 = !DILocation(line: 68, column: 3, scope: !4827)
!4846 = !DILocation(line: 68, column: 10, scope: !4827)
!4847 = !DILocation(line: 68, column: 20, scope: !4827)
!4848 = !DILocation(line: 68, column: 27, scope: !4827)
!4849 = !DILocation(line: 68, column: 37, scope: !4827)
!4850 = !DILocation(line: 68, column: 61, scope: !4827)
!4851 = !DILocation(line: 68, column: 35, scope: !4827)
!4852 = !DILocation(line: 69, column: 11, scope: !4827)
!4853 = !DILocation(line: 69, column: 16, scope: !4827)
!4854 = !DILocation(line: 69, column: 3, scope: !4827)
!4855 = !DILocation(line: 71, column: 23, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 69, column: 26)
!4857 = !DILocation(line: 71, column: 30, scope: !4856)
!4858 = !DILocation(line: 71, column: 36, scope: !4856)
!4859 = !DILocation(line: 71, column: 4, scope: !4856)
!4860 = !DILocation(line: 72, column: 4, scope: !4856)
!4861 = !DILocation(line: 74, column: 4, scope: !4856)
!4862 = !DILocation(line: 74, column: 11, scope: !4856)
!4863 = !DILocation(line: 74, column: 16, scope: !4856)
!4864 = !DILocation(line: 75, column: 4, scope: !4856)
!4865 = !DILocation(line: 75, column: 11, scope: !4856)
!4866 = !DILocation(line: 75, column: 17, scope: !4856)
!4867 = !DILocation(line: 76, column: 4, scope: !4856)
!4868 = !DILocation(line: 78, column: 4, scope: !4856)
!4869 = !DILocation(line: 78, column: 11, scope: !4856)
!4870 = !DILocation(line: 78, column: 16, scope: !4856)
!4871 = !DILocation(line: 79, column: 4, scope: !4856)
!4872 = !DILocation(line: 79, column: 11, scope: !4856)
!4873 = !DILocation(line: 79, column: 17, scope: !4856)
!4874 = !DILocation(line: 82, column: 14, scope: !4856)
!4875 = !DILocation(line: 82, column: 4, scope: !4856)
!4876 = !DILocation(line: 83, column: 4, scope: !4856)
!4877 = !DILocation(line: 85, column: 4, scope: !4856)
!4878 = !DILocation(line: 85, column: 11, scope: !4856)
!4879 = !DILocation(line: 85, column: 16, scope: !4856)
!4880 = !DILocation(line: 86, column: 20, scope: !4856)
!4881 = !DILocation(line: 86, column: 4, scope: !4856)
!4882 = !DILocation(line: 87, column: 4, scope: !4856)
!4883 = !DILocation(line: 89, column: 2, scope: !4827)
!4884 = !DILocation(line: 90, column: 9, scope: !4806)
!4885 = !DILocation(line: 91, column: 1, scope: !4806)
!4886 = !DILocation(line: 90, column: 2, scope: !4806)
!4887 = !DISubprogram(name: "new_inode", scope: !87, file: !87, line: 2932, type: !1819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4888 = !DISubprogram(name: "get_next_ino", scope: !87, file: !87, line: 2908, type: !4889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!7}
!4891 = !DISubprogram(name: "inode_init_owner", scope: !87, file: !87, line: 1841, type: !4892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{null, !3941, !443, !3952, !406}
!4894 = distinct !DISubprogram(name: "mapping_set_gfp_mask", scope: !182, file: !182, line: 325, type: !4895, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4897)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{null, !439, !212}
!4897 = !{!4898, !4899}
!4898 = !DILocalVariable(name: "m", arg: 1, scope: !4894, file: !182, line: 325, type: !439)
!4899 = !DILocalVariable(name: "mask", arg: 2, scope: !4894, file: !182, line: 325, type: !212)
!4900 = !DILocation(line: 325, column: 63, scope: !4894)
!4901 = !DILocation(line: 325, column: 72, scope: !4894)
!4902 = !DILocation(line: 327, column: 16, scope: !4894)
!4903 = !DILocation(line: 327, column: 2, scope: !4894)
!4904 = !DILocation(line: 327, column: 5, scope: !4894)
!4905 = !DILocation(line: 327, column: 14, scope: !4894)
!4906 = !DILocation(line: 328, column: 1, scope: !4894)
!4907 = distinct !DISubprogram(name: "mapping_set_unevictable", scope: !182, file: !182, line: 244, type: !4908, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4910)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{null, !439}
!4910 = !{!4911}
!4911 = !DILocalVariable(name: "mapping", arg: 1, scope: !4907, file: !182, line: 244, type: !439)
!4912 = !DILocation(line: 244, column: 66, scope: !4907)
!4913 = !DILocation(line: 246, column: 27, scope: !4907)
!4914 = !DILocation(line: 246, column: 36, scope: !4907)
!4915 = !DILocation(line: 246, column: 2, scope: !4907)
!4916 = !DILocation(line: 247, column: 1, scope: !4907)
!4917 = !DISubprogram(name: "inode_set_ctime_current", scope: !87, file: !87, line: 1515, type: !4918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!4052, !443}
!4920 = !DISubprogram(name: "init_special_inode", scope: !87, file: !87, line: 2613, type: !4921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{null, !443, !406, !599}
!4923 = !DISubprogram(name: "inc_nlink", scope: !87, file: !87, line: 2327, type: !1823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4924 = !DISubprogram(name: "inode_nohighmem", scope: !87, file: !87, line: 3462, type: !1823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4925 = distinct !DISubprogram(name: "ramfs_init_fs_context", scope: !3, file: !3, line: 267, type: !612, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4926)
!4926 = !{!4927, !4928}
!4927 = !DILocalVariable(name: "fc", arg: 1, scope: !4925, file: !3, line: 267, type: !614)
!4928 = !DILocalVariable(name: "fsi", scope: !4925, file: !3, line: 269, type: !4929)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ramfs_fs_info", file: !3, line: 48, size: 16, elements: !4931)
!4931 = !{!4932}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "mount_opts", scope: !4930, file: !3, line: 49, baseType: !4933, size: 16)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ramfs_mount_opts", file: !3, line: 44, size: 16, elements: !4934)
!4934 = !{!4935}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4933, file: !3, line: 45, baseType: !406, size: 16)
!4936 = !DILocation(line: 267, column: 46, scope: !4925)
!4937 = !DILocation(line: 269, column: 2, scope: !4925)
!4938 = !DILocation(line: 269, column: 24, scope: !4925)
!4939 = !DILocation(line: 271, column: 8, scope: !4925)
!4940 = !DILocation(line: 271, column: 6, scope: !4925)
!4941 = !DILocation(line: 272, column: 7, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 272, column: 6)
!4943 = !DILocation(line: 272, column: 6, scope: !4925)
!4944 = !DILocation(line: 273, column: 3, scope: !4942)
!4945 = !DILocation(line: 275, column: 2, scope: !4925)
!4946 = !DILocation(line: 275, column: 7, scope: !4925)
!4947 = !DILocation(line: 275, column: 18, scope: !4925)
!4948 = !DILocation(line: 275, column: 23, scope: !4925)
!4949 = !DILocation(line: 276, column: 18, scope: !4925)
!4950 = !DILocation(line: 276, column: 2, scope: !4925)
!4951 = !DILocation(line: 276, column: 6, scope: !4925)
!4952 = !DILocation(line: 276, column: 16, scope: !4925)
!4953 = !DILocation(line: 277, column: 2, scope: !4925)
!4954 = !DILocation(line: 277, column: 6, scope: !4925)
!4955 = !DILocation(line: 277, column: 10, scope: !4925)
!4956 = !DILocation(line: 278, column: 2, scope: !4925)
!4957 = !DILocation(line: 279, column: 1, scope: !4925)
!4958 = distinct !DISubprogram(name: "kzalloc", scope: !199, file: !199, line: 719, type: !4959, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4961)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!214, !411, !212}
!4961 = !{!4962, !4963}
!4962 = !DILocalVariable(name: "size", arg: 1, scope: !4958, file: !199, line: 719, type: !411)
!4963 = !DILocalVariable(name: "flags", arg: 2, scope: !4958, file: !199, line: 719, type: !212)
!4964 = !DILocation(line: 719, column: 52, scope: !4958)
!4965 = !DILocation(line: 719, column: 64, scope: !4958)
!4966 = !DILocation(line: 721, column: 17, scope: !4958)
!4967 = !DILocation(line: 721, column: 23, scope: !4958)
!4968 = !DILocation(line: 721, column: 29, scope: !4958)
!4969 = !DILocation(line: 721, column: 9, scope: !4958)
!4970 = !DILocation(line: 721, column: 2, scope: !4958)
!4971 = distinct !DISubprogram(name: "ramfs_kill_sb", scope: !3, file: !3, line: 281, type: !1796, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4972)
!4972 = !{!4973}
!4973 = !DILocalVariable(name: "sb", arg: 1, scope: !4971, file: !3, line: 281, type: !594)
!4974 = !DILocation(line: 281, column: 40, scope: !4971)
!4975 = !DILocation(line: 283, column: 8, scope: !4971)
!4976 = !DILocation(line: 283, column: 12, scope: !4971)
!4977 = !DILocation(line: 283, column: 2, scope: !4971)
!4978 = !DILocation(line: 284, column: 20, scope: !4971)
!4979 = !DILocation(line: 284, column: 2, scope: !4971)
!4980 = !DILocation(line: 285, column: 1, scope: !4971)
!4981 = !DISubprogram(name: "kfree", scope: !199, file: !199, line: 227, type: !4982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !1326}
!4984 = !DISubprogram(name: "kill_litter_super", scope: !87, file: !87, line: 2412, type: !1796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4985 = distinct !DISubprogram(name: "__initstub__kmod_ramfs__322_299_init_ramfs_fs5", scope: !3, file: !3, line: 299, type: !4550, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4986 = !DILocation(line: 299, column: 1, scope: !4985)
!4987 = distinct !DISubprogram(name: "init_ramfs_fs", scope: !3, file: !3, line: 295, type: !4550, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4988 = !DILocation(line: 297, column: 9, scope: !4987)
!4989 = !DILocation(line: 297, column: 2, scope: !4987)
!4990 = distinct !DISubprogram(name: "set_bit", scope: !4991, file: !4991, line: 26, type: !4992, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4996)
!4991 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!4992 = !DISubroutineType(types: !4993)
!4993 = !{null, !220, !4994}
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !221)
!4996 = !{!4997, !4998}
!4997 = !DILocalVariable(name: "nr", arg: 1, scope: !4990, file: !4991, line: 26, type: !220)
!4998 = !DILocalVariable(name: "addr", arg: 2, scope: !4990, file: !4991, line: 26, type: !4994)
!4999 = !DILocation(line: 26, column: 42, scope: !4990)
!5000 = !DILocation(line: 26, column: 70, scope: !4990)
!5001 = !DILocation(line: 28, column: 26, scope: !4990)
!5002 = !DILocation(line: 28, column: 33, scope: !4990)
!5003 = !DILocation(line: 28, column: 31, scope: !4990)
!5004 = !DILocation(line: 28, column: 2, scope: !4990)
!5005 = !DILocation(line: 29, column: 15, scope: !4990)
!5006 = !DILocation(line: 29, column: 19, scope: !4990)
!5007 = !DILocation(line: 29, column: 2, scope: !4990)
!5008 = !DILocation(line: 30, column: 1, scope: !4990)
!5009 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5010, file: !5010, line: 80, type: !5011, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5016)
!5010 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5011 = !DISubroutineType(types: !5012)
!5012 = !{null, !5013, !411}
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5015)
!5015 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5016 = !{!5017, !5018}
!5017 = !DILocalVariable(name: "v", arg: 1, scope: !5009, file: !5010, line: 80, type: !5013)
!5018 = !DILocalVariable(name: "size", arg: 2, scope: !5009, file: !5010, line: 80, type: !411)
!5019 = !DILocation(line: 80, column: 74, scope: !5009)
!5020 = !DILocation(line: 80, column: 84, scope: !5009)
!5021 = !DILocation(line: 82, column: 20, scope: !5009)
!5022 = !DILocation(line: 82, column: 23, scope: !5009)
!5023 = !DILocation(line: 82, column: 2, scope: !5009)
!5024 = !DILocation(line: 83, column: 2, scope: !5009)
!5025 = !DILocation(line: 84, column: 1, scope: !5009)
!5026 = distinct !DISubprogram(name: "arch_set_bit", scope: !5027, file: !5027, line: 52, type: !4992, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5028)
!5027 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5028 = !{!5029, !5030}
!5029 = !DILocalVariable(name: "nr", arg: 1, scope: !5026, file: !5027, line: 52, type: !220)
!5030 = !DILocalVariable(name: "addr", arg: 2, scope: !5026, file: !5027, line: 52, type: !4994)
!5031 = !DILocation(line: 52, column: 19, scope: !5026)
!5032 = !DILocation(line: 52, column: 47, scope: !5026)
!5033 = !DILocation(line: 54, column: 27, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5026, file: !5027, line: 54, column: 6)
!5035 = !DILocation(line: 54, column: 6, scope: !5034)
!5036 = !DILocation(line: 54, column: 6, scope: !5026)
!5037 = !DILocation(line: 56, column: 6, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5034, file: !5027, line: 54, column: 32)
!5039 = !DILocation(line: 57, column: 12, scope: !5038)
!5040 = !DILocation(line: 55, column: 3, scope: !5038)
!5041 = !{i64 2148129995, i64 2148130034, i64 2148130055, i64 2148130092, i64 2148130115, i64 2148129985}
!5042 = !DILocation(line: 59, column: 2, scope: !5038)
!5043 = !DILocation(line: 61, column: 8, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5034, file: !5027, line: 59, column: 9)
!5045 = !DILocation(line: 61, column: 32, scope: !5044)
!5046 = !DILocation(line: 60, column: 3, scope: !5044)
!5047 = !{i64 2148130280, i64 2148130319, i64 2148130340, i64 2148130377, i64 2148130400, i64 2148130270}
!5048 = !DILocation(line: 63, column: 1, scope: !5026)
!5049 = distinct !DISubprogram(name: "kasan_check_write", scope: !5050, file: !5050, line: 44, type: !5051, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5053)
!5050 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!883, !5013, !7}
!5053 = !{!5054, !5055}
!5054 = !DILocalVariable(name: "p", arg: 1, scope: !5049, file: !5050, line: 44, type: !5013)
!5055 = !DILocalVariable(name: "size", arg: 2, scope: !5049, file: !5050, line: 44, type: !7)
!5056 = !DILocation(line: 44, column: 59, scope: !5049)
!5057 = !DILocation(line: 44, column: 75, scope: !5049)
!5058 = !DILocation(line: 46, column: 2, scope: !5049)
!5059 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5060, file: !5060, line: 229, type: !5061, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5063)
!5060 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5061 = !DISubroutineType(types: !5062)
!5062 = !{null, !5013, !411, !124}
!5063 = !{!5064, !5065, !5066}
!5064 = !DILocalVariable(name: "ptr", arg: 1, scope: !5059, file: !5060, line: 229, type: !5013)
!5065 = !DILocalVariable(name: "size", arg: 2, scope: !5059, file: !5060, line: 229, type: !411)
!5066 = !DILocalVariable(name: "type", arg: 3, scope: !5059, file: !5060, line: 230, type: !124)
!5067 = !DILocation(line: 229, column: 60, scope: !5059)
!5068 = !DILocation(line: 229, column: 72, scope: !5059)
!5069 = !DILocation(line: 230, column: 15, scope: !5059)
!5070 = !DILocation(line: 230, column: 23, scope: !5059)
!5071 = distinct !DISubprogram(name: "ramfs_create", scope: !3, file: !3, line: 122, type: !3995, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5072)
!5072 = !{!5073, !5074, !5075, !5076, !5077}
!5073 = !DILocalVariable(name: "idmap", arg: 1, scope: !5071, file: !3, line: 122, type: !3941)
!5074 = !DILocalVariable(name: "dir", arg: 2, scope: !5071, file: !3, line: 122, type: !443)
!5075 = !DILocalVariable(name: "dentry", arg: 3, scope: !5071, file: !3, line: 123, type: !478)
!5076 = !DILocalVariable(name: "mode", arg: 4, scope: !5071, file: !3, line: 123, type: !406)
!5077 = !DILocalVariable(name: "excl", arg: 5, scope: !5071, file: !3, line: 123, type: !883)
!5078 = !DILocation(line: 122, column: 43, scope: !5071)
!5079 = !DILocation(line: 122, column: 64, scope: !5071)
!5080 = !DILocation(line: 123, column: 19, scope: !5071)
!5081 = !DILocation(line: 123, column: 35, scope: !5071)
!5082 = !DILocation(line: 123, column: 46, scope: !5071)
!5083 = !DILocation(line: 125, column: 37, scope: !5071)
!5084 = !DILocation(line: 125, column: 42, scope: !5071)
!5085 = !DILocation(line: 125, column: 50, scope: !5071)
!5086 = !DILocation(line: 125, column: 55, scope: !5071)
!5087 = !DILocation(line: 125, column: 9, scope: !5071)
!5088 = !DILocation(line: 125, column: 2, scope: !5071)
!5089 = distinct !DISubprogram(name: "ramfs_symlink", scope: !3, file: !3, line: 128, type: !4007, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5090)
!5090 = !{!5091, !5092, !5093, !5094, !5095, !5096, !5097}
!5091 = !DILocalVariable(name: "idmap", arg: 1, scope: !5089, file: !3, line: 128, type: !3941)
!5092 = !DILocalVariable(name: "dir", arg: 2, scope: !5089, file: !3, line: 128, type: !443)
!5093 = !DILocalVariable(name: "dentry", arg: 3, scope: !5089, file: !3, line: 129, type: !478)
!5094 = !DILocalVariable(name: "symname", arg: 4, scope: !5089, file: !3, line: 129, type: !240)
!5095 = !DILocalVariable(name: "inode", scope: !5089, file: !3, line: 131, type: !443)
!5096 = !DILocalVariable(name: "error", scope: !5089, file: !3, line: 132, type: !124)
!5097 = !DILocalVariable(name: "l", scope: !5098, file: !3, line: 136, type: !124)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 135, column: 13)
!5099 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 135, column: 6)
!5100 = !DILocation(line: 128, column: 44, scope: !5089)
!5101 = !DILocation(line: 128, column: 65, scope: !5089)
!5102 = !DILocation(line: 129, column: 20, scope: !5089)
!5103 = !DILocation(line: 129, column: 40, scope: !5089)
!5104 = !DILocation(line: 131, column: 2, scope: !5089)
!5105 = !DILocation(line: 131, column: 16, scope: !5089)
!5106 = !DILocation(line: 132, column: 2, scope: !5089)
!5107 = !DILocation(line: 132, column: 6, scope: !5089)
!5108 = !DILocation(line: 134, column: 26, scope: !5089)
!5109 = !DILocation(line: 134, column: 31, scope: !5089)
!5110 = !DILocation(line: 134, column: 37, scope: !5089)
!5111 = !DILocation(line: 134, column: 10, scope: !5089)
!5112 = !DILocation(line: 134, column: 8, scope: !5089)
!5113 = !DILocation(line: 135, column: 6, scope: !5099)
!5114 = !DILocation(line: 135, column: 6, scope: !5089)
!5115 = !DILocation(line: 136, column: 3, scope: !5098)
!5116 = !DILocation(line: 136, column: 7, scope: !5098)
!5117 = !DILocation(line: 136, column: 18, scope: !5098)
!5118 = !DILocation(line: 136, column: 11, scope: !5098)
!5119 = !DILocation(line: 136, column: 26, scope: !5098)
!5120 = !DILocation(line: 137, column: 24, scope: !5098)
!5121 = !DILocation(line: 137, column: 31, scope: !5098)
!5122 = !DILocation(line: 137, column: 40, scope: !5098)
!5123 = !DILocation(line: 137, column: 11, scope: !5098)
!5124 = !DILocation(line: 137, column: 9, scope: !5098)
!5125 = !DILocation(line: 138, column: 8, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 138, column: 7)
!5127 = !DILocation(line: 138, column: 7, scope: !5098)
!5128 = !DILocation(line: 139, column: 18, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 138, column: 15)
!5130 = !DILocation(line: 139, column: 26, scope: !5129)
!5131 = !DILocation(line: 139, column: 4, scope: !5129)
!5132 = !DILocation(line: 140, column: 9, scope: !5129)
!5133 = !DILocation(line: 140, column: 4, scope: !5129)
!5134 = !DILocation(line: 141, column: 4, scope: !5129)
!5135 = !DILocation(line: 141, column: 9, scope: !5129)
!5136 = !DILocation(line: 141, column: 19, scope: !5129)
!5137 = !DILocation(line: 141, column: 43, scope: !5129)
!5138 = !DILocation(line: 142, column: 3, scope: !5129)
!5139 = !DILocation(line: 143, column: 9, scope: !5126)
!5140 = !DILocation(line: 143, column: 4, scope: !5126)
!5141 = !DILocation(line: 144, column: 2, scope: !5099)
!5142 = !DILocation(line: 144, column: 2, scope: !5098)
!5143 = !DILocation(line: 145, column: 9, scope: !5089)
!5144 = !DILocation(line: 146, column: 1, scope: !5089)
!5145 = !DILocation(line: 145, column: 2, scope: !5089)
!5146 = distinct !DISubprogram(name: "ramfs_mkdir", scope: !3, file: !3, line: 113, type: !4011, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5147)
!5147 = !{!5148, !5149, !5150, !5151, !5152}
!5148 = !DILocalVariable(name: "idmap", arg: 1, scope: !5146, file: !3, line: 113, type: !3941)
!5149 = !DILocalVariable(name: "dir", arg: 2, scope: !5146, file: !3, line: 113, type: !443)
!5150 = !DILocalVariable(name: "dentry", arg: 3, scope: !5146, file: !3, line: 114, type: !478)
!5151 = !DILocalVariable(name: "mode", arg: 4, scope: !5146, file: !3, line: 114, type: !406)
!5152 = !DILocalVariable(name: "retval", scope: !5146, file: !3, line: 116, type: !124)
!5153 = !DILocation(line: 113, column: 42, scope: !5146)
!5154 = !DILocation(line: 113, column: 63, scope: !5146)
!5155 = !DILocation(line: 114, column: 25, scope: !5146)
!5156 = !DILocation(line: 114, column: 41, scope: !5146)
!5157 = !DILocation(line: 116, column: 2, scope: !5146)
!5158 = !DILocation(line: 116, column: 6, scope: !5146)
!5159 = !DILocation(line: 116, column: 43, scope: !5146)
!5160 = !DILocation(line: 116, column: 48, scope: !5146)
!5161 = !DILocation(line: 116, column: 56, scope: !5146)
!5162 = !DILocation(line: 116, column: 61, scope: !5146)
!5163 = !DILocation(line: 116, column: 15, scope: !5146)
!5164 = !DILocation(line: 117, column: 7, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 117, column: 6)
!5166 = !DILocation(line: 117, column: 6, scope: !5146)
!5167 = !DILocation(line: 118, column: 13, scope: !5165)
!5168 = !DILocation(line: 118, column: 3, scope: !5165)
!5169 = !DILocation(line: 119, column: 9, scope: !5146)
!5170 = !DILocation(line: 120, column: 1, scope: !5146)
!5171 = !DILocation(line: 119, column: 2, scope: !5146)
!5172 = distinct !DISubprogram(name: "ramfs_mknod", scope: !3, file: !3, line: 98, type: !4016, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5173)
!5173 = !{!5174, !5175, !5176, !5177, !5178, !5179, !5180}
!5174 = !DILocalVariable(name: "idmap", arg: 1, scope: !5172, file: !3, line: 98, type: !3941)
!5175 = !DILocalVariable(name: "dir", arg: 2, scope: !5172, file: !3, line: 98, type: !443)
!5176 = !DILocalVariable(name: "dentry", arg: 3, scope: !5172, file: !3, line: 99, type: !478)
!5177 = !DILocalVariable(name: "mode", arg: 4, scope: !5172, file: !3, line: 99, type: !406)
!5178 = !DILocalVariable(name: "dev", arg: 5, scope: !5172, file: !3, line: 99, type: !599)
!5179 = !DILocalVariable(name: "inode", scope: !5172, file: !3, line: 101, type: !443)
!5180 = !DILocalVariable(name: "error", scope: !5172, file: !3, line: 102, type: !124)
!5181 = !DILocation(line: 98, column: 31, scope: !5172)
!5182 = !DILocation(line: 98, column: 52, scope: !5172)
!5183 = !DILocation(line: 99, column: 21, scope: !5172)
!5184 = !DILocation(line: 99, column: 37, scope: !5172)
!5185 = !DILocation(line: 99, column: 49, scope: !5172)
!5186 = !DILocation(line: 101, column: 2, scope: !5172)
!5187 = !DILocation(line: 101, column: 17, scope: !5172)
!5188 = !DILocation(line: 101, column: 41, scope: !5172)
!5189 = !DILocation(line: 101, column: 46, scope: !5172)
!5190 = !DILocation(line: 101, column: 52, scope: !5172)
!5191 = !DILocation(line: 101, column: 57, scope: !5172)
!5192 = !DILocation(line: 101, column: 63, scope: !5172)
!5193 = !DILocation(line: 101, column: 25, scope: !5172)
!5194 = !DILocation(line: 102, column: 2, scope: !5172)
!5195 = !DILocation(line: 102, column: 6, scope: !5172)
!5196 = !DILocation(line: 104, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 104, column: 6)
!5198 = !DILocation(line: 104, column: 6, scope: !5172)
!5199 = !DILocation(line: 105, column: 17, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 104, column: 13)
!5201 = !DILocation(line: 105, column: 25, scope: !5200)
!5202 = !DILocation(line: 105, column: 3, scope: !5200)
!5203 = !DILocation(line: 106, column: 8, scope: !5200)
!5204 = !DILocation(line: 106, column: 3, scope: !5200)
!5205 = !DILocation(line: 107, column: 9, scope: !5200)
!5206 = !DILocation(line: 108, column: 3, scope: !5200)
!5207 = !DILocation(line: 108, column: 8, scope: !5200)
!5208 = !DILocation(line: 108, column: 18, scope: !5200)
!5209 = !DILocation(line: 108, column: 42, scope: !5200)
!5210 = !DILocation(line: 109, column: 2, scope: !5200)
!5211 = !DILocation(line: 110, column: 9, scope: !5172)
!5212 = !DILocation(line: 111, column: 1, scope: !5172)
!5213 = !DILocation(line: 110, column: 2, scope: !5172)
!5214 = distinct !DISubprogram(name: "ramfs_tmpfile", scope: !3, file: !3, line: 148, type: !4108, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5215)
!5215 = !{!5216, !5217, !5218, !5219, !5220}
!5216 = !DILocalVariable(name: "idmap", arg: 1, scope: !5214, file: !3, line: 148, type: !3941)
!5217 = !DILocalVariable(name: "dir", arg: 2, scope: !5214, file: !3, line: 149, type: !443)
!5218 = !DILocalVariable(name: "file", arg: 3, scope: !5214, file: !3, line: 149, type: !659)
!5219 = !DILocalVariable(name: "mode", arg: 4, scope: !5214, file: !3, line: 149, type: !406)
!5220 = !DILocalVariable(name: "inode", scope: !5214, file: !3, line: 151, type: !443)
!5221 = !DILocation(line: 148, column: 44, scope: !5214)
!5222 = !DILocation(line: 149, column: 19, scope: !5214)
!5223 = !DILocation(line: 149, column: 37, scope: !5214)
!5224 = !DILocation(line: 149, column: 51, scope: !5214)
!5225 = !DILocation(line: 151, column: 2, scope: !5214)
!5226 = !DILocation(line: 151, column: 16, scope: !5214)
!5227 = !DILocation(line: 153, column: 26, scope: !5214)
!5228 = !DILocation(line: 153, column: 31, scope: !5214)
!5229 = !DILocation(line: 153, column: 37, scope: !5214)
!5230 = !DILocation(line: 153, column: 42, scope: !5214)
!5231 = !DILocation(line: 153, column: 10, scope: !5214)
!5232 = !DILocation(line: 153, column: 8, scope: !5214)
!5233 = !DILocation(line: 154, column: 7, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 154, column: 6)
!5235 = !DILocation(line: 154, column: 6, scope: !5214)
!5236 = !DILocation(line: 155, column: 3, scope: !5234)
!5237 = !DILocation(line: 156, column: 12, scope: !5214)
!5238 = !DILocation(line: 156, column: 18, scope: !5214)
!5239 = !DILocation(line: 156, column: 2, scope: !5214)
!5240 = !DILocation(line: 157, column: 28, scope: !5214)
!5241 = !DILocation(line: 157, column: 9, scope: !5214)
!5242 = !DILocation(line: 157, column: 2, scope: !5214)
!5243 = !DILocation(line: 158, column: 1, scope: !5214)
!5244 = !DISubprogram(name: "strlen", scope: !5245, file: !5245, line: 128, type: !5246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5245 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!221, !240}
!5248 = !DISubprogram(name: "page_symlink", scope: !87, file: !87, line: 3091, type: !5249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!124, !443, !240, !124}
!5251 = !DISubprogram(name: "d_instantiate", scope: !480, file: !480, line: 221, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5252 = distinct !DISubprogram(name: "dget", scope: !480, file: !480, line: 317, type: !5253, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5255)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!478, !478}
!5255 = !{!5256}
!5256 = !DILocalVariable(name: "dentry", arg: 1, scope: !5252, file: !480, line: 317, type: !478)
!5257 = !DILocation(line: 317, column: 50, scope: !5252)
!5258 = !DILocation(line: 319, column: 6, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5252, file: !480, line: 319, column: 6)
!5260 = !DILocation(line: 319, column: 6, scope: !5252)
!5261 = !DILocation(line: 320, column: 16, scope: !5259)
!5262 = !DILocation(line: 320, column: 24, scope: !5259)
!5263 = !DILocation(line: 320, column: 3, scope: !5259)
!5264 = !DILocation(line: 321, column: 9, scope: !5252)
!5265 = !DILocation(line: 321, column: 2, scope: !5252)
!5266 = !DISubprogram(name: "iput", scope: !87, file: !87, line: 2459, type: !1823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5267 = !DISubprogram(name: "lockref_get", scope: !529, file: !529, line: 37, type: !5268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{null, !5270}
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!5271 = !DISubprogram(name: "d_tmpfile", scope: !480, file: !480, line: 254, type: !5272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{null, !659, !443}
!5274 = distinct !DISubprogram(name: "finish_open_simple", scope: !87, file: !87, line: 2556, type: !5275, scopeLine: 2557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5277)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!124, !659, !124}
!5277 = !{!5278, !5279}
!5278 = !DILocalVariable(name: "file", arg: 1, scope: !5274, file: !87, line: 2556, type: !659)
!5279 = !DILocalVariable(name: "error", arg: 2, scope: !5274, file: !87, line: 2556, type: !124)
!5280 = !DILocation(line: 2556, column: 51, scope: !5274)
!5281 = !DILocation(line: 2556, column: 61, scope: !5274)
!5282 = !DILocation(line: 2558, column: 6, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5274, file: !87, line: 2558, column: 6)
!5284 = !DILocation(line: 2558, column: 6, scope: !5274)
!5285 = !DILocation(line: 2559, column: 10, scope: !5283)
!5286 = !DILocation(line: 2559, column: 3, scope: !5283)
!5287 = !DILocation(line: 2561, column: 21, scope: !5274)
!5288 = !DILocation(line: 2561, column: 27, scope: !5274)
!5289 = !DILocation(line: 2561, column: 33, scope: !5274)
!5290 = !DILocation(line: 2561, column: 40, scope: !5274)
!5291 = !DILocation(line: 2561, column: 9, scope: !5274)
!5292 = !DILocation(line: 2561, column: 2, scope: !5274)
!5293 = !DILocation(line: 2562, column: 1, scope: !5274)
!5294 = !DISubprogram(name: "finish_open", scope: !87, file: !87, line: 2551, type: !5295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!124, !659, !478, !1632}
!5297 = distinct !DISubprogram(name: "kmalloc", scope: !199, file: !199, line: 591, type: !4959, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5298)
!5298 = !{!5299, !5300, !5301}
!5299 = !DILocalVariable(name: "size", arg: 1, scope: !5297, file: !199, line: 591, type: !411)
!5300 = !DILocalVariable(name: "flags", arg: 2, scope: !5297, file: !199, line: 591, type: !212)
!5301 = !DILocalVariable(name: "index", scope: !5302, file: !199, line: 594, type: !7)
!5302 = distinct !DILexicalBlock(scope: !5303, file: !199, line: 593, column: 42)
!5303 = distinct !DILexicalBlock(scope: !5297, file: !199, line: 593, column: 6)
!5304 = !DILocation(line: 591, column: 61, scope: !5297)
!5305 = !DILocation(line: 591, column: 73, scope: !5297)
!5306 = !DILocation(line: 593, column: 27, scope: !5303)
!5307 = !DILocation(line: 593, column: 6, scope: !5303)
!5308 = !DILocation(line: 593, column: 33, scope: !5303)
!5309 = !DILocation(line: 593, column: 36, scope: !5303)
!5310 = !DILocation(line: 593, column: 6, scope: !5297)
!5311 = !DILocation(line: 594, column: 3, scope: !5302)
!5312 = !DILocation(line: 594, column: 16, scope: !5302)
!5313 = !DILocation(line: 596, column: 7, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5302, file: !199, line: 596, column: 7)
!5315 = !DILocation(line: 596, column: 12, scope: !5314)
!5316 = !DILocation(line: 596, column: 7, scope: !5302)
!5317 = !DILocation(line: 597, column: 25, scope: !5314)
!5318 = !DILocation(line: 597, column: 31, scope: !5314)
!5319 = !DILocation(line: 597, column: 11, scope: !5314)
!5320 = !DILocation(line: 597, column: 4, scope: !5314)
!5321 = !DILocation(line: 599, column: 11, scope: !5302)
!5322 = !DILocation(line: 599, column: 9, scope: !5302)
!5323 = !DILocation(line: 601, column: 33, scope: !5302)
!5324 = !DILocation(line: 601, column: 40, scope: !5302)
!5325 = !DILocation(line: 601, column: 20, scope: !5302)
!5326 = !DILocation(line: 601, column: 5, scope: !5302)
!5327 = !DILocation(line: 601, column: 51, scope: !5302)
!5328 = !DILocation(line: 602, column: 5, scope: !5302)
!5329 = !DILocation(line: 602, column: 12, scope: !5302)
!5330 = !DILocation(line: 600, column: 10, scope: !5302)
!5331 = !DILocation(line: 600, column: 3, scope: !5302)
!5332 = !DILocation(line: 603, column: 2, scope: !5303)
!5333 = !DILocation(line: 604, column: 19, scope: !5297)
!5334 = !DILocation(line: 604, column: 25, scope: !5297)
!5335 = !DILocation(line: 604, column: 9, scope: !5297)
!5336 = !DILocation(line: 604, column: 2, scope: !5297)
!5337 = !DILocation(line: 605, column: 1, scope: !5297)
!5338 = !DISubprogram(name: "kmalloc_large", scope: !199, file: !199, line: 531, type: !4959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5339 = distinct !DISubprogram(name: "__kmalloc_index", scope: !199, file: !199, line: 444, type: !5340, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5342)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!7, !411, !883}
!5342 = !{!5343, !5344}
!5343 = !DILocalVariable(name: "size", arg: 1, scope: !5339, file: !199, line: 444, type: !411)
!5344 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5339, file: !199, line: 445, type: !883)
!5345 = !DILocation(line: 444, column: 60, scope: !5339)
!5346 = !DILocation(line: 445, column: 16, scope: !5339)
!5347 = !DILocation(line: 447, column: 7, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 447, column: 6)
!5349 = !DILocation(line: 447, column: 6, scope: !5339)
!5350 = !DILocation(line: 448, column: 3, scope: !5348)
!5351 = !DILocation(line: 450, column: 6, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 450, column: 6)
!5353 = !DILocation(line: 450, column: 11, scope: !5352)
!5354 = !DILocation(line: 450, column: 6, scope: !5339)
!5355 = !DILocation(line: 451, column: 3, scope: !5352)
!5356 = !DILocation(line: 453, column: 32, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 453, column: 6)
!5358 = !DILocation(line: 453, column: 37, scope: !5357)
!5359 = !DILocation(line: 453, column: 42, scope: !5357)
!5360 = !DILocation(line: 453, column: 45, scope: !5357)
!5361 = !DILocation(line: 453, column: 50, scope: !5357)
!5362 = !DILocation(line: 453, column: 6, scope: !5339)
!5363 = !DILocation(line: 454, column: 3, scope: !5357)
!5364 = !DILocation(line: 455, column: 32, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 455, column: 6)
!5366 = !DILocation(line: 455, column: 37, scope: !5365)
!5367 = !DILocation(line: 455, column: 43, scope: !5365)
!5368 = !DILocation(line: 455, column: 46, scope: !5365)
!5369 = !DILocation(line: 455, column: 51, scope: !5365)
!5370 = !DILocation(line: 455, column: 6, scope: !5339)
!5371 = !DILocation(line: 456, column: 3, scope: !5365)
!5372 = !DILocation(line: 457, column: 6, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 457, column: 6)
!5374 = !DILocation(line: 457, column: 11, scope: !5373)
!5375 = !DILocation(line: 457, column: 6, scope: !5339)
!5376 = !DILocation(line: 457, column: 26, scope: !5373)
!5377 = !DILocation(line: 458, column: 6, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 458, column: 6)
!5379 = !DILocation(line: 458, column: 11, scope: !5378)
!5380 = !DILocation(line: 458, column: 6, scope: !5339)
!5381 = !DILocation(line: 458, column: 26, scope: !5378)
!5382 = !DILocation(line: 459, column: 6, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 459, column: 6)
!5384 = !DILocation(line: 459, column: 11, scope: !5383)
!5385 = !DILocation(line: 459, column: 6, scope: !5339)
!5386 = !DILocation(line: 459, column: 26, scope: !5383)
!5387 = !DILocation(line: 460, column: 6, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 460, column: 6)
!5389 = !DILocation(line: 460, column: 11, scope: !5388)
!5390 = !DILocation(line: 460, column: 6, scope: !5339)
!5391 = !DILocation(line: 460, column: 26, scope: !5388)
!5392 = !DILocation(line: 461, column: 6, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 461, column: 6)
!5394 = !DILocation(line: 461, column: 11, scope: !5393)
!5395 = !DILocation(line: 461, column: 6, scope: !5339)
!5396 = !DILocation(line: 461, column: 26, scope: !5393)
!5397 = !DILocation(line: 462, column: 6, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 462, column: 6)
!5399 = !DILocation(line: 462, column: 11, scope: !5398)
!5400 = !DILocation(line: 462, column: 6, scope: !5339)
!5401 = !DILocation(line: 462, column: 26, scope: !5398)
!5402 = !DILocation(line: 463, column: 6, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 463, column: 6)
!5404 = !DILocation(line: 463, column: 11, scope: !5403)
!5405 = !DILocation(line: 463, column: 6, scope: !5339)
!5406 = !DILocation(line: 463, column: 26, scope: !5403)
!5407 = !DILocation(line: 464, column: 6, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 464, column: 6)
!5409 = !DILocation(line: 464, column: 11, scope: !5408)
!5410 = !DILocation(line: 464, column: 6, scope: !5339)
!5411 = !DILocation(line: 464, column: 26, scope: !5408)
!5412 = !DILocation(line: 465, column: 6, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 465, column: 6)
!5414 = !DILocation(line: 465, column: 11, scope: !5413)
!5415 = !DILocation(line: 465, column: 6, scope: !5339)
!5416 = !DILocation(line: 465, column: 26, scope: !5413)
!5417 = !DILocation(line: 466, column: 6, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 466, column: 6)
!5419 = !DILocation(line: 466, column: 11, scope: !5418)
!5420 = !DILocation(line: 466, column: 6, scope: !5339)
!5421 = !DILocation(line: 466, column: 26, scope: !5418)
!5422 = !DILocation(line: 467, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 467, column: 6)
!5424 = !DILocation(line: 467, column: 11, scope: !5423)
!5425 = !DILocation(line: 467, column: 6, scope: !5339)
!5426 = !DILocation(line: 467, column: 26, scope: !5423)
!5427 = !DILocation(line: 468, column: 6, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 468, column: 6)
!5429 = !DILocation(line: 468, column: 11, scope: !5428)
!5430 = !DILocation(line: 468, column: 6, scope: !5339)
!5431 = !DILocation(line: 468, column: 26, scope: !5428)
!5432 = !DILocation(line: 469, column: 6, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 469, column: 6)
!5434 = !DILocation(line: 469, column: 11, scope: !5433)
!5435 = !DILocation(line: 469, column: 6, scope: !5339)
!5436 = !DILocation(line: 469, column: 26, scope: !5433)
!5437 = !DILocation(line: 470, column: 6, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 470, column: 6)
!5439 = !DILocation(line: 470, column: 11, scope: !5438)
!5440 = !DILocation(line: 470, column: 6, scope: !5339)
!5441 = !DILocation(line: 470, column: 26, scope: !5438)
!5442 = !DILocation(line: 471, column: 6, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 471, column: 6)
!5444 = !DILocation(line: 471, column: 11, scope: !5443)
!5445 = !DILocation(line: 471, column: 6, scope: !5339)
!5446 = !DILocation(line: 471, column: 26, scope: !5443)
!5447 = !DILocation(line: 472, column: 6, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 472, column: 6)
!5449 = !DILocation(line: 472, column: 11, scope: !5448)
!5450 = !DILocation(line: 472, column: 6, scope: !5339)
!5451 = !DILocation(line: 472, column: 26, scope: !5448)
!5452 = !DILocation(line: 473, column: 6, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 473, column: 6)
!5454 = !DILocation(line: 473, column: 11, scope: !5453)
!5455 = !DILocation(line: 473, column: 6, scope: !5339)
!5456 = !DILocation(line: 473, column: 26, scope: !5453)
!5457 = !DILocation(line: 474, column: 6, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 474, column: 6)
!5459 = !DILocation(line: 474, column: 11, scope: !5458)
!5460 = !DILocation(line: 474, column: 6, scope: !5339)
!5461 = !DILocation(line: 474, column: 27, scope: !5458)
!5462 = !DILocation(line: 475, column: 6, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 475, column: 6)
!5464 = !DILocation(line: 475, column: 11, scope: !5463)
!5465 = !DILocation(line: 475, column: 6, scope: !5339)
!5466 = !DILocation(line: 475, column: 32, scope: !5463)
!5467 = !DILocation(line: 477, column: 50, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5339, file: !199, line: 477, column: 6)
!5469 = !{i8 0, i8 2}
!5470 = !DILocation(line: 477, column: 6, scope: !5339)
!5471 = !DILocation(line: 478, column: 3, scope: !5468)
!5472 = !DILocation(line: 478, column: 3, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !199, line: 478, column: 3)
!5474 = distinct !DILexicalBlock(scope: !5468, file: !199, line: 478, column: 3)
!5475 = !{i32 -2141717960}
!5476 = !DILocation(line: 478, column: 3, scope: !5474)
!5477 = !DILocation(line: 480, column: 3, scope: !5468)
!5478 = !DILocation(line: 480, column: 3, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5468, file: !199, line: 480, column: 3)
!5480 = !DILocation(line: 480, column: 3, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5479, file: !199, line: 480, column: 3)
!5482 = !DILocation(line: 480, column: 3, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5479, file: !199, line: 480, column: 3)
!5484 = !{i64 2153249539, i64 2153249568, i64 2153249614, i64 2153249672, i64 2153249726, i64 2153249780, i64 2153249835, i64 2153249866}
!5485 = !DILocation(line: 483, column: 2, scope: !5339)
!5486 = !DILocation(line: 484, column: 1, scope: !5339)
!5487 = !DISubprogram(name: "kmalloc_trace", scope: !199, file: !199, line: 525, type: !5488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!214, !5490, !212, !411}
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5492, line: 325, flags: DIFlagFwdDecl)
!5492 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5493 = distinct !DISubprogram(name: "kmalloc_type", scope: !199, file: !199, line: 401, type: !5494, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5496)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{!198, !212, !221}
!5496 = !{!5497, !5498}
!5497 = !DILocalVariable(name: "flags", arg: 1, scope: !5493, file: !199, line: 401, type: !212)
!5498 = !DILocalVariable(name: "caller", arg: 2, scope: !5493, file: !199, line: 401, type: !221)
!5499 = !DILocation(line: 401, column: 67, scope: !5493)
!5500 = !DILocation(line: 401, column: 88, scope: !5493)
!5501 = !DILocation(line: 407, column: 6, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5493, file: !199, line: 407, column: 6)
!5503 = !DILocation(line: 407, column: 6, scope: !5493)
!5504 = !DILocation(line: 413, column: 3, scope: !5502)
!5505 = !DILocation(line: 423, column: 38, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5493, file: !199, line: 423, column: 6)
!5507 = !DILocation(line: 423, column: 44, scope: !5506)
!5508 = !DILocation(line: 423, column: 6, scope: !5493)
!5509 = !DILocation(line: 424, column: 3, scope: !5506)
!5510 = !DILocation(line: 426, column: 3, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5493, file: !199, line: 425, column: 6)
!5512 = !DILocation(line: 429, column: 1, scope: !5493)
!5513 = !DISubprogram(name: "__kmalloc", scope: !199, file: !199, line: 488, type: !4959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5514 = !DISubprogram(name: "__compiletime_assert_245", scope: !199, file: !199, line: 478, type: !3311, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5515 = distinct !DISubprogram(name: "ramfs_free_fc", scope: !3, file: !3, line: 256, type: !624, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5516)
!5516 = !{!5517}
!5517 = !DILocalVariable(name: "fc", arg: 1, scope: !5515, file: !3, line: 256, type: !614)
!5518 = !DILocation(line: 256, column: 46, scope: !5515)
!5519 = !DILocation(line: 258, column: 8, scope: !5515)
!5520 = !DILocation(line: 258, column: 12, scope: !5515)
!5521 = !DILocation(line: 258, column: 2, scope: !5515)
!5522 = !DILocation(line: 259, column: 1, scope: !5515)
!5523 = distinct !DISubprogram(name: "ramfs_parse_param", scope: !3, file: !3, line: 200, type: !632, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5524)
!5524 = !{!5525, !5526, !5527, !5528, !5529}
!5525 = !DILocalVariable(name: "fc", arg: 1, scope: !5523, file: !3, line: 200, type: !614)
!5526 = !DILocalVariable(name: "param", arg: 2, scope: !5523, file: !3, line: 200, type: !634)
!5527 = !DILocalVariable(name: "result", scope: !5523, file: !3, line: 202, type: !4764)
!5528 = !DILocalVariable(name: "fsi", scope: !5523, file: !3, line: 203, type: !4929)
!5529 = !DILocalVariable(name: "opt", scope: !5523, file: !3, line: 204, type: !124)
!5530 = !DILocation(line: 200, column: 49, scope: !5523)
!5531 = !DILocation(line: 200, column: 74, scope: !5523)
!5532 = !DILocation(line: 202, column: 2, scope: !5523)
!5533 = !DILocation(line: 202, column: 25, scope: !5523)
!5534 = !DILocation(line: 203, column: 2, scope: !5523)
!5535 = !DILocation(line: 203, column: 24, scope: !5523)
!5536 = !DILocation(line: 203, column: 30, scope: !5523)
!5537 = !DILocation(line: 203, column: 34, scope: !5523)
!5538 = !DILocation(line: 204, column: 2, scope: !5523)
!5539 = !DILocation(line: 204, column: 6, scope: !5523)
!5540 = !DILocation(line: 206, column: 17, scope: !5523)
!5541 = !DILocation(line: 206, column: 42, scope: !5523)
!5542 = !DILocation(line: 206, column: 8, scope: !5523)
!5543 = !DILocation(line: 206, column: 6, scope: !5523)
!5544 = !DILocation(line: 207, column: 6, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 207, column: 6)
!5546 = !DILocation(line: 207, column: 10, scope: !5545)
!5547 = !DILocation(line: 207, column: 6, scope: !5523)
!5548 = !DILocation(line: 208, column: 35, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 207, column: 24)
!5550 = !DILocation(line: 208, column: 39, scope: !5549)
!5551 = !DILocation(line: 208, column: 9, scope: !5549)
!5552 = !DILocation(line: 208, column: 7, scope: !5549)
!5553 = !DILocation(line: 209, column: 7, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 209, column: 7)
!5555 = !DILocation(line: 209, column: 11, scope: !5554)
!5556 = !DILocation(line: 209, column: 7, scope: !5549)
!5557 = !DILocation(line: 210, column: 11, scope: !5554)
!5558 = !DILocation(line: 210, column: 4, scope: !5554)
!5559 = !DILocation(line: 217, column: 3, scope: !5549)
!5560 = !DILocation(line: 219, column: 6, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 219, column: 6)
!5562 = !DILocation(line: 219, column: 10, scope: !5561)
!5563 = !DILocation(line: 219, column: 6, scope: !5523)
!5564 = !DILocation(line: 220, column: 10, scope: !5561)
!5565 = !DILocation(line: 220, column: 3, scope: !5561)
!5566 = !DILocation(line: 222, column: 10, scope: !5523)
!5567 = !DILocation(line: 222, column: 2, scope: !5523)
!5568 = !DILocation(line: 224, column: 33, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 222, column: 15)
!5570 = !DILocation(line: 224, column: 41, scope: !5569)
!5571 = !DILocation(line: 224, column: 26, scope: !5569)
!5572 = !DILocation(line: 224, column: 3, scope: !5569)
!5573 = !DILocation(line: 224, column: 8, scope: !5569)
!5574 = !DILocation(line: 224, column: 19, scope: !5569)
!5575 = !DILocation(line: 224, column: 24, scope: !5569)
!5576 = !DILocation(line: 225, column: 3, scope: !5569)
!5577 = !DILocation(line: 228, column: 2, scope: !5523)
!5578 = !DILocation(line: 229, column: 1, scope: !5523)
!5579 = distinct !DISubprogram(name: "ramfs_get_tree", scope: !3, file: !3, line: 251, type: !612, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5580)
!5580 = !{!5581}
!5581 = !DILocalVariable(name: "fc", arg: 1, scope: !5579, file: !3, line: 251, type: !614)
!5582 = !DILocation(line: 251, column: 46, scope: !5579)
!5583 = !DILocation(line: 253, column: 24, scope: !5579)
!5584 = !DILocation(line: 253, column: 9, scope: !5579)
!5585 = !DILocation(line: 253, column: 2, scope: !5579)
!5586 = distinct !DISubprogram(name: "fs_parse", scope: !237, file: !237, line: 68, type: !5587, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5589)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!124, !614, !1789, !634, !4763}
!5589 = !{!5590, !5591, !5592, !5593}
!5590 = !DILocalVariable(name: "fc", arg: 1, scope: !5586, file: !237, line: 68, type: !614)
!5591 = !DILocalVariable(name: "desc", arg: 2, scope: !5586, file: !237, line: 69, type: !1789)
!5592 = !DILocalVariable(name: "param", arg: 3, scope: !5586, file: !237, line: 70, type: !634)
!5593 = !DILocalVariable(name: "result", arg: 4, scope: !5586, file: !237, line: 71, type: !4763)
!5594 = !DILocation(line: 68, column: 47, scope: !5586)
!5595 = !DILocation(line: 69, column: 39, scope: !5586)
!5596 = !DILocation(line: 70, column: 28, scope: !5586)
!5597 = !DILocation(line: 71, column: 31, scope: !5586)
!5598 = !DILocation(line: 73, column: 21, scope: !5586)
!5599 = !DILocation(line: 73, column: 25, scope: !5586)
!5600 = !DILocation(line: 73, column: 30, scope: !5586)
!5601 = !DILocation(line: 73, column: 36, scope: !5586)
!5602 = !DILocation(line: 73, column: 43, scope: !5586)
!5603 = !DILocation(line: 73, column: 9, scope: !5586)
!5604 = !DILocation(line: 73, column: 2, scope: !5586)
!5605 = !DISubprogram(name: "vfs_parse_fs_param_source", scope: !6, file: !6, line: 144, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5606 = !DISubprogram(name: "__fs_parse", scope: !237, file: !237, line: 63, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5607 = !DISubprogram(name: "get_tree_nodev", scope: !6, file: !6, line: 150, type: !5608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5608 = !DISubroutineType(types: !5609)
!5609 = !{!124, !614, !5610}
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!124, !594, !614}
!5613 = distinct !DISubprogram(name: "ramfs_fill_super", scope: !3, file: !3, line: 231, type: !5611, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5614)
!5614 = !{!5615, !5616, !5617, !5618}
!5615 = !DILocalVariable(name: "sb", arg: 1, scope: !5613, file: !3, line: 231, type: !594)
!5616 = !DILocalVariable(name: "fc", arg: 2, scope: !5613, file: !3, line: 231, type: !614)
!5617 = !DILocalVariable(name: "fsi", scope: !5613, file: !3, line: 233, type: !4929)
!5618 = !DILocalVariable(name: "inode", scope: !5613, file: !3, line: 234, type: !443)
!5619 = !DILocation(line: 231, column: 49, scope: !5613)
!5620 = !DILocation(line: 231, column: 72, scope: !5613)
!5621 = !DILocation(line: 233, column: 2, scope: !5613)
!5622 = !DILocation(line: 233, column: 24, scope: !5613)
!5623 = !DILocation(line: 233, column: 30, scope: !5613)
!5624 = !DILocation(line: 233, column: 34, scope: !5613)
!5625 = !DILocation(line: 234, column: 2, scope: !5613)
!5626 = !DILocation(line: 234, column: 16, scope: !5613)
!5627 = !DILocation(line: 236, column: 2, scope: !5613)
!5628 = !DILocation(line: 236, column: 6, scope: !5613)
!5629 = !DILocation(line: 236, column: 18, scope: !5613)
!5630 = !DILocation(line: 237, column: 2, scope: !5613)
!5631 = !DILocation(line: 237, column: 6, scope: !5613)
!5632 = !DILocation(line: 237, column: 19, scope: !5613)
!5633 = !DILocation(line: 238, column: 2, scope: !5613)
!5634 = !DILocation(line: 238, column: 6, scope: !5613)
!5635 = !DILocation(line: 238, column: 23, scope: !5613)
!5636 = !DILocation(line: 239, column: 2, scope: !5613)
!5637 = !DILocation(line: 239, column: 6, scope: !5613)
!5638 = !DILocation(line: 239, column: 15, scope: !5613)
!5639 = !DILocation(line: 240, column: 2, scope: !5613)
!5640 = !DILocation(line: 240, column: 6, scope: !5613)
!5641 = !DILocation(line: 240, column: 12, scope: !5613)
!5642 = !DILocation(line: 241, column: 2, scope: !5613)
!5643 = !DILocation(line: 241, column: 6, scope: !5613)
!5644 = !DILocation(line: 241, column: 19, scope: !5613)
!5645 = !DILocation(line: 243, column: 26, scope: !5613)
!5646 = !DILocation(line: 243, column: 46, scope: !5613)
!5647 = !DILocation(line: 243, column: 51, scope: !5613)
!5648 = !DILocation(line: 243, column: 62, scope: !5613)
!5649 = !DILocation(line: 243, column: 44, scope: !5613)
!5650 = !DILocation(line: 243, column: 36, scope: !5613)
!5651 = !DILocation(line: 243, column: 10, scope: !5613)
!5652 = !DILocation(line: 243, column: 8, scope: !5613)
!5653 = !DILocation(line: 244, column: 27, scope: !5613)
!5654 = !DILocation(line: 244, column: 15, scope: !5613)
!5655 = !DILocation(line: 244, column: 2, scope: !5613)
!5656 = !DILocation(line: 244, column: 6, scope: !5613)
!5657 = !DILocation(line: 244, column: 13, scope: !5613)
!5658 = !DILocation(line: 245, column: 7, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 245, column: 6)
!5660 = !DILocation(line: 245, column: 11, scope: !5659)
!5661 = !DILocation(line: 245, column: 6, scope: !5613)
!5662 = !DILocation(line: 246, column: 3, scope: !5659)
!5663 = !DILocation(line: 248, column: 2, scope: !5613)
!5664 = !DILocation(line: 249, column: 1, scope: !5613)
!5665 = !DISubprogram(name: "d_make_root", scope: !480, file: !480, line: 249, type: !5666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{!478, !443}
!5668 = distinct !DISubprogram(name: "ramfs_show_options", scope: !3, file: !3, line: 176, type: !1888, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5669)
!5669 = !{!5670, !5671, !5672}
!5670 = !DILocalVariable(name: "m", arg: 1, scope: !5668, file: !3, line: 176, type: !1690)
!5671 = !DILocalVariable(name: "root", arg: 2, scope: !5668, file: !3, line: 176, type: !478)
!5672 = !DILocalVariable(name: "fsi", scope: !5668, file: !3, line: 178, type: !4929)
!5673 = !DILocation(line: 176, column: 48, scope: !5668)
!5674 = !DILocation(line: 176, column: 66, scope: !5668)
!5675 = !DILocation(line: 178, column: 2, scope: !5668)
!5676 = !DILocation(line: 178, column: 24, scope: !5668)
!5677 = !DILocation(line: 178, column: 30, scope: !5668)
!5678 = !DILocation(line: 178, column: 36, scope: !5668)
!5679 = !DILocation(line: 178, column: 42, scope: !5668)
!5680 = !DILocation(line: 180, column: 6, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 180, column: 6)
!5682 = !DILocation(line: 180, column: 11, scope: !5681)
!5683 = !DILocation(line: 180, column: 22, scope: !5681)
!5684 = !DILocation(line: 180, column: 27, scope: !5681)
!5685 = !DILocation(line: 180, column: 6, scope: !5668)
!5686 = !DILocation(line: 181, column: 14, scope: !5681)
!5687 = !DILocation(line: 181, column: 29, scope: !5681)
!5688 = !DILocation(line: 181, column: 34, scope: !5681)
!5689 = !DILocation(line: 181, column: 45, scope: !5681)
!5690 = !DILocation(line: 181, column: 3, scope: !5681)
!5691 = !DILocation(line: 183, column: 1, scope: !5668)
!5692 = !DILocation(line: 182, column: 2, scope: !5668)
!5693 = !DISubprogram(name: "seq_printf", scope: !1692, file: !1692, line: 119, type: !5694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{null, !1690, !240, null}
!5696 = !DISubprogram(name: "register_filesystem", scope: !87, file: !87, line: 2445, type: !5697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!124, !605}
