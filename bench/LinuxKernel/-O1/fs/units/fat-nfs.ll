; ModuleID = 'fs/fat/nfs.c'
source_filename = "fs/fat/nfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.22, %struct.list_head, %struct.list_head, %union.anon.23 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.18, ptr }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%union.anon.22 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.23 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i64, i64, i16, i64, i64, i64, i64, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.14 = type { %struct.callback_head }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.fat_fid = type { i32, i32, i16, i16, i32, i32 }
%struct.buffer_head = type { i64, ptr, %union.anon.17, i64, i64, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%union.anon.17 = type { ptr }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
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
%struct.msdos_inode_info = type { %struct.spinlock, %struct.list_head, i32, i32, i64, i32, i32, i32, i64, %struct.hlist_node, %struct.hlist_node, %struct.rw_semaphore, %struct.timespec64, %struct.inode }
%struct.fat_slot_info = type { i64, i64, i32, ptr, ptr }

@fat_export_ops = hidden constant %struct.export_operations { ptr null, ptr @fat_fh_to_dentry, ptr @fat_fh_to_parent, ptr null, ptr @fat_get_parent, ptr null, ptr null, ptr null, ptr null, i64 0 }, align 8, !dbg !0
@fat_export_ops_nostale = hidden constant %struct.export_operations { ptr @fat_encode_fh_nostale, ptr @fat_fh_to_dentry_nostale, ptr @fat_fh_to_parent_nostale, ptr null, ptr @fat_get_parent, ptr null, ptr null, ptr null, ptr null, i64 0 }, align 8, !dbg !4622
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !4624
@.str.1 = private unnamed_addr constant [50 x i8] c"unable to read block(%llu) for building NFS inode\00", align 1, !dbg !4627
@.str.2 = private unnamed_addr constant [13 x i8] c"fs/fat/nfs.c\00", align 1, !dbg !4632
@.str.3 = private unnamed_addr constant [43 x i8] c"unable to read cluster of parent directory\00", align 1, !dbg !4637

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 16 !dbg !4651 {
entry:
  %sb.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %fh_len.addr = alloca i32, align 4
  %fh_type.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4653, metadata !DIExpression()), !dbg !4657
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !4654, metadata !DIExpression()), !dbg !4658
  store i32 %fh_len, ptr %fh_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_len.addr, metadata !4655, metadata !DIExpression()), !dbg !4659
  store i32 %fh_type, ptr %fh_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_type.addr, metadata !4656, metadata !DIExpression()), !dbg !4660
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4661
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !4662
  %2 = load i32, ptr %fh_len.addr, align 4, !dbg !4663
  %3 = load i32, ptr %fh_type.addr, align 4, !dbg !4664
  %call = call ptr @generic_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef @fat_nfs_get_inode) #8, !dbg !4665
  ret ptr %call, !dbg !4666
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 16 !dbg !4667 {
entry:
  %sb.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %fh_len.addr = alloca i32, align 4
  %fh_type.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4669, metadata !DIExpression()), !dbg !4673
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !4670, metadata !DIExpression()), !dbg !4674
  store i32 %fh_len, ptr %fh_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_len.addr, metadata !4671, metadata !DIExpression()), !dbg !4675
  store i32 %fh_type, ptr %fh_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_type.addr, metadata !4672, metadata !DIExpression()), !dbg !4676
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4677
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !4678
  %2 = load i32, ptr %fh_len.addr, align 4, !dbg !4679
  %3 = load i32, ptr %fh_type.addr, align 4, !dbg !4680
  %call = call ptr @generic_fh_to_parent(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef @fat_nfs_get_inode) #8, !dbg !4681
  ret ptr %call, !dbg !4682
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_get_parent(ptr noundef %child_dir) #0 align 16 !dbg !4683 {
entry:
  %child_dir.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %bh = alloca ptr, align 8
  %de = alloca ptr, align 8
  %parent_inode = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %parent_logstart = alloca i32, align 4
  store ptr %child_dir, ptr %child_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child_dir.addr, metadata !4685, metadata !DIExpression()), !dbg !4815
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #9, !dbg !4816
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4686, metadata !DIExpression()), !dbg !4817
  %0 = load ptr, ptr %child_dir.addr, align 8, !dbg !4818
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !4819
  %1 = load ptr, ptr %d_sb, align 8, !dbg !4819
  store ptr %1, ptr %sb, align 8, !dbg !4817
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #9, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %bh, metadata !4687, metadata !DIExpression()), !dbg !4821
  store ptr null, ptr %bh, align 8, !dbg !4821
  call void @llvm.lifetime.start.p0(i64 8, ptr %de) #9, !dbg !4822
  call void @llvm.dbg.declare(metadata ptr %de, metadata !4713, metadata !DIExpression()), !dbg !4823
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_inode) #9, !dbg !4824
  call void @llvm.dbg.declare(metadata ptr %parent_inode, metadata !4714, metadata !DIExpression()), !dbg !4825
  store ptr null, ptr %parent_inode, align 8, !dbg !4825
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #9, !dbg !4826
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4715, metadata !DIExpression()), !dbg !4827
  %2 = load ptr, ptr %sb, align 8, !dbg !4828
  %call = call ptr @MSDOS_SB(ptr noundef %2) #8, !dbg !4829
  store ptr %call, ptr %sbi, align 8, !dbg !4827
  %3 = load ptr, ptr %child_dir.addr, align 8, !dbg !4830
  %call1 = call ptr @d_inode(ptr noundef %3) #8, !dbg !4831
  %call2 = call i32 @fat_get_dotdot_entry(ptr noundef %call1, ptr noundef %bh, ptr noundef %de) #8, !dbg !4832
  %tobool = icmp ne i32 %call2, 0, !dbg !4832
  br i1 %tobool, label %if.end9, label %if.then, !dbg !4833

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %parent_logstart) #9, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %parent_logstart, metadata !4812, metadata !DIExpression()), !dbg !4835
  %4 = load ptr, ptr %sbi, align 8, !dbg !4836
  %5 = load ptr, ptr %de, align 8, !dbg !4837
  %call3 = call i32 @fat_get_start(ptr noundef %4, ptr noundef %5) #8, !dbg !4838
  store i32 %call3, ptr %parent_logstart, align 4, !dbg !4835
  %6 = load ptr, ptr %sb, align 8, !dbg !4839
  %7 = load i32, ptr %parent_logstart, align 4, !dbg !4840
  %call4 = call ptr @fat_dget(ptr noundef %6, i32 noundef %7) #8, !dbg !4841
  store ptr %call4, ptr %parent_inode, align 8, !dbg !4842
  %8 = load ptr, ptr %parent_inode, align 8, !dbg !4843
  %tobool5 = icmp ne ptr %8, null, !dbg !4843
  br i1 %tobool5, label %if.end, label %land.lhs.true, !dbg !4845

land.lhs.true:                                    ; preds = %if.then
  %9 = load ptr, ptr %sbi, align 8, !dbg !4846
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, !dbg !4847
  %nfs = getelementptr inbounds %struct.fat_mount_options, ptr %options, i32 0, i32 10, !dbg !4848
  %10 = load i8, ptr %nfs, align 4, !dbg !4848
  %conv = zext i8 %10 to i32, !dbg !4846
  %cmp = icmp eq i32 %conv, 2, !dbg !4849
  br i1 %cmp, label %if.then7, label %if.end, !dbg !4850

if.then7:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %sb, align 8, !dbg !4851
  %12 = load i32, ptr %parent_logstart, align 4, !dbg !4852
  %call8 = call ptr @fat_rebuild_parent(ptr noundef %11, i32 noundef %12) #8, !dbg !4853
  store ptr %call8, ptr %parent_inode, align 8, !dbg !4854
  br label %if.end, !dbg !4855

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %parent_logstart) #9, !dbg !4856
  br label %if.end9, !dbg !4857

if.end9:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %bh, align 8, !dbg !4858
  call void @brelse(ptr noundef %13) #8, !dbg !4859
  %14 = load ptr, ptr %parent_inode, align 8, !dbg !4860
  %call10 = call ptr @d_obtain_alias(ptr noundef %14) #8, !dbg !4861
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #9, !dbg !4862
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_inode) #9, !dbg !4862
  call void @llvm.lifetime.end.p0(i64 8, ptr %de) #9, !dbg !4862
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #9, !dbg !4862
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #9, !dbg !4862
  ret ptr %call10, !dbg !4863
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fat_encode_fh_nostale(ptr noundef %inode, ptr noundef %fh, ptr noundef %lenp, ptr noundef %parent) #0 align 16 !dbg !4864 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %fh.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %sbi = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %i_pos = alloca i64, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4866, metadata !DIExpression()), !dbg !4875
  store ptr %fh, ptr %fh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fh.addr, metadata !4867, metadata !DIExpression()), !dbg !4876
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !4868, metadata !DIExpression()), !dbg !4877
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4869, metadata !DIExpression()), !dbg !4878
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !4879
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4870, metadata !DIExpression()), !dbg !4880
  %0 = load ptr, ptr %lenp.addr, align 8, !dbg !4881
  %1 = load i32, ptr %0, align 4, !dbg !4882
  store i32 %1, ptr %len, align 4, !dbg !4880
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #9, !dbg !4883
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4871, metadata !DIExpression()), !dbg !4884
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !4885
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 9, !dbg !4886
  %3 = load ptr, ptr %i_sb, align 8, !dbg !4886
  %call = call ptr @MSDOS_SB(ptr noundef %3) #8, !dbg !4887
  store ptr %call, ptr %sbi, align 8, !dbg !4884
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #9, !dbg !4888
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !4872, metadata !DIExpression()), !dbg !4889
  %4 = load ptr, ptr %fh.addr, align 8, !dbg !4890
  store ptr %4, ptr %fid, align 8, !dbg !4889
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_pos) #9, !dbg !4891
  call void @llvm.dbg.declare(metadata ptr %i_pos, metadata !4873, metadata !DIExpression()), !dbg !4892
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #9, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4874, metadata !DIExpression()), !dbg !4894
  store i32 113, ptr %type, align 4, !dbg !4894
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !4895
  %tobool = icmp ne ptr %5, null, !dbg !4895
  br i1 %tobool, label %if.then, label %if.else, !dbg !4897

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %len, align 4, !dbg !4898
  %conv = sext i32 %6 to i64, !dbg !4898
  %cmp = icmp ult i64 %conv, 5, !dbg !4901
  br i1 %cmp, label %if.then2, label %if.end, !dbg !4902

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %lenp.addr, align 8, !dbg !4903
  store i32 5, ptr %7, align 4, !dbg !4905
  store i32 255, ptr %retval, align 4, !dbg !4906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4906

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !4907

if.else:                                          ; preds = %entry
  %8 = load i32, ptr %len, align 4, !dbg !4908
  %cmp3 = icmp slt i32 %8, 3, !dbg !4911
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !4912

if.then5:                                         ; preds = %if.else
  %9 = load ptr, ptr %lenp.addr, align 8, !dbg !4913
  store i32 3, ptr %9, align 4, !dbg !4915
  store i32 255, ptr %retval, align 4, !dbg !4916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4916

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %10 = load ptr, ptr %sbi, align 8, !dbg !4917
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !4918
  %call8 = call i64 @fat_i_pos_read(ptr noundef %10, ptr noundef %11) #8, !dbg !4919
  store i64 %call8, ptr %i_pos, align 8, !dbg !4920
  %12 = load ptr, ptr %lenp.addr, align 8, !dbg !4921
  store i32 3, ptr %12, align 4, !dbg !4922
  %13 = load ptr, ptr %inode.addr, align 8, !dbg !4923
  %i_generation = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 44, !dbg !4924
  %14 = load i32, ptr %i_generation, align 8, !dbg !4924
  %15 = load ptr, ptr %fid, align 8, !dbg !4925
  %i_gen = getelementptr inbounds %struct.fat_fid, ptr %15, i32 0, i32 0, !dbg !4926
  store i32 %14, ptr %i_gen, align 4, !dbg !4927
  %16 = load i64, ptr %i_pos, align 8, !dbg !4928
  %and = and i64 %16, 4294967295, !dbg !4929
  %conv9 = trunc i64 %and to i32, !dbg !4928
  %17 = load ptr, ptr %fid, align 8, !dbg !4930
  %i_pos_low = getelementptr inbounds %struct.fat_fid, ptr %17, i32 0, i32 1, !dbg !4931
  store i32 %conv9, ptr %i_pos_low, align 4, !dbg !4932
  %18 = load i64, ptr %i_pos, align 8, !dbg !4933
  %shr = ashr i64 %18, 32, !dbg !4934
  %and10 = and i64 %shr, 65535, !dbg !4935
  %conv11 = trunc i64 %and10 to i16, !dbg !4936
  %19 = load ptr, ptr %fid, align 8, !dbg !4937
  %i_pos_hi = getelementptr inbounds %struct.fat_fid, ptr %19, i32 0, i32 2, !dbg !4938
  store i16 %conv11, ptr %i_pos_hi, align 4, !dbg !4939
  %20 = load ptr, ptr %parent.addr, align 8, !dbg !4940
  %tobool12 = icmp ne ptr %20, null, !dbg !4940
  br i1 %tobool12, label %if.then13, label %if.else21, !dbg !4942

if.then13:                                        ; preds = %if.end7
  %21 = load ptr, ptr %sbi, align 8, !dbg !4943
  %22 = load ptr, ptr %parent.addr, align 8, !dbg !4945
  %call14 = call i64 @fat_i_pos_read(ptr noundef %21, ptr noundef %22) #8, !dbg !4946
  store i64 %call14, ptr %i_pos, align 8, !dbg !4947
  %23 = load i64, ptr %i_pos, align 8, !dbg !4948
  %shr15 = ashr i64 %23, 32, !dbg !4949
  %and16 = and i64 %shr15, 65535, !dbg !4950
  %conv17 = trunc i64 %and16 to i16, !dbg !4951
  %24 = load ptr, ptr %fid, align 8, !dbg !4952
  %parent_i_pos_hi = getelementptr inbounds %struct.fat_fid, ptr %24, i32 0, i32 3, !dbg !4953
  store i16 %conv17, ptr %parent_i_pos_hi, align 2, !dbg !4954
  %25 = load i64, ptr %i_pos, align 8, !dbg !4955
  %and18 = and i64 %25, 4294967295, !dbg !4956
  %conv19 = trunc i64 %and18 to i32, !dbg !4955
  %26 = load ptr, ptr %fid, align 8, !dbg !4957
  %parent_i_pos_low = getelementptr inbounds %struct.fat_fid, ptr %26, i32 0, i32 4, !dbg !4958
  store i32 %conv19, ptr %parent_i_pos_low, align 4, !dbg !4959
  %27 = load ptr, ptr %parent.addr, align 8, !dbg !4960
  %i_generation20 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 44, !dbg !4961
  %28 = load i32, ptr %i_generation20, align 8, !dbg !4961
  %29 = load ptr, ptr %fid, align 8, !dbg !4962
  %parent_i_gen = getelementptr inbounds %struct.fat_fid, ptr %29, i32 0, i32 5, !dbg !4963
  store i32 %28, ptr %parent_i_gen, align 4, !dbg !4964
  store i32 114, ptr %type, align 4, !dbg !4965
  %30 = load ptr, ptr %lenp.addr, align 8, !dbg !4966
  store i32 5, ptr %30, align 4, !dbg !4967
  br label %if.end23, !dbg !4968

if.else21:                                        ; preds = %if.end7
  %31 = load ptr, ptr %fid, align 8, !dbg !4969
  %parent_i_pos_hi22 = getelementptr inbounds %struct.fat_fid, ptr %31, i32 0, i32 3, !dbg !4971
  store i16 0, ptr %parent_i_pos_hi22, align 2, !dbg !4972
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then13
  %32 = load i32, ptr %type, align 4, !dbg !4973
  store i32 %32, ptr %retval, align 4, !dbg !4974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4974

cleanup:                                          ; preds = %if.end23, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #9, !dbg !4975
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_pos) #9, !dbg !4975
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #9, !dbg !4975
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #9, !dbg !4975
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !4975
  %33 = load i32, ptr %retval, align 4, !dbg !4975
  ret i32 %33, !dbg !4975
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_fh_to_dentry_nostale(ptr noundef %sb, ptr noundef %fh, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 16 !dbg !4976 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %fh.addr = alloca ptr, align 8
  %fh_len.addr = alloca i32, align 4
  %fh_type.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %i_pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4978, metadata !DIExpression()), !dbg !4985
  store ptr %fh, ptr %fh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fh.addr, metadata !4979, metadata !DIExpression()), !dbg !4986
  store i32 %fh_len, ptr %fh_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_len.addr, metadata !4980, metadata !DIExpression()), !dbg !4987
  store i32 %fh_type, ptr %fh_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_type.addr, metadata !4981, metadata !DIExpression()), !dbg !4988
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !4989
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4982, metadata !DIExpression()), !dbg !4990
  store ptr null, ptr %inode, align 8, !dbg !4990
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #9, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !4983, metadata !DIExpression()), !dbg !4992
  %0 = load ptr, ptr %fh.addr, align 8, !dbg !4993
  store ptr %0, ptr %fid, align 8, !dbg !4992
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_pos) #9, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %i_pos, metadata !4984, metadata !DIExpression()), !dbg !4995
  %1 = load i32, ptr %fh_type.addr, align 4, !dbg !4996
  switch i32 %1, label %sw.default [
    i32 113, label %sw.bb
    i32 114, label %sw.bb1
  ], !dbg !4997

sw.bb:                                            ; preds = %entry
  %2 = load i32, ptr %fh_len.addr, align 4, !dbg !4998
  %cmp = icmp slt i32 %2, 3, !dbg !5001
  br i1 %cmp, label %if.then, label %if.end, !dbg !5002

if.then:                                          ; preds = %sw.bb
  store ptr null, ptr %retval, align 8, !dbg !5003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5003

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !5004

sw.bb1:                                           ; preds = %entry
  %3 = load i32, ptr %fh_len.addr, align 4, !dbg !5005
  %conv = sext i32 %3 to i64, !dbg !5005
  %cmp2 = icmp ult i64 %conv, 5, !dbg !5007
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !5008

if.then4:                                         ; preds = %sw.bb1
  store ptr null, ptr %retval, align 8, !dbg !5009
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5009

if.end5:                                          ; preds = %sw.bb1
  br label %sw.epilog, !dbg !5010

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5011

sw.epilog:                                        ; preds = %if.end5, %if.end
  %4 = load ptr, ptr %fid, align 8, !dbg !5012
  %i_pos_hi = getelementptr inbounds %struct.fat_fid, ptr %4, i32 0, i32 2, !dbg !5013
  %5 = load i16, ptr %i_pos_hi, align 4, !dbg !5013
  %conv6 = zext i16 %5 to i64, !dbg !5012
  store i64 %conv6, ptr %i_pos, align 8, !dbg !5014
  %6 = load i64, ptr %i_pos, align 8, !dbg !5015
  %shl = shl i64 %6, 32, !dbg !5016
  %7 = load ptr, ptr %fid, align 8, !dbg !5017
  %i_pos_low = getelementptr inbounds %struct.fat_fid, ptr %7, i32 0, i32 1, !dbg !5018
  %8 = load i32, ptr %i_pos_low, align 4, !dbg !5018
  %conv7 = zext i32 %8 to i64, !dbg !5019
  %or = or i64 %shl, %conv7, !dbg !5020
  store i64 %or, ptr %i_pos, align 8, !dbg !5021
  %9 = load ptr, ptr %sb.addr, align 8, !dbg !5022
  %10 = load ptr, ptr %fid, align 8, !dbg !5023
  %i_gen = getelementptr inbounds %struct.fat_fid, ptr %10, i32 0, i32 0, !dbg !5024
  %11 = load i32, ptr %i_gen, align 4, !dbg !5024
  %12 = load i64, ptr %i_pos, align 8, !dbg !5025
  %call = call ptr @__fat_nfs_get_inode(ptr noundef %9, i64 noundef 0, i32 noundef %11, i64 noundef %12) #8, !dbg !5026
  store ptr %call, ptr %inode, align 8, !dbg !5027
  %13 = load ptr, ptr %inode, align 8, !dbg !5028
  %call8 = call ptr @d_obtain_alias(ptr noundef %13) #8, !dbg !5029
  store ptr %call8, ptr %retval, align 8, !dbg !5030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5030

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_pos) #9, !dbg !5031
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #9, !dbg !5031
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !5031
  %14 = load ptr, ptr %retval, align 8, !dbg !5031
  ret ptr %14, !dbg !5031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_fh_to_parent_nostale(ptr noundef %sb, ptr noundef %fh, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 16 !dbg !5032 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %fh.addr = alloca ptr, align 8
  %fh_len.addr = alloca i32, align 4
  %fh_type.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %i_pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5034, metadata !DIExpression()), !dbg !5041
  store ptr %fh, ptr %fh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fh.addr, metadata !5035, metadata !DIExpression()), !dbg !5042
  store i32 %fh_len, ptr %fh_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_len.addr, metadata !5036, metadata !DIExpression()), !dbg !5043
  store i32 %fh_type, ptr %fh_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_type.addr, metadata !5037, metadata !DIExpression()), !dbg !5044
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !5045
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5038, metadata !DIExpression()), !dbg !5046
  store ptr null, ptr %inode, align 8, !dbg !5046
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #9, !dbg !5047
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5039, metadata !DIExpression()), !dbg !5048
  %0 = load ptr, ptr %fh.addr, align 8, !dbg !5049
  store ptr %0, ptr %fid, align 8, !dbg !5048
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_pos) #9, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %i_pos, metadata !5040, metadata !DIExpression()), !dbg !5051
  %1 = load i32, ptr %fh_len.addr, align 4, !dbg !5052
  %conv = sext i32 %1 to i64, !dbg !5052
  %cmp = icmp ult i64 %conv, 5, !dbg !5054
  br i1 %cmp, label %if.then, label %if.end, !dbg !5055

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5056

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %fh_type.addr, align 4, !dbg !5057
  switch i32 %2, label %sw.epilog [
    i32 114, label %sw.bb
  ], !dbg !5058

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %fid, align 8, !dbg !5059
  %parent_i_pos_hi = getelementptr inbounds %struct.fat_fid, ptr %3, i32 0, i32 3, !dbg !5061
  %4 = load i16, ptr %parent_i_pos_hi, align 2, !dbg !5061
  %conv2 = zext i16 %4 to i64, !dbg !5059
  store i64 %conv2, ptr %i_pos, align 8, !dbg !5062
  %5 = load i64, ptr %i_pos, align 8, !dbg !5063
  %shl = shl i64 %5, 32, !dbg !5064
  %6 = load ptr, ptr %fid, align 8, !dbg !5065
  %parent_i_pos_low = getelementptr inbounds %struct.fat_fid, ptr %6, i32 0, i32 4, !dbg !5066
  %7 = load i32, ptr %parent_i_pos_low, align 4, !dbg !5066
  %conv3 = zext i32 %7 to i64, !dbg !5067
  %or = or i64 %shl, %conv3, !dbg !5068
  store i64 %or, ptr %i_pos, align 8, !dbg !5069
  %8 = load ptr, ptr %sb.addr, align 8, !dbg !5070
  %9 = load ptr, ptr %fid, align 8, !dbg !5071
  %parent_i_gen = getelementptr inbounds %struct.fat_fid, ptr %9, i32 0, i32 5, !dbg !5072
  %10 = load i32, ptr %parent_i_gen, align 4, !dbg !5072
  %11 = load i64, ptr %i_pos, align 8, !dbg !5073
  %call = call ptr @__fat_nfs_get_inode(ptr noundef %8, i64 noundef 0, i32 noundef %10, i64 noundef %11) #8, !dbg !5074
  store ptr %call, ptr %inode, align 8, !dbg !5075
  br label %sw.epilog, !dbg !5076

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %12 = load ptr, ptr %inode, align 8, !dbg !5077
  %call4 = call ptr @d_obtain_alias(ptr noundef %12) #8, !dbg !5078
  store ptr %call4, ptr %retval, align 8, !dbg !5079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5079

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_pos) #9, !dbg !5080
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #9, !dbg !5080
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !5080
  %13 = load ptr, ptr %retval, align 8, !dbg !5080
  ret ptr %13, !dbg !5080
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5081 dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #0 align 16 !dbg !5087 {
entry:
  %sb.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %generation.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5089, metadata !DIExpression()), !dbg !5092
  store i64 %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !5090, metadata !DIExpression()), !dbg !5093
  store i32 %generation, ptr %generation.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %generation.addr, metadata !5091, metadata !DIExpression()), !dbg !5094
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5095
  %1 = load i64, ptr %ino.addr, align 8, !dbg !5096
  %2 = load i32, ptr %generation.addr, align 4, !dbg !5097
  %call = call ptr @__fat_nfs_get_inode(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef 0) #8, !dbg !5098
  ret ptr %call, !dbg !5099
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__fat_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation, i64 noundef %i_pos) #0 align 16 !dbg !5100 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %generation.addr = alloca i32, align 4
  %i_pos.addr = alloca i64, align 8
  %inode = alloca ptr, align 8
  %bh = alloca ptr, align 8
  %de = alloca ptr, align 8
  %blocknr = alloca i64, align 8
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5104, metadata !DIExpression()), !dbg !5115
  store i64 %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !5105, metadata !DIExpression()), !dbg !5116
  store i32 %generation, ptr %generation.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %generation.addr, metadata !5106, metadata !DIExpression()), !dbg !5117
  store i64 %i_pos, ptr %i_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i_pos.addr, metadata !5107, metadata !DIExpression()), !dbg !5118
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !5119
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5108, metadata !DIExpression()), !dbg !5120
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5121
  %1 = load i64, ptr %ino.addr, align 8, !dbg !5122
  %2 = load i64, ptr %i_pos.addr, align 8, !dbg !5123
  %call = call ptr @fat_ilookup(ptr noundef %0, i64 noundef %1, i64 noundef %2) #8, !dbg !5124
  store ptr %call, ptr %inode, align 8, !dbg !5120
  %3 = load ptr, ptr %inode, align 8, !dbg !5125
  %tobool = icmp ne ptr %3, null, !dbg !5125
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5127

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %generation.addr, align 4, !dbg !5128
  %tobool1 = icmp ne i32 %4, 0, !dbg !5128
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !5129

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %inode, align 8, !dbg !5130
  %i_generation = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 44, !dbg !5131
  %6 = load i32, ptr %i_generation, align 8, !dbg !5131
  %7 = load i32, ptr %generation.addr, align 4, !dbg !5132
  %cmp = icmp ne i32 %6, %7, !dbg !5133
  br i1 %cmp, label %if.then, label %if.end, !dbg !5134

if.then:                                          ; preds = %land.lhs.true2
  %8 = load ptr, ptr %inode, align 8, !dbg !5135
  call void @iput(ptr noundef %8) #8, !dbg !5137
  store ptr null, ptr %inode, align 8, !dbg !5138
  br label %if.end, !dbg !5139

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %9 = load ptr, ptr %inode, align 8, !dbg !5140
  %cmp3 = icmp eq ptr %9, null, !dbg !5141
  br i1 %cmp3, label %land.lhs.true4, label %if.end33, !dbg !5142

land.lhs.true4:                                   ; preds = %if.end
  %10 = load ptr, ptr %sb.addr, align 8, !dbg !5143
  %call5 = call ptr @MSDOS_SB(ptr noundef %10) #8, !dbg !5144
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %call5, i32 0, i32 19, !dbg !5145
  %nfs = getelementptr inbounds %struct.fat_mount_options, ptr %options, i32 0, i32 10, !dbg !5146
  %11 = load i8, ptr %nfs, align 4, !dbg !5146
  %conv = zext i8 %11 to i32, !dbg !5144
  %cmp6 = icmp eq i32 %conv, 2, !dbg !5147
  br i1 %cmp6, label %if.then8, label %if.end33, !dbg !5148

if.then8:                                         ; preds = %land.lhs.true4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #9, !dbg !5149
  call void @llvm.dbg.declare(metadata ptr %bh, metadata !5109, metadata !DIExpression()), !dbg !5150
  store ptr null, ptr %bh, align 8, !dbg !5150
  call void @llvm.lifetime.start.p0(i64 8, ptr %de) #9, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %de, metadata !5112, metadata !DIExpression()), !dbg !5152
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocknr) #9, !dbg !5153
  call void @llvm.dbg.declare(metadata ptr %blocknr, metadata !5113, metadata !DIExpression()), !dbg !5154
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #9, !dbg !5155
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5114, metadata !DIExpression()), !dbg !5156
  %12 = load ptr, ptr %sb.addr, align 8, !dbg !5157
  %call9 = call ptr @MSDOS_SB(ptr noundef %12) #8, !dbg !5158
  %13 = load i64, ptr %i_pos.addr, align 8, !dbg !5159
  call void @fat_get_blknr_offset(ptr noundef %call9, i64 noundef %13, ptr noundef %blocknr, ptr noundef %offset) #8, !dbg !5160
  %14 = load ptr, ptr %sb.addr, align 8, !dbg !5161
  %15 = load i64, ptr %blocknr, align 8, !dbg !5162
  %call10 = call ptr @sb_bread(ptr noundef %14, i64 noundef %15) #8, !dbg !5163
  store ptr %call10, ptr %bh, align 8, !dbg !5164
  %16 = load ptr, ptr %bh, align 8, !dbg !5165
  %tobool11 = icmp ne ptr %16, null, !dbg !5165
  br i1 %tobool11, label %if.end16, label %if.then12, !dbg !5167

if.then12:                                        ; preds = %if.then8
  br label %do.body, !dbg !5168

do.body:                                          ; preds = %if.then12
  br label %do.body13, !dbg !5170

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !5172

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !5172

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %sb.addr, align 8, !dbg !5170
  %18 = load i64, ptr %blocknr, align 8, !dbg !5170
  call void (ptr, ptr, ptr, ...) @_fat_msg(ptr noundef %17, ptr noundef @.str, ptr noundef @.str.1, i64 noundef %18) #10, !dbg !5170
  br label %do.cond14, !dbg !5170

do.cond14:                                        ; preds = %do.end
  br label %do.end15, !dbg !5170

do.end15:                                         ; preds = %do.cond14
  %19 = load ptr, ptr %inode, align 8, !dbg !5174
  store ptr %19, ptr %retval, align 8, !dbg !5175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5175

if.end16:                                         ; preds = %if.then8
  %20 = load ptr, ptr %bh, align 8, !dbg !5176
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5, !dbg !5177
  %21 = load ptr, ptr %b_data, align 8, !dbg !5177
  store ptr %21, ptr %de, align 8, !dbg !5178
  %22 = load ptr, ptr %de, align 8, !dbg !5179
  %23 = load i32, ptr %offset, align 4, !dbg !5179
  %idxprom = sext i32 %23 to i64, !dbg !5179
  %arrayidx = getelementptr %struct.msdos_dir_entry, ptr %22, i64 %idxprom, !dbg !5179
  %name = getelementptr inbounds %struct.msdos_dir_entry, ptr %arrayidx, i32 0, i32 0, !dbg !5179
  %arraydecay = getelementptr inbounds [11 x i8], ptr %name, i64 0, i64 0, !dbg !5179
  %24 = load i8, ptr %arraydecay, align 4, !dbg !5179
  %tobool17 = icmp ne i8 %24, 0, !dbg !5179
  br i1 %tobool17, label %lor.lhs.false, label %if.then25, !dbg !5179

lor.lhs.false:                                    ; preds = %if.end16
  %25 = load ptr, ptr %de, align 8, !dbg !5179
  %26 = load i32, ptr %offset, align 4, !dbg !5179
  %idxprom18 = sext i32 %26 to i64, !dbg !5179
  %arrayidx19 = getelementptr %struct.msdos_dir_entry, ptr %25, i64 %idxprom18, !dbg !5179
  %name20 = getelementptr inbounds %struct.msdos_dir_entry, ptr %arrayidx19, i32 0, i32 0, !dbg !5179
  %arraydecay21 = getelementptr inbounds [11 x i8], ptr %name20, i64 0, i64 0, !dbg !5179
  %27 = load i8, ptr %arraydecay21, align 4, !dbg !5179
  %conv22 = zext i8 %27 to i32, !dbg !5179
  %cmp23 = icmp eq i32 %conv22, 229, !dbg !5179
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !5181

if.then25:                                        ; preds = %lor.lhs.false, %if.end16
  store ptr null, ptr %inode, align 8, !dbg !5182
  br label %if.end29, !dbg !5183

if.else:                                          ; preds = %lor.lhs.false
  %28 = load ptr, ptr %sb.addr, align 8, !dbg !5184
  %29 = load ptr, ptr %de, align 8, !dbg !5185
  %30 = load i32, ptr %offset, align 4, !dbg !5186
  %idxprom26 = sext i32 %30 to i64, !dbg !5185
  %arrayidx27 = getelementptr %struct.msdos_dir_entry, ptr %29, i64 %idxprom26, !dbg !5185
  %31 = load i64, ptr %i_pos.addr, align 8, !dbg !5187
  %call28 = call ptr @fat_build_inode(ptr noundef %28, ptr noundef %arrayidx27, i64 noundef %31) #8, !dbg !5188
  store ptr %call28, ptr %inode, align 8, !dbg !5189
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then25
  %32 = load ptr, ptr %bh, align 8, !dbg !5190
  call void @brelse(ptr noundef %32) #8, !dbg !5191
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5192
  br label %cleanup, !dbg !5192

cleanup:                                          ; preds = %if.end29, %do.end15
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #9, !dbg !5192
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocknr) #9, !dbg !5192
  call void @llvm.lifetime.end.p0(i64 8, ptr %de) #9, !dbg !5192
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #9, !dbg !5192
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end33, !dbg !5193

if.end33:                                         ; preds = %cleanup.cont, %land.lhs.true4, %if.end
  %33 = load ptr, ptr %inode, align 8, !dbg !5194
  store ptr %33, ptr %retval, align 8, !dbg !5195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !5195

cleanup34:                                        ; preds = %if.end33, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !5196
  %34 = load ptr, ptr %retval, align 8, !dbg !5196
  ret ptr %34, !dbg !5196
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_ilookup(ptr noundef %sb, i64 noundef %ino, i64 noundef %i_pos) #0 align 16 !dbg !5197 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %i_pos.addr = alloca i64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5201, metadata !DIExpression()), !dbg !5204
  store i64 %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !5202, metadata !DIExpression()), !dbg !5205
  store i64 %i_pos, ptr %i_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i_pos.addr, metadata !5203, metadata !DIExpression()), !dbg !5206
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5207
  %call = call ptr @MSDOS_SB(ptr noundef %0) #8, !dbg !5209
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %call, i32 0, i32 19, !dbg !5210
  %nfs = getelementptr inbounds %struct.fat_mount_options, ptr %options, i32 0, i32 10, !dbg !5211
  %1 = load i8, ptr %nfs, align 4, !dbg !5211
  %conv = zext i8 %1 to i32, !dbg !5209
  %cmp = icmp eq i32 %conv, 2, !dbg !5212
  br i1 %cmp, label %if.then, label %if.else, !dbg !5213

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !5214
  %3 = load i64, ptr %i_pos.addr, align 8, !dbg !5215
  %call2 = call ptr @fat_iget(ptr noundef %2, i64 noundef %3) #8, !dbg !5216
  store ptr %call2, ptr %retval, align 8, !dbg !5217
  br label %return, !dbg !5217

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %ino.addr, align 8, !dbg !5218
  %cmp3 = icmp ult i64 %4, 1, !dbg !5221
  br i1 %cmp3, label %if.then7, label %lor.lhs.false, !dbg !5222

lor.lhs.false:                                    ; preds = %if.else
  %5 = load i64, ptr %ino.addr, align 8, !dbg !5223
  %cmp5 = icmp eq i64 %5, 2, !dbg !5224
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !5225

if.then7:                                         ; preds = %lor.lhs.false, %if.else
  store ptr null, ptr %retval, align 8, !dbg !5226
  br label %return, !dbg !5226

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !5227
  %7 = load i64, ptr %ino.addr, align 8, !dbg !5228
  %call8 = call ptr @ilookup(ptr noundef %6, i64 noundef %7) #8, !dbg !5229
  store ptr %call8, ptr %retval, align 8, !dbg !5230
  br label %return, !dbg !5230

return:                                           ; preds = %if.end, %if.then7, %if.then
  %8 = load ptr, ptr %retval, align 8, !dbg !5231
  ret ptr %8, !dbg !5231
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5232 dso_local void @iput(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @MSDOS_SB(ptr noundef %sb) #4 align 16 !dbg !5233 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5237, metadata !DIExpression()), !dbg !5238
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5239
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5240
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5240
  ret ptr %1, !dbg !5241
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fat_get_blknr_offset(ptr noundef %sbi, i64 noundef %i_pos, ptr noundef %blknr, ptr noundef %offset) #4 align 16 !dbg !5242 {
entry:
  %sbi.addr = alloca ptr, align 8
  %i_pos.addr = alloca i64, align 8
  %blknr.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5246, metadata !DIExpression()), !dbg !5250
  store i64 %i_pos, ptr %i_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i_pos.addr, metadata !5247, metadata !DIExpression()), !dbg !5251
  store ptr %blknr, ptr %blknr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blknr.addr, metadata !5248, metadata !DIExpression()), !dbg !5252
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5249, metadata !DIExpression()), !dbg !5253
  %0 = load i64, ptr %i_pos.addr, align 8, !dbg !5254
  %1 = load ptr, ptr %sbi.addr, align 8, !dbg !5255
  %dir_per_block_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 24, !dbg !5256
  %2 = load i32, ptr %dir_per_block_bits, align 4, !dbg !5256
  %sh_prom = zext i32 %2 to i64, !dbg !5257
  %shr = ashr i64 %0, %sh_prom, !dbg !5257
  %3 = load ptr, ptr %blknr.addr, align 8, !dbg !5258
  store i64 %shr, ptr %3, align 8, !dbg !5259
  %4 = load i64, ptr %i_pos.addr, align 8, !dbg !5260
  %5 = load ptr, ptr %sbi.addr, align 8, !dbg !5261
  %dir_per_block = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 23, !dbg !5262
  %6 = load i32, ptr %dir_per_block, align 8, !dbg !5262
  %sub = sub i32 %6, 1, !dbg !5263
  %conv = sext i32 %sub to i64, !dbg !5264
  %and = and i64 %4, %conv, !dbg !5265
  %conv1 = trunc i64 %and to i32, !dbg !5260
  %7 = load ptr, ptr %offset.addr, align 8, !dbg !5266
  store i32 %conv1, ptr %7, align 4, !dbg !5267
  ret void, !dbg !5268
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sb_bread(ptr noundef %sb, i64 noundef %block) #4 align 16 !dbg !5269 {
entry:
  %sb.addr = alloca ptr, align 8
  %block.addr = alloca i64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5273, metadata !DIExpression()), !dbg !5275
  store i64 %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !5274, metadata !DIExpression()), !dbg !5276
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5277
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21, !dbg !5278
  %1 = load ptr, ptr %s_bdev, align 8, !dbg !5278
  %2 = load i64, ptr %block.addr, align 8, !dbg !5279
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !5280
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3, !dbg !5281
  %4 = load i64, ptr %s_blocksize, align 8, !dbg !5281
  %conv = trunc i64 %4 to i32, !dbg !5280
  %call = call ptr @__bread_gfp(ptr noundef %1, i64 noundef %2, i32 noundef %conv, i32 noundef 8) #8, !dbg !5282
  ret ptr %call, !dbg !5283
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5284 dso_local void @_fat_msg(ptr noundef, ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5287 dso_local ptr @fat_build_inode(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @brelse(ptr noundef %bh) #4 align 16 !dbg !5290 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !5296
  %tobool = icmp ne ptr %0, null, !dbg !5296
  br i1 %tobool, label %if.then, label %if.end, !dbg !5298

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bh.addr, align 8, !dbg !5299
  call void @__brelse(ptr noundef %1) #8, !dbg !5300
  br label %if.end, !dbg !5300

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5301
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5302 dso_local ptr @fat_iget(ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5305 dso_local ptr @ilookup(ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5308 dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5311 dso_local void @__brelse(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5312 dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5313 dso_local i32 @fat_get_dotdot_entry(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #4 align 16 !dbg !5318 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5324
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5325
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5325
  ret ptr %1, !dbg !5326
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fat_get_start(ptr noundef %sbi, ptr noundef %de) #4 align 16 !dbg !5327 {
entry:
  %sbi.addr = alloca ptr, align 8
  %de.addr = alloca ptr, align 8
  %cluster = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5335, metadata !DIExpression()), !dbg !5338
  store ptr %de, ptr %de.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !5336, metadata !DIExpression()), !dbg !5339
  call void @llvm.lifetime.start.p0(i64 4, ptr %cluster) #9, !dbg !5340
  call void @llvm.dbg.declare(metadata ptr %cluster, metadata !5337, metadata !DIExpression()), !dbg !5341
  %0 = load ptr, ptr %de.addr, align 8, !dbg !5342
  %start = getelementptr inbounds %struct.msdos_dir_entry, ptr %0, i32 0, i32 10, !dbg !5342
  %1 = load i16, ptr %start, align 2, !dbg !5342
  %conv = zext i16 %1 to i32, !dbg !5342
  store i32 %conv, ptr %cluster, align 4, !dbg !5341
  %2 = load ptr, ptr %sbi.addr, align 8, !dbg !5343
  %call = call zeroext i1 @is_fat32(ptr noundef %2) #8, !dbg !5345
  br i1 %call, label %if.then, label %if.end, !dbg !5346

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %de.addr, align 8, !dbg !5347
  %starthi = getelementptr inbounds %struct.msdos_dir_entry, ptr %3, i32 0, i32 7, !dbg !5347
  %4 = load i16, ptr %starthi, align 4, !dbg !5347
  %conv1 = zext i16 %4 to i32, !dbg !5347
  %shl = shl i32 %conv1, 16, !dbg !5348
  %5 = load i32, ptr %cluster, align 4, !dbg !5349
  %or = or i32 %5, %shl, !dbg !5349
  store i32 %or, ptr %cluster, align 4, !dbg !5349
  br label %if.end, !dbg !5350

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %cluster, align 4, !dbg !5351
  call void @llvm.lifetime.end.p0(i64 4, ptr %cluster) #9, !dbg !5352
  ret i32 %6, !dbg !5353
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_dget(ptr noundef %sb, i32 noundef %i_logstart) #0 align 16 !dbg !5354 {
entry:
  %sb.addr = alloca ptr, align 8
  %i_logstart.addr = alloca i32, align 4
  %sbi = alloca ptr, align 8
  %head = alloca ptr, align 8
  %i = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %____ptr26 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  %__mptr30 = alloca ptr, align 8
  %tmp31 = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5358, metadata !DIExpression()), !dbg !5374
  store i32 %i_logstart, ptr %i_logstart.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i_logstart.addr, metadata !5359, metadata !DIExpression()), !dbg !5375
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #9, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5360, metadata !DIExpression()), !dbg !5377
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5378
  %call = call ptr @MSDOS_SB(ptr noundef %0) #8, !dbg !5379
  store ptr %call, ptr %sbi, align 8, !dbg !5377
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #9, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5361, metadata !DIExpression()), !dbg !5381
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !5382
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5362, metadata !DIExpression()), !dbg !5383
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5363, metadata !DIExpression()), !dbg !5385
  store ptr null, ptr %inode, align 8, !dbg !5385
  %1 = load ptr, ptr %sbi, align 8, !dbg !5386
  %dir_hashtable = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 34, !dbg !5387
  %arraydecay = getelementptr inbounds [256 x %struct.hlist_head], ptr %dir_hashtable, i64 0, i64 0, !dbg !5386
  %2 = load i32, ptr %i_logstart.addr, align 4, !dbg !5388
  %call1 = call i64 @fat_dir_hash(i32 noundef %2) #8, !dbg !5389
  %add.ptr = getelementptr %struct.hlist_head, ptr %arraydecay, i64 %call1, !dbg !5390
  store ptr %add.ptr, ptr %head, align 8, !dbg !5391
  %3 = load ptr, ptr %sbi, align 8, !dbg !5392
  %dir_hash_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 33, !dbg !5393
  call void @spin_lock(ptr noundef %dir_hash_lock) #8, !dbg !5394
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #9, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !5364, metadata !DIExpression()), !dbg !5395
  %4 = load ptr, ptr %head, align 8, !dbg !5395
  %first = getelementptr inbounds %struct.hlist_head, ptr %4, i32 0, i32 0, !dbg !5395
  %5 = load ptr, ptr %first, align 8, !dbg !5395
  store ptr %5, ptr %____ptr, align 8, !dbg !5395
  %6 = load ptr, ptr %____ptr, align 8, !dbg !5395
  %tobool = icmp ne ptr %6, null, !dbg !5395
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5395

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5367, metadata !DIExpression()), !dbg !5396
  %7 = load ptr, ptr %____ptr, align 8, !dbg !5396
  store ptr %7, ptr %__mptr, align 8, !dbg !5396
  %8 = load ptr, ptr %__mptr, align 8, !dbg !5396
  %add.ptr3 = getelementptr i8, ptr %8, i64 -80, !dbg !5396
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5396
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5395
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5396
  br label %cond.end, !dbg !5395

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5395

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ null, %cond.false ], !dbg !5395
  store ptr %cond, ptr %tmp, align 8, !dbg !5395
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #9, !dbg !5397
  %10 = load ptr, ptr %tmp, align 8, !dbg !5395
  store ptr %10, ptr %i, align 8, !dbg !5397
  br label %for.cond, !dbg !5397

for.cond:                                         ; preds = %cond.end34, %cond.end
  %11 = load ptr, ptr %i, align 8, !dbg !5398
  %tobool4 = icmp ne ptr %11, null, !dbg !5397
  br i1 %tobool4, label %for.body, label %for.end, !dbg !5397

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !5399

do.body:                                          ; preds = %for.body
  %12 = load ptr, ptr %i, align 8, !dbg !5401
  %vfs_inode = getelementptr inbounds %struct.msdos_inode_info, ptr %12, i32 0, i32 13, !dbg !5401
  %i_sb = getelementptr inbounds %struct.inode, ptr %vfs_inode, i32 0, i32 9, !dbg !5401
  %13 = load ptr, ptr %i_sb, align 8, !dbg !5401
  %14 = load ptr, ptr %sb.addr, align 8, !dbg !5401
  %cmp = icmp ne ptr %13, %14, !dbg !5401
  %lnot = xor i1 %cmp, true, !dbg !5401
  %lnot5 = xor i1 %lnot, true, !dbg !5401
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5401
  %conv = sext i32 %lnot.ext to i64, !dbg !5401
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5401
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5401
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5404

if.then:                                          ; preds = %do.body
  br label %do.body7, !dbg !5401

do.body7:                                         ; preds = %if.then
  br label %do.body8, !dbg !5405

do.body8:                                         ; preds = %do.body7
  br label %do.cond, !dbg !5407

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5407

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5405

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 33, i32 0, i64 12) #9, !dbg !5409, !srcloc !5411
  br label %do.cond10, !dbg !5409

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5409

do.end11:                                         ; preds = %do.cond10
  unreachable, !dbg !5405

do.cond12:                                        ; No predecessors!
  br label %do.end13, !dbg !5405

do.end13:                                         ; preds = %do.cond12
  br label %if.end, !dbg !5405

if.end:                                           ; preds = %do.end13, %do.body
  br label %do.cond14, !dbg !5404

do.cond14:                                        ; preds = %if.end
  br label %do.end15, !dbg !5404

do.end15:                                         ; preds = %do.cond14
  %15 = load ptr, ptr %i, align 8, !dbg !5412
  %i_logstart16 = getelementptr inbounds %struct.msdos_inode_info, ptr %15, i32 0, i32 6, !dbg !5414
  %16 = load i32, ptr %i_logstart16, align 4, !dbg !5414
  %17 = load i32, ptr %i_logstart.addr, align 4, !dbg !5415
  %cmp17 = icmp ne i32 %16, %17, !dbg !5416
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5417

if.then19:                                        ; preds = %do.end15
  br label %for.inc, !dbg !5418

if.end20:                                         ; preds = %do.end15
  %18 = load ptr, ptr %i, align 8, !dbg !5419
  %vfs_inode21 = getelementptr inbounds %struct.msdos_inode_info, ptr %18, i32 0, i32 13, !dbg !5420
  %call22 = call ptr @igrab(ptr noundef %vfs_inode21) #8, !dbg !5421
  store ptr %call22, ptr %inode, align 8, !dbg !5422
  %19 = load ptr, ptr %inode, align 8, !dbg !5423
  %tobool23 = icmp ne ptr %19, null, !dbg !5423
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5425

if.then24:                                        ; preds = %if.end20
  br label %for.end, !dbg !5426

if.end25:                                         ; preds = %if.end20
  br label %for.inc, !dbg !5427

for.inc:                                          ; preds = %if.end25, %if.then19
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr26) #9, !dbg !5428
  call void @llvm.dbg.declare(metadata ptr %____ptr26, metadata !5369, metadata !DIExpression()), !dbg !5428
  %20 = load ptr, ptr %i, align 8, !dbg !5428
  %i_dir_hash = getelementptr inbounds %struct.msdos_inode_info, ptr %20, i32 0, i32 10, !dbg !5428
  %next = getelementptr inbounds %struct.hlist_node, ptr %i_dir_hash, i32 0, i32 0, !dbg !5428
  %21 = load ptr, ptr %next, align 8, !dbg !5428
  store ptr %21, ptr %____ptr26, align 8, !dbg !5428
  %22 = load ptr, ptr %____ptr26, align 8, !dbg !5428
  %tobool28 = icmp ne ptr %22, null, !dbg !5428
  br i1 %tobool28, label %cond.true29, label %cond.false33, !dbg !5428

cond.true29:                                      ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr30) #9, !dbg !5429
  call void @llvm.dbg.declare(metadata ptr %__mptr30, metadata !5372, metadata !DIExpression()), !dbg !5429
  %23 = load ptr, ptr %____ptr26, align 8, !dbg !5429
  store ptr %23, ptr %__mptr30, align 8, !dbg !5429
  %24 = load ptr, ptr %__mptr30, align 8, !dbg !5429
  %add.ptr32 = getelementptr i8, ptr %24, i64 -80, !dbg !5429
  store ptr %add.ptr32, ptr %tmp31, align 8, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr30) #9, !dbg !5428
  %25 = load ptr, ptr %tmp31, align 8, !dbg !5429
  br label %cond.end34, !dbg !5428

cond.false33:                                     ; preds = %for.inc
  br label %cond.end34, !dbg !5428

cond.end34:                                       ; preds = %cond.false33, %cond.true29
  %cond35 = phi ptr [ %25, %cond.true29 ], [ null, %cond.false33 ], !dbg !5428
  store ptr %cond35, ptr %tmp27, align 8, !dbg !5428
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr26) #9, !dbg !5398
  %26 = load ptr, ptr %tmp27, align 8, !dbg !5428
  store ptr %26, ptr %i, align 8, !dbg !5398
  br label %for.cond, !dbg !5398, !llvm.loop !5430

for.end:                                          ; preds = %if.then24, %for.cond
  %27 = load ptr, ptr %sbi, align 8, !dbg !5434
  %dir_hash_lock36 = getelementptr inbounds %struct.msdos_sb_info, ptr %27, i32 0, i32 33, !dbg !5435
  call void @spin_unlock(ptr noundef %dir_hash_lock36) #8, !dbg !5436
  %28 = load ptr, ptr %inode, align 8, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #9, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #9, !dbg !5438
  ret ptr %28, !dbg !5439
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_rebuild_parent(ptr noundef %sb, i32 noundef %parent_logstart) #0 align 16 !dbg !5440 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %parent_logstart.addr = alloca i32, align 4
  %search_clus = alloca i32, align 4
  %clus_to_match = alloca i32, align 4
  %de = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %dummy_grand_parent = alloca ptr, align 8
  %sinfo = alloca %struct.fat_slot_info, align 8
  %sbi = alloca ptr, align 8
  %blknr = alloca i64, align 8
  %parent_bh = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5442, metadata !DIExpression()), !dbg !5460
  store i32 %parent_logstart, ptr %parent_logstart.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %parent_logstart.addr, metadata !5443, metadata !DIExpression()), !dbg !5461
  call void @llvm.lifetime.start.p0(i64 4, ptr %search_clus) #9, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %search_clus, metadata !5444, metadata !DIExpression()), !dbg !5463
  call void @llvm.lifetime.start.p0(i64 4, ptr %clus_to_match) #9, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %clus_to_match, metadata !5445, metadata !DIExpression()), !dbg !5464
  call void @llvm.lifetime.start.p0(i64 8, ptr %de) #9, !dbg !5465
  call void @llvm.dbg.declare(metadata ptr %de, metadata !5446, metadata !DIExpression()), !dbg !5466
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #9, !dbg !5467
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5447, metadata !DIExpression()), !dbg !5468
  store ptr null, ptr %parent, align 8, !dbg !5468
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy_grand_parent) #9, !dbg !5469
  call void @llvm.dbg.declare(metadata ptr %dummy_grand_parent, metadata !5448, metadata !DIExpression()), !dbg !5470
  store ptr null, ptr %dummy_grand_parent, align 8, !dbg !5470
  call void @llvm.lifetime.start.p0(i64 40, ptr %sinfo) #9, !dbg !5471
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !5449, metadata !DIExpression()), !dbg !5472
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #9, !dbg !5473
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5457, metadata !DIExpression()), !dbg !5474
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5475
  %call = call ptr @MSDOS_SB(ptr noundef %0) #8, !dbg !5476
  store ptr %call, ptr %sbi, align 8, !dbg !5474
  call void @llvm.lifetime.start.p0(i64 8, ptr %blknr) #9, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %blknr, metadata !5458, metadata !DIExpression()), !dbg !5478
  %1 = load ptr, ptr %sbi, align 8, !dbg !5479
  %2 = load i32, ptr %parent_logstart.addr, align 4, !dbg !5480
  %call1 = call i64 @fat_clus_to_blknr(ptr noundef %1, i32 noundef %2) #8, !dbg !5481
  store i64 %call1, ptr %blknr, align 8, !dbg !5478
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_bh) #9, !dbg !5482
  call void @llvm.dbg.declare(metadata ptr %parent_bh, metadata !5459, metadata !DIExpression()), !dbg !5483
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !5484
  %4 = load i64, ptr %blknr, align 8, !dbg !5485
  %call2 = call ptr @sb_bread(ptr noundef %3, i64 noundef %4) #8, !dbg !5486
  store ptr %call2, ptr %parent_bh, align 8, !dbg !5483
  %5 = load ptr, ptr %parent_bh, align 8, !dbg !5487
  %tobool = icmp ne ptr %5, null, !dbg !5487
  br i1 %tobool, label %if.end, label %if.then, !dbg !5489

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5490

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5492

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !5494

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5494

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !5492
  call void (ptr, ptr, ptr, ...) @_fat_msg(ptr noundef %6, ptr noundef @.str, ptr noundef @.str.3) #10, !dbg !5492
  br label %do.cond4, !dbg !5492

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5492

do.end5:                                          ; preds = %do.cond4
  store ptr null, ptr %retval, align 8, !dbg !5496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5496

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %parent_bh, align 8, !dbg !5497
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5, !dbg !5498
  %8 = load ptr, ptr %b_data, align 8, !dbg !5498
  store ptr %8, ptr %de, align 8, !dbg !5499
  %9 = load ptr, ptr %sbi, align 8, !dbg !5500
  %10 = load ptr, ptr %de, align 8, !dbg !5501
  %arrayidx = getelementptr %struct.msdos_dir_entry, ptr %10, i64 0, !dbg !5501
  %call6 = call i32 @fat_get_start(ptr noundef %9, ptr noundef %arrayidx) #8, !dbg !5502
  store i32 %call6, ptr %clus_to_match, align 4, !dbg !5503
  %11 = load ptr, ptr %sbi, align 8, !dbg !5504
  %12 = load ptr, ptr %de, align 8, !dbg !5505
  %arrayidx7 = getelementptr %struct.msdos_dir_entry, ptr %12, i64 1, !dbg !5505
  %call8 = call i32 @fat_get_start(ptr noundef %11, ptr noundef %arrayidx7) #8, !dbg !5506
  store i32 %call8, ptr %search_clus, align 4, !dbg !5507
  %13 = load ptr, ptr %sb.addr, align 8, !dbg !5508
  %14 = load i32, ptr %search_clus, align 4, !dbg !5509
  %call9 = call ptr @fat_dget(ptr noundef %13, i32 noundef %14) #8, !dbg !5510
  store ptr %call9, ptr %dummy_grand_parent, align 8, !dbg !5511
  %15 = load ptr, ptr %dummy_grand_parent, align 8, !dbg !5512
  %tobool10 = icmp ne ptr %15, null, !dbg !5512
  br i1 %tobool10, label %if.end20, label %if.then11, !dbg !5514

if.then11:                                        ; preds = %if.end
  %16 = load ptr, ptr %sb.addr, align 8, !dbg !5515
  %call12 = call ptr @new_inode(ptr noundef %16) #8, !dbg !5517
  store ptr %call12, ptr %dummy_grand_parent, align 8, !dbg !5518
  %17 = load ptr, ptr %dummy_grand_parent, align 8, !dbg !5519
  %tobool13 = icmp ne ptr %17, null, !dbg !5519
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5521

if.then14:                                        ; preds = %if.then11
  %18 = load ptr, ptr %parent_bh, align 8, !dbg !5522
  call void @brelse(ptr noundef %18) #8, !dbg !5524
  %19 = load ptr, ptr %parent, align 8, !dbg !5525
  store ptr %19, ptr %retval, align 8, !dbg !5526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5526

if.end15:                                         ; preds = %if.then11
  %20 = load ptr, ptr %sb.addr, align 8, !dbg !5527
  %call16 = call i64 @iunique(ptr noundef %20, i64 noundef 1) #8, !dbg !5528
  %21 = load ptr, ptr %dummy_grand_parent, align 8, !dbg !5529
  %i_ino = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 12, !dbg !5530
  store i64 %call16, ptr %i_ino, align 8, !dbg !5531
  %22 = load ptr, ptr %dummy_grand_parent, align 8, !dbg !5532
  %23 = load ptr, ptr %de, align 8, !dbg !5533
  %arrayidx17 = getelementptr %struct.msdos_dir_entry, ptr %23, i64 1, !dbg !5533
  %call18 = call i32 @fat_fill_inode(ptr noundef %22, ptr noundef %arrayidx17) #8, !dbg !5534
  %24 = load ptr, ptr %dummy_grand_parent, align 8, !dbg !5535
  %call19 = call ptr @MSDOS_I(ptr noundef %24) #8, !dbg !5536
  %i_pos = getelementptr inbounds %struct.msdos_inode_info, ptr %call19, i32 0, i32 8, !dbg !5537
  store i64 -1, ptr %i_pos, align 8, !dbg !5538
  br label %if.end20, !dbg !5539

if.end20:                                         ; preds = %if.end15, %if.end
  %25 = load ptr, ptr %dummy_grand_parent, align 8, !dbg !5540
  %26 = load i32, ptr %clus_to_match, align 4, !dbg !5542
  %call21 = call i32 @fat_scan_logstart(ptr noundef %25, i32 noundef %26, ptr noundef %sinfo) #8, !dbg !5543
  %tobool22 = icmp ne i32 %call21, 0, !dbg !5543
  br i1 %tobool22, label %if.end27, label %if.then23, !dbg !5544

if.then23:                                        ; preds = %if.end20
  %27 = load ptr, ptr %sb.addr, align 8, !dbg !5545
  %de24 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3, !dbg !5546
  %28 = load ptr, ptr %de24, align 8, !dbg !5546
  %i_pos25 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 0, !dbg !5547
  %29 = load i64, ptr %i_pos25, align 8, !dbg !5547
  %call26 = call ptr @fat_build_inode(ptr noundef %27, ptr noundef %28, i64 noundef %29) #8, !dbg !5548
  store ptr %call26, ptr %parent, align 8, !dbg !5549
  br label %if.end27, !dbg !5550

if.end27:                                         ; preds = %if.then23, %if.end20
  %30 = load ptr, ptr %parent_bh, align 8, !dbg !5551
  call void @brelse(ptr noundef %30) #8, !dbg !5552
  %31 = load ptr, ptr %dummy_grand_parent, align 8, !dbg !5553
  call void @iput(ptr noundef %31) #8, !dbg !5554
  %32 = load ptr, ptr %parent, align 8, !dbg !5555
  store ptr %32, ptr %retval, align 8, !dbg !5556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5556

cleanup:                                          ; preds = %if.end27, %if.then14, %do.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_bh) #9, !dbg !5557
  call void @llvm.lifetime.end.p0(i64 8, ptr %blknr) #9, !dbg !5557
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #9, !dbg !5557
  call void @llvm.lifetime.end.p0(i64 40, ptr %sinfo) #9, !dbg !5557
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy_grand_parent) #9, !dbg !5557
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #9, !dbg !5557
  call void @llvm.lifetime.end.p0(i64 8, ptr %de) #9, !dbg !5557
  call void @llvm.lifetime.end.p0(i64 4, ptr %clus_to_match) #9, !dbg !5557
  call void @llvm.lifetime.end.p0(i64 4, ptr %search_clus) #9, !dbg !5557
  %33 = load ptr, ptr %retval, align 8, !dbg !5557
  ret ptr %33, !dbg !5557
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5558 dso_local ptr @d_obtain_alias(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_fat32(ptr noundef %sbi) #4 align 16 !dbg !5561 {
entry:
  %sbi.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5567
  %fat_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %0, i32 0, i32 4, !dbg !5568
  %1 = load i8, ptr %fat_bits, align 1, !dbg !5568
  %conv = zext i8 %1 to i32, !dbg !5567
  %cmp = icmp eq i32 %conv, 32, !dbg !5569
  ret i1 %cmp, !dbg !5570
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fat_dir_hash(i32 noundef %logstart) #4 align 16 !dbg !5571 {
entry:
  %logstart.addr = alloca i32, align 4
  store i32 %logstart, ptr %logstart.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %logstart.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  %0 = load i32, ptr %logstart.addr, align 4, !dbg !5577
  %call = call i32 @hash_32(i32 noundef %0, i32 noundef 8) #8, !dbg !5578
  %conv = zext i32 %call to i64, !dbg !5578
  ret i64 %conv, !dbg !5579
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !5580 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5587
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5587
  call void @_raw_spin_lock(ptr noundef %1) #8, !dbg !5587
  ret void, !dbg !5588
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5589 dso_local ptr @igrab(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !5592 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5594, metadata !DIExpression()), !dbg !5595
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5596
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5596
  call void @_raw_spin_unlock(ptr noundef %1) #8, !dbg !5596
  ret void, !dbg !5597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_32(i32 noundef %val, i32 noundef %bits) #4 align 16 !dbg !5598 {
entry:
  %val.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5603, metadata !DIExpression()), !dbg !5605
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5604, metadata !DIExpression()), !dbg !5606
  %0 = load i32, ptr %val.addr, align 4, !dbg !5607
  %call = call i32 @__hash_32_generic(i32 noundef %0) #8, !dbg !5608
  %1 = load i32, ptr %bits.addr, align 4, !dbg !5609
  %sub = sub i32 32, %1, !dbg !5610
  %shr = lshr i32 %call, %sub, !dbg !5611
  ret i32 %shr, !dbg !5612
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__hash_32_generic(i32 noundef %val) #4 align 16 !dbg !5613 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  %0 = load i32, ptr %val.addr, align 4, !dbg !5619
  %mul = mul i32 %0, 1640531527, !dbg !5620
  ret i32 %mul, !dbg !5621
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5622 dso_local void @_raw_spin_lock(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5627 dso_local void @_raw_spin_unlock(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fat_clus_to_blknr(ptr noundef %sbi, i32 noundef %clus) #4 align 16 !dbg !5628 {
entry:
  %sbi.addr = alloca ptr, align 8
  %clus.addr = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5632, metadata !DIExpression()), !dbg !5634
  store i32 %clus, ptr %clus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clus.addr, metadata !5633, metadata !DIExpression()), !dbg !5635
  %0 = load i32, ptr %clus.addr, align 4, !dbg !5636
  %conv = sext i32 %0 to i64, !dbg !5637
  %sub = sub i64 %conv, 2, !dbg !5638
  %1 = load ptr, ptr %sbi.addr, align 8, !dbg !5639
  %sec_per_clus = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 0, !dbg !5640
  %2 = load i16, ptr %sec_per_clus, align 8, !dbg !5640
  %conv1 = zext i16 %2 to i64, !dbg !5639
  %mul = mul i64 %sub, %conv1, !dbg !5641
  %3 = load ptr, ptr %sbi.addr, align 8, !dbg !5642
  %data_start = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 9, !dbg !5643
  %4 = load i64, ptr %data_start, align 8, !dbg !5643
  %add = add i64 %mul, %4, !dbg !5644
  ret i64 %add, !dbg !5645
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5646 dso_local ptr @new_inode(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5647 dso_local i64 @iunique(ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5651 dso_local i32 @fat_fill_inode(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @MSDOS_I(ptr noundef %inode) #4 align 16 !dbg !5654 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5658, metadata !DIExpression()), !dbg !5661
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5659, metadata !DIExpression()), !dbg !5662
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5662
  store ptr %0, ptr %__mptr, align 8, !dbg !5662
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5662
  %add.ptr = getelementptr i8, ptr %1, i64 -152, !dbg !5662
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5663
  %2 = load ptr, ptr %tmp, align 8, !dbg !5662
  ret ptr %2, !dbg !5664
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5665 dso_local i32 @fat_scan_logstart(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fat_i_pos_read(ptr noundef %sbi, ptr noundef %inode) #4 align 16 !dbg !5669 {
entry:
  %sbi.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %i_pos = alloca i64, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5673, metadata !DIExpression()), !dbg !5676
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5674, metadata !DIExpression()), !dbg !5677
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_pos) #9, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %i_pos, metadata !5675, metadata !DIExpression()), !dbg !5679
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5680
  %call = call ptr @MSDOS_I(ptr noundef %0) #8, !dbg !5681
  %i_pos1 = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 8, !dbg !5682
  %1 = load i64, ptr %i_pos1, align 8, !dbg !5682
  store i64 %1, ptr %i_pos, align 8, !dbg !5683
  %2 = load i64, ptr %i_pos, align 8, !dbg !5684
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_pos) #9, !dbg !5685
  ret i64 %2, !dbg !5686
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649}
!llvm.ident = !{!4650}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fat_export_ops", scope: !2, file: !3, line: 287, type: !2565, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/fat/.nfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/fat/fat\22 -D KBUILD_BASENAME=\22nfs\22 -D KBUILD_MODNAME=\22fat\22 -D __KBUILD_MODNAME=kmod_fat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/fat/nfs.ll fs/fat/nfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !159, globals: !4621, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/fat/nfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4725e3fa3b50c2a8809d216a376b7af")
!4 = !{!5, !13, !21, !29, !45, !52, !58, !63, !69, !75, !82, !87, !95, !103, !112, !117, !122, !128, !134, !141}
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
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !46, line: 15, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!50 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!51 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !53, line: 26, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !59, line: 2052, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!62 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !64, line: 54, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "USRQUOTA", value: 0)
!67 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!68 = !DIEnumerator(name: "PRJQUOTA", value: 2)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fid_type", file: !142, line: 25, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/exportfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b88049a7651ed625da9f6bb7042c568")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!144 = !DIEnumerator(name: "FILEID_ROOT", value: 0)
!145 = !DIEnumerator(name: "FILEID_INO32_GEN", value: 1)
!146 = !DIEnumerator(name: "FILEID_INO32_GEN_PARENT", value: 2)
!147 = !DIEnumerator(name: "FILEID_BTRFS_WITHOUT_PARENT", value: 77)
!148 = !DIEnumerator(name: "FILEID_BTRFS_WITH_PARENT", value: 78)
!149 = !DIEnumerator(name: "FILEID_BTRFS_WITH_PARENT_ROOT", value: 79)
!150 = !DIEnumerator(name: "FILEID_UDF_WITHOUT_PARENT", value: 81)
!151 = !DIEnumerator(name: "FILEID_UDF_WITH_PARENT", value: 82)
!152 = !DIEnumerator(name: "FILEID_NILFS_WITHOUT_PARENT", value: 97)
!153 = !DIEnumerator(name: "FILEID_NILFS_WITH_PARENT", value: 98)
!154 = !DIEnumerator(name: "FILEID_FAT_WITHOUT_PARENT", value: 113)
!155 = !DIEnumerator(name: "FILEID_FAT_WITH_PARENT", value: 114)
!156 = !DIEnumerator(name: "FILEID_LUSTRE", value: 151)
!157 = !DIEnumerator(name: "FILEID_KERNFS", value: 254)
!158 = !DIEnumerator(name: "FILEID_INVALID", value: 255)
!159 = !{!160, !161, !164, !192, !181, !179, !194, !1722, !4612}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "llu", file: !162, line: 474, baseType: !163)
!162 = !DIFile(filename: "fs/fat/fat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83afc15ac4ff27e2fd85303f483c9bf6")
!163 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_dir_entry", file: !166, line: 172, size: 256, elements: !167)
!166 = !DIFile(filename: "./include/uapi/linux/msdos_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3cb8f933672ca730d2ef7b5cb690cdb")
!167 = !{!168, !175, !176, !177, !178, !183, !184, !185, !186, !187, !188, !189}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !166, line: 173, baseType: !169, size: 88)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 88, elements: !173)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !171, line: 21, baseType: !172)
!171 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!172 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!173 = !{!174}
!174 = !DISubrange(count: 11)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !165, file: !166, line: 174, baseType: !170, size: 8, offset: 88)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "lcase", scope: !165, file: !166, line: 175, baseType: !170, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ctime_cs", scope: !165, file: !166, line: 176, baseType: !170, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !165, file: !166, line: 177, baseType: !179, size: 16, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !180, line: 36, baseType: !181)
!180 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !171, line: 24, baseType: !182)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "cdate", scope: !165, file: !166, line: 178, baseType: !179, size: 16, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "adate", scope: !165, file: !166, line: 179, baseType: !179, size: 16, offset: 144)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "starthi", scope: !165, file: !166, line: 180, baseType: !179, size: 16, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !165, file: !166, line: 181, baseType: !179, size: 16, offset: 176)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !165, file: !166, line: 181, baseType: !179, size: 16, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !165, file: !166, line: 181, baseType: !179, size: 16, offset: 208)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !165, file: !166, line: 182, baseType: !190, size: 32, offset: 224)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !180, line: 38, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !171, line: 27, baseType: !7)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !193, line: 154, baseType: !7)
!193 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_inode_info", file: !162, line: 112, size: 6016, elements: !196)
!196 = !{!197, !235, !241, !242, !243, !248, !249, !250, !251, !252, !259, !260, !282, !290}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru_lock", scope: !195, file: !162, line: 113, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !199, line: 29, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !199, line: 17, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !199, line: 18, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !199, line: 18, size: 32, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !203, file: !199, line: 19, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !207, line: 14, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !206, file: !207, line: 15, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !211, line: 44, baseType: !212)
!211 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !211, line: 14, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !211, line: 15, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !211, line: 15, size: 32, elements: !216)
!216 = !{!217, !222, !229}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !215, file: !211, line: 16, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !193, line: 174, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 172, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !219, file: !193, line: 173, baseType: !96, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !211, line: 24, baseType: !223, size: 16)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !211, line: 24, size: 16, elements: !224)
!224 = !{!225, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !223, file: !211, line: 25, baseType: !226, size: 8)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !227, line: 17, baseType: !170)
!227 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !223, file: !211, line: 26, baseType: !226, size: 8, offset: 8)
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !211, line: 28, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !211, line: 28, size: 32, elements: !231)
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !230, file: !211, line: 29, baseType: !233, size: 16)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !227, line: 19, baseType: !181)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !230, file: !211, line: 30, baseType: !233, size: 16, offset: 16)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru", scope: !195, file: !162, line: 114, baseType: !236, size: 128, offset: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !193, line: 190, size: 128, elements: !237)
!237 = !{!238, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !193, line: 191, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !236, file: !193, line: 191, baseType: !239, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_caches", scope: !195, file: !162, line: 115, baseType: !96, size: 32, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid_id", scope: !195, file: !162, line: 117, baseType: !7, size: 32, offset: 224)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mmu_private", scope: !195, file: !162, line: 120, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !193, line: 52, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !246, line: 88, baseType: !247)
!246 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!247 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !195, file: !162, line: 122, baseType: !96, size: 32, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_logstart", scope: !195, file: !162, line: 123, baseType: !96, size: 32, offset: 352)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_attrs", scope: !195, file: !162, line: 124, baseType: !96, size: 32, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_pos", scope: !195, file: !162, line: 125, baseType: !244, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_fat_hash", scope: !195, file: !162, line: 126, baseType: !253, size: 128, offset: 512)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !193, line: 198, size: 128, elements: !254)
!254 = !{!255, !257}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !193, line: 199, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !253, file: !193, line: 199, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_hash", scope: !195, file: !162, line: 127, baseType: !253, size: 128, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "truncate_lock", scope: !195, file: !162, line: 128, baseType: !261, size: 320, offset: 768)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !262, line: 48, size: 320, elements: !263)
!262 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!263 = !{!264, !273, !274, !279, !281}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !261, file: !262, line: 49, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !266, line: 13, baseType: !267)
!266 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !193, line: 181, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 179, size: 64, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !268, file: !193, line: 180, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !227, line: 22, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !171, line: 30, baseType: !247)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !261, file: !262, line: 55, baseType: !265, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !261, file: !262, line: 57, baseType: !275, size: 32, offset: 128)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !276, line: 15, size: 32, elements: !277)
!276 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !275, file: !276, line: 20, baseType: !218, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !261, file: !262, line: 59, baseType: !280, size: 32, offset: 160)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !207, line: 23, baseType: !206)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !261, file: !262, line: 60, baseType: !236, size: 128, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_crtime", scope: !195, file: !162, line: 129, baseType: !283, size: 128, offset: 1088)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !284, line: 13, size: 128, elements: !285)
!284 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !283, file: !284, line: 14, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !284, line: 8, baseType: !272)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !283, file: !284, line: 15, baseType: !289, size: 64, offset: 64)
!289 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !195, file: !162, line: 130, baseType: !291, size: 4800, offset: 1216)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !59, line: 641, size: 4800, elements: !292)
!292 = !{!293, !295, !296, !304, !305, !312, !313, !316, !317, !4550, !4551, !4552, !4553, !4554, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4594, !4597, !4598, !4599, !4608, !4609, !4610, !4611}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !291, file: !59, line: 642, baseType: !294, size: 16)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !193, line: 24, baseType: !182)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !291, file: !59, line: 643, baseType: !182, size: 16, offset: 16)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !291, file: !59, line: 644, baseType: !297, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !298, line: 23, baseType: !299)
!298 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 21, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !299, file: !298, line: 22, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !193, line: 37, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !246, line: 49, baseType: !7)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !291, file: !59, line: 645, baseType: !236, size: 128, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !291, file: !59, line: 646, baseType: !306, size: 32, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !298, line: 28, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 26, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !307, file: !298, line: 27, baseType: !310, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !193, line: 38, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !246, line: 50, baseType: !7)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !291, file: !59, line: 647, baseType: !7, size: 32, offset: 224)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !291, file: !59, line: 650, baseType: !314, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !59, line: 607, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !291, file: !59, line: 651, baseType: !314, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !291, file: !59, line: 654, baseType: !318, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !59, line: 1966, size: 2048, align: 512, elements: !321)
!321 = !{!322, !4417, !4427, !4431, !4435, !4439, !4443, !4447, !4451, !4455, !4459, !4460, !4464, !4468, !4472, !4501, !4505, !4511, !4515, !4519, !4523, !4527, !4531, !4537, !4541}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !320, file: !59, line: 1967, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !369, !326, !7}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !328, line: 82, size: 1536, elements: !329)
!328 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!329 = !{!330, !331, !341, !349, !350, !368, !370, !374, !387, !4400, !4401, !4402, !4403, !4409, !4410, !4411}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !327, file: !328, line: 84, baseType: !7, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !327, file: !328, line: 85, baseType: !332, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !333, line: 275, baseType: !334)
!333 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !333, line: 275, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !334, file: !333, line: 275, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !333, line: 69, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !333, line: 64, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !338, file: !333, line: 65, baseType: !7, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !327, file: !328, line: 86, baseType: !342, size: 128, offset: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !343, line: 38, size: 128, elements: !344)
!343 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!344 = !{!345, !347}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !343, line: 39, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !342, file: !343, line: 39, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !327, file: !328, line: 87, baseType: !326, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !327, file: !328, line: 88, baseType: !351, size: 128, offset: 256)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !328, line: 49, size: 128, elements: !352)
!352 = !{!353, !365}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !328, line: 50, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !328, line: 50, size: 64, elements: !355)
!355 = !{!356, !362}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !328, line: 51, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !328, line: 51, size: 64, elements: !358)
!358 = !{!359, !361}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !357, file: !328, line: 52, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !227, line: 21, baseType: !191)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !357, file: !328, line: 52, baseType: !360, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !354, file: !328, line: 54, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !227, line: 23, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !171, line: 31, baseType: !163)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !351, file: !328, line: 56, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !327, file: !328, line: 89, baseType: !369, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !327, file: !328, line: 91, baseType: !371, size: 256, offset: 448)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !327, file: !328, line: 94, baseType: !375, size: 64, offset: 704)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !376, line: 25, size: 64, elements: !377)
!376 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 26, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 26, size: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !379, file: !376, line: 28, baseType: !364, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !376, line: 30, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !376, line: 30, size: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !383, file: !376, line: 31, baseType: !198, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !383, file: !376, line: 32, baseType: !96, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !327, file: !328, line: 95, baseType: !388, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !328, line: 128, size: 1024, align: 512, elements: !391)
!391 = !{!392, !396, !397, !404, !413, !417, !421, !425, !426, !430, !435, !4390, !4394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !390, file: !328, line: 129, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!96, !326, !7}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !390, file: !328, line: 130, baseType: !393, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !390, file: !328, line: 131, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!96, !401, !403}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !390, file: !328, line: 132, baseType: !405, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!96, !401, !7, !408, !411}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !390, file: !328, line: 134, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!96, !401}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !390, file: !328, line: 135, baseType: !418, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!96, !326}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !390, file: !328, line: 136, baseType: !422, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !326}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !390, file: !328, line: 137, baseType: !422, size: 64, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !390, file: !328, line: 138, baseType: !427, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !326, !369}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !390, file: !328, line: 139, baseType: !431, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !326, !434, !96}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !390, file: !328, line: 140, baseType: !436, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !4389}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !441, line: 70, size: 256, elements: !442)
!441 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!442 = !{!443, !444, !4385, !4386}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !440, file: !441, line: 71, baseType: !326, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !440, file: !441, line: 72, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !59, line: 1190, size: 10752, elements: !447)
!447 = !{!448, !449, !452, !453, !455, !456, !2306, !2438, !2478, !2563, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2676, !2680, !2681, !3140, !3143, !3146, !3149, !3150, !3151, !3192, !4318, !4319, !4320, !4321, !4322, !4323, !4326, !4328, !4335, !4336, !4337, !4338, !4339, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !446, file: !59, line: 1191, baseType: !236, size: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !446, file: !59, line: 1192, baseType: !450, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !193, line: 21, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !193, line: 18, baseType: !360)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !446, file: !59, line: 1193, baseType: !172, size: 8, offset: 160)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !446, file: !59, line: 1194, baseType: !454, size: 64, offset: 192)
!454 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !446, file: !59, line: 1195, baseType: !244, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !446, file: !59, line: 1196, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !59, line: 2366, size: 576, elements: !459)
!459 = !{!460, !461, !462, !468, !472, !476, !480, !2294, !2295, !2296, !2298, !2299, !2300, !2302, !2303, !2304, !2305}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !458, file: !59, line: 2367, baseType: !408, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !458, file: !59, line: 2368, baseType: !96, size: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !458, file: !59, line: 2376, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!96, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !441, line: 21, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !458, file: !59, line: 2377, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !59, line: 75, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !458, file: !59, line: 2378, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!326, !457, !96, !408, !160}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !458, file: !59, line: 2380, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !445}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !458, file: !59, line: 2381, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !483)
!483 = !{!484, !485, !486, !490, !1950, !1976, !1977, !1978, !1979, !1983, !1986, !1987, !1988, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2056, !2060, !2080, !2098, !2099, !2100, !2101, !2110, !2133, !2134, !2137, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2151, !2152, !2252, !2260, !2261, !2262, !2264, !2268, !2269, !2273, !2274, !2275, !2276, !2278, !2279, !2280, !2287, !2288, !2289, !2293}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !482, file: !6, line: 403, baseType: !5, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !482, file: !6, line: 406, baseType: !236, size: 128, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !482, file: !6, line: 409, baseType: !487, size: 448, offset: 192)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 448, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 56)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !482, file: !6, line: 417, baseType: !491, size: 768, offset: 640)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !492)
!492 = !{!493, !1943, !1944, !1945, !1948}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !491, file: !6, line: 46, baseType: !494, size: 512)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !495, line: 64, size: 512, elements: !496)
!495 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!496 = !{!497, !498, !499, !501, !547, !1829, !1933, !1938, !1939, !1940, !1941, !1942}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !495, line: 65, baseType: !408, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !494, file: !495, line: 66, baseType: !236, size: 128, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !494, file: !495, line: 67, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !494, file: !495, line: 68, baseType: !502, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !495, line: 168, size: 768, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !503, file: !495, line: 169, baseType: !236, size: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !503, file: !495, line: 170, baseType: !198, size: 32, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !503, file: !495, line: 171, baseType: !494, size: 512, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !503, file: !495, line: 172, baseType: !509, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !495, line: 133, size: 192, elements: !512)
!512 = !{!513, !520, !525}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !511, file: !495, line: 134, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!96, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !495, line: 135, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!408, !518}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !511, file: !495, line: 136, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!96, !518, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !495, line: 125, size: 20736, elements: !532)
!532 = !{!533, !537, !541, !542, !546}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !531, file: !495, line: 126, baseType: !534, size: 192)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 192, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 3)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !531, file: !495, line: 127, baseType: !538, size: 4096, offset: 192)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 4096, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !531, file: !495, line: 128, baseType: !96, size: 32, offset: 4288)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !531, file: !495, line: 129, baseType: !543, size: 16384, offset: 4320)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 16384, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 2048)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !531, file: !495, line: 130, baseType: !96, size: 32, offset: 20704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !494, file: !495, line: 69, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !495, line: 116, size: 384, elements: !551)
!551 = !{!552, !556, !581, !1788, !1819, !1823}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !550, file: !495, line: 117, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !500}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !550, file: !495, line: 118, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !560, line: 254, size: 128, elements: !561)
!560 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!561 = !{!562, !574}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !559, file: !560, line: 255, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!566, !500, !569, !434}
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 66, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !246, line: 73, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !246, line: 15, baseType: !289)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !560, line: 30, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !560, line: 31, baseType: !408, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !570, file: !560, line: 32, baseType: !294, size: 16, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !559, file: !560, line: 256, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!566, !500, !569, !408, !578}
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 61, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !246, line: 72, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !246, line: 16, baseType: !454)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !550, file: !495, line: 119, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !560, line: 84, size: 320, elements: !586)
!586 = !{!587, !588, !592, !1784, !1786}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !560, line: 85, baseType: !408, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !585, file: !560, line: 86, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!294, !500, !569, !96}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !585, file: !560, line: 88, baseType: !593, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!294, !500, !596, !96}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !560, line: 175, size: 512, elements: !598)
!598 = !{!599, !600, !601, !602, !1775, !1779, !1780}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !597, file: !560, line: 176, baseType: !570, size: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !597, file: !560, line: 177, baseType: !578, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !597, file: !560, line: 178, baseType: !160, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !597, file: !560, line: 179, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !59, line: 472, size: 1536, align: 64, elements: !608)
!608 = !{!609, !610, !617, !618, !619, !620, !635, !636, !637, !1769, !1770, !1771, !1772, !1773, !1774}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !607, file: !59, line: 473, baseType: !369, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !607, file: !59, line: 474, baseType: !611, size: 128, offset: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !612, line: 296, size: 128, elements: !613)
!612 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!613 = !{!614, !615, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !611, file: !612, line: 297, baseType: !198, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !611, file: !612, line: 299, baseType: !192, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !611, file: !612, line: 300, baseType: !160, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !607, file: !59, line: 475, baseType: !261, size: 320, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !607, file: !59, line: 476, baseType: !192, size: 32, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !607, file: !59, line: 477, baseType: !218, size: 32, offset: 544)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !607, file: !59, line: 482, baseType: !621, size: 128, offset: 576)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !622, line: 26, size: 128, elements: !623)
!622 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!623 = !{!624, !634}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !621, file: !622, line: 27, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !622, line: 12, size: 64, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !625, file: !622, line: 13, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !622, line: 5, size: 192, align: 64, elements: !630)
!630 = !{!631, !632, !633}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !629, file: !622, line: 6, baseType: !454, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !629, file: !622, line: 7, baseType: !628, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !629, file: !622, line: 8, baseType: !628, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !621, file: !622, line: 28, baseType: !628, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !607, file: !59, line: 483, baseType: !454, size: 64, offset: 704)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !607, file: !59, line: 484, baseType: !454, size: 64, offset: 768)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !607, file: !59, line: 485, baseType: !638, size: 64, offset: 832)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !59, line: 404, size: 1280, elements: !641)
!641 = !{!642, !1681, !1685, !1689, !1693, !1709, !1714, !1718, !1723, !1727, !1731, !1735, !1736, !1740, !1744, !1748, !1753, !1757, !1764, !1765}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !640, file: !59, line: 405, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!96, !646, !1679}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !648)
!648 = !{!649, !650, !1673, !1678}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !30, line: 75, baseType: !454, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !647, file: !30, line: 83, baseType: !651, size: 320, offset: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !30, line: 83, size: 320, elements: !652)
!652 = !{!653, !674, !688, !692, !1672}
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !30, line: 84, baseType: !654, size: 320)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !651, file: !30, line: 84, size: 320, elements: !655)
!655 = !{!656, !667, !668, !673}
!656 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !30, line: 90, baseType: !657, size: 128)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !30, line: 90, size: 128, elements: !658)
!658 = !{!659, !660, !665, !666}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !657, file: !30, line: 91, baseType: !236, size: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !30, line: 94, baseType: !661, size: 128)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !657, file: !30, line: 94, size: 128, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !661, file: !30, line: 96, baseType: !160, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !661, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !657, file: !30, line: 102, baseType: !236, size: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !657, file: !30, line: 103, baseType: !236, size: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !654, file: !30, line: 106, baseType: !606, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !30, line: 107, baseType: !669, size: 64, offset: 192)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !30, line: 107, size: 64, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !669, file: !30, line: 108, baseType: !454, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !669, file: !30, line: 109, baseType: !454, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !654, file: !30, line: 117, baseType: !454, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !30, line: 119, baseType: !675, size: 320)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !651, file: !30, line: 119, size: 320, elements: !676)
!676 = !{!677, !678, !681, !682, !683}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !675, file: !30, line: 124, baseType: !454, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !675, file: !30, line: 125, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !675, file: !30, line: 126, baseType: !454, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !675, file: !30, line: 127, baseType: !454, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !30, line: 128, baseType: !684, size: 64, offset: 256)
!684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !30, line: 128, size: 64, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !684, file: !30, line: 133, baseType: !454, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !684, file: !30, line: 138, baseType: !265, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !30, line: 141, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !651, file: !30, line: 141, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !689, file: !30, line: 142, baseType: !454, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !30, line: 144, baseType: !693, size: 128)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !651, file: !30, line: 144, size: 128, elements: !694)
!694 = !{!695, !1671}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !693, file: !30, line: 146, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !698)
!698 = !{!699, !709, !740, !751, !752, !753, !754, !1653, !1654, !1655}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !697, file: !14, line: 127, baseType: !700, size: 384)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !701)
!701 = !{!702, !703, !705, !706, !707, !708}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !700, file: !14, line: 22, baseType: !454, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !700, file: !14, line: 23, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !700, file: !14, line: 24, baseType: !704, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !700, file: !14, line: 25, baseType: !454, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !700, file: !14, line: 26, baseType: !454, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !700, file: !14, line: 27, baseType: !454, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !697, file: !14, line: 128, baseType: !710, size: 128, offset: 384)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !711, line: 105, size: 128, elements: !712)
!711 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !710, file: !711, line: 110, baseType: !454, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !710, file: !711, line: 118, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !711, line: 95, size: 448, elements: !717)
!717 = !{!718, !719, !725, !726, !729, !730, !739}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !716, file: !711, line: 96, baseType: !265, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !716, file: !711, line: 97, baseType: !720, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !711, line: 60, baseType: !722)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !716, file: !711, line: 98, baseType: !720, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !716, file: !711, line: 99, baseType: !727, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !193, line: 35, baseType: !728)
!728 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !716, file: !711, line: 100, baseType: !727, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !716, file: !711, line: 101, baseType: !731, size: 128, align: 64, offset: 256)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !193, line: 232, size: 128, align: 64, elements: !732)
!732 = !{!733, !735}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !193, line: 233, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !731, file: !193, line: 234, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !734}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !716, file: !711, line: 102, baseType: !724, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !697, file: !14, line: 129, baseType: !741, size: 256, offset: 512)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !742, line: 26, size: 256, elements: !743)
!742 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !741, file: !742, line: 27, baseType: !7, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !741, file: !742, line: 28, baseType: !746, size: 192, offset: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !747, line: 43, size: 192, elements: !748)
!747 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !746, file: !747, line: 44, baseType: !280, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !746, file: !747, line: 45, baseType: !236, size: 128, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !697, file: !14, line: 132, baseType: !454, size: 64, offset: 832)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !697, file: !14, line: 133, baseType: !755, size: 64, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !758)
!758 = !{!759, !763, !1649}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !757, file: !14, line: 83, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !646}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !757, file: !14, line: 89, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !770, line: 512, size: 896, elements: !771)
!770 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!771 = !{!772, !1616, !1617, !1624, !1631, !1641, !1642, !1643, !1645, !1647}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !770, line: 513, baseType: !773, size: 320)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !770, line: 513, size: 320, elements: !774)
!774 = !{!775, !1612, !1613, !1614, !1615}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !773, file: !770, line: 514, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !778)
!778 = !{!779, !788, !1517, !1523, !1530, !1531, !1536, !1537, !1542, !1543, !1546, !1605, !1606, !1607, !1608, !1609, !1610}
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !30, line: 628, baseType: !780, size: 128)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !30, line: 628, size: 128, elements: !781)
!781 = !{!782, !787}
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !30, line: 629, baseType: !783, size: 128)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !30, line: 629, size: 128, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !783, file: !30, line: 631, baseType: !454, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !783, file: !30, line: 632, baseType: !454, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !780, file: !30, line: 635, baseType: !731, size: 128, align: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !777, file: !30, line: 639, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !791)
!791 = !{!792, !1515}
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !30, line: 734, baseType: !793, size: 10240)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !790, file: !30, line: 734, size: 10240, elements: !794)
!794 = !{!795, !799, !813, !1377, !1378, !1379, !1380, !1381, !1382, !1391, !1392, !1393, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1432, !1434, !1437, !1484, !1485, !1486, !1489, !1490, !1491, !1494, !1495, !1496, !1502, !1503}
!795 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !30, line: 739, baseType: !796, size: 512, align: 512)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !793, file: !30, line: 739, size: 512, align: 512, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !796, file: !30, line: 747, baseType: !218, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !793, file: !30, line: 750, baseType: !800, size: 128, offset: 512)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !801, line: 218, size: 128, elements: !802)
!801 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!802 = !{!803, !811, !812}
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 219, baseType: !804, size: 32)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 219, size: 32, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !804, file: !801, line: 220, baseType: !198, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !804, file: !801, line: 221, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !801, line: 197, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !801, line: 197, elements: !810)
!810 = !{}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !800, file: !801, line: 223, baseType: !7, size: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !800, file: !801, line: 224, baseType: !160, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !793, file: !30, line: 752, baseType: !814, size: 64, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!454, !817, !454, !454, !454, !454}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !59, line: 994, size: 1856, align: 64, elements: !819)
!819 = !{!820, !831, !832, !834, !835, !843, !844, !845, !911, !1104, !1113, !1119, !1120, !1367, !1368, !1369, !1370, !1372, !1373, !1376}
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !59, line: 995, baseType: !821, size: 128)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !59, line: 995, size: 128, elements: !822)
!822 = !{!823, !829, !830}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !821, file: !59, line: 996, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !825, line: 60, size: 64, elements: !826)
!825 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !825, line: 61, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !821, file: !59, line: 997, baseType: !731, size: 128, align: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !821, file: !59, line: 998, baseType: !7, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !818, file: !59, line: 1005, baseType: !198, size: 32, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !818, file: !59, line: 1006, baseType: !833, size: 32, offset: 160)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !193, line: 156, baseType: !7)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !818, file: !59, line: 1007, baseType: !265, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !818, file: !59, line: 1008, baseType: !836, size: 256, offset: 256)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !837, line: 66, size: 256, elements: !838)
!837 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!838 = !{!839, !840, !841, !842}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !836, file: !837, line: 67, baseType: !265, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !836, file: !837, line: 68, baseType: !280, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !836, file: !837, line: 70, baseType: !275, size: 32, offset: 96)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !836, file: !837, line: 72, baseType: !236, size: 128, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !818, file: !59, line: 1009, baseType: !244, size: 64, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !818, file: !59, line: 1010, baseType: !7, size: 32, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !818, file: !59, line: 1011, baseType: !846, size: 256, offset: 640)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !59, line: 948, size: 256, elements: !847)
!847 = !{!848, !869, !907, !908, !909, !910}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !846, file: !59, line: 949, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !850, line: 34, baseType: !851)
!850 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !850, line: 25, size: 64, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !851, file: !850, line: 26, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !855, line: 27, baseType: !856)
!855 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !855, line: 13, size: 64, elements: !857)
!857 = !{!858, !868}
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !855, line: 14, baseType: !859, size: 32)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !855, line: 14, size: 32, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !859, file: !855, line: 15, baseType: !218, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !855, line: 16, baseType: !863, size: 32)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !855, line: 16, size: 32, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !863, file: !855, line: 18, baseType: !226, size: 8)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !863, file: !855, line: 19, baseType: !867, size: 24, offset: 8)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 24, elements: !535)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !856, file: !855, line: 26, baseType: !210, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !846, file: !59, line: 950, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !22, line: 59, size: 768, elements: !872)
!872 = !{!873, !879, !880, !881, !888, !889, !896, !897}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !22, line: 61, baseType: !874, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !875, line: 113, baseType: !876)
!875 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !875, line: 111, size: 32, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !876, file: !875, line: 112, baseType: !218, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !871, file: !22, line: 62, baseType: !7, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !871, file: !22, line: 63, baseType: !198, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !871, file: !22, line: 65, baseType: !882, size: 256, offset: 128)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 256, elements: !886)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !193, line: 194, size: 64, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !883, file: !193, line: 195, baseType: !256, size: 64)
!886 = !{!887}
!887 = !DISubrange(count: 4)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !871, file: !22, line: 66, baseType: !883, size: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !871, file: !22, line: 68, baseType: !890, size: 192, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !891, line: 41, baseType: !892)
!891 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !891, line: 37, size: 192, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !892, file: !891, line: 38, baseType: !198, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !892, file: !891, line: 39, baseType: !236, size: 128, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !871, file: !22, line: 69, baseType: !731, size: 128, align: 64, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !871, file: !22, line: 70, baseType: !898, offset: 768)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, elements: !905)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !22, line: 54, size: 128, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !899, file: !22, line: 55, baseType: !96, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !899, file: !22, line: 56, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !22, line: 56, flags: DIFlagFwdDecl)
!905 = !{!906}
!906 = !DISubrange(count: -1)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !846, file: !59, line: 951, baseType: !21, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !846, file: !59, line: 952, baseType: !297, size: 32, offset: 160)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !846, file: !59, line: 952, baseType: !297, size: 32, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !846, file: !59, line: 953, baseType: !96, size: 32, offset: 224)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !818, file: !59, line: 1012, baseType: !912, size: 64, offset: 896)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !915, line: 110, size: 1472, elements: !916)
!915 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!916 = !{!917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !933, !934, !935, !936, !937, !938, !1049, !1050, !1051, !1052, !1053, !1084, !1087, !1091, !1099}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !914, file: !915, line: 111, baseType: !265, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !914, file: !915, line: 112, baseType: !297, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !914, file: !915, line: 113, baseType: !306, size: 32, offset: 96)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !914, file: !915, line: 114, baseType: !297, size: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !914, file: !915, line: 115, baseType: !306, size: 32, offset: 160)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !914, file: !915, line: 116, baseType: !297, size: 32, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !914, file: !915, line: 117, baseType: !306, size: 32, offset: 224)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !914, file: !915, line: 118, baseType: !297, size: 32, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !914, file: !915, line: 119, baseType: !306, size: 32, offset: 288)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !914, file: !915, line: 120, baseType: !7, size: 32, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !914, file: !915, line: 121, baseType: !928, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !929, line: 24, baseType: !930)
!929 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !929, line: 24, size: 64, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !930, file: !929, line: 24, baseType: !363, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !914, file: !915, line: 122, baseType: !928, size: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !914, file: !915, line: 123, baseType: !928, size: 64, offset: 512)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !914, file: !915, line: 124, baseType: !928, size: 64, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !914, file: !915, line: 125, baseType: !928, size: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !914, file: !915, line: 127, baseType: !172, size: 8, offset: 704)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !914, file: !915, line: 129, baseType: !939, size: 64, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !941, line: 195, size: 1728, elements: !942)
!941 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!942 = !{!943, !944, !949, !954, !955, !958, !959, !964, !965, !966, !967, !970, !971, !972, !974, !975, !1013, !1034}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !940, file: !941, line: 196, baseType: !874, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !940, file: !941, line: 197, baseType: !945, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !941, line: 28, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !193, line: 104, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !227, line: 20, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !171, line: 26, baseType: !96)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !941, line: 198, baseType: !950, size: 192, offset: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !941, line: 198, size: 192, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !950, file: !941, line: 199, baseType: !236, size: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !950, file: !941, line: 200, baseType: !629, size: 192, align: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !940, file: !941, line: 205, baseType: !261, size: 320, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !940, file: !941, line: 206, baseType: !956, size: 64, offset: 576)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !941, line: 206, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !940, file: !941, line: 207, baseType: !160, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !941, line: 208, baseType: !960, size: 64, offset: 704)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !941, line: 208, size: 64, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !960, file: !941, line: 209, baseType: !287, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !960, file: !941, line: 210, baseType: !287, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !940, file: !941, line: 212, baseType: !287, size: 64, offset: 768)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !940, file: !941, line: 213, baseType: !297, size: 32, offset: 832)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !940, file: !941, line: 214, baseType: !306, size: 32, offset: 864)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !940, file: !941, line: 215, baseType: !968, size: 32, offset: 896)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !941, line: 31, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !193, line: 110, baseType: !360)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !940, file: !941, line: 216, baseType: !182, size: 16, offset: 928)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !940, file: !941, line: 217, baseType: !182, size: 16, offset: 944)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !940, file: !941, line: 221, baseType: !973, size: 16, offset: 960)
!973 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !940, file: !941, line: 228, baseType: !454, size: 64, offset: 1024)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !941, line: 245, baseType: !976, size: 320, offset: 1088)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !941, line: 245, size: 320, elements: !977)
!977 = !{!978, !1005}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !976, file: !941, line: 246, baseType: !979, size: 320)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !941, line: 114, size: 320, elements: !980)
!980 = !{!981, !982, !994, !997, !1004}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !979, file: !941, line: 116, baseType: !454, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !941, line: 117, baseType: !983, size: 64, offset: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !941, line: 117, size: 64, elements: !984)
!984 = !{!985, !993}
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !941, line: 118, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !941, line: 118, size: 64, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !986, file: !941, line: 120, baseType: !233, size: 16)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !986, file: !941, line: 121, baseType: !990, size: 48, offset: 16)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 48, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 6)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !983, file: !941, line: 127, baseType: !454, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !979, file: !941, line: 129, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !941, line: 102, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !979, file: !941, line: 130, baseType: !998, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !941, line: 108, size: 192, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !999, file: !941, line: 109, baseType: !731, size: 128, align: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !999, file: !941, line: 110, baseType: !874, size: 32, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !999, file: !941, line: 111, baseType: !727, size: 8, offset: 160)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !979, file: !941, line: 131, baseType: !408, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !941, line: 247, baseType: !1006, size: 320)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !941, line: 247, size: 320, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1012}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1006, file: !941, line: 248, baseType: !454, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1006, file: !941, line: 249, baseType: !454, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1006, file: !941, line: 250, baseType: !995, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1006, file: !941, line: 251, baseType: !998, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1006, file: !941, line: 252, baseType: !434, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !941, line: 260, baseType: !1014, size: 256, offset: 1408)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !941, line: 260, size: 256, elements: !1015)
!1015 = !{!1016, !1022}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1014, file: !941, line: 261, baseType: !1017, size: 256)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !941, line: 134, size: 256, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1017, file: !941, line: 135, baseType: !160, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1017, file: !941, line: 136, baseType: !1021, size: 256)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !886)
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !941, line: 262, baseType: !1023, size: 256)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !941, line: 262, size: 256, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1023, file: !941, line: 264, baseType: !236, size: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1023, file: !941, line: 265, baseType: !1027, size: 128, offset: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1028, line: 22, size: 128, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1029 = !{!1030, !1033}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1027, file: !1028, line: 23, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1028, line: 23, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1027, file: !1028, line: 24, baseType: !454, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !940, file: !941, line: 280, baseType: !1035, size: 64, offset: 1664)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !941, line: 176, size: 192, elements: !1037)
!1037 = !{!1038, !1047, !1048}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1036, file: !941, line: 177, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !941, line: 171, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!96, !939, !1043, !1045, !939}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1036, file: !941, line: 178, baseType: !939, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1036, file: !941, line: 179, baseType: !995, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !914, file: !915, line: 130, baseType: !939, size: 64, offset: 832)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !914, file: !915, line: 131, baseType: !939, size: 64, offset: 896)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !914, file: !915, line: 132, baseType: !939, size: 64, offset: 960)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !914, file: !915, line: 135, baseType: !160, size: 64, offset: 1024)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !914, file: !915, line: 137, baseType: !1054, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1056, line: 14, size: 1088, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1057 = !{!1058, !1059, !1068, !1069, !1070, !1071, !1072, !1073}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1055, file: !1056, line: 15, baseType: !874, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1055, file: !1056, line: 17, baseType: !1060, size: 320, offset: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1061, line: 22, size: 320, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1062 = !{!1063, !1064, !1065, !1066}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1060, file: !1061, line: 23, baseType: !280, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1060, file: !1061, line: 24, baseType: !271, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1060, file: !1061, line: 26, baseType: !236, size: 128, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1060, file: !1061, line: 28, baseType: !1067, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1055, file: !1056, line: 19, baseType: !454, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1055, file: !1056, line: 20, baseType: !265, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1055, file: !1056, line: 23, baseType: !253, size: 128, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1055, file: !1056, line: 24, baseType: !297, size: 32, offset: 640)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1055, file: !1056, line: 29, baseType: !265, size: 64, offset: 704)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1055, file: !1056, line: 36, baseType: !1074, size: 320, offset: 768)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1075, line: 15, size: 320, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1074, file: !1075, line: 16, baseType: !280, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1074, file: !1075, line: 18, baseType: !96, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1074, file: !1075, line: 19, baseType: !96, size: 32, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1074, file: !1075, line: 20, baseType: !96, size: 32, offset: 96)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1074, file: !1075, line: 21, baseType: !96, size: 32, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1074, file: !1075, line: 22, baseType: !454, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1074, file: !1075, line: 23, baseType: !454, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !914, file: !915, line: 138, baseType: !1085, size: 64, offset: 1152)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !298, line: 18, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !914, file: !915, line: 139, baseType: !1088, size: 64, offset: 1216)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1090, line: 16, flags: DIFlagFwdDecl)
!1090 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !914, file: !915, line: 140, baseType: !1092, size: 64, offset: 1280)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !915, line: 25, size: 64, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1093, file: !915, line: 26, baseType: !218, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1093, file: !915, line: 27, baseType: !96, size: 32, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1093, file: !915, line: 28, baseType: !1098, offset: 64)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, elements: !905)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !915, line: 142, baseType: !1100, size: 128, offset: 1344)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !914, file: !915, line: 142, size: 128, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1100, file: !915, line: 143, baseType: !96, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1100, file: !915, line: 144, baseType: !731, size: 128, align: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !818, file: !59, line: 1013, baseType: !1105, size: 256, offset: 960)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !59, line: 970, size: 256, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1105, file: !59, line: 971, baseType: !454, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1105, file: !59, line: 972, baseType: !7, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1105, file: !59, line: 973, baseType: !7, size: 32, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1105, file: !59, line: 974, baseType: !7, size: 32, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1105, file: !59, line: 975, baseType: !7, size: 32, offset: 160)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1105, file: !59, line: 976, baseType: !244, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !818, file: !59, line: 1014, baseType: !1114, size: 128, offset: 1216)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1115, line: 8, size: 128, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1114, file: !1115, line: 9, baseType: !439, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1114, file: !1115, line: 10, baseType: !326, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !818, file: !59, line: 1015, baseType: !369, size: 64, offset: 1344)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !818, file: !59, line: 1016, baseType: !1121, size: 64, offset: 1408)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !59, line: 1914, size: 2112, elements: !1124)
!1124 = !{!1125, !1126, !1130, !1135, !1139, !1250, !1251, !1257, !1270, !1277, !1281, !1282, !1286, !1287, !1291, !1296, !1297, !1301, !1305, !1311, !1312, !1316, !1317, !1324, !1328, !1332, !1338, !1342, !1348, !1352, !1356, !1357, !1363}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1123, file: !59, line: 1915, baseType: !481, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1123, file: !59, line: 1916, baseType: !1127, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!244, !817, !244, !96}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1123, file: !59, line: 1917, baseType: !1131, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!566, !817, !434, !578, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1123, file: !59, line: 1918, baseType: !1136, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!566, !817, !408, !578, !1134}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1123, file: !59, line: 1919, baseType: !1140, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!566, !1143, !1248}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !59, line: 373, size: 384, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1152, !1153, !1154, !1155}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1144, file: !59, line: 374, baseType: !817, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1144, file: !59, line: 375, baseType: !244, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1144, file: !59, line: 376, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1143, !289}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1144, file: !59, line: 377, baseType: !160, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1144, file: !59, line: 378, baseType: !96, size: 32, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1144, file: !59, line: 379, baseType: !233, size: 16, offset: 288)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !59, line: 380, baseType: !1156, size: 64, offset: 320)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !59, line: 380, size: 64, elements: !1157)
!1157 = !{!1158, !1244}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1156, file: !59, line: 386, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1161, line: 998, size: 448, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1162 = !{!1163, !1230, !1231}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1160, file: !1161, line: 999, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !1166)
!1166 = !{!1167, !1197, !1211}
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !30, line: 295, baseType: !1168, size: 512)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !30, line: 295, size: 512, elements: !1169)
!1169 = !{!1170, !1196}
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !30, line: 296, baseType: !1171, size: 448)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1168, file: !30, line: 296, size: 448, elements: !1172)
!1172 = !{!1173, !1174, !1183, !1184, !1185, !1194, !1195}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1171, file: !30, line: 298, baseType: !454, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !30, line: 299, baseType: !1175, size: 128, offset: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !30, line: 299, size: 128, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1175, file: !30, line: 300, baseType: !236, size: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !30, line: 302, baseType: !1179, size: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1175, file: !30, line: 302, size: 128, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1179, file: !30, line: 303, baseType: !160, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1179, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1171, file: !30, line: 310, baseType: !606, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1171, file: !30, line: 311, baseType: !454, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !30, line: 312, baseType: !1186, size: 64, offset: 320)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !30, line: 312, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1186, file: !30, line: 313, baseType: !160, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1186, file: !30, line: 314, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1191, file: !30, line: 256, baseType: !454, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1171, file: !30, line: 316, baseType: !218, size: 32, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1171, file: !30, line: 317, baseType: !218, size: 32, offset: 416)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1168, file: !30, line: 323, baseType: !647, size: 512, align: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !30, line: 325, baseType: !1198, size: 512, offset: 512)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !30, line: 325, size: 512, elements: !1199)
!1199 = !{!1200, !1210}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !30, line: 326, baseType: !1201, size: 320)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !30, line: 326, size: 320, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1201, file: !30, line: 327, baseType: !454, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1201, file: !30, line: 328, baseType: !454, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1201, file: !30, line: 329, baseType: !454, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1201, file: !30, line: 331, baseType: !218, size: 32, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1201, file: !30, line: 332, baseType: !218, size: 32, offset: 224)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1201, file: !30, line: 333, baseType: !218, size: 32, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1201, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1198, file: !30, line: 339, baseType: !647, size: 512, align: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !30, line: 341, baseType: !1212, size: 512, offset: 1024)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !30, line: 341, size: 512, elements: !1213)
!1213 = !{!1214, !1223, !1229}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !30, line: 342, baseType: !1215, size: 384)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !30, line: 342, size: 384, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1215, file: !30, line: 343, baseType: !454, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1215, file: !30, line: 344, baseType: !454, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1215, file: !30, line: 346, baseType: !160, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1215, file: !30, line: 347, baseType: !160, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1215, file: !30, line: 348, baseType: !160, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1215, file: !30, line: 349, baseType: !160, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !30, line: 352, baseType: !1224, size: 256)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !30, line: 352, size: 256, elements: !1225)
!1225 = !{!1226, !1227, !1228}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1224, file: !30, line: 353, baseType: !454, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1224, file: !30, line: 354, baseType: !454, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1224, file: !30, line: 356, baseType: !236, size: 128, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1212, file: !30, line: 359, baseType: !647, size: 512, align: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1160, file: !1161, line: 1000, baseType: !96, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1160, file: !1161, line: 1001, baseType: !1232, size: 320, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !891, line: 14, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !891, line: 30, size: 320, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1243}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !891, line: 31, baseType: !7, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1233, file: !891, line: 32, baseType: !160, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1233, file: !891, line: 33, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !891, line: 16, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!96, !1242, !7, !96, !160}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1233, file: !891, line: 34, baseType: !236, size: 128, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1156, file: !59, line: 395, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!566, !160}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !59, line: 69, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1123, file: !59, line: 1920, baseType: !1140, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1123, file: !59, line: 1921, baseType: !1252, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!96, !1143, !1255, !7}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !59, line: 53, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1123, file: !59, line: 1923, baseType: !1258, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!96, !817, !1261}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !59, line: 1858, size: 128, elements: !1263)
!1263 = !{!1264, !1269}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1262, file: !59, line: 1859, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !59, line: 1855, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!727, !1261, !408, !96, !244, !363, !7}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1262, file: !59, line: 1860, baseType: !244, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1123, file: !59, line: 1924, baseType: !1271, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!1274, !817, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !180, line: 59, baseType: !7)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !59, line: 61, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1123, file: !59, line: 1925, baseType: !1278, size: 64, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!289, !817, !7, !454}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1123, file: !59, line: 1926, baseType: !1278, size: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1123, file: !59, line: 1927, baseType: !1283, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!96, !817, !776}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1123, file: !59, line: 1928, baseType: !454, size: 64, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1123, file: !59, line: 1929, baseType: !1288, size: 64, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!96, !369, !817}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1123, file: !59, line: 1930, baseType: !1292, size: 64, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!96, !817, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !59, line: 1061, baseType: !160)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1123, file: !59, line: 1931, baseType: !1288, size: 64, offset: 960)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1123, file: !59, line: 1932, baseType: !1298, size: 64, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!96, !817, !244, !244, !96}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1123, file: !59, line: 1933, baseType: !1302, size: 64, offset: 1088)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!96, !96, !817, !96}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1123, file: !59, line: 1934, baseType: !1306, size: 64, offset: 1152)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!96, !817, !96, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !59, line: 1063, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1123, file: !59, line: 1935, baseType: !814, size: 64, offset: 1216)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1123, file: !59, line: 1936, baseType: !1313, size: 64, offset: 1280)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!96, !96}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1123, file: !59, line: 1937, baseType: !1306, size: 64, offset: 1344)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1123, file: !59, line: 1938, baseType: !1318, size: 64, offset: 1408)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!566, !1321, !817, !1134, !578, !7}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1323, line: 59, flags: DIFlagFwdDecl)
!1323 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1123, file: !59, line: 1939, baseType: !1325, size: 64, offset: 1472)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!566, !817, !1134, !1321, !578, !7}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1123, file: !59, line: 1940, baseType: !1329, size: 64, offset: 1536)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !817}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1123, file: !59, line: 1941, baseType: !1333, size: 64, offset: 1600)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!96, !817, !96, !1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1123, file: !59, line: 1942, baseType: !1339, size: 64, offset: 1664)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!289, !817, !96, !244, !244}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1123, file: !59, line: 1944, baseType: !1343, size: 64, offset: 1728)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1346, !817}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1323, line: 66, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1123, file: !59, line: 1948, baseType: !1349, size: 64, offset: 1792)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!566, !817, !244, !817, !244, !578, !7}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1123, file: !59, line: 1950, baseType: !1353, size: 64, offset: 1856)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!244, !817, !244, !817, !244, !244, !7}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1123, file: !59, line: 1953, baseType: !1298, size: 64, offset: 1920)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1123, file: !59, line: 1954, baseType: !1358, size: 64, offset: 1984)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!96, !1361, !7}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !59, line: 1911, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1123, file: !59, line: 1955, baseType: !1364, size: 64, offset: 2048)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!96, !1361, !1255, !7}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !818, file: !59, line: 1018, baseType: !363, size: 64, offset: 1472)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !818, file: !59, line: 1020, baseType: !160, size: 64, offset: 1536)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !818, file: !59, line: 1023, baseType: !160, size: 64, offset: 1600)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !818, file: !59, line: 1027, baseType: !1371, size: 64, offset: 1664)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !818, file: !59, line: 1029, baseType: !606, size: 64, offset: 1728)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !818, file: !59, line: 1030, baseType: !1374, size: 32, offset: 1792)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1375, line: 8, baseType: !360)
!1375 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !818, file: !59, line: 1031, baseType: !1374, size: 32, offset: 1824)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !793, file: !30, line: 756, baseType: !454, size: 64, offset: 704)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !793, file: !30, line: 757, baseType: !454, size: 64, offset: 768)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !793, file: !30, line: 760, baseType: !454, size: 64, offset: 832)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !793, file: !30, line: 761, baseType: !454, size: 64, offset: 896)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !793, file: !30, line: 763, baseType: !454, size: 64, offset: 960)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !793, file: !30, line: 764, baseType: !1383, size: 64, offset: 1024)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1385, line: 299, baseType: !1386)
!1385 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1385, line: 299, size: 64, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1386, file: !1385, line: 299, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1390, line: 18, baseType: !454)
!1390 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !793, file: !30, line: 773, baseType: !218, size: 32, offset: 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !793, file: !30, line: 785, baseType: !218, size: 32, offset: 1120)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !793, file: !30, line: 795, baseType: !1394, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1395, file: !30, line: 727, baseType: !363, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1395, file: !30, line: 728, baseType: !96, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !793, file: !30, line: 801, baseType: !454, size: 64, offset: 1216)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !793, file: !30, line: 804, baseType: !265, size: 64, offset: 1280)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !793, file: !30, line: 806, baseType: !96, size: 32, offset: 1344)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !793, file: !30, line: 808, baseType: !198, size: 32, offset: 1376)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !793, file: !30, line: 823, baseType: !261, size: 320, offset: 1408)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !793, file: !30, line: 825, baseType: !236, size: 128, offset: 1728)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !793, file: !30, line: 845, baseType: !96, size: 32, offset: 1856)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !793, file: !30, line: 849, baseType: !454, size: 64, offset: 1920)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !793, file: !30, line: 850, baseType: !454, size: 64, offset: 1984)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !793, file: !30, line: 852, baseType: !454, size: 64, offset: 2048)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !793, file: !30, line: 853, baseType: !454, size: 64, offset: 2112)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !793, file: !30, line: 854, baseType: !267, size: 64, offset: 2176)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !793, file: !30, line: 855, baseType: !454, size: 64, offset: 2240)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !793, file: !30, line: 856, baseType: !454, size: 64, offset: 2304)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !793, file: !30, line: 857, baseType: !454, size: 64, offset: 2368)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !793, file: !30, line: 858, baseType: !454, size: 64, offset: 2432)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !793, file: !30, line: 865, baseType: !337, size: 32, offset: 2496)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !793, file: !30, line: 867, baseType: !198, size: 32, offset: 2528)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !793, file: !30, line: 869, baseType: !454, size: 64, offset: 2560)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !793, file: !30, line: 869, baseType: !454, size: 64, offset: 2624)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !793, file: !30, line: 869, baseType: !454, size: 64, offset: 2688)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !793, file: !30, line: 869, baseType: !454, size: 64, offset: 2752)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !793, file: !30, line: 870, baseType: !454, size: 64, offset: 2816)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !793, file: !30, line: 870, baseType: !454, size: 64, offset: 2880)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !793, file: !30, line: 870, baseType: !454, size: 64, offset: 2944)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !793, file: !30, line: 871, baseType: !454, size: 64, offset: 3008)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !793, file: !30, line: 871, baseType: !454, size: 64, offset: 3072)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !793, file: !30, line: 871, baseType: !454, size: 64, offset: 3136)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !793, file: !30, line: 871, baseType: !454, size: 64, offset: 3200)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !793, file: !30, line: 873, baseType: !1429, size: 3328, offset: 3264)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 3328, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 52)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !793, file: !30, line: 875, baseType: !1433, size: 1280, offset: 6592)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 1280, elements: !886)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !793, file: !30, line: 877, baseType: !1435, size: 64, offset: 7872)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !793, file: !30, line: 880, baseType: !1438, size: 1088, offset: 7936)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1439, line: 72, baseType: !1440)
!1439 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1439, line: 23, size: 1088, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1449, !1450, !1451, !1452, !1479, !1480, !1481}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1440, file: !1439, line: 28, baseType: !363, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1440, file: !1439, line: 38, baseType: !267, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1440, file: !1439, line: 40, baseType: !454, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1440, file: !1439, line: 43, baseType: !261, size: 320, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1440, file: !1439, line: 44, baseType: !1447, size: 64, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1439, line: 44, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !1439, line: 48, baseType: !454, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !1439, line: 59, baseType: !836, size: 256, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1440, file: !1439, line: 60, baseType: !160, size: 64, offset: 896)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1440, file: !1439, line: 61, baseType: !1453, size: 64, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1456, line: 13, size: 1216, elements: !1457)
!1456 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1455, file: !1456, line: 14, baseType: !160, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1455, file: !1456, line: 15, baseType: !454, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1455, file: !1456, line: 17, baseType: !454, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1455, file: !1456, line: 17, baseType: !454, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1455, file: !1456, line: 18, baseType: !454, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1455, file: !1456, line: 18, baseType: !454, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1455, file: !1456, line: 19, baseType: !1465, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1455, file: !1456, line: 21, baseType: !289, size: 64, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1455, file: !1456, line: 23, baseType: !289, size: 64, offset: 512)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1455, file: !1456, line: 24, baseType: !289, size: 64, offset: 576)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1455, file: !1456, line: 25, baseType: !289, size: 64, offset: 640)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1455, file: !1456, line: 26, baseType: !289, size: 64, offset: 704)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1455, file: !1456, line: 27, baseType: !289, size: 64, offset: 768)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1455, file: !1456, line: 28, baseType: !289, size: 64, offset: 832)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1455, file: !1456, line: 29, baseType: !289, size: 64, offset: 896)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1455, file: !1456, line: 30, baseType: !289, size: 64, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1455, file: !1456, line: 31, baseType: !289, size: 64, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1455, file: !1456, line: 32, baseType: !289, size: 64, offset: 1088)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1455, file: !1456, line: 33, baseType: !289, size: 64, offset: 1152)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1440, file: !1439, line: 63, baseType: !218, size: 32, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1440, file: !1439, line: 69, baseType: !233, size: 16, offset: 1056)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1440, file: !1439, line: 70, baseType: !1482, size: 16, offset: 1072)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !227, line: 18, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !171, line: 23, baseType: !973)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !30, line: 882, baseType: !454, size: 64, offset: 9024)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !793, file: !30, line: 885, baseType: !198, size: 32, offset: 9088)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !793, file: !30, line: 886, baseType: !1487, size: 64, offset: 9152)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !793, file: !30, line: 901, baseType: !1085, size: 64, offset: 9216)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !793, file: !30, line: 904, baseType: !817, size: 64, offset: 9280)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !793, file: !30, line: 906, baseType: !1492, size: 64, offset: 9344)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !793, file: !30, line: 930, baseType: !218, size: 32, offset: 9408)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !793, file: !30, line: 933, baseType: !218, size: 32, offset: 9440)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !793, file: !30, line: 935, baseType: !1497, size: 64, offset: 9472)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !135, line: 103, size: 64, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1497, file: !135, line: 104, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !135, line: 101, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !793, file: !30, line: 940, baseType: !265, size: 64, offset: 9536)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !793, file: !30, line: 942, baseType: !1504, size: 256, offset: 9600)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1505, line: 98, size: 256, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1506 = !{!1507, !1508, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1504, file: !1505, line: 99, baseType: !265, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1504, file: !1505, line: 100, baseType: !236, size: 128, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1504, file: !1505, line: 101, baseType: !1510, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1505, line: 21, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !790, file: !30, line: 986, baseType: !1516, offset: 10240)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, elements: !905)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !777, file: !30, line: 640, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1385, line: 297, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1385, line: 297, size: 64, elements: !1520)
!1520 = !{!1521}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1519, file: !1385, line: 297, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1390, line: 19, baseType: !454)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !30, line: 646, baseType: !1524, size: 64, offset: 256)
!1524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !30, line: 646, size: 64, elements: !1525)
!1525 = !{!1526, !1529}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1524, file: !30, line: 647, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !454)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1524, file: !30, line: 648, baseType: !1528, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !777, file: !30, line: 666, baseType: !96, size: 32, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !777, file: !30, line: 667, baseType: !1532, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1533, file: !30, line: 580, baseType: !261, size: 320)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !777, file: !30, line: 670, baseType: !727, size: 8, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !777, file: !30, line: 681, baseType: !1538, size: 256, offset: 512)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !30, line: 678, size: 256, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1538, file: !30, line: 679, baseType: !629, size: 192, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1538, file: !30, line: 680, baseType: !454, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !777, file: !30, line: 689, baseType: !236, size: 128, offset: 768)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !777, file: !30, line: 691, baseType: !1544, size: 64, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !777, file: !30, line: 694, baseType: !1547, size: 64, offset: 960)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !770, line: 563, size: 1024, elements: !1550)
!1550 = !{!1551, !1555, !1556, !1560, !1564, !1568, !1569, !1573, !1577, !1581, !1582, !1583, !1587, !1591, !1597, !1601}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1549, file: !770, line: 564, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !776}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1549, file: !770, line: 569, baseType: !1552, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1549, file: !770, line: 571, baseType: !1557, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!96, !776, !454}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1549, file: !770, line: 572, baseType: !1561, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!96, !776}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1549, file: !770, line: 578, baseType: !1565, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!96, !776, !454, !454, !454}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1549, file: !770, line: 580, baseType: !764, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1549, file: !770, line: 581, baseType: !1570, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!767, !768, !7}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1549, file: !770, line: 582, baseType: !1574, size: 64, offset: 448)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!767, !768, !454, !454}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1549, file: !770, line: 584, baseType: !1578, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!454, !776}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1549, file: !770, line: 588, baseType: !764, size: 64, offset: 576)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1549, file: !770, line: 591, baseType: !764, size: 64, offset: 640)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1549, file: !770, line: 597, baseType: !1584, size: 64, offset: 704)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!96, !776, !454, !160, !96, !96}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1549, file: !770, line: 603, baseType: !1588, size: 64, offset: 768)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!408, !776}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1549, file: !770, line: 613, baseType: !1592, size: 64, offset: 832)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!96, !776, !1595}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !30, line: 717, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1549, file: !770, line: 625, baseType: !1598, size: 64, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!1595, !776, !454}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1549, file: !770, line: 633, baseType: !1602, size: 64, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!646, !776, !454}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !777, file: !30, line: 697, baseType: !454, size: 64, offset: 1024)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !777, file: !30, line: 699, baseType: !817, size: 64, offset: 1088)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !777, file: !30, line: 700, baseType: !160, size: 64, offset: 1152)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !777, file: !30, line: 711, baseType: !265, size: 64, offset: 1216)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !777, file: !30, line: 717, baseType: !1595, size: 64, offset: 1280)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !777, file: !30, line: 722, baseType: !1611, offset: 1344)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !810)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !773, file: !770, line: 515, baseType: !192, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !773, file: !770, line: 516, baseType: !454, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !773, file: !770, line: 517, baseType: !454, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !773, file: !770, line: 518, baseType: !454, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !770, line: 520, baseType: !29, size: 32, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !769, file: !770, line: 522, baseType: !1618, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1390, line: 22, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1390, line: 22, size: 64, elements: !1621)
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1620, file: !1390, line: 22, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1390, line: 15, baseType: !454)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !769, file: !770, line: 524, baseType: !1625, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1385, line: 372, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1385, line: 372, size: 64, elements: !1628)
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1627, file: !1385, line: 372, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1390, line: 16, baseType: !454)
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !770, line: 527, baseType: !1632, size: 64, offset: 512)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !770, line: 527, size: 64, elements: !1633)
!1633 = !{!1634, !1640}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1632, file: !770, line: 528, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1390, line: 21, baseType: !1636)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1390, line: 21, size: 64, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1636, file: !1390, line: 21, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1390, line: 14, baseType: !454)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1632, file: !770, line: 529, baseType: !1619, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !769, file: !770, line: 534, baseType: !646, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !769, file: !770, line: 535, baseType: !646, size: 64, offset: 640)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !769, file: !770, line: 541, baseType: !1644, size: 64, offset: 704)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !769, file: !770, line: 545, baseType: !1646, size: 64, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !769, file: !770, line: 549, baseType: !1648, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1385, line: 520, baseType: !646)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !757, file: !14, line: 100, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!96, !696, !454, !454, !96}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !697, file: !14, line: 134, baseType: !160, size: 64, offset: 960)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !697, file: !14, line: 135, baseType: !96, size: 32, offset: 1024)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !14, line: 136, baseType: !1656, size: 128, offset: 1088)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !14, line: 136, size: 128, elements: !1657)
!1657 = !{!1658, !1664}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1656, file: !14, line: 137, baseType: !1659, size: 128)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1660, line: 6, size: 128, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1659, file: !1660, line: 7, baseType: !363, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1659, file: !1660, line: 8, baseType: !363, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !14, line: 138, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !14, line: 138, elements: !1666)
!1666 = !{!1667, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1665, file: !14, line: 138, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1665, file: !14, line: 138, elements: !810)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1665, file: !14, line: 138, baseType: !1670)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1659, elements: !905)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !693, file: !30, line: 147, baseType: !160, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !651, file: !30, line: 161, baseType: !731, size: 128, align: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !647, file: !30, line: 164, baseType: !1674, size: 32, offset: 384)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !30, line: 164, size: 32, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1674, file: !30, line: 169, baseType: !218, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1674, file: !30, line: 177, baseType: !7, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !647, file: !30, line: 181, baseType: !218, size: 32, offset: 416)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !59, line: 309, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !640, file: !59, line: 406, baseType: !1682, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!96, !817, !1164}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !640, file: !59, line: 409, baseType: !1686, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!96, !606, !1679}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !640, file: !59, line: 412, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!727, !606, !1164}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !640, file: !59, line: 414, baseType: !1694, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1697}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1161, line: 1276, size: 448, elements: !1699)
!1699 = !{!1700, !1701, !1702, !1704, !1705, !1706, !1707, !1708}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1698, file: !1161, line: 1277, baseType: !817, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1698, file: !1161, line: 1278, baseType: !606, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1698, file: !1161, line: 1279, baseType: !1703, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1698, file: !1161, line: 1281, baseType: !454, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1698, file: !1161, line: 1282, baseType: !7, size: 32, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1698, file: !1161, line: 1283, baseType: !7, size: 32, offset: 288)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1698, file: !1161, line: 1284, baseType: !727, size: 8, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1698, file: !1161, line: 1285, baseType: !454, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !640, file: !59, line: 416, baseType: !1710, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!96, !817, !606, !244, !7, !1713, !1337}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !640, file: !59, line: 419, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!96, !817, !606, !244, !7, !7, !646, !160}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !640, file: !59, line: 424, baseType: !1719, size: 64, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!1722, !606, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !193, line: 131, baseType: !363)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !640, file: !59, line: 425, baseType: !1724, size: 64, offset: 512)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !1164, !578, !578}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !640, file: !59, line: 426, baseType: !1728, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!727, !1164, !192}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !640, file: !59, line: 427, baseType: !1732, size: 64, offset: 640)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1164}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !640, file: !59, line: 428, baseType: !1140, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !640, file: !59, line: 433, baseType: !1737, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!96, !606, !1164, !1164, !45}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !640, file: !59, line: 435, baseType: !1741, size: 64, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!96, !1164}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !640, file: !59, line: 436, baseType: !1745, size: 64, offset: 896)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!727, !1164, !578, !578}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !640, file: !59, line: 438, baseType: !1749, size: 64, offset: 960)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !1164, !1752, !1752}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !640, file: !59, line: 439, baseType: !1754, size: 64, offset: 1024)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!96, !606, !646}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !640, file: !59, line: 442, baseType: !1758, size: 64, offset: 1088)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!96, !1761, !817, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !59, line: 66, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !640, file: !59, line: 444, baseType: !1329, size: 64, offset: 1152)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !640, file: !59, line: 445, baseType: !1766, size: 64, offset: 1216)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!96, !1143, !1248}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !59, line: 486, baseType: !454, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !607, file: !59, line: 487, baseType: !261, size: 320, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !607, file: !59, line: 488, baseType: !1374, size: 32, offset: 1280)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !607, file: !59, line: 489, baseType: !198, size: 32, offset: 1312)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !607, file: !59, line: 490, baseType: !236, size: 128, offset: 1344)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !607, file: !59, line: 491, baseType: !160, size: 64, offset: 1472)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !597, file: !560, line: 180, baseType: !1776, size: 64, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!566, !817, !500, !596, !434, !244, !578}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !597, file: !560, line: 182, baseType: !1776, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !597, file: !560, line: 184, baseType: !1781, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!96, !817, !500, !596, !776}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !585, file: !560, line: 90, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !585, file: !560, line: 91, baseType: !1787, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !550, file: !495, line: 120, baseType: !1789, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!1792, !518}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !1795)
!1795 = !{!1796, !1797, !1801, !1805, !1811, !1815}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1794, file: !53, line: 40, baseType: !52, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1794, file: !53, line: 41, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!727}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1794, file: !53, line: 42, baseType: !1802, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!160}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1794, file: !53, line: 43, baseType: !1806, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!1465, !1809}
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !53, line: 19, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1794, file: !53, line: 44, baseType: !1812, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!1465}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1794, file: !53, line: 45, baseType: !1816, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !160}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !550, file: !495, line: 121, baseType: !1820, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1465, !518}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !550, file: !495, line: 122, baseType: !1824, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !518, !1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !494, file: !495, line: 70, baseType: !1830, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1832, line: 190, size: 1152, elements: !1833)
!1832 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1833 = !{!1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1925, !1926, !1927, !1928, !1929, !1932}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1831, file: !1832, line: 191, baseType: !218, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1831, file: !1832, line: 192, baseType: !218, size: 32, offset: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1831, file: !1832, line: 202, baseType: !1830, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1831, file: !1832, line: 203, baseType: !408, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1831, file: !1832, line: 205, baseType: !629, size: 192, align: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1831, file: !1832, line: 207, baseType: !1465, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1831, file: !1832, line: 208, baseType: !7, size: 32, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !1832, line: 209, baseType: !1842, size: 256, offset: 512)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !1832, line: 209, size: 256, elements: !1843)
!1843 = !{!1844, !1853, !1857}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1842, file: !1832, line: 210, baseType: !1845, size: 256)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1832, line: 153, size: 256, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1852}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1845, file: !1832, line: 154, baseType: !454, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1845, file: !1832, line: 156, baseType: !625, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1845, file: !1832, line: 162, baseType: !1850, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1832, line: 162, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1845, file: !1832, line: 167, baseType: !454, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1842, file: !1832, line: 211, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1832, line: 170, size: 64, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1854, file: !1832, line: 171, baseType: !1830, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1842, file: !1832, line: 212, baseType: !1858, size: 256)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1832, line: 174, size: 256, elements: !1859)
!1859 = !{!1860, !1920, !1923, !1924}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1858, file: !1832, line: 175, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1863)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1832, line: 271, size: 768, elements: !1864)
!1864 = !{!1865, !1885, !1889, !1893, !1897, !1901, !1905, !1909, !1910, !1911, !1912, !1916}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1863, file: !1832, line: 276, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!96, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1832, line: 251, size: 1216, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1870, file: !1832, line: 253, baseType: !1830, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1870, file: !1832, line: 254, baseType: !817, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1870, file: !1832, line: 255, baseType: !1346, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1870, file: !1832, line: 256, baseType: !160, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1870, file: !1832, line: 259, baseType: !836, size: 256, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1870, file: !1832, line: 260, baseType: !836, size: 256, offset: 512)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1870, file: !1832, line: 261, baseType: !96, size: 32, offset: 768)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1870, file: !1832, line: 262, baseType: !236, size: 128, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1870, file: !1832, line: 263, baseType: !434, size: 64, offset: 960)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1870, file: !1832, line: 265, baseType: !578, size: 64, offset: 1024)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1870, file: !1832, line: 266, baseType: !727, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1870, file: !1832, line: 267, baseType: !727, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1870, file: !1832, line: 268, baseType: !1547, size: 64, offset: 1152)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1863, file: !1832, line: 277, baseType: !1886, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !1869}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1863, file: !1832, line: 290, baseType: !1890, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!96, !1346, !160}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1863, file: !1832, line: 292, baseType: !1894, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!160, !1346, !1134}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1863, file: !1832, line: 293, baseType: !1898, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!160, !1346, !160, !1134}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1863, file: !1832, line: 294, baseType: !1902, size: 64, offset: 320)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !1346, !160}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1863, file: !1832, line: 296, baseType: !1906, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!566, !1869, !434, !578, !244}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1863, file: !1832, line: 306, baseType: !578, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1863, file: !1832, line: 313, baseType: !727, size: 8, offset: 512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1863, file: !1832, line: 314, baseType: !1906, size: 64, offset: 576)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1863, file: !1832, line: 317, baseType: !1913, size: 64, offset: 640)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1274, !1869, !1275}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1863, file: !1832, line: 320, baseType: !1917, size: 64, offset: 704)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!96, !1869, !776}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1858, file: !1832, line: 176, baseType: !1921, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1832, line: 35, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1858, file: !1832, line: 177, baseType: !244, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1858, file: !1832, line: 178, baseType: !1830, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1831, file: !1832, line: 215, baseType: !160, size: 64, offset: 768)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1831, file: !1832, line: 221, baseType: !363, size: 64, offset: 832)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1831, file: !1832, line: 223, baseType: !182, size: 16, offset: 896)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1831, file: !1832, line: 224, baseType: !294, size: 16, offset: 912)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1831, file: !1832, line: 225, baseType: !1930, size: 64, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1832, line: 36, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1831, file: !1832, line: 227, baseType: !731, size: 128, align: 64, offset: 1024)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !494, file: !495, line: 71, baseType: !1934, size: 32, offset: 448)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1935, line: 19, size: 32, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1934, file: !1935, line: 20, baseType: !874, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !494, file: !495, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !494, file: !495, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !494, file: !495, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !494, file: !495, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !494, file: !495, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !491, file: !6, line: 47, baseType: !481, size: 64, offset: 512)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !491, file: !6, line: 48, baseType: !500, size: 64, offset: 576)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !491, file: !6, line: 49, baseType: !1946, size: 64, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !491, file: !6, line: 50, baseType: !1949, size: 64, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !482, file: !6, line: 418, baseType: !1951, size: 64, offset: 1408)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1953)
!1953 = !{!1954, !1955, !1960, !1964, !1968, !1972}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1952, file: !6, line: 54, baseType: !570, size: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1952, file: !6, line: 55, baseType: !1956, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!566, !1951, !1959, !434}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1952, file: !6, line: 57, baseType: !1961, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!566, !1951, !1959, !408, !578}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1952, file: !6, line: 59, baseType: !1965, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !481, !408}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1952, file: !6, line: 60, baseType: !1969, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!96, !481}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1952, file: !6, line: 61, baseType: !1973, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !481}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !482, file: !6, line: 419, baseType: !408, size: 64, offset: 1472)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !482, file: !6, line: 420, baseType: !408, size: 64, offset: 1536)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !482, file: !6, line: 421, baseType: !500, size: 64, offset: 1600)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !482, file: !6, line: 424, baseType: !1980, size: 64, offset: 1664)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !482, file: !6, line: 425, baseType: !1984, size: 64, offset: 1728)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !482, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !482, file: !6, line: 435, baseType: !836, size: 256, offset: 1856)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !482, file: !6, line: 437, baseType: !1989, size: 64, offset: 2112)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1991, line: 69, size: 320, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1992 = !{!1993, !1994, !1995, !2012, !2014, !2018, !2019}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1990, file: !1991, line: 70, baseType: !408, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1990, file: !1991, line: 71, baseType: !481, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1990, file: !1991, line: 72, baseType: !1996, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1998)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1991, line: 47, size: 256, elements: !1999)
!1999 = !{!2000, !2001, !2007, !2011}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1998, file: !1991, line: 49, baseType: !7, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1998, file: !1991, line: 51, baseType: !2002, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!96, !408, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1998, file: !1991, line: 53, baseType: !2008, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!96, !434, !2005}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1998, file: !1991, line: 55, baseType: !1816, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1990, file: !1991, line: 73, baseType: !2013, size: 16, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1990, file: !1991, line: 74, baseType: !2015, size: 8, offset: 208)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !227, line: 16, baseType: !2016)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !171, line: 20, baseType: !2017)
!2017 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1990, file: !1991, line: 75, baseType: !226, size: 8, offset: 216)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !1991, line: 76, baseType: !2020, size: 64, offset: 256)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1990, file: !1991, line: 76, size: 64, elements: !2021)
!2021 = !{!2022, !2023, !2030}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2020, file: !1991, line: 77, baseType: !160, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2020, file: !1991, line: 78, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1991, line: 86, size: 128, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2026, file: !1991, line: 87, baseType: !7, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2026, file: !1991, line: 88, baseType: !434, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2020, file: !1991, line: 79, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1991, line: 92, size: 256, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2039, !2040}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2033, file: !1991, line: 94, baseType: !7, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2033, file: !1991, line: 95, baseType: !7, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2033, file: !1991, line: 96, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2033, file: !1991, line: 97, baseType: !1996, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2033, file: !1991, line: 98, baseType: !160, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !482, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !482, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !482, file: !6, line: 442, baseType: !1980, size: 64, offset: 2240)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !482, file: !6, line: 443, baseType: !1984, size: 64, offset: 2304)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !482, file: !6, line: 444, baseType: !727, size: 8, offset: 2368)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !482, file: !6, line: 451, baseType: !727, size: 8, offset: 2376)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !482, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !482, file: !6, line: 455, baseType: !2049, size: 64, offset: 2432)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2051, line: 23, size: 96, elements: !2052)
!2051 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2052 = !{!2053, !2054, !2055}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2050, file: !2051, line: 24, baseType: !96, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2050, file: !2051, line: 24, baseType: !96, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2050, file: !2051, line: 24, baseType: !96, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !482, file: !6, line: 458, baseType: !2057, size: 64, offset: 2496)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!96}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !482, file: !6, line: 460, baseType: !2061, size: 4032, align: 512, offset: 2560)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2062, size: 4032, elements: !2078)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2063)
!2063 = !{!2064, !2065, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2062, file: !6, line: 363, baseType: !160, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2062, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2062, file: !6, line: 367, baseType: !2067, size: 448, offset: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2067, file: !6, line: 320, baseType: !481, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2067, file: !6, line: 321, baseType: !2071, size: 384, offset: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2072, line: 40, size: 384, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2073 = !{!2074}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2071, file: !2072, line: 41, baseType: !2075, size: 384, align: 64)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 384, align: 64, elements: !2076)
!2076 = !{!2077}
!2077 = !DISubrange(count: 2)
!2078 = !{!2079}
!2079 = !DISubrange(count: 7)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !482, file: !6, line: 463, baseType: !2081, size: 192, offset: 6592)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2082, line: 8, size: 192, elements: !2083)
!2082 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2083 = !{!2084, !2085, !2087}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2081, file: !2082, line: 10, baseType: !7, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2081, file: !2082, line: 11, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2081, file: !2082, line: 12, baseType: !2088, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2090, line: 59, size: 48, elements: !2091)
!2090 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2089, file: !2090, line: 60, baseType: !1482, size: 16)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2089, file: !2090, line: 61, baseType: !1482, size: 16, offset: 16)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2089, file: !2090, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2089, file: !2090, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2089, file: !2090, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2089, file: !2090, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !482, file: !6, line: 465, baseType: !454, size: 64, offset: 6784)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !482, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !482, file: !6, line: 470, baseType: !236, size: 128, offset: 6912)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !482, file: !6, line: 471, baseType: !2102, size: 64, offset: 7040)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2104, line: 33, size: 96, elements: !2105)
!2104 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2105 = !{!2106, !2107, !2108, !2109}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2103, file: !2104, line: 37, baseType: !96, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2103, file: !2104, line: 43, baseType: !96, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2103, file: !2104, line: 45, baseType: !182, size: 16, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2103, file: !2104, line: 47, baseType: !182, size: 16, offset: 80)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !482, file: !6, line: 476, baseType: !2111, size: 64, offset: 7104)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2113)
!2113 = !{!2114, !2130, !2131, !2132}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2112, file: !6, line: 379, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2117, line: 204, baseType: !2118)
!2117 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2117, line: 197, size: 192, elements: !2119)
!2119 = !{!2120, !2122, !2123, !2124, !2126, !2128}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2118, file: !2117, line: 198, baseType: !2121, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2117, line: 21, baseType: !191)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2118, file: !2117, line: 199, baseType: !172, size: 8, offset: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2118, file: !2117, line: 200, baseType: !172, size: 8, offset: 40)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2118, file: !2117, line: 201, baseType: !2125, size: 16, offset: 48)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2117, line: 17, baseType: !181)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2118, file: !2117, line: 202, baseType: !2127, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2117, line: 16, baseType: !364)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2118, file: !2117, line: 203, baseType: !2129, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2117, line: 22, baseType: !364)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2112, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2112, file: !6, line: 381, baseType: !434, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2112, file: !6, line: 382, baseType: !434, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !482, file: !6, line: 477, baseType: !2112, size: 256, offset: 7168)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !482, file: !6, line: 480, baseType: !2135, size: 64, offset: 7424)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !482, file: !6, line: 483, baseType: !2138, size: 64, offset: 7488)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !482, file: !6, line: 488, baseType: !434, size: 64, offset: 7552)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !482, file: !6, line: 492, baseType: !160, size: 64, offset: 7616)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !482, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !482, file: !6, line: 495, baseType: !160, size: 64, offset: 7744)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !482, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !482, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !482, file: !6, line: 500, baseType: !2147, size: 64, offset: 7872)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2149, line: 45, baseType: !2150)
!2149 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !482, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !482, file: !6, line: 504, baseType: !2153, size: 64, offset: 8000)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2156, line: 96, size: 192, elements: !2157)
!2156 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2157 = !{!2158, !2159, !2213, !2216}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2155, file: !2156, line: 97, baseType: !7, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2155, file: !2156, line: 98, baseType: !2160, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2156, line: 24, size: 3072, elements: !2162)
!2162 = !{!2163, !2165, !2166, !2167, !2168, !2182, !2183, !2184, !2185, !2197, !2198, !2199, !2210, !2211, !2212}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2161, file: !2156, line: 26, baseType: !2164, size: 128)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !2076)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2161, file: !2156, line: 27, baseType: !2164, size: 128, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2161, file: !2156, line: 28, baseType: !96, size: 32, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2161, file: !2156, line: 31, baseType: !198, size: 32, align: 512, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2161, file: !2156, line: 32, baseType: !2169, size: 960, offset: 576)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2170, line: 206, size: 960, elements: !2171)
!2170 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2171 = !{!2172, !2173, !2176, !2178, !2179, !2181}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2169, file: !2170, line: 207, baseType: !734, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2169, file: !2170, line: 208, baseType: !2174, size: 256, offset: 64)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2175, size: 256, elements: !886)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2169, file: !2170, line: 209, baseType: !2177, size: 256, offset: 320)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 256, elements: !886)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2169, file: !2170, line: 213, baseType: !289, size: 64, offset: 576)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2169, file: !2170, line: 215, baseType: !2180, size: 256, offset: 640)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, elements: !886)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2169, file: !2170, line: 216, baseType: !226, size: 8, offset: 896)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2161, file: !2156, line: 33, baseType: !454, size: 64, offset: 1536)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2161, file: !2156, line: 34, baseType: !454, size: 64, offset: 1600)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2161, file: !2156, line: 35, baseType: !727, size: 8, offset: 1664)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2161, file: !2156, line: 36, baseType: !2186, size: 320, offset: 1728)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2187, line: 11, size: 320, elements: !2188)
!2187 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2188 = !{!2189, !2190, !2191, !2196}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2186, file: !2187, line: 16, baseType: !253, size: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2186, file: !2187, line: 17, baseType: !454, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2186, file: !2187, line: 18, baseType: !2192, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2186, file: !2187, line: 19, baseType: !360, size: 32, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2161, file: !2156, line: 37, baseType: !1504, size: 256, offset: 2048)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2161, file: !2156, line: 38, baseType: !731, size: 128, align: 64, offset: 2304)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2161, file: !2156, line: 39, baseType: !2200, size: 64, offset: 2432)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2156, line: 49, size: 768, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2201, file: !2156, line: 50, baseType: !198, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2201, file: !2156, line: 51, baseType: !2177, size: 256, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2201, file: !2156, line: 53, baseType: !2177, size: 256, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2201, file: !2156, line: 54, baseType: !454, size: 64, offset: 576)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2201, file: !2156, line: 55, baseType: !2200, size: 64, offset: 640)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2201, file: !2156, line: 56, baseType: !96, size: 32, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2201, file: !2156, line: 57, baseType: !96, size: 32, offset: 736)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2161, file: !2156, line: 40, baseType: !454, size: 64, offset: 2496)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2161, file: !2156, line: 42, baseType: !96, size: 32, offset: 2560)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2161, file: !2156, line: 43, baseType: !2154, size: 64, offset: 2624)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2155, file: !2156, line: 99, baseType: !2214, offset: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2215, line: 211, elements: !810)
!2215 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2155, file: !2156, line: 100, baseType: !2217, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2156, line: 63, size: 3008, elements: !2219)
!2219 = !{!2220, !2221, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2251}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2218, file: !2156, line: 64, baseType: !2200, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2218, file: !2156, line: 65, baseType: !2222, size: 192, offset: 64)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2200, size: 192, elements: !535)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2218, file: !2156, line: 67, baseType: !96, size: 32, offset: 256)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2218, file: !2156, line: 68, baseType: !836, size: 256, offset: 320)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2218, file: !2156, line: 69, baseType: !198, size: 32, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2218, file: !2156, line: 70, baseType: !836, size: 256, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2218, file: !2156, line: 71, baseType: !454, size: 64, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2218, file: !2156, line: 72, baseType: !454, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2218, file: !2156, line: 73, baseType: !454, size: 64, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2218, file: !2156, line: 74, baseType: !454, size: 64, offset: 1088)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2218, file: !2156, line: 75, baseType: !454, size: 64, offset: 1152)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2218, file: !2156, line: 76, baseType: !454, size: 64, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2218, file: !2156, line: 77, baseType: !454, size: 64, offset: 1280)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2218, file: !2156, line: 78, baseType: !454, size: 64, offset: 1344)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2218, file: !2156, line: 79, baseType: !727, size: 8, offset: 1408)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2218, file: !2156, line: 80, baseType: !454, size: 64, offset: 1472)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2218, file: !2156, line: 81, baseType: !836, size: 256, offset: 1536)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2218, file: !2156, line: 82, baseType: !741, size: 256, offset: 1792)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2218, file: !2156, line: 84, baseType: !218, size: 32, offset: 2048)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2218, file: !2156, line: 87, baseType: !454, size: 64, offset: 2112)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2218, file: !2156, line: 88, baseType: !454, size: 64, offset: 2176)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2218, file: !2156, line: 89, baseType: !2243, size: 704, offset: 2240)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1505, line: 111, size: 704, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2250}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2243, file: !1505, line: 112, baseType: !1504, size: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2243, file: !1505, line: 113, baseType: !2186, size: 320, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2243, file: !1505, line: 116, baseType: !2248, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1505, line: 18, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2243, file: !1505, line: 117, baseType: !96, size: 32, offset: 640)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2218, file: !2156, line: 90, baseType: !2154, size: 64, offset: 2944)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !482, file: !6, line: 515, baseType: !2253, size: 64, offset: 8064)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2255, line: 117, size: 128, elements: !2256)
!2255 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2254, file: !2255, line: 118, baseType: !947, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2254, file: !2255, line: 119, baseType: !947, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2254, file: !2255, line: 120, baseType: !289, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !482, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !482, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !482, file: !6, line: 520, baseType: !2263, size: 64, offset: 8192)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !482, file: !6, line: 523, baseType: !2265, size: 64, offset: 8256)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !482, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !482, file: !6, line: 525, baseType: !2270, size: 64, offset: 8384)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !482, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !482, file: !6, line: 533, baseType: !160, size: 64, offset: 8512)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !482, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !482, file: !6, line: 535, baseType: !2277, size: 64, offset: 8640)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !482, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !482, file: !6, line: 539, baseType: !96, size: 32, offset: 8736)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !482, file: !6, line: 540, baseType: !2281, size: 64, offset: 8768)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2283, line: 32, size: 64, elements: !2284)
!2283 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2282, file: !2283, line: 33, baseType: !947, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2282, file: !2283, line: 34, baseType: !947, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !482, file: !6, line: 563, baseType: !236, size: 128, offset: 8832)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !482, file: !6, line: 565, baseType: !236, size: 128, offset: 8960)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !482, file: !6, line: 568, baseType: !2290, size: 64, offset: 9088)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{null}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !482, file: !6, line: 570, baseType: !218, size: 32, offset: 9152)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !59, line: 2382, baseType: !457, size: 64, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !458, file: !59, line: 2383, baseType: !883, size: 64, offset: 512)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !458, file: !59, line: 2385, baseType: !2297, offset: 576)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2215, line: 206, elements: !810)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !458, file: !59, line: 2386, baseType: !2297, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !458, file: !59, line: 2387, baseType: !2297, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !458, file: !59, line: 2388, baseType: !2301, offset: 576)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2297, elements: !535)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !458, file: !59, line: 2390, baseType: !2297, offset: 576)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !458, file: !59, line: 2391, baseType: !2297, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !458, file: !59, line: 2392, baseType: !2297, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !458, file: !59, line: 2393, baseType: !2297, offset: 576)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !446, file: !59, line: 1197, baseType: !2307, size: 64, offset: 384)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !59, line: 2057, size: 1664, elements: !2310)
!2310 = !{!2311, !2315, !2319, !2320, !2324, !2328, !2332, !2333, !2334, !2338, !2342, !2346, !2347, !2348, !2354, !2358, !2359, !2363, !2364, !2365, !2366, !2370, !2374, !2421, !2436, !2437}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2309, file: !59, line: 2058, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!369, !445}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2309, file: !59, line: 2059, baseType: !2316, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !369}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2309, file: !59, line: 2060, baseType: !2316, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2309, file: !59, line: 2062, baseType: !2321, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !369, !96}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2309, file: !59, line: 2063, baseType: !2325, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!96, !369, !1679}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2309, file: !59, line: 2064, baseType: !2329, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!96, !369}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2309, file: !59, line: 2065, baseType: !2316, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2309, file: !59, line: 2066, baseType: !477, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2309, file: !59, line: 2067, baseType: !2335, size: 64, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!96, !445, !96}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2309, file: !59, line: 2068, baseType: !2339, size: 64, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!96, !445, !58}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2309, file: !59, line: 2069, baseType: !2343, size: 64, offset: 640)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!96, !445}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2309, file: !59, line: 2070, baseType: !2339, size: 64, offset: 704)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2309, file: !59, line: 2071, baseType: !2343, size: 64, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2309, file: !59, line: 2072, baseType: !2349, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!96, !326, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !59, line: 62, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2309, file: !59, line: 2073, baseType: !2355, size: 64, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!96, !445, !2086, !434}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2309, file: !59, line: 2074, baseType: !477, size: 64, offset: 960)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2309, file: !59, line: 2076, baseType: !2360, size: 64, offset: 1024)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!96, !1346, !326}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2309, file: !59, line: 2077, baseType: !2360, size: 64, offset: 1088)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2309, file: !59, line: 2078, baseType: !2360, size: 64, offset: 1152)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2309, file: !59, line: 2079, baseType: !2360, size: 64, offset: 1216)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2309, file: !59, line: 2081, baseType: !2367, size: 64, offset: 1280)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!566, !445, !96, !434, !578, !244}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2309, file: !59, line: 2082, baseType: !2371, size: 64, offset: 1344)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!566, !445, !96, !408, !578, !244}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2309, file: !59, line: 2083, baseType: !2375, size: 64, offset: 1408)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!2378, !369}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !64, line: 296, size: 1664, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2406, !2407, !2408}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2380, file: !64, line: 297, baseType: !253, size: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2380, file: !64, line: 298, baseType: !236, size: 128, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2380, file: !64, line: 299, baseType: !236, size: 128, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2380, file: !64, line: 300, baseType: !236, size: 128, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2380, file: !64, line: 301, baseType: !836, size: 256, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2380, file: !64, line: 302, baseType: !198, size: 32, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2380, file: !64, line: 303, baseType: !218, size: 32, offset: 800)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2380, file: !64, line: 304, baseType: !445, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2380, file: !64, line: 305, baseType: !2391, size: 64, offset: 896)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !64, line: 68, size: 64, elements: !2392)
!2392 = !{!2393, !2405}
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !64, line: 69, baseType: !2394, size: 32)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2391, file: !64, line: 69, size: 32, elements: !2395)
!2395 = !{!2396, !2397, !2398}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2394, file: !64, line: 70, baseType: !297, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2394, file: !64, line: 71, baseType: !306, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2394, file: !64, line: 72, baseType: !2399, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2400, line: 24, baseType: !2401)
!2400 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2400, line: 22, size: 32, elements: !2402)
!2402 = !{!2403}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2401, file: !2400, line: 23, baseType: !2404, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2400, line: 20, baseType: !303)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2391, file: !64, line: 74, baseType: !63, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2380, file: !64, line: 306, baseType: !244, size: 64, offset: 960)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2380, file: !64, line: 307, baseType: !454, size: 64, offset: 1024)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2380, file: !64, line: 308, baseType: !2409, size: 576, offset: 1088)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !64, line: 205, size: 576, elements: !2410)
!2410 = !{!2411, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2409, file: !64, line: 206, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !64, line: 66, baseType: !247)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2409, file: !64, line: 207, baseType: !2412, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2409, file: !64, line: 208, baseType: !2412, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2409, file: !64, line: 209, baseType: !2412, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2409, file: !64, line: 210, baseType: !2412, size: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2409, file: !64, line: 211, baseType: !2412, size: 64, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2409, file: !64, line: 212, baseType: !2412, size: 64, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2409, file: !64, line: 213, baseType: !287, size: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2409, file: !64, line: 214, baseType: !287, size: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2309, file: !59, line: 2085, baseType: !2422, size: 64, offset: 1472)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!289, !445, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2427, line: 15, size: 256, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2428 = !{!2429, !2430, !2431, !2432, !2433}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2426, file: !2427, line: 16, baseType: !192, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2426, file: !2427, line: 19, baseType: !96, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2426, file: !2427, line: 26, baseType: !454, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2426, file: !2427, line: 33, baseType: !454, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2426, file: !2427, line: 36, baseType: !2434, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2427, line: 36, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2309, file: !59, line: 2087, baseType: !2422, size: 64, offset: 1536)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2309, file: !59, line: 2089, baseType: !477, size: 64, offset: 1600)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !446, file: !59, line: 1198, baseType: !2439, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2441)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !64, line: 324, size: 704, elements: !2442)
!2442 = !{!2443, !2447, !2451, !2455, !2456, !2457, !2458, !2459, !2464, !2469, !2473}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2441, file: !64, line: 325, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!96, !2379}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2441, file: !64, line: 326, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!2379, !445, !96}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2441, file: !64, line: 327, baseType: !2452, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !2379}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2441, file: !64, line: 328, baseType: !2444, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2441, file: !64, line: 329, baseType: !2444, size: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2441, file: !64, line: 330, baseType: !2444, size: 64, offset: 320)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2441, file: !64, line: 331, baseType: !2335, size: 64, offset: 384)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2441, file: !64, line: 334, baseType: !2460, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!2463, !369}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2441, file: !64, line: 335, baseType: !2465, size: 64, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!96, !369, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2441, file: !64, line: 337, baseType: !2470, size: 64, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!96, !369, !2463}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2441, file: !64, line: 339, baseType: !2474, size: 64, offset: 640)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!96, !445, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !446, file: !59, line: 1199, baseType: !2479, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !64, line: 430, size: 704, elements: !2482)
!2482 = !{!2483, !2489, !2490, !2494, !2495, !2496, !2511, !2534, !2538, !2539, !2562}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2481, file: !64, line: 431, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!96, !445, !96, !96, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2481, file: !64, line: 432, baseType: !2335, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2481, file: !64, line: 433, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!96, !445, !7}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2481, file: !64, line: 434, baseType: !2491, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2481, file: !64, line: 435, baseType: !2335, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2481, file: !64, line: 436, baseType: !2497, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!96, !445, !96, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !64, line: 417, size: 256, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2501, file: !64, line: 418, baseType: !96, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2501, file: !64, line: 419, baseType: !7, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2501, file: !64, line: 420, baseType: !7, size: 32, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2501, file: !64, line: 422, baseType: !7, size: 32, offset: 96)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2501, file: !64, line: 423, baseType: !7, size: 32, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2501, file: !64, line: 424, baseType: !7, size: 32, offset: 160)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2501, file: !64, line: 425, baseType: !7, size: 32, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2501, file: !64, line: 426, baseType: !7, size: 32, offset: 224)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2481, file: !64, line: 437, baseType: !2512, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!96, !445, !2391, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !64, line: 345, size: 960, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2516, file: !64, line: 346, baseType: !96, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2516, file: !64, line: 347, baseType: !363, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2516, file: !64, line: 348, baseType: !363, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2516, file: !64, line: 349, baseType: !363, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2516, file: !64, line: 350, baseType: !363, size: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2516, file: !64, line: 351, baseType: !363, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2516, file: !64, line: 352, baseType: !363, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2516, file: !64, line: 353, baseType: !271, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2516, file: !64, line: 355, baseType: !271, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2516, file: !64, line: 356, baseType: !96, size: 32, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2516, file: !64, line: 357, baseType: !96, size: 32, offset: 608)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2516, file: !64, line: 358, baseType: !363, size: 64, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2516, file: !64, line: 359, baseType: !363, size: 64, offset: 704)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2516, file: !64, line: 360, baseType: !363, size: 64, offset: 768)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2516, file: !64, line: 361, baseType: !271, size: 64, offset: 832)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2516, file: !64, line: 362, baseType: !96, size: 32, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2481, file: !64, line: 438, baseType: !2535, size: 64, offset: 448)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!96, !445, !2477, !2515}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2481, file: !64, line: 440, baseType: !2512, size: 64, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2481, file: !64, line: 441, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!96, !445, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !64, line: 411, size: 1408, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2544, file: !64, line: 412, baseType: !7, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2544, file: !64, line: 413, baseType: !2548, size: 1344, offset: 64)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2549, size: 1344, elements: !535)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !64, line: 397, size: 448, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2561}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2549, file: !64, line: 398, baseType: !7, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2549, file: !64, line: 399, baseType: !7, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2549, file: !64, line: 401, baseType: !7, size: 32, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2549, file: !64, line: 402, baseType: !7, size: 32, offset: 96)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2549, file: !64, line: 403, baseType: !7, size: 32, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2549, file: !64, line: 404, baseType: !7, size: 32, offset: 160)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2549, file: !64, line: 405, baseType: !7, size: 32, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2549, file: !64, line: 406, baseType: !163, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2549, file: !64, line: 407, baseType: !2560, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !193, line: 132, baseType: !363)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2549, file: !64, line: 408, baseType: !2560, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2481, file: !64, line: 442, baseType: !2491, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !446, file: !59, line: 1200, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !142, line: 201, size: 640, elements: !2567)
!2567 = !{!2568, !2573, !2606, !2607, !2611, !2615, !2616, !2623, !2629, !2662}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "encode_fh", scope: !2566, file: !142, line: 202, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!96, !369, !2572, !2086, !369}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_dentry", scope: !2566, file: !142, line: 204, baseType: !2574, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!326, !445, !2577, !96, !96}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fid", file: !142, line: 118, size: 160, elements: !2579)
!2579 = !{!2580}
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2578, file: !142, line: 119, baseType: !2581, size: 160)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2578, file: !142, line: 119, size: 160, elements: !2582)
!2582 = !{!2583, !2590, !2599}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !2581, file: !142, line: 125, baseType: !2584, size: 128)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2581, file: !142, line: 120, size: 128, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2584, file: !142, line: 121, baseType: !360, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !2584, file: !142, line: 122, baseType: !360, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ino", scope: !2584, file: !142, line: 123, baseType: !360, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2584, file: !142, line: 124, baseType: !360, size: 32, offset: 96)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "udf", scope: !2581, file: !142, line: 133, baseType: !2591, size: 160)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2581, file: !142, line: 126, size: 160, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2591, file: !142, line: 127, baseType: !360, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "partref", scope: !2591, file: !142, line: 128, baseType: !233, size: 16, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "parent_partref", scope: !2591, file: !142, line: 129, baseType: !233, size: 16, offset: 48)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2591, file: !142, line: 130, baseType: !360, size: 32, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "parent_block", scope: !2591, file: !142, line: 131, baseType: !360, size: 32, offset: 96)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "parent_generation", scope: !2591, file: !142, line: 132, baseType: !360, size: 32, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, scope: !2581, file: !142, line: 134, baseType: !2600)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2581, file: !142, line: 134, elements: !2601)
!2601 = !{!2602, !2604}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_raw", scope: !2600, file: !142, line: 134, baseType: !2603)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2600, file: !142, line: 134, elements: !810)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2600, file: !142, line: 134, baseType: !2605)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, elements: !905)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_parent", scope: !2566, file: !142, line: 206, baseType: !2574, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2566, file: !142, line: 208, baseType: !2608, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!96, !326, !434, !326}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2566, file: !142, line: 210, baseType: !2612, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!326, !326}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "commit_metadata", scope: !2566, file: !142, line: 211, baseType: !2329, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "get_uuid", scope: !2566, file: !142, line: 213, baseType: !2617, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!96, !445, !2620, !2621, !2622}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "map_blocks", scope: !2566, file: !142, line: 214, baseType: !2624, size: 64, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!96, !369, !244, !363, !2627, !727, !2621}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "iomap", file: !142, line: 10, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "commit_blocks", scope: !2566, file: !142, line: 217, baseType: !2630, size: 64, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!96, !369, !2627, !96, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !59, line: 226, size: 640, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2648, !2657, !2658, !2659, !2660, !2661}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2634, file: !59, line: 227, baseType: !7, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2634, file: !59, line: 228, baseType: !294, size: 16, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, scope: !2634, file: !59, line: 241, baseType: !2639, size: 32, offset: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2634, file: !59, line: 241, size: 32, elements: !2640)
!2640 = !{!2641, !2642}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2639, file: !59, line: 242, baseType: !297, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !2639, file: !59, line: 243, baseType: !2643, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !2644, line: 16, baseType: !2645)
!2644 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2644, line: 14, size: 32, elements: !2646)
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2645, file: !2644, line: 15, baseType: !302, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2634, file: !59, line: 245, baseType: !2649, size: 32, offset: 96)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2634, file: !59, line: 245, size: 32, elements: !2650)
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2649, file: !59, line: 246, baseType: !306, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !2649, file: !59, line: 247, baseType: !2653, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !2644, line: 20, baseType: !2654)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2644, line: 18, size: 32, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2654, file: !2644, line: 19, baseType: !310, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2634, file: !59, line: 249, baseType: !244, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2634, file: !59, line: 250, baseType: !283, size: 128, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2634, file: !59, line: 251, baseType: !283, size: 128, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2634, file: !59, line: 252, baseType: !283, size: 128, offset: 448)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2634, file: !59, line: 259, baseType: !817, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2566, file: !142, line: 227, baseType: !454, size: 64, offset: 576)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !446, file: !59, line: 1201, baseType: !454, size: 64, offset: 640)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !446, file: !59, line: 1202, baseType: !454, size: 64, offset: 704)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !446, file: !59, line: 1203, baseType: !454, size: 64, offset: 768)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !446, file: !59, line: 1204, baseType: !326, size: 64, offset: 832)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !446, file: !59, line: 1205, baseType: !261, size: 320, offset: 896)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !446, file: !59, line: 1206, baseType: !96, size: 32, offset: 1216)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !446, file: !59, line: 1207, baseType: !218, size: 32, offset: 1248)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !446, file: !59, line: 1209, baseType: !160, size: 64, offset: 1280)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !446, file: !59, line: 1211, baseType: !2672, size: 64, offset: 1344)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2675)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !59, line: 1211, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !446, file: !59, line: 1223, baseType: !2677, size: 64, offset: 1408)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !343, line: 34, size: 64, elements: !2678)
!2678 = !{!2679}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2677, file: !343, line: 35, baseType: !346, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !446, file: !59, line: 1224, baseType: !236, size: 128, offset: 1472)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !446, file: !59, line: 1225, baseType: !2682, size: 64, offset: 1600)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2684, line: 40, size: 7424, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2685 = !{!2686, !2687, !2688, !2691, !2695, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2722, !2723}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2683, file: !2684, line: 41, baseType: !1722, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2683, file: !2684, line: 42, baseType: !1722, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2683, file: !2684, line: 43, baseType: !2689, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1323, line: 1453, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2683, file: !2684, line: 44, baseType: !2692, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2694, line: 74, flags: DIFlagFwdDecl)
!2694 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2683, file: !2684, line: 45, baseType: !2696, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2684, line: 45, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2683, file: !2684, line: 46, baseType: !454, size: 64, offset: 320)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2683, file: !2684, line: 47, baseType: !727, size: 8, offset: 384)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2683, file: !2684, line: 48, baseType: !226, size: 8, offset: 392)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2683, file: !2684, line: 49, baseType: !727, size: 8, offset: 400)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2683, file: !2684, line: 50, baseType: !727, size: 8, offset: 408)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2683, file: !2684, line: 51, baseType: !450, size: 32, offset: 416)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2683, file: !2684, line: 52, baseType: !218, size: 32, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2683, file: !2684, line: 53, baseType: !198, size: 32, offset: 480)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2683, file: !2684, line: 54, baseType: !369, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2683, file: !2684, line: 55, baseType: !160, size: 64, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2683, file: !2684, line: 56, baseType: !160, size: 64, offset: 640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2683, file: !2684, line: 57, baseType: !2710, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2712)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2684, line: 57, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2683, file: !2684, line: 58, baseType: !836, size: 256, offset: 768)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2683, file: !2684, line: 60, baseType: !96, size: 32, offset: 1024)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2683, file: !2684, line: 61, baseType: !96, size: 32, offset: 1056)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2683, file: !2684, line: 62, baseType: !500, size: 64, offset: 1088)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2683, file: !2684, line: 65, baseType: !836, size: 256, offset: 1152)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2683, file: !2684, line: 66, baseType: !445, size: 64, offset: 1408)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2683, file: !2684, line: 68, baseType: !2720, size: 64, offset: 1472)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2684, line: 68, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2683, file: !2684, line: 72, baseType: !727, size: 8, offset: 1536)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2683, file: !2684, line: 77, baseType: !2724, size: 5824, offset: 1600)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !76, line: 705, size: 5824, elements: !2725)
!2725 = !{!2726, !2727, !2729, !2732, !2733, !2786, !2856, !2857, !2858, !2859, !2860, !2867, !3027, !3040, !3050, !3054, !3055, !3056, !3057, !3061, !3068, !3069, !3072, !3075, !3079, !3082, !3083, !3084, !3085, !3086, !3087, !3117, !3118, !3119, !3122, !3125, !3134, !3135, !3136, !3137, !3138, !3139}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2724, file: !76, line: 706, baseType: !494, size: 512)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2724, file: !76, line: 707, baseType: !2728, size: 64, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2724, file: !76, line: 709, baseType: !2730, size: 64, offset: 576)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !76, line: 37, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2724, file: !76, line: 711, baseType: !408, size: 64, offset: 640)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2724, file: !76, line: 712, baseType: !2734, size: 64, offset: 704)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2736)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !76, line: 89, size: 384, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2746, !2751, !2755}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2736, file: !76, line: 90, baseType: !408, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2736, file: !76, line: 91, baseType: !582, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2736, file: !76, line: 92, baseType: !2741, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!96, !2744, !530}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2736, file: !76, line: 93, baseType: !2747, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!434, !2744, !2750, !1827, !1828}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2736, file: !76, line: 95, baseType: !2752, size: 64, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !2728}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2736, file: !76, line: 97, baseType: !2756, size: 64, offset: 320)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !88, line: 286, size: 1472, elements: !2759)
!2759 = !{!2760, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2758, file: !88, line: 287, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!96, !2728}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2758, file: !88, line: 288, baseType: !2752, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2758, file: !88, line: 289, baseType: !2761, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2758, file: !88, line: 290, baseType: !2761, size: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2758, file: !88, line: 291, baseType: !2761, size: 64, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2758, file: !88, line: 292, baseType: !2761, size: 64, offset: 320)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2758, file: !88, line: 293, baseType: !2761, size: 64, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2758, file: !88, line: 294, baseType: !2761, size: 64, offset: 448)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2758, file: !88, line: 295, baseType: !2761, size: 64, offset: 512)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2758, file: !88, line: 296, baseType: !2761, size: 64, offset: 576)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2758, file: !88, line: 297, baseType: !2761, size: 64, offset: 640)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2758, file: !88, line: 298, baseType: !2761, size: 64, offset: 704)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2758, file: !88, line: 299, baseType: !2761, size: 64, offset: 768)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2758, file: !88, line: 300, baseType: !2761, size: 64, offset: 832)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2758, file: !88, line: 301, baseType: !2761, size: 64, offset: 896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2758, file: !88, line: 302, baseType: !2761, size: 64, offset: 960)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2758, file: !88, line: 303, baseType: !2761, size: 64, offset: 1024)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2758, file: !88, line: 304, baseType: !2761, size: 64, offset: 1088)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2758, file: !88, line: 305, baseType: !2761, size: 64, offset: 1152)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2758, file: !88, line: 306, baseType: !2761, size: 64, offset: 1216)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2758, file: !88, line: 307, baseType: !2761, size: 64, offset: 1280)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2758, file: !88, line: 308, baseType: !2761, size: 64, offset: 1344)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2758, file: !88, line: 309, baseType: !2761, size: 64, offset: 1408)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2724, file: !76, line: 714, baseType: !2787, size: 64, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2790, line: 80, size: 1344, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2855}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2789, file: !2790, line: 81, baseType: !408, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2789, file: !2790, line: 82, baseType: !408, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2789, file: !2790, line: 83, baseType: !582, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2789, file: !2790, line: 84, baseType: !582, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2789, file: !2790, line: 85, baseType: !582, size: 64, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2789, file: !2790, line: 87, baseType: !2798, size: 64, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!96, !2728, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !70, line: 96, size: 1152, elements: !2803)
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809, !2810, !2814, !2818, !2819, !2820, !2821, !2822, !2830, !2831, !2832, !2833, !2834, !2835}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2802, file: !70, line: 97, baseType: !408, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2802, file: !70, line: 98, baseType: !2787, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2802, file: !70, line: 100, baseType: !481, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2802, file: !70, line: 101, baseType: !408, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2802, file: !70, line: 103, baseType: !727, size: 8, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2802, file: !70, line: 104, baseType: !69, size: 32, offset: 288)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2802, file: !70, line: 106, baseType: !2811, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2813)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !70, line: 106, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2802, file: !70, line: 107, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2817)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !70, line: 107, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2802, file: !70, line: 109, baseType: !2761, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2802, file: !70, line: 110, baseType: !2752, size: 64, offset: 512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2802, file: !70, line: 111, baseType: !2761, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2802, file: !70, line: 112, baseType: !2752, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2802, file: !70, line: 113, baseType: !2823, size: 64, offset: 704)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!96, !2728, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !88, line: 60, baseType: !2827)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !88, line: 58, size: 32, elements: !2828)
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2827, file: !88, line: 59, baseType: !96, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2802, file: !70, line: 114, baseType: !2761, size: 64, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2802, file: !70, line: 115, baseType: !582, size: 64, offset: 832)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2802, file: !70, line: 116, baseType: !582, size: 64, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2802, file: !70, line: 118, baseType: !2756, size: 64, offset: 960)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2802, file: !70, line: 119, baseType: !2752, size: 64, offset: 1024)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2802, file: !70, line: 121, baseType: !2836, size: 64, offset: 1088)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !70, line: 121, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2789, file: !2790, line: 88, baseType: !2741, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2789, file: !2790, line: 89, baseType: !2761, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2789, file: !2790, line: 90, baseType: !2752, size: 64, offset: 512)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2789, file: !2790, line: 91, baseType: !2752, size: 64, offset: 576)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2789, file: !2790, line: 92, baseType: !2752, size: 64, offset: 640)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2789, file: !2790, line: 94, baseType: !2761, size: 64, offset: 704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2789, file: !2790, line: 95, baseType: !2761, size: 64, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2789, file: !2790, line: 97, baseType: !2823, size: 64, offset: 832)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2789, file: !2790, line: 98, baseType: !2761, size: 64, offset: 896)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2789, file: !2790, line: 100, baseType: !2761, size: 64, offset: 960)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2789, file: !2790, line: 102, baseType: !2761, size: 64, offset: 1024)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2789, file: !2790, line: 103, baseType: !2752, size: 64, offset: 1088)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2789, file: !2790, line: 105, baseType: !2756, size: 64, offset: 1152)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2789, file: !2790, line: 107, baseType: !2852, size: 64, offset: 1216)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2854)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2790, line: 107, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2789, file: !2790, line: 109, baseType: !727, size: 8, offset: 1280)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2724, file: !76, line: 715, baseType: !2801, size: 64, offset: 832)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2724, file: !76, line: 717, baseType: !160, size: 64, offset: 896)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2724, file: !76, line: 719, baseType: !160, size: 64, offset: 960)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2724, file: !76, line: 721, baseType: !836, size: 256, offset: 1024)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2724, file: !76, line: 725, baseType: !2861, size: 448, offset: 1280)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !76, line: 517, size: 448, elements: !2862)
!2862 = !{!2863, !2864, !2865, !2866}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2861, file: !76, line: 518, baseType: !236, size: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2861, file: !76, line: 519, baseType: !236, size: 128, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2861, file: !76, line: 520, baseType: !236, size: 128, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2861, file: !76, line: 521, baseType: !75, size: 32, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2724, file: !76, line: 726, baseType: !2868, size: 2496, offset: 1728)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !88, line: 663, size: 2496, elements: !2869)
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2914, !2915, !2916, !2917, !2918, !2919, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3020, !3024}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2868, file: !88, line: 664, baseType: !2826, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2868, file: !88, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2868, file: !88, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2868, file: !88, line: 667, baseType: !727, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2868, file: !88, line: 668, baseType: !727, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2868, file: !88, line: 669, baseType: !727, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2868, file: !88, line: 670, baseType: !727, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2868, file: !88, line: 671, baseType: !727, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2868, file: !88, line: 672, baseType: !727, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2868, file: !88, line: 673, baseType: !727, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2868, file: !88, line: 674, baseType: !727, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2868, file: !88, line: 675, baseType: !360, size: 32, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2868, file: !88, line: 676, baseType: !198, size: 32, offset: 96)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2868, file: !88, line: 678, baseType: !236, size: 128, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2868, file: !88, line: 679, baseType: !741, size: 256, offset: 256)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2868, file: !88, line: 680, baseType: !2886, size: 64, offset: 512)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2888, line: 43, size: 1536, elements: !2889)
!2888 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2889 = !{!2890, !2891, !2892, !2893, !2894, !2897, !2898, !2899, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2887, file: !2888, line: 44, baseType: !408, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2887, file: !2888, line: 45, baseType: !96, size: 32, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2887, file: !2888, line: 46, baseType: !236, size: 128, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2887, file: !2888, line: 47, baseType: !198, size: 32, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2887, file: !2888, line: 48, baseType: !2895, size: 64, offset: 320)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !88, line: 629, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2887, file: !2888, line: 49, baseType: !2186, size: 320, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2887, file: !2888, line: 50, baseType: !454, size: 64, offset: 704)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2887, file: !2888, line: 51, baseType: !2900, size: 64, offset: 768)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2901, line: 29, baseType: !271)
!2901 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2887, file: !2888, line: 52, baseType: !2900, size: 64, offset: 832)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2887, file: !2888, line: 53, baseType: !2900, size: 64, offset: 896)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2887, file: !2888, line: 54, baseType: !2900, size: 64, offset: 960)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2887, file: !2888, line: 55, baseType: !2900, size: 64, offset: 1024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2887, file: !2888, line: 56, baseType: !454, size: 64, offset: 1088)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2887, file: !2888, line: 57, baseType: !454, size: 64, offset: 1152)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2887, file: !2888, line: 58, baseType: !454, size: 64, offset: 1216)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2887, file: !2888, line: 59, baseType: !454, size: 64, offset: 1280)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2887, file: !2888, line: 60, baseType: !454, size: 64, offset: 1344)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2887, file: !2888, line: 61, baseType: !2728, size: 64, offset: 1408)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2887, file: !2888, line: 62, baseType: !727, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2887, file: !2888, line: 63, baseType: !727, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2868, file: !88, line: 681, baseType: !727, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2868, file: !88, line: 682, baseType: !727, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2868, file: !88, line: 683, baseType: !727, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2868, file: !88, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2868, file: !88, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2868, file: !88, line: 690, baseType: !2920, size: 512, offset: 640)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !83, line: 118, size: 512, elements: !2921)
!2921 = !{!2922, !2928, !2929, !2934, !2982, !2983, !2984, !2985}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2920, file: !83, line: 119, baseType: !2923, size: 256)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2924, line: 9, size: 256, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2923, file: !2924, line: 10, baseType: !629, size: 192, align: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2923, file: !2924, line: 11, baseType: !2900, size: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2920, file: !83, line: 120, baseType: !2900, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2920, file: !83, line: 121, baseType: !2930, size: 64, offset: 320)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!82, !2933}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2920, file: !83, line: 122, baseType: !2935, size: 64, offset: 384)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !83, line: 159, size: 512, align: 512, elements: !2937)
!2937 = !{!2938, !2963, !2964, !2967, !2972, !2973, !2977, !2981}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2936, file: !83, line: 160, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !83, line: 215, size: 4608, align: 512, elements: !2941)
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2940, file: !83, line: 216, baseType: !280, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2940, file: !83, line: 217, baseType: !7, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2940, file: !83, line: 218, baseType: !7, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2940, file: !83, line: 219, baseType: !7, size: 32, offset: 96)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2940, file: !83, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2940, file: !83, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2940, file: !83, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2940, file: !83, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2940, file: !83, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2940, file: !83, line: 226, baseType: !7, size: 32, offset: 160)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2940, file: !83, line: 227, baseType: !182, size: 16, offset: 192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2940, file: !83, line: 228, baseType: !182, size: 16, offset: 208)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2940, file: !83, line: 229, baseType: !7, size: 32, offset: 224)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2940, file: !83, line: 235, baseType: !2900, size: 64, offset: 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2940, file: !83, line: 236, baseType: !2933, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2940, file: !83, line: 237, baseType: !2900, size: 64, offset: 384)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2940, file: !83, line: 238, baseType: !2933, size: 64, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2940, file: !83, line: 239, baseType: !2960, size: 4096, align: 512, offset: 512)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2936, size: 4096, align: 512, elements: !2961)
!2961 = !{!2962}
!2962 = !DISubrange(count: 8)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2936, file: !83, line: 161, baseType: !7, size: 32, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2936, file: !83, line: 162, baseType: !2965, size: 32, offset: 96)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !193, line: 32, baseType: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !246, line: 96, baseType: !96)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2936, file: !83, line: 163, baseType: !2968, size: 32, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !333, line: 274, baseType: !2969)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !333, line: 274, size: 32, elements: !2970)
!2970 = !{!2971}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2969, file: !333, line: 274, baseType: !337, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2936, file: !83, line: 164, baseType: !2933, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2936, file: !83, line: 165, baseType: !2974, size: 128, offset: 256)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2924, line: 14, size: 128, elements: !2975)
!2975 = !{!2976}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2974, file: !2924, line: 15, baseType: !621, size: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2936, file: !83, line: 166, baseType: !2978, size: 64, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!2900}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2936, file: !83, line: 167, baseType: !2900, size: 64, offset: 448)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2920, file: !83, line: 123, baseType: !226, size: 8, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2920, file: !83, line: 124, baseType: !226, size: 8, offset: 456)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2920, file: !83, line: 125, baseType: !226, size: 8, offset: 464)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2920, file: !83, line: 126, baseType: !226, size: 8, offset: 472)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2868, file: !88, line: 691, baseType: !363, size: 64, offset: 1152)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2868, file: !88, line: 692, baseType: !1504, size: 256, offset: 1216)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2868, file: !88, line: 693, baseType: !890, size: 192, offset: 1472)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2868, file: !88, line: 694, baseType: !2895, size: 64, offset: 1664)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2868, file: !88, line: 695, baseType: !218, size: 32, offset: 1728)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2868, file: !88, line: 696, baseType: !218, size: 32, offset: 1760)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2868, file: !88, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2868, file: !88, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2868, file: !88, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2868, file: !88, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2868, file: !88, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2868, file: !88, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2868, file: !88, line: 703, baseType: !727, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2868, file: !88, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2868, file: !88, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2868, file: !88, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2868, file: !88, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2868, file: !88, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2868, file: !88, line: 709, baseType: !7, size: 32, offset: 1824)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2868, file: !88, line: 710, baseType: !87, size: 32, offset: 1856)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2868, file: !88, line: 711, baseType: !95, size: 32, offset: 1888)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2868, file: !88, line: 712, baseType: !95, size: 32, offset: 1920)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2868, file: !88, line: 713, baseType: !96, size: 32, offset: 1952)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2868, file: !88, line: 714, baseType: !96, size: 32, offset: 1984)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2868, file: !88, line: 715, baseType: !363, size: 64, offset: 2048)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2868, file: !88, line: 716, baseType: !363, size: 64, offset: 2112)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2868, file: !88, line: 717, baseType: !363, size: 64, offset: 2176)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2868, file: !88, line: 718, baseType: !363, size: 64, offset: 2240)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2868, file: !88, line: 720, baseType: !3015, size: 64, offset: 2304)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !88, line: 632, size: 64, elements: !3017)
!3017 = !{!3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3016, file: !88, line: 633, baseType: !198, size: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3016, file: !88, line: 634, baseType: !7, size: 32, offset: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2868, file: !88, line: 721, baseType: !3021, size: 64, offset: 2368)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{null, !2728, !947}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2868, file: !88, line: 722, baseType: !3025, size: 64, offset: 2432)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !88, line: 722, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2724, file: !76, line: 727, baseType: !3028, size: 64, offset: 4224)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !88, line: 742, size: 1792, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3037, !3038, !3039}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3029, file: !88, line: 743, baseType: !2758, size: 1472)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3029, file: !88, line: 744, baseType: !2761, size: 64, offset: 1472)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3029, file: !88, line: 745, baseType: !3034, size: 64, offset: 1536)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !2728, !727}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3029, file: !88, line: 746, baseType: !2761, size: 64, offset: 1600)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3029, file: !88, line: 747, baseType: !2752, size: 64, offset: 1664)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3029, file: !88, line: 748, baseType: !2752, size: 64, offset: 1728)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2724, file: !76, line: 736, baseType: !3041, size: 128, offset: 4288)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !76, line: 529, size: 128, elements: !3042)
!3042 = !{!3043, !3047}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3041, file: !76, line: 531, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3046, line: 13, flags: DIFlagFwdDecl)
!3046 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3041, file: !76, line: 532, baseType: !3048, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !76, line: 49, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2724, file: !76, line: 738, baseType: !3051, size: 64, offset: 4416)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3053)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !76, line: 738, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2724, file: !76, line: 740, baseType: !2622, size: 64, offset: 4480)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2724, file: !76, line: 741, baseType: !363, size: 64, offset: 4544)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2724, file: !76, line: 746, baseType: !363, size: 64, offset: 4608)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2724, file: !76, line: 747, baseType: !3058, size: 64, offset: 4672)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3060)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !76, line: 747, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2724, file: !76, line: 749, baseType: !3062, size: 64, offset: 4736)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !76, line: 428, size: 128, elements: !3064)
!3064 = !{!3065, !3066, !3067}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3063, file: !76, line: 433, baseType: !7, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3063, file: !76, line: 434, baseType: !7, size: 32, offset: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3063, file: !76, line: 435, baseType: !454, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2724, file: !76, line: 751, baseType: !236, size: 128, offset: 4800)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2724, file: !76, line: 762, baseType: !3070, size: 64, offset: 4928)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !76, line: 762, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2724, file: !76, line: 770, baseType: !3073, offset: 4992)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3074, line: 5, elements: !810)
!3074 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2724, file: !76, line: 772, baseType: !3076, size: 64, offset: 4992)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3078, line: 18, flags: DIFlagFwdDecl)
!3078 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2724, file: !76, line: 773, baseType: !3080, size: 64, offset: 5056)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2790, line: 22, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2724, file: !76, line: 776, baseType: !96, size: 32, offset: 5120)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2724, file: !76, line: 778, baseType: !450, size: 32, offset: 5152)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2724, file: !76, line: 779, baseType: !360, size: 32, offset: 5184)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2724, file: !76, line: 781, baseType: !198, size: 32, offset: 5216)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2724, file: !76, line: 782, baseType: !236, size: 128, offset: 5248)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2724, file: !76, line: 784, baseType: !3088, size: 64, offset: 5376)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3090)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3091, line: 52, size: 768, elements: !3092)
!3091 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3092 = !{!3093, !3094, !3095, !3096, !3097, !3101, !3105, !3106, !3107, !3108, !3112, !3116}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3090, file: !3091, line: 53, baseType: !408, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3090, file: !3091, line: 55, baseType: !582, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3090, file: !3091, line: 56, baseType: !582, size: 64, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3090, file: !3091, line: 58, baseType: !2741, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3090, file: !3091, line: 59, baseType: !3098, size: 64, offset: 256)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!434, !2744, !2750}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3090, file: !3091, line: 61, baseType: !3102, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !3088}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3090, file: !3091, line: 62, baseType: !2752, size: 64, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3090, file: !3091, line: 64, baseType: !2761, size: 64, offset: 448)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3090, file: !3091, line: 66, baseType: !1792, size: 64, offset: 512)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3090, file: !3091, line: 67, baseType: !3109, size: 64, offset: 576)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!1465, !2744}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3090, file: !3091, line: 69, baseType: !3113, size: 64, offset: 640)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !2744, !1827, !1828}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3090, file: !3091, line: 71, baseType: !2756, size: 64, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2724, file: !76, line: 785, baseType: !582, size: 64, offset: 5440)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2724, file: !76, line: 787, baseType: !2752, size: 64, offset: 5504)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2724, file: !76, line: 788, baseType: !3120, size: 64, offset: 5568)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !76, line: 46, flags: DIFlagFwdDecl)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2724, file: !76, line: 789, baseType: !3123, size: 64, offset: 5632)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !76, line: 48, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2724, file: !76, line: 791, baseType: !3126, size: 64, offset: 5696)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !76, line: 597, size: 128, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132, !3133}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3127, file: !76, line: 598, baseType: !103, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3127, file: !76, line: 599, baseType: !112, size: 32, offset: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3127, file: !76, line: 600, baseType: !117, size: 32, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3127, file: !76, line: 601, baseType: !727, size: 8, offset: 96)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3127, file: !76, line: 602, baseType: !727, size: 8, offset: 104)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2724, file: !76, line: 793, baseType: !122, size: 32, offset: 5760)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2724, file: !76, line: 795, baseType: !727, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2724, file: !76, line: 796, baseType: !727, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2724, file: !76, line: 797, baseType: !727, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2724, file: !76, line: 798, baseType: !727, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2724, file: !76, line: 799, baseType: !727, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !446, file: !59, line: 1226, baseType: !3141, size: 64, offset: 1664)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !59, line: 1226, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !446, file: !59, line: 1227, baseType: !3144, size: 64, offset: 1728)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !59, line: 50, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !446, file: !59, line: 1228, baseType: !3147, size: 64, offset: 1792)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !59, line: 1228, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !446, file: !59, line: 1229, baseType: !253, size: 128, offset: 1856)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !446, file: !59, line: 1230, baseType: !7, size: 32, offset: 1984)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !446, file: !59, line: 1231, baseType: !3152, size: 2496, offset: 2048)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !64, line: 521, size: 2496, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3158, !3190}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3152, file: !64, line: 522, baseType: !7, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3152, file: !64, line: 523, baseType: !261, size: 320, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3152, file: !64, line: 524, baseType: !3157, size: 192, offset: 384)
!3157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 192, elements: !535)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3152, file: !64, line: 525, baseType: !3159, size: 1728, offset: 576)
!3159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3160, size: 1728, elements: !535)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !64, line: 222, size: 576, elements: !3161)
!3161 = !{!3162, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3160, file: !64, line: 223, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !64, line: 445, size: 256, elements: !3165)
!3165 = !{!3166, !3167, !3180, !3181}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3164, file: !64, line: 446, baseType: !96, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3164, file: !64, line: 447, baseType: !3168, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3170)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !64, line: 312, size: 512, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3170, file: !64, line: 313, baseType: !2335, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3170, file: !64, line: 314, baseType: !2335, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3170, file: !64, line: 315, baseType: !2335, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3170, file: !64, line: 316, baseType: !2335, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3170, file: !64, line: 317, baseType: !2444, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3170, file: !64, line: 318, baseType: !2444, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3170, file: !64, line: 319, baseType: !2444, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3170, file: !64, line: 320, baseType: !2474, size: 64, offset: 448)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3164, file: !64, line: 448, baseType: !481, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3164, file: !64, line: 449, baseType: !3163, size: 64, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3160, file: !64, line: 224, baseType: !96, size: 32, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3160, file: !64, line: 226, baseType: !236, size: 128, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3160, file: !64, line: 227, baseType: !454, size: 64, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3160, file: !64, line: 228, baseType: !7, size: 32, offset: 320)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3160, file: !64, line: 229, baseType: !7, size: 32, offset: 352)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3160, file: !64, line: 230, baseType: !2412, size: 64, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3160, file: !64, line: 231, baseType: !2412, size: 64, offset: 448)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3160, file: !64, line: 232, baseType: !160, size: 64, offset: 512)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3152, file: !64, line: 526, baseType: !3191, size: 192, offset: 2304)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3168, size: 192, elements: !535)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !446, file: !59, line: 1233, baseType: !3193, size: 2368, offset: 4544)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !59, line: 1184, size: 2368, elements: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3193, file: !59, line: 1185, baseType: !182, size: 16)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3193, file: !59, line: 1186, baseType: !182, size: 16, offset: 16)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3193, file: !59, line: 1187, baseType: !3198, size: 2304, offset: 64)
!3198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3199, size: 2304, elements: !535)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3200, line: 12, size: 768, elements: !3201)
!3200 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3201 = !{!3202, !3210, !3211, !4316, !4317}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3199, file: !3200, line: 13, baseType: !3203, size: 384)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3204, line: 17, size: 384, elements: !3205)
!3204 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3205 = !{!3206, !3207, !3208, !3209}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3203, file: !3204, line: 18, baseType: !96, size: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3203, file: !3204, line: 19, baseType: !96, size: 32, offset: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3203, file: !3204, line: 20, baseType: !890, size: 192, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3203, file: !3204, line: 22, baseType: !731, size: 128, align: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3199, file: !3200, line: 14, baseType: !2038, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3199, file: !3200, line: 15, baseType: !3212, size: 64, offset: 448)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3213, line: 16, size: 64, elements: !3214)
!3213 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3214 = !{!3215}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3212, file: !3213, line: 17, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1323, line: 746, size: 58368, elements: !3218)
!3218 = !{!3219, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3299, !3310, !3330, !3334, !3337, !3368, !3369, !3370, !3371, !3382, !3384, !3385, !3386, !3387, !3388, !3389, !3400, !3401, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3418, !3419, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3506, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3554, !3560, !3561, !3562, !3563, !3564, !3568, !3571, !3578, !3583, !3586, !3589, !3592, !3595, !3733, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3771, !3772, !3773, !3782, !3790, !3791, !3792, !3793, !3794, !3799, !3800, !3801, !3804, !3805, !3808, !3811, !3814, !3821, !3824, !3825, !3911, !3912, !3913, !3914, !3915, !3921, !3922, !3923, !3924, !3927, !3928, !3931, !3934, !3935, !3938, !3939, !3940, !3943, !3944, !3945, !3946, !3947, !3948, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3980, !3981, !3987, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !4069, !4071, !4072, !4073, !4074, !4075, !4076, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4093, !4094, !4095}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3217, file: !1323, line: 752, baseType: !3220, size: 192)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3221, line: 56, size: 192, elements: !3222)
!3221 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3222 = !{!3223, !3224, !3225, !3226}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3220, file: !3221, line: 57, baseType: !454, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3220, file: !3221, line: 58, baseType: !454, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3220, file: !3221, line: 59, baseType: !360, size: 32, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3220, file: !3221, line: 61, baseType: !360, size: 32, offset: 160)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3217, file: !1323, line: 754, baseType: !7, size: 32, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3217, file: !1323, line: 767, baseType: !160, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3217, file: !1323, line: 768, baseType: !874, size: 32, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3217, file: !1323, line: 770, baseType: !7, size: 32, offset: 352)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3217, file: !1323, line: 771, baseType: !7, size: 32, offset: 384)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3217, file: !1323, line: 774, baseType: !96, size: 32, offset: 416)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3217, file: !1323, line: 775, baseType: !3234, size: 128, offset: 448)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3235, line: 58, size: 128, elements: !3236)
!3235 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3236 = !{!3237, !3238, !3243, !3244}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3234, file: !3235, line: 59, baseType: !824, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3234, file: !3235, line: 60, baseType: !3239, size: 32, offset: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3234, file: !3235, line: 60, size: 32, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3239, file: !3235, line: 61, baseType: !7, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3239, file: !3235, line: 62, baseType: !218, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3234, file: !3235, line: 65, baseType: !233, size: 16, offset: 96)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3234, file: !3235, line: 65, baseType: !233, size: 16, offset: 112)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3217, file: !1323, line: 776, baseType: !7, size: 32, offset: 576)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3217, file: !1323, line: 777, baseType: !454, size: 64, offset: 640)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3217, file: !1323, line: 778, baseType: !3216, size: 64, offset: 704)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3217, file: !1323, line: 787, baseType: !96, size: 32, offset: 768)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3217, file: !1323, line: 788, baseType: !96, size: 32, offset: 800)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3217, file: !1323, line: 790, baseType: !96, size: 32, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3217, file: !1323, line: 792, baseType: !96, size: 32, offset: 864)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3217, file: !1323, line: 793, baseType: !96, size: 32, offset: 896)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3217, file: !1323, line: 794, baseType: !96, size: 32, offset: 928)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3217, file: !1323, line: 795, baseType: !7, size: 32, offset: 960)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3217, file: !1323, line: 797, baseType: !3256, size: 2048, offset: 1024)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1323, line: 551, size: 2048, elements: !3257)
!3257 = !{!3258, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3278, !3281, !3282, !3283}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3256, file: !1323, line: 553, baseType: !3259, size: 128)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1323, line: 411, size: 128, elements: !3260)
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3259, file: !1323, line: 412, baseType: !454, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3259, file: !1323, line: 413, baseType: !360, size: 32, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3256, file: !1323, line: 554, baseType: !629, size: 192, align: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3256, file: !1323, line: 555, baseType: !363, size: 64, offset: 320)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3256, file: !1323, line: 556, baseType: !363, size: 64, offset: 384)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3256, file: !1323, line: 558, baseType: !236, size: 128, offset: 448)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3256, file: !1323, line: 559, baseType: !7, size: 32, offset: 576)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3256, file: !1323, line: 561, baseType: !363, size: 64, offset: 640)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3256, file: !1323, line: 562, baseType: !363, size: 64, offset: 704)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3256, file: !1323, line: 563, baseType: !363, size: 64, offset: 768)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3256, file: !1323, line: 564, baseType: !363, size: 64, offset: 832)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3256, file: !1323, line: 565, baseType: !271, size: 64, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3256, file: !1323, line: 566, baseType: !363, size: 64, offset: 960)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3256, file: !1323, line: 568, baseType: !363, size: 64, offset: 1024)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3256, file: !1323, line: 571, baseType: !96, size: 32, offset: 1088)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3256, file: !1323, line: 572, baseType: !3277, size: 64, offset: 1152)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3256, file: !1323, line: 574, baseType: !3279, size: 64, offset: 1216)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1323, line: 49, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3256, file: !1323, line: 576, baseType: !3279, size: 64, offset: 1280)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3256, file: !1323, line: 578, baseType: !454, size: 64, offset: 1344)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3256, file: !1323, line: 588, baseType: !3284, size: 512, align: 512, offset: 1536)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1323, line: 497, size: 512, align: 512, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3284, file: !1323, line: 498, baseType: !363, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3284, file: !1323, line: 499, baseType: !363, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3284, file: !1323, line: 500, baseType: !363, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3284, file: !1323, line: 501, baseType: !360, size: 32, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3284, file: !1323, line: 502, baseType: !360, size: 32, offset: 224)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3284, file: !1323, line: 503, baseType: !454, size: 64, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3284, file: !1323, line: 504, baseType: !454, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3284, file: !1323, line: 505, baseType: !454, size: 64, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3284, file: !1323, line: 506, baseType: !3295, size: 64, align: 64, offset: 448)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1323, line: 445, size: 64, align: 64, elements: !3296)
!3296 = !{!3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3295, file: !1323, line: 446, baseType: !7, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3295, file: !1323, line: 447, baseType: !7, size: 32, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3217, file: !1323, line: 798, baseType: !3300, size: 384, offset: 3072)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1323, line: 592, size: 384, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3300, file: !1323, line: 593, baseType: !236, size: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3300, file: !1323, line: 594, baseType: !454, size: 64, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3300, file: !1323, line: 595, baseType: !454, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3300, file: !1323, line: 596, baseType: !7, size: 32, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3300, file: !1323, line: 597, baseType: !182, size: 16, offset: 288)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3300, file: !1323, line: 598, baseType: !182, size: 16, offset: 304)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3300, file: !1323, line: 600, baseType: !3309, size: 64, offset: 320)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3217, file: !1323, line: 799, baseType: !3311, size: 1792, offset: 3456)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1323, line: 610, size: 1792, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3311, file: !1323, line: 611, baseType: !629, size: 192, align: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3311, file: !1323, line: 618, baseType: !363, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3311, file: !1323, line: 619, baseType: !363, size: 64, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3311, file: !1323, line: 620, baseType: !363, size: 64, offset: 320)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3311, file: !1323, line: 621, baseType: !363, size: 64, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3311, file: !1323, line: 622, baseType: !363, size: 64, offset: 448)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3311, file: !1323, line: 629, baseType: !271, size: 64, offset: 512)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3311, file: !1323, line: 630, baseType: !363, size: 64, offset: 576)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3311, file: !1323, line: 631, baseType: !7, size: 32, offset: 640)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3311, file: !1323, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3311, file: !1323, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3311, file: !1323, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3311, file: !1323, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3311, file: !1323, line: 662, baseType: !2920, size: 512, offset: 704)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3311, file: !1323, line: 671, baseType: !2920, size: 512, offset: 1216)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3311, file: !1323, line: 679, baseType: !3329, size: 64, offset: 1728)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3217, file: !1323, line: 800, baseType: !3331, size: 64, offset: 5248)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3333)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1323, line: 800, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3217, file: !1323, line: 809, baseType: !3335, size: 64, offset: 5312)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1323, line: 70, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3217, file: !1323, line: 825, baseType: !3338, size: 2048, align: 512, offset: 5632)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1323, line: 509, size: 2048, align: 512, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3338, file: !1323, line: 511, baseType: !363, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3338, file: !1323, line: 512, baseType: !363, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3338, file: !1323, line: 513, baseType: !363, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3338, file: !1323, line: 514, baseType: !363, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3338, file: !1323, line: 515, baseType: !363, size: 64, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3338, file: !1323, line: 516, baseType: !363, size: 64, offset: 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3338, file: !1323, line: 518, baseType: !363, size: 64, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3338, file: !1323, line: 519, baseType: !363, size: 64, offset: 448)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3338, file: !1323, line: 520, baseType: !271, size: 64, offset: 512)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3338, file: !1323, line: 522, baseType: !363, size: 64, offset: 576)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3338, file: !1323, line: 523, baseType: !363, size: 64, offset: 640)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3338, file: !1323, line: 524, baseType: !271, size: 64, offset: 704)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3338, file: !1323, line: 526, baseType: !271, size: 64, offset: 768)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3338, file: !1323, line: 527, baseType: !363, size: 64, offset: 832)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3338, file: !1323, line: 529, baseType: !363, size: 64, offset: 896)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3338, file: !1323, line: 530, baseType: !363, size: 64, offset: 960)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3338, file: !1323, line: 531, baseType: !363, size: 64, offset: 1024)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3338, file: !1323, line: 532, baseType: !363, size: 64, offset: 1088)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3338, file: !1323, line: 533, baseType: !363, size: 64, offset: 1152)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3338, file: !1323, line: 535, baseType: !363, size: 64, offset: 1216)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3338, file: !1323, line: 536, baseType: !363, size: 64, offset: 1280)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3338, file: !1323, line: 537, baseType: !363, size: 64, offset: 1344)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3338, file: !1323, line: 538, baseType: !363, size: 64, offset: 1408)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3338, file: !1323, line: 539, baseType: !363, size: 64, offset: 1472)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3338, file: !1323, line: 540, baseType: !363, size: 64, offset: 1536)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3338, file: !1323, line: 541, baseType: !363, size: 64, offset: 1600)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3338, file: !1323, line: 542, baseType: !363, size: 64, offset: 1664)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3338, file: !1323, line: 543, baseType: !363, size: 64, offset: 1728)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3217, file: !1323, line: 833, baseType: !7, size: 32, offset: 7680)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3217, file: !1323, line: 836, baseType: !7, size: 32, offset: 7712)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3217, file: !1323, line: 837, baseType: !96, size: 32, offset: 7744)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3217, file: !1323, line: 838, baseType: !3372, size: 64, offset: 7808)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3374)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3375, line: 19, baseType: !3376)
!3375 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3375, line: 19, size: 64, elements: !3377)
!3377 = !{!3378}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3376, file: !3375, line: 19, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 64, elements: !3380)
!3380 = !{!3381}
!3381 = !DISubrange(count: 1)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3217, file: !1323, line: 839, baseType: !3383, size: 64, offset: 7872)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3217, file: !1323, line: 840, baseType: !3374, size: 64, offset: 7936)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3217, file: !1323, line: 841, baseType: !160, size: 64, offset: 8000)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3217, file: !1323, line: 843, baseType: !182, size: 16, offset: 8064)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3217, file: !1323, line: 845, baseType: !182, size: 16, offset: 8080)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3217, file: !1323, line: 848, baseType: !96, size: 32, offset: 8096)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3217, file: !1323, line: 849, baseType: !3390, size: 32, offset: 8128)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1323, line: 718, size: 32, elements: !3391)
!3391 = !{!3392, !3399}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3390, file: !1323, line: 724, baseType: !3393, size: 32)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !1323, line: 719, size: 32, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3398}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3393, file: !1323, line: 720, baseType: !226, size: 8)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3393, file: !1323, line: 721, baseType: !226, size: 8, offset: 8)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3393, file: !1323, line: 722, baseType: !226, size: 8, offset: 16)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3393, file: !1323, line: 723, baseType: !226, size: 8, offset: 24)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3390, file: !1323, line: 725, baseType: !360, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3217, file: !1323, line: 850, baseType: !236, size: 128, offset: 8192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3217, file: !1323, line: 851, baseType: !3402, size: 64, offset: 8320)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1323, line: 60, flags: DIFlagFwdDecl)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3217, file: !1323, line: 855, baseType: !454, size: 64, offset: 8384)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3217, file: !1323, line: 856, baseType: !226, size: 8, offset: 8448)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3217, file: !1323, line: 857, baseType: !226, size: 8, offset: 8456)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3217, file: !1323, line: 858, baseType: !96, size: 32, offset: 8480)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3217, file: !1323, line: 859, baseType: !236, size: 128, offset: 8512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3217, file: !1323, line: 860, baseType: !96, size: 32, offset: 8640)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3217, file: !1323, line: 861, baseType: !236, size: 128, offset: 8704)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3217, file: !1323, line: 873, baseType: !3412, size: 256, offset: 8832)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1323, line: 376, size: 256, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3412, file: !1323, line: 381, baseType: !454, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3412, file: !1323, line: 384, baseType: !163, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3412, file: !1323, line: 389, baseType: !163, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3412, file: !1323, line: 392, baseType: !163, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3217, file: !1323, line: 875, baseType: !236, size: 128, offset: 9088)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3217, file: !1323, line: 877, baseType: !3420, size: 320, offset: 9216)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3421, line: 86, size: 320, elements: !3422)
!3421 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3422 = !{!3423, !3424, !3425}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3420, file: !3421, line: 87, baseType: !96, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3420, file: !3421, line: 88, baseType: !236, size: 128, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3420, file: !3421, line: 89, baseType: !236, size: 128, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3217, file: !1323, line: 878, baseType: !629, size: 192, align: 64, offset: 9536)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3217, file: !1323, line: 881, baseType: !789, size: 64, offset: 9728)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3217, file: !1323, line: 882, baseType: !789, size: 64, offset: 9792)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3217, file: !1323, line: 884, baseType: !96, size: 32, offset: 9856)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3217, file: !1323, line: 885, baseType: !96, size: 32, offset: 9888)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3217, file: !1323, line: 886, baseType: !96, size: 32, offset: 9920)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3217, file: !1323, line: 888, baseType: !96, size: 32, offset: 9952)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3217, file: !1323, line: 890, baseType: !454, size: 64, offset: 9984)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3217, file: !1323, line: 893, baseType: !7, size: 32, offset: 10048)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3217, file: !1323, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3217, file: !1323, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3217, file: !1323, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3217, file: !1323, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3217, file: !1323, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3217, file: !1323, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3217, file: !1323, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3217, file: !1323, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3217, file: !1323, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3217, file: !1323, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3217, file: !1323, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3217, file: !1323, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3217, file: !1323, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3217, file: !1323, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3217, file: !1323, line: 969, baseType: !454, size: 64, offset: 10176)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3217, file: !1323, line: 971, baseType: !3451, size: 448, offset: 10240)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !129, line: 25, size: 448, elements: !3452)
!3452 = !{!3453, !3454, !3459}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3451, file: !129, line: 26, baseType: !454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3451, file: !129, line: 27, baseType: !3455, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!289, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !3451, file: !129, line: 28, baseType: !3460, size: 320, offset: 128)
!3460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3451, file: !129, line: 28, size: 320, elements: !3461)
!3461 = !{!3462, !3471, !3496}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3460, file: !129, line: 37, baseType: !3463, size: 320)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3460, file: !129, line: 30, size: 320, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3463, file: !129, line: 31, baseType: !2621, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3463, file: !129, line: 32, baseType: !360, size: 32, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3463, file: !129, line: 33, baseType: !360, size: 32, offset: 96)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3463, file: !129, line: 34, baseType: !360, size: 32, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3463, file: !129, line: 35, baseType: !363, size: 64, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3463, file: !129, line: 36, baseType: !2621, size: 64, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3460, file: !129, line: 47, baseType: !3472, size: 192)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3460, file: !129, line: 39, size: 192, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3495}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3472, file: !129, line: 40, baseType: !2965, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3472, file: !129, line: 41, baseType: !128, size: 32, offset: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3472, file: !129, line: 42, baseType: !3477, size: 64, offset: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3472, file: !129, line: 42, size: 64, elements: !3478)
!3478 = !{!3479, !3487}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3477, file: !129, line: 43, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3482, line: 7, size: 128, elements: !3483)
!3482 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3483 = !{!3484, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3481, file: !3482, line: 8, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !246, line: 93, baseType: !247)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3481, file: !3482, line: 9, baseType: !247, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3477, file: !129, line: 44, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3490, line: 7, size: 64, elements: !3491)
!3490 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3491 = !{!3492, !3494}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3489, file: !3490, line: 8, baseType: !3493, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3490, line: 5, baseType: !947)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3489, file: !3490, line: 9, baseType: !947, size: 32, offset: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3472, file: !129, line: 46, baseType: !363, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3460, file: !129, line: 55, baseType: !3497, size: 256)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3460, file: !129, line: 49, size: 256, elements: !3498)
!3498 = !{!3499, !3502, !3503, !3504, !3505}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3497, file: !129, line: 50, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !129, line: 14, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3497, file: !129, line: 51, baseType: !96, size: 32, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3497, file: !129, line: 52, baseType: !96, size: 32, offset: 96)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3497, file: !129, line: 53, baseType: !454, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3497, file: !129, line: 54, baseType: !454, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3217, file: !1323, line: 973, baseType: !3507, size: 32, offset: 10688)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !193, line: 27, baseType: !3508)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !246, line: 28, baseType: !96)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3217, file: !1323, line: 974, baseType: !3507, size: 32, offset: 10720)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3217, file: !1323, line: 978, baseType: !454, size: 64, offset: 10752)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3217, file: !1323, line: 987, baseType: !3216, size: 64, offset: 10816)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3217, file: !1323, line: 990, baseType: !3216, size: 64, offset: 10880)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3217, file: !1323, line: 995, baseType: !236, size: 128, offset: 10944)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3217, file: !1323, line: 996, baseType: !236, size: 128, offset: 11072)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3217, file: !1323, line: 997, baseType: !3216, size: 64, offset: 11200)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3217, file: !1323, line: 1005, baseType: !236, size: 128, offset: 11264)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3217, file: !1323, line: 1006, baseType: !236, size: 128, offset: 11392)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3217, file: !1323, line: 1009, baseType: !870, size: 64, offset: 11520)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3217, file: !1323, line: 1010, baseType: !3520, size: 512, offset: 11584)
!3520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 512, elements: !886)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3217, file: !1323, line: 1011, baseType: !236, size: 128, offset: 12096)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3217, file: !1323, line: 1012, baseType: !236, size: 128, offset: 12224)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3217, file: !1323, line: 1014, baseType: !1949, size: 64, offset: 12352)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3217, file: !1323, line: 1017, baseType: !2086, size: 64, offset: 12416)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3217, file: !1323, line: 1020, baseType: !2086, size: 64, offset: 12480)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3217, file: !1323, line: 1023, baseType: !160, size: 64, offset: 12544)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3217, file: !1323, line: 1025, baseType: !363, size: 64, offset: 12608)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3217, file: !1323, line: 1026, baseType: !363, size: 64, offset: 12672)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3217, file: !1323, line: 1031, baseType: !363, size: 64, offset: 12736)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3217, file: !1323, line: 1032, baseType: !3531, size: 192, offset: 12800)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1323, line: 324, size: 192, elements: !3532)
!3532 = !{!3533, !3534, !3535}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3531, file: !1323, line: 326, baseType: !363, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3531, file: !1323, line: 327, baseType: !363, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3531, file: !1323, line: 328, baseType: !280, size: 32, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3217, file: !1323, line: 1041, baseType: !454, size: 64, offset: 12992)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3217, file: !1323, line: 1042, baseType: !454, size: 64, offset: 13056)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3217, file: !1323, line: 1045, baseType: !363, size: 64, offset: 13120)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3217, file: !1323, line: 1048, baseType: !363, size: 64, offset: 13184)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3217, file: !1323, line: 1051, baseType: !454, size: 64, offset: 13248)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3217, file: !1323, line: 1052, baseType: !454, size: 64, offset: 13312)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3217, file: !1323, line: 1055, baseType: !3543, size: 640, offset: 13376)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3544, line: 132, size: 640, elements: !3545)
!3544 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3545 = !{!3546, !3552, !3553}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3543, file: !3544, line: 133, baseType: !3547, size: 576)
!3547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3548, size: 576, elements: !535)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3544, line: 117, size: 192, elements: !3549)
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3548, file: !3544, line: 118, baseType: !363, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3548, file: !3544, line: 119, baseType: !2974, size: 128, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3543, file: !3544, line: 134, baseType: !7, size: 32, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3543, file: !3544, line: 135, baseType: !7, size: 32, offset: 608)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3217, file: !1323, line: 1058, baseType: !3555, size: 448, offset: 14016)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3544, line: 144, size: 448, elements: !3556)
!3556 = !{!3557, !3558, !3559}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3555, file: !3544, line: 145, baseType: !731, size: 128, align: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3555, file: !3544, line: 146, baseType: !836, size: 256, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3555, file: !3544, line: 147, baseType: !7, size: 32, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3217, file: !1323, line: 1064, baseType: !912, size: 64, offset: 14464)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3217, file: !1323, line: 1067, baseType: !912, size: 64, offset: 14528)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3217, file: !1323, line: 1070, baseType: !912, size: 64, offset: 14592)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3217, file: !1323, line: 1074, baseType: !939, size: 64, offset: 14656)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3217, file: !1323, line: 1084, baseType: !3565, size: 128, offset: 14720)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 128, elements: !3566)
!3566 = !{!3567}
!3567 = !DISubrange(count: 16)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3217, file: !1323, line: 1086, baseType: !3569, size: 64, offset: 14848)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1323, line: 55, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3217, file: !1323, line: 1089, baseType: !3572, size: 64, offset: 14912)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3573, line: 12, size: 64, elements: !3574)
!3573 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3574 = !{!3575}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3572, file: !3573, line: 13, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3573, line: 8, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3217, file: !1323, line: 1090, baseType: !3579, size: 128, offset: 14976)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3580, line: 13, size: 128, elements: !3581)
!3580 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3579, file: !3580, line: 14, baseType: !236, size: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3217, file: !1323, line: 1097, baseType: !3584, size: 64, offset: 15104)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1323, line: 50, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3217, file: !1323, line: 1100, baseType: !3587, size: 64, offset: 15168)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1323, line: 1100, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3217, file: !1323, line: 1103, baseType: !3590, size: 64, offset: 15232)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1323, line: 53, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3217, file: !1323, line: 1107, baseType: !3593, size: 64, offset: 15296)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1323, line: 56, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3217, file: !1323, line: 1110, baseType: !3596, size: 64, offset: 15360)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3598, line: 93, size: 8768, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3647, !3656, !3657, !3659, !3660, !3661, !3664, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3702, !3703, !3710, !3720, !3723, !3724, !3727, !3728, !3729, !3730, !3731, !3732}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3597, file: !3598, line: 94, baseType: !874, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3597, file: !3598, line: 95, baseType: !218, size: 32, offset: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3597, file: !3598, line: 96, baseType: !96, size: 32, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3597, file: !3598, line: 97, baseType: !96, size: 32, offset: 96)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3597, file: !3598, line: 98, baseType: !236, size: 128, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3597, file: !3598, line: 100, baseType: !890, size: 192, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3597, file: !3598, line: 103, baseType: !3216, size: 64, offset: 448)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3597, file: !3598, line: 106, baseType: !3608, size: 192, offset: 512)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1090, line: 32, size: 192, elements: !3609)
!3609 = !{!3610, !3611}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3608, file: !1090, line: 33, baseType: !236, size: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3608, file: !1090, line: 34, baseType: !3612, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3613, line: 25, baseType: !3614)
!3613 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3613, line: 23, size: 64, elements: !3615)
!3615 = !{!3616}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3614, file: !3613, line: 24, baseType: !3379, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3597, file: !3598, line: 109, baseType: !883, size: 64, offset: 704)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3597, file: !3598, line: 112, baseType: !96, size: 32, offset: 768)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3597, file: !3598, line: 114, baseType: !96, size: 32, offset: 800)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3597, file: !3598, line: 115, baseType: !3216, size: 64, offset: 832)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3597, file: !3598, line: 118, baseType: !96, size: 32, offset: 896)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3597, file: !3598, line: 119, baseType: !7, size: 32, offset: 928)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3597, file: !3598, line: 121, baseType: !3624, size: 64, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3598, line: 80, size: 448, elements: !3626)
!3626 = !{!3627, !3628, !3634}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3625, file: !3598, line: 81, baseType: !218, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3625, file: !3598, line: 82, baseType: !3629, size: 128, offset: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3598, line: 75, size: 128, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3629, file: !3598, line: 76, baseType: !3216, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3629, file: !3598, line: 77, baseType: !3633, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3625, file: !3598, line: 83, baseType: !741, size: 256, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3597, file: !3598, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3597, file: !3598, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3597, file: !3598, line: 138, baseType: !7, size: 32, offset: 1056)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3597, file: !3598, line: 139, baseType: !236, size: 128, offset: 1088)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3597, file: !3598, line: 142, baseType: !2920, size: 512, offset: 1216)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3597, file: !3598, line: 143, baseType: !2900, size: 64, offset: 1728)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3597, file: !3598, line: 150, baseType: !3642, size: 256, offset: 1792)
!3642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3643, size: 256, elements: !2076)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3598, line: 38, size: 128, elements: !3644)
!3644 = !{!3645, !3646}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3643, file: !3598, line: 39, baseType: !363, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3643, file: !3598, line: 40, baseType: !363, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3597, file: !3598, line: 156, baseType: !3648, size: 192, offset: 2048)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3598, line: 66, size: 192, elements: !3649)
!3649 = !{!3650}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3648, file: !3598, line: 67, baseType: !3651, size: 192)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3598, line: 47, size: 192, elements: !3652)
!3652 = !{!3653, !3654, !3655}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3651, file: !3598, line: 48, baseType: !267, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3651, file: !3598, line: 49, baseType: !267, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3651, file: !3598, line: 50, baseType: !267, size: 64, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3597, file: !3598, line: 160, baseType: !3543, size: 640, offset: 2240)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3597, file: !3598, line: 163, baseType: !3658, size: 256, offset: 2880)
!3658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 256, elements: !886)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3597, file: !3598, line: 169, baseType: !870, size: 64, offset: 3136)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3597, file: !3598, line: 172, baseType: !96, size: 32, offset: 3200)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3597, file: !3598, line: 174, baseType: !3662, size: 64, offset: 3264)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3598, line: 174, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3597, file: !3598, line: 185, baseType: !3665, size: 64, offset: 3328)
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !333, line: 860, baseType: !3666)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 853, size: 64, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3666, file: !333, line: 858, baseType: !332, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3666, file: !333, line: 859, baseType: !198, size: 32, offset: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3597, file: !3598, line: 186, baseType: !363, size: 64, offset: 3392)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3597, file: !3598, line: 186, baseType: !363, size: 64, offset: 3456)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3597, file: !3598, line: 186, baseType: !363, size: 64, offset: 3520)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3597, file: !3598, line: 186, baseType: !363, size: 64, offset: 3584)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3597, file: !3598, line: 187, baseType: !363, size: 64, offset: 3648)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3597, file: !3598, line: 188, baseType: !363, size: 64, offset: 3712)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3597, file: !3598, line: 189, baseType: !3531, size: 192, offset: 3776)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3597, file: !3598, line: 190, baseType: !454, size: 64, offset: 3968)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3597, file: !3598, line: 190, baseType: !454, size: 64, offset: 4032)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3597, file: !3598, line: 190, baseType: !454, size: 64, offset: 4096)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3597, file: !3598, line: 190, baseType: !454, size: 64, offset: 4160)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3597, file: !3598, line: 191, baseType: !454, size: 64, offset: 4224)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3597, file: !3598, line: 191, baseType: !454, size: 64, offset: 4288)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3597, file: !3598, line: 191, baseType: !454, size: 64, offset: 4352)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3597, file: !3598, line: 191, baseType: !454, size: 64, offset: 4416)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3597, file: !3598, line: 192, baseType: !454, size: 64, offset: 4480)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3597, file: !3598, line: 192, baseType: !454, size: 64, offset: 4544)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3597, file: !3598, line: 192, baseType: !454, size: 64, offset: 4608)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3597, file: !3598, line: 192, baseType: !454, size: 64, offset: 4672)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3597, file: !3598, line: 193, baseType: !454, size: 64, offset: 4736)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3597, file: !3598, line: 193, baseType: !454, size: 64, offset: 4800)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3597, file: !3598, line: 194, baseType: !3692, size: 448, offset: 4864)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3693, line: 12, size: 448, elements: !3694)
!3693 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3694 = !{!3695, !3696, !3697, !3698, !3699, !3700, !3701}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3692, file: !3693, line: 15, baseType: !363, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3692, file: !3693, line: 17, baseType: !363, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3692, file: !3693, line: 19, baseType: !363, size: 64, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3692, file: !3693, line: 21, baseType: !363, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3692, file: !3693, line: 29, baseType: !363, size: 64, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3692, file: !3693, line: 35, baseType: !363, size: 64, offset: 320)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3692, file: !3693, line: 44, baseType: !363, size: 64, offset: 384)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3597, file: !3598, line: 202, baseType: !163, size: 64, offset: 5312)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3597, file: !3598, line: 213, baseType: !3704, size: 2048, offset: 5376)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3705, size: 2048, elements: !3566)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3706, line: 43, size: 128, elements: !3707)
!3706 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3707 = !{!3708, !3709}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3705, file: !3706, line: 44, baseType: !580, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3705, file: !3706, line: 45, baseType: !580, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3597, file: !3598, line: 216, baseType: !3711, size: 448, offset: 7424)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3598, line: 30, size: 448, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3716, !3717, !3718, !3719}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3711, file: !3598, line: 31, baseType: !96, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3711, file: !3598, line: 32, baseType: !289, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3711, file: !3598, line: 33, baseType: !454, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3711, file: !3598, line: 34, baseType: !363, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3711, file: !3598, line: 34, baseType: !363, size: 64, offset: 256)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3711, file: !3598, line: 35, baseType: !454, size: 64, offset: 320)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3711, file: !3598, line: 35, baseType: !454, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3597, file: !3598, line: 219, baseType: !3721, size: 64, offset: 7872)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3598, line: 219, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3597, file: !3598, line: 222, baseType: !7, size: 32, offset: 7936)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3597, file: !3598, line: 223, baseType: !3725, size: 64, offset: 8000)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3598, line: 223, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3597, file: !3598, line: 230, baseType: !727, size: 8, offset: 8064)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3597, file: !3598, line: 231, baseType: !973, size: 16, offset: 8080)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3597, file: !3598, line: 232, baseType: !973, size: 16, offset: 8096)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3597, file: !3598, line: 234, baseType: !789, size: 64, offset: 8128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3597, file: !3598, line: 237, baseType: !836, size: 256, offset: 8192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3597, file: !3598, line: 243, baseType: !261, size: 320, offset: 8448)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3217, file: !1323, line: 1111, baseType: !3734, size: 64, offset: 15424)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3598, line: 20, size: 16640, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3735, file: !3598, line: 21, baseType: !198, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3735, file: !3598, line: 22, baseType: !874, size: 32, offset: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3735, file: !3598, line: 23, baseType: !890, size: 192, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3735, file: !3598, line: 24, baseType: !3741, size: 16384, offset: 256)
!3741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3742, size: 16384, elements: !539)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1090, line: 51, size: 256, elements: !3743)
!3743 = !{!3744}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3742, file: !1090, line: 52, baseType: !3745, size: 256)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1090, line: 37, size: 256, elements: !3746)
!3746 = !{!3747, !3754, !3755, !3759}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3745, file: !1090, line: 39, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3749, line: 83, baseType: !3750)
!3749 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3749, line: 82, baseType: !3752)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{null, !96}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3745, file: !1090, line: 40, baseType: !454, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3745, file: !1090, line: 46, baseType: !3756, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3749, line: 86, baseType: !3757)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3749, line: 85, baseType: !2291)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3745, file: !1090, line: 48, baseType: !3612, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3217, file: !1323, line: 1112, baseType: !3612, size: 64, offset: 15488)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3217, file: !1323, line: 1113, baseType: !3612, size: 64, offset: 15552)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3217, file: !1323, line: 1115, baseType: !3612, size: 64, offset: 15616)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3217, file: !1323, line: 1116, baseType: !3608, size: 192, offset: 15680)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3217, file: !1323, line: 1117, baseType: !454, size: 64, offset: 15872)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3217, file: !1323, line: 1118, baseType: !578, size: 64, offset: 15936)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3217, file: !1323, line: 1119, baseType: !7, size: 32, offset: 16000)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3217, file: !1323, line: 1121, baseType: !734, size: 64, offset: 16064)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3217, file: !1323, line: 1125, baseType: !3769, size: 64, offset: 16128)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1323, line: 43, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3217, file: !1323, line: 1127, baseType: !297, size: 32, offset: 16192)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3217, file: !1323, line: 1128, baseType: !7, size: 32, offset: 16224)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3217, file: !1323, line: 1130, baseType: !3774, size: 128, offset: 16256)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3775, line: 37, size: 128, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3776 = !{!3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3774, file: !3775, line: 38, baseType: !96, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3774, file: !3775, line: 39, baseType: !218, size: 32, offset: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3774, file: !3775, line: 40, baseType: !3780, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3775, line: 24, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3217, file: !1323, line: 1131, baseType: !3783, size: 256, offset: 16384)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3784, line: 12, size: 256, elements: !3785)
!3784 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3785 = !{!3786, !3787, !3788, !3789}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3783, file: !3784, line: 13, baseType: !434, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3783, file: !3784, line: 14, baseType: !454, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3783, file: !3784, line: 15, baseType: !454, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3783, file: !3784, line: 16, baseType: !727, size: 8, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3217, file: !1323, line: 1134, baseType: !363, size: 64, offset: 16640)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3217, file: !1323, line: 1135, baseType: !363, size: 64, offset: 16704)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3217, file: !1323, line: 1138, baseType: !198, size: 32, offset: 16768)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3217, file: !1323, line: 1141, baseType: !280, size: 32, offset: 16800)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3217, file: !1323, line: 1143, baseType: !3795, size: 64, offset: 16832)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1323, line: 735, size: 64, elements: !3796)
!3796 = !{!3797}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3795, file: !1323, line: 736, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3217, file: !1323, line: 1147, baseType: !621, size: 128, offset: 16896)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3217, file: !1323, line: 1149, baseType: !3216, size: 64, offset: 17024)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3217, file: !1323, line: 1151, baseType: !3802, size: 64, offset: 17088)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1323, line: 1151, flags: DIFlagFwdDecl)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3217, file: !1323, line: 1188, baseType: !160, size: 64, offset: 17152)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3217, file: !1323, line: 1191, baseType: !3806, size: 64, offset: 17216)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1323, line: 44, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3217, file: !1323, line: 1194, baseType: !3809, size: 64, offset: 17280)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1323, line: 45, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3217, file: !1323, line: 1197, baseType: !3812, size: 64, offset: 17344)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1323, line: 61, flags: DIFlagFwdDecl)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3217, file: !1323, line: 1199, baseType: !3815, size: 64, offset: 17408)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2694, line: 99, size: 128, elements: !3817)
!3817 = !{!3818, !3819, !3820}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3816, file: !2694, line: 100, baseType: !265, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3816, file: !2694, line: 101, baseType: !218, size: 32, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3816, file: !2694, line: 103, baseType: !182, size: 16, offset: 96)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3217, file: !1323, line: 1202, baseType: !3822, size: 64, offset: 17472)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1323, line: 48, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3217, file: !1323, line: 1205, baseType: !454, size: 64, offset: 17536)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3217, file: !1323, line: 1206, baseType: !3826, size: 64, offset: 17600)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1090, line: 14, baseType: !3828)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1090, line: 12, size: 384, elements: !3829)
!3829 = !{!3830}
!3830 = !DIDerivedType(tag: DW_TAG_member, scope: !3828, file: !1090, line: 13, baseType: !3831, size: 384)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3828, file: !1090, line: 13, size: 384, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3831, file: !1090, line: 13, baseType: !96, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3831, file: !1090, line: 13, baseType: !96, size: 32, offset: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3831, file: !1090, line: 13, baseType: !96, size: 32, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3831, file: !1090, line: 13, baseType: !3837, size: 256, offset: 128)
!3837 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3838, line: 37, size: 256, elements: !3839)
!3838 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3839 = !{!3840, !3845, !3858, !3864, !3873, !3900, !3905}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3837, file: !3838, line: 42, baseType: !3841, size: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3838, line: 39, size: 64, elements: !3842)
!3842 = !{!3843, !3844}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3841, file: !3838, line: 40, baseType: !3508, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3841, file: !3838, line: 41, baseType: !303, size: 32, offset: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3837, file: !3838, line: 50, baseType: !3846, size: 192)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3838, line: 45, size: 192, elements: !3847)
!3847 = !{!3848, !3850, !3851, !3857}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3846, file: !3838, line: 46, baseType: !3849, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !246, line: 95, baseType: !96)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3846, file: !3838, line: 47, baseType: !96, size: 32, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3846, file: !3838, line: 48, baseType: !3852, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3838, line: 11, baseType: !3853)
!3853 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3838, line: 8, size: 64, elements: !3854)
!3854 = !{!3855, !3856}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3853, file: !3838, line: 9, baseType: !96, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3853, file: !3838, line: 10, baseType: !160, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3846, file: !3838, line: 49, baseType: !96, size: 32, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3837, file: !3838, line: 57, baseType: !3859, size: 128)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3838, line: 53, size: 128, elements: !3860)
!3860 = !{!3861, !3862, !3863}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3859, file: !3838, line: 54, baseType: !3508, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3859, file: !3838, line: 55, baseType: !303, size: 32, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3859, file: !3838, line: 56, baseType: !3852, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3837, file: !3838, line: 66, baseType: !3865, size: 256)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3838, line: 60, size: 256, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3872}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3865, file: !3838, line: 61, baseType: !3508, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3865, file: !3838, line: 62, baseType: !303, size: 32, offset: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3865, file: !3838, line: 63, baseType: !96, size: 32, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3865, file: !3838, line: 64, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !246, line: 94, baseType: !568)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3865, file: !3838, line: 65, baseType: !3871, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3837, file: !3838, line: 105, baseType: !3874, size: 256)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3838, line: 69, size: 256, elements: !3875)
!3875 = !{!3876, !3877}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3874, file: !3838, line: 70, baseType: !160, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !3874, file: !3838, line: 79, baseType: !3878, size: 192, offset: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3874, file: !3838, line: 79, size: 192, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3889, !3894}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3878, file: !3838, line: 81, baseType: !96, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3878, file: !3838, line: 86, baseType: !973, size: 16)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3878, file: !3838, line: 92, baseType: !3883, size: 192)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !3838, line: 88, size: 192, elements: !3884)
!3884 = !{!3885, !3887, !3888}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3883, file: !3838, line: 89, baseType: !3886, size: 64)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 64, elements: !2961)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3883, file: !3838, line: 90, baseType: !160, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3883, file: !3838, line: 91, baseType: !160, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3878, file: !3838, line: 97, baseType: !3890, size: 96)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !3838, line: 94, size: 96, elements: !3891)
!3891 = !{!3892, !3893}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3890, file: !3838, line: 95, baseType: !3886, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3890, file: !3838, line: 96, baseType: !191, size: 32, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3878, file: !3838, line: 103, baseType: !3895, size: 128)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !3838, line: 99, size: 128, elements: !3896)
!3896 = !{!3897, !3898, !3899}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3895, file: !3838, line: 100, baseType: !454, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3895, file: !3838, line: 101, baseType: !191, size: 32, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3895, file: !3838, line: 102, baseType: !191, size: 32, offset: 96)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3837, file: !3838, line: 111, baseType: !3901, size: 128)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3838, line: 108, size: 128, elements: !3902)
!3902 = !{!3903, !3904}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3901, file: !3838, line: 109, baseType: !289, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3901, file: !3838, line: 110, baseType: !96, size: 32, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3837, file: !3838, line: 118, baseType: !3906, size: 128)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3838, line: 114, size: 128, elements: !3907)
!3907 = !{!3908, !3909, !3910}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3906, file: !3838, line: 115, baseType: !160, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3906, file: !3838, line: 116, baseType: !96, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3906, file: !3838, line: 117, baseType: !7, size: 32, offset: 96)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3217, file: !1323, line: 1208, baseType: !3692, size: 448, offset: 17664)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3217, file: !1323, line: 1215, baseType: !363, size: 64, offset: 18112)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3217, file: !1323, line: 1217, baseType: !363, size: 64, offset: 18176)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3217, file: !1323, line: 1219, baseType: !363, size: 64, offset: 18240)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3217, file: !1323, line: 1223, baseType: !3916, size: 64, offset: 18304)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3917, line: 99, baseType: !3918)
!3917 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3917, line: 99, size: 64, elements: !3919)
!3919 = !{!3920}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3918, file: !3917, line: 99, baseType: !3379, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3217, file: !1323, line: 1225, baseType: !332, size: 32, offset: 18368)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3217, file: !1323, line: 1226, baseType: !96, size: 32, offset: 18400)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3217, file: !1323, line: 1227, baseType: !96, size: 32, offset: 18432)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3217, file: !1323, line: 1231, baseType: !3925, size: 64, offset: 18496)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1323, line: 1231, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3217, file: !1323, line: 1233, baseType: !236, size: 128, offset: 18560)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3217, file: !1323, line: 1240, baseType: !3929, size: 64, offset: 18688)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1323, line: 62, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3217, file: !1323, line: 1242, baseType: !3932, size: 64, offset: 18752)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1323, line: 1242, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3217, file: !1323, line: 1244, baseType: !236, size: 128, offset: 18816)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3217, file: !1323, line: 1245, baseType: !3936, size: 64, offset: 18944)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1323, line: 51, flags: DIFlagFwdDecl)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3217, file: !1323, line: 1246, baseType: !836, size: 256, offset: 19008)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3217, file: !1323, line: 1247, baseType: !7, size: 32, offset: 19264)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3217, file: !1323, line: 1250, baseType: !3941, size: 64, offset: 19328)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1323, line: 57, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3217, file: !1323, line: 1251, baseType: !836, size: 256, offset: 19392)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3217, file: !1323, line: 1252, baseType: !236, size: 128, offset: 19648)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3217, file: !1323, line: 1259, baseType: !1595, size: 64, offset: 19776)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3217, file: !1323, line: 1260, baseType: !973, size: 16, offset: 19840)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3217, file: !1323, line: 1261, baseType: !973, size: 16, offset: 19856)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3217, file: !1323, line: 1314, baseType: !3949, size: 64, offset: 19904)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3951, line: 62, size: 256, align: 256, elements: !3952)
!3951 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3952 = !{!3953, !3954, !3955, !3956, !3957, !3958, !3959}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3950, file: !3951, line: 75, baseType: !191, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3950, file: !3951, line: 90, baseType: !191, size: 32, offset: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3950, file: !3951, line: 112, baseType: !364, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3950, file: !3951, line: 132, baseType: !191, size: 32, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3950, file: !3951, line: 140, baseType: !191, size: 32, offset: 160)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3950, file: !3951, line: 149, baseType: !191, size: 32, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3950, file: !3951, line: 154, baseType: !3960, offset: 224)
!3960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, elements: !905)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3217, file: !1323, line: 1315, baseType: !360, size: 32, offset: 19968)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3217, file: !1323, line: 1316, baseType: !360, size: 32, offset: 20000)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3217, file: !1323, line: 1321, baseType: !454, size: 64, offset: 20032)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3217, file: !1323, line: 1325, baseType: !96, size: 32, offset: 20096)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3217, file: !1323, line: 1326, baseType: !96, size: 32, offset: 20128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3217, file: !1323, line: 1327, baseType: !96, size: 32, offset: 20160)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3217, file: !1323, line: 1328, baseType: !96, size: 32, offset: 20192)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3217, file: !1323, line: 1329, baseType: !731, size: 128, align: 64, offset: 20224)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3217, file: !1323, line: 1332, baseType: !3970, size: 128, offset: 20352)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3971, line: 51, size: 128, elements: !3972)
!3971 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3972 = !{!3973, !3978, !3979}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3970, file: !3971, line: 60, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3975, line: 7, size: 64, elements: !3976)
!3975 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3976 = !{!3977}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3974, file: !3975, line: 12, baseType: !3376, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3970, file: !3971, line: 63, baseType: !727, size: 8, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3970, file: !3971, line: 70, baseType: !727, size: 8, offset: 72)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3217, file: !1323, line: 1335, baseType: !1321, size: 64, offset: 20480)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3217, file: !1323, line: 1337, baseType: !3982, size: 128, offset: 20544)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3971, line: 39, size: 128, elements: !3983)
!3983 = !{!3984, !3985, !3986}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3982, file: !3971, line: 40, baseType: !646, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3982, file: !3971, line: 42, baseType: !191, size: 32, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3982, file: !3971, line: 43, baseType: !191, size: 32, offset: 96)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3217, file: !1323, line: 1340, baseType: !3988, size: 64, offset: 20672)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1323, line: 69, flags: DIFlagFwdDecl)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3217, file: !1323, line: 1351, baseType: !96, size: 32, offset: 20736)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3217, file: !1323, line: 1352, baseType: !96, size: 32, offset: 20768)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3217, file: !1323, line: 1354, baseType: !454, size: 64, offset: 20800)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3217, file: !1323, line: 1364, baseType: !363, size: 64, offset: 20864)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3217, file: !1323, line: 1365, baseType: !363, size: 64, offset: 20928)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3217, file: !1323, line: 1412, baseType: !454, size: 64, offset: 20992)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3217, file: !1323, line: 1453, baseType: !2689, size: 64, offset: 21056)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3217, file: !1323, line: 1457, baseType: !3998, size: 64, offset: 21120)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !135, line: 61, size: 576, elements: !4000)
!4000 = !{!4001, !4002, !4021, !4024, !4025, !4058, !4068}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3999, file: !135, line: 62, baseType: !134, size: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, scope: !3999, file: !135, line: 64, baseType: !4003, size: 192, offset: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3999, file: !135, line: 64, size: 192, elements: !4004)
!4004 = !{!4005, !4016}
!4005 = !DIDerivedType(tag: DW_TAG_member, scope: !4003, file: !135, line: 65, baseType: !4006, size: 192)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4003, file: !135, line: 65, size: 192, elements: !4007)
!4007 = !{!4008, !4015}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4006, file: !135, line: 66, baseType: !4009, size: 128)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4010, line: 50, size: 128, elements: !4011)
!4010 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4011 = !{!4012, !4013, !4014}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4009, file: !4010, line: 52, baseType: !454, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4009, file: !4010, line: 54, baseType: !7, size: 32, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4009, file: !4010, line: 55, baseType: !7, size: 32, offset: 96)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4006, file: !135, line: 67, baseType: !454, size: 64, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, scope: !4003, file: !135, line: 70, baseType: !4017, size: 192)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4003, file: !135, line: 70, size: 192, elements: !4018)
!4018 = !{!4019, !4020}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4017, file: !135, line: 71, baseType: !731, size: 128, align: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4017, file: !135, line: 72, baseType: !454, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3999, file: !135, line: 76, baseType: !4022, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !135, line: 76, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3999, file: !135, line: 77, baseType: !454, size: 64, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3999, file: !135, line: 79, baseType: !4026, size: 64, offset: 384)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4010, line: 25, size: 256, elements: !4028)
!4028 = !{!4029, !4035, !4039}
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !4010, line: 26, baseType: !4030, size: 128)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4027, file: !4010, line: 26, size: 128, elements: !4031)
!4031 = !{!4032, !4034}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4030, file: !4010, line: 27, baseType: !4033, size: 128)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !3566)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4030, file: !4010, line: 28, baseType: !4033, size: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4027, file: !4010, line: 31, baseType: !4036, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4038)
!4038 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4010, line: 23, flags: DIFlagFwdDecl)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !4010, line: 33, baseType: !4040, size: 64, offset: 192)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4027, file: !4010, line: 33, size: 64, elements: !4041)
!4041 = !{!4042, !4048, !4053}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4040, file: !4010, line: 38, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4040, file: !4010, line: 34, size: 64, elements: !4044)
!4044 = !{!4045, !4046, !4047}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4043, file: !4010, line: 35, baseType: !947, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4043, file: !4010, line: 36, baseType: !226, size: 8, offset: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4043, file: !4010, line: 37, baseType: !226, size: 8, offset: 40)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4040, file: !4010, line: 42, baseType: !4049, size: 16)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4040, file: !4010, line: 39, size: 16, elements: !4050)
!4050 = !{!4051, !4052}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4049, file: !4010, line: 40, baseType: !226, size: 8)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4049, file: !4010, line: 41, baseType: !226, size: 8, offset: 8)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4040, file: !4010, line: 46, baseType: !4054, size: 16)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4040, file: !4010, line: 43, size: 16, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4054, file: !4010, line: 44, baseType: !226, size: 8)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4054, file: !4010, line: 45, baseType: !226, size: 8, offset: 8)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3999, file: !135, line: 81, baseType: !4059, size: 64, offset: 448)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !135, line: 85, size: 384, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4060, file: !135, line: 86, baseType: !4022, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4060, file: !135, line: 87, baseType: !454, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4060, file: !135, line: 88, baseType: !454, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4060, file: !135, line: 89, baseType: !454, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4060, file: !135, line: 90, baseType: !727, size: 8, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4060, file: !135, line: 92, baseType: !4059, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3999, file: !135, line: 82, baseType: !7, size: 32, offset: 512)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3217, file: !1323, line: 1463, baseType: !4070, offset: 21184)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1323, line: 739, elements: !810)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3217, file: !1323, line: 1470, baseType: !731, size: 128, align: 64, offset: 21184)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3217, file: !1323, line: 1471, baseType: !874, size: 32, offset: 21312)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3217, file: !1323, line: 1472, baseType: !96, size: 32, offset: 21344)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3217, file: !1323, line: 1474, baseType: !3216, size: 64, offset: 21376)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3217, file: !1323, line: 1475, baseType: !2186, size: 320, offset: 21440)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3217, file: !1323, line: 1478, baseType: !4077, size: 64, offset: 21760)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1323, line: 1478, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3217, file: !1323, line: 1482, baseType: !874, size: 32, offset: 21824)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3217, file: !1323, line: 1489, baseType: !160, size: 64, offset: 21888)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3217, file: !1323, line: 1504, baseType: !160, size: 64, offset: 21952)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3217, file: !1323, line: 1505, baseType: !364, size: 64, offset: 22016)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3217, file: !1323, line: 1506, baseType: !363, size: 64, offset: 22080)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3217, file: !1323, line: 1507, baseType: !364, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3217, file: !1323, line: 1508, baseType: !364, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3217, file: !1323, line: 1509, baseType: !364, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3217, file: !1323, line: 1510, baseType: !731, size: 128, align: 64, offset: 22208)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3217, file: !1323, line: 1511, baseType: !96, size: 32, offset: 22336)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3217, file: !1323, line: 1515, baseType: !4090, size: 64, offset: 22400)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !825, line: 56, size: 64, elements: !4091)
!4091 = !{!4092}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4090, file: !825, line: 57, baseType: !828, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3217, file: !1323, line: 1518, baseType: !4090, size: 64, offset: 22464)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3217, file: !1323, line: 1528, baseType: !731, size: 128, align: 64, offset: 22528)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3217, file: !1323, line: 1552, baseType: !4096, size: 35328, offset: 23040)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4097, line: 430, size: 35328, elements: !4098)
!4097 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4098 = !{!4099, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4128, !4129, !4130, !4131, !4132, !4133, !4136, !4137, !4138, !4139}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4096, file: !4097, line: 432, baseType: !4100, size: 192)
!4100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4101, size: 192, elements: !535)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4102, line: 16, size: 64, elements: !4103)
!4102 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4103 = !{!4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4101, file: !4102, line: 17, baseType: !233, size: 16)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4101, file: !4102, line: 18, baseType: !233, size: 16, offset: 16)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4101, file: !4102, line: 19, baseType: !233, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4101, file: !4102, line: 19, baseType: !233, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4101, file: !4102, line: 19, baseType: !233, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4101, file: !4102, line: 19, baseType: !233, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4101, file: !4102, line: 19, baseType: !233, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4101, file: !4102, line: 20, baseType: !233, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4101, file: !4102, line: 20, baseType: !233, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4101, file: !4102, line: 20, baseType: !233, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4101, file: !4102, line: 20, baseType: !233, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4101, file: !4102, line: 20, baseType: !233, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4101, file: !4102, line: 20, baseType: !233, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4096, file: !4097, line: 436, baseType: !454, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4096, file: !4097, line: 440, baseType: !182, size: 16, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4096, file: !4097, line: 441, baseType: !182, size: 16, offset: 272)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4096, file: !4097, line: 442, baseType: !182, size: 16, offset: 288)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4096, file: !4097, line: 443, baseType: !182, size: 16, offset: 304)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4096, file: !4097, line: 447, baseType: !454, size: 64, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4096, file: !4097, line: 448, baseType: !454, size: 64, offset: 384)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4096, file: !4097, line: 459, baseType: !4125, size: 256, offset: 448)
!4125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4126, size: 256, elements: !886)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4097, line: 428, flags: DIFlagFwdDecl)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4096, file: !4097, line: 461, baseType: !454, size: 64, offset: 704)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4096, file: !4097, line: 463, baseType: !454, size: 64, offset: 768)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4096, file: !4097, line: 465, baseType: !454, size: 64, offset: 832)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4096, file: !4097, line: 466, baseType: !454, size: 64, offset: 896)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4096, file: !4097, line: 467, baseType: !454, size: 64, offset: 960)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4096, file: !4097, line: 473, baseType: !4134, size: 64, offset: 1024)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4097, line: 10, flags: DIFlagFwdDecl)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4096, file: !4097, line: 480, baseType: !454, size: 64, offset: 1088)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4096, file: !4097, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4096, file: !4097, line: 491, baseType: !360, size: 32, offset: 1184)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4096, file: !4097, line: 501, baseType: !4140, size: 33792, offset: 1536)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4141, line: 448, size: 33792, elements: !4142)
!4141 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4142 = !{!4143, !4144, !4145, !4307, !4308, !4314, !4315}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4140, file: !4141, line: 461, baseType: !7, size: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4140, file: !4141, line: 468, baseType: !454, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4140, file: !4141, line: 476, baseType: !4146, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4141, line: 356, size: 33280, align: 512, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4147, file: !4141, line: 358, baseType: !7, size: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4147, file: !4141, line: 361, baseType: !7, size: 32, offset: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4147, file: !4141, line: 364, baseType: !363, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4147, file: !4141, line: 367, baseType: !363, size: 64, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4147, file: !4141, line: 370, baseType: !363, size: 64, offset: 192)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4147, file: !4141, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4147, file: !4141, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4147, file: !4141, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4147, file: !4141, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4147, file: !4141, line: 397, baseType: !4159, size: 32768, offset: 512)
!4159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4141, line: 348, size: 32768, elements: !4160)
!4160 = !{!4161, !4176, !4213, !4290, !4303}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4159, file: !4141, line: 349, baseType: !4162, size: 896)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4141, line: 12, size: 896, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4175}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4162, file: !4141, line: 13, baseType: !360, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4162, file: !4141, line: 14, baseType: !360, size: 32, offset: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4162, file: !4141, line: 15, baseType: !360, size: 32, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4162, file: !4141, line: 16, baseType: !360, size: 32, offset: 96)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4162, file: !4141, line: 17, baseType: !360, size: 32, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4162, file: !4141, line: 18, baseType: !360, size: 32, offset: 160)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4162, file: !4141, line: 19, baseType: !360, size: 32, offset: 192)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4162, file: !4141, line: 22, baseType: !4172, size: 640, offset: 224)
!4172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 640, elements: !4173)
!4173 = !{!4174}
!4174 = !DISubrange(count: 20)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4162, file: !4141, line: 25, baseType: !360, size: 32, offset: 864)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4159, file: !4141, line: 350, baseType: !4177, size: 4096, align: 128)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4141, line: 34, size: 4096, align: 128, elements: !4178)
!4178 = !{!4179, !4180, !4181, !4182, !4183, !4198, !4199, !4200, !4202, !4204, !4208}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4177, file: !4141, line: 35, baseType: !233, size: 16)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4177, file: !4141, line: 36, baseType: !233, size: 16, offset: 16)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4177, file: !4141, line: 37, baseType: !233, size: 16, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4177, file: !4141, line: 38, baseType: !233, size: 16, offset: 48)
!4183 = !DIDerivedType(tag: DW_TAG_member, scope: !4177, file: !4141, line: 39, baseType: !4184, size: 128, offset: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4177, file: !4141, line: 39, size: 128, elements: !4185)
!4185 = !{!4186, !4191}
!4186 = !DIDerivedType(tag: DW_TAG_member, scope: !4184, file: !4141, line: 40, baseType: !4187, size: 128)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4184, file: !4141, line: 40, size: 128, elements: !4188)
!4188 = !{!4189, !4190}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4187, file: !4141, line: 41, baseType: !363, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4187, file: !4141, line: 42, baseType: !363, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, scope: !4184, file: !4141, line: 44, baseType: !4192, size: 128)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4184, file: !4141, line: 44, size: 128, elements: !4193)
!4193 = !{!4194, !4195, !4196, !4197}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4192, file: !4141, line: 45, baseType: !360, size: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4192, file: !4141, line: 46, baseType: !360, size: 32, offset: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4192, file: !4141, line: 47, baseType: !360, size: 32, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4192, file: !4141, line: 48, baseType: !360, size: 32, offset: 96)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4177, file: !4141, line: 51, baseType: !360, size: 32, offset: 192)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4177, file: !4141, line: 52, baseType: !360, size: 32, offset: 224)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4177, file: !4141, line: 55, baseType: !4201, size: 1024, offset: 256)
!4201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 1024, elements: !372)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4177, file: !4141, line: 58, baseType: !4203, size: 2048, offset: 1280)
!4203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 2048, elements: !539)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4177, file: !4141, line: 60, baseType: !4205, size: 384, offset: 3328)
!4205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 384, elements: !4206)
!4206 = !{!4207}
!4207 = !DISubrange(count: 12)
!4208 = !DIDerivedType(tag: DW_TAG_member, scope: !4177, file: !4141, line: 62, baseType: !4209, size: 384, offset: 3712)
!4209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4177, file: !4141, line: 62, size: 384, elements: !4210)
!4210 = !{!4211, !4212}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4209, file: !4141, line: 63, baseType: !4205, size: 384)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4209, file: !4141, line: 64, baseType: !4205, size: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4159, file: !4141, line: 351, baseType: !4214, size: 1088)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4141, line: 79, size: 1088, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4289}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4214, file: !4141, line: 80, baseType: !360, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4214, file: !4141, line: 81, baseType: !360, size: 32, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4214, file: !4141, line: 82, baseType: !360, size: 32, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4214, file: !4141, line: 83, baseType: !360, size: 32, offset: 96)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4214, file: !4141, line: 84, baseType: !360, size: 32, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4214, file: !4141, line: 85, baseType: !360, size: 32, offset: 160)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4214, file: !4141, line: 86, baseType: !360, size: 32, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4214, file: !4141, line: 88, baseType: !4172, size: 640, offset: 224)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4214, file: !4141, line: 89, baseType: !226, size: 8, offset: 864)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4214, file: !4141, line: 90, baseType: !226, size: 8, offset: 872)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4214, file: !4141, line: 91, baseType: !226, size: 8, offset: 880)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4214, file: !4141, line: 92, baseType: !226, size: 8, offset: 888)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4214, file: !4141, line: 93, baseType: !226, size: 8, offset: 896)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4214, file: !4141, line: 94, baseType: !226, size: 8, offset: 904)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4214, file: !4141, line: 95, baseType: !4231, size: 64, offset: 960)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4233, line: 11, size: 128, elements: !4234)
!4233 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4234 = !{!4235, !4236}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4232, file: !4233, line: 12, baseType: !289, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4232, file: !4233, line: 13, baseType: !4237, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4239, line: 103, size: 1344, elements: !4240)
!4239 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4269, !4270, !4271}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4238, file: !4239, line: 109, baseType: !454, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4238, file: !4239, line: 110, baseType: !454, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4238, file: !4239, line: 111, baseType: !454, size: 64, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4238, file: !4239, line: 112, baseType: !454, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4238, file: !4239, line: 113, baseType: !454, size: 64, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4238, file: !4239, line: 114, baseType: !454, size: 64, offset: 320)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4238, file: !4239, line: 117, baseType: !454, size: 64, offset: 384)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4238, file: !4239, line: 118, baseType: !454, size: 64, offset: 448)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4238, file: !4239, line: 119, baseType: !454, size: 64, offset: 512)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4238, file: !4239, line: 120, baseType: !454, size: 64, offset: 576)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4238, file: !4239, line: 121, baseType: !454, size: 64, offset: 640)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4238, file: !4239, line: 122, baseType: !454, size: 64, offset: 704)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4238, file: !4239, line: 123, baseType: !454, size: 64, offset: 768)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4238, file: !4239, line: 124, baseType: !454, size: 64, offset: 832)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4238, file: !4239, line: 125, baseType: !454, size: 64, offset: 896)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4238, file: !4239, line: 139, baseType: !454, size: 64, offset: 960)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4238, file: !4239, line: 142, baseType: !454, size: 64, offset: 1024)
!4258 = !DIDerivedType(tag: DW_TAG_member, scope: !4238, file: !4239, line: 144, baseType: !4259, size: 64, offset: 1088)
!4259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4238, file: !4239, line: 144, size: 64, elements: !4260)
!4260 = !{!4261, !4262, !4263}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4259, file: !4239, line: 146, baseType: !233, size: 16)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4259, file: !4239, line: 148, baseType: !363, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4259, file: !4239, line: 150, baseType: !4264, size: 64)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4239, line: 59, size: 64, elements: !4265)
!4265 = !{!4266, !4267, !4268}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4264, file: !4239, line: 61, baseType: !363, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4264, file: !4239, line: 63, baseType: !363, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4264, file: !4239, line: 65, baseType: !363, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4238, file: !4239, line: 153, baseType: !454, size: 64, offset: 1152)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4238, file: !4239, line: 154, baseType: !454, size: 64, offset: 1216)
!4271 = !DIDerivedType(tag: DW_TAG_member, scope: !4238, file: !4239, line: 156, baseType: !4272, size: 64, offset: 1280)
!4272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4238, file: !4239, line: 156, size: 64, elements: !4273)
!4273 = !{!4274, !4275, !4276}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4272, file: !4239, line: 158, baseType: !233, size: 16)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4272, file: !4239, line: 160, baseType: !363, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4272, file: !4239, line: 162, baseType: !4277, size: 64)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4239, line: 69, size: 64, elements: !4278)
!4278 = !{!4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4277, file: !4239, line: 71, baseType: !363, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4277, file: !4239, line: 73, baseType: !363, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4277, file: !4239, line: 75, baseType: !363, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4277, file: !4239, line: 77, baseType: !363, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4277, file: !4239, line: 80, baseType: !363, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4277, file: !4239, line: 83, baseType: !363, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4277, file: !4239, line: 86, baseType: !363, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4277, file: !4239, line: 88, baseType: !363, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4277, file: !4239, line: 93, baseType: !363, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4277, file: !4239, line: 100, baseType: !363, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4214, file: !4141, line: 96, baseType: !360, size: 32, offset: 1024)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4159, file: !4141, line: 352, baseType: !4291, size: 4608, align: 512)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4141, line: 333, size: 4608, align: 512, elements: !4292)
!4292 = !{!4293, !4294, !4301}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4291, file: !4141, line: 334, baseType: !4177, size: 4096, align: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4291, file: !4141, line: 335, baseType: !4295, size: 512, offset: 4096)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4141, line: 312, size: 512, elements: !4296)
!4296 = !{!4297, !4298, !4299}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4295, file: !4141, line: 313, baseType: !363, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4295, file: !4141, line: 314, baseType: !363, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4295, file: !4141, line: 315, baseType: !4300, size: 384, offset: 128)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, elements: !991)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4291, file: !4141, line: 336, baseType: !4302, offset: 4608)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !905)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4159, file: !4141, line: 353, baseType: !4304, size: 32768)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32768, elements: !4305)
!4305 = !{!4306}
!4306 = !DISubrange(count: 4096)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4140, file: !4141, line: 484, baseType: !4146, size: 64, offset: 192)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4140, file: !4141, line: 491, baseType: !4309, size: 128, offset: 256)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4141, line: 404, size: 128, elements: !4310)
!4310 = !{!4311, !4312, !4313}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4309, file: !4141, line: 424, baseType: !363, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4309, file: !4141, line: 432, baseType: !7, size: 32, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4309, file: !4141, line: 440, baseType: !7, size: 32, offset: 96)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4140, file: !4141, line: 498, baseType: !4309, size: 128, offset: 384)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4140, file: !4141, line: 508, baseType: !4147, size: 33280, align: 512, offset: 512)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3199, file: !3200, line: 16, baseType: !890, size: 192, offset: 512)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3199, file: !3200, line: 17, baseType: !218, size: 32, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !446, file: !59, line: 1240, baseType: !160, size: 64, offset: 6912)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !446, file: !59, line: 1243, baseType: !360, size: 32, offset: 6976)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !446, file: !59, line: 1245, baseType: !287, size: 64, offset: 7040)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !446, file: !59, line: 1246, baseType: !287, size: 64, offset: 7104)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !446, file: !59, line: 1248, baseType: !191, size: 32, offset: 7168)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !446, file: !59, line: 1249, baseType: !4324, size: 64, offset: 7232)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !59, line: 634, flags: DIFlagFwdDecl)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !446, file: !59, line: 1252, baseType: !4327, size: 256, offset: 7296)
!4327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 256, elements: !372)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !446, file: !59, line: 1253, baseType: !4329, size: 128, offset: 7552)
!4329 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4330, line: 21, baseType: !4331)
!4330 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4330, line: 19, size: 128, elements: !4332)
!4332 = !{!4333}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4331, file: !4330, line: 20, baseType: !4334, size: 128)
!4334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, elements: !3566)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !446, file: !59, line: 1255, baseType: !7, size: 32, offset: 7680)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !446, file: !59, line: 1261, baseType: !836, size: 256, offset: 7744)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !446, file: !59, line: 1267, baseType: !408, size: 64, offset: 8000)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !446, file: !59, line: 1269, baseType: !388, size: 64, offset: 8064)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !446, file: !59, line: 1271, baseType: !4340, size: 448, offset: 8128)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2427, line: 63, size: 448, elements: !4341)
!4341 = !{!4342, !4347, !4348, !4349, !4350, !4351, !4352}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4340, file: !2427, line: 64, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!454, !4346, !2425}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4340, file: !2427, line: 66, baseType: !4343, size: 64, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4340, file: !2427, line: 69, baseType: !289, size: 64, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4340, file: !2427, line: 70, baseType: !96, size: 32, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4340, file: !2427, line: 71, baseType: !7, size: 32, offset: 224)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4340, file: !2427, line: 74, baseType: !236, size: 128, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4340, file: !2427, line: 85, baseType: !4353, size: 64, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !446, file: !59, line: 1274, baseType: !265, size: 64, offset: 8576)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !446, file: !59, line: 1280, baseType: !265, size: 64, offset: 8640)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !446, file: !59, line: 1283, baseType: !96, size: 32, offset: 8704)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !446, file: !59, line: 1286, baseType: !1374, size: 32, offset: 8736)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !446, file: !59, line: 1289, baseType: !2248, size: 64, offset: 8768)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !446, file: !59, line: 1290, baseType: !883, size: 64, offset: 8832)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !446, file: !59, line: 1297, baseType: !1085, size: 64, offset: 8896)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !446, file: !59, line: 1304, baseType: !4362, size: 64, offset: 8960)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4363, line: 49, size: 64, elements: !4364)
!4363 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4364 = !{!4365}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4362, file: !4363, line: 50, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4363, line: 41, size: 512, align: 512, elements: !4368)
!4368 = !{!4369, !4370, !4375}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4367, file: !4363, line: 43, baseType: !198, size: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4367, file: !4363, line: 45, baseType: !4371, size: 192, offset: 64)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4363, line: 29, size: 192, elements: !4372)
!4372 = !{!4373, !4374}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4371, file: !4363, line: 30, baseType: !236, size: 128)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4371, file: !4363, line: 32, baseType: !289, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4367, file: !4363, line: 46, baseType: !289, size: 64, offset: 256)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !446, file: !59, line: 1305, baseType: !4362, size: 64, offset: 9024)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !446, file: !59, line: 1306, baseType: !731, size: 128, align: 64, offset: 9088)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !446, file: !59, line: 1307, baseType: !1504, size: 256, offset: 9216)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !446, file: !59, line: 1309, baseType: !836, size: 256, offset: 9472)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !446, file: !59, line: 1314, baseType: !96, size: 32, offset: 9728)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !446, file: !59, line: 1317, baseType: !198, size: 32, align: 512, offset: 10240)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !446, file: !59, line: 1318, baseType: !236, size: 128, offset: 10304)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !446, file: !59, line: 1320, baseType: !198, size: 32, offset: 10432)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !446, file: !59, line: 1321, baseType: !236, size: 128, offset: 10496)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !440, file: !441, line: 73, baseType: !96, size: 32, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !440, file: !441, line: 74, baseType: !4387, size: 64, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !929, line: 42, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !390, file: !328, line: 141, baseType: !4391, size: 64, offset: 704)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!96, !2487, !727}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !390, file: !328, line: 142, baseType: !4395, size: 64, offset: 768)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!326, !326, !4398}
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !327, file: !328, line: 96, baseType: !445, size: 64, offset: 832)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !327, file: !328, line: 97, baseType: !454, size: 64, offset: 896)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !327, file: !328, line: 98, baseType: !160, size: 64, offset: 960)
!4403 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !328, line: 100, baseType: !4404, size: 128, offset: 1024)
!4404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !328, line: 100, size: 128, elements: !4405)
!4405 = !{!4406, !4407}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4404, file: !328, line: 101, baseType: !236, size: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4404, file: !328, line: 102, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !327, file: !328, line: 104, baseType: !236, size: 128, offset: 1152)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !327, file: !328, line: 105, baseType: !236, size: 128, offset: 1280)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !327, file: !328, line: 113, baseType: !4412, size: 128, offset: 1408)
!4412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !328, line: 109, size: 128, elements: !4413)
!4413 = !{!4414, !4415, !4416}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4412, file: !328, line: 110, baseType: !253, size: 128)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4412, file: !328, line: 111, baseType: !342, size: 128)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4412, file: !328, line: 112, baseType: !731, size: 128, align: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !320, file: !59, line: 1968, baseType: !4418, size: 64, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!408, !326, !369, !4421}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4423, line: 10, size: 128, elements: !4424)
!4423 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4424 = !{!4425, !4426}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4422, file: !4423, line: 11, baseType: !1816, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4422, file: !4423, line: 12, baseType: !160, size: 64, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !320, file: !59, line: 1969, baseType: !4428, size: 64, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!96, !4387, !369, !96}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !320, file: !59, line: 1970, baseType: !4432, size: 64, offset: 192)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!314, !369, !96, !727}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !320, file: !59, line: 1972, baseType: !4436, size: 64, offset: 256)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!96, !326, !434, !96}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !320, file: !59, line: 1974, baseType: !4440, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!96, !4387, !369, !326, !294, !727}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !320, file: !59, line: 1976, baseType: !4444, size: 64, offset: 384)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!96, !326, !369, !326}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !320, file: !59, line: 1977, baseType: !4448, size: 64, offset: 448)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!96, !369, !326}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !320, file: !59, line: 1978, baseType: !4452, size: 64, offset: 512)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!96, !4387, !369, !326, !408}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !320, file: !59, line: 1980, baseType: !4456, size: 64, offset: 576)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!96, !4387, !369, !326, !294}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !320, file: !59, line: 1982, baseType: !4448, size: 64, offset: 640)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !320, file: !59, line: 1983, baseType: !4461, size: 64, offset: 704)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!96, !4387, !369, !326, !294, !450}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !320, file: !59, line: 1985, baseType: !4465, size: 64, offset: 768)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!96, !4387, !369, !326, !369, !326, !7}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !320, file: !59, line: 1987, baseType: !4469, size: 64, offset: 832)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!96, !4387, !326, !2633}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !320, file: !59, line: 1988, baseType: !4473, size: 64, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!96, !4387, !2487, !4476, !360, !7}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4478, line: 22, size: 1280, elements: !4479)
!4478 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4477, file: !4478, line: 23, baseType: !360, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4477, file: !4478, line: 24, baseType: !294, size: 16, offset: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4477, file: !4478, line: 25, baseType: !7, size: 32, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4477, file: !4478, line: 26, baseType: !969, size: 32, offset: 96)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4477, file: !4478, line: 27, baseType: !363, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4477, file: !4478, line: 28, baseType: !363, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4477, file: !4478, line: 41, baseType: !363, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4477, file: !4478, line: 42, baseType: !450, size: 32, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4477, file: !4478, line: 43, baseType: !450, size: 32, offset: 352)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4477, file: !4478, line: 44, baseType: !297, size: 32, offset: 384)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4477, file: !4478, line: 45, baseType: !306, size: 32, offset: 416)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4477, file: !4478, line: 46, baseType: !244, size: 64, offset: 448)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4477, file: !4478, line: 47, baseType: !283, size: 128, offset: 512)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4477, file: !4478, line: 48, baseType: !283, size: 128, offset: 640)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4477, file: !4478, line: 49, baseType: !283, size: 128, offset: 768)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4477, file: !4478, line: 50, baseType: !283, size: 128, offset: 896)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4477, file: !4478, line: 51, baseType: !363, size: 64, offset: 1024)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4477, file: !4478, line: 52, baseType: !363, size: 64, offset: 1088)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4477, file: !4478, line: 53, baseType: !360, size: 32, offset: 1152)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4477, file: !4478, line: 54, baseType: !360, size: 32, offset: 1184)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4477, file: !4478, line: 55, baseType: !363, size: 64, offset: 1216)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !320, file: !59, line: 1990, baseType: !4502, size: 64, offset: 960)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!566, !326, !434, !578}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !320, file: !59, line: 1991, baseType: !4506, size: 64, offset: 1024)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!96, !369, !4509, !363, !363}
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !59, line: 55, flags: DIFlagFwdDecl)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !320, file: !59, line: 1993, baseType: !4512, size: 64, offset: 1088)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!96, !369, !96}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !320, file: !59, line: 1994, baseType: !4516, size: 64, offset: 1152)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!96, !369, !326, !817, !7, !294}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !320, file: !59, line: 1997, baseType: !4520, size: 64, offset: 1216)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!96, !4387, !369, !817, !294}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !320, file: !59, line: 1999, baseType: !4524, size: 64, offset: 1280)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!314, !4387, !326, !96}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !320, file: !59, line: 2001, baseType: !4528, size: 64, offset: 1344)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!96, !4387, !326, !314, !96}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !320, file: !59, line: 2003, baseType: !4532, size: 64, offset: 1408)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!96, !4387, !326, !4535}
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !59, line: 76, flags: DIFlagFwdDecl)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !320, file: !59, line: 2005, baseType: !4538, size: 64, offset: 1472)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!96, !326, !4535}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !320, file: !59, line: 2006, baseType: !4542, size: 64, offset: 1536)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!4545, !369}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !59, line: 3192, size: 192, elements: !4547)
!4547 = !{!4548, !4549}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4546, file: !59, line: 3193, baseType: !611, size: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4546, file: !59, line: 3194, baseType: !360, size: 32, offset: 128)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !291, file: !59, line: 655, baseType: !445, size: 64, offset: 448)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !291, file: !59, line: 656, baseType: !606, size: 64, offset: 512)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !291, file: !59, line: 659, baseType: !160, size: 64, offset: 576)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !291, file: !59, line: 663, baseType: !454, size: 64, offset: 640)
!4554 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !59, line: 671, baseType: !4555, size: 32, offset: 704)
!4555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !59, line: 671, size: 32, elements: !4556)
!4556 = !{!4557, !4559}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4555, file: !59, line: 672, baseType: !4558, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4555, file: !59, line: 673, baseType: !7, size: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !291, file: !59, line: 675, baseType: !450, size: 32, offset: 736)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !291, file: !59, line: 676, baseType: !244, size: 64, offset: 768)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !291, file: !59, line: 677, baseType: !283, size: 128, offset: 832)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !291, file: !59, line: 678, baseType: !283, size: 128, offset: 960)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !291, file: !59, line: 679, baseType: !283, size: 128, offset: 1088)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !291, file: !59, line: 680, baseType: !198, size: 32, offset: 1216)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !291, file: !59, line: 681, baseType: !182, size: 16, offset: 1248)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !291, file: !59, line: 682, baseType: !226, size: 8, offset: 1264)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !291, file: !59, line: 683, baseType: !226, size: 8, offset: 1272)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !291, file: !59, line: 684, baseType: !2560, size: 64, offset: 1280)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !291, file: !59, line: 691, baseType: !454, size: 64, offset: 1344)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !291, file: !59, line: 692, baseType: !261, size: 320, offset: 1408)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !291, file: !59, line: 694, baseType: !454, size: 64, offset: 1728)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !291, file: !59, line: 695, baseType: !454, size: 64, offset: 1792)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !291, file: !59, line: 697, baseType: !253, size: 128, offset: 1856)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !291, file: !59, line: 698, baseType: !236, size: 128, offset: 1984)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !291, file: !59, line: 707, baseType: !236, size: 128, offset: 2112)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !291, file: !59, line: 708, baseType: !236, size: 128, offset: 2240)
!4578 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !59, line: 709, baseType: !4579, size: 128, offset: 2368)
!4579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !59, line: 709, size: 128, elements: !4580)
!4580 = !{!4581, !4582}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4579, file: !59, line: 710, baseType: !883, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4579, file: !59, line: 711, baseType: !731, size: 128, align: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !291, file: !59, line: 713, baseType: !267, size: 64, offset: 2496)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !291, file: !59, line: 714, baseType: !267, size: 64, offset: 2560)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !291, file: !59, line: 715, baseType: !218, size: 32, offset: 2624)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !291, file: !59, line: 716, baseType: !218, size: 32, offset: 2656)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !291, file: !59, line: 717, baseType: !218, size: 32, offset: 2688)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !291, file: !59, line: 719, baseType: !218, size: 32, offset: 2720)
!4589 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !59, line: 721, baseType: !4590, size: 64, offset: 2752)
!4590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !59, line: 721, size: 64, elements: !4591)
!4591 = !{!4592, !4593}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4590, file: !59, line: 722, baseType: !1121, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4590, file: !59, line: 723, baseType: !2316, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !291, file: !59, line: 725, baseType: !4595, size: 64, offset: 2816)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !59, line: 725, flags: DIFlagFwdDecl)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !291, file: !59, line: 726, baseType: !607, size: 1536, align: 64, offset: 2880)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !291, file: !59, line: 727, baseType: !236, size: 128, offset: 4416)
!4599 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !59, line: 728, baseType: !4600, size: 64, offset: 4544)
!4600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !59, line: 728, size: 64, elements: !4601)
!4601 = !{!4602, !4603, !4606, !4607}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4600, file: !59, line: 729, baseType: !1321, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4600, file: !59, line: 730, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !59, line: 730, flags: DIFlagFwdDecl)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4600, file: !59, line: 731, baseType: !434, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4600, file: !59, line: 732, baseType: !7, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !291, file: !59, line: 735, baseType: !191, size: 32, offset: 4608)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !291, file: !59, line: 738, baseType: !191, size: 32, offset: 4640)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !291, file: !59, line: 739, baseType: !4324, size: 64, offset: 4672)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !291, file: !59, line: 750, baseType: !160, size: 64, offset: 4736)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_fid", file: !3, line: 8, size: 160, elements: !4614)
!4614 = !{!4615, !4616, !4617, !4618, !4619, !4620}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "i_gen", scope: !4613, file: !3, line: 9, baseType: !360, size: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "i_pos_low", scope: !4613, file: !3, line: 10, baseType: !360, size: 32, offset: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "i_pos_hi", scope: !4613, file: !3, line: 11, baseType: !233, size: 16, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "parent_i_pos_hi", scope: !4613, file: !3, line: 12, baseType: !233, size: 16, offset: 80)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "parent_i_pos_low", scope: !4613, file: !3, line: 13, baseType: !360, size: 32, offset: 96)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "parent_i_gen", scope: !4613, file: !3, line: 14, baseType: !360, size: 32, offset: 128)
!4621 = !{!0, !4622, !4624, !4627, !4632, !4637}
!4622 = !DIGlobalVariableExpression(var: !4623, expr: !DIExpression())
!4623 = distinct !DIGlobalVariable(name: "fat_export_ops_nostale", scope: !2, file: !3, line: 293, type: !2565, isLocal: false, isDefinition: true)
!4624 = !DIGlobalVariableExpression(var: !4625, expr: !DIExpression())
!4625 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !4626, isLocal: true, isDefinition: true)
!4626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 24, elements: !535)
!4627 = !DIGlobalVariableExpression(var: !4628, expr: !DIExpression())
!4628 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !4629, isLocal: true, isDefinition: true)
!4629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 400, elements: !4630)
!4630 = !{!4631}
!4631 = !DISubrange(count: 50)
!4632 = !DIGlobalVariableExpression(var: !4633, expr: !DIExpression())
!4633 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !4634, isLocal: true, isDefinition: true)
!4634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 104, elements: !4635)
!4635 = !{!4636}
!4636 = !DISubrange(count: 13)
!4637 = !DIGlobalVariableExpression(var: !4638, expr: !DIExpression())
!4638 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !4639, isLocal: true, isDefinition: true)
!4639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 344, elements: !4640)
!4640 = !{!4641}
!4641 = !DISubrange(count: 43)
!4642 = !{i32 7, !"Dwarf Version", i32 5}
!4643 = !{i32 2, !"Debug Info Version", i32 3}
!4644 = !{i32 1, !"wchar_size", i32 2}
!4645 = !{i32 8, !"cf-protection-branch", i32 1}
!4646 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4647 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4648 = !{i32 1, !"Code Model", i32 2}
!4649 = !{i32 1, !"override-stack-alignment", i32 8}
!4650 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4651 = distinct !DISubprogram(name: "fat_fh_to_dentry", scope: !3, file: !3, line: 148, type: !2575, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4652)
!4652 = !{!4653, !4654, !4655, !4656}
!4653 = !DILocalVariable(name: "sb", arg: 1, scope: !4651, file: !3, line: 148, type: !445)
!4654 = !DILocalVariable(name: "fid", arg: 2, scope: !4651, file: !3, line: 148, type: !2577)
!4655 = !DILocalVariable(name: "fh_len", arg: 3, scope: !4651, file: !3, line: 149, type: !96)
!4656 = !DILocalVariable(name: "fh_type", arg: 4, scope: !4651, file: !3, line: 149, type: !96)
!4657 = !DILocation(line: 148, column: 60, scope: !4651)
!4658 = !DILocation(line: 148, column: 76, scope: !4651)
!4659 = !DILocation(line: 149, column: 9, scope: !4651)
!4660 = !DILocation(line: 149, column: 21, scope: !4651)
!4661 = !DILocation(line: 151, column: 30, scope: !4651)
!4662 = !DILocation(line: 151, column: 34, scope: !4651)
!4663 = !DILocation(line: 151, column: 39, scope: !4651)
!4664 = !DILocation(line: 151, column: 47, scope: !4651)
!4665 = !DILocation(line: 151, column: 9, scope: !4651)
!4666 = !DILocation(line: 151, column: 2, scope: !4651)
!4667 = distinct !DISubprogram(name: "fat_fh_to_parent", scope: !3, file: !3, line: 186, type: !2575, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4668)
!4668 = !{!4669, !4670, !4671, !4672}
!4669 = !DILocalVariable(name: "sb", arg: 1, scope: !4667, file: !3, line: 186, type: !445)
!4670 = !DILocalVariable(name: "fid", arg: 2, scope: !4667, file: !3, line: 186, type: !2577)
!4671 = !DILocalVariable(name: "fh_len", arg: 3, scope: !4667, file: !3, line: 187, type: !96)
!4672 = !DILocalVariable(name: "fh_type", arg: 4, scope: !4667, file: !3, line: 187, type: !96)
!4673 = !DILocation(line: 186, column: 60, scope: !4667)
!4674 = !DILocation(line: 186, column: 76, scope: !4667)
!4675 = !DILocation(line: 187, column: 9, scope: !4667)
!4676 = !DILocation(line: 187, column: 21, scope: !4667)
!4677 = !DILocation(line: 189, column: 30, scope: !4667)
!4678 = !DILocation(line: 189, column: 34, scope: !4667)
!4679 = !DILocation(line: 189, column: 39, scope: !4667)
!4680 = !DILocation(line: 189, column: 47, scope: !4667)
!4681 = !DILocation(line: 189, column: 9, scope: !4667)
!4682 = !DILocation(line: 189, column: 2, scope: !4667)
!4683 = distinct !DISubprogram(name: "fat_get_parent", scope: !3, file: !3, line: 268, type: !2613, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4684)
!4684 = !{!4685, !4686, !4687, !4713, !4714, !4715, !4812}
!4685 = !DILocalVariable(name: "child_dir", arg: 1, scope: !4683, file: !3, line: 268, type: !326)
!4686 = !DILocalVariable(name: "sb", scope: !4683, file: !3, line: 270, type: !445)
!4687 = !DILocalVariable(name: "bh", scope: !4683, file: !3, line: 271, type: !4688)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !4690, line: 59, size: 832, elements: !4691)
!4690 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!4691 = !{!4692, !4693, !4694, !4699, !4700, !4701, !4702, !4703, !4708, !4709, !4710, !4711, !4712}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !4689, file: !4690, line: 60, baseType: !454, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !4689, file: !4690, line: 61, baseType: !4688, size: 64, offset: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, scope: !4689, file: !4690, line: 62, baseType: !4695, size: 64, offset: 128)
!4695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4689, file: !4690, line: 62, size: 64, elements: !4696)
!4696 = !{!4697, !4698}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !4695, file: !4690, line: 63, baseType: !646, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !4695, file: !4690, line: 64, baseType: !1164, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !4689, file: !4690, line: 67, baseType: !1722, size: 64, offset: 192)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !4689, file: !4690, line: 68, baseType: !578, size: 64, offset: 256)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !4689, file: !4690, line: 69, baseType: !434, size: 64, offset: 320)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !4689, file: !4690, line: 71, baseType: !2682, size: 64, offset: 384)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !4689, file: !4690, line: 72, baseType: !4704, size: 64, offset: 448)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !4690, line: 48, baseType: !4706)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{null, !4688, !96}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !4689, file: !4690, line: 73, baseType: !160, size: 64, offset: 512)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !4689, file: !4690, line: 74, baseType: !236, size: 128, offset: 576)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !4689, file: !4690, line: 75, baseType: !606, size: 64, offset: 704)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !4689, file: !4690, line: 77, baseType: !218, size: 32, offset: 768)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !4689, file: !4690, line: 78, baseType: !198, size: 32, offset: 800)
!4713 = !DILocalVariable(name: "de", scope: !4683, file: !3, line: 272, type: !164)
!4714 = !DILocalVariable(name: "parent_inode", scope: !4683, file: !3, line: 273, type: !369)
!4715 = !DILocalVariable(name: "sbi", scope: !4683, file: !3, line: 274, type: !4716)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_sb_info", file: !162, line: 63, size: 35776, elements: !4718)
!4718 = !{!4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4768, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4800, !4801, !4802, !4803, !4804, !4808, !4809, !4810, !4811}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "sec_per_clus", scope: !4717, file: !162, line: 64, baseType: !182, size: 16)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_bits", scope: !4717, file: !162, line: 65, baseType: !182, size: 16, offset: 16)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_size", scope: !4717, file: !162, line: 66, baseType: !7, size: 32, offset: 32)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "fats", scope: !4717, file: !162, line: 67, baseType: !172, size: 8, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "fat_bits", scope: !4717, file: !162, line: 67, baseType: !172, size: 8, offset: 72)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "fat_start", scope: !4717, file: !162, line: 68, baseType: !182, size: 16, offset: 80)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "fat_length", scope: !4717, file: !162, line: 69, baseType: !454, size: 64, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dir_start", scope: !4717, file: !162, line: 70, baseType: !454, size: 64, offset: 192)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "dir_entries", scope: !4717, file: !162, line: 71, baseType: !182, size: 16, offset: 256)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "data_start", scope: !4717, file: !162, line: 72, baseType: !454, size: 64, offset: 320)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "max_cluster", scope: !4717, file: !162, line: 73, baseType: !454, size: 64, offset: 384)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "root_cluster", scope: !4717, file: !162, line: 74, baseType: !454, size: 64, offset: 448)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "fsinfo_sector", scope: !4717, file: !162, line: 75, baseType: !454, size: 64, offset: 512)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "fat_lock", scope: !4717, file: !162, line: 76, baseType: !836, size: 256, offset: 576)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_build_inode_lock", scope: !4717, file: !162, line: 77, baseType: !836, size: 256, offset: 832)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock", scope: !4717, file: !162, line: 78, baseType: !836, size: 256, offset: 1088)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "prev_free", scope: !4717, file: !162, line: 79, baseType: !7, size: 32, offset: 1344)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4717, file: !162, line: 80, baseType: !7, size: 32, offset: 1376)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "free_clus_valid", scope: !4717, file: !162, line: 81, baseType: !7, size: 32, offset: 1408)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4717, file: !162, line: 82, baseType: !4739, size: 384, offset: 1472)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_mount_options", file: !162, line: 27, size: 384, elements: !4740)
!4740 = !{!4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "fs_uid", scope: !4739, file: !162, line: 28, baseType: !297, size: 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "fs_gid", scope: !4739, file: !162, line: 29, baseType: !306, size: 32, offset: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "fs_fmask", scope: !4739, file: !162, line: 30, baseType: !182, size: 16, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "fs_dmask", scope: !4739, file: !162, line: 31, baseType: !182, size: 16, offset: 80)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "codepage", scope: !4739, file: !162, line: 32, baseType: !182, size: 16, offset: 96)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset", scope: !4739, file: !162, line: 33, baseType: !96, size: 32, offset: 128)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "iocharset", scope: !4739, file: !162, line: 34, baseType: !434, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4739, file: !162, line: 35, baseType: !182, size: 16, offset: 256)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "name_check", scope: !4739, file: !162, line: 36, baseType: !172, size: 8, offset: 272)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4739, file: !162, line: 37, baseType: !172, size: 8, offset: 280)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "nfs", scope: !4739, file: !162, line: 38, baseType: !172, size: 8, offset: 288)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "allow_utime", scope: !4739, file: !162, line: 39, baseType: !182, size: 16, offset: 304)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !4739, file: !162, line: 40, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "showexec", scope: !4739, file: !162, line: 41, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "sys_immutable", scope: !4739, file: !162, line: 42, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "dotsOK", scope: !4739, file: !162, line: 43, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "isvfat", scope: !4739, file: !162, line: 44, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !4739, file: !162, line: 45, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "unicode_xlate", scope: !4739, file: !162, line: 46, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "numtail", scope: !4739, file: !162, line: 47, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4739, file: !162, line: 48, baseType: !7, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "nocase", scope: !4739, file: !162, line: 49, baseType: !7, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "usefree", scope: !4739, file: !162, line: 50, baseType: !7, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "tz_set", scope: !4739, file: !162, line: 51, baseType: !7, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "rodir", scope: !4739, file: !162, line: 52, baseType: !7, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "discard", scope: !4739, file: !162, line: 53, baseType: !7, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dos1xfloppy", scope: !4739, file: !162, line: 54, baseType: !7, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "nls_disk", scope: !4717, file: !162, line: 83, baseType: !4769, size: 64, offset: 1856)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nls_table", file: !4771, line: 25, size: 512, elements: !4772)
!4771 = !DIFile(filename: "./include/linux/nls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f76e83aacaae45c8b04af57df30b5af2")
!4772 = !{!4773, !4774, !4775, !4781, !4786, !4787, !4788, !4789}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !4770, file: !4771, line: 26, baseType: !408, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !4770, file: !4771, line: 27, baseType: !408, size: 64, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "uni2char", scope: !4770, file: !4771, line: 28, baseType: !4776, size: 64, offset: 128)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!96, !4779, !4780, !96}
!4779 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !4771, line: 19, baseType: !233)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "char2uni", scope: !4770, file: !4771, line: 29, baseType: !4782, size: 64, offset: 192)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!96, !366, !96, !4785}
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "charset2lower", scope: !4770, file: !4771, line: 31, baseType: !366, size: 64, offset: 256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "charset2upper", scope: !4770, file: !4771, line: 32, baseType: !366, size: 64, offset: 320)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4770, file: !4771, line: 33, baseType: !481, size: 64, offset: 384)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4770, file: !4771, line: 34, baseType: !4769, size: 64, offset: 448)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "nls_io", scope: !4717, file: !162, line: 84, baseType: !4769, size: 64, offset: 1920)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "dir_ops", scope: !4717, file: !162, line: 85, baseType: !1465, size: 64, offset: 1984)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "dir_per_block", scope: !4717, file: !162, line: 86, baseType: !96, size: 32, offset: 2048)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dir_per_block_bits", scope: !4717, file: !162, line: 87, baseType: !96, size: 32, offset: 2080)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "vol_id", scope: !4717, file: !162, line: 88, baseType: !7, size: 32, offset: 2112)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "fatent_shift", scope: !4717, file: !162, line: 90, baseType: !96, size: 32, offset: 2144)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "fatent_ops", scope: !4717, file: !162, line: 91, baseType: !4797, size: 64, offset: 2176)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4799)
!4799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fatent_operations", file: !162, line: 91, flags: DIFlagFwdDecl)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "fat_inode", scope: !4717, file: !162, line: 92, baseType: !369, size: 64, offset: 2240)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "fsinfo_inode", scope: !4717, file: !162, line: 93, baseType: !369, size: 64, offset: 2304)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !4717, file: !162, line: 95, baseType: !1074, size: 320, offset: 2368)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "inode_hash_lock", scope: !4717, file: !162, line: 97, baseType: !198, size: 32, offset: 2688)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "inode_hashtable", scope: !4717, file: !162, line: 98, baseType: !4805, size: 16384, offset: 2752)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 16384, elements: !4806)
!4806 = !{!4807}
!4807 = !DISubrange(count: 256)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash_lock", scope: !4717, file: !162, line: 100, baseType: !198, size: 32, offset: 19136)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hashtable", scope: !4717, file: !162, line: 101, baseType: !4805, size: 16384, offset: 19200)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4717, file: !162, line: 103, baseType: !7, size: 32, offset: 35584)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4717, file: !162, line: 104, baseType: !731, size: 128, align: 64, offset: 35648)
!4812 = !DILocalVariable(name: "parent_logstart", scope: !4813, file: !3, line: 277, type: !96)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 276, column: 59)
!4814 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 276, column: 6)
!4815 = !DILocation(line: 268, column: 53, scope: !4683)
!4816 = !DILocation(line: 270, column: 2, scope: !4683)
!4817 = !DILocation(line: 270, column: 22, scope: !4683)
!4818 = !DILocation(line: 270, column: 27, scope: !4683)
!4819 = !DILocation(line: 270, column: 38, scope: !4683)
!4820 = !DILocation(line: 271, column: 2, scope: !4683)
!4821 = !DILocation(line: 271, column: 22, scope: !4683)
!4822 = !DILocation(line: 272, column: 2, scope: !4683)
!4823 = !DILocation(line: 272, column: 26, scope: !4683)
!4824 = !DILocation(line: 273, column: 2, scope: !4683)
!4825 = !DILocation(line: 273, column: 16, scope: !4683)
!4826 = !DILocation(line: 274, column: 2, scope: !4683)
!4827 = !DILocation(line: 274, column: 24, scope: !4683)
!4828 = !DILocation(line: 274, column: 39, scope: !4683)
!4829 = !DILocation(line: 274, column: 30, scope: !4683)
!4830 = !DILocation(line: 276, column: 36, scope: !4814)
!4831 = !DILocation(line: 276, column: 28, scope: !4814)
!4832 = !DILocation(line: 276, column: 7, scope: !4814)
!4833 = !DILocation(line: 276, column: 6, scope: !4683)
!4834 = !DILocation(line: 277, column: 3, scope: !4813)
!4835 = !DILocation(line: 277, column: 7, scope: !4813)
!4836 = !DILocation(line: 277, column: 39, scope: !4813)
!4837 = !DILocation(line: 277, column: 44, scope: !4813)
!4838 = !DILocation(line: 277, column: 25, scope: !4813)
!4839 = !DILocation(line: 278, column: 27, scope: !4813)
!4840 = !DILocation(line: 278, column: 31, scope: !4813)
!4841 = !DILocation(line: 278, column: 18, scope: !4813)
!4842 = !DILocation(line: 278, column: 16, scope: !4813)
!4843 = !DILocation(line: 279, column: 8, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 279, column: 7)
!4845 = !DILocation(line: 279, column: 21, scope: !4844)
!4846 = !DILocation(line: 279, column: 24, scope: !4844)
!4847 = !DILocation(line: 279, column: 29, scope: !4844)
!4848 = !DILocation(line: 279, column: 37, scope: !4844)
!4849 = !DILocation(line: 279, column: 41, scope: !4844)
!4850 = !DILocation(line: 279, column: 7, scope: !4813)
!4851 = !DILocation(line: 280, column: 38, scope: !4844)
!4852 = !DILocation(line: 280, column: 42, scope: !4844)
!4853 = !DILocation(line: 280, column: 19, scope: !4844)
!4854 = !DILocation(line: 280, column: 17, scope: !4844)
!4855 = !DILocation(line: 280, column: 4, scope: !4844)
!4856 = !DILocation(line: 281, column: 2, scope: !4814)
!4857 = !DILocation(line: 281, column: 2, scope: !4813)
!4858 = !DILocation(line: 282, column: 9, scope: !4683)
!4859 = !DILocation(line: 282, column: 2, scope: !4683)
!4860 = !DILocation(line: 284, column: 24, scope: !4683)
!4861 = !DILocation(line: 284, column: 9, scope: !4683)
!4862 = !DILocation(line: 285, column: 1, scope: !4683)
!4863 = !DILocation(line: 284, column: 2, scope: !4683)
!4864 = distinct !DISubprogram(name: "fat_encode_fh_nostale", scope: !3, file: !3, line: 100, type: !2570, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4865)
!4865 = !{!4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874}
!4866 = !DILocalVariable(name: "inode", arg: 1, scope: !4864, file: !3, line: 100, type: !369)
!4867 = !DILocalVariable(name: "fh", arg: 2, scope: !4864, file: !3, line: 100, type: !2572)
!4868 = !DILocalVariable(name: "lenp", arg: 3, scope: !4864, file: !3, line: 100, type: !2086)
!4869 = !DILocalVariable(name: "parent", arg: 4, scope: !4864, file: !3, line: 101, type: !369)
!4870 = !DILocalVariable(name: "len", scope: !4864, file: !3, line: 103, type: !96)
!4871 = !DILocalVariable(name: "sbi", scope: !4864, file: !3, line: 104, type: !4716)
!4872 = !DILocalVariable(name: "fid", scope: !4864, file: !3, line: 105, type: !4612)
!4873 = !DILocalVariable(name: "i_pos", scope: !4864, file: !3, line: 106, type: !244)
!4874 = !DILocalVariable(name: "type", scope: !4864, file: !3, line: 107, type: !96)
!4875 = !DILocation(line: 100, column: 37, scope: !4864)
!4876 = !DILocation(line: 100, column: 51, scope: !4864)
!4877 = !DILocation(line: 100, column: 60, scope: !4864)
!4878 = !DILocation(line: 101, column: 23, scope: !4864)
!4879 = !DILocation(line: 103, column: 2, scope: !4864)
!4880 = !DILocation(line: 103, column: 6, scope: !4864)
!4881 = !DILocation(line: 103, column: 13, scope: !4864)
!4882 = !DILocation(line: 103, column: 12, scope: !4864)
!4883 = !DILocation(line: 104, column: 2, scope: !4864)
!4884 = !DILocation(line: 104, column: 24, scope: !4864)
!4885 = !DILocation(line: 104, column: 39, scope: !4864)
!4886 = !DILocation(line: 104, column: 46, scope: !4864)
!4887 = !DILocation(line: 104, column: 30, scope: !4864)
!4888 = !DILocation(line: 105, column: 2, scope: !4864)
!4889 = !DILocation(line: 105, column: 18, scope: !4864)
!4890 = !DILocation(line: 105, column: 43, scope: !4864)
!4891 = !DILocation(line: 106, column: 2, scope: !4864)
!4892 = !DILocation(line: 106, column: 9, scope: !4864)
!4893 = !DILocation(line: 107, column: 2, scope: !4864)
!4894 = !DILocation(line: 107, column: 6, scope: !4864)
!4895 = !DILocation(line: 109, column: 6, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 109, column: 6)
!4897 = !DILocation(line: 109, column: 6, scope: !4864)
!4898 = !DILocation(line: 110, column: 7, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 110, column: 7)
!4900 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 109, column: 14)
!4901 = !DILocation(line: 110, column: 11, scope: !4899)
!4902 = !DILocation(line: 110, column: 7, scope: !4900)
!4903 = !DILocation(line: 111, column: 5, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 110, column: 39)
!4905 = !DILocation(line: 111, column: 10, scope: !4904)
!4906 = !DILocation(line: 112, column: 4, scope: !4904)
!4907 = !DILocation(line: 114, column: 2, scope: !4900)
!4908 = !DILocation(line: 115, column: 7, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 115, column: 7)
!4910 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 114, column: 9)
!4911 = !DILocation(line: 115, column: 11, scope: !4909)
!4912 = !DILocation(line: 115, column: 7, scope: !4910)
!4913 = !DILocation(line: 116, column: 5, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 115, column: 42)
!4915 = !DILocation(line: 116, column: 10, scope: !4914)
!4916 = !DILocation(line: 117, column: 4, scope: !4914)
!4917 = !DILocation(line: 121, column: 25, scope: !4864)
!4918 = !DILocation(line: 121, column: 30, scope: !4864)
!4919 = !DILocation(line: 121, column: 10, scope: !4864)
!4920 = !DILocation(line: 121, column: 8, scope: !4864)
!4921 = !DILocation(line: 122, column: 3, scope: !4864)
!4922 = !DILocation(line: 122, column: 8, scope: !4864)
!4923 = !DILocation(line: 123, column: 15, scope: !4864)
!4924 = !DILocation(line: 123, column: 22, scope: !4864)
!4925 = !DILocation(line: 123, column: 2, scope: !4864)
!4926 = !DILocation(line: 123, column: 7, scope: !4864)
!4927 = !DILocation(line: 123, column: 13, scope: !4864)
!4928 = !DILocation(line: 124, column: 19, scope: !4864)
!4929 = !DILocation(line: 124, column: 25, scope: !4864)
!4930 = !DILocation(line: 124, column: 2, scope: !4864)
!4931 = !DILocation(line: 124, column: 7, scope: !4864)
!4932 = !DILocation(line: 124, column: 17, scope: !4864)
!4933 = !DILocation(line: 125, column: 19, scope: !4864)
!4934 = !DILocation(line: 125, column: 25, scope: !4864)
!4935 = !DILocation(line: 125, column: 32, scope: !4864)
!4936 = !DILocation(line: 125, column: 18, scope: !4864)
!4937 = !DILocation(line: 125, column: 2, scope: !4864)
!4938 = !DILocation(line: 125, column: 7, scope: !4864)
!4939 = !DILocation(line: 125, column: 16, scope: !4864)
!4940 = !DILocation(line: 126, column: 6, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 126, column: 6)
!4942 = !DILocation(line: 126, column: 6, scope: !4864)
!4943 = !DILocation(line: 127, column: 26, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 126, column: 14)
!4945 = !DILocation(line: 127, column: 31, scope: !4944)
!4946 = !DILocation(line: 127, column: 11, scope: !4944)
!4947 = !DILocation(line: 127, column: 9, scope: !4944)
!4948 = !DILocation(line: 128, column: 27, scope: !4944)
!4949 = !DILocation(line: 128, column: 33, scope: !4944)
!4950 = !DILocation(line: 128, column: 40, scope: !4944)
!4951 = !DILocation(line: 128, column: 26, scope: !4944)
!4952 = !DILocation(line: 128, column: 3, scope: !4944)
!4953 = !DILocation(line: 128, column: 8, scope: !4944)
!4954 = !DILocation(line: 128, column: 24, scope: !4944)
!4955 = !DILocation(line: 129, column: 27, scope: !4944)
!4956 = !DILocation(line: 129, column: 33, scope: !4944)
!4957 = !DILocation(line: 129, column: 3, scope: !4944)
!4958 = !DILocation(line: 129, column: 8, scope: !4944)
!4959 = !DILocation(line: 129, column: 25, scope: !4944)
!4960 = !DILocation(line: 130, column: 23, scope: !4944)
!4961 = !DILocation(line: 130, column: 31, scope: !4944)
!4962 = !DILocation(line: 130, column: 3, scope: !4944)
!4963 = !DILocation(line: 130, column: 8, scope: !4944)
!4964 = !DILocation(line: 130, column: 21, scope: !4944)
!4965 = !DILocation(line: 131, column: 8, scope: !4944)
!4966 = !DILocation(line: 132, column: 4, scope: !4944)
!4967 = !DILocation(line: 132, column: 9, scope: !4944)
!4968 = !DILocation(line: 133, column: 2, scope: !4944)
!4969 = !DILocation(line: 138, column: 3, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 133, column: 9)
!4971 = !DILocation(line: 138, column: 8, scope: !4970)
!4972 = !DILocation(line: 138, column: 24, scope: !4970)
!4973 = !DILocation(line: 141, column: 9, scope: !4864)
!4974 = !DILocation(line: 141, column: 2, scope: !4864)
!4975 = !DILocation(line: 142, column: 1, scope: !4864)
!4976 = distinct !DISubprogram(name: "fat_fh_to_dentry_nostale", scope: !3, file: !3, line: 155, type: !2575, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4977)
!4977 = !{!4978, !4979, !4980, !4981, !4982, !4983, !4984}
!4978 = !DILocalVariable(name: "sb", arg: 1, scope: !4976, file: !3, line: 155, type: !445)
!4979 = !DILocalVariable(name: "fh", arg: 2, scope: !4976, file: !3, line: 156, type: !2577)
!4980 = !DILocalVariable(name: "fh_len", arg: 3, scope: !4976, file: !3, line: 156, type: !96)
!4981 = !DILocalVariable(name: "fh_type", arg: 4, scope: !4976, file: !3, line: 157, type: !96)
!4982 = !DILocalVariable(name: "inode", scope: !4976, file: !3, line: 159, type: !369)
!4983 = !DILocalVariable(name: "fid", scope: !4976, file: !3, line: 160, type: !4612)
!4984 = !DILocalVariable(name: "i_pos", scope: !4976, file: !3, line: 161, type: !244)
!4985 = !DILocation(line: 155, column: 68, scope: !4976)
!4986 = !DILocation(line: 156, column: 25, scope: !4976)
!4987 = !DILocation(line: 156, column: 33, scope: !4976)
!4988 = !DILocation(line: 157, column: 17, scope: !4976)
!4989 = !DILocation(line: 159, column: 2, scope: !4976)
!4990 = !DILocation(line: 159, column: 16, scope: !4976)
!4991 = !DILocation(line: 160, column: 2, scope: !4976)
!4992 = !DILocation(line: 160, column: 18, scope: !4976)
!4993 = !DILocation(line: 160, column: 42, scope: !4976)
!4994 = !DILocation(line: 161, column: 2, scope: !4976)
!4995 = !DILocation(line: 161, column: 9, scope: !4976)
!4996 = !DILocation(line: 163, column: 10, scope: !4976)
!4997 = !DILocation(line: 163, column: 2, scope: !4976)
!4998 = !DILocation(line: 165, column: 7, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 165, column: 7)
!5000 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 163, column: 19)
!5001 = !DILocation(line: 165, column: 14, scope: !4999)
!5002 = !DILocation(line: 165, column: 7, scope: !5000)
!5003 = !DILocation(line: 166, column: 4, scope: !4999)
!5004 = !DILocation(line: 167, column: 3, scope: !5000)
!5005 = !DILocation(line: 169, column: 7, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 169, column: 7)
!5007 = !DILocation(line: 169, column: 14, scope: !5006)
!5008 = !DILocation(line: 169, column: 7, scope: !5000)
!5009 = !DILocation(line: 170, column: 4, scope: !5006)
!5010 = !DILocation(line: 171, column: 3, scope: !5000)
!5011 = !DILocation(line: 173, column: 3, scope: !5000)
!5012 = !DILocation(line: 175, column: 10, scope: !4976)
!5013 = !DILocation(line: 175, column: 15, scope: !4976)
!5014 = !DILocation(line: 175, column: 8, scope: !4976)
!5015 = !DILocation(line: 176, column: 11, scope: !4976)
!5016 = !DILocation(line: 176, column: 17, scope: !4976)
!5017 = !DILocation(line: 176, column: 27, scope: !4976)
!5018 = !DILocation(line: 176, column: 32, scope: !4976)
!5019 = !DILocation(line: 176, column: 26, scope: !4976)
!5020 = !DILocation(line: 176, column: 24, scope: !4976)
!5021 = !DILocation(line: 176, column: 8, scope: !4976)
!5022 = !DILocation(line: 177, column: 30, scope: !4976)
!5023 = !DILocation(line: 177, column: 37, scope: !4976)
!5024 = !DILocation(line: 177, column: 42, scope: !4976)
!5025 = !DILocation(line: 177, column: 49, scope: !4976)
!5026 = !DILocation(line: 177, column: 10, scope: !4976)
!5027 = !DILocation(line: 177, column: 8, scope: !4976)
!5028 = !DILocation(line: 179, column: 24, scope: !4976)
!5029 = !DILocation(line: 179, column: 9, scope: !4976)
!5030 = !DILocation(line: 179, column: 2, scope: !4976)
!5031 = !DILocation(line: 180, column: 1, scope: !4976)
!5032 = distinct !DISubprogram(name: "fat_fh_to_parent_nostale", scope: !3, file: !3, line: 193, type: !2575, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5033)
!5033 = !{!5034, !5035, !5036, !5037, !5038, !5039, !5040}
!5034 = !DILocalVariable(name: "sb", arg: 1, scope: !5032, file: !3, line: 193, type: !445)
!5035 = !DILocalVariable(name: "fh", arg: 2, scope: !5032, file: !3, line: 194, type: !2577)
!5036 = !DILocalVariable(name: "fh_len", arg: 3, scope: !5032, file: !3, line: 194, type: !96)
!5037 = !DILocalVariable(name: "fh_type", arg: 4, scope: !5032, file: !3, line: 195, type: !96)
!5038 = !DILocalVariable(name: "inode", scope: !5032, file: !3, line: 197, type: !369)
!5039 = !DILocalVariable(name: "fid", scope: !5032, file: !3, line: 198, type: !4612)
!5040 = !DILocalVariable(name: "i_pos", scope: !5032, file: !3, line: 199, type: !244)
!5041 = !DILocation(line: 193, column: 68, scope: !5032)
!5042 = !DILocation(line: 194, column: 25, scope: !5032)
!5043 = !DILocation(line: 194, column: 33, scope: !5032)
!5044 = !DILocation(line: 195, column: 17, scope: !5032)
!5045 = !DILocation(line: 197, column: 2, scope: !5032)
!5046 = !DILocation(line: 197, column: 16, scope: !5032)
!5047 = !DILocation(line: 198, column: 2, scope: !5032)
!5048 = !DILocation(line: 198, column: 18, scope: !5032)
!5049 = !DILocation(line: 198, column: 42, scope: !5032)
!5050 = !DILocation(line: 199, column: 2, scope: !5032)
!5051 = !DILocation(line: 199, column: 9, scope: !5032)
!5052 = !DILocation(line: 201, column: 6, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 201, column: 6)
!5054 = !DILocation(line: 201, column: 13, scope: !5053)
!5055 = !DILocation(line: 201, column: 6, scope: !5032)
!5056 = !DILocation(line: 202, column: 3, scope: !5053)
!5057 = !DILocation(line: 204, column: 10, scope: !5032)
!5058 = !DILocation(line: 204, column: 2, scope: !5032)
!5059 = !DILocation(line: 206, column: 11, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 204, column: 19)
!5061 = !DILocation(line: 206, column: 16, scope: !5060)
!5062 = !DILocation(line: 206, column: 9, scope: !5060)
!5063 = !DILocation(line: 207, column: 12, scope: !5060)
!5064 = !DILocation(line: 207, column: 18, scope: !5060)
!5065 = !DILocation(line: 207, column: 28, scope: !5060)
!5066 = !DILocation(line: 207, column: 33, scope: !5060)
!5067 = !DILocation(line: 207, column: 27, scope: !5060)
!5068 = !DILocation(line: 207, column: 25, scope: !5060)
!5069 = !DILocation(line: 207, column: 9, scope: !5060)
!5070 = !DILocation(line: 208, column: 31, scope: !5060)
!5071 = !DILocation(line: 208, column: 38, scope: !5060)
!5072 = !DILocation(line: 208, column: 43, scope: !5060)
!5073 = !DILocation(line: 208, column: 57, scope: !5060)
!5074 = !DILocation(line: 208, column: 11, scope: !5060)
!5075 = !DILocation(line: 208, column: 9, scope: !5060)
!5076 = !DILocation(line: 209, column: 3, scope: !5060)
!5077 = !DILocation(line: 212, column: 24, scope: !5032)
!5078 = !DILocation(line: 212, column: 9, scope: !5032)
!5079 = !DILocation(line: 212, column: 2, scope: !5032)
!5080 = !DILocation(line: 213, column: 1, scope: !5032)
!5081 = !DISubprogram(name: "generic_fh_to_dentry", scope: !142, file: !142, line: 255, type: !5082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!326, !445, !2577, !96, !96, !5084}
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!369, !445, !363, !360}
!5087 = distinct !DISubprogram(name: "fat_nfs_get_inode", scope: !3, file: !3, line: 92, type: !5085, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5088)
!5088 = !{!5089, !5090, !5091}
!5089 = !DILocalVariable(name: "sb", arg: 1, scope: !5087, file: !3, line: 92, type: !445)
!5090 = !DILocalVariable(name: "ino", arg: 2, scope: !5087, file: !3, line: 93, type: !363)
!5091 = !DILocalVariable(name: "generation", arg: 3, scope: !5087, file: !3, line: 93, type: !360)
!5092 = !DILocation(line: 92, column: 60, scope: !5087)
!5093 = !DILocation(line: 93, column: 16, scope: !5087)
!5094 = !DILocation(line: 93, column: 25, scope: !5087)
!5095 = !DILocation(line: 96, column: 29, scope: !5087)
!5096 = !DILocation(line: 96, column: 33, scope: !5087)
!5097 = !DILocation(line: 96, column: 38, scope: !5087)
!5098 = !DILocation(line: 96, column: 9, scope: !5087)
!5099 = !DILocation(line: 96, column: 2, scope: !5087)
!5100 = distinct !DISubprogram(name: "__fat_nfs_get_inode", scope: !3, file: !3, line: 56, type: !5101, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5103)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!369, !445, !363, !360, !244}
!5103 = !{!5104, !5105, !5106, !5107, !5108, !5109, !5112, !5113, !5114}
!5104 = !DILocalVariable(name: "sb", arg: 1, scope: !5100, file: !3, line: 56, type: !445)
!5105 = !DILocalVariable(name: "ino", arg: 2, scope: !5100, file: !3, line: 57, type: !363)
!5106 = !DILocalVariable(name: "generation", arg: 3, scope: !5100, file: !3, line: 57, type: !360)
!5107 = !DILocalVariable(name: "i_pos", arg: 4, scope: !5100, file: !3, line: 57, type: !244)
!5108 = !DILocalVariable(name: "inode", scope: !5100, file: !3, line: 59, type: !369)
!5109 = !DILocalVariable(name: "bh", scope: !5110, file: !3, line: 66, type: !4688)
!5110 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 65, column: 72)
!5111 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 65, column: 6)
!5112 = !DILocalVariable(name: "de", scope: !5110, file: !3, line: 67, type: !164)
!5113 = !DILocalVariable(name: "blocknr", scope: !5110, file: !3, line: 68, type: !1722)
!5114 = !DILocalVariable(name: "offset", scope: !5110, file: !3, line: 69, type: !96)
!5115 = !DILocation(line: 56, column: 62, scope: !5100)
!5116 = !DILocation(line: 57, column: 16, scope: !5100)
!5117 = !DILocation(line: 57, column: 25, scope: !5100)
!5118 = !DILocation(line: 57, column: 44, scope: !5100)
!5119 = !DILocation(line: 59, column: 2, scope: !5100)
!5120 = !DILocation(line: 59, column: 16, scope: !5100)
!5121 = !DILocation(line: 59, column: 36, scope: !5100)
!5122 = !DILocation(line: 59, column: 40, scope: !5100)
!5123 = !DILocation(line: 59, column: 45, scope: !5100)
!5124 = !DILocation(line: 59, column: 24, scope: !5100)
!5125 = !DILocation(line: 61, column: 6, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 61, column: 6)
!5127 = !DILocation(line: 61, column: 12, scope: !5126)
!5128 = !DILocation(line: 61, column: 15, scope: !5126)
!5129 = !DILocation(line: 61, column: 26, scope: !5126)
!5130 = !DILocation(line: 61, column: 30, scope: !5126)
!5131 = !DILocation(line: 61, column: 37, scope: !5126)
!5132 = !DILocation(line: 61, column: 53, scope: !5126)
!5133 = !DILocation(line: 61, column: 50, scope: !5126)
!5134 = !DILocation(line: 61, column: 6, scope: !5100)
!5135 = !DILocation(line: 62, column: 8, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 61, column: 66)
!5137 = !DILocation(line: 62, column: 3, scope: !5136)
!5138 = !DILocation(line: 63, column: 9, scope: !5136)
!5139 = !DILocation(line: 64, column: 2, scope: !5136)
!5140 = !DILocation(line: 65, column: 6, scope: !5111)
!5141 = !DILocation(line: 65, column: 12, scope: !5111)
!5142 = !DILocation(line: 65, column: 20, scope: !5111)
!5143 = !DILocation(line: 65, column: 32, scope: !5111)
!5144 = !DILocation(line: 65, column: 23, scope: !5111)
!5145 = !DILocation(line: 65, column: 37, scope: !5111)
!5146 = !DILocation(line: 65, column: 45, scope: !5111)
!5147 = !DILocation(line: 65, column: 49, scope: !5111)
!5148 = !DILocation(line: 65, column: 6, scope: !5100)
!5149 = !DILocation(line: 66, column: 3, scope: !5110)
!5150 = !DILocation(line: 66, column: 23, scope: !5110)
!5151 = !DILocation(line: 67, column: 3, scope: !5110)
!5152 = !DILocation(line: 67, column: 27, scope: !5110)
!5153 = !DILocation(line: 68, column: 3, scope: !5110)
!5154 = !DILocation(line: 68, column: 12, scope: !5110)
!5155 = !DILocation(line: 69, column: 3, scope: !5110)
!5156 = !DILocation(line: 69, column: 7, scope: !5110)
!5157 = !DILocation(line: 70, column: 33, scope: !5110)
!5158 = !DILocation(line: 70, column: 24, scope: !5110)
!5159 = !DILocation(line: 70, column: 38, scope: !5110)
!5160 = !DILocation(line: 70, column: 3, scope: !5110)
!5161 = !DILocation(line: 71, column: 17, scope: !5110)
!5162 = !DILocation(line: 71, column: 21, scope: !5110)
!5163 = !DILocation(line: 71, column: 8, scope: !5110)
!5164 = !DILocation(line: 71, column: 6, scope: !5110)
!5165 = !DILocation(line: 72, column: 8, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 72, column: 7)
!5167 = !DILocation(line: 72, column: 7, scope: !5110)
!5168 = !DILocation(line: 73, column: 4, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 72, column: 12)
!5170 = !DILocation(line: 73, column: 4, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 73, column: 4)
!5172 = !DILocation(line: 73, column: 4, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 73, column: 4)
!5174 = !DILocation(line: 76, column: 11, scope: !5169)
!5175 = !DILocation(line: 76, column: 4, scope: !5169)
!5176 = !DILocation(line: 78, column: 34, scope: !5110)
!5177 = !DILocation(line: 78, column: 38, scope: !5110)
!5178 = !DILocation(line: 78, column: 6, scope: !5110)
!5179 = !DILocation(line: 82, column: 7, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 82, column: 7)
!5181 = !DILocation(line: 82, column: 7, scope: !5110)
!5182 = !DILocation(line: 83, column: 10, scope: !5180)
!5183 = !DILocation(line: 83, column: 4, scope: !5180)
!5184 = !DILocation(line: 85, column: 28, scope: !5180)
!5185 = !DILocation(line: 85, column: 33, scope: !5180)
!5186 = !DILocation(line: 85, column: 36, scope: !5180)
!5187 = !DILocation(line: 85, column: 45, scope: !5180)
!5188 = !DILocation(line: 85, column: 12, scope: !5180)
!5189 = !DILocation(line: 85, column: 10, scope: !5180)
!5190 = !DILocation(line: 86, column: 10, scope: !5110)
!5191 = !DILocation(line: 86, column: 3, scope: !5110)
!5192 = !DILocation(line: 87, column: 2, scope: !5111)
!5193 = !DILocation(line: 87, column: 2, scope: !5110)
!5194 = !DILocation(line: 89, column: 9, scope: !5100)
!5195 = !DILocation(line: 89, column: 2, scope: !5100)
!5196 = !DILocation(line: 90, column: 1, scope: !5100)
!5197 = distinct !DISubprogram(name: "fat_ilookup", scope: !3, file: !3, line: 44, type: !5198, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5200)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!369, !445, !363, !244}
!5200 = !{!5201, !5202, !5203}
!5201 = !DILocalVariable(name: "sb", arg: 1, scope: !5197, file: !3, line: 44, type: !445)
!5202 = !DILocalVariable(name: "ino", arg: 2, scope: !5197, file: !3, line: 44, type: !363)
!5203 = !DILocalVariable(name: "i_pos", arg: 3, scope: !5197, file: !3, line: 44, type: !244)
!5204 = !DILocation(line: 44, column: 54, scope: !5197)
!5205 = !DILocation(line: 44, column: 62, scope: !5197)
!5206 = !DILocation(line: 44, column: 74, scope: !5197)
!5207 = !DILocation(line: 46, column: 15, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 46, column: 6)
!5209 = !DILocation(line: 46, column: 6, scope: !5208)
!5210 = !DILocation(line: 46, column: 20, scope: !5208)
!5211 = !DILocation(line: 46, column: 28, scope: !5208)
!5212 = !DILocation(line: 46, column: 32, scope: !5208)
!5213 = !DILocation(line: 46, column: 6, scope: !5197)
!5214 = !DILocation(line: 47, column: 19, scope: !5208)
!5215 = !DILocation(line: 47, column: 23, scope: !5208)
!5216 = !DILocation(line: 47, column: 10, scope: !5208)
!5217 = !DILocation(line: 47, column: 3, scope: !5208)
!5218 = !DILocation(line: 50, column: 8, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 50, column: 7)
!5220 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 49, column: 7)
!5221 = !DILocation(line: 50, column: 12, scope: !5219)
!5222 = !DILocation(line: 50, column: 30, scope: !5219)
!5223 = !DILocation(line: 50, column: 34, scope: !5219)
!5224 = !DILocation(line: 50, column: 38, scope: !5219)
!5225 = !DILocation(line: 50, column: 7, scope: !5220)
!5226 = !DILocation(line: 51, column: 4, scope: !5219)
!5227 = !DILocation(line: 52, column: 18, scope: !5220)
!5228 = !DILocation(line: 52, column: 22, scope: !5220)
!5229 = !DILocation(line: 52, column: 10, scope: !5220)
!5230 = !DILocation(line: 52, column: 3, scope: !5220)
!5231 = !DILocation(line: 54, column: 1, scope: !5197)
!5232 = !DISubprogram(name: "iput", scope: !59, file: !59, line: 2459, type: !2317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5233 = distinct !DISubprogram(name: "MSDOS_SB", scope: !162, file: !162, line: 141, type: !5234, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5236)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!4716, !445}
!5236 = !{!5237}
!5237 = !DILocalVariable(name: "sb", arg: 1, scope: !5233, file: !162, line: 141, type: !445)
!5238 = !DILocation(line: 141, column: 66, scope: !5233)
!5239 = !DILocation(line: 143, column: 9, scope: !5233)
!5240 = !DILocation(line: 143, column: 13, scope: !5233)
!5241 = !DILocation(line: 143, column: 2, scope: !5233)
!5242 = distinct !DISubprogram(name: "fat_get_blknr_offset", scope: !162, file: !162, line: 252, type: !5243, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5245)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{null, !4716, !244, !1763, !2086}
!5245 = !{!5246, !5247, !5248, !5249}
!5246 = !DILocalVariable(name: "sbi", arg: 1, scope: !5242, file: !162, line: 252, type: !4716)
!5247 = !DILocalVariable(name: "i_pos", arg: 2, scope: !5242, file: !162, line: 253, type: !244)
!5248 = !DILocalVariable(name: "blknr", arg: 3, scope: !5242, file: !162, line: 253, type: !1763)
!5249 = !DILocalVariable(name: "offset", arg: 4, scope: !5242, file: !162, line: 253, type: !2086)
!5250 = !DILocation(line: 252, column: 63, scope: !5242)
!5251 = !DILocation(line: 253, column: 12, scope: !5242)
!5252 = !DILocation(line: 253, column: 29, scope: !5242)
!5253 = !DILocation(line: 253, column: 41, scope: !5242)
!5254 = !DILocation(line: 255, column: 11, scope: !5242)
!5255 = !DILocation(line: 255, column: 20, scope: !5242)
!5256 = !DILocation(line: 255, column: 25, scope: !5242)
!5257 = !DILocation(line: 255, column: 17, scope: !5242)
!5258 = !DILocation(line: 255, column: 3, scope: !5242)
!5259 = !DILocation(line: 255, column: 9, scope: !5242)
!5260 = !DILocation(line: 256, column: 12, scope: !5242)
!5261 = !DILocation(line: 256, column: 21, scope: !5242)
!5262 = !DILocation(line: 256, column: 26, scope: !5242)
!5263 = !DILocation(line: 256, column: 40, scope: !5242)
!5264 = !DILocation(line: 256, column: 20, scope: !5242)
!5265 = !DILocation(line: 256, column: 18, scope: !5242)
!5266 = !DILocation(line: 256, column: 3, scope: !5242)
!5267 = !DILocation(line: 256, column: 10, scope: !5242)
!5268 = !DILocation(line: 257, column: 1, scope: !5242)
!5269 = distinct !DISubprogram(name: "sb_bread", scope: !4690, file: !4690, line: 324, type: !5270, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5272)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!4688, !445, !1722}
!5272 = !{!5273, !5274}
!5273 = !DILocalVariable(name: "sb", arg: 1, scope: !5269, file: !4690, line: 324, type: !445)
!5274 = !DILocalVariable(name: "block", arg: 2, scope: !5269, file: !4690, line: 324, type: !1722)
!5275 = !DILocation(line: 324, column: 30, scope: !5269)
!5276 = !DILocation(line: 324, column: 43, scope: !5269)
!5277 = !DILocation(line: 326, column: 21, scope: !5269)
!5278 = !DILocation(line: 326, column: 25, scope: !5269)
!5279 = !DILocation(line: 326, column: 33, scope: !5269)
!5280 = !DILocation(line: 326, column: 40, scope: !5269)
!5281 = !DILocation(line: 326, column: 44, scope: !5269)
!5282 = !DILocation(line: 326, column: 9, scope: !5269)
!5283 = !DILocation(line: 326, column: 2, scope: !5269)
!5284 = !DISubprogram(name: "_fat_msg", scope: !162, file: !162, line: 445, type: !5285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{null, !445, !408, !408, null}
!5287 = !DISubprogram(name: "fat_build_inode", scope: !162, file: !162, line: 415, type: !5288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!369, !445, !164, !244}
!5290 = distinct !DISubprogram(name: "brelse", scope: !4690, file: !4690, line: 311, type: !5291, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5293)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{null, !4688}
!5293 = !{!5294}
!5294 = !DILocalVariable(name: "bh", arg: 1, scope: !5290, file: !4690, line: 311, type: !4688)
!5295 = !DILocation(line: 311, column: 47, scope: !5290)
!5296 = !DILocation(line: 313, column: 6, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5290, file: !4690, line: 313, column: 6)
!5298 = !DILocation(line: 313, column: 6, scope: !5290)
!5299 = !DILocation(line: 314, column: 12, scope: !5297)
!5300 = !DILocation(line: 314, column: 3, scope: !5297)
!5301 = !DILocation(line: 315, column: 1, scope: !5290)
!5302 = !DISubprogram(name: "fat_iget", scope: !162, file: !162, line: 414, type: !5303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!369, !445, !244}
!5305 = !DISubprogram(name: "ilookup", scope: !59, file: !59, line: 2883, type: !5306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!369, !445, !454}
!5308 = !DISubprogram(name: "__bread_gfp", scope: !4690, file: !4690, line: 235, type: !5309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!4688, !2682, !1722, !7, !192}
!5311 = !DISubprogram(name: "__brelse", scope: !4690, file: !4690, line: 232, type: !5291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5312 = !DISubprogram(name: "generic_fh_to_parent", scope: !142, file: !142, line: 258, type: !5082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5313 = !DISubprogram(name: "fat_get_dotdot_entry", scope: !162, file: !162, line: 334, type: !5314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!96, !369, !5316, !5317}
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!5318 = distinct !DISubprogram(name: "d_inode", scope: !328, file: !328, line: 514, type: !5319, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5321)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!369, !401}
!5321 = !{!5322}
!5322 = !DILocalVariable(name: "dentry", arg: 1, scope: !5318, file: !328, line: 514, type: !401)
!5323 = !DILocation(line: 514, column: 58, scope: !5318)
!5324 = !DILocation(line: 516, column: 9, scope: !5318)
!5325 = !DILocation(line: 516, column: 17, scope: !5318)
!5326 = !DILocation(line: 516, column: 2, scope: !5318)
!5327 = distinct !DISubprogram(name: "fat_get_start", scope: !162, file: !162, line: 285, type: !5328, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5334)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!96, !5330, !5332}
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4717)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!5334 = !{!5335, !5336, !5337}
!5335 = !DILocalVariable(name: "sbi", arg: 1, scope: !5327, file: !162, line: 285, type: !5330)
!5336 = !DILocalVariable(name: "de", arg: 2, scope: !5327, file: !162, line: 286, type: !5332)
!5337 = !DILocalVariable(name: "cluster", scope: !5327, file: !162, line: 288, type: !96)
!5338 = !DILocation(line: 285, column: 61, scope: !5327)
!5339 = !DILocation(line: 286, column: 35, scope: !5327)
!5340 = !DILocation(line: 288, column: 2, scope: !5327)
!5341 = !DILocation(line: 288, column: 6, scope: !5327)
!5342 = !DILocation(line: 288, column: 16, scope: !5327)
!5343 = !DILocation(line: 289, column: 15, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5327, file: !162, line: 289, column: 6)
!5345 = !DILocation(line: 289, column: 6, scope: !5344)
!5346 = !DILocation(line: 289, column: 6, scope: !5327)
!5347 = !DILocation(line: 290, column: 15, scope: !5344)
!5348 = !DILocation(line: 290, column: 40, scope: !5344)
!5349 = !DILocation(line: 290, column: 11, scope: !5344)
!5350 = !DILocation(line: 290, column: 3, scope: !5344)
!5351 = !DILocation(line: 291, column: 9, scope: !5327)
!5352 = !DILocation(line: 292, column: 1, scope: !5327)
!5353 = !DILocation(line: 291, column: 2, scope: !5327)
!5354 = distinct !DISubprogram(name: "fat_dget", scope: !3, file: !3, line: 23, type: !5355, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5357)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!369, !445, !96}
!5357 = !{!5358, !5359, !5360, !5361, !5362, !5363, !5364, !5367, !5369, !5372}
!5358 = !DILocalVariable(name: "sb", arg: 1, scope: !5354, file: !3, line: 23, type: !445)
!5359 = !DILocalVariable(name: "i_logstart", arg: 2, scope: !5354, file: !3, line: 23, type: !96)
!5360 = !DILocalVariable(name: "sbi", scope: !5354, file: !3, line: 25, type: !4716)
!5361 = !DILocalVariable(name: "head", scope: !5354, file: !3, line: 26, type: !1371)
!5362 = !DILocalVariable(name: "i", scope: !5354, file: !3, line: 27, type: !194)
!5363 = !DILocalVariable(name: "inode", scope: !5354, file: !3, line: 28, type: !369)
!5364 = !DILocalVariable(name: "____ptr", scope: !5365, file: !3, line: 32, type: !256)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 32, column: 2)
!5366 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 32, column: 2)
!5367 = !DILocalVariable(name: "__mptr", scope: !5368, file: !3, line: 32, type: !160)
!5368 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 32, column: 2)
!5369 = !DILocalVariable(name: "____ptr", scope: !5370, file: !3, line: 32, type: !256)
!5370 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 32, column: 2)
!5371 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 32, column: 2)
!5372 = !DILocalVariable(name: "__mptr", scope: !5373, file: !3, line: 32, type: !160)
!5373 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 32, column: 2)
!5374 = !DILocation(line: 23, column: 51, scope: !5354)
!5375 = !DILocation(line: 23, column: 59, scope: !5354)
!5376 = !DILocation(line: 25, column: 2, scope: !5354)
!5377 = !DILocation(line: 25, column: 24, scope: !5354)
!5378 = !DILocation(line: 25, column: 39, scope: !5354)
!5379 = !DILocation(line: 25, column: 30, scope: !5354)
!5380 = !DILocation(line: 26, column: 2, scope: !5354)
!5381 = !DILocation(line: 26, column: 21, scope: !5354)
!5382 = !DILocation(line: 27, column: 2, scope: !5354)
!5383 = !DILocation(line: 27, column: 27, scope: !5354)
!5384 = !DILocation(line: 28, column: 2, scope: !5354)
!5385 = !DILocation(line: 28, column: 16, scope: !5354)
!5386 = !DILocation(line: 30, column: 9, scope: !5354)
!5387 = !DILocation(line: 30, column: 14, scope: !5354)
!5388 = !DILocation(line: 30, column: 43, scope: !5354)
!5389 = !DILocation(line: 30, column: 30, scope: !5354)
!5390 = !DILocation(line: 30, column: 28, scope: !5354)
!5391 = !DILocation(line: 30, column: 7, scope: !5354)
!5392 = !DILocation(line: 31, column: 13, scope: !5354)
!5393 = !DILocation(line: 31, column: 18, scope: !5354)
!5394 = !DILocation(line: 31, column: 2, scope: !5354)
!5395 = !DILocation(line: 32, column: 2, scope: !5365)
!5396 = !DILocation(line: 32, column: 2, scope: !5368)
!5397 = !DILocation(line: 32, column: 2, scope: !5366)
!5398 = !DILocation(line: 32, column: 2, scope: !5371)
!5399 = !DILocation(line: 33, column: 3, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 32, column: 44)
!5401 = !DILocation(line: 33, column: 3, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 33, column: 3)
!5403 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 33, column: 3)
!5404 = !DILocation(line: 33, column: 3, scope: !5403)
!5405 = !DILocation(line: 33, column: 3, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 33, column: 3)
!5407 = !DILocation(line: 33, column: 3, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 33, column: 3)
!5409 = !DILocation(line: 33, column: 3, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 33, column: 3)
!5411 = !{i64 2154758428, i64 2154758457, i64 2154758503, i64 2154758561, i64 2154758615, i64 2154758669, i64 2154758724, i64 2154758755}
!5412 = !DILocation(line: 34, column: 7, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 34, column: 7)
!5414 = !DILocation(line: 34, column: 10, scope: !5413)
!5415 = !DILocation(line: 34, column: 24, scope: !5413)
!5416 = !DILocation(line: 34, column: 21, scope: !5413)
!5417 = !DILocation(line: 34, column: 7, scope: !5400)
!5418 = !DILocation(line: 35, column: 4, scope: !5413)
!5419 = !DILocation(line: 36, column: 18, scope: !5400)
!5420 = !DILocation(line: 36, column: 21, scope: !5400)
!5421 = !DILocation(line: 36, column: 11, scope: !5400)
!5422 = !DILocation(line: 36, column: 9, scope: !5400)
!5423 = !DILocation(line: 37, column: 7, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 37, column: 7)
!5425 = !DILocation(line: 37, column: 7, scope: !5400)
!5426 = !DILocation(line: 38, column: 4, scope: !5424)
!5427 = !DILocation(line: 39, column: 2, scope: !5400)
!5428 = !DILocation(line: 32, column: 2, scope: !5370)
!5429 = !DILocation(line: 32, column: 2, scope: !5373)
!5430 = distinct !{!5430, !5397, !5431, !5432, !5433}
!5431 = !DILocation(line: 39, column: 2, scope: !5366)
!5432 = !{!"llvm.loop.mustprogress"}
!5433 = !{!"llvm.loop.unroll.disable"}
!5434 = !DILocation(line: 40, column: 15, scope: !5354)
!5435 = !DILocation(line: 40, column: 20, scope: !5354)
!5436 = !DILocation(line: 40, column: 2, scope: !5354)
!5437 = !DILocation(line: 41, column: 9, scope: !5354)
!5438 = !DILocation(line: 42, column: 1, scope: !5354)
!5439 = !DILocation(line: 41, column: 2, scope: !5354)
!5440 = distinct !DISubprogram(name: "fat_rebuild_parent", scope: !3, file: !3, line: 220, type: !5355, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5441)
!5441 = !{!5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5457, !5458, !5459}
!5442 = !DILocalVariable(name: "sb", arg: 1, scope: !5440, file: !3, line: 220, type: !445)
!5443 = !DILocalVariable(name: "parent_logstart", arg: 2, scope: !5440, file: !3, line: 220, type: !96)
!5444 = !DILocalVariable(name: "search_clus", scope: !5440, file: !3, line: 222, type: !96)
!5445 = !DILocalVariable(name: "clus_to_match", scope: !5440, file: !3, line: 222, type: !96)
!5446 = !DILocalVariable(name: "de", scope: !5440, file: !3, line: 223, type: !164)
!5447 = !DILocalVariable(name: "parent", scope: !5440, file: !3, line: 224, type: !369)
!5448 = !DILocalVariable(name: "dummy_grand_parent", scope: !5440, file: !3, line: 225, type: !369)
!5449 = !DILocalVariable(name: "sinfo", scope: !5440, file: !3, line: 226, type: !5450)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_slot_info", file: !162, line: 133, size: 320, elements: !5451)
!5451 = !{!5452, !5453, !5454, !5455, !5456}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "i_pos", scope: !5450, file: !162, line: 134, baseType: !244, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "slot_off", scope: !5450, file: !162, line: 135, baseType: !244, size: 64, offset: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_slots", scope: !5450, file: !162, line: 136, baseType: !96, size: 32, offset: 128)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !5450, file: !162, line: 137, baseType: !164, size: 64, offset: 192)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !5450, file: !162, line: 138, baseType: !4688, size: 64, offset: 256)
!5457 = !DILocalVariable(name: "sbi", scope: !5440, file: !3, line: 227, type: !4716)
!5458 = !DILocalVariable(name: "blknr", scope: !5440, file: !3, line: 228, type: !1722)
!5459 = !DILocalVariable(name: "parent_bh", scope: !5440, file: !3, line: 229, type: !4688)
!5460 = !DILocation(line: 220, column: 54, scope: !5440)
!5461 = !DILocation(line: 220, column: 62, scope: !5440)
!5462 = !DILocation(line: 222, column: 2, scope: !5440)
!5463 = !DILocation(line: 222, column: 6, scope: !5440)
!5464 = !DILocation(line: 222, column: 19, scope: !5440)
!5465 = !DILocation(line: 223, column: 2, scope: !5440)
!5466 = !DILocation(line: 223, column: 26, scope: !5440)
!5467 = !DILocation(line: 224, column: 2, scope: !5440)
!5468 = !DILocation(line: 224, column: 16, scope: !5440)
!5469 = !DILocation(line: 225, column: 2, scope: !5440)
!5470 = !DILocation(line: 225, column: 16, scope: !5440)
!5471 = !DILocation(line: 226, column: 2, scope: !5440)
!5472 = !DILocation(line: 226, column: 23, scope: !5440)
!5473 = !DILocation(line: 227, column: 2, scope: !5440)
!5474 = !DILocation(line: 227, column: 24, scope: !5440)
!5475 = !DILocation(line: 227, column: 39, scope: !5440)
!5476 = !DILocation(line: 227, column: 30, scope: !5440)
!5477 = !DILocation(line: 228, column: 2, scope: !5440)
!5478 = !DILocation(line: 228, column: 11, scope: !5440)
!5479 = !DILocation(line: 228, column: 37, scope: !5440)
!5480 = !DILocation(line: 228, column: 42, scope: !5440)
!5481 = !DILocation(line: 228, column: 19, scope: !5440)
!5482 = !DILocation(line: 229, column: 2, scope: !5440)
!5483 = !DILocation(line: 229, column: 22, scope: !5440)
!5484 = !DILocation(line: 229, column: 43, scope: !5440)
!5485 = !DILocation(line: 229, column: 47, scope: !5440)
!5486 = !DILocation(line: 229, column: 34, scope: !5440)
!5487 = !DILocation(line: 230, column: 7, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 230, column: 6)
!5489 = !DILocation(line: 230, column: 6, scope: !5440)
!5490 = !DILocation(line: 231, column: 3, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 230, column: 18)
!5492 = !DILocation(line: 231, column: 3, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 231, column: 3)
!5494 = !DILocation(line: 231, column: 3, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 231, column: 3)
!5496 = !DILocation(line: 233, column: 3, scope: !5491)
!5497 = !DILocation(line: 236, column: 34, scope: !5440)
!5498 = !DILocation(line: 236, column: 45, scope: !5440)
!5499 = !DILocation(line: 236, column: 5, scope: !5440)
!5500 = !DILocation(line: 237, column: 32, scope: !5440)
!5501 = !DILocation(line: 237, column: 38, scope: !5440)
!5502 = !DILocation(line: 237, column: 18, scope: !5440)
!5503 = !DILocation(line: 237, column: 16, scope: !5440)
!5504 = !DILocation(line: 238, column: 30, scope: !5440)
!5505 = !DILocation(line: 238, column: 36, scope: !5440)
!5506 = !DILocation(line: 238, column: 16, scope: !5440)
!5507 = !DILocation(line: 238, column: 14, scope: !5440)
!5508 = !DILocation(line: 240, column: 32, scope: !5440)
!5509 = !DILocation(line: 240, column: 36, scope: !5440)
!5510 = !DILocation(line: 240, column: 23, scope: !5440)
!5511 = !DILocation(line: 240, column: 21, scope: !5440)
!5512 = !DILocation(line: 241, column: 7, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 241, column: 6)
!5514 = !DILocation(line: 241, column: 6, scope: !5440)
!5515 = !DILocation(line: 242, column: 34, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 241, column: 27)
!5517 = !DILocation(line: 242, column: 24, scope: !5516)
!5518 = !DILocation(line: 242, column: 22, scope: !5516)
!5519 = !DILocation(line: 243, column: 8, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 243, column: 7)
!5521 = !DILocation(line: 243, column: 7, scope: !5516)
!5522 = !DILocation(line: 244, column: 11, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 243, column: 28)
!5524 = !DILocation(line: 244, column: 4, scope: !5523)
!5525 = !DILocation(line: 245, column: 11, scope: !5523)
!5526 = !DILocation(line: 245, column: 4, scope: !5523)
!5527 = !DILocation(line: 248, column: 39, scope: !5516)
!5528 = !DILocation(line: 248, column: 31, scope: !5516)
!5529 = !DILocation(line: 248, column: 3, scope: !5516)
!5530 = !DILocation(line: 248, column: 23, scope: !5516)
!5531 = !DILocation(line: 248, column: 29, scope: !5516)
!5532 = !DILocation(line: 249, column: 18, scope: !5516)
!5533 = !DILocation(line: 249, column: 39, scope: !5516)
!5534 = !DILocation(line: 249, column: 3, scope: !5516)
!5535 = !DILocation(line: 250, column: 11, scope: !5516)
!5536 = !DILocation(line: 250, column: 3, scope: !5516)
!5537 = !DILocation(line: 250, column: 32, scope: !5516)
!5538 = !DILocation(line: 250, column: 38, scope: !5516)
!5539 = !DILocation(line: 251, column: 2, scope: !5516)
!5540 = !DILocation(line: 253, column: 25, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 253, column: 6)
!5542 = !DILocation(line: 253, column: 45, scope: !5541)
!5543 = !DILocation(line: 253, column: 7, scope: !5541)
!5544 = !DILocation(line: 253, column: 6, scope: !5440)
!5545 = !DILocation(line: 254, column: 28, scope: !5541)
!5546 = !DILocation(line: 254, column: 38, scope: !5541)
!5547 = !DILocation(line: 254, column: 48, scope: !5541)
!5548 = !DILocation(line: 254, column: 12, scope: !5541)
!5549 = !DILocation(line: 254, column: 10, scope: !5541)
!5550 = !DILocation(line: 254, column: 3, scope: !5541)
!5551 = !DILocation(line: 256, column: 9, scope: !5440)
!5552 = !DILocation(line: 256, column: 2, scope: !5440)
!5553 = !DILocation(line: 257, column: 7, scope: !5440)
!5554 = !DILocation(line: 257, column: 2, scope: !5440)
!5555 = !DILocation(line: 259, column: 9, scope: !5440)
!5556 = !DILocation(line: 259, column: 2, scope: !5440)
!5557 = !DILocation(line: 260, column: 1, scope: !5440)
!5558 = !DISubprogram(name: "d_obtain_alias", scope: !328, file: !328, line: 241, type: !5559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5559 = !DISubroutineType(types: !5560)
!5560 = !{!326, !369}
!5561 = distinct !DISubprogram(name: "is_fat32", scope: !162, file: !162, line: 160, type: !5562, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5564)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!727, !5330}
!5564 = !{!5565}
!5565 = !DILocalVariable(name: "sbi", arg: 1, scope: !5561, file: !162, line: 160, type: !5330)
!5566 = !DILocation(line: 160, column: 57, scope: !5561)
!5567 = !DILocation(line: 162, column: 9, scope: !5561)
!5568 = !DILocation(line: 162, column: 14, scope: !5561)
!5569 = !DILocation(line: 162, column: 23, scope: !5561)
!5570 = !DILocation(line: 162, column: 2, scope: !5561)
!5571 = distinct !DISubprogram(name: "fat_dir_hash", scope: !162, file: !162, line: 424, type: !5572, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5574)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{!454, !96}
!5574 = !{!5575}
!5575 = !DILocalVariable(name: "logstart", arg: 1, scope: !5571, file: !162, line: 424, type: !96)
!5576 = !DILocation(line: 424, column: 46, scope: !5571)
!5577 = !DILocation(line: 426, column: 17, scope: !5571)
!5578 = !DILocation(line: 426, column: 9, scope: !5571)
!5579 = !DILocation(line: 426, column: 2, scope: !5571)
!5580 = distinct !DISubprogram(name: "spin_lock", scope: !5581, file: !5581, line: 349, type: !5582, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5584)
!5581 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5582 = !DISubroutineType(types: !5583)
!5583 = !{null, !1646}
!5584 = !{!5585}
!5585 = !DILocalVariable(name: "lock", arg: 1, scope: !5580, file: !5581, line: 349, type: !1646)
!5586 = !DILocation(line: 349, column: 51, scope: !5580)
!5587 = !DILocation(line: 351, column: 2, scope: !5580)
!5588 = !DILocation(line: 352, column: 1, scope: !5580)
!5589 = !DISubprogram(name: "igrab", scope: !59, file: !59, line: 2868, type: !5590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!369, !369}
!5592 = distinct !DISubprogram(name: "spin_unlock", scope: !5581, file: !5581, line: 389, type: !5582, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5593)
!5593 = !{!5594}
!5594 = !DILocalVariable(name: "lock", arg: 1, scope: !5592, file: !5581, line: 389, type: !1646)
!5595 = !DILocation(line: 389, column: 53, scope: !5592)
!5596 = !DILocation(line: 391, column: 2, scope: !5592)
!5597 = !DILocation(line: 392, column: 1, scope: !5592)
!5598 = distinct !DISubprogram(name: "hash_32", scope: !5599, file: !5599, line: 65, type: !5600, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5602)
!5599 = !DIFile(filename: "./include/linux/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38c20be4852b6978c0a05b86a66f0046")
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!360, !360, !7}
!5602 = !{!5603, !5604}
!5603 = !DILocalVariable(name: "val", arg: 1, scope: !5598, file: !5599, line: 65, type: !360)
!5604 = !DILocalVariable(name: "bits", arg: 2, scope: !5598, file: !5599, line: 65, type: !7)
!5605 = !DILocation(line: 65, column: 31, scope: !5598)
!5606 = !DILocation(line: 65, column: 49, scope: !5598)
!5607 = !DILocation(line: 68, column: 19, scope: !5598)
!5608 = !DILocation(line: 68, column: 9, scope: !5598)
!5609 = !DILocation(line: 68, column: 33, scope: !5598)
!5610 = !DILocation(line: 68, column: 31, scope: !5598)
!5611 = !DILocation(line: 68, column: 24, scope: !5598)
!5612 = !DILocation(line: 68, column: 2, scope: !5598)
!5613 = distinct !DISubprogram(name: "__hash_32_generic", scope: !5599, file: !5599, line: 60, type: !5614, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{!360, !360}
!5616 = !{!5617}
!5617 = !DILocalVariable(name: "val", arg: 1, scope: !5613, file: !5599, line: 60, type: !360)
!5618 = !DILocation(line: 60, column: 41, scope: !5613)
!5619 = !DILocation(line: 62, column: 9, scope: !5613)
!5620 = !DILocation(line: 62, column: 13, scope: !5613)
!5621 = !DILocation(line: 62, column: 2, scope: !5613)
!5622 = !DISubprogram(name: "_raw_spin_lock", scope: !5623, file: !5623, line: 22, type: !5624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5623 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !5626}
!5626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!5627 = !DISubprogram(name: "_raw_spin_unlock", scope: !5623, file: !5623, line: 39, type: !5624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5628 = distinct !DISubprogram(name: "fat_clus_to_blknr", scope: !162, file: !162, line: 246, type: !5629, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5631)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!1722, !4716, !96}
!5631 = !{!5632, !5633}
!5632 = !DILocalVariable(name: "sbi", arg: 1, scope: !5628, file: !162, line: 246, type: !4716)
!5633 = !DILocalVariable(name: "clus", arg: 2, scope: !5628, file: !162, line: 246, type: !96)
!5634 = !DILocation(line: 246, column: 64, scope: !5628)
!5635 = !DILocation(line: 246, column: 73, scope: !5628)
!5636 = !DILocation(line: 248, column: 20, scope: !5628)
!5637 = !DILocation(line: 248, column: 10, scope: !5628)
!5638 = !DILocation(line: 248, column: 25, scope: !5628)
!5639 = !DILocation(line: 248, column: 44, scope: !5628)
!5640 = !DILocation(line: 248, column: 49, scope: !5628)
!5641 = !DILocation(line: 248, column: 42, scope: !5628)
!5642 = !DILocation(line: 249, column: 5, scope: !5628)
!5643 = !DILocation(line: 249, column: 10, scope: !5628)
!5644 = !DILocation(line: 249, column: 3, scope: !5628)
!5645 = !DILocation(line: 248, column: 2, scope: !5628)
!5646 = !DISubprogram(name: "new_inode", scope: !59, file: !59, line: 2932, type: !2313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5647 = !DISubprogram(name: "iunique", scope: !59, file: !59, line: 2869, type: !5648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!5650, !445, !5650}
!5650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !193, line: 22, baseType: !580)
!5651 = !DISubprogram(name: "fat_fill_inode", scope: !162, file: !162, line: 420, type: !5652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!96, !369, !164}
!5654 = distinct !DISubprogram(name: "MSDOS_I", scope: !162, file: !162, line: 174, type: !5655, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5657)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!194, !369}
!5657 = !{!5658, !5659}
!5658 = !DILocalVariable(name: "inode", arg: 1, scope: !5654, file: !162, line: 174, type: !369)
!5659 = !DILocalVariable(name: "__mptr", scope: !5660, file: !162, line: 176, type: !160)
!5660 = distinct !DILexicalBlock(scope: !5654, file: !162, line: 176, column: 9)
!5661 = !DILocation(line: 174, column: 62, scope: !5654)
!5662 = !DILocation(line: 176, column: 9, scope: !5660)
!5663 = !DILocation(line: 176, column: 9, scope: !5654)
!5664 = !DILocation(line: 176, column: 2, scope: !5654)
!5665 = !DISubprogram(name: "fat_scan_logstart", scope: !162, file: !162, line: 332, type: !5666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{!96, !369, !96, !5668}
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5669 = distinct !DISubprogram(name: "fat_i_pos_read", scope: !162, file: !162, line: 259, type: !5670, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5672)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!244, !4716, !369}
!5672 = !{!5673, !5674, !5675}
!5673 = !DILocalVariable(name: "sbi", arg: 1, scope: !5669, file: !162, line: 259, type: !4716)
!5674 = !DILocalVariable(name: "inode", arg: 2, scope: !5669, file: !162, line: 260, type: !369)
!5675 = !DILocalVariable(name: "i_pos", scope: !5669, file: !162, line: 262, type: !244)
!5676 = !DILocation(line: 259, column: 59, scope: !5669)
!5677 = !DILocation(line: 260, column: 20, scope: !5669)
!5678 = !DILocation(line: 262, column: 2, scope: !5669)
!5679 = !DILocation(line: 262, column: 9, scope: !5669)
!5680 = !DILocation(line: 266, column: 18, scope: !5669)
!5681 = !DILocation(line: 266, column: 10, scope: !5669)
!5682 = !DILocation(line: 266, column: 26, scope: !5669)
!5683 = !DILocation(line: 266, column: 8, scope: !5669)
!5684 = !DILocation(line: 270, column: 9, scope: !5669)
!5685 = !DILocation(line: 271, column: 1, scope: !5669)
!5686 = !DILocation(line: 270, column: 2, scope: !5669)
