; ModuleID = 'fs/isofs/rock.c'
source_filename = "fs/isofs/rock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.41 }
%struct.atomic_t = type { i32 }
%union.anon.41 = type { i64 }
%struct.rock_state = type { ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.16 = type { ptr }
%struct.isofs_sb_info = type { i64, i64, i64, i64, i64, i32, i32, i8, i8, i8, i8, i16, i16, i16, %struct.kgid_t, %struct.kuid_t, ptr }
%struct.rock_ridge = type { [2 x i8], i8, i8, %union.anon.17 }
%union.anon.17 = type { %struct.RR_PX_s }
%struct.RR_PX_s = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.RR_RR_s = type { [1 x i8] }
%struct.SU_CE_s = type { [8 x i8], [8 x i8], [8 x i8] }
%struct.RR_NM_s = type { i8, [0 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.iso_directory_record = type { [1 x i8], [1 x i8], [8 x i8], [8 x i8], [7 x i8], [1 x i8], [1 x i8], [1 x i8], [4 x i8], [1 x i8], [0 x i8] }
%struct.SU_SP_s = type { [2 x i8], i8 }
%struct.buffer_head = type { i64, ptr, %union.anon.20, i64, i64, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%union.anon.20 = type { ptr }
%struct.SU_ER_s = type { i8, i8, i8, i8, [0 x i8] }
%struct.RR_PN_s = type { [8 x i8], [8 x i8] }
%struct.RR_TF_s = type { i8, [0 x %struct.stamp] }
%struct.stamp = type { [7 x i8] }
%struct.RR_SL_s = type { i8, %struct.SL_component }
%struct.SL_component = type { i8, i8, [0 x i8] }
%struct.RR_CL_s = type { [8 x i8] }
%struct.iso_inode_info = type { i64, i64, i32, i8, [3 x i8], i64, i64, i64, %struct.inode }
%struct.RR_ZF_s = type { [2 x i8], [2 x i8], [8 x i8] }
%struct.folio = type { %union.anon.21, %union.anon.36, %union.anon.38 }
%union.anon.21 = type { %struct.page }
%struct.page = type { i64, %union.anon.26, %union.anon.35, %struct.atomic_t, [8 x i8] }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %union.anon.28, ptr, %union.anon.30, i64 }
%union.anon.28 = type { %struct.list_head }
%union.anon.30 = type { i64 }
%union.anon.35 = type { %struct.atomic_t }
%union.anon.36 = type { %struct.page }
%union.anon.38 = type { %struct.page }
%struct.anon.18 = type { i16 }
%struct.anon.19 = type { i32 }
%struct.anon.33 = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Unsupported NM flag settings (%d)\0A\00", align 1, !dbg !0
@isofs_symlink_aops = hidden constant %struct.address_space_operations { ptr null, ptr @rock_ridge_symlink_read_folio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [48 x i8] c"\015rock: directory entry would overflow storage\0A\00", align 1, !dbg !4783
@.str.2 = private unnamed_addr constant [43 x i8] c"\015rock: sig=0x%02x, size=%d, remaining=%d\0A\00", align 1, !dbg !4788
@.str.3 = private unnamed_addr constant [66 x i8] c"\015rock: corrupted directory entry. extent=%d, offset=%d, size=%d\0A\00", align 1, !dbg !4793
@.str.4 = private unnamed_addr constant [38 x i8] c"Unable to read rock-ridge attributes\0A\00", align 1, !dbg !4798
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4803
@.str.6 = private unnamed_addr constant [24 x i8] c"\017ISO 9660 Extensions: \00", align 1, !dbg !4808
@.str.7 = private unnamed_addr constant [5 x i8] c"\01c%c\00", align 1, !dbg !4813
@.str.8 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1, !dbg !4818
@.str.9 = private unnamed_addr constant [40 x i8] c"Symlink component flag not implemented\0A\00", align 1, !dbg !4821
@.str.10 = private unnamed_addr constant [49 x i8] c"\014Attempt to read inode for relocated directory\0A\00", align 1, !dbg !4826
@.str.11 = private unnamed_addr constant [58 x i8] c"\013ISOFS: Recursive directory relocation is not supported\0A\00", align 1, !dbg !4831
@.str.12 = private unnamed_addr constant [48 x i8] c"\013ISOFS: Directory relocation points to itself\0A\00", align 1, !dbg !4836
@.str.13 = private unnamed_addr constant [45 x i8] c"\014isofs: Can't handle ZF block size of 2^%d\0A\00", align 1, !dbg !4838
@.str.14 = private unnamed_addr constant [49 x i8] c"\014isofs: Unknown ZF compression algorithm: %c%c\0A\00", align 1, !dbg !4843
@.str.15 = private unnamed_addr constant [28 x i8] c"unable to read i-node block\00", align 1, !dbg !4845
@.str.16 = private unnamed_addr constant [30 x i8] c"symlink spans iso9660 blocks\0A\00", align 1, !dbg !4850
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.17 = private unnamed_addr constant [45 x i8] c"Symlink component flag not implemented (%d)\0A\00", align 1, !dbg !4855
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @get_rock_ridge_filename(ptr noundef %de, ptr noundef %retname, ptr noundef %inode) #0 align 16 !dbg !4866 {
entry:
  %retval = alloca i32, align 4
  %de.addr = alloca ptr, align 8
  %retname.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %rs = alloca %struct.rock_state, align 8
  %rr = alloca ptr, align 8
  %sig = alloca i32, align 4
  %retnamlen = alloca i32, align 4
  %truncate = alloca i32, align 4
  %ret = alloca i32, align 4
  %p = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %de, ptr %de.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !4870, metadata !DIExpression()), !dbg !4894
  store ptr %retname, ptr %retname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %retname.addr, metadata !4871, metadata !DIExpression()), !dbg !4895
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4872, metadata !DIExpression()), !dbg !4896
  call void @llvm.lifetime.start.p0(i64 48, ptr %rs) #16, !dbg !4897
  call void @llvm.dbg.declare(metadata ptr %rs, metadata !4873, metadata !DIExpression()), !dbg !4898
  call void @llvm.lifetime.start.p0(i64 8, ptr %rr) #16, !dbg !4899
  call void @llvm.dbg.declare(metadata ptr %rr, metadata !4884, metadata !DIExpression()), !dbg !4900
  call void @llvm.lifetime.start.p0(i64 4, ptr %sig) #16, !dbg !4901
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !4885, metadata !DIExpression()), !dbg !4902
  call void @llvm.lifetime.start.p0(i64 4, ptr %retnamlen) #16, !dbg !4903
  call void @llvm.dbg.declare(metadata ptr %retnamlen, metadata !4886, metadata !DIExpression()), !dbg !4904
  store i32 0, ptr %retnamlen, align 4, !dbg !4904
  call void @llvm.lifetime.start.p0(i64 4, ptr %truncate) #16, !dbg !4905
  call void @llvm.dbg.declare(metadata ptr %truncate, metadata !4887, metadata !DIExpression()), !dbg !4906
  store i32 0, ptr %truncate, align 4, !dbg !4906
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4907
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4888, metadata !DIExpression()), !dbg !4908
  store i32 0, ptr %ret, align 4, !dbg !4908
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4909
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4889, metadata !DIExpression()), !dbg !4910
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !4911
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4890, metadata !DIExpression()), !dbg !4912
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4913
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !4915
  %1 = load ptr, ptr %i_sb, align 8, !dbg !4915
  %call = call ptr @ISOFS_SB(ptr noundef %1) #17, !dbg !4916
  %s_rock = getelementptr inbounds %struct.isofs_sb_info, ptr %call, i32 0, i32 11, !dbg !4917
  %bf.load = load i16, ptr %s_rock, align 4, !dbg !4917
  %bf.lshr = lshr i16 %bf.load, 1, !dbg !4917
  %bf.clear = and i16 %bf.lshr, 3, !dbg !4917
  %bf.cast = zext i16 %bf.clear to i32, !dbg !4917
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4916
  br i1 %tobool, label %if.end, label %if.then, !dbg !4918

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4919

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %retname.addr, align 8, !dbg !4920
  store i8 0, ptr %2, align 1, !dbg !4921
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !4922
  call void @init_rock_state(ptr noundef %rs, ptr noundef %3) #17, !dbg !4923
  %4 = load ptr, ptr %de.addr, align 8, !dbg !4924
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !4925
  call void @setup_rock_ridge(ptr noundef %4, ptr noundef %5, ptr noundef %rs) #17, !dbg !4926
  br label %repeat, !dbg !4926

repeat:                                           ; preds = %if.then104, %if.end
  call void @llvm.dbg.label(metadata !4891), !dbg !4927
  br label %while.cond, !dbg !4928

while.cond:                                       ; preds = %sw.epilog, %repeat
  %len1 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !4929
  %6 = load i32, ptr %len1, align 8, !dbg !4929
  %cmp = icmp sgt i32 %6, 2, !dbg !4930
  br i1 %cmp, label %while.body, label %while.end, !dbg !4928

while.body:                                       ; preds = %while.cond
  %chr = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !4931
  %7 = load ptr, ptr %chr, align 8, !dbg !4931
  store ptr %7, ptr %rr, align 8, !dbg !4933
  %8 = load ptr, ptr %rr, align 8, !dbg !4934
  %len2 = getelementptr inbounds %struct.rock_ridge, ptr %8, i32 0, i32 1, !dbg !4936
  %9 = load i8, ptr %len2, align 1, !dbg !4936
  %conv = zext i8 %9 to i32, !dbg !4934
  %cmp3 = icmp slt i32 %conv, 3, !dbg !4937
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !4938

if.then5:                                         ; preds = %while.body
  br label %out, !dbg !4939

if.end6:                                          ; preds = %while.body
  %chr7 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !4940
  %10 = load ptr, ptr %chr7, align 8, !dbg !4940
  %call8 = call i32 @isonum_721(ptr noundef %10) #17, !dbg !4941
  store i32 %call8, ptr %sig, align 4, !dbg !4942
  %11 = load i32, ptr %sig, align 4, !dbg !4943
  %call9 = call i32 @rock_check_overflow(ptr noundef %rs, i32 noundef %11) #17, !dbg !4945
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4945
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4946

if.then11:                                        ; preds = %if.end6
  br label %eio, !dbg !4947

if.end12:                                         ; preds = %if.end6
  %12 = load ptr, ptr %rr, align 8, !dbg !4948
  %len13 = getelementptr inbounds %struct.rock_ridge, ptr %12, i32 0, i32 1, !dbg !4949
  %13 = load i8, ptr %len13, align 1, !dbg !4949
  %conv14 = zext i8 %13 to i32, !dbg !4948
  %chr15 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !4950
  %14 = load ptr, ptr %chr15, align 8, !dbg !4951
  %idx.ext = sext i32 %conv14 to i64, !dbg !4951
  %add.ptr = getelementptr i8, ptr %14, i64 %idx.ext, !dbg !4951
  store ptr %add.ptr, ptr %chr15, align 8, !dbg !4951
  %15 = load ptr, ptr %rr, align 8, !dbg !4952
  %len16 = getelementptr inbounds %struct.rock_ridge, ptr %15, i32 0, i32 1, !dbg !4953
  %16 = load i8, ptr %len16, align 1, !dbg !4953
  %conv17 = zext i8 %16 to i32, !dbg !4952
  %len18 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !4954
  %17 = load i32, ptr %len18, align 8, !dbg !4955
  %sub = sub i32 %17, %conv17, !dbg !4955
  store i32 %sub, ptr %len18, align 8, !dbg !4955
  %len19 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !4956
  %18 = load i32, ptr %len19, align 8, !dbg !4956
  %cmp20 = icmp slt i32 %18, 0, !dbg !4958
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4959

if.then22:                                        ; preds = %if.end12
  br label %out, !dbg !4960

if.end23:                                         ; preds = %if.end12
  %19 = load i32, ptr %sig, align 4, !dbg !4961
  switch i32 %19, label %sw.default [
    i32 21074, label %sw.bb
    i32 20563, label %sw.bb29
    i32 17731, label %sw.bb34
    i32 19790, label %sw.bb43
    i32 17746, label %sw.bb100
  ], !dbg !4962

sw.bb:                                            ; preds = %if.end23
  %20 = load ptr, ptr %rr, align 8, !dbg !4963
  %u = getelementptr inbounds %struct.rock_ridge, ptr %20, i32 0, i32 3, !dbg !4966
  %flags = getelementptr inbounds %struct.RR_RR_s, ptr %u, i32 0, i32 0, !dbg !4967
  %arrayidx = getelementptr [1 x i8], ptr %flags, i64 0, i64 0, !dbg !4963
  %21 = load i8, ptr %arrayidx, align 1, !dbg !4963
  %conv24 = zext i8 %21 to i32, !dbg !4963
  %and = and i32 %conv24, 8, !dbg !4968
  %cmp25 = icmp eq i32 %and, 0, !dbg !4969
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4970

if.then27:                                        ; preds = %sw.bb
  br label %out, !dbg !4971

if.end28:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !4972

sw.bb29:                                          ; preds = %if.end23
  %22 = load ptr, ptr %rr, align 8, !dbg !4973
  %23 = load ptr, ptr %inode.addr, align 8, !dbg !4975
  %call30 = call i32 @check_sp(ptr noundef %22, ptr noundef %23) #17, !dbg !4976
  %tobool31 = icmp ne i32 %call30, 0, !dbg !4976
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4977

if.then32:                                        ; preds = %sw.bb29
  br label %out, !dbg !4978

if.end33:                                         ; preds = %sw.bb29
  br label %sw.epilog, !dbg !4979

sw.bb34:                                          ; preds = %if.end23
  %24 = load ptr, ptr %rr, align 8, !dbg !4980
  %u35 = getelementptr inbounds %struct.rock_ridge, ptr %24, i32 0, i32 3, !dbg !4981
  %extent = getelementptr inbounds %struct.SU_CE_s, ptr %u35, i32 0, i32 0, !dbg !4982
  %arraydecay = getelementptr inbounds [8 x i8], ptr %extent, i64 0, i64 0, !dbg !4980
  %call36 = call i32 @isonum_733(ptr noundef %arraydecay) #17, !dbg !4983
  %cont_extent = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 4, !dbg !4984
  store i32 %call36, ptr %cont_extent, align 8, !dbg !4985
  %25 = load ptr, ptr %rr, align 8, !dbg !4986
  %u37 = getelementptr inbounds %struct.rock_ridge, ptr %25, i32 0, i32 3, !dbg !4987
  %offset = getelementptr inbounds %struct.SU_CE_s, ptr %u37, i32 0, i32 1, !dbg !4988
  %arraydecay38 = getelementptr inbounds [8 x i8], ptr %offset, i64 0, i64 0, !dbg !4986
  %call39 = call i32 @isonum_733(ptr noundef %arraydecay38) #17, !dbg !4989
  %cont_offset = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 5, !dbg !4990
  store i32 %call39, ptr %cont_offset, align 4, !dbg !4991
  %26 = load ptr, ptr %rr, align 8, !dbg !4992
  %u40 = getelementptr inbounds %struct.rock_ridge, ptr %26, i32 0, i32 3, !dbg !4993
  %size = getelementptr inbounds %struct.SU_CE_s, ptr %u40, i32 0, i32 2, !dbg !4994
  %arraydecay41 = getelementptr inbounds [8 x i8], ptr %size, i64 0, i64 0, !dbg !4992
  %call42 = call i32 @isonum_733(ptr noundef %arraydecay41) #17, !dbg !4995
  %cont_size = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 3, !dbg !4996
  store i32 %call42, ptr %cont_size, align 4, !dbg !4997
  br label %sw.epilog, !dbg !4998

sw.bb43:                                          ; preds = %if.end23
  %27 = load i32, ptr %truncate, align 4, !dbg !4999
  %tobool44 = icmp ne i32 %27, 0, !dbg !4999
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !5001

if.then45:                                        ; preds = %sw.bb43
  br label %sw.epilog, !dbg !5002

if.end46:                                         ; preds = %sw.bb43
  %28 = load ptr, ptr %rr, align 8, !dbg !5003
  %len47 = getelementptr inbounds %struct.rock_ridge, ptr %28, i32 0, i32 1, !dbg !5005
  %29 = load i8, ptr %len47, align 1, !dbg !5005
  %conv48 = zext i8 %29 to i32, !dbg !5003
  %cmp49 = icmp slt i32 %conv48, 5, !dbg !5006
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5007

if.then51:                                        ; preds = %if.end46
  br label %sw.epilog, !dbg !5008

if.end52:                                         ; preds = %if.end46
  %30 = load ptr, ptr %rr, align 8, !dbg !5009
  %u53 = getelementptr inbounds %struct.rock_ridge, ptr %30, i32 0, i32 3, !dbg !5011
  %flags54 = getelementptr inbounds %struct.RR_NM_s, ptr %u53, i32 0, i32 0, !dbg !5012
  %31 = load i8, ptr %flags54, align 1, !dbg !5012
  %conv55 = zext i8 %31 to i32, !dbg !5009
  %and56 = and i32 %conv55, 6, !dbg !5013
  %tobool57 = icmp ne i32 %and56, 0, !dbg !5013
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !5014

if.then58:                                        ; preds = %if.end52
  br label %sw.epilog, !dbg !5015

if.end59:                                         ; preds = %if.end52
  %32 = load ptr, ptr %rr, align 8, !dbg !5016
  %u60 = getelementptr inbounds %struct.rock_ridge, ptr %32, i32 0, i32 3, !dbg !5018
  %flags61 = getelementptr inbounds %struct.RR_NM_s, ptr %u60, i32 0, i32 0, !dbg !5019
  %33 = load i8, ptr %flags61, align 1, !dbg !5019
  %conv62 = zext i8 %33 to i32, !dbg !5016
  %and63 = and i32 %conv62, -2, !dbg !5020
  %tobool64 = icmp ne i32 %and63, 0, !dbg !5020
  br i1 %tobool64, label %if.then65, label %if.end70, !dbg !5021

if.then65:                                        ; preds = %if.end59
  br label %do.body, !dbg !5022

do.body:                                          ; preds = %if.then65
  br label %do.cond, !dbg !5025

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5025

do.end:                                           ; preds = %do.cond
  %34 = load ptr, ptr %rr, align 8, !dbg !5022
  %u66 = getelementptr inbounds %struct.rock_ridge, ptr %34, i32 0, i32 3, !dbg !5022
  %flags67 = getelementptr inbounds %struct.RR_NM_s, ptr %u66, i32 0, i32 0, !dbg !5022
  %35 = load i8, ptr %flags67, align 1, !dbg !5022
  %conv68 = zext i8 %35 to i32, !dbg !5022
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %conv68) #18, !dbg !5022
  store i32 %call69, ptr %tmp, align 4, !dbg !5025
  %36 = load i32, ptr %tmp, align 4, !dbg !5022
  br label %sw.epilog, !dbg !5027

if.end70:                                         ; preds = %if.end59
  %37 = load ptr, ptr %rr, align 8, !dbg !5028
  %len71 = getelementptr inbounds %struct.rock_ridge, ptr %37, i32 0, i32 1, !dbg !5029
  %38 = load i8, ptr %len71, align 1, !dbg !5029
  %conv72 = zext i8 %38 to i32, !dbg !5028
  %sub73 = sub i32 %conv72, 5, !dbg !5030
  store i32 %sub73, ptr %len, align 4, !dbg !5031
  %39 = load i32, ptr %retnamlen, align 4, !dbg !5032
  %40 = load i32, ptr %len, align 4, !dbg !5034
  %add = add i32 %39, %40, !dbg !5035
  %cmp74 = icmp sge i32 %add, 254, !dbg !5036
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !5037

if.then76:                                        ; preds = %if.end70
  store i32 1, ptr %truncate, align 4, !dbg !5038
  br label %sw.epilog, !dbg !5040

if.end77:                                         ; preds = %if.end70
  %41 = load ptr, ptr %rr, align 8, !dbg !5041
  %u78 = getelementptr inbounds %struct.rock_ridge, ptr %41, i32 0, i32 3, !dbg !5042
  %name = getelementptr inbounds %struct.RR_NM_s, ptr %u78, i32 0, i32 1, !dbg !5043
  %arraydecay79 = getelementptr inbounds [0 x i8], ptr %name, i64 0, i64 0, !dbg !5041
  %42 = load i32, ptr %len, align 4, !dbg !5044
  %conv80 = sext i32 %42 to i64, !dbg !5044
  %call81 = call ptr @memchr(ptr noundef %arraydecay79, i32 noundef 0, i64 noundef %conv80) #17, !dbg !5045
  store ptr %call81, ptr %p, align 8, !dbg !5046
  %43 = load ptr, ptr %p, align 8, !dbg !5047
  %tobool82 = icmp ne ptr %43, null, !dbg !5047
  %lnot = xor i1 %tobool82, true, !dbg !5047
  %lnot83 = xor i1 %lnot, true, !dbg !5047
  %lnot.ext = zext i1 %lnot83 to i32, !dbg !5047
  %conv84 = sext i32 %lnot.ext to i64, !dbg !5047
  %expval = call i64 @llvm.expect.i64(i64 %conv84, i64 0), !dbg !5047
  %tobool85 = icmp ne i64 %expval, 0, !dbg !5047
  br i1 %tobool85, label %if.then86, label %if.end91, !dbg !5049

if.then86:                                        ; preds = %if.end77
  %44 = load ptr, ptr %p, align 8, !dbg !5050
  %45 = load ptr, ptr %rr, align 8, !dbg !5051
  %u87 = getelementptr inbounds %struct.rock_ridge, ptr %45, i32 0, i32 3, !dbg !5052
  %name88 = getelementptr inbounds %struct.RR_NM_s, ptr %u87, i32 0, i32 1, !dbg !5053
  %arraydecay89 = getelementptr inbounds [0 x i8], ptr %name88, i64 0, i64 0, !dbg !5051
  %sub.ptr.lhs.cast = ptrtoint ptr %44 to i64, !dbg !5054
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay89 to i64, !dbg !5054
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5054
  %conv90 = trunc i64 %sub.ptr.sub to i32, !dbg !5050
  store i32 %conv90, ptr %len, align 4, !dbg !5055
  br label %if.end91, !dbg !5056

if.end91:                                         ; preds = %if.then86, %if.end77
  %46 = load ptr, ptr %retname.addr, align 8, !dbg !5057
  %47 = load i32, ptr %retnamlen, align 4, !dbg !5058
  %idx.ext92 = sext i32 %47 to i64, !dbg !5059
  %add.ptr93 = getelementptr i8, ptr %46, i64 %idx.ext92, !dbg !5059
  %48 = load ptr, ptr %rr, align 8, !dbg !5060
  %u94 = getelementptr inbounds %struct.rock_ridge, ptr %48, i32 0, i32 3, !dbg !5061
  %name95 = getelementptr inbounds %struct.RR_NM_s, ptr %u94, i32 0, i32 1, !dbg !5062
  %arraydecay96 = getelementptr inbounds [0 x i8], ptr %name95, i64 0, i64 0, !dbg !5063
  %49 = load i32, ptr %len, align 4, !dbg !5064
  %conv97 = sext i32 %49 to i64, !dbg !5064
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr93, ptr align 1 %arraydecay96, i64 %conv97, i1 false), !dbg !5063
  %50 = load i32, ptr %len, align 4, !dbg !5065
  %51 = load i32, ptr %retnamlen, align 4, !dbg !5066
  %add98 = add i32 %51, %50, !dbg !5066
  store i32 %add98, ptr %retnamlen, align 4, !dbg !5066
  %52 = load ptr, ptr %retname.addr, align 8, !dbg !5067
  %53 = load i32, ptr %retnamlen, align 4, !dbg !5068
  %idxprom = sext i32 %53 to i64, !dbg !5067
  %arrayidx99 = getelementptr i8, ptr %52, i64 %idxprom, !dbg !5067
  store i8 0, ptr %arrayidx99, align 1, !dbg !5069
  br label %sw.epilog, !dbg !5070

sw.bb100:                                         ; preds = %if.end23
  %buffer = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 0, !dbg !5071
  %54 = load ptr, ptr %buffer, align 8, !dbg !5071
  call void @kfree(ptr noundef %54) #17, !dbg !5072
  store i32 -1, ptr %retval, align 4, !dbg !5073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5073

sw.default:                                       ; preds = %if.end23
  br label %sw.epilog, !dbg !5074

sw.epilog:                                        ; preds = %sw.default, %if.end91, %if.then76, %do.end, %if.then58, %if.then51, %if.then45, %sw.bb34, %if.end33, %if.end28
  br label %while.cond, !dbg !4928, !llvm.loop !5075

while.end:                                        ; preds = %while.cond
  %call101 = call i32 @rock_continue(ptr noundef %rs) #17, !dbg !5079
  store i32 %call101, ptr %ret, align 4, !dbg !5080
  %55 = load i32, ptr %ret, align 4, !dbg !5081
  %cmp102 = icmp eq i32 %55, 0, !dbg !5083
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !5084

if.then104:                                       ; preds = %while.end
  br label %repeat, !dbg !5085

if.end105:                                        ; preds = %while.end
  %56 = load i32, ptr %ret, align 4, !dbg !5086
  %cmp106 = icmp eq i32 %56, 1, !dbg !5088
  br i1 %cmp106, label %if.then108, label %if.end109, !dbg !5089

if.then108:                                       ; preds = %if.end105
  %57 = load i32, ptr %retnamlen, align 4, !dbg !5090
  store i32 %57, ptr %retval, align 4, !dbg !5091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5091

if.end109:                                        ; preds = %if.end105
  br label %out, !dbg !5092

out:                                              ; preds = %eio, %if.end109, %if.then32, %if.then27, %if.then22, %if.then5
  call void @llvm.dbg.label(metadata !4892), !dbg !5093
  %buffer110 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 0, !dbg !5094
  %58 = load ptr, ptr %buffer110, align 8, !dbg !5094
  call void @kfree(ptr noundef %58) #17, !dbg !5095
  %59 = load i32, ptr %ret, align 4, !dbg !5096
  store i32 %59, ptr %retval, align 4, !dbg !5097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5097

eio:                                              ; preds = %if.then11
  call void @llvm.dbg.label(metadata !4893), !dbg !5098
  store i32 -5, ptr %ret, align 4, !dbg !5099
  br label %out, !dbg !5100

cleanup:                                          ; preds = %out, %if.then108, %sw.bb100, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !5101
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5101
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5101
  call void @llvm.lifetime.end.p0(i64 4, ptr %truncate) #16, !dbg !5101
  call void @llvm.lifetime.end.p0(i64 4, ptr %retnamlen) #16, !dbg !5101
  call void @llvm.lifetime.end.p0(i64 4, ptr %sig) #16, !dbg !5101
  call void @llvm.lifetime.end.p0(i64 8, ptr %rr) #16, !dbg !5101
  call void @llvm.lifetime.end.p0(i64 48, ptr %rs) #16, !dbg !5101
  %60 = load i32, ptr %retval, align 4, !dbg !5101
  ret i32 %60, !dbg !5101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ISOFS_SB(ptr noundef %sb) #3 align 16 !dbg !5102 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5136, metadata !DIExpression()), !dbg !5137
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5138
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5139
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5139
  ret ptr %1, !dbg !5140
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_rock_state(ptr noundef %rs, ptr noundef %inode) #0 align 16 !dbg !5141 {
entry:
  %rs.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  store ptr %rs, ptr %rs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rs.addr, metadata !5146, metadata !DIExpression()), !dbg !5148
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5147, metadata !DIExpression()), !dbg !5149
  %0 = load ptr, ptr %rs.addr, align 8, !dbg !5150
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false), !dbg !5151
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5152
  %2 = load ptr, ptr %rs.addr, align 8, !dbg !5153
  %inode1 = getelementptr inbounds %struct.rock_state, ptr %2, i32 0, i32 7, !dbg !5154
  store ptr %1, ptr %inode1, align 8, !dbg !5155
  ret void, !dbg !5156
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @setup_rock_ridge(ptr noundef %de, ptr noundef %inode, ptr noundef %rs) #0 align 16 !dbg !5157 {
entry:
  %de.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %rs.addr = alloca ptr, align 8
  store ptr %de, ptr %de.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !5161, metadata !DIExpression()), !dbg !5164
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5162, metadata !DIExpression()), !dbg !5165
  store ptr %rs, ptr %rs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rs.addr, metadata !5163, metadata !DIExpression()), !dbg !5166
  %0 = load ptr, ptr %de.addr, align 8, !dbg !5167
  %name_len = getelementptr inbounds %struct.iso_directory_record, ptr %0, i32 0, i32 9, !dbg !5168
  %arrayidx = getelementptr [1 x i8], ptr %name_len, i64 0, i64 0, !dbg !5167
  %1 = load i8, ptr %arrayidx, align 1, !dbg !5167
  %conv = zext i8 %1 to i64, !dbg !5167
  %add = add i64 33, %conv, !dbg !5169
  %conv1 = trunc i64 %add to i32, !dbg !5170
  %2 = load ptr, ptr %rs.addr, align 8, !dbg !5171
  %len = getelementptr inbounds %struct.rock_state, ptr %2, i32 0, i32 2, !dbg !5172
  store i32 %conv1, ptr %len, align 8, !dbg !5173
  %3 = load ptr, ptr %rs.addr, align 8, !dbg !5174
  %len2 = getelementptr inbounds %struct.rock_state, ptr %3, i32 0, i32 2, !dbg !5176
  %4 = load i32, ptr %len2, align 8, !dbg !5176
  %and = and i32 %4, 1, !dbg !5177
  %tobool = icmp ne i32 %and, 0, !dbg !5177
  br i1 %tobool, label %if.then, label %if.end, !dbg !5178

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %rs.addr, align 8, !dbg !5179
  %len3 = getelementptr inbounds %struct.rock_state, ptr %5, i32 0, i32 2, !dbg !5180
  %6 = load i32, ptr %len3, align 8, !dbg !5181
  %inc = add i32 %6, 1, !dbg !5181
  store i32 %inc, ptr %len3, align 8, !dbg !5181
  br label %if.end, !dbg !5182

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %de.addr, align 8, !dbg !5183
  %8 = load ptr, ptr %rs.addr, align 8, !dbg !5184
  %len4 = getelementptr inbounds %struct.rock_state, ptr %8, i32 0, i32 2, !dbg !5185
  %9 = load i32, ptr %len4, align 8, !dbg !5185
  %idx.ext = sext i32 %9 to i64, !dbg !5186
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.ext, !dbg !5186
  %10 = load ptr, ptr %rs.addr, align 8, !dbg !5187
  %chr = getelementptr inbounds %struct.rock_state, ptr %10, i32 0, i32 1, !dbg !5188
  store ptr %add.ptr, ptr %chr, align 8, !dbg !5189
  %11 = load ptr, ptr %de.addr, align 8, !dbg !5190
  %12 = load i8, ptr %11, align 1, !dbg !5191
  %conv5 = zext i8 %12 to i32, !dbg !5191
  %13 = load ptr, ptr %rs.addr, align 8, !dbg !5192
  %len6 = getelementptr inbounds %struct.rock_state, ptr %13, i32 0, i32 2, !dbg !5193
  %14 = load i32, ptr %len6, align 8, !dbg !5193
  %sub = sub i32 %conv5, %14, !dbg !5194
  %15 = load ptr, ptr %rs.addr, align 8, !dbg !5195
  %len7 = getelementptr inbounds %struct.rock_state, ptr %15, i32 0, i32 2, !dbg !5196
  store i32 %sub, ptr %len7, align 8, !dbg !5197
  %16 = load ptr, ptr %rs.addr, align 8, !dbg !5198
  %len8 = getelementptr inbounds %struct.rock_state, ptr %16, i32 0, i32 2, !dbg !5200
  %17 = load i32, ptr %len8, align 8, !dbg !5200
  %cmp = icmp slt i32 %17, 0, !dbg !5201
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !5202

if.then10:                                        ; preds = %if.end
  %18 = load ptr, ptr %rs.addr, align 8, !dbg !5203
  %len11 = getelementptr inbounds %struct.rock_state, ptr %18, i32 0, i32 2, !dbg !5204
  store i32 0, ptr %len11, align 8, !dbg !5205
  br label %if.end12, !dbg !5203

if.end12:                                         ; preds = %if.then10, %if.end
  %19 = load ptr, ptr %inode.addr, align 8, !dbg !5206
  %i_sb = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 9, !dbg !5208
  %20 = load ptr, ptr %i_sb, align 8, !dbg !5208
  %call = call ptr @ISOFS_SB(ptr noundef %20) #17, !dbg !5209
  %s_rock_offset = getelementptr inbounds %struct.isofs_sb_info, ptr %call, i32 0, i32 5, !dbg !5210
  %21 = load i32, ptr %s_rock_offset, align 8, !dbg !5210
  %cmp13 = icmp ne i32 %21, -1, !dbg !5211
  br i1 %cmp13, label %if.then15, label %if.end33, !dbg !5212

if.then15:                                        ; preds = %if.end12
  %22 = load ptr, ptr %inode.addr, align 8, !dbg !5213
  %i_sb16 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 9, !dbg !5215
  %23 = load ptr, ptr %i_sb16, align 8, !dbg !5215
  %call17 = call ptr @ISOFS_SB(ptr noundef %23) #17, !dbg !5216
  %s_rock_offset18 = getelementptr inbounds %struct.isofs_sb_info, ptr %call17, i32 0, i32 5, !dbg !5217
  %24 = load i32, ptr %s_rock_offset18, align 8, !dbg !5217
  %25 = load ptr, ptr %rs.addr, align 8, !dbg !5218
  %len19 = getelementptr inbounds %struct.rock_state, ptr %25, i32 0, i32 2, !dbg !5219
  %26 = load i32, ptr %len19, align 8, !dbg !5220
  %sub20 = sub i32 %26, %24, !dbg !5220
  store i32 %sub20, ptr %len19, align 8, !dbg !5220
  %27 = load ptr, ptr %inode.addr, align 8, !dbg !5221
  %i_sb21 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 9, !dbg !5222
  %28 = load ptr, ptr %i_sb21, align 8, !dbg !5222
  %call22 = call ptr @ISOFS_SB(ptr noundef %28) #17, !dbg !5223
  %s_rock_offset23 = getelementptr inbounds %struct.isofs_sb_info, ptr %call22, i32 0, i32 5, !dbg !5224
  %29 = load i32, ptr %s_rock_offset23, align 8, !dbg !5224
  %30 = load ptr, ptr %rs.addr, align 8, !dbg !5225
  %chr24 = getelementptr inbounds %struct.rock_state, ptr %30, i32 0, i32 1, !dbg !5226
  %31 = load ptr, ptr %chr24, align 8, !dbg !5227
  %idx.ext25 = sext i32 %29 to i64, !dbg !5227
  %add.ptr26 = getelementptr i8, ptr %31, i64 %idx.ext25, !dbg !5227
  store ptr %add.ptr26, ptr %chr24, align 8, !dbg !5227
  %32 = load ptr, ptr %rs.addr, align 8, !dbg !5228
  %len27 = getelementptr inbounds %struct.rock_state, ptr %32, i32 0, i32 2, !dbg !5230
  %33 = load i32, ptr %len27, align 8, !dbg !5230
  %cmp28 = icmp slt i32 %33, 0, !dbg !5231
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !5232

if.then30:                                        ; preds = %if.then15
  %34 = load ptr, ptr %rs.addr, align 8, !dbg !5233
  %len31 = getelementptr inbounds %struct.rock_state, ptr %34, i32 0, i32 2, !dbg !5234
  store i32 0, ptr %len31, align 8, !dbg !5235
  br label %if.end32, !dbg !5233

if.end32:                                         ; preds = %if.then30, %if.then15
  br label %if.end33, !dbg !5236

if.end33:                                         ; preds = %if.end32, %if.end12
  ret void, !dbg !5237
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @isonum_721(ptr noundef %p) #3 align 16 !dbg !5238 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5244
  %call = call zeroext i16 @get_unaligned_le16(ptr noundef %0) #17, !dbg !5245
  %conv = zext i16 %call to i32, !dbg !5245
  ret i32 %conv, !dbg !5246
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rock_check_overflow(ptr noundef %rs, i32 noundef %sig) #0 align 16 !dbg !5247 {
entry:
  %retval = alloca i32, align 4
  %rs.addr = alloca ptr, align 8
  %sig.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rs, ptr %rs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rs.addr, metadata !5251, metadata !DIExpression()), !dbg !5254
  store i32 %sig, ptr %sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !5252, metadata !DIExpression()), !dbg !5255
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5253, metadata !DIExpression()), !dbg !5257
  %0 = load i32, ptr %sig.addr, align 4, !dbg !5258
  switch i32 %0, label %sw.default [
    i32 20563, label %sw.bb
    i32 17731, label %sw.bb1
    i32 21061, label %sw.bb2
    i32 21074, label %sw.bb3
    i32 22608, label %sw.bb4
    i32 20048, label %sw.bb5
    i32 19539, label %sw.bb6
    i32 19790, label %sw.bb7
    i32 19523, label %sw.bb8
    i32 19536, label %sw.bb9
    i32 18004, label %sw.bb10
    i32 18010, label %sw.bb11
  ], !dbg !5259

sw.bb:                                            ; preds = %entry
  store i32 3, ptr %len, align 4, !dbg !5260
  br label %sw.epilog, !dbg !5262

sw.bb1:                                           ; preds = %entry
  store i32 24, ptr %len, align 4, !dbg !5263
  br label %sw.epilog, !dbg !5264

sw.bb2:                                           ; preds = %entry
  store i32 4, ptr %len, align 4, !dbg !5265
  br label %sw.epilog, !dbg !5266

sw.bb3:                                           ; preds = %entry
  store i32 1, ptr %len, align 4, !dbg !5267
  br label %sw.epilog, !dbg !5268

sw.bb4:                                           ; preds = %entry
  store i32 32, ptr %len, align 4, !dbg !5269
  br label %sw.epilog, !dbg !5270

sw.bb5:                                           ; preds = %entry
  store i32 16, ptr %len, align 4, !dbg !5271
  br label %sw.epilog, !dbg !5272

sw.bb6:                                           ; preds = %entry
  store i32 3, ptr %len, align 4, !dbg !5273
  br label %sw.epilog, !dbg !5274

sw.bb7:                                           ; preds = %entry
  store i32 1, ptr %len, align 4, !dbg !5275
  br label %sw.epilog, !dbg !5276

sw.bb8:                                           ; preds = %entry
  store i32 8, ptr %len, align 4, !dbg !5277
  br label %sw.epilog, !dbg !5278

sw.bb9:                                           ; preds = %entry
  store i32 8, ptr %len, align 4, !dbg !5279
  br label %sw.epilog, !dbg !5280

sw.bb10:                                          ; preds = %entry
  store i32 1, ptr %len, align 4, !dbg !5281
  br label %sw.epilog, !dbg !5282

sw.bb11:                                          ; preds = %entry
  store i32 12, ptr %len, align 4, !dbg !5283
  br label %sw.epilog, !dbg !5284

sw.default:                                       ; preds = %entry
  store i32 0, ptr %len, align 4, !dbg !5285
  br label %sw.epilog, !dbg !5286

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %len, align 4, !dbg !5287
  %conv = sext i32 %1 to i64, !dbg !5287
  %add = add i64 %conv, 4, !dbg !5287
  %conv12 = trunc i64 %add to i32, !dbg !5287
  store i32 %conv12, ptr %len, align 4, !dbg !5287
  %2 = load i32, ptr %len, align 4, !dbg !5288
  %3 = load ptr, ptr %rs.addr, align 8, !dbg !5290
  %len13 = getelementptr inbounds %struct.rock_state, ptr %3, i32 0, i32 2, !dbg !5291
  %4 = load i32, ptr %len13, align 8, !dbg !5291
  %cmp = icmp sgt i32 %2, %4, !dbg !5292
  br i1 %cmp, label %if.then, label %if.end, !dbg !5293

if.then:                                          ; preds = %sw.epilog
  br label %do.body, !dbg !5294

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5297

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5297

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #18, !dbg !5294
  store i32 %call, ptr %tmp, align 4, !dbg !5297
  %5 = load i32, ptr %tmp, align 4, !dbg !5294
  br label %do.body15, !dbg !5299

do.body15:                                        ; preds = %do.end
  br label %do.cond16, !dbg !5301

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5301

do.end17:                                         ; preds = %do.cond16
  %6 = load i32, ptr %sig.addr, align 4, !dbg !5299
  %7 = load i32, ptr %len, align 4, !dbg !5299
  %8 = load ptr, ptr %rs.addr, align 8, !dbg !5299
  %len19 = getelementptr inbounds %struct.rock_state, ptr %8, i32 0, i32 2, !dbg !5299
  %9 = load i32, ptr %len19, align 8, !dbg !5299
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %6, i32 noundef %7, i32 noundef %9) #18, !dbg !5299
  store i32 %call20, ptr %tmp18, align 4, !dbg !5301
  %10 = load i32, ptr %tmp18, align 4, !dbg !5299
  store i32 -5, ptr %retval, align 4, !dbg !5303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5303

if.end:                                           ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !5304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5304

cleanup:                                          ; preds = %if.end, %do.end17
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !5305
  %11 = load i32, ptr %retval, align 4, !dbg !5305
  ret i32 %11, !dbg !5305
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_sp(ptr noundef %rr, ptr noundef %inode) #0 align 16 !dbg !5306 {
entry:
  %retval = alloca i32, align 4
  %rr.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  store ptr %rr, ptr %rr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rr.addr, metadata !5310, metadata !DIExpression()), !dbg !5312
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5311, metadata !DIExpression()), !dbg !5313
  %0 = load ptr, ptr %rr.addr, align 8, !dbg !5314
  %u = getelementptr inbounds %struct.rock_ridge, ptr %0, i32 0, i32 3, !dbg !5316
  %magic = getelementptr inbounds %struct.SU_SP_s, ptr %u, i32 0, i32 0, !dbg !5317
  %arrayidx = getelementptr [2 x i8], ptr %magic, i64 0, i64 0, !dbg !5314
  %1 = load i8, ptr %arrayidx, align 1, !dbg !5314
  %conv = zext i8 %1 to i32, !dbg !5314
  %cmp = icmp ne i32 %conv, 190, !dbg !5318
  br i1 %cmp, label %if.then, label %if.end, !dbg !5319

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5320
  br label %return, !dbg !5320

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rr.addr, align 8, !dbg !5321
  %u2 = getelementptr inbounds %struct.rock_ridge, ptr %2, i32 0, i32 3, !dbg !5323
  %magic3 = getelementptr inbounds %struct.SU_SP_s, ptr %u2, i32 0, i32 0, !dbg !5324
  %arrayidx4 = getelementptr [2 x i8], ptr %magic3, i64 0, i64 1, !dbg !5321
  %3 = load i8, ptr %arrayidx4, align 1, !dbg !5321
  %conv5 = zext i8 %3 to i32, !dbg !5321
  %cmp6 = icmp ne i32 %conv5, 239, !dbg !5325
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5326

if.then8:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !5327
  br label %return, !dbg !5327

if.end9:                                          ; preds = %if.end
  %4 = load ptr, ptr %rr.addr, align 8, !dbg !5328
  %u10 = getelementptr inbounds %struct.rock_ridge, ptr %4, i32 0, i32 3, !dbg !5329
  %skip = getelementptr inbounds %struct.SU_SP_s, ptr %u10, i32 0, i32 1, !dbg !5330
  %5 = load i8, ptr %skip, align 1, !dbg !5330
  %conv11 = zext i8 %5 to i32, !dbg !5328
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5331
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9, !dbg !5332
  %7 = load ptr, ptr %i_sb, align 8, !dbg !5332
  %call = call ptr @ISOFS_SB(ptr noundef %7) #17, !dbg !5333
  %s_rock_offset = getelementptr inbounds %struct.isofs_sb_info, ptr %call, i32 0, i32 5, !dbg !5334
  store i32 %conv11, ptr %s_rock_offset, align 8, !dbg !5335
  store i32 0, ptr %retval, align 4, !dbg !5336
  br label %return, !dbg !5336

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !5337
  ret i32 %8, !dbg !5337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @isonum_733(ptr noundef %p) #3 align 16 !dbg !5338 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5340, metadata !DIExpression()), !dbg !5341
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5342
  %call = call i32 @get_unaligned_le32(ptr noundef %0) #17, !dbg !5343
  ret i32 %call, !dbg !5344
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5345 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5349 dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5353 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rock_continue(ptr noundef %rs) #0 align 16 !dbg !5356 {
entry:
  %retval = alloca i32, align 4
  %rs.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %blocksize = alloca i32, align 4
  %min_de_size = alloca i32, align 4
  %tmp = alloca i32, align 4
  %bh = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store ptr %rs, ptr %rs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rs.addr, metadata !5360, metadata !DIExpression()), !dbg !5393
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5394
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5361, metadata !DIExpression()), !dbg !5395
  store i32 1, ptr %ret, align 4, !dbg !5395
  call void @llvm.lifetime.start.p0(i64 4, ptr %blocksize) #16, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %blocksize, metadata !5362, metadata !DIExpression()), !dbg !5397
  %0 = load ptr, ptr %rs.addr, align 8, !dbg !5398
  %inode = getelementptr inbounds %struct.rock_state, ptr %0, i32 0, i32 7, !dbg !5399
  %1 = load ptr, ptr %inode, align 8, !dbg !5399
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 21, !dbg !5400
  %2 = load i8, ptr %i_blkbits, align 2, !dbg !5400
  %conv = zext i8 %2 to i32, !dbg !5398
  %shl = shl i32 1, %conv, !dbg !5401
  store i32 %shl, ptr %blocksize, align 4, !dbg !5397
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_de_size) #16, !dbg !5402
  call void @llvm.dbg.declare(metadata ptr %min_de_size, metadata !5363, metadata !DIExpression()), !dbg !5403
  store i32 4, ptr %min_de_size, align 4, !dbg !5403
  %3 = load ptr, ptr %rs.addr, align 8, !dbg !5404
  %buffer = getelementptr inbounds %struct.rock_state, ptr %3, i32 0, i32 0, !dbg !5405
  %4 = load ptr, ptr %buffer, align 8, !dbg !5405
  call void @kfree(ptr noundef %4) #17, !dbg !5406
  %5 = load ptr, ptr %rs.addr, align 8, !dbg !5407
  %buffer1 = getelementptr inbounds %struct.rock_state, ptr %5, i32 0, i32 0, !dbg !5408
  store ptr null, ptr %buffer1, align 8, !dbg !5409
  %6 = load ptr, ptr %rs.addr, align 8, !dbg !5410
  %cont_offset = getelementptr inbounds %struct.rock_state, ptr %6, i32 0, i32 5, !dbg !5412
  %7 = load i32, ptr %cont_offset, align 4, !dbg !5412
  %8 = load i32, ptr %blocksize, align 4, !dbg !5413
  %sub = sub i32 %8, 4, !dbg !5414
  %cmp = icmp ugt i32 %7, %sub, !dbg !5415
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5416

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %rs.addr, align 8, !dbg !5417
  %cont_size = getelementptr inbounds %struct.rock_state, ptr %9, i32 0, i32 3, !dbg !5418
  %10 = load i32, ptr %cont_size, align 4, !dbg !5418
  %11 = load i32, ptr %blocksize, align 4, !dbg !5419
  %cmp3 = icmp ugt i32 %10, %11, !dbg !5420
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !5421

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %12 = load ptr, ptr %rs.addr, align 8, !dbg !5422
  %cont_offset6 = getelementptr inbounds %struct.rock_state, ptr %12, i32 0, i32 5, !dbg !5423
  %13 = load i32, ptr %cont_offset6, align 4, !dbg !5423
  %14 = load ptr, ptr %rs.addr, align 8, !dbg !5424
  %cont_size7 = getelementptr inbounds %struct.rock_state, ptr %14, i32 0, i32 3, !dbg !5425
  %15 = load i32, ptr %cont_size7, align 4, !dbg !5425
  %add = add i32 %13, %15, !dbg !5426
  %16 = load i32, ptr %blocksize, align 4, !dbg !5427
  %cmp8 = icmp ugt i32 %add, %16, !dbg !5428
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5429

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  br label %do.body, !dbg !5430

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5433

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5433

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %rs.addr, align 8, !dbg !5430
  %cont_extent = getelementptr inbounds %struct.rock_state, ptr %17, i32 0, i32 4, !dbg !5430
  %18 = load i32, ptr %cont_extent, align 8, !dbg !5430
  %19 = load ptr, ptr %rs.addr, align 8, !dbg !5430
  %cont_offset10 = getelementptr inbounds %struct.rock_state, ptr %19, i32 0, i32 5, !dbg !5430
  %20 = load i32, ptr %cont_offset10, align 4, !dbg !5430
  %21 = load ptr, ptr %rs.addr, align 8, !dbg !5430
  %cont_size11 = getelementptr inbounds %struct.rock_state, ptr %21, i32 0, i32 3, !dbg !5430
  %22 = load i32, ptr %cont_size11, align 4, !dbg !5430
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %18, i32 noundef %20, i32 noundef %22) #18, !dbg !5430
  store i32 %call, ptr %tmp, align 4, !dbg !5433
  %23 = load i32, ptr %tmp, align 4, !dbg !5430
  store i32 -5, ptr %ret, align 4, !dbg !5435
  br label %out, !dbg !5436

if.end:                                           ; preds = %lor.lhs.false5
  %24 = load ptr, ptr %rs.addr, align 8, !dbg !5437
  %cont_extent12 = getelementptr inbounds %struct.rock_state, ptr %24, i32 0, i32 4, !dbg !5438
  %25 = load i32, ptr %cont_extent12, align 8, !dbg !5438
  %tobool = icmp ne i32 %25, 0, !dbg !5437
  br i1 %tobool, label %if.then13, label %if.end47, !dbg !5439

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #16, !dbg !5440
  call void @llvm.dbg.declare(metadata ptr %bh, metadata !5364, metadata !DIExpression()), !dbg !5441
  %26 = load ptr, ptr %rs.addr, align 8, !dbg !5442
  %cont_size14 = getelementptr inbounds %struct.rock_state, ptr %26, i32 0, i32 3, !dbg !5443
  %27 = load i32, ptr %cont_size14, align 4, !dbg !5443
  %conv15 = sext i32 %27 to i64, !dbg !5442
  %call16 = call noalias ptr @kmalloc(i64 noundef %conv15, i32 noundef 3264) #19, !dbg !5444
  %28 = load ptr, ptr %rs.addr, align 8, !dbg !5445
  %buffer17 = getelementptr inbounds %struct.rock_state, ptr %28, i32 0, i32 0, !dbg !5446
  store ptr %call16, ptr %buffer17, align 8, !dbg !5447
  %29 = load ptr, ptr %rs.addr, align 8, !dbg !5448
  %buffer18 = getelementptr inbounds %struct.rock_state, ptr %29, i32 0, i32 0, !dbg !5450
  %30 = load ptr, ptr %buffer18, align 8, !dbg !5450
  %tobool19 = icmp ne ptr %30, null, !dbg !5448
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !5451

if.then20:                                        ; preds = %if.then13
  store i32 -12, ptr %ret, align 4, !dbg !5452
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5454

if.end21:                                         ; preds = %if.then13
  store i32 -5, ptr %ret, align 4, !dbg !5455
  %31 = load ptr, ptr %rs.addr, align 8, !dbg !5456
  %cont_loops = getelementptr inbounds %struct.rock_state, ptr %31, i32 0, i32 6, !dbg !5458
  %32 = load i32, ptr %cont_loops, align 8, !dbg !5459
  %inc = add i32 %32, 1, !dbg !5459
  store i32 %inc, ptr %cont_loops, align 8, !dbg !5459
  %cmp22 = icmp sge i32 %inc, 32, !dbg !5460
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5461

if.then24:                                        ; preds = %if.end21
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5462

if.end25:                                         ; preds = %if.end21
  %33 = load ptr, ptr %rs.addr, align 8, !dbg !5463
  %inode26 = getelementptr inbounds %struct.rock_state, ptr %33, i32 0, i32 7, !dbg !5464
  %34 = load ptr, ptr %inode26, align 8, !dbg !5464
  %i_sb = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 9, !dbg !5465
  %35 = load ptr, ptr %i_sb, align 8, !dbg !5465
  %36 = load ptr, ptr %rs.addr, align 8, !dbg !5466
  %cont_extent27 = getelementptr inbounds %struct.rock_state, ptr %36, i32 0, i32 4, !dbg !5467
  %37 = load i32, ptr %cont_extent27, align 8, !dbg !5467
  %conv28 = sext i32 %37 to i64, !dbg !5466
  %call29 = call ptr @sb_bread(ptr noundef %35, i64 noundef %conv28) #17, !dbg !5468
  store ptr %call29, ptr %bh, align 8, !dbg !5469
  %38 = load ptr, ptr %bh, align 8, !dbg !5470
  %tobool30 = icmp ne ptr %38, null, !dbg !5470
  br i1 %tobool30, label %if.then31, label %if.end41, !dbg !5472

if.then31:                                        ; preds = %if.end25
  %39 = load ptr, ptr %rs.addr, align 8, !dbg !5473
  %buffer32 = getelementptr inbounds %struct.rock_state, ptr %39, i32 0, i32 0, !dbg !5475
  %40 = load ptr, ptr %buffer32, align 8, !dbg !5475
  %41 = load ptr, ptr %bh, align 8, !dbg !5476
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 5, !dbg !5477
  %42 = load ptr, ptr %b_data, align 8, !dbg !5477
  %43 = load ptr, ptr %rs.addr, align 8, !dbg !5478
  %cont_offset33 = getelementptr inbounds %struct.rock_state, ptr %43, i32 0, i32 5, !dbg !5479
  %44 = load i32, ptr %cont_offset33, align 4, !dbg !5479
  %idx.ext = sext i32 %44 to i64, !dbg !5480
  %add.ptr = getelementptr i8, ptr %42, i64 %idx.ext, !dbg !5480
  %45 = load ptr, ptr %rs.addr, align 8, !dbg !5481
  %cont_size34 = getelementptr inbounds %struct.rock_state, ptr %45, i32 0, i32 3, !dbg !5482
  %46 = load i32, ptr %cont_size34, align 4, !dbg !5482
  %conv35 = sext i32 %46 to i64, !dbg !5481
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr align 1 %add.ptr, i64 %conv35, i1 false), !dbg !5483
  %47 = load ptr, ptr %bh, align 8, !dbg !5484
  call void @put_bh(ptr noundef %47) #17, !dbg !5485
  %48 = load ptr, ptr %rs.addr, align 8, !dbg !5486
  %buffer36 = getelementptr inbounds %struct.rock_state, ptr %48, i32 0, i32 0, !dbg !5487
  %49 = load ptr, ptr %buffer36, align 8, !dbg !5487
  %50 = load ptr, ptr %rs.addr, align 8, !dbg !5488
  %chr = getelementptr inbounds %struct.rock_state, ptr %50, i32 0, i32 1, !dbg !5489
  store ptr %49, ptr %chr, align 8, !dbg !5490
  %51 = load ptr, ptr %rs.addr, align 8, !dbg !5491
  %cont_size37 = getelementptr inbounds %struct.rock_state, ptr %51, i32 0, i32 3, !dbg !5492
  %52 = load i32, ptr %cont_size37, align 4, !dbg !5492
  %53 = load ptr, ptr %rs.addr, align 8, !dbg !5493
  %len = getelementptr inbounds %struct.rock_state, ptr %53, i32 0, i32 2, !dbg !5494
  store i32 %52, ptr %len, align 8, !dbg !5495
  %54 = load ptr, ptr %rs.addr, align 8, !dbg !5496
  %cont_extent38 = getelementptr inbounds %struct.rock_state, ptr %54, i32 0, i32 4, !dbg !5497
  store i32 0, ptr %cont_extent38, align 8, !dbg !5498
  %55 = load ptr, ptr %rs.addr, align 8, !dbg !5499
  %cont_size39 = getelementptr inbounds %struct.rock_state, ptr %55, i32 0, i32 3, !dbg !5500
  store i32 0, ptr %cont_size39, align 4, !dbg !5501
  %56 = load ptr, ptr %rs.addr, align 8, !dbg !5502
  %cont_offset40 = getelementptr inbounds %struct.rock_state, ptr %56, i32 0, i32 5, !dbg !5503
  store i32 0, ptr %cont_offset40, align 4, !dbg !5504
  store i32 0, ptr %retval, align 4, !dbg !5505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5505

if.end41:                                         ; preds = %if.end25
  br label %do.body42, !dbg !5506

do.body42:                                        ; preds = %if.end41
  br label %do.cond43, !dbg !5508

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !5508

do.end44:                                         ; preds = %do.cond43
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #18, !dbg !5506
  store i32 %call46, ptr %tmp45, align 4, !dbg !5508
  %57 = load i32, ptr %tmp45, align 4, !dbg !5506
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5510
  br label %cleanup, !dbg !5510

cleanup:                                          ; preds = %if.then24, %if.then20, %do.end44, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #16, !dbg !5510
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup50 [
    i32 0, label %cleanup.cont
    i32 4, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end47, !dbg !5511

if.end47:                                         ; preds = %cleanup.cont, %if.end
  br label %out, !dbg !5438

out:                                              ; preds = %if.end47, %cleanup, %do.end
  call void @llvm.dbg.label(metadata !5392), !dbg !5512
  %58 = load ptr, ptr %rs.addr, align 8, !dbg !5513
  %buffer48 = getelementptr inbounds %struct.rock_state, ptr %58, i32 0, i32 0, !dbg !5514
  %59 = load ptr, ptr %buffer48, align 8, !dbg !5514
  call void @kfree(ptr noundef %59) #17, !dbg !5515
  %60 = load ptr, ptr %rs.addr, align 8, !dbg !5516
  %buffer49 = getelementptr inbounds %struct.rock_state, ptr %60, i32 0, i32 0, !dbg !5517
  store ptr null, ptr %buffer49, align 8, !dbg !5518
  %61 = load i32, ptr %ret, align 4, !dbg !5519
  store i32 %61, ptr %retval, align 4, !dbg !5520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !5520

cleanup50:                                        ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_de_size) #16, !dbg !5521
  call void @llvm.lifetime.end.p0(i64 4, ptr %blocksize) #16, !dbg !5521
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5521
  %62 = load i32, ptr %retval, align 4, !dbg !5521
  ret i32 %62, !dbg !5521
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @parse_rock_ridge_inode(ptr noundef %de, ptr noundef %inode, i32 noundef %relocated) #0 align 16 !dbg !5522 {
entry:
  %de.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %relocated.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %de, ptr %de.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !5526, metadata !DIExpression()), !dbg !5531
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5527, metadata !DIExpression()), !dbg !5532
  store i32 %relocated, ptr %relocated.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %relocated.addr, metadata !5528, metadata !DIExpression()), !dbg !5533
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #16, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5529, metadata !DIExpression()), !dbg !5535
  %0 = load i32, ptr %relocated.addr, align 4, !dbg !5536
  %tobool = icmp ne i32 %0, 0, !dbg !5536
  %1 = zext i1 %tobool to i64, !dbg !5536
  %cond = select i1 %tobool, i32 2, i32 0, !dbg !5536
  store i32 %cond, ptr %flags, align 4, !dbg !5535
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #16, !dbg !5537
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5530, metadata !DIExpression()), !dbg !5538
  %2 = load ptr, ptr %de.addr, align 8, !dbg !5539
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5540
  %4 = load i32, ptr %flags, align 4, !dbg !5541
  %call = call i32 @parse_rock_ridge_inode_internal(ptr noundef %2, ptr noundef %3, i32 noundef %4) #17, !dbg !5542
  store i32 %call, ptr %result, align 4, !dbg !5538
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5543
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9, !dbg !5545
  %6 = load ptr, ptr %i_sb, align 8, !dbg !5545
  %call1 = call ptr @ISOFS_SB(ptr noundef %6) #17, !dbg !5546
  %s_rock_offset = getelementptr inbounds %struct.isofs_sb_info, ptr %call1, i32 0, i32 5, !dbg !5547
  %7 = load i32, ptr %s_rock_offset, align 8, !dbg !5547
  %cmp = icmp eq i32 %7, -1, !dbg !5548
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5549

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %inode.addr, align 8, !dbg !5550
  %i_sb2 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9, !dbg !5551
  %9 = load ptr, ptr %i_sb2, align 8, !dbg !5551
  %call3 = call ptr @ISOFS_SB(ptr noundef %9) #17, !dbg !5552
  %s_rock = getelementptr inbounds %struct.isofs_sb_info, ptr %call3, i32 0, i32 11, !dbg !5553
  %bf.load = load i16, ptr %s_rock, align 4, !dbg !5553
  %bf.lshr = lshr i16 %bf.load, 1, !dbg !5553
  %bf.clear = and i16 %bf.lshr, 3, !dbg !5553
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5553
  %cmp4 = icmp eq i32 %bf.cast, 2, !dbg !5554
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5555

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %de.addr, align 8, !dbg !5556
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !5558
  %12 = load i32, ptr %flags, align 4, !dbg !5559
  %or = or i32 %12, 1, !dbg !5560
  %call5 = call i32 @parse_rock_ridge_inode_internal(ptr noundef %10, ptr noundef %11, i32 noundef %or) #17, !dbg !5561
  store i32 %call5, ptr %result, align 4, !dbg !5562
  br label %if.end, !dbg !5563

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load i32, ptr %result, align 4, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #16, !dbg !5565
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #16, !dbg !5565
  ret i32 %13, !dbg !5566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_rock_ridge_inode_internal(ptr noundef %de, ptr noundef %inode, i32 noundef %flags) #0 align 16 !dbg !5567 {
entry:
  %retval = alloca i32, align 4
  %de.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %symlink_len = alloca i32, align 4
  %cnt = alloca i32, align 4
  %sig = alloca i32, align 4
  %reloc_block = alloca i32, align 4
  %reloc = alloca ptr, align 8
  %rr = alloca ptr, align 8
  %rootflag = alloca i32, align 4
  %rs = alloca %struct.rock_state, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %p = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  %coerce = alloca %struct.timespec64, align 8
  %coerce178 = alloca %struct.timespec64, align 8
  %slen = alloca i32, align 4
  %slp = alloca ptr, align 8
  %oldslp = alloca ptr, align 8
  %tmp210 = alloca i32, align 4
  %tmp258 = alloca i32, align 4
  %tmp267 = alloca i32, align 4
  %tmp285 = alloca i32, align 4
  %agg.tmp = alloca %struct.timespec64, align 8
  %coerce310 = alloca %struct.timespec64, align 8
  %algo = alloca i32, align 4
  %block_shift = alloca i32, align 4
  %tmp338 = alloca i32, align 4
  %tmp367 = alloca i32, align 4
  store ptr %de, ptr %de.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !5569, metadata !DIExpression()), !dbg !5600
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5570, metadata !DIExpression()), !dbg !5601
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5571, metadata !DIExpression()), !dbg !5602
  call void @llvm.lifetime.start.p0(i64 4, ptr %symlink_len) #16, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %symlink_len, metadata !5572, metadata !DIExpression()), !dbg !5604
  store i32 0, ptr %symlink_len, align 4, !dbg !5604
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #16, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5573, metadata !DIExpression()), !dbg !5606
  call void @llvm.lifetime.start.p0(i64 4, ptr %sig) #16, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !5574, metadata !DIExpression()), !dbg !5607
  call void @llvm.lifetime.start.p0(i64 4, ptr %reloc_block) #16, !dbg !5608
  call void @llvm.dbg.declare(metadata ptr %reloc_block, metadata !5575, metadata !DIExpression()), !dbg !5609
  call void @llvm.lifetime.start.p0(i64 8, ptr %reloc) #16, !dbg !5610
  call void @llvm.dbg.declare(metadata ptr %reloc, metadata !5576, metadata !DIExpression()), !dbg !5611
  call void @llvm.lifetime.start.p0(i64 8, ptr %rr) #16, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %rr, metadata !5577, metadata !DIExpression()), !dbg !5613
  call void @llvm.lifetime.start.p0(i64 4, ptr %rootflag) #16, !dbg !5614
  call void @llvm.dbg.declare(metadata ptr %rootflag, metadata !5578, metadata !DIExpression()), !dbg !5615
  call void @llvm.lifetime.start.p0(i64 48, ptr %rs) #16, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %rs, metadata !5579, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5580, metadata !DIExpression()), !dbg !5619
  store i32 0, ptr %ret, align 4, !dbg !5619
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5620
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5622
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5622
  %call = call ptr @ISOFS_SB(ptr noundef %1) #17, !dbg !5623
  %s_rock = getelementptr inbounds %struct.isofs_sb_info, ptr %call, i32 0, i32 11, !dbg !5624
  %bf.load = load i16, ptr %s_rock, align 4, !dbg !5624
  %bf.lshr = lshr i16 %bf.load, 1, !dbg !5624
  %bf.clear = and i16 %bf.lshr, 3, !dbg !5624
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5624
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5623
  br i1 %tobool, label %if.end, label %if.then, !dbg !5625

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup390, !dbg !5626

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5627
  call void @init_rock_state(ptr noundef %rs, ptr noundef %2) #17, !dbg !5628
  %3 = load ptr, ptr %de.addr, align 8, !dbg !5629
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5630
  call void @setup_rock_ridge(ptr noundef %3, ptr noundef %4, ptr noundef %rs) #17, !dbg !5631
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5632
  %and = and i32 %5, 1, !dbg !5634
  %tobool1 = icmp ne i32 %and, 0, !dbg !5634
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !5635

if.then2:                                         ; preds = %if.end
  %chr = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !5636
  %6 = load ptr, ptr %chr, align 8, !dbg !5638
  %add.ptr = getelementptr i8, ptr %6, i64 14, !dbg !5638
  store ptr %add.ptr, ptr %chr, align 8, !dbg !5638
  %len = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !5639
  %7 = load i32, ptr %len, align 8, !dbg !5640
  %sub = sub i32 %7, 14, !dbg !5640
  store i32 %sub, ptr %len, align 8, !dbg !5640
  %len3 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !5641
  %8 = load i32, ptr %len3, align 8, !dbg !5641
  %cmp = icmp slt i32 %8, 0, !dbg !5643
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !5644

if.then4:                                         ; preds = %if.then2
  %len5 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !5645
  store i32 0, ptr %len5, align 8, !dbg !5646
  br label %if.end6, !dbg !5647

if.end6:                                          ; preds = %if.then4, %if.then2
  br label %if.end7, !dbg !5648

if.end7:                                          ; preds = %if.end6, %if.end
  br label %repeat, !dbg !5649

repeat:                                           ; preds = %if.then384, %if.end7
  call void @llvm.dbg.label(metadata !5581), !dbg !5650
  br label %while.cond, !dbg !5651

while.cond:                                       ; preds = %sw.epilog379, %repeat
  %len8 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !5652
  %9 = load i32, ptr %len8, align 8, !dbg !5652
  %cmp9 = icmp sgt i32 %9, 2, !dbg !5653
  br i1 %cmp9, label %while.body, label %while.end380, !dbg !5651

while.body:                                       ; preds = %while.cond
  %chr10 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !5654
  %10 = load ptr, ptr %chr10, align 8, !dbg !5654
  store ptr %10, ptr %rr, align 8, !dbg !5655
  %11 = load ptr, ptr %rr, align 8, !dbg !5656
  %len11 = getelementptr inbounds %struct.rock_ridge, ptr %11, i32 0, i32 1, !dbg !5658
  %12 = load i8, ptr %len11, align 1, !dbg !5658
  %conv = zext i8 %12 to i32, !dbg !5656
  %cmp12 = icmp slt i32 %conv, 3, !dbg !5659
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5660

if.then14:                                        ; preds = %while.body
  br label %out, !dbg !5661

if.end15:                                         ; preds = %while.body
  %chr16 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !5662
  %13 = load ptr, ptr %chr16, align 8, !dbg !5662
  %call17 = call i32 @isonum_721(ptr noundef %13) #17, !dbg !5663
  store i32 %call17, ptr %sig, align 4, !dbg !5664
  %14 = load i32, ptr %sig, align 4, !dbg !5665
  %call18 = call i32 @rock_check_overflow(ptr noundef %rs, i32 noundef %14) #17, !dbg !5667
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5667
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5668

if.then20:                                        ; preds = %if.end15
  br label %eio, !dbg !5669

if.end21:                                         ; preds = %if.end15
  %15 = load ptr, ptr %rr, align 8, !dbg !5670
  %len22 = getelementptr inbounds %struct.rock_ridge, ptr %15, i32 0, i32 1, !dbg !5671
  %16 = load i8, ptr %len22, align 1, !dbg !5671
  %conv23 = zext i8 %16 to i32, !dbg !5670
  %chr24 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !5672
  %17 = load ptr, ptr %chr24, align 8, !dbg !5673
  %idx.ext = sext i32 %conv23 to i64, !dbg !5673
  %add.ptr25 = getelementptr i8, ptr %17, i64 %idx.ext, !dbg !5673
  store ptr %add.ptr25, ptr %chr24, align 8, !dbg !5673
  %18 = load ptr, ptr %rr, align 8, !dbg !5674
  %len26 = getelementptr inbounds %struct.rock_ridge, ptr %18, i32 0, i32 1, !dbg !5675
  %19 = load i8, ptr %len26, align 1, !dbg !5675
  %conv27 = zext i8 %19 to i32, !dbg !5674
  %len28 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !5676
  %20 = load i32, ptr %len28, align 8, !dbg !5677
  %sub29 = sub i32 %20, %conv27, !dbg !5677
  store i32 %sub29, ptr %len28, align 8, !dbg !5677
  %len30 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !5678
  %21 = load i32, ptr %len30, align 8, !dbg !5678
  %cmp31 = icmp slt i32 %21, 0, !dbg !5680
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5681

if.then33:                                        ; preds = %if.end21
  br label %out, !dbg !5682

if.end34:                                         ; preds = %if.end21
  %22 = load i32, ptr %sig, align 4, !dbg !5683
  switch i32 %22, label %sw.default378 [
    i32 20563, label %sw.bb
    i32 17731, label %sw.bb39
    i32 21061, label %sw.bb47
    i32 22608, label %sw.bb79
    i32 20048, label %sw.bb93
    i32 18004, label %sw.bb110
    i32 19539, label %sw.bb180
    i32 17746, label %sw.bb254
    i32 19523, label %sw.bb260
    i32 18010, label %sw.bb313
  ], !dbg !5684

sw.bb:                                            ; preds = %if.end34
  %23 = load ptr, ptr %rr, align 8, !dbg !5685
  %24 = load ptr, ptr %inode.addr, align 8, !dbg !5687
  %call35 = call i32 @check_sp(ptr noundef %23, ptr noundef %24) #17, !dbg !5688
  %tobool36 = icmp ne i32 %call35, 0, !dbg !5688
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !5689

if.then37:                                        ; preds = %sw.bb
  br label %out, !dbg !5690

if.end38:                                         ; preds = %sw.bb
  br label %sw.epilog379, !dbg !5691

sw.bb39:                                          ; preds = %if.end34
  %25 = load ptr, ptr %rr, align 8, !dbg !5692
  %u = getelementptr inbounds %struct.rock_ridge, ptr %25, i32 0, i32 3, !dbg !5693
  %extent = getelementptr inbounds %struct.SU_CE_s, ptr %u, i32 0, i32 0, !dbg !5694
  %arraydecay = getelementptr inbounds [8 x i8], ptr %extent, i64 0, i64 0, !dbg !5692
  %call40 = call i32 @isonum_733(ptr noundef %arraydecay) #17, !dbg !5695
  %cont_extent = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 4, !dbg !5696
  store i32 %call40, ptr %cont_extent, align 8, !dbg !5697
  %26 = load ptr, ptr %rr, align 8, !dbg !5698
  %u41 = getelementptr inbounds %struct.rock_ridge, ptr %26, i32 0, i32 3, !dbg !5699
  %offset = getelementptr inbounds %struct.SU_CE_s, ptr %u41, i32 0, i32 1, !dbg !5700
  %arraydecay42 = getelementptr inbounds [8 x i8], ptr %offset, i64 0, i64 0, !dbg !5698
  %call43 = call i32 @isonum_733(ptr noundef %arraydecay42) #17, !dbg !5701
  %cont_offset = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 5, !dbg !5702
  store i32 %call43, ptr %cont_offset, align 4, !dbg !5703
  %27 = load ptr, ptr %rr, align 8, !dbg !5704
  %u44 = getelementptr inbounds %struct.rock_ridge, ptr %27, i32 0, i32 3, !dbg !5705
  %size = getelementptr inbounds %struct.SU_CE_s, ptr %u44, i32 0, i32 2, !dbg !5706
  %arraydecay45 = getelementptr inbounds [8 x i8], ptr %size, i64 0, i64 0, !dbg !5704
  %call46 = call i32 @isonum_733(ptr noundef %arraydecay45) #17, !dbg !5707
  %cont_size = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 3, !dbg !5708
  store i32 %call46, ptr %cont_size, align 4, !dbg !5709
  br label %sw.epilog379, !dbg !5710

sw.bb47:                                          ; preds = %if.end34
  %28 = load ptr, ptr %rr, align 8, !dbg !5711
  %u48 = getelementptr inbounds %struct.rock_ridge, ptr %28, i32 0, i32 3, !dbg !5713
  %len_id = getelementptr inbounds %struct.SU_ER_s, ptr %u48, i32 0, i32 0, !dbg !5714
  %29 = load i8, ptr %len_id, align 1, !dbg !5714
  %conv49 = zext i8 %29 to i64, !dbg !5711
  %add = add i64 %conv49, 8, !dbg !5715
  %30 = load ptr, ptr %rr, align 8, !dbg !5716
  %len50 = getelementptr inbounds %struct.rock_ridge, ptr %30, i32 0, i32 1, !dbg !5717
  %31 = load i8, ptr %len50, align 1, !dbg !5717
  %conv51 = zext i8 %31 to i64, !dbg !5716
  %cmp52 = icmp ugt i64 %add, %conv51, !dbg !5718
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !5719

if.then54:                                        ; preds = %sw.bb47
  br label %out, !dbg !5720

if.end55:                                         ; preds = %sw.bb47
  %32 = load ptr, ptr %inode.addr, align 8, !dbg !5721
  %i_sb56 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 9, !dbg !5722
  %33 = load ptr, ptr %i_sb56, align 8, !dbg !5722
  %call57 = call ptr @ISOFS_SB(ptr noundef %33) #17, !dbg !5723
  %s_rock58 = getelementptr inbounds %struct.isofs_sb_info, ptr %call57, i32 0, i32 11, !dbg !5724
  %bf.load59 = load i16, ptr %s_rock58, align 4, !dbg !5725
  %bf.clear60 = and i16 %bf.load59, -7, !dbg !5725
  %bf.set = or i16 %bf.clear60, 2, !dbg !5725
  store i16 %bf.set, ptr %s_rock58, align 4, !dbg !5725
  br label %do.body, !dbg !5726

do.body:                                          ; preds = %if.end55
  br label %do.cond, !dbg !5728

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5728

do.end:                                           ; preds = %do.cond
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #18, !dbg !5726
  store i32 %call61, ptr %tmp, align 4, !dbg !5728
  %34 = load i32, ptr %tmp, align 4, !dbg !5726
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #16, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5582, metadata !DIExpression()), !dbg !5731
  store i32 0, ptr %p, align 4, !dbg !5732
  br label %for.cond, !dbg !5734

for.cond:                                         ; preds = %for.inc, %do.end
  %35 = load i32, ptr %p, align 4, !dbg !5735
  %36 = load ptr, ptr %rr, align 8, !dbg !5737
  %u62 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, !dbg !5738
  %len_id63 = getelementptr inbounds %struct.SU_ER_s, ptr %u62, i32 0, i32 0, !dbg !5739
  %37 = load i8, ptr %len_id63, align 1, !dbg !5739
  %conv64 = zext i8 %37 to i32, !dbg !5737
  %cmp65 = icmp slt i32 %35, %conv64, !dbg !5740
  br i1 %cmp65, label %for.body, label %for.end, !dbg !5741

for.body:                                         ; preds = %for.cond
  br label %do.body67, !dbg !5742

do.body67:                                        ; preds = %for.body
  br label %do.cond68, !dbg !5744

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !5744

do.end69:                                         ; preds = %do.cond68
  %38 = load ptr, ptr %rr, align 8, !dbg !5742
  %u71 = getelementptr inbounds %struct.rock_ridge, ptr %38, i32 0, i32 3, !dbg !5742
  %data = getelementptr inbounds %struct.SU_ER_s, ptr %u71, i32 0, i32 4, !dbg !5742
  %39 = load i32, ptr %p, align 4, !dbg !5742
  %idxprom = sext i32 %39 to i64, !dbg !5742
  %arrayidx = getelementptr [0 x i8], ptr %data, i64 0, i64 %idxprom, !dbg !5742
  %40 = load i8, ptr %arrayidx, align 1, !dbg !5742
  %conv72 = zext i8 %40 to i32, !dbg !5742
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %conv72) #18, !dbg !5742
  store i32 %call73, ptr %tmp70, align 4, !dbg !5744
  %41 = load i32, ptr %tmp70, align 4, !dbg !5742
  br label %for.inc, !dbg !5746

for.inc:                                          ; preds = %do.end69
  %42 = load i32, ptr %p, align 4, !dbg !5747
  %inc = add i32 %42, 1, !dbg !5747
  store i32 %inc, ptr %p, align 4, !dbg !5747
  br label %for.cond, !dbg !5748, !llvm.loop !5749

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #16, !dbg !5751
  br label %do.body74, !dbg !5752

do.body74:                                        ; preds = %for.end
  br label %do.cond75, !dbg !5754

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !5754

do.end76:                                         ; preds = %do.cond75
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #18, !dbg !5752
  store i32 %call78, ptr %tmp77, align 4, !dbg !5754
  %43 = load i32, ptr %tmp77, align 4, !dbg !5752
  br label %sw.epilog379, !dbg !5756

sw.bb79:                                          ; preds = %if.end34
  %44 = load ptr, ptr %rr, align 8, !dbg !5757
  %u80 = getelementptr inbounds %struct.rock_ridge, ptr %44, i32 0, i32 3, !dbg !5758
  %mode = getelementptr inbounds %struct.RR_PX_s, ptr %u80, i32 0, i32 0, !dbg !5759
  %arraydecay81 = getelementptr inbounds [8 x i8], ptr %mode, i64 0, i64 0, !dbg !5757
  %call82 = call i32 @isonum_733(ptr noundef %arraydecay81) #17, !dbg !5760
  %conv83 = trunc i32 %call82 to i16, !dbg !5760
  %45 = load ptr, ptr %inode.addr, align 8, !dbg !5761
  %i_mode = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 0, !dbg !5762
  store i16 %conv83, ptr %i_mode, align 8, !dbg !5763
  %46 = load ptr, ptr %inode.addr, align 8, !dbg !5764
  %47 = load ptr, ptr %rr, align 8, !dbg !5765
  %u84 = getelementptr inbounds %struct.rock_ridge, ptr %47, i32 0, i32 3, !dbg !5766
  %n_links = getelementptr inbounds %struct.RR_PX_s, ptr %u84, i32 0, i32 1, !dbg !5767
  %arraydecay85 = getelementptr inbounds [8 x i8], ptr %n_links, i64 0, i64 0, !dbg !5765
  %call86 = call i32 @isonum_733(ptr noundef %arraydecay85) #17, !dbg !5768
  call void @set_nlink(ptr noundef %46, i32 noundef %call86) #17, !dbg !5769
  %48 = load ptr, ptr %inode.addr, align 8, !dbg !5770
  %49 = load ptr, ptr %rr, align 8, !dbg !5771
  %u87 = getelementptr inbounds %struct.rock_ridge, ptr %49, i32 0, i32 3, !dbg !5772
  %uid = getelementptr inbounds %struct.RR_PX_s, ptr %u87, i32 0, i32 2, !dbg !5773
  %arraydecay88 = getelementptr inbounds [8 x i8], ptr %uid, i64 0, i64 0, !dbg !5771
  %call89 = call i32 @isonum_733(ptr noundef %arraydecay88) #17, !dbg !5774
  call void @i_uid_write(ptr noundef %48, i32 noundef %call89) #17, !dbg !5775
  %50 = load ptr, ptr %inode.addr, align 8, !dbg !5776
  %51 = load ptr, ptr %rr, align 8, !dbg !5777
  %u90 = getelementptr inbounds %struct.rock_ridge, ptr %51, i32 0, i32 3, !dbg !5778
  %gid = getelementptr inbounds %struct.RR_PX_s, ptr %u90, i32 0, i32 3, !dbg !5779
  %arraydecay91 = getelementptr inbounds [8 x i8], ptr %gid, i64 0, i64 0, !dbg !5777
  %call92 = call i32 @isonum_733(ptr noundef %arraydecay91) #17, !dbg !5780
  call void @i_gid_write(ptr noundef %50, i32 noundef %call92) #17, !dbg !5781
  br label %sw.epilog379, !dbg !5782

sw.bb93:                                          ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #16, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %high, metadata !5586, metadata !DIExpression()), !dbg !5784
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #16, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %low, metadata !5588, metadata !DIExpression()), !dbg !5785
  %52 = load ptr, ptr %rr, align 8, !dbg !5786
  %u94 = getelementptr inbounds %struct.rock_ridge, ptr %52, i32 0, i32 3, !dbg !5787
  %dev_high = getelementptr inbounds %struct.RR_PN_s, ptr %u94, i32 0, i32 0, !dbg !5788
  %arraydecay95 = getelementptr inbounds [8 x i8], ptr %dev_high, i64 0, i64 0, !dbg !5786
  %call96 = call i32 @isonum_733(ptr noundef %arraydecay95) #17, !dbg !5789
  store i32 %call96, ptr %high, align 4, !dbg !5790
  %53 = load ptr, ptr %rr, align 8, !dbg !5791
  %u97 = getelementptr inbounds %struct.rock_ridge, ptr %53, i32 0, i32 3, !dbg !5792
  %dev_low = getelementptr inbounds %struct.RR_PN_s, ptr %u97, i32 0, i32 1, !dbg !5793
  %arraydecay98 = getelementptr inbounds [8 x i8], ptr %dev_low, i64 0, i64 0, !dbg !5791
  %call99 = call i32 @isonum_733(ptr noundef %arraydecay98) #17, !dbg !5794
  store i32 %call99, ptr %low, align 4, !dbg !5795
  %54 = load i32, ptr %low, align 4, !dbg !5796
  %and100 = and i32 %54, -256, !dbg !5798
  %tobool101 = icmp ne i32 %and100, 0, !dbg !5798
  br i1 %tobool101, label %land.lhs.true, label %if.else, !dbg !5799

land.lhs.true:                                    ; preds = %sw.bb93
  %55 = load i32, ptr %high, align 4, !dbg !5800
  %cmp102 = icmp eq i32 %55, 0, !dbg !5801
  br i1 %cmp102, label %if.then104, label %if.else, !dbg !5802

if.then104:                                       ; preds = %land.lhs.true
  %56 = load i32, ptr %low, align 4, !dbg !5803
  %shr = ashr i32 %56, 8, !dbg !5803
  %shl = shl i32 %shr, 20, !dbg !5803
  %57 = load i32, ptr %low, align 4, !dbg !5803
  %and105 = and i32 %57, 255, !dbg !5803
  %or = or i32 %shl, %and105, !dbg !5803
  %58 = load ptr, ptr %inode.addr, align 8, !dbg !5805
  %i_rdev = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 14, !dbg !5806
  store i32 %or, ptr %i_rdev, align 4, !dbg !5807
  br label %if.end109, !dbg !5808

if.else:                                          ; preds = %land.lhs.true, %sw.bb93
  %59 = load i32, ptr %high, align 4, !dbg !5809
  %shl106 = shl i32 %59, 20, !dbg !5809
  %60 = load i32, ptr %low, align 4, !dbg !5809
  %or107 = or i32 %shl106, %60, !dbg !5809
  %61 = load ptr, ptr %inode.addr, align 8, !dbg !5811
  %i_rdev108 = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 14, !dbg !5812
  store i32 %or107, ptr %i_rdev108, align 4, !dbg !5813
  br label %if.end109

if.end109:                                        ; preds = %if.else, %if.then104
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #16, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #16, !dbg !5814
  br label %sw.epilog379, !dbg !5815

sw.bb110:                                         ; preds = %if.end34
  store i32 0, ptr %cnt, align 4, !dbg !5816
  %62 = load ptr, ptr %rr, align 8, !dbg !5817
  %u111 = getelementptr inbounds %struct.rock_ridge, ptr %62, i32 0, i32 3, !dbg !5819
  %flags112 = getelementptr inbounds %struct.RR_TF_s, ptr %u111, i32 0, i32 0, !dbg !5820
  %63 = load i8, ptr %flags112, align 1, !dbg !5820
  %conv113 = zext i8 %63 to i32, !dbg !5817
  %and114 = and i32 %conv113, 1, !dbg !5821
  %tobool115 = icmp ne i32 %and114, 0, !dbg !5821
  br i1 %tobool115, label %if.then116, label %if.end125, !dbg !5822

if.then116:                                       ; preds = %sw.bb110
  %64 = load ptr, ptr %inode.addr, align 8, !dbg !5823
  %65 = load ptr, ptr %rr, align 8, !dbg !5825
  %u117 = getelementptr inbounds %struct.rock_ridge, ptr %65, i32 0, i32 3, !dbg !5826
  %times = getelementptr inbounds %struct.RR_TF_s, ptr %u117, i32 0, i32 1, !dbg !5827
  %66 = load i32, ptr %cnt, align 4, !dbg !5828
  %inc118 = add i32 %66, 1, !dbg !5828
  store i32 %inc118, ptr %cnt, align 4, !dbg !5828
  %idxprom119 = sext i32 %66 to i64, !dbg !5825
  %arrayidx120 = getelementptr [0 x %struct.stamp], ptr %times, i64 0, i64 %idxprom119, !dbg !5825
  %time = getelementptr inbounds %struct.stamp, ptr %arrayidx120, i32 0, i32 0, !dbg !5829
  %arraydecay121 = getelementptr inbounds [7 x i8], ptr %time, i64 0, i64 0, !dbg !5825
  %call122 = call i32 @iso_date(ptr noundef %arraydecay121, i32 noundef 0) #17, !dbg !5830
  %conv123 = sext i32 %call122 to i64, !dbg !5830
  %call124 = call { i64, i64 } @inode_set_ctime(ptr noundef %64, i64 noundef %conv123, i64 noundef 0) #17, !dbg !5831
  %67 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 0, !dbg !5831
  %68 = extractvalue { i64, i64 } %call124, 0, !dbg !5831
  store i64 %68, ptr %67, align 8, !dbg !5831
  %69 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 1, !dbg !5831
  %70 = extractvalue { i64, i64 } %call124, 1, !dbg !5831
  store i64 %70, ptr %69, align 8, !dbg !5831
  br label %if.end125, !dbg !5832

if.end125:                                        ; preds = %if.then116, %sw.bb110
  %71 = load ptr, ptr %rr, align 8, !dbg !5833
  %u126 = getelementptr inbounds %struct.rock_ridge, ptr %71, i32 0, i32 3, !dbg !5835
  %flags127 = getelementptr inbounds %struct.RR_TF_s, ptr %u126, i32 0, i32 0, !dbg !5836
  %72 = load i8, ptr %flags127, align 1, !dbg !5836
  %conv128 = zext i8 %72 to i32, !dbg !5833
  %and129 = and i32 %conv128, 2, !dbg !5837
  %tobool130 = icmp ne i32 %and129, 0, !dbg !5837
  br i1 %tobool130, label %if.then131, label %if.end142, !dbg !5838

if.then131:                                       ; preds = %if.end125
  %73 = load ptr, ptr %rr, align 8, !dbg !5839
  %u132 = getelementptr inbounds %struct.rock_ridge, ptr %73, i32 0, i32 3, !dbg !5841
  %times133 = getelementptr inbounds %struct.RR_TF_s, ptr %u132, i32 0, i32 1, !dbg !5842
  %74 = load i32, ptr %cnt, align 4, !dbg !5843
  %inc134 = add i32 %74, 1, !dbg !5843
  store i32 %inc134, ptr %cnt, align 4, !dbg !5843
  %idxprom135 = sext i32 %74 to i64, !dbg !5839
  %arrayidx136 = getelementptr [0 x %struct.stamp], ptr %times133, i64 0, i64 %idxprom135, !dbg !5839
  %time137 = getelementptr inbounds %struct.stamp, ptr %arrayidx136, i32 0, i32 0, !dbg !5844
  %arraydecay138 = getelementptr inbounds [7 x i8], ptr %time137, i64 0, i64 0, !dbg !5839
  %call139 = call i32 @iso_date(ptr noundef %arraydecay138, i32 noundef 0) #17, !dbg !5845
  %conv140 = sext i32 %call139 to i64, !dbg !5845
  %75 = load ptr, ptr %inode.addr, align 8, !dbg !5846
  %i_mtime = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 17, !dbg !5847
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %i_mtime, i32 0, i32 0, !dbg !5848
  store i64 %conv140, ptr %tv_sec, align 8, !dbg !5849
  %76 = load ptr, ptr %inode.addr, align 8, !dbg !5850
  %i_mtime141 = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 17, !dbg !5851
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %i_mtime141, i32 0, i32 1, !dbg !5852
  store i64 0, ptr %tv_nsec, align 8, !dbg !5853
  br label %if.end142, !dbg !5854

if.end142:                                        ; preds = %if.then131, %if.end125
  %77 = load ptr, ptr %rr, align 8, !dbg !5855
  %u143 = getelementptr inbounds %struct.rock_ridge, ptr %77, i32 0, i32 3, !dbg !5857
  %flags144 = getelementptr inbounds %struct.RR_TF_s, ptr %u143, i32 0, i32 0, !dbg !5858
  %78 = load i8, ptr %flags144, align 1, !dbg !5858
  %conv145 = zext i8 %78 to i32, !dbg !5855
  %and146 = and i32 %conv145, 4, !dbg !5859
  %tobool147 = icmp ne i32 %and146, 0, !dbg !5859
  br i1 %tobool147, label %if.then148, label %if.end161, !dbg !5860

if.then148:                                       ; preds = %if.end142
  %79 = load ptr, ptr %rr, align 8, !dbg !5861
  %u149 = getelementptr inbounds %struct.rock_ridge, ptr %79, i32 0, i32 3, !dbg !5863
  %times150 = getelementptr inbounds %struct.RR_TF_s, ptr %u149, i32 0, i32 1, !dbg !5864
  %80 = load i32, ptr %cnt, align 4, !dbg !5865
  %inc151 = add i32 %80, 1, !dbg !5865
  store i32 %inc151, ptr %cnt, align 4, !dbg !5865
  %idxprom152 = sext i32 %80 to i64, !dbg !5861
  %arrayidx153 = getelementptr [0 x %struct.stamp], ptr %times150, i64 0, i64 %idxprom152, !dbg !5861
  %time154 = getelementptr inbounds %struct.stamp, ptr %arrayidx153, i32 0, i32 0, !dbg !5866
  %arraydecay155 = getelementptr inbounds [7 x i8], ptr %time154, i64 0, i64 0, !dbg !5861
  %call156 = call i32 @iso_date(ptr noundef %arraydecay155, i32 noundef 0) #17, !dbg !5867
  %conv157 = sext i32 %call156 to i64, !dbg !5867
  %81 = load ptr, ptr %inode.addr, align 8, !dbg !5868
  %i_atime = getelementptr inbounds %struct.inode, ptr %81, i32 0, i32 16, !dbg !5869
  %tv_sec158 = getelementptr inbounds %struct.timespec64, ptr %i_atime, i32 0, i32 0, !dbg !5870
  store i64 %conv157, ptr %tv_sec158, align 8, !dbg !5871
  %82 = load ptr, ptr %inode.addr, align 8, !dbg !5872
  %i_atime159 = getelementptr inbounds %struct.inode, ptr %82, i32 0, i32 16, !dbg !5873
  %tv_nsec160 = getelementptr inbounds %struct.timespec64, ptr %i_atime159, i32 0, i32 1, !dbg !5874
  store i64 0, ptr %tv_nsec160, align 8, !dbg !5875
  br label %if.end161, !dbg !5876

if.end161:                                        ; preds = %if.then148, %if.end142
  %83 = load ptr, ptr %rr, align 8, !dbg !5877
  %u162 = getelementptr inbounds %struct.rock_ridge, ptr %83, i32 0, i32 3, !dbg !5879
  %flags163 = getelementptr inbounds %struct.RR_TF_s, ptr %u162, i32 0, i32 0, !dbg !5880
  %84 = load i8, ptr %flags163, align 1, !dbg !5880
  %conv164 = zext i8 %84 to i32, !dbg !5877
  %and165 = and i32 %conv164, 8, !dbg !5881
  %tobool166 = icmp ne i32 %and165, 0, !dbg !5881
  br i1 %tobool166, label %if.then167, label %if.end179, !dbg !5882

if.then167:                                       ; preds = %if.end161
  %85 = load ptr, ptr %inode.addr, align 8, !dbg !5883
  %86 = load ptr, ptr %rr, align 8, !dbg !5885
  %u168 = getelementptr inbounds %struct.rock_ridge, ptr %86, i32 0, i32 3, !dbg !5886
  %times169 = getelementptr inbounds %struct.RR_TF_s, ptr %u168, i32 0, i32 1, !dbg !5887
  %87 = load i32, ptr %cnt, align 4, !dbg !5888
  %inc170 = add i32 %87, 1, !dbg !5888
  store i32 %inc170, ptr %cnt, align 4, !dbg !5888
  %idxprom171 = sext i32 %87 to i64, !dbg !5885
  %arrayidx172 = getelementptr [0 x %struct.stamp], ptr %times169, i64 0, i64 %idxprom171, !dbg !5885
  %time173 = getelementptr inbounds %struct.stamp, ptr %arrayidx172, i32 0, i32 0, !dbg !5889
  %arraydecay174 = getelementptr inbounds [7 x i8], ptr %time173, i64 0, i64 0, !dbg !5885
  %call175 = call i32 @iso_date(ptr noundef %arraydecay174, i32 noundef 0) #17, !dbg !5890
  %conv176 = sext i32 %call175 to i64, !dbg !5890
  %call177 = call { i64, i64 } @inode_set_ctime(ptr noundef %85, i64 noundef %conv176, i64 noundef 0) #17, !dbg !5891
  %88 = getelementptr inbounds { i64, i64 }, ptr %coerce178, i32 0, i32 0, !dbg !5891
  %89 = extractvalue { i64, i64 } %call177, 0, !dbg !5891
  store i64 %89, ptr %88, align 8, !dbg !5891
  %90 = getelementptr inbounds { i64, i64 }, ptr %coerce178, i32 0, i32 1, !dbg !5891
  %91 = extractvalue { i64, i64 } %call177, 1, !dbg !5891
  store i64 %91, ptr %90, align 8, !dbg !5891
  br label %if.end179, !dbg !5892

if.end179:                                        ; preds = %if.then167, %if.end161
  br label %sw.epilog379, !dbg !5893

sw.bb180:                                         ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 4, ptr %slen) #16, !dbg !5894
  call void @llvm.dbg.declare(metadata ptr %slen, metadata !5589, metadata !DIExpression()), !dbg !5895
  call void @llvm.lifetime.start.p0(i64 8, ptr %slp) #16, !dbg !5896
  call void @llvm.dbg.declare(metadata ptr %slp, metadata !5591, metadata !DIExpression()), !dbg !5897
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldslp) #16, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %oldslp, metadata !5592, metadata !DIExpression()), !dbg !5899
  %92 = load ptr, ptr %rr, align 8, !dbg !5900
  %len181 = getelementptr inbounds %struct.rock_ridge, ptr %92, i32 0, i32 1, !dbg !5901
  %93 = load i8, ptr %len181, align 1, !dbg !5901
  %conv182 = zext i8 %93 to i32, !dbg !5900
  %sub183 = sub i32 %conv182, 5, !dbg !5902
  store i32 %sub183, ptr %slen, align 4, !dbg !5903
  %94 = load ptr, ptr %rr, align 8, !dbg !5904
  %u184 = getelementptr inbounds %struct.rock_ridge, ptr %94, i32 0, i32 3, !dbg !5905
  %link = getelementptr inbounds %struct.RR_SL_s, ptr %u184, i32 0, i32 1, !dbg !5906
  store ptr %link, ptr %slp, align 8, !dbg !5907
  %95 = load i32, ptr %symlink_len, align 4, !dbg !5908
  %conv185 = sext i32 %95 to i64, !dbg !5908
  %96 = load ptr, ptr %inode.addr, align 8, !dbg !5909
  %i_size = getelementptr inbounds %struct.inode, ptr %96, i32 0, i32 15, !dbg !5910
  store i64 %conv185, ptr %i_size, align 8, !dbg !5911
  br label %while.cond186, !dbg !5912

while.cond186:                                    ; preds = %if.end251, %sw.bb180
  %97 = load i32, ptr %slen, align 4, !dbg !5913
  %cmp187 = icmp sgt i32 %97, 1, !dbg !5914
  br i1 %cmp187, label %while.body189, label %while.end, !dbg !5912

while.body189:                                    ; preds = %while.cond186
  store i32 0, ptr %rootflag, align 4, !dbg !5915
  %98 = load ptr, ptr %slp, align 8, !dbg !5917
  %flags190 = getelementptr inbounds %struct.SL_component, ptr %98, i32 0, i32 0, !dbg !5918
  %99 = load i8, ptr %flags190, align 1, !dbg !5918
  %conv191 = zext i8 %99 to i32, !dbg !5917
  %and192 = and i32 %conv191, -2, !dbg !5919
  switch i32 %and192, label %sw.default [
    i32 0, label %sw.bb193
    i32 2, label %sw.bb198
    i32 4, label %sw.bb201
    i32 8, label %sw.bb204
  ], !dbg !5920

sw.bb193:                                         ; preds = %while.body189
  %100 = load ptr, ptr %slp, align 8, !dbg !5921
  %len194 = getelementptr inbounds %struct.SL_component, ptr %100, i32 0, i32 1, !dbg !5923
  %101 = load i8, ptr %len194, align 1, !dbg !5923
  %conv195 = zext i8 %101 to i64, !dbg !5921
  %102 = load ptr, ptr %inode.addr, align 8, !dbg !5924
  %i_size196 = getelementptr inbounds %struct.inode, ptr %102, i32 0, i32 15, !dbg !5925
  %103 = load i64, ptr %i_size196, align 8, !dbg !5926
  %add197 = add i64 %103, %conv195, !dbg !5926
  store i64 %add197, ptr %i_size196, align 8, !dbg !5926
  br label %sw.epilog, !dbg !5927

sw.bb198:                                         ; preds = %while.body189
  %104 = load ptr, ptr %inode.addr, align 8, !dbg !5928
  %i_size199 = getelementptr inbounds %struct.inode, ptr %104, i32 0, i32 15, !dbg !5929
  %105 = load i64, ptr %i_size199, align 8, !dbg !5930
  %add200 = add i64 %105, 1, !dbg !5930
  store i64 %add200, ptr %i_size199, align 8, !dbg !5930
  br label %sw.epilog, !dbg !5931

sw.bb201:                                         ; preds = %while.body189
  %106 = load ptr, ptr %inode.addr, align 8, !dbg !5932
  %i_size202 = getelementptr inbounds %struct.inode, ptr %106, i32 0, i32 15, !dbg !5933
  %107 = load i64, ptr %i_size202, align 8, !dbg !5934
  %add203 = add i64 %107, 2, !dbg !5934
  store i64 %add203, ptr %i_size202, align 8, !dbg !5934
  br label %sw.epilog, !dbg !5935

sw.bb204:                                         ; preds = %while.body189
  store i32 1, ptr %rootflag, align 4, !dbg !5936
  %108 = load ptr, ptr %inode.addr, align 8, !dbg !5937
  %i_size205 = getelementptr inbounds %struct.inode, ptr %108, i32 0, i32 15, !dbg !5938
  %109 = load i64, ptr %i_size205, align 8, !dbg !5939
  %add206 = add i64 %109, 1, !dbg !5939
  store i64 %add206, ptr %i_size205, align 8, !dbg !5939
  br label %sw.epilog, !dbg !5940

sw.default:                                       ; preds = %while.body189
  br label %do.body207, !dbg !5941

do.body207:                                       ; preds = %sw.default
  br label %do.cond208, !dbg !5943

do.cond208:                                       ; preds = %do.body207
  br label %do.end209, !dbg !5943

do.end209:                                        ; preds = %do.cond208
  %call211 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #18, !dbg !5941
  store i32 %call211, ptr %tmp210, align 4, !dbg !5943
  %110 = load i32, ptr %tmp210, align 4, !dbg !5941
  br label %sw.epilog, !dbg !5945

sw.epilog:                                        ; preds = %do.end209, %sw.bb204, %sw.bb201, %sw.bb198, %sw.bb193
  %111 = load ptr, ptr %slp, align 8, !dbg !5946
  %len212 = getelementptr inbounds %struct.SL_component, ptr %111, i32 0, i32 1, !dbg !5947
  %112 = load i8, ptr %len212, align 1, !dbg !5947
  %conv213 = zext i8 %112 to i32, !dbg !5946
  %add214 = add i32 %conv213, 2, !dbg !5948
  %113 = load i32, ptr %slen, align 4, !dbg !5949
  %sub215 = sub i32 %113, %add214, !dbg !5949
  store i32 %sub215, ptr %slen, align 4, !dbg !5949
  %114 = load ptr, ptr %slp, align 8, !dbg !5950
  store ptr %114, ptr %oldslp, align 8, !dbg !5951
  %115 = load ptr, ptr %slp, align 8, !dbg !5952
  %116 = load ptr, ptr %slp, align 8, !dbg !5953
  %len216 = getelementptr inbounds %struct.SL_component, ptr %116, i32 0, i32 1, !dbg !5954
  %117 = load i8, ptr %len216, align 1, !dbg !5954
  %conv217 = zext i8 %117 to i32, !dbg !5953
  %idx.ext218 = sext i32 %conv217 to i64, !dbg !5955
  %add.ptr219 = getelementptr i8, ptr %115, i64 %idx.ext218, !dbg !5955
  %add.ptr220 = getelementptr i8, ptr %add.ptr219, i64 2, !dbg !5956
  store ptr %add.ptr220, ptr %slp, align 8, !dbg !5957
  %118 = load i32, ptr %slen, align 4, !dbg !5958
  %cmp221 = icmp slt i32 %118, 2, !dbg !5960
  br i1 %cmp221, label %if.then223, label %if.end240, !dbg !5961

if.then223:                                       ; preds = %sw.epilog
  %119 = load ptr, ptr %rr, align 8, !dbg !5962
  %u224 = getelementptr inbounds %struct.rock_ridge, ptr %119, i32 0, i32 3, !dbg !5965
  %flags225 = getelementptr inbounds %struct.RR_SL_s, ptr %u224, i32 0, i32 0, !dbg !5966
  %120 = load i8, ptr %flags225, align 1, !dbg !5966
  %conv226 = zext i8 %120 to i32, !dbg !5962
  %and227 = and i32 %conv226, 1, !dbg !5967
  %cmp228 = icmp ne i32 %and227, 0, !dbg !5968
  br i1 %cmp228, label %land.lhs.true230, label %if.end239, !dbg !5969

land.lhs.true230:                                 ; preds = %if.then223
  %121 = load ptr, ptr %oldslp, align 8, !dbg !5970
  %flags231 = getelementptr inbounds %struct.SL_component, ptr %121, i32 0, i32 0, !dbg !5971
  %122 = load i8, ptr %flags231, align 1, !dbg !5971
  %conv232 = zext i8 %122 to i32, !dbg !5970
  %and233 = and i32 %conv232, 1, !dbg !5972
  %cmp234 = icmp eq i32 %and233, 0, !dbg !5973
  br i1 %cmp234, label %if.then236, label %if.end239, !dbg !5974

if.then236:                                       ; preds = %land.lhs.true230
  %123 = load ptr, ptr %inode.addr, align 8, !dbg !5975
  %i_size237 = getelementptr inbounds %struct.inode, ptr %123, i32 0, i32 15, !dbg !5976
  %124 = load i64, ptr %i_size237, align 8, !dbg !5977
  %add238 = add i64 %124, 1, !dbg !5977
  store i64 %add238, ptr %i_size237, align 8, !dbg !5977
  br label %if.end239, !dbg !5975

if.end239:                                        ; preds = %if.then236, %land.lhs.true230, %if.then223
  br label %while.end, !dbg !5978

if.end240:                                        ; preds = %sw.epilog
  %125 = load i32, ptr %rootflag, align 4, !dbg !5979
  %tobool241 = icmp ne i32 %125, 0, !dbg !5979
  br i1 %tobool241, label %if.end251, label %land.lhs.true242, !dbg !5981

land.lhs.true242:                                 ; preds = %if.end240
  %126 = load ptr, ptr %oldslp, align 8, !dbg !5982
  %flags243 = getelementptr inbounds %struct.SL_component, ptr %126, i32 0, i32 0, !dbg !5983
  %127 = load i8, ptr %flags243, align 1, !dbg !5983
  %conv244 = zext i8 %127 to i32, !dbg !5982
  %and245 = and i32 %conv244, 1, !dbg !5984
  %cmp246 = icmp eq i32 %and245, 0, !dbg !5985
  br i1 %cmp246, label %if.then248, label %if.end251, !dbg !5986

if.then248:                                       ; preds = %land.lhs.true242
  %128 = load ptr, ptr %inode.addr, align 8, !dbg !5987
  %i_size249 = getelementptr inbounds %struct.inode, ptr %128, i32 0, i32 15, !dbg !5988
  %129 = load i64, ptr %i_size249, align 8, !dbg !5989
  %add250 = add i64 %129, 1, !dbg !5989
  store i64 %add250, ptr %i_size249, align 8, !dbg !5989
  br label %if.end251, !dbg !5987

if.end251:                                        ; preds = %if.then248, %land.lhs.true242, %if.end240
  br label %while.cond186, !dbg !5912, !llvm.loop !5990

while.end:                                        ; preds = %if.end239, %while.cond186
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldslp) #16, !dbg !5992
  call void @llvm.lifetime.end.p0(i64 8, ptr %slp) #16, !dbg !5992
  call void @llvm.lifetime.end.p0(i64 4, ptr %slen) #16, !dbg !5992
  %130 = load ptr, ptr %inode.addr, align 8, !dbg !5993
  %i_size252 = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 15, !dbg !5994
  %131 = load i64, ptr %i_size252, align 8, !dbg !5994
  %conv253 = trunc i64 %131 to i32, !dbg !5993
  store i32 %conv253, ptr %symlink_len, align 4, !dbg !5995
  br label %sw.epilog379, !dbg !5996

sw.bb254:                                         ; preds = %if.end34
  br label %do.body255, !dbg !5997

do.body255:                                       ; preds = %sw.bb254
  br label %do.cond256, !dbg !5999

do.cond256:                                       ; preds = %do.body255
  br label %do.end257, !dbg !5999

do.end257:                                        ; preds = %do.cond256
  %call259 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #18, !dbg !5997
  store i32 %call259, ptr %tmp258, align 4, !dbg !5999
  %132 = load i32, ptr %tmp258, align 4, !dbg !5997
  br label %out, !dbg !6001

sw.bb260:                                         ; preds = %if.end34
  %133 = load i32, ptr %flags.addr, align 4, !dbg !6002
  %and261 = and i32 %133, 2, !dbg !6004
  %tobool262 = icmp ne i32 %and261, 0, !dbg !6004
  br i1 %tobool262, label %if.then263, label %if.end269, !dbg !6005

if.then263:                                       ; preds = %sw.bb260
  br label %do.body264, !dbg !6006

do.body264:                                       ; preds = %if.then263
  br label %do.cond265, !dbg !6009

do.cond265:                                       ; preds = %do.body264
  br label %do.end266, !dbg !6009

do.end266:                                        ; preds = %do.cond265
  %call268 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #18, !dbg !6006
  store i32 %call268, ptr %tmp267, align 4, !dbg !6009
  %134 = load i32, ptr %tmp267, align 4, !dbg !6006
  br label %eio, !dbg !6011

if.end269:                                        ; preds = %sw.bb260
  %135 = load ptr, ptr %rr, align 8, !dbg !6012
  %u270 = getelementptr inbounds %struct.rock_ridge, ptr %135, i32 0, i32 3, !dbg !6013
  %location = getelementptr inbounds %struct.RR_CL_s, ptr %u270, i32 0, i32 0, !dbg !6014
  %arraydecay271 = getelementptr inbounds [8 x i8], ptr %location, i64 0, i64 0, !dbg !6012
  %call272 = call i32 @isonum_733(ptr noundef %arraydecay271) #17, !dbg !6015
  store i32 %call272, ptr %reloc_block, align 4, !dbg !6016
  %136 = load i32, ptr %reloc_block, align 4, !dbg !6017
  %conv273 = zext i32 %136 to i64, !dbg !6017
  %137 = load ptr, ptr %inode.addr, align 8, !dbg !6019
  %call274 = call ptr @ISOFS_I(ptr noundef %137) #17, !dbg !6020
  %i_iget5_block = getelementptr inbounds %struct.iso_inode_info, ptr %call274, i32 0, i32 0, !dbg !6021
  %138 = load i64, ptr %i_iget5_block, align 8, !dbg !6021
  %cmp275 = icmp eq i64 %conv273, %138, !dbg !6022
  br i1 %cmp275, label %land.lhs.true277, label %if.end287, !dbg !6023

land.lhs.true277:                                 ; preds = %if.end269
  %139 = load ptr, ptr %inode.addr, align 8, !dbg !6024
  %call278 = call ptr @ISOFS_I(ptr noundef %139) #17, !dbg !6025
  %i_iget5_offset = getelementptr inbounds %struct.iso_inode_info, ptr %call278, i32 0, i32 1, !dbg !6026
  %140 = load i64, ptr %i_iget5_offset, align 8, !dbg !6026
  %cmp279 = icmp eq i64 %140, 0, !dbg !6027
  br i1 %cmp279, label %if.then281, label %if.end287, !dbg !6028

if.then281:                                       ; preds = %land.lhs.true277
  br label %do.body282, !dbg !6029

do.body282:                                       ; preds = %if.then281
  br label %do.cond283, !dbg !6032

do.cond283:                                       ; preds = %do.body282
  br label %do.end284, !dbg !6032

do.end284:                                        ; preds = %do.cond283
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #18, !dbg !6029
  store i32 %call286, ptr %tmp285, align 4, !dbg !6032
  %141 = load i32, ptr %tmp285, align 4, !dbg !6029
  br label %eio, !dbg !6034

if.end287:                                        ; preds = %land.lhs.true277, %if.end269
  %142 = load i32, ptr %reloc_block, align 4, !dbg !6035
  %143 = load ptr, ptr %inode.addr, align 8, !dbg !6036
  %call288 = call ptr @ISOFS_I(ptr noundef %143) #17, !dbg !6037
  %i_first_extent = getelementptr inbounds %struct.iso_inode_info, ptr %call288, i32 0, i32 2, !dbg !6038
  store i32 %142, ptr %i_first_extent, align 8, !dbg !6039
  %144 = load ptr, ptr %inode.addr, align 8, !dbg !6040
  %i_sb289 = getelementptr inbounds %struct.inode, ptr %144, i32 0, i32 9, !dbg !6041
  %145 = load ptr, ptr %i_sb289, align 8, !dbg !6041
  %146 = load i32, ptr %reloc_block, align 4, !dbg !6042
  %conv290 = zext i32 %146 to i64, !dbg !6042
  %call291 = call ptr @isofs_iget_reloc(ptr noundef %145, i64 noundef %conv290, i64 noundef 0) #17, !dbg !6043
  store ptr %call291, ptr %reloc, align 8, !dbg !6044
  %147 = load ptr, ptr %reloc, align 8, !dbg !6045
  %call292 = call zeroext i1 @IS_ERR(ptr noundef %147) #17, !dbg !6047
  br i1 %call292, label %if.then293, label %if.end296, !dbg !6048

if.then293:                                       ; preds = %if.end287
  %148 = load ptr, ptr %reloc, align 8, !dbg !6049
  %call294 = call i64 @PTR_ERR(ptr noundef %148) #17, !dbg !6051
  %conv295 = trunc i64 %call294 to i32, !dbg !6051
  store i32 %conv295, ptr %ret, align 4, !dbg !6052
  br label %out, !dbg !6053

if.end296:                                        ; preds = %if.end287
  %149 = load ptr, ptr %reloc, align 8, !dbg !6054
  %i_mode297 = getelementptr inbounds %struct.inode, ptr %149, i32 0, i32 0, !dbg !6055
  %150 = load i16, ptr %i_mode297, align 8, !dbg !6055
  %151 = load ptr, ptr %inode.addr, align 8, !dbg !6056
  %i_mode298 = getelementptr inbounds %struct.inode, ptr %151, i32 0, i32 0, !dbg !6057
  store i16 %150, ptr %i_mode298, align 8, !dbg !6058
  %152 = load ptr, ptr %inode.addr, align 8, !dbg !6059
  %153 = load ptr, ptr %reloc, align 8, !dbg !6060
  %154 = getelementptr inbounds %struct.inode, ptr %153, i32 0, i32 13, !dbg !6061
  %155 = load i32, ptr %154, align 8, !dbg !6061
  call void @set_nlink(ptr noundef %152, i32 noundef %155) #17, !dbg !6062
  %156 = load ptr, ptr %inode.addr, align 8, !dbg !6063
  %i_uid = getelementptr inbounds %struct.inode, ptr %156, i32 0, i32 2, !dbg !6064
  %157 = load ptr, ptr %reloc, align 8, !dbg !6065
  %i_uid299 = getelementptr inbounds %struct.inode, ptr %157, i32 0, i32 2, !dbg !6066
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %i_uid299, i64 4, i1 false), !dbg !6066
  %158 = load ptr, ptr %inode.addr, align 8, !dbg !6067
  %i_gid = getelementptr inbounds %struct.inode, ptr %158, i32 0, i32 4, !dbg !6068
  %159 = load ptr, ptr %reloc, align 8, !dbg !6069
  %i_gid300 = getelementptr inbounds %struct.inode, ptr %159, i32 0, i32 4, !dbg !6070
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 8 %i_gid300, i64 4, i1 false), !dbg !6070
  %160 = load ptr, ptr %reloc, align 8, !dbg !6071
  %i_rdev301 = getelementptr inbounds %struct.inode, ptr %160, i32 0, i32 14, !dbg !6072
  %161 = load i32, ptr %i_rdev301, align 4, !dbg !6072
  %162 = load ptr, ptr %inode.addr, align 8, !dbg !6073
  %i_rdev302 = getelementptr inbounds %struct.inode, ptr %162, i32 0, i32 14, !dbg !6074
  store i32 %161, ptr %i_rdev302, align 4, !dbg !6075
  %163 = load ptr, ptr %reloc, align 8, !dbg !6076
  %i_size303 = getelementptr inbounds %struct.inode, ptr %163, i32 0, i32 15, !dbg !6077
  %164 = load i64, ptr %i_size303, align 8, !dbg !6077
  %165 = load ptr, ptr %inode.addr, align 8, !dbg !6078
  %i_size304 = getelementptr inbounds %struct.inode, ptr %165, i32 0, i32 15, !dbg !6079
  store i64 %164, ptr %i_size304, align 8, !dbg !6080
  %166 = load ptr, ptr %reloc, align 8, !dbg !6081
  %i_blocks = getelementptr inbounds %struct.inode, ptr %166, i32 0, i32 23, !dbg !6082
  %167 = load i64, ptr %i_blocks, align 8, !dbg !6082
  %168 = load ptr, ptr %inode.addr, align 8, !dbg !6083
  %i_blocks305 = getelementptr inbounds %struct.inode, ptr %168, i32 0, i32 23, !dbg !6084
  store i64 %167, ptr %i_blocks305, align 8, !dbg !6085
  %169 = load ptr, ptr %inode.addr, align 8, !dbg !6086
  %i_atime306 = getelementptr inbounds %struct.inode, ptr %169, i32 0, i32 16, !dbg !6087
  %170 = load ptr, ptr %reloc, align 8, !dbg !6088
  %i_atime307 = getelementptr inbounds %struct.inode, ptr %170, i32 0, i32 16, !dbg !6089
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime306, ptr align 8 %i_atime307, i64 16, i1 false), !dbg !6089
  %171 = load ptr, ptr %inode.addr, align 8, !dbg !6090
  %172 = load ptr, ptr %reloc, align 8, !dbg !6091
  %call308 = call { i64, i64 } @inode_get_ctime(ptr noundef %172) #17, !dbg !6092
  %173 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 0, !dbg !6092
  %174 = extractvalue { i64, i64 } %call308, 0, !dbg !6092
  store i64 %174, ptr %173, align 8, !dbg !6092
  %175 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 1, !dbg !6092
  %176 = extractvalue { i64, i64 } %call308, 1, !dbg !6092
  store i64 %176, ptr %175, align 8, !dbg !6092
  %177 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 0, !dbg !6093
  %178 = load i64, ptr %177, align 8, !dbg !6093
  %179 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 1, !dbg !6093
  %180 = load i64, ptr %179, align 8, !dbg !6093
  %call309 = call { i64, i64 } @inode_set_ctime_to_ts(ptr noundef %171, i64 %178, i64 %180) #17, !dbg !6093
  %181 = getelementptr inbounds { i64, i64 }, ptr %coerce310, i32 0, i32 0, !dbg !6093
  %182 = extractvalue { i64, i64 } %call309, 0, !dbg !6093
  store i64 %182, ptr %181, align 8, !dbg !6093
  %183 = getelementptr inbounds { i64, i64 }, ptr %coerce310, i32 0, i32 1, !dbg !6093
  %184 = extractvalue { i64, i64 } %call309, 1, !dbg !6093
  store i64 %184, ptr %183, align 8, !dbg !6093
  %185 = load ptr, ptr %inode.addr, align 8, !dbg !6094
  %i_mtime311 = getelementptr inbounds %struct.inode, ptr %185, i32 0, i32 17, !dbg !6095
  %186 = load ptr, ptr %reloc, align 8, !dbg !6096
  %i_mtime312 = getelementptr inbounds %struct.inode, ptr %186, i32 0, i32 17, !dbg !6097
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime311, ptr align 8 %i_mtime312, i64 16, i1 false), !dbg !6097
  %187 = load ptr, ptr %reloc, align 8, !dbg !6098
  call void @iput(ptr noundef %187) #17, !dbg !6099
  br label %sw.epilog379, !dbg !6100

sw.bb313:                                         ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 4, ptr %algo) #16, !dbg !6101
  call void @llvm.dbg.declare(metadata ptr %algo, metadata !5593, metadata !DIExpression()), !dbg !6102
  %188 = load ptr, ptr %inode.addr, align 8, !dbg !6103
  %i_sb314 = getelementptr inbounds %struct.inode, ptr %188, i32 0, i32 9, !dbg !6105
  %189 = load ptr, ptr %i_sb314, align 8, !dbg !6105
  %call315 = call ptr @ISOFS_SB(ptr noundef %189) #17, !dbg !6106
  %s_nocompress = getelementptr inbounds %struct.isofs_sb_info, ptr %call315, i32 0, i32 11, !dbg !6107
  %bf.load316 = load i16, ptr %s_nocompress, align 4, !dbg !6107
  %bf.lshr317 = lshr i16 %bf.load316, 4, !dbg !6107
  %bf.clear318 = and i16 %bf.lshr317, 1, !dbg !6107
  %bf.cast319 = zext i16 %bf.clear318 to i32, !dbg !6107
  %tobool320 = icmp ne i32 %bf.cast319, 0, !dbg !6106
  br i1 %tobool320, label %if.then321, label %if.end322, !dbg !6108

if.then321:                                       ; preds = %sw.bb313
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6109

if.end322:                                        ; preds = %sw.bb313
  %190 = load ptr, ptr %rr, align 8, !dbg !6110
  %u323 = getelementptr inbounds %struct.rock_ridge, ptr %190, i32 0, i32 3, !dbg !6111
  %algorithm = getelementptr inbounds %struct.RR_ZF_s, ptr %u323, i32 0, i32 0, !dbg !6112
  %arraydecay324 = getelementptr inbounds [2 x i8], ptr %algorithm, i64 0, i64 0, !dbg !6110
  %call325 = call i32 @isonum_721(ptr noundef %arraydecay324) #17, !dbg !6113
  store i32 %call325, ptr %algo, align 4, !dbg !6114
  %191 = load i32, ptr %algo, align 4, !dbg !6115
  %cmp326 = icmp eq i32 %191, 31344, !dbg !6116
  br i1 %cmp326, label %if.then328, label %if.else363, !dbg !6117

if.then328:                                       ; preds = %if.end322
  call void @llvm.lifetime.start.p0(i64 4, ptr %block_shift) #16, !dbg !6118
  call void @llvm.dbg.declare(metadata ptr %block_shift, metadata !5595, metadata !DIExpression()), !dbg !6119
  %192 = load ptr, ptr %rr, align 8, !dbg !6120
  %u329 = getelementptr inbounds %struct.rock_ridge, ptr %192, i32 0, i32 3, !dbg !6121
  %parms = getelementptr inbounds %struct.RR_ZF_s, ptr %u329, i32 0, i32 1, !dbg !6122
  %arrayidx330 = getelementptr [2 x i8], ptr %parms, i64 0, i64 1, !dbg !6120
  %call331 = call i32 @isonum_711(ptr noundef %arrayidx330) #17, !dbg !6123
  store i32 %call331, ptr %block_shift, align 4, !dbg !6119
  %193 = load i32, ptr %block_shift, align 4, !dbg !6124
  %cmp332 = icmp sgt i32 %193, 17, !dbg !6126
  br i1 %cmp332, label %if.then334, label %if.else340, !dbg !6127

if.then334:                                       ; preds = %if.then328
  br label %do.body335, !dbg !6128

do.body335:                                       ; preds = %if.then334
  br label %do.cond336, !dbg !6131

do.cond336:                                       ; preds = %do.body335
  br label %do.end337, !dbg !6131

do.end337:                                        ; preds = %do.cond336
  %194 = load i32, ptr %block_shift, align 4, !dbg !6128
  %call339 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, i32 noundef %194) #18, !dbg !6128
  store i32 %call339, ptr %tmp338, align 4, !dbg !6131
  %195 = load i32, ptr %tmp338, align 4, !dbg !6128
  br label %if.end362, !dbg !6133

if.else340:                                       ; preds = %if.then328
  %196 = load ptr, ptr %inode.addr, align 8, !dbg !6134
  %call341 = call ptr @ISOFS_I(ptr noundef %196) #17, !dbg !6136
  %i_file_format = getelementptr inbounds %struct.iso_inode_info, ptr %call341, i32 0, i32 3, !dbg !6137
  store i8 2, ptr %i_file_format, align 4, !dbg !6138
  %197 = load ptr, ptr %rr, align 8, !dbg !6139
  %u342 = getelementptr inbounds %struct.rock_ridge, ptr %197, i32 0, i32 3, !dbg !6140
  %parms343 = getelementptr inbounds %struct.RR_ZF_s, ptr %u342, i32 0, i32 1, !dbg !6141
  %arrayidx344 = getelementptr [2 x i8], ptr %parms343, i64 0, i64 0, !dbg !6139
  %call345 = call i32 @isonum_711(ptr noundef %arrayidx344) #17, !dbg !6142
  %conv346 = trunc i32 %call345 to i8, !dbg !6142
  %198 = load ptr, ptr %inode.addr, align 8, !dbg !6143
  %call347 = call ptr @ISOFS_I(ptr noundef %198) #17, !dbg !6144
  %i_format_parm = getelementptr inbounds %struct.iso_inode_info, ptr %call347, i32 0, i32 4, !dbg !6145
  %arrayidx348 = getelementptr [3 x i8], ptr %i_format_parm, i64 0, i64 0, !dbg !6144
  store i8 %conv346, ptr %arrayidx348, align 1, !dbg !6146
  %199 = load ptr, ptr %rr, align 8, !dbg !6147
  %u349 = getelementptr inbounds %struct.rock_ridge, ptr %199, i32 0, i32 3, !dbg !6148
  %parms350 = getelementptr inbounds %struct.RR_ZF_s, ptr %u349, i32 0, i32 1, !dbg !6149
  %arrayidx351 = getelementptr [2 x i8], ptr %parms350, i64 0, i64 1, !dbg !6147
  %call352 = call i32 @isonum_711(ptr noundef %arrayidx351) #17, !dbg !6150
  %conv353 = trunc i32 %call352 to i8, !dbg !6150
  %200 = load ptr, ptr %inode.addr, align 8, !dbg !6151
  %call354 = call ptr @ISOFS_I(ptr noundef %200) #17, !dbg !6152
  %i_format_parm355 = getelementptr inbounds %struct.iso_inode_info, ptr %call354, i32 0, i32 4, !dbg !6153
  %arrayidx356 = getelementptr [3 x i8], ptr %i_format_parm355, i64 0, i64 1, !dbg !6152
  store i8 %conv353, ptr %arrayidx356, align 1, !dbg !6154
  %201 = load ptr, ptr %rr, align 8, !dbg !6155
  %u357 = getelementptr inbounds %struct.rock_ridge, ptr %201, i32 0, i32 3, !dbg !6156
  %real_size = getelementptr inbounds %struct.RR_ZF_s, ptr %u357, i32 0, i32 2, !dbg !6157
  %arraydecay358 = getelementptr inbounds [8 x i8], ptr %real_size, i64 0, i64 0, !dbg !6155
  %call359 = call i32 @isonum_733(ptr noundef %arraydecay358) #17, !dbg !6158
  %conv360 = zext i32 %call359 to i64, !dbg !6158
  %202 = load ptr, ptr %inode.addr, align 8, !dbg !6159
  %i_size361 = getelementptr inbounds %struct.inode, ptr %202, i32 0, i32 15, !dbg !6160
  store i64 %conv360, ptr %i_size361, align 8, !dbg !6161
  br label %if.end362

if.end362:                                        ; preds = %if.else340, %do.end337
  call void @llvm.lifetime.end.p0(i64 4, ptr %block_shift) #16, !dbg !6162
  br label %if.end377, !dbg !6163

if.else363:                                       ; preds = %if.end322
  br label %do.body364, !dbg !6164

do.body364:                                       ; preds = %if.else363
  br label %do.cond365, !dbg !6167

do.cond365:                                       ; preds = %do.body364
  br label %do.end366, !dbg !6167

do.end366:                                        ; preds = %do.cond365
  %203 = load ptr, ptr %rr, align 8, !dbg !6164
  %u368 = getelementptr inbounds %struct.rock_ridge, ptr %203, i32 0, i32 3, !dbg !6164
  %algorithm369 = getelementptr inbounds %struct.RR_ZF_s, ptr %u368, i32 0, i32 0, !dbg !6164
  %arrayidx370 = getelementptr [2 x i8], ptr %algorithm369, i64 0, i64 0, !dbg !6164
  %204 = load i8, ptr %arrayidx370, align 1, !dbg !6164
  %conv371 = zext i8 %204 to i32, !dbg !6164
  %205 = load ptr, ptr %rr, align 8, !dbg !6164
  %u372 = getelementptr inbounds %struct.rock_ridge, ptr %205, i32 0, i32 3, !dbg !6164
  %algorithm373 = getelementptr inbounds %struct.RR_ZF_s, ptr %u372, i32 0, i32 0, !dbg !6164
  %arrayidx374 = getelementptr [2 x i8], ptr %algorithm373, i64 0, i64 1, !dbg !6164
  %206 = load i8, ptr %arrayidx374, align 1, !dbg !6164
  %conv375 = zext i8 %206 to i32, !dbg !6164
  %call376 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, i32 noundef %conv371, i32 noundef %conv375) #18, !dbg !6164
  store i32 %call376, ptr %tmp367, align 4, !dbg !6167
  %207 = load i32, ptr %tmp367, align 4, !dbg !6164
  br label %if.end377

if.end377:                                        ; preds = %do.end366, %if.end362
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6169

cleanup:                                          ; preds = %if.end377, %if.then321
  call void @llvm.lifetime.end.p0(i64 4, ptr %algo) #16, !dbg !6170
  br label %sw.epilog379

sw.default378:                                    ; preds = %if.end34
  br label %sw.epilog379, !dbg !6171

sw.epilog379:                                     ; preds = %sw.default378, %cleanup, %if.end296, %while.end, %if.end179, %if.end109, %sw.bb79, %do.end76, %sw.bb39, %if.end38
  br label %while.cond, !dbg !5651, !llvm.loop !6172

while.end380:                                     ; preds = %while.cond
  %call381 = call i32 @rock_continue(ptr noundef %rs) #17, !dbg !6174
  store i32 %call381, ptr %ret, align 4, !dbg !6175
  %208 = load i32, ptr %ret, align 4, !dbg !6176
  %cmp382 = icmp eq i32 %208, 0, !dbg !6178
  br i1 %cmp382, label %if.then384, label %if.end385, !dbg !6179

if.then384:                                       ; preds = %while.end380
  br label %repeat, !dbg !6180

if.end385:                                        ; preds = %while.end380
  %209 = load i32, ptr %ret, align 4, !dbg !6181
  %cmp386 = icmp eq i32 %209, 1, !dbg !6183
  br i1 %cmp386, label %if.then388, label %if.end389, !dbg !6184

if.then388:                                       ; preds = %if.end385
  store i32 0, ptr %ret, align 4, !dbg !6185
  br label %if.end389, !dbg !6186

if.end389:                                        ; preds = %if.then388, %if.end385
  br label %out, !dbg !6187

out:                                              ; preds = %eio, %if.end389, %if.then293, %do.end257, %if.then54, %if.then37, %if.then33, %if.then14
  call void @llvm.dbg.label(metadata !5598), !dbg !6188
  %buffer = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 0, !dbg !6189
  %210 = load ptr, ptr %buffer, align 8, !dbg !6189
  call void @kfree(ptr noundef %210) #17, !dbg !6190
  %211 = load i32, ptr %ret, align 4, !dbg !6191
  store i32 %211, ptr %retval, align 4, !dbg !6192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup390, !dbg !6192

eio:                                              ; preds = %do.end284, %do.end266, %if.then20
  call void @llvm.dbg.label(metadata !5599), !dbg !6193
  store i32 -5, ptr %ret, align 4, !dbg !6194
  br label %out, !dbg !6195

cleanup390:                                       ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 48, ptr %rs) #16, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 4, ptr %rootflag) #16, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 8, ptr %rr) #16, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 8, ptr %reloc) #16, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 4, ptr %reloc_block) #16, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 4, ptr %sig) #16, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #16, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 4, ptr %symlink_len) #16, !dbg !6196
  %212 = load i32, ptr %retval, align 4, !dbg !6196
  ret i32 %212, !dbg !6196
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rock_ridge_symlink_read_folio(ptr noundef %file, ptr noundef %folio) #0 align 16 !dbg !6197 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %folio.addr = alloca ptr, align 8
  %page = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %link = alloca ptr, align 8
  %bufsize = alloca i64, align 8
  %bh = alloca ptr, align 8
  %rpnt = alloca ptr, align 8
  %pnt = alloca ptr, align 8
  %raw_de = alloca ptr, align 8
  %block = alloca i64, align 8
  %offset = alloca i64, align 8
  %sig = alloca i32, align 4
  %rr = alloca ptr, align 8
  %rs = alloca %struct.rock_state, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6199, metadata !DIExpression()), !dbg !6223
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6200, metadata !DIExpression()), !dbg !6224
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !6225
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6201, metadata !DIExpression()), !dbg !6226
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6227
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6228
  store ptr %1, ptr %page, align 8, !dbg !6226
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6202, metadata !DIExpression()), !dbg !6230
  %2 = load ptr, ptr %page, align 8, !dbg !6231
  %3 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, !dbg !6232
  %mapping = getelementptr inbounds %struct.anon.27, ptr %3, i32 0, i32 1, !dbg !6232
  %4 = load ptr, ptr %mapping, align 8, !dbg !6232
  %host = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 0, !dbg !6233
  %5 = load ptr, ptr %host, align 8, !dbg !6233
  store ptr %5, ptr %inode, align 8, !dbg !6230
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #16, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !6203, metadata !DIExpression()), !dbg !6235
  %6 = load ptr, ptr %inode, align 8, !dbg !6236
  %call = call ptr @ISOFS_I(ptr noundef %6) #17, !dbg !6237
  store ptr %call, ptr %ei, align 8, !dbg !6235
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #16, !dbg !6238
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !6204, metadata !DIExpression()), !dbg !6239
  %7 = load ptr, ptr %inode, align 8, !dbg !6240
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9, !dbg !6241
  %8 = load ptr, ptr %i_sb, align 8, !dbg !6241
  %call1 = call ptr @ISOFS_SB(ptr noundef %8) #17, !dbg !6242
  store ptr %call1, ptr %sbi, align 8, !dbg !6239
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !6243
  call void @llvm.dbg.declare(metadata ptr %link, metadata !6205, metadata !DIExpression()), !dbg !6244
  %9 = load ptr, ptr %page, align 8, !dbg !6245
  %call2 = call ptr @lowmem_page_address(ptr noundef %9) #17, !dbg !6245
  store ptr %call2, ptr %link, align 8, !dbg !6244
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufsize) #16, !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %bufsize, metadata !6206, metadata !DIExpression()), !dbg !6247
  %10 = load ptr, ptr %inode, align 8, !dbg !6248
  %i_sb3 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9, !dbg !6248
  %11 = load ptr, ptr %i_sb3, align 8, !dbg !6248
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 3, !dbg !6248
  %12 = load i64, ptr %s_blocksize, align 8, !dbg !6248
  store i64 %12, ptr %bufsize, align 8, !dbg !6247
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #16, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %bh, metadata !6207, metadata !DIExpression()), !dbg !6250
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpnt) #16, !dbg !6251
  call void @llvm.dbg.declare(metadata ptr %rpnt, metadata !6208, metadata !DIExpression()), !dbg !6252
  %13 = load ptr, ptr %link, align 8, !dbg !6253
  store ptr %13, ptr %rpnt, align 8, !dbg !6252
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnt) #16, !dbg !6254
  call void @llvm.dbg.declare(metadata ptr %pnt, metadata !6209, metadata !DIExpression()), !dbg !6255
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw_de) #16, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %raw_de, metadata !6210, metadata !DIExpression()), !dbg !6257
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !6258
  call void @llvm.dbg.declare(metadata ptr %block, metadata !6211, metadata !DIExpression()), !dbg !6259
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !6258
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6212, metadata !DIExpression()), !dbg !6260
  call void @llvm.lifetime.start.p0(i64 4, ptr %sig) #16, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !6213, metadata !DIExpression()), !dbg !6262
  call void @llvm.lifetime.start.p0(i64 8, ptr %rr) #16, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %rr, metadata !6214, metadata !DIExpression()), !dbg !6264
  call void @llvm.lifetime.start.p0(i64 48, ptr %rs) #16, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %rs, metadata !6215, metadata !DIExpression()), !dbg !6266
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6267
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6216, metadata !DIExpression()), !dbg !6268
  %14 = load ptr, ptr %sbi, align 8, !dbg !6269
  %s_rock = getelementptr inbounds %struct.isofs_sb_info, ptr %14, i32 0, i32 11, !dbg !6271
  %bf.load = load i16, ptr %s_rock, align 4, !dbg !6271
  %bf.lshr = lshr i16 %bf.load, 1, !dbg !6271
  %bf.clear = and i16 %bf.lshr, 3, !dbg !6271
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6271
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6269
  br i1 %tobool, label %if.end, label %if.then, !dbg !6272

if.then:                                          ; preds = %entry
  br label %error, !dbg !6273

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %inode, align 8, !dbg !6274
  call void @init_rock_state(ptr noundef %rs, ptr noundef %15) #17, !dbg !6275
  %16 = load ptr, ptr %ei, align 8, !dbg !6276
  %i_iget5_block = getelementptr inbounds %struct.iso_inode_info, ptr %16, i32 0, i32 0, !dbg !6277
  %17 = load i64, ptr %i_iget5_block, align 8, !dbg !6277
  store i64 %17, ptr %block, align 8, !dbg !6278
  %18 = load ptr, ptr %inode, align 8, !dbg !6279
  %i_sb4 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 9, !dbg !6280
  %19 = load ptr, ptr %i_sb4, align 8, !dbg !6280
  %20 = load i64, ptr %block, align 8, !dbg !6281
  %call5 = call ptr @sb_bread(ptr noundef %19, i64 noundef %20) #17, !dbg !6282
  store ptr %call5, ptr %bh, align 8, !dbg !6283
  %21 = load ptr, ptr %bh, align 8, !dbg !6284
  %tobool6 = icmp ne ptr %21, null, !dbg !6284
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6286

if.then7:                                         ; preds = %if.end
  br label %out_noread, !dbg !6287

if.end8:                                          ; preds = %if.end
  %22 = load ptr, ptr %ei, align 8, !dbg !6288
  %i_iget5_offset = getelementptr inbounds %struct.iso_inode_info, ptr %22, i32 0, i32 1, !dbg !6289
  %23 = load i64, ptr %i_iget5_offset, align 8, !dbg !6289
  store i64 %23, ptr %offset, align 8, !dbg !6290
  %24 = load ptr, ptr %bh, align 8, !dbg !6291
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5, !dbg !6292
  %25 = load ptr, ptr %b_data, align 8, !dbg !6292
  %26 = load i64, ptr %offset, align 8, !dbg !6293
  %add.ptr = getelementptr i8, ptr %25, i64 %26, !dbg !6294
  store ptr %add.ptr, ptr %pnt, align 8, !dbg !6295
  %27 = load ptr, ptr %pnt, align 8, !dbg !6296
  store ptr %27, ptr %raw_de, align 8, !dbg !6297
  %28 = load i64, ptr %offset, align 8, !dbg !6298
  %29 = load ptr, ptr %pnt, align 8, !dbg !6300
  %30 = load i8, ptr %29, align 1, !dbg !6301
  %conv = zext i8 %30 to i64, !dbg !6301
  %add = add i64 %28, %conv, !dbg !6302
  %31 = load i64, ptr %bufsize, align 8, !dbg !6303
  %cmp = icmp ugt i64 %add, %31, !dbg !6304
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !6305

if.then10:                                        ; preds = %if.end8
  br label %out_bad_span, !dbg !6306

if.end11:                                         ; preds = %if.end8
  %32 = load ptr, ptr %raw_de, align 8, !dbg !6307
  %33 = load ptr, ptr %inode, align 8, !dbg !6308
  call void @setup_rock_ridge(ptr noundef %32, ptr noundef %33, ptr noundef %rs) #17, !dbg !6309
  br label %repeat, !dbg !6309

repeat:                                           ; preds = %if.then68, %if.end11
  call void @llvm.dbg.label(metadata !6217), !dbg !6310
  br label %while.cond, !dbg !6311

while.cond:                                       ; preds = %sw.epilog, %repeat
  %len = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !6312
  %34 = load i32, ptr %len, align 8, !dbg !6312
  %cmp12 = icmp sgt i32 %34, 2, !dbg !6313
  br i1 %cmp12, label %while.body, label %while.end, !dbg !6311

while.body:                                       ; preds = %while.cond
  %chr = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !6314
  %35 = load ptr, ptr %chr, align 8, !dbg !6314
  store ptr %35, ptr %rr, align 8, !dbg !6316
  %36 = load ptr, ptr %rr, align 8, !dbg !6317
  %len14 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 1, !dbg !6319
  %37 = load i8, ptr %len14, align 1, !dbg !6319
  %conv15 = zext i8 %37 to i32, !dbg !6317
  %cmp16 = icmp slt i32 %conv15, 3, !dbg !6320
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !6321

if.then18:                                        ; preds = %while.body
  br label %out, !dbg !6322

if.end19:                                         ; preds = %while.body
  %chr20 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !6323
  %38 = load ptr, ptr %chr20, align 8, !dbg !6323
  %call21 = call i32 @isonum_721(ptr noundef %38) #17, !dbg !6324
  store i32 %call21, ptr %sig, align 4, !dbg !6325
  %39 = load i32, ptr %sig, align 4, !dbg !6326
  %call22 = call i32 @rock_check_overflow(ptr noundef %rs, i32 noundef %39) #17, !dbg !6328
  %tobool23 = icmp ne i32 %call22, 0, !dbg !6328
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6329

if.then24:                                        ; preds = %if.end19
  br label %out, !dbg !6330

if.end25:                                         ; preds = %if.end19
  %40 = load ptr, ptr %rr, align 8, !dbg !6331
  %len26 = getelementptr inbounds %struct.rock_ridge, ptr %40, i32 0, i32 1, !dbg !6332
  %41 = load i8, ptr %len26, align 1, !dbg !6332
  %conv27 = zext i8 %41 to i32, !dbg !6331
  %chr28 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1, !dbg !6333
  %42 = load ptr, ptr %chr28, align 8, !dbg !6334
  %idx.ext = sext i32 %conv27 to i64, !dbg !6334
  %add.ptr29 = getelementptr i8, ptr %42, i64 %idx.ext, !dbg !6334
  store ptr %add.ptr29, ptr %chr28, align 8, !dbg !6334
  %43 = load ptr, ptr %rr, align 8, !dbg !6335
  %len30 = getelementptr inbounds %struct.rock_ridge, ptr %43, i32 0, i32 1, !dbg !6336
  %44 = load i8, ptr %len30, align 1, !dbg !6336
  %conv31 = zext i8 %44 to i32, !dbg !6335
  %len32 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !6337
  %45 = load i32, ptr %len32, align 8, !dbg !6338
  %sub = sub i32 %45, %conv31, !dbg !6338
  store i32 %sub, ptr %len32, align 8, !dbg !6338
  %len33 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2, !dbg !6339
  %46 = load i32, ptr %len33, align 8, !dbg !6339
  %cmp34 = icmp slt i32 %46, 0, !dbg !6341
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !6342

if.then36:                                        ; preds = %if.end25
  br label %out, !dbg !6343

if.end37:                                         ; preds = %if.end25
  %47 = load i32, ptr %sig, align 4, !dbg !6344
  switch i32 %47, label %sw.default [
    i32 21074, label %sw.bb
    i32 20563, label %sw.bb43
    i32 19539, label %sw.bb48
    i32 17731, label %sw.bb55
  ], !dbg !6345

sw.bb:                                            ; preds = %if.end37
  %48 = load ptr, ptr %rr, align 8, !dbg !6346
  %u = getelementptr inbounds %struct.rock_ridge, ptr %48, i32 0, i32 3, !dbg !6349
  %flags = getelementptr inbounds %struct.RR_RR_s, ptr %u, i32 0, i32 0, !dbg !6350
  %arrayidx = getelementptr [1 x i8], ptr %flags, i64 0, i64 0, !dbg !6346
  %49 = load i8, ptr %arrayidx, align 1, !dbg !6346
  %conv38 = zext i8 %49 to i32, !dbg !6346
  %and = and i32 %conv38, 4, !dbg !6351
  %cmp39 = icmp eq i32 %and, 0, !dbg !6352
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !6353

if.then41:                                        ; preds = %sw.bb
  br label %out, !dbg !6354

if.end42:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !6355

sw.bb43:                                          ; preds = %if.end37
  %50 = load ptr, ptr %rr, align 8, !dbg !6356
  %51 = load ptr, ptr %inode, align 8, !dbg !6358
  %call44 = call i32 @check_sp(ptr noundef %50, ptr noundef %51) #17, !dbg !6359
  %tobool45 = icmp ne i32 %call44, 0, !dbg !6359
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6360

if.then46:                                        ; preds = %sw.bb43
  br label %out, !dbg !6361

if.end47:                                         ; preds = %sw.bb43
  br label %sw.epilog, !dbg !6362

sw.bb48:                                          ; preds = %if.end37
  %52 = load ptr, ptr %rpnt, align 8, !dbg !6363
  %53 = load ptr, ptr %rr, align 8, !dbg !6364
  %54 = load ptr, ptr %link, align 8, !dbg !6365
  %add.ptr49 = getelementptr i8, ptr %54, i64 4095, !dbg !6366
  %call50 = call ptr @get_symlink_chunk(ptr noundef %52, ptr noundef %53, ptr noundef %add.ptr49) #17, !dbg !6367
  store ptr %call50, ptr %rpnt, align 8, !dbg !6368
  %55 = load ptr, ptr %rpnt, align 8, !dbg !6369
  %cmp51 = icmp eq ptr %55, null, !dbg !6371
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !6372

if.then53:                                        ; preds = %sw.bb48
  br label %out, !dbg !6373

if.end54:                                         ; preds = %sw.bb48
  br label %sw.epilog, !dbg !6374

sw.bb55:                                          ; preds = %if.end37
  %56 = load ptr, ptr %rr, align 8, !dbg !6375
  %u56 = getelementptr inbounds %struct.rock_ridge, ptr %56, i32 0, i32 3, !dbg !6376
  %extent = getelementptr inbounds %struct.SU_CE_s, ptr %u56, i32 0, i32 0, !dbg !6377
  %arraydecay = getelementptr inbounds [8 x i8], ptr %extent, i64 0, i64 0, !dbg !6375
  %call57 = call i32 @isonum_733(ptr noundef %arraydecay) #17, !dbg !6378
  %cont_extent = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 4, !dbg !6379
  store i32 %call57, ptr %cont_extent, align 8, !dbg !6380
  %57 = load ptr, ptr %rr, align 8, !dbg !6381
  %u58 = getelementptr inbounds %struct.rock_ridge, ptr %57, i32 0, i32 3, !dbg !6382
  %offset59 = getelementptr inbounds %struct.SU_CE_s, ptr %u58, i32 0, i32 1, !dbg !6383
  %arraydecay60 = getelementptr inbounds [8 x i8], ptr %offset59, i64 0, i64 0, !dbg !6381
  %call61 = call i32 @isonum_733(ptr noundef %arraydecay60) #17, !dbg !6384
  %cont_offset = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 5, !dbg !6385
  store i32 %call61, ptr %cont_offset, align 4, !dbg !6386
  %58 = load ptr, ptr %rr, align 8, !dbg !6387
  %u62 = getelementptr inbounds %struct.rock_ridge, ptr %58, i32 0, i32 3, !dbg !6388
  %size = getelementptr inbounds %struct.SU_CE_s, ptr %u62, i32 0, i32 2, !dbg !6389
  %arraydecay63 = getelementptr inbounds [8 x i8], ptr %size, i64 0, i64 0, !dbg !6387
  %call64 = call i32 @isonum_733(ptr noundef %arraydecay63) #17, !dbg !6390
  %cont_size = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 3, !dbg !6391
  store i32 %call64, ptr %cont_size, align 4, !dbg !6392
  br label %sw.epilog, !dbg !6393

sw.default:                                       ; preds = %if.end37
  br label %sw.epilog, !dbg !6394

sw.epilog:                                        ; preds = %sw.default, %sw.bb55, %if.end54, %if.end47, %if.end42
  br label %while.cond, !dbg !6311, !llvm.loop !6395

while.end:                                        ; preds = %while.cond
  %call65 = call i32 @rock_continue(ptr noundef %rs) #17, !dbg !6397
  store i32 %call65, ptr %ret, align 4, !dbg !6398
  %59 = load i32, ptr %ret, align 4, !dbg !6399
  %cmp66 = icmp eq i32 %59, 0, !dbg !6401
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !6402

if.then68:                                        ; preds = %while.end
  br label %repeat, !dbg !6403

if.end69:                                         ; preds = %while.end
  %60 = load i32, ptr %ret, align 4, !dbg !6404
  %cmp70 = icmp slt i32 %60, 0, !dbg !6406
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !6407

if.then72:                                        ; preds = %if.end69
  br label %fail, !dbg !6408

if.end73:                                         ; preds = %if.end69
  %61 = load ptr, ptr %rpnt, align 8, !dbg !6409
  %62 = load ptr, ptr %link, align 8, !dbg !6411
  %cmp74 = icmp eq ptr %61, %62, !dbg !6412
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !6413

if.then76:                                        ; preds = %if.end73
  br label %fail, !dbg !6414

if.end77:                                         ; preds = %if.end73
  %63 = load ptr, ptr %bh, align 8, !dbg !6415
  call void @brelse(ptr noundef %63) #17, !dbg !6416
  %64 = load ptr, ptr %rpnt, align 8, !dbg !6417
  store i8 0, ptr %64, align 1, !dbg !6418
  %65 = load ptr, ptr %page, align 8, !dbg !6419
  call void @SetPageUptodate(ptr noundef %65) #17, !dbg !6420
  %66 = load ptr, ptr %page, align 8, !dbg !6421
  call void @unlock_page(ptr noundef %66) #17, !dbg !6422
  store i32 0, ptr %retval, align 4, !dbg !6423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6423

out:                                              ; preds = %if.then53, %if.then46, %if.then41, %if.then36, %if.then24, %if.then18
  call void @llvm.dbg.label(metadata !6218), !dbg !6424
  %buffer = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 0, !dbg !6425
  %67 = load ptr, ptr %buffer, align 8, !dbg !6425
  call void @kfree(ptr noundef %67) #17, !dbg !6426
  br label %fail, !dbg !6427

out_noread:                                       ; preds = %if.then7
  call void @llvm.dbg.label(metadata !6219), !dbg !6428
  br label %do.body, !dbg !6429

do.body:                                          ; preds = %out_noread
  br label %do.cond, !dbg !6431

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6431

do.end:                                           ; preds = %do.cond
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #18, !dbg !6429
  store i32 %call78, ptr %tmp, align 4, !dbg !6431
  %68 = load i32, ptr %tmp, align 4, !dbg !6429
  br label %fail, !dbg !6433

out_bad_span:                                     ; preds = %if.then10
  call void @llvm.dbg.label(metadata !6220), !dbg !6434
  br label %do.body79, !dbg !6435

do.body79:                                        ; preds = %out_bad_span
  br label %do.cond80, !dbg !6437

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !6437

do.end81:                                         ; preds = %do.cond80
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #18, !dbg !6435
  store i32 %call83, ptr %tmp82, align 4, !dbg !6437
  %69 = load i32, ptr %tmp82, align 4, !dbg !6435
  br label %fail, !dbg !6439

fail:                                             ; preds = %do.end81, %do.end, %out, %if.then76, %if.then72
  call void @llvm.dbg.label(metadata !6221), !dbg !6440
  %70 = load ptr, ptr %bh, align 8, !dbg !6441
  call void @brelse(ptr noundef %70) #17, !dbg !6442
  br label %error, !dbg !6442

error:                                            ; preds = %fail, %if.then
  call void @llvm.dbg.label(metadata !6222), !dbg !6443
  %71 = load ptr, ptr %page, align 8, !dbg !6444
  call void @SetPageError(ptr noundef %71) #17, !dbg !6445
  %72 = load ptr, ptr %page, align 8, !dbg !6446
  call void @unlock_page(ptr noundef %72) #17, !dbg !6447
  store i32 -5, ptr %retval, align 4, !dbg !6448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6448

cleanup:                                          ; preds = %error, %if.end77
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 48, ptr %rs) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %rr) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 4, ptr %sig) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw_de) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnt) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpnt) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufsize) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !6449
  %73 = load i32, ptr %retval, align 4, !dbg !6449
  ret i32 %73, !dbg !6449
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_le16(ptr noundef %p) #3 align 16 !dbg !320 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !328, metadata !DIExpression()), !dbg !6450
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #16, !dbg !6451
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !329, metadata !DIExpression()), !dbg !6451
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6451
  store ptr %0, ptr %__pptr, align 8, !dbg !6451
  %1 = load ptr, ptr %__pptr, align 8, !dbg !6451
  %x = getelementptr inbounds %struct.anon.18, ptr %1, i32 0, i32 0, !dbg !6451
  %2 = load i16, ptr %x, align 1, !dbg !6451
  store i16 %2, ptr %tmp, align 2, !dbg !6451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #16, !dbg !6452
  %3 = load i16, ptr %tmp, align 2, !dbg !6451
  ret i16 %3, !dbg !6453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #3 align 16 !dbg !338 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !343, metadata !DIExpression()), !dbg !6454
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #16, !dbg !6455
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !344, metadata !DIExpression()), !dbg !6455
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6455
  store ptr %0, ptr %__pptr, align 8, !dbg !6455
  %1 = load ptr, ptr %__pptr, align 8, !dbg !6455
  %x = getelementptr inbounds %struct.anon.19, ptr %1, i32 0, i32 0, !dbg !6455
  %2 = load i32, ptr %x, align 1, !dbg !6455
  store i32 %2, ptr %tmp, align 4, !dbg !6455
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #16, !dbg !6456
  %3 = load i32, ptr %tmp, align 4, !dbg !6455
  ret i32 %3, !dbg !6457
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6458 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6462, metadata !DIExpression()), !dbg !6467
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6463, metadata !DIExpression()), !dbg !6468
  %0 = load i64, ptr %size.addr, align 8, !dbg !6469
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6470
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6471

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6472
  %tobool = icmp ne i64 %2, 0, !dbg !6472
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6473

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6474
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6464, metadata !DIExpression()), !dbg !6475
  %3 = load i64, ptr %size.addr, align 8, !dbg !6476
  %cmp = icmp ugt i64 %3, 8192, !dbg !6478
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6479

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6480
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6481
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6482
  store ptr %call, ptr %retval, align 8, !dbg !6483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6483

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6484
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6484
  store i32 %call2, ptr %index, align 4, !dbg !6485
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6486
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6487
  %9 = ptrtoint ptr %8 to i64, !dbg !6487
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6488
  %idxprom = zext i32 %call3 to i64, !dbg !6489
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6489
  %10 = load i32, ptr %index, align 4, !dbg !6490
  %idxprom4 = zext i32 %10 to i64, !dbg !6489
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6489
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6489
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6491
  %13 = load i64, ptr %size.addr, align 8, !dbg !6492
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6493
  store ptr %call6, ptr %retval, align 8, !dbg !6494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6494

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6495
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6496
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6497
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6498
  store ptr %call8, ptr %retval, align 8, !dbg !6499
  br label %return, !dbg !6499

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6500
  ret ptr %16, !dbg !6500
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sb_bread(ptr noundef %sb, i64 noundef %block) #3 align 16 !dbg !6501 {
entry:
  %sb.addr = alloca ptr, align 8
  %block.addr = alloca i64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6505, metadata !DIExpression()), !dbg !6507
  store i64 %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !6506, metadata !DIExpression()), !dbg !6508
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6509
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21, !dbg !6510
  %1 = load ptr, ptr %s_bdev, align 8, !dbg !6510
  %2 = load i64, ptr %block.addr, align 8, !dbg !6511
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !6512
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3, !dbg !6513
  %4 = load i64, ptr %s_blocksize, align 8, !dbg !6513
  %conv = trunc i64 %4 to i32, !dbg !6512
  %call = call ptr @__bread_gfp(ptr noundef %1, i64 noundef %2, i32 noundef %conv, i32 noundef 8) #17, !dbg !6514
  ret ptr %call, !dbg !6515
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_bh(ptr noundef %bh) #3 align 16 !dbg !6516 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6520, metadata !DIExpression()), !dbg !6521
  br label %do.body, !dbg !6522

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6523

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6525

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6523

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !6527

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6523

do.end4:                                          ; preds = %do.end3
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6529
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 11, !dbg !6530
  call void @atomic_dec(ptr noundef %b_count) #17, !dbg !6531
  ret void, !dbg !6532
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6533 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !6534 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6538, metadata !DIExpression()), !dbg !6540
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6539, metadata !DIExpression()), !dbg !6541
  %0 = load i64, ptr %size.addr, align 8, !dbg !6542
  %tobool = icmp ne i64 %0, 0, !dbg !6542
  br i1 %tobool, label %if.end, label %if.then, !dbg !6544

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6545
  br label %return, !dbg !6545

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6546
  %cmp = icmp ule i64 %1, 8, !dbg !6548
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6549

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6550
  br label %return, !dbg !6550

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6551
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6553
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6554

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6555
  %cmp4 = icmp ule i64 %3, 96, !dbg !6556
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6557

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6558
  br label %return, !dbg !6558

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6559
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6561
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6562

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6563
  %cmp9 = icmp ule i64 %5, 192, !dbg !6564
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6565

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6566
  br label %return, !dbg !6566

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6567
  %cmp12 = icmp ule i64 %6, 8, !dbg !6569
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6570

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6571
  br label %return, !dbg !6571

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6572
  %cmp15 = icmp ule i64 %7, 16, !dbg !6574
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6575

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6576
  br label %return, !dbg !6576

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6577
  %cmp18 = icmp ule i64 %8, 32, !dbg !6579
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6580

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6581
  br label %return, !dbg !6581

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6582
  %cmp21 = icmp ule i64 %9, 64, !dbg !6584
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6585

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6586
  br label %return, !dbg !6586

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6587
  %cmp24 = icmp ule i64 %10, 128, !dbg !6589
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6590

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6591
  br label %return, !dbg !6591

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6592
  %cmp27 = icmp ule i64 %11, 256, !dbg !6594
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6595

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6596
  br label %return, !dbg !6596

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6597
  %cmp30 = icmp ule i64 %12, 512, !dbg !6599
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6600

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6601
  br label %return, !dbg !6601

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6602
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6604
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6605

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6606
  br label %return, !dbg !6606

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6607
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6609
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6610

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6611
  br label %return, !dbg !6611

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6612
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6614
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6615

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6616
  br label %return, !dbg !6616

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6617
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6619
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6620

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6621
  br label %return, !dbg !6621

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6622
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6624
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6625

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6626
  br label %return, !dbg !6626

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6627
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6629
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6630

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6631
  br label %return, !dbg !6631

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6632
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6634
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6635

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6636
  br label %return, !dbg !6636

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6637
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6639
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6640

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6641
  br label %return, !dbg !6641

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6642
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6644
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6645

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6646
  br label %return, !dbg !6646

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6647
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6649
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6650

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6652
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6654
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6655

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6657
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6659
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6660

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6661
  br label %return, !dbg !6661

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6662, !range !6664, !noundef !951
  %tobool69 = trunc i8 %25 to i1, !dbg !6662
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6665

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6666

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !6667, !srcloc !6670
  unreachable, !dbg !6667

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6671

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6672

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6673

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6675

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6673

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #16, !dbg !6677, !srcloc !6679
  br label %do.end75, !dbg !6677

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6673

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6680
  br label %return, !dbg !6680

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6681
  ret i32 %26, !dbg !6681
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6682 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !6687 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6691, metadata !DIExpression()), !dbg !6693
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6692, metadata !DIExpression()), !dbg !6694
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6695
  %and = and i32 %0, 17, !dbg !6695
  %cmp = icmp eq i32 %and, 0, !dbg !6695
  %lnot = xor i1 %cmp, true, !dbg !6695
  %lnot1 = xor i1 %lnot, true, !dbg !6695
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6695
  %conv = sext i32 %lnot.ext to i64, !dbg !6695
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6695
  %tobool = icmp ne i64 %expval, 0, !dbg !6695
  br i1 %tobool, label %if.then, label %if.end, !dbg !6697

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6698
  br label %return, !dbg !6698

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6699
  %and2 = and i32 %1, 1, !dbg !6701
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6701
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6702

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6703
  br label %return, !dbg !6703

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6704
  br label %return, !dbg !6704

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6706
  ret i32 %2, !dbg !6706
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6707 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6708 dso_local void @__compiletime_assert_117() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6709 dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #12 align 16 !dbg !6712 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6718, metadata !DIExpression()), !dbg !6719
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6720
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6721
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6722
  call void @raw_atomic_dec(ptr noundef %1) #17, !dbg !6723
  ret void, !dbg !6724
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #12 align 16 !dbg !6725 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6733, metadata !DIExpression()), !dbg !6735
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6734, metadata !DIExpression()), !dbg !6736
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6737
  %1 = load i64, ptr %size.addr, align 8, !dbg !6738
  %conv = trunc i64 %1 to i32, !dbg !6738
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6739
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6740
  %3 = load i64, ptr %size.addr, align 8, !dbg !6740
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !6740
  ret void, !dbg !6741
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #12 align 16 !dbg !6742 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6745, metadata !DIExpression()), !dbg !6746
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6747
  call void @arch_atomic_dec(ptr noundef %0) #17, !dbg !6748
  ret void, !dbg !6749
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6750 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6755, metadata !DIExpression()), !dbg !6757
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6756, metadata !DIExpression()), !dbg !6758
  ret i1 true, !dbg !6759
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6760 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6765, metadata !DIExpression()), !dbg !6768
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6766, metadata !DIExpression()), !dbg !6769
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6767, metadata !DIExpression()), !dbg !6770
  ret void, !dbg !6771
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #12 align 16 !dbg !6772 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6775, metadata !DIExpression()), !dbg !6776
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6777
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6778
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !6779, !srcloc !6780
  ret void, !dbg !6781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6782 dso_local void @set_nlink(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_uid_write(ptr noundef %inode, i32 noundef %uid) #3 align 16 !dbg !6785 {
entry:
  %inode.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  %tmp = alloca %struct.kuid_t, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6789, metadata !DIExpression()), !dbg !6791
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6790, metadata !DIExpression()), !dbg !6792
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6793
  %i_uid = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2, !dbg !6794
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #16, !dbg !6795
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6796
  %call = call ptr @i_user_ns(ptr noundef %1) #17, !dbg !6797
  %2 = load i32, ptr %uid.addr, align 4, !dbg !6798
  %call1 = call i32 @make_kuid(ptr noundef %call, i32 noundef %2) #17, !dbg !6795
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !6795
  store i32 %call1, ptr %coerce.dive, align 4, !dbg !6795
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %tmp, i64 4, i1 false), !dbg !6795
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #16, !dbg !6795
  ret void, !dbg !6799
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_gid_write(ptr noundef %inode, i32 noundef %gid) #3 align 16 !dbg !6800 {
entry:
  %inode.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  %tmp = alloca %struct.kgid_t, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6804, metadata !DIExpression()), !dbg !6806
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6805, metadata !DIExpression()), !dbg !6807
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6808
  %i_gid = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4, !dbg !6809
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #16, !dbg !6810
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6811
  %call = call ptr @i_user_ns(ptr noundef %1) #17, !dbg !6812
  %2 = load i32, ptr %gid.addr, align 4, !dbg !6813
  %call1 = call i32 @make_kgid(ptr noundef %call, i32 noundef %2) #17, !dbg !6810
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %tmp, i32 0, i32 0, !dbg !6810
  store i32 %call1, ptr %coerce.dive, align 4, !dbg !6810
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %tmp, i64 4, i1 false), !dbg !6810
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #16, !dbg !6810
  ret void, !dbg !6814
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @inode_set_ctime(ptr noundef %inode, i64 noundef %sec, i64 noundef %nsec) #3 align 16 !dbg !6815 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %inode.addr = alloca ptr, align 8
  %sec.addr = alloca i64, align 8
  %nsec.addr = alloca i64, align 8
  %ts = alloca %struct.timespec64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6819, metadata !DIExpression()), !dbg !6823
  store i64 %sec, ptr %sec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sec.addr, metadata !6820, metadata !DIExpression()), !dbg !6824
  store i64 %nsec, ptr %nsec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsec.addr, metadata !6821, metadata !DIExpression()), !dbg !6825
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #16, !dbg !6826
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !6822, metadata !DIExpression()), !dbg !6827
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !6828
  %0 = load i64, ptr %sec.addr, align 8, !dbg !6829
  store i64 %0, ptr %tv_sec, align 8, !dbg !6828
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !6828
  %1 = load i64, ptr %nsec.addr, align 8, !dbg !6830
  store i64 %1, ptr %tv_nsec, align 8, !dbg !6828
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6831
  %3 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0, !dbg !6832
  %4 = load i64, ptr %3, align 8, !dbg !6832
  %5 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1, !dbg !6832
  %6 = load i64, ptr %5, align 8, !dbg !6832
  %call = call { i64, i64 } @inode_set_ctime_to_ts(ptr noundef %2, i64 %4, i64 %6) #17, !dbg !6832
  %7 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 0, !dbg !6832
  %8 = extractvalue { i64, i64 } %call, 0, !dbg !6832
  store i64 %8, ptr %7, align 8, !dbg !6832
  %9 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 1, !dbg !6832
  %10 = extractvalue { i64, i64 } %call, 1, !dbg !6832
  store i64 %10, ptr %9, align 8, !dbg !6832
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #16, !dbg !6833
  %11 = load { i64, i64 }, ptr %retval, align 8, !dbg !6833
  ret { i64, i64 } %11, !dbg !6833
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6834 dso_local i32 @iso_date(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ISOFS_I(ptr noundef %inode) #3 align 16 !dbg !6837 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6841, metadata !DIExpression()), !dbg !6844
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6845
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6842, metadata !DIExpression()), !dbg !6845
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6845
  store ptr %0, ptr %__mptr, align 8, !dbg !6845
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6845
  %add.ptr = getelementptr i8, ptr %1, i64 -48, !dbg !6845
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6845
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6846
  %2 = load ptr, ptr %tmp, align 8, !dbg !6845
  ret ptr %2, !dbg !6847
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @isofs_iget_reloc(ptr noundef %sb, i64 noundef %block, i64 noundef %offset) #3 align 16 !dbg !6848 {
entry:
  %sb.addr = alloca ptr, align 8
  %block.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6852, metadata !DIExpression()), !dbg !6855
  store i64 %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !6853, metadata !DIExpression()), !dbg !6856
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6854, metadata !DIExpression()), !dbg !6857
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6858
  %1 = load i64, ptr %block.addr, align 8, !dbg !6859
  %2 = load i64, ptr %offset.addr, align 8, !dbg !6860
  %call = call ptr @__isofs_iget(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 1) #17, !dbg !6861
  ret ptr %call, !dbg !6862
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !6863 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6868, metadata !DIExpression()), !dbg !6869
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6870
  %1 = ptrtoint ptr %0 to i64, !dbg !6870
  %2 = inttoptr i64 %1 to ptr, !dbg !6870
  %3 = ptrtoint ptr %2 to i64, !dbg !6870
  %cmp = icmp uge i64 %3, -4095, !dbg !6870
  %lnot = xor i1 %cmp, true, !dbg !6870
  %lnot1 = xor i1 %lnot, true, !dbg !6870
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6870
  %conv = sext i32 %lnot.ext to i64, !dbg !6870
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6870
  %tobool = icmp ne i64 %expval, 0, !dbg !6870
  ret i1 %tobool, !dbg !6871
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !6872 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6876, metadata !DIExpression()), !dbg !6877
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6878
  %1 = ptrtoint ptr %0 to i64, !dbg !6879
  ret i64 %1, !dbg !6880
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @inode_set_ctime_to_ts(ptr noundef %inode, i64 %ts.coerce0, i64 %ts.coerce1) #3 align 16 !dbg !6881 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %ts = alloca %struct.timespec64, align 8
  %inode.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0
  store i64 %ts.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1
  store i64 %ts.coerce1, ptr %1, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6885, metadata !DIExpression()), !dbg !6887
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !6886, metadata !DIExpression()), !dbg !6888
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6889
  %__i_ctime = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 18, !dbg !6890
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__i_ctime, ptr align 8 %ts, i64 16, i1 false), !dbg !6891
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %ts, i64 16, i1 false), !dbg !6892
  %3 = load { i64, i64 }, ptr %retval, align 8, !dbg !6893
  ret { i64, i64 } %3, !dbg !6893
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @inode_get_ctime(ptr noundef %inode) #3 align 16 !dbg !6894 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6898, metadata !DIExpression()), !dbg !6899
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6900
  %__i_ctime = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 18, !dbg !6901
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__i_ctime, i64 16, i1 false), !dbg !6901
  %1 = load { i64, i64 }, ptr %retval, align 8, !dbg !6902
  ret { i64, i64 } %1, !dbg !6902
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6903 dso_local void @iput(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @isonum_711(ptr noundef %p) #3 align 16 !dbg !6904 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6908, metadata !DIExpression()), !dbg !6909
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6910
  %1 = load i8, ptr %0, align 1, !dbg !6911
  %conv = zext i8 %1 to i32, !dbg !6911
  ret i32 %conv, !dbg !6912
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #3 align 16 !dbg !6913 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6917, metadata !DIExpression()), !dbg !6919
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6918, metadata !DIExpression()), !dbg !6920
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6921
  %0 = load i32, ptr %uid.addr, align 4, !dbg !6921
  store i32 %0, ptr %val, align 4, !dbg !6921
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6922
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6922
  ret i32 %1, !dbg !6922
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i_user_ns(ptr noundef %inode) #3 align 16 !dbg !6923 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6927, metadata !DIExpression()), !dbg !6928
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6929
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !6930
  %1 = load ptr, ptr %i_sb, align 8, !dbg !6930
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 48, !dbg !6931
  %2 = load ptr, ptr %s_user_ns, align 8, !dbg !6931
  ret ptr %2, !dbg !6932
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #3 align 16 !dbg !6933 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6937, metadata !DIExpression()), !dbg !6939
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6938, metadata !DIExpression()), !dbg !6940
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6941
  %0 = load i32, ptr %gid.addr, align 4, !dbg !6941
  store i32 %0, ptr %val, align 4, !dbg !6941
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6942
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6942
  ret i32 %1, !dbg !6942
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6943 dso_local ptr @__isofs_iget(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #12 align 16 !dbg !6946 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6950, metadata !DIExpression()), !dbg !6951
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6952
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !6952
  %2 = inttoptr i64 %1 to ptr, !dbg !6952
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6952
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !6952
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6952
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6952
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6952
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !6952
  %add = add i64 %shl, %3, !dbg !6952
  %4 = inttoptr i64 %add to ptr, !dbg !6952
  ret ptr %4, !dbg !6953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_symlink_chunk(ptr noundef %rpnt, ptr noundef %rr, ptr noundef %plimit) #0 align 16 !dbg !6954 {
entry:
  %retval = alloca ptr, align 8
  %rpnt.addr = alloca ptr, align 8
  %rr.addr = alloca ptr, align 8
  %plimit.addr = alloca ptr, align 8
  %slen = alloca i32, align 4
  %rootflag = alloca i32, align 4
  %oldslp = alloca ptr, align 8
  %slp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %rpnt, ptr %rpnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rpnt.addr, metadata !6958, metadata !DIExpression()), !dbg !6965
  store ptr %rr, ptr %rr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rr.addr, metadata !6959, metadata !DIExpression()), !dbg !6966
  store ptr %plimit, ptr %plimit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plimit.addr, metadata !6960, metadata !DIExpression()), !dbg !6967
  call void @llvm.lifetime.start.p0(i64 4, ptr %slen) #16, !dbg !6968
  call void @llvm.dbg.declare(metadata ptr %slen, metadata !6961, metadata !DIExpression()), !dbg !6969
  call void @llvm.lifetime.start.p0(i64 4, ptr %rootflag) #16, !dbg !6970
  call void @llvm.dbg.declare(metadata ptr %rootflag, metadata !6962, metadata !DIExpression()), !dbg !6971
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldslp) #16, !dbg !6972
  call void @llvm.dbg.declare(metadata ptr %oldslp, metadata !6963, metadata !DIExpression()), !dbg !6973
  call void @llvm.lifetime.start.p0(i64 8, ptr %slp) #16, !dbg !6974
  call void @llvm.dbg.declare(metadata ptr %slp, metadata !6964, metadata !DIExpression()), !dbg !6975
  %0 = load ptr, ptr %rr.addr, align 8, !dbg !6976
  %len = getelementptr inbounds %struct.rock_ridge, ptr %0, i32 0, i32 1, !dbg !6977
  %1 = load i8, ptr %len, align 1, !dbg !6977
  %conv = zext i8 %1 to i32, !dbg !6976
  %sub = sub i32 %conv, 5, !dbg !6978
  store i32 %sub, ptr %slen, align 4, !dbg !6979
  %2 = load ptr, ptr %rr.addr, align 8, !dbg !6980
  %u = getelementptr inbounds %struct.rock_ridge, ptr %2, i32 0, i32 3, !dbg !6981
  %link = getelementptr inbounds %struct.RR_SL_s, ptr %u, i32 0, i32 1, !dbg !6982
  store ptr %link, ptr %slp, align 8, !dbg !6983
  br label %while.cond, !dbg !6984

while.cond:                                       ; preds = %if.end75, %entry
  %3 = load i32, ptr %slen, align 4, !dbg !6985
  %cmp = icmp sgt i32 %3, 1, !dbg !6986
  br i1 %cmp, label %while.body, label %while.end, !dbg !6984

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %rootflag, align 4, !dbg !6987
  %4 = load ptr, ptr %slp, align 8, !dbg !6989
  %flags = getelementptr inbounds %struct.SL_component, ptr %4, i32 0, i32 0, !dbg !6990
  %5 = load i8, ptr %flags, align 1, !dbg !6990
  %conv2 = zext i8 %5 to i32, !dbg !6989
  %and = and i32 %conv2, -2, !dbg !6991
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
    i32 4, label %sw.bb16
    i32 8, label %sw.bb26
  ], !dbg !6992

sw.bb:                                            ; preds = %while.body
  %6 = load ptr, ptr %slp, align 8, !dbg !6993
  %len3 = getelementptr inbounds %struct.SL_component, ptr %6, i32 0, i32 1, !dbg !6996
  %7 = load i8, ptr %len3, align 1, !dbg !6996
  %conv4 = zext i8 %7 to i64, !dbg !6993
  %8 = load ptr, ptr %plimit.addr, align 8, !dbg !6997
  %9 = load ptr, ptr %rpnt.addr, align 8, !dbg !6998
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64, !dbg !6999
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64, !dbg !6999
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6999
  %cmp5 = icmp sgt i64 %conv4, %sub.ptr.sub, !dbg !7000
  br i1 %cmp5, label %if.then, label %if.end, !dbg !7001

if.then:                                          ; preds = %sw.bb
  store ptr null, ptr %retval, align 8, !dbg !7002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7002

if.end:                                           ; preds = %sw.bb
  %10 = load ptr, ptr %rpnt.addr, align 8, !dbg !7003
  %11 = load ptr, ptr %slp, align 8, !dbg !7004
  %text = getelementptr inbounds %struct.SL_component, ptr %11, i32 0, i32 2, !dbg !7005
  %arraydecay = getelementptr inbounds [0 x i8], ptr %text, i64 0, i64 0, !dbg !7006
  %12 = load ptr, ptr %slp, align 8, !dbg !7007
  %len7 = getelementptr inbounds %struct.SL_component, ptr %12, i32 0, i32 1, !dbg !7008
  %13 = load i8, ptr %len7, align 1, !dbg !7008
  %conv8 = zext i8 %13 to i64, !dbg !7007
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %arraydecay, i64 %conv8, i1 false), !dbg !7006
  %14 = load ptr, ptr %slp, align 8, !dbg !7009
  %len9 = getelementptr inbounds %struct.SL_component, ptr %14, i32 0, i32 1, !dbg !7010
  %15 = load i8, ptr %len9, align 1, !dbg !7010
  %conv10 = zext i8 %15 to i32, !dbg !7009
  %16 = load ptr, ptr %rpnt.addr, align 8, !dbg !7011
  %idx.ext = sext i32 %conv10 to i64, !dbg !7011
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.ext, !dbg !7011
  store ptr %add.ptr, ptr %rpnt.addr, align 8, !dbg !7011
  br label %sw.epilog, !dbg !7012

sw.bb11:                                          ; preds = %while.body
  %17 = load ptr, ptr %rpnt.addr, align 8, !dbg !7013
  %18 = load ptr, ptr %plimit.addr, align 8, !dbg !7015
  %cmp12 = icmp uge ptr %17, %18, !dbg !7016
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !7017

if.then14:                                        ; preds = %sw.bb11
  store ptr null, ptr %retval, align 8, !dbg !7018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7018

if.end15:                                         ; preds = %sw.bb11
  %19 = load ptr, ptr %rpnt.addr, align 8, !dbg !7019
  %incdec.ptr = getelementptr i8, ptr %19, i32 1, !dbg !7019
  store ptr %incdec.ptr, ptr %rpnt.addr, align 8, !dbg !7019
  store i8 46, ptr %19, align 1, !dbg !7020
  br label %sw.epilog, !dbg !7021

sw.bb16:                                          ; preds = %while.body
  %20 = load ptr, ptr %plimit.addr, align 8, !dbg !7022
  %21 = load ptr, ptr %rpnt.addr, align 8, !dbg !7024
  %sub.ptr.lhs.cast17 = ptrtoint ptr %20 to i64, !dbg !7025
  %sub.ptr.rhs.cast18 = ptrtoint ptr %21 to i64, !dbg !7025
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18, !dbg !7025
  %cmp20 = icmp sgt i64 2, %sub.ptr.sub19, !dbg !7026
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !7027

if.then22:                                        ; preds = %sw.bb16
  store ptr null, ptr %retval, align 8, !dbg !7028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7028

if.end23:                                         ; preds = %sw.bb16
  %22 = load ptr, ptr %rpnt.addr, align 8, !dbg !7029
  %incdec.ptr24 = getelementptr i8, ptr %22, i32 1, !dbg !7029
  store ptr %incdec.ptr24, ptr %rpnt.addr, align 8, !dbg !7029
  store i8 46, ptr %22, align 1, !dbg !7030
  %23 = load ptr, ptr %rpnt.addr, align 8, !dbg !7031
  %incdec.ptr25 = getelementptr i8, ptr %23, i32 1, !dbg !7031
  store ptr %incdec.ptr25, ptr %rpnt.addr, align 8, !dbg !7031
  store i8 46, ptr %23, align 1, !dbg !7032
  br label %sw.epilog, !dbg !7033

sw.bb26:                                          ; preds = %while.body
  %24 = load ptr, ptr %rpnt.addr, align 8, !dbg !7034
  %25 = load ptr, ptr %plimit.addr, align 8, !dbg !7036
  %cmp27 = icmp uge ptr %24, %25, !dbg !7037
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !7038

if.then29:                                        ; preds = %sw.bb26
  store ptr null, ptr %retval, align 8, !dbg !7039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7039

if.end30:                                         ; preds = %sw.bb26
  store i32 1, ptr %rootflag, align 4, !dbg !7040
  %26 = load ptr, ptr %rpnt.addr, align 8, !dbg !7041
  %incdec.ptr31 = getelementptr i8, ptr %26, i32 1, !dbg !7041
  store ptr %incdec.ptr31, ptr %rpnt.addr, align 8, !dbg !7041
  store i8 47, ptr %26, align 1, !dbg !7042
  br label %sw.epilog, !dbg !7043

sw.default:                                       ; preds = %while.body
  br label %do.body, !dbg !7044

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !7046

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7046

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %slp, align 8, !dbg !7044
  %flags32 = getelementptr inbounds %struct.SL_component, ptr %27, i32 0, i32 0, !dbg !7044
  %28 = load i8, ptr %flags32, align 1, !dbg !7044
  %conv33 = zext i8 %28 to i32, !dbg !7044
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.17, i32 noundef %conv33) #18, !dbg !7044
  store i32 %call, ptr %tmp, align 4, !dbg !7046
  %29 = load i32, ptr %tmp, align 4, !dbg !7044
  br label %sw.epilog, !dbg !7048

sw.epilog:                                        ; preds = %do.end, %if.end30, %if.end23, %if.end15, %if.end
  %30 = load ptr, ptr %slp, align 8, !dbg !7049
  %len34 = getelementptr inbounds %struct.SL_component, ptr %30, i32 0, i32 1, !dbg !7050
  %31 = load i8, ptr %len34, align 1, !dbg !7050
  %conv35 = zext i8 %31 to i32, !dbg !7049
  %add = add i32 %conv35, 2, !dbg !7051
  %32 = load i32, ptr %slen, align 4, !dbg !7052
  %sub36 = sub i32 %32, %add, !dbg !7052
  store i32 %sub36, ptr %slen, align 4, !dbg !7052
  %33 = load ptr, ptr %slp, align 8, !dbg !7053
  store ptr %33, ptr %oldslp, align 8, !dbg !7054
  %34 = load ptr, ptr %slp, align 8, !dbg !7055
  %35 = load ptr, ptr %slp, align 8, !dbg !7056
  %len37 = getelementptr inbounds %struct.SL_component, ptr %35, i32 0, i32 1, !dbg !7057
  %36 = load i8, ptr %len37, align 1, !dbg !7057
  %conv38 = zext i8 %36 to i32, !dbg !7056
  %idx.ext39 = sext i32 %conv38 to i64, !dbg !7058
  %add.ptr40 = getelementptr i8, ptr %34, i64 %idx.ext39, !dbg !7058
  %add.ptr41 = getelementptr i8, ptr %add.ptr40, i64 2, !dbg !7059
  store ptr %add.ptr41, ptr %slp, align 8, !dbg !7060
  %37 = load i32, ptr %slen, align 4, !dbg !7061
  %cmp42 = icmp slt i32 %37, 2, !dbg !7063
  br i1 %cmp42, label %if.then44, label %if.end62, !dbg !7064

if.then44:                                        ; preds = %sw.epilog
  %38 = load i32, ptr %rootflag, align 4, !dbg !7065
  %tobool = icmp ne i32 %38, 0, !dbg !7065
  br i1 %tobool, label %if.end61, label %land.lhs.true, !dbg !7068

land.lhs.true:                                    ; preds = %if.then44
  %39 = load ptr, ptr %rr.addr, align 8, !dbg !7069
  %u45 = getelementptr inbounds %struct.rock_ridge, ptr %39, i32 0, i32 3, !dbg !7070
  %flags46 = getelementptr inbounds %struct.RR_SL_s, ptr %u45, i32 0, i32 0, !dbg !7071
  %40 = load i8, ptr %flags46, align 1, !dbg !7071
  %conv47 = zext i8 %40 to i32, !dbg !7069
  %and48 = and i32 %conv47, 1, !dbg !7072
  %tobool49 = icmp ne i32 %and48, 0, !dbg !7072
  br i1 %tobool49, label %land.lhs.true50, label %if.end61, !dbg !7073

land.lhs.true50:                                  ; preds = %land.lhs.true
  %41 = load ptr, ptr %oldslp, align 8, !dbg !7074
  %flags51 = getelementptr inbounds %struct.SL_component, ptr %41, i32 0, i32 0, !dbg !7075
  %42 = load i8, ptr %flags51, align 1, !dbg !7075
  %conv52 = zext i8 %42 to i32, !dbg !7074
  %and53 = and i32 %conv52, 1, !dbg !7076
  %tobool54 = icmp ne i32 %and53, 0, !dbg !7076
  br i1 %tobool54, label %if.end61, label %if.then55, !dbg !7077

if.then55:                                        ; preds = %land.lhs.true50
  %43 = load ptr, ptr %rpnt.addr, align 8, !dbg !7078
  %44 = load ptr, ptr %plimit.addr, align 8, !dbg !7081
  %cmp56 = icmp uge ptr %43, %44, !dbg !7082
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !7083

if.then58:                                        ; preds = %if.then55
  store ptr null, ptr %retval, align 8, !dbg !7084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7084

if.end59:                                         ; preds = %if.then55
  %45 = load ptr, ptr %rpnt.addr, align 8, !dbg !7085
  %incdec.ptr60 = getelementptr i8, ptr %45, i32 1, !dbg !7085
  store ptr %incdec.ptr60, ptr %rpnt.addr, align 8, !dbg !7085
  store i8 47, ptr %45, align 1, !dbg !7086
  br label %if.end61, !dbg !7087

if.end61:                                         ; preds = %if.end59, %land.lhs.true50, %land.lhs.true, %if.then44
  br label %while.end, !dbg !7088

if.end62:                                         ; preds = %sw.epilog
  %46 = load i32, ptr %rootflag, align 4, !dbg !7089
  %tobool63 = icmp ne i32 %46, 0, !dbg !7089
  br i1 %tobool63, label %if.end75, label %land.lhs.true64, !dbg !7091

land.lhs.true64:                                  ; preds = %if.end62
  %47 = load ptr, ptr %oldslp, align 8, !dbg !7092
  %flags65 = getelementptr inbounds %struct.SL_component, ptr %47, i32 0, i32 0, !dbg !7093
  %48 = load i8, ptr %flags65, align 1, !dbg !7093
  %conv66 = zext i8 %48 to i32, !dbg !7092
  %and67 = and i32 %conv66, 1, !dbg !7094
  %tobool68 = icmp ne i32 %and67, 0, !dbg !7094
  br i1 %tobool68, label %if.end75, label %if.then69, !dbg !7095

if.then69:                                        ; preds = %land.lhs.true64
  %49 = load ptr, ptr %rpnt.addr, align 8, !dbg !7096
  %50 = load ptr, ptr %plimit.addr, align 8, !dbg !7099
  %cmp70 = icmp uge ptr %49, %50, !dbg !7100
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !7101

if.then72:                                        ; preds = %if.then69
  store ptr null, ptr %retval, align 8, !dbg !7102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7102

if.end73:                                         ; preds = %if.then69
  %51 = load ptr, ptr %rpnt.addr, align 8, !dbg !7103
  %incdec.ptr74 = getelementptr i8, ptr %51, i32 1, !dbg !7103
  store ptr %incdec.ptr74, ptr %rpnt.addr, align 8, !dbg !7103
  store i8 47, ptr %51, align 1, !dbg !7104
  br label %if.end75, !dbg !7105

if.end75:                                         ; preds = %if.end73, %land.lhs.true64, %if.end62
  br label %while.cond, !dbg !6984, !llvm.loop !7106

while.end:                                        ; preds = %if.end61, %while.cond
  %52 = load ptr, ptr %rpnt.addr, align 8, !dbg !7108
  store ptr %52, ptr %retval, align 8, !dbg !7109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7109

cleanup:                                          ; preds = %while.end, %if.then72, %if.then58, %if.then29, %if.then22, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slp) #16, !dbg !7110
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldslp) #16, !dbg !7110
  call void @llvm.lifetime.end.p0(i64 4, ptr %rootflag) #16, !dbg !7110
  call void @llvm.lifetime.end.p0(i64 4, ptr %slen) #16, !dbg !7110
  %53 = load ptr, ptr %retval, align 8, !dbg !7110
  ret ptr %53, !dbg !7110
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @brelse(ptr noundef %bh) #3 align 16 !dbg !7111 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !7113, metadata !DIExpression()), !dbg !7114
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !7115
  %tobool = icmp ne ptr %0, null, !dbg !7115
  br i1 %tobool, label %if.then, label %if.end, !dbg !7117

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bh.addr, align 8, !dbg !7118
  call void @__brelse(ptr noundef %1) #17, !dbg !7119
  br label %if.end, !dbg !7119

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7120
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @SetPageUptodate(ptr noundef %page) #12 align 16 !dbg !7121 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7123, metadata !DIExpression()), !dbg !7124
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7125
  call void @folio_mark_uptodate(ptr noundef %0) #17, !dbg !7126
  ret void, !dbg !7127
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7128 dso_local void @unlock_page(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @SetPageError(ptr noundef %page) #12 align 16 !dbg !7129 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7131, metadata !DIExpression()), !dbg !7132
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7133
  %call = call i64 @_compound_head(ptr noundef %0) #17, !dbg !7133
  %1 = inttoptr i64 %call to ptr, !dbg !7133
  store ptr %1, ptr %tmp1, align 8, !dbg !7133
  %2 = load ptr, ptr %tmp1, align 8, !dbg !7133
  store ptr %2, ptr %tmp, align 8, !dbg !7136
  %3 = load ptr, ptr %tmp, align 8, !dbg !7136
  %flags = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 0, !dbg !7132
  call void @set_bit(i64 noundef 10, ptr noundef %flags) #17, !dbg !7132
  ret void, !dbg !7132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7137 dso_local void @__brelse(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_mark_uptodate(ptr noundef %folio) #12 align 16 !dbg !7138 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7140, metadata !DIExpression()), !dbg !7141
  br label %do.body, !dbg !7142

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7143

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !7145

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !7143, !srcloc !7147
  br label %do.end2, !dbg !7143

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7148
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #17, !dbg !7149
  call void @set_bit(i64 noundef 3, ptr noundef %call) #17, !dbg !7150
  ret void, !dbg !7151
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !7152 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7158, metadata !DIExpression()), !dbg !7160
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7159, metadata !DIExpression()), !dbg !7161
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7162
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7163
  %div = sdiv i64 %1, 64, !dbg !7163
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7164
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7165
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7166
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7167
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7168
  ret void, !dbg !7169
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !7170 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7174, metadata !DIExpression()), !dbg !7177
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7175, metadata !DIExpression()), !dbg !7178
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !7179
  call void @llvm.dbg.declare(metadata ptr %page, metadata !7176, metadata !DIExpression()), !dbg !7180
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7181
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !7182
  store ptr %1, ptr %page, align 8, !dbg !7180
  %2 = load ptr, ptr %page, align 8, !dbg !7183
  %3 = load i32, ptr %n.addr, align 4, !dbg !7184
  %idxprom = zext i32 %3 to i64, !dbg !7183
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !7183
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !7185
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !7186
  ret ptr %flags, !dbg !7187
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #12 align 16 !dbg !7188 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7190, metadata !DIExpression()), !dbg !7192
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7191, metadata !DIExpression()), !dbg !7193
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7194
  %1 = load i64, ptr %size.addr, align 8, !dbg !7195
  %conv = trunc i64 %1 to i32, !dbg !7195
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !7196
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7197
  %3 = load i64, ptr %size.addr, align 8, !dbg !7197
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !7197
  ret void, !dbg !7198
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !7199 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7202, metadata !DIExpression()), !dbg !7204
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7203, metadata !DIExpression()), !dbg !7205
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7206
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7208
  br i1 %1, label %if.then, label %if.else, !dbg !7209

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7210
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7210
  %shr = ashr i64 %3, 3, !dbg !7210
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7210
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7212
  %and = and i64 %4, 7, !dbg !7212
  %sh_prom = trunc i64 %and to i32, !dbg !7212
  %shl = shl i32 1, %sh_prom, !dbg !7212
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !7213, !srcloc !7214
  br label %if.end, !dbg !7215

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7216
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7218
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !7219, !srcloc !7220
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7221
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #3 align 16 !dbg !7222 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7226, metadata !DIExpression()), !dbg !7228
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #16, !dbg !7229
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7227, metadata !DIExpression()), !dbg !7230
  br label %do.body, !dbg !7231

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7233

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7233

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7231
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !7231
  %compound_head = getelementptr inbounds %struct.anon.33, ptr %1, i32 0, i32 0, !dbg !7231
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !7231
  store i64 %2, ptr %tmp, align 8, !dbg !7233
  %3 = load i64, ptr %tmp, align 8, !dbg !7231
  store i64 %3, ptr %head, align 8, !dbg !7230
  %4 = load i64, ptr %head, align 8, !dbg !7235
  %and = and i64 %4, 1, !dbg !7235
  %tobool = icmp ne i64 %and, 0, !dbg !7235
  %lnot = xor i1 %tobool, true, !dbg !7235
  %lnot1 = xor i1 %lnot, true, !dbg !7235
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7235
  %conv = sext i32 %lnot.ext to i64, !dbg !7235
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7235
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7235
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7237

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !7238
  %sub = sub i64 %5, 1, !dbg !7239
  store i64 %sub, ptr %retval, align 8, !dbg !7240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7240

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !7241
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #17, !dbg !7242
  %7 = ptrtoint ptr %call to i64, !dbg !7243
  store i64 %7, ptr %retval, align 8, !dbg !7244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7244

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #16, !dbg !7245
  %8 = load i64, ptr %retval, align 8, !dbg !7245
  ret i64 %8, !dbg !7245
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #12 align 16 !dbg !7246 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7250, metadata !DIExpression()), !dbg !7257
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #16, !dbg !7258
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !7251, metadata !DIExpression()), !dbg !7258
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #17, !dbg !7259
  %frombool = zext i1 %call to i8, !dbg !7259
  store i8 %frombool, ptr %branch, align 1, !dbg !7259
  %0 = load i8, ptr %branch, align 1, !dbg !7258, !range !6664, !noundef !951
  %tobool = trunc i8 %0 to i1, !dbg !7258
  %lnot = xor i1 %tobool, true, !dbg !7258
  %lnot1 = xor i1 %lnot, true, !dbg !7258
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7258
  %conv = sext i32 %lnot.ext to i64, !dbg !7258
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7258
  store i64 %expval, ptr %tmp, align 8, !dbg !7262
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #16, !dbg !7263
  %1 = load i64, ptr %tmp, align 8, !dbg !7258
  %tobool2 = icmp ne i64 %1, 0, !dbg !7263
  br i1 %tobool2, label %if.end, label %if.then, !dbg !7264

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !7265
  store ptr %2, ptr %retval, align 8, !dbg !7266
  br label %return, !dbg !7266

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !7267
  %4 = ptrtoint ptr %3 to i64, !dbg !7267
  %and = and i64 %4, 4095, !dbg !7267
  %cmp = icmp eq i64 %and, 0, !dbg !7267
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !7268

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !7269
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !7269
  %6 = ptrtoint ptr %flags to i64, !dbg !7269
  %cmp4 = icmp ne i64 %6, 0, !dbg !7269
  %conv5 = zext i1 %cmp4 to i32, !dbg !7269
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !7269
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !7269

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !7269
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !7269
  %9 = ptrtoint ptr %flags7 to i64, !dbg !7269
  %cmp8 = icmp ne i64 %9, 0, !dbg !7269
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !7269

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !7269
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !7269
  %11 = load i64, ptr %flags11, align 16, !dbg !7269
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !7269
  br i1 %12, label %cond.true, label %cond.false, !dbg !7270

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !7269
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !7269
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #17, !dbg !7269
  br i1 %call13, label %if.then18, label %if.end31, !dbg !7269

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !7269
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !7269
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #17, !dbg !7269
  br i1 %call16, label %if.then18, label %if.end31, !dbg !7270

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #16, !dbg !7271
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7254, metadata !DIExpression()), !dbg !7272
  br label %do.body, !dbg !7273

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !7275

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7275

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !7273
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !7273
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !7273
  %compound_head = getelementptr inbounds %struct.anon.33, ptr %16, i32 0, i32 0, !dbg !7273
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !7273
  store i64 %17, ptr %tmp19, align 8, !dbg !7275
  %18 = load i64, ptr %tmp19, align 8, !dbg !7273
  store i64 %18, ptr %head, align 8, !dbg !7272
  %19 = load i64, ptr %head, align 8, !dbg !7277
  %and20 = and i64 %19, 1, !dbg !7277
  %tobool21 = icmp ne i64 %and20, 0, !dbg !7277
  %lnot22 = xor i1 %tobool21, true, !dbg !7277
  %lnot24 = xor i1 %lnot22, true, !dbg !7277
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !7277
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !7277
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !7277
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !7277
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !7279

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !7280
  %sub = sub i64 %20, 1, !dbg !7281
  %21 = inttoptr i64 %sub to ptr, !dbg !7282
  store ptr %21, ptr %retval, align 8, !dbg !7283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7283

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7284
  br label %cleanup, !dbg !7284

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #16, !dbg !7284
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !7285

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !7286
  store ptr %22, ptr %retval, align 8, !dbg !7287
  br label %return, !dbg !7287

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !7288
  ret ptr %23, !dbg !7288

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #12 align 16 !dbg !7289 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7306, metadata !DIExpression()), !dbg !7309
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7307, metadata !DIExpression()), !dbg !7310
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7311
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7312, !range !6664, !noundef !951
  %tobool = trunc i8 %1 to i1, !dbg !7312
  %conv = zext i1 %tobool to i32, !dbg !7312
  %or = or i32 2, %conv, !dbg !7313
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #16
          to label %asm.fallthrough [label %l_yes], !dbg !7314, !srcloc !7315

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7316
  br label %return, !dbg !7316

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7308), !dbg !7317
  store i1 true, ptr %retval, align 1, !dbg !7318
  br label %return, !dbg !7318

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7319
  ret i1 %2, !dbg !7319
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !7320 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7325, metadata !DIExpression()), !dbg !7330
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7326, metadata !DIExpression()), !dbg !7331
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !7332
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7327, metadata !DIExpression()), !dbg !7333
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7334
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7335
  %div = udiv i64 %1, 64, !dbg !7335
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7336
  store ptr %add.ptr, ptr %p, align 8, !dbg !7333
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !7337
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7328, metadata !DIExpression()), !dbg !7338
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7339
  %rem = urem i64 %2, 64, !dbg !7339
  %shl = shl i64 1, %rem, !dbg !7339
  store i64 %shl, ptr %mask, align 8, !dbg !7338
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !7340
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7329, metadata !DIExpression()), !dbg !7341
  %3 = load ptr, ptr %p, align 8, !dbg !7342
  %4 = load i64, ptr %3, align 8, !dbg !7343
  store i64 %4, ptr %val, align 8, !dbg !7341
  %5 = load i64, ptr %val, align 8, !dbg !7344
  %6 = load i64, ptr %mask, align 8, !dbg !7345
  %and = and i64 %5, %6, !dbg !7346
  %tobool = icmp ne i64 %and, 0, !dbg !7347
  %lnot = xor i1 %tobool, true, !dbg !7347
  %lnot1 = xor i1 %lnot, true, !dbg !7348
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !7349
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !7349
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !7349
  ret i1 %lnot1, !dbg !7350
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !7351 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7354, metadata !DIExpression()), !dbg !7356
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7355, metadata !DIExpression()), !dbg !7357
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7358
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7359
  %div = udiv i64 %1, 64, !dbg !7359
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7360
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7361
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7362
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7363
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7364
  ret i1 %call, !dbg !7365
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #12 align 16 !dbg !7366 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7368, metadata !DIExpression()), !dbg !7370
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7369, metadata !DIExpression()), !dbg !7371
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7372
  %1 = load i64, ptr %size.addr, align 8, !dbg !7373
  %conv = trunc i64 %1 to i32, !dbg !7373
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !7374
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7375
  %3 = load i64, ptr %size.addr, align 8, !dbg !7375
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !7375
  ret void, !dbg !7376
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !7377 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7379, metadata !DIExpression()), !dbg !7381
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7380, metadata !DIExpression()), !dbg !7382
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7383
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7384
  br i1 %1, label %cond.true, label %cond.false, !dbg !7384

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7385
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7386
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7387
  %conv = zext i1 %call to i32, !dbg !7387
  br label %cond.end, !dbg !7384

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7388
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7389
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !7390
  %conv2 = zext i1 %call1 to i32, !dbg !7390
  br label %cond.end, !dbg !7384

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7384
  %tobool = icmp ne i32 %cond, 0, !dbg !7384
  ret i1 %tobool, !dbg !7391
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7392 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7394, metadata !DIExpression()), !dbg !7396
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7395, metadata !DIExpression()), !dbg !7397
  ret i1 true, !dbg !7398
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !7399 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7403, metadata !DIExpression()), !dbg !7405
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7404, metadata !DIExpression()), !dbg !7406
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7407
  %and = and i64 %0, 63, !dbg !7408
  %shl = shl i64 1, %and, !dbg !7409
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7410
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7411
  %shr = ashr i64 %2, 6, !dbg !7412
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7410
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7410
  %and1 = and i64 %shl, %3, !dbg !7413
  %cmp = icmp ne i64 %and1, 0, !dbg !7414
  ret i1 %cmp, !dbg !7415
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !7416 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7418, metadata !DIExpression()), !dbg !7421
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7419, metadata !DIExpression()), !dbg !7422
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !7423
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7420, metadata !DIExpression()), !dbg !7424
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7425
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7426
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !7427, !srcloc !7428
  %3 = icmp ult i8 %2, 2, !dbg !7427
  call void @llvm.assume(i1 %3), !dbg !7427
  store i8 %2, ptr %oldbit, align 1, !dbg !7427
  %4 = load i8, ptr %oldbit, align 1, !dbg !7429, !range !6664, !noundef !951
  %tobool = trunc i8 %4 to i1, !dbg !7429
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !7430
  ret i1 %tobool, !dbg !7431
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864}
!llvm.ident = !{!4865}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/isofs/rock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f2454ddb6213da2ddc0dd8837c12c6c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 35)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "isofs_symlink_aops", scope: !9, file: !2, line: 805, type: !780, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/isofs/.rock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/isofs/isofs\22 -D KBUILD_BASENAME=\22rock\22 -D KBUILD_MODNAME=\22isofs\22 -D __KBUILD_MODNAME=kmod_isofs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/isofs/rock.ll fs/isofs/rock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !208, globals: !4782, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !27, !35, !51, !58, !64, !69, !75, !81, !88, !93, !101, !109, !118, !123, !128, !134, !140, !147, !152, !162, !168}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !20, line: 68, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!23 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!24 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !28, line: 9, baseType: !13, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!31 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!32 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!33 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!34 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !36, line: 1325, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!38 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!39 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!40 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!41 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!42 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!43 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!44 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!45 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!46 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!47 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!48 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!49 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!50 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !52, line: 15, baseType: !13, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!56 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!57 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !13, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !65, line: 2052, baseType: !13, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!68 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !70, line: 54, baseType: !13, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "USRQUOTA", value: 0)
!73 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!74 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !76, line: 45, baseType: !13, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!79 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!80 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !82, line: 487, baseType: !13, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!85 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!86 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!87 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !89, line: 65, baseType: !13, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!90 = !{!91, !92}
!91 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!92 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !94, line: 620, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!97 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!98 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!99 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!100 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !94, line: 597, baseType: !102, size: 32, elements: !103)
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !{!104, !105, !106, !107, !108}
!104 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!105 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!106 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!107 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!108 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !82, line: 547, baseType: !13, size: 32, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117}
!111 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!112 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!113 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!114 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!115 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!116 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!117 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !82, line: 564, baseType: !13, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!122 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !82, line: 577, baseType: !13, size: 32, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!127 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !82, line: 503, baseType: !13, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!131 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!132 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!133 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !135, line: 16, baseType: !13, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "TT_NONE", value: 0)
!138 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!139 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !141, line: 51, baseType: !13, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!144 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!145 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!146 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !153, line: 364, baseType: !13, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!154 = !{!155, !156, !157, !158, !159, !160, !161}
!155 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!159 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!160 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!161 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "isofs_file_format", file: !163, line: 8, baseType: !13, size: 32, elements: !164)
!163 = !DIFile(filename: "fs/isofs/isofs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0762343a470ff5fb6ef48c76f16ac564")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "isofs_file_normal", value: 0)
!166 = !DIEnumerator(name: "isofs_file_sparse", value: 1)
!167 = !DIEnumerator(name: "isofs_file_compressed", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !169, line: 100, baseType: !13, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!171 = !DIEnumerator(name: "PG_locked", value: 0)
!172 = !DIEnumerator(name: "PG_writeback", value: 1)
!173 = !DIEnumerator(name: "PG_referenced", value: 2)
!174 = !DIEnumerator(name: "PG_uptodate", value: 3)
!175 = !DIEnumerator(name: "PG_dirty", value: 4)
!176 = !DIEnumerator(name: "PG_lru", value: 5)
!177 = !DIEnumerator(name: "PG_head", value: 6)
!178 = !DIEnumerator(name: "PG_waiters", value: 7)
!179 = !DIEnumerator(name: "PG_active", value: 8)
!180 = !DIEnumerator(name: "PG_workingset", value: 9)
!181 = !DIEnumerator(name: "PG_error", value: 10)
!182 = !DIEnumerator(name: "PG_slab", value: 11)
!183 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!184 = !DIEnumerator(name: "PG_arch_1", value: 13)
!185 = !DIEnumerator(name: "PG_reserved", value: 14)
!186 = !DIEnumerator(name: "PG_private", value: 15)
!187 = !DIEnumerator(name: "PG_private_2", value: 16)
!188 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!189 = !DIEnumerator(name: "PG_reclaim", value: 18)
!190 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!191 = !DIEnumerator(name: "PG_unevictable", value: 20)
!192 = !DIEnumerator(name: "PG_mlocked", value: 21)
!193 = !DIEnumerator(name: "PG_uncached", value: 22)
!194 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!195 = !DIEnumerator(name: "PG_readahead", value: 18)
!196 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!197 = !DIEnumerator(name: "PG_checked", value: 12)
!198 = !DIEnumerator(name: "PG_swapcache", value: 12)
!199 = !DIEnumerator(name: "PG_fscache", value: 16)
!200 = !DIEnumerator(name: "PG_pinned", value: 12)
!201 = !DIEnumerator(name: "PG_savepinned", value: 4)
!202 = !DIEnumerator(name: "PG_foreign", value: 12)
!203 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!204 = !DIEnumerator(name: "PG_isolated", value: 18)
!205 = !DIEnumerator(name: "PG_reported", value: 3)
!206 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!207 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!208 = !{!209, !311, !312, !314, !316, !333, !334, !335, !348, !13, !349, !351, !352, !353, !354, !372, !4754, !4770, !787, !1311, !4771, !4773, !4775, !4778, !4779, !4780, !2418}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rock_ridge", file: !211, line: 96, size: 288, elements: !212)
!211 = !DIFile(filename: "fs/isofs/rock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29a800c93c92548dabdcc6d0cf0858c6")
!212 = !{!213, !220, !221, !222}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !210, file: !211, line: 97, baseType: !214, size: 16)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 16, elements: !218)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !216, line: 21, baseType: !217)
!216 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!217 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!218 = !{!219}
!219 = !DISubrange(count: 2)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !210, file: !211, line: 98, baseType: !215, size: 8, offset: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !210, file: !211, line: 99, baseType: !215, size: 8, offset: 24)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !210, file: !211, line: 113, baseType: !223, size: 256, offset: 32)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !211, line: 100, size: 256, elements: !224)
!224 = !{!225, !230, !239, !250, !257, !264, !269, !279, !285, !289, !293, !305}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "SP", scope: !223, file: !211, line: 101, baseType: !226, size: 24)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SU_SP_s", file: !211, line: 9, size: 24, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !226, file: !211, line: 10, baseType: !214, size: 16)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !226, file: !211, line: 11, baseType: !215, size: 8, offset: 16)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "CE", scope: !223, file: !211, line: 102, baseType: !231, size: 192)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SU_CE_s", file: !211, line: 14, size: 192, elements: !232)
!232 = !{!233, !237, !238}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !231, file: !211, line: 15, baseType: !234, size: 64)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !231, file: !211, line: 16, baseType: !234, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !231, file: !211, line: 17, baseType: !234, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ER", scope: !223, file: !211, line: 103, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SU_ER_s", file: !211, line: 20, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245, !246}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "len_id", scope: !240, file: !211, line: 21, baseType: !215, size: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "len_des", scope: !240, file: !211, line: 22, baseType: !215, size: 8, offset: 8)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "len_src", scope: !240, file: !211, line: 23, baseType: !215, size: 8, offset: 16)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ver", scope: !240, file: !211, line: 24, baseType: !215, size: 8, offset: 24)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !240, file: !211, line: 25, baseType: !247, offset: 32)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: -1)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !223, file: !211, line: 104, baseType: !251, size: 8)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RR_RR_s", file: !211, line: 28, size: 8, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !211, line: 29, baseType: !254, size: 8)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 8, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 1)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "PX", scope: !223, file: !211, line: 105, baseType: !258, size: 256)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RR_PX_s", file: !211, line: 32, size: 256, elements: !259)
!259 = !{!260, !261, !262, !263}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !258, file: !211, line: 33, baseType: !234, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "n_links", scope: !258, file: !211, line: 34, baseType: !234, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !258, file: !211, line: 35, baseType: !234, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !258, file: !211, line: 36, baseType: !234, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "PN", scope: !223, file: !211, line: 106, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RR_PN_s", file: !211, line: 39, size: 128, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dev_high", scope: !265, file: !211, line: 40, baseType: !234, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dev_low", scope: !265, file: !211, line: 41, baseType: !234, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "SL", scope: !223, file: !211, line: 107, baseType: !270, size: 24)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RR_SL_s", file: !211, line: 50, size: 24, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !211, line: 51, baseType: !215, size: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !270, file: !211, line: 52, baseType: !274, size: 16, offset: 8)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SL_component", file: !211, line: 44, size: 16, elements: !275)
!275 = !{!276, !277, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !211, line: 45, baseType: !215, size: 8)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !274, file: !211, line: 46, baseType: !215, size: 8, offset: 8)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !274, file: !211, line: 47, baseType: !247, offset: 16)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "NM", scope: !223, file: !211, line: 108, baseType: !280, size: 8)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RR_NM_s", file: !211, line: 55, size: 8, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !211, line: 56, baseType: !215, size: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !211, line: 57, baseType: !284, offset: 8)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !248)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "CL", scope: !223, file: !211, line: 109, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RR_CL_s", file: !211, line: 60, size: 64, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !286, file: !211, line: 61, baseType: !234, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "PL", scope: !223, file: !211, line: 110, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RR_PL_s", file: !211, line: 64, size: 64, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !290, file: !211, line: 65, baseType: !234, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "TF", scope: !223, file: !211, line: 111, baseType: !294, size: 8)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RR_TF_s", file: !211, line: 72, size: 8, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !211, line: 73, baseType: !215, size: 8)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !294, file: !211, line: 74, baseType: !298, offset: 8)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, elements: !248)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stamp", file: !211, line: 68, size: 56, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !299, file: !211, line: 69, baseType: !302, size: 56)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 56, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 7)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ZF", scope: !223, file: !211, line: 112, baseType: !306, size: 96)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RR_ZF_s", file: !211, line: 78, size: 96, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !306, file: !211, line: 79, baseType: !214, size: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "parms", scope: !306, file: !211, line: 80, baseType: !214, size: 16, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "real_size", scope: !306, file: !211, line: 81, baseType: !234, size: 64, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !216, line: 24, baseType: !313)
!313 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !315, line: 36, baseType: !312)
!315 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !319, line: 27, size: 16, elements: !331)
!319 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!320 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !319, file: !319, line: 25, type: !321, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !327)
!321 = !DISubroutineType(types: !322)
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !324, line: 19, baseType: !312)
!324 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!327 = !{!328, !329}
!328 = !DILocalVariable(name: "p", arg: 1, scope: !320, file: !319, line: 25, type: !325)
!329 = !DILocalVariable(name: "__pptr", scope: !330, file: !319, line: 27, type: !316)
!330 = distinct !DILexicalBlock(scope: !320, file: !319, line: 27, column: 9)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !318, file: !319, line: 27, baseType: !314, size: 16)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !216, line: 27, baseType: !13)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !315, line: 38, baseType: !333)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !319, line: 32, size: 32, elements: !346)
!338 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !319, file: !319, line: 30, type: !339, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !342)
!339 = !DISubroutineType(types: !340)
!340 = !{!341, !325}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !324, line: 21, baseType: !333)
!342 = !{!343, !344}
!343 = !DILocalVariable(name: "p", arg: 1, scope: !338, file: !319, line: 30, type: !325)
!344 = !DILocalVariable(name: "__pptr", scope: !345, file: !319, line: 32, type: !335)
!345 = distinct !DILexicalBlock(scope: !338, file: !319, line: 32, column: 9)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !337, file: !319, line: 32, baseType: !334, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !350, line: 154, baseType: !13)
!350 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!351 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iso_inode_info", file: !163, line: 17, size: 5184, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !365, !366, !367, !373}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_iget5_block", scope: !355, file: !163, line: 18, baseType: !351, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_iget5_offset", scope: !355, file: !163, line: 19, baseType: !351, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_extent", scope: !355, file: !163, line: 20, baseType: !13, size: 32, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_file_format", scope: !355, file: !163, line: 21, baseType: !217, size: 8, offset: 160)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_format_parm", scope: !355, file: !163, line: 22, baseType: !362, size: 24, offset: 168)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 24, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 3)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_next_section_block", scope: !355, file: !163, line: 23, baseType: !351, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_next_section_offset", scope: !355, file: !163, line: 24, baseType: !351, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_section_size", scope: !355, file: !163, line: 25, baseType: !368, size: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !350, line: 26, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_off_t", file: !370, line: 87, baseType: !371)
!370 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !370, line: 15, baseType: !372)
!372 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !355, file: !163, line: 26, baseType: !374, size: 4800, offset: 384)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !65, line: 641, size: 4800, elements: !375)
!375 = !{!376, !378, !379, !387, !393, !400, !401, !404, !405, !4692, !4693, !4694, !4695, !4696, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4736, !4739, !4740, !4741, !4750, !4751, !4752, !4753}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !374, file: !65, line: 642, baseType: !377, size: 16)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !350, line: 24, baseType: !313)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !374, file: !65, line: 643, baseType: !313, size: 16, offset: 16)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !374, file: !65, line: 644, baseType: !380, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !381, line: 23, baseType: !382)
!381 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 21, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !382, file: !381, line: 22, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !350, line: 37, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !370, line: 49, baseType: !13)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !374, file: !65, line: 645, baseType: !388, size: 128, offset: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !350, line: 190, size: 128, elements: !389)
!389 = !{!390, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !350, line: 191, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !388, file: !350, line: 191, baseType: !391, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !374, file: !65, line: 646, baseType: !394, size: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !381, line: 28, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 26, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !395, file: !381, line: 27, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !350, line: 38, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !370, line: 50, baseType: !13)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !374, file: !65, line: 647, baseType: !13, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !374, file: !65, line: 650, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !65, line: 607, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !374, file: !65, line: 651, baseType: !402, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !374, file: !65, line: 654, baseType: !406, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !65, line: 1966, size: 2048, align: 512, elements: !409)
!409 = !{!410, !4559, !4569, !4573, !4577, !4581, !4585, !4589, !4593, !4597, !4601, !4602, !4606, !4610, !4614, !4643, !4647, !4653, !4657, !4661, !4665, !4669, !4673, !4679, !4683}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !408, file: !65, line: 1967, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !457, !414, !13}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !416, line: 82, size: 1536, elements: !417)
!416 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!417 = !{!418, !419, !429, !437, !438, !456, !458, !462, !510, !4542, !4543, !4544, !4545, !4551, !4552, !4553}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !415, file: !416, line: 84, baseType: !13, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !415, file: !416, line: 85, baseType: !420, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !421, line: 275, baseType: !422)
!421 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !421, line: 275, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !422, file: !421, line: 275, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !421, line: 69, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !421, line: 64, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !426, file: !421, line: 65, baseType: !13, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !415, file: !416, line: 86, baseType: !430, size: 128, offset: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !431, line: 38, size: 128, elements: !432)
!431 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!432 = !{!433, !435}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !431, line: 39, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !430, file: !431, line: 39, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !415, file: !416, line: 87, baseType: !414, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !415, file: !416, line: 88, baseType: !439, size: 128, offset: 256)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !416, line: 49, size: 128, elements: !440)
!440 = !{!441, !453}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !416, line: 50, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !416, line: 50, size: 64, elements: !443)
!443 = !{!444, !449}
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !416, line: 51, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !416, line: 51, size: 64, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !445, file: !416, line: 52, baseType: !341, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !445, file: !416, line: 52, baseType: !341, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !442, file: !416, line: 54, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !324, line: 23, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !216, line: 31, baseType: !452)
!452 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !439, file: !416, line: 56, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !415, file: !416, line: 89, baseType: !457, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !415, file: !416, line: 91, baseType: !459, size: 256, offset: 448)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !415, file: !416, line: 94, baseType: !463, size: 64, offset: 704)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !464, line: 25, size: 64, elements: !465)
!464 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !464, line: 26, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !464, line: 26, size: 64, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !467, file: !464, line: 28, baseType: !451, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !464, line: 30, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !464, line: 30, size: 64, elements: !472)
!472 = !{!473, !509}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !471, file: !464, line: 31, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !475, line: 29, baseType: !476)
!475 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !475, line: 17, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !475, line: 18, baseType: !479, size: 32)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !475, line: 18, size: 32, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !479, file: !475, line: 19, baseType: !482, size: 32)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !483, line: 14, size: 32, elements: !484)
!483 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !482, file: !483, line: 15, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !487, line: 44, baseType: !488)
!487 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !487, line: 14, size: 32, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !487, line: 15, baseType: !491, size: 32)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !487, line: 15, size: 32, elements: !492)
!492 = !{!493, !498, !504}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !491, file: !487, line: 16, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !350, line: 174, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 172, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !495, file: !350, line: 173, baseType: !102, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !487, line: 24, baseType: !499, size: 16)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !491, file: !487, line: 24, size: 16, elements: !500)
!500 = !{!501, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !499, file: !487, line: 25, baseType: !502, size: 8)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !324, line: 17, baseType: !215)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !499, file: !487, line: 26, baseType: !502, size: 8, offset: 8)
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !487, line: 28, baseType: !505, size: 32)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !491, file: !487, line: 28, size: 32, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !505, file: !487, line: 29, baseType: !323, size: 16)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !505, file: !487, line: 30, baseType: !323, size: 16, offset: 16)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !471, file: !464, line: 32, baseType: !102, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !415, file: !416, line: 95, baseType: !511, size: 64, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !416, line: 128, size: 1024, align: 512, elements: !514)
!514 = !{!515, !519, !520, !527, !535, !539, !543, !547, !548, !552, !556, !4532, !4536}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !513, file: !416, line: 129, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!102, !414, !13}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !513, file: !416, line: 130, baseType: !516, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !513, file: !416, line: 131, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!102, !524, !526}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !513, file: !416, line: 132, baseType: !528, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!102, !524, !13, !531, !533}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !513, file: !416, line: 134, baseType: !536, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!102, !524}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !513, file: !416, line: 135, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!102, !414}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !513, file: !416, line: 136, baseType: !544, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !414}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !513, file: !416, line: 137, baseType: !544, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !513, file: !416, line: 138, baseType: !549, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !414, !457}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !513, file: !416, line: 139, baseType: !553, size: 64, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!353, !414, !353, !102}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !513, file: !416, line: 140, baseType: !557, size: 64, offset: 640)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !4531}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !562, line: 70, size: 256, elements: !563)
!562 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!563 = !{!564, !565, !4527, !4528}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !561, file: !562, line: 71, baseType: !414, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !561, file: !562, line: 72, baseType: !566, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !65, line: 1190, size: 10752, elements: !568)
!568 = !{!569, !570, !573, !574, !575, !579, !2447, !2579, !2619, !2704, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2822, !2826, !2827, !3284, !3287, !3290, !3293, !3294, !3295, !3336, !4460, !4461, !4462, !4463, !4464, !4465, !4468, !4470, !4477, !4478, !4479, !4480, !4481, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !567, file: !65, line: 1191, baseType: !388, size: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !567, file: !65, line: 1192, baseType: !571, size: 32, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !350, line: 21, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !350, line: 18, baseType: !341)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !567, file: !65, line: 1193, baseType: !217, size: 8, offset: 160)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !567, file: !65, line: 1194, baseType: !351, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !567, file: !65, line: 1195, baseType: !576, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !350, line: 52, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !370, line: 88, baseType: !578)
!578 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !567, file: !65, line: 1196, baseType: !580, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !65, line: 2366, size: 576, elements: !582)
!582 = !{!583, !584, !585, !591, !595, !599, !603, !2435, !2436, !2437, !2439, !2440, !2441, !2443, !2444, !2445, !2446}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !581, file: !65, line: 2367, baseType: !531, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !581, file: !65, line: 2368, baseType: !102, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !581, file: !65, line: 2376, baseType: !586, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!102, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !562, line: 21, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !581, file: !65, line: 2377, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !65, line: 75, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !581, file: !65, line: 2378, baseType: !596, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!414, !580, !102, !531, !348}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !581, file: !65, line: 2380, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !566}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !581, file: !65, line: 2381, baseType: !604, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !606)
!606 = !{!607, !608, !609, !613, !2095, !2121, !2122, !2123, !2124, !2128, !2131, !2132, !2133, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2201, !2205, !2221, !2239, !2240, !2241, !2242, !2251, !2274, !2275, !2278, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2292, !2293, !2393, !2401, !2402, !2403, !2405, !2409, !2410, !2414, !2415, !2416, !2417, !2419, !2420, !2421, !2428, !2429, !2430, !2434}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !605, file: !12, line: 403, baseType: !11, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !605, file: !12, line: 406, baseType: !388, size: 128, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !605, file: !12, line: 409, baseType: !610, size: 448, offset: 192)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 56)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !605, file: !12, line: 417, baseType: !614, size: 768, offset: 640)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !615)
!615 = !{!616, !2088, !2089, !2090, !2093}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !614, file: !12, line: 46, baseType: !617, size: 512)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !618, line: 64, size: 512, elements: !619)
!618 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!619 = !{!620, !621, !622, !624, !668, !1974, !2078, !2083, !2084, !2085, !2086, !2087}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !617, file: !618, line: 65, baseType: !531, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !617, file: !618, line: 66, baseType: !388, size: 128, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !617, file: !618, line: 67, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !617, file: !618, line: 68, baseType: !625, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !618, line: 168, size: 768, elements: !627)
!627 = !{!628, !629, !630, !631}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !626, file: !618, line: 169, baseType: !388, size: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !626, file: !618, line: 170, baseType: !474, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !626, file: !618, line: 171, baseType: !617, size: 512, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !626, file: !618, line: 172, baseType: !632, size: 64, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !618, line: 133, size: 192, elements: !635)
!635 = !{!636, !643, !648}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !634, file: !618, line: 134, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!102, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !634, file: !618, line: 135, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!531, !641}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !634, file: !618, line: 136, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!102, !641, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !618, line: 125, size: 20736, elements: !655)
!655 = !{!656, !658, !662, !663, !667}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !654, file: !618, line: 126, baseType: !657, size: 192)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 192, elements: !363)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !654, file: !618, line: 127, baseType: !659, size: 4096, offset: 192)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 4096, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !654, file: !618, line: 128, baseType: !102, size: 32, offset: 4288)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !654, file: !618, line: 129, baseType: !664, size: 16384, offset: 4320)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 2048)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !654, file: !618, line: 130, baseType: !102, size: 32, offset: 20704)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !617, file: !618, line: 69, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !618, line: 116, size: 384, elements: !672)
!672 = !{!673, !677, !701, !1933, !1964, !1968}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !671, file: !618, line: 117, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !623}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !671, file: !618, line: 118, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !681, line: 254, size: 128, elements: !682)
!681 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!682 = !{!683, !694}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !680, file: !681, line: 255, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!687, !623, !689, !353}
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !350, line: 66, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !370, line: 73, baseType: !371)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !681, line: 30, size: 128, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !690, file: !681, line: 31, baseType: !531, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !690, file: !681, line: 32, baseType: !377, size: 16, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !680, file: !681, line: 256, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!687, !623, !689, !531, !698}
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !350, line: 61, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !370, line: 72, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !370, line: 16, baseType: !351)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !671, file: !618, line: 119, baseType: !702, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !681, line: 84, size: 320, elements: !706)
!706 = !{!707, !708, !712, !1929, !1931}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !705, file: !681, line: 85, baseType: !531, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !705, file: !681, line: 86, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!377, !623, !689, !102}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !705, file: !681, line: 88, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!377, !623, !716, !102}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !681, line: 175, size: 512, elements: !718)
!718 = !{!719, !720, !721, !722, !1920, !1924, !1925}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !717, file: !681, line: 176, baseType: !690, size: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !717, file: !681, line: 177, baseType: !698, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !717, file: !681, line: 178, baseType: !348, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !717, file: !681, line: 179, baseType: !723, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !65, line: 472, size: 1536, align: 64, elements: !728)
!728 = !{!729, !730, !737, !759, !760, !761, !776, !777, !778, !1914, !1915, !1916, !1917, !1918, !1919}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !727, file: !65, line: 473, baseType: !457, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !727, file: !65, line: 474, baseType: !731, size: 128, offset: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !732, line: 296, size: 128, elements: !733)
!732 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!733 = !{!734, !735, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !731, file: !732, line: 297, baseType: !474, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !731, file: !732, line: 299, baseType: !349, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !731, file: !732, line: 300, baseType: !348, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !727, file: !65, line: 475, baseType: !738, size: 320, offset: 192)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !739, line: 48, size: 320, elements: !740)
!739 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!740 = !{!741, !750, !751, !756, !758}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !738, file: !739, line: 49, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !743, line: 13, baseType: !744)
!743 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !350, line: 181, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 179, size: 64, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !745, file: !350, line: 180, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !324, line: 22, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !216, line: 30, baseType: !578)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !738, file: !739, line: 55, baseType: !742, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !738, file: !739, line: 57, baseType: !752, size: 32, offset: 128)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !753, line: 15, size: 32, elements: !754)
!753 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !752, file: !753, line: 20, baseType: !494, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !738, file: !739, line: 59, baseType: !757, size: 32, offset: 160)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !483, line: 23, baseType: !482)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !738, file: !739, line: 60, baseType: !388, size: 128, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !727, file: !65, line: 476, baseType: !349, size: 32, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !727, file: !65, line: 477, baseType: !494, size: 32, offset: 544)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !727, file: !65, line: 482, baseType: !762, size: 128, offset: 576)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !763, line: 26, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!764 = !{!765, !775}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !762, file: !763, line: 27, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !763, line: 12, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !766, file: !763, line: 13, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !763, line: 5, size: 192, align: 64, elements: !771)
!771 = !{!772, !773, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !770, file: !763, line: 6, baseType: !351, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !770, file: !763, line: 7, baseType: !769, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !770, file: !763, line: 8, baseType: !769, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !762, file: !763, line: 28, baseType: !769, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !727, file: !65, line: 483, baseType: !351, size: 64, offset: 704)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !727, file: !65, line: 484, baseType: !351, size: 64, offset: 768)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !727, file: !65, line: 485, baseType: !779, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !65, line: 404, size: 1280, elements: !782)
!782 = !{!783, !1826, !1830, !1834, !1838, !1854, !1859, !1863, !1868, !1872, !1876, !1880, !1881, !1885, !1889, !1893, !1898, !1902, !1909, !1910}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !781, file: !65, line: 405, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!102, !787, !1824}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !36, line: 74, size: 512, align: 128, elements: !789)
!789 = !{!790, !791, !1818, !1823}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !36, line: 75, baseType: !351, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !36, line: 83, baseType: !792, size: 320, offset: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !788, file: !36, line: 83, size: 320, elements: !793)
!793 = !{!794, !815, !829, !833, !1817}
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !36, line: 84, baseType: !795, size: 320)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !36, line: 84, size: 320, elements: !796)
!796 = !{!797, !808, !809, !814}
!797 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !36, line: 90, baseType: !798, size: 128)
!798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !36, line: 90, size: 128, elements: !799)
!799 = !{!800, !801, !806, !807}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !798, file: !36, line: 91, baseType: !388, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !36, line: 94, baseType: !802, size: 128)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !798, file: !36, line: 94, size: 128, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !802, file: !36, line: 96, baseType: !348, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !802, file: !36, line: 98, baseType: !13, size: 32, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !798, file: !36, line: 102, baseType: !388, size: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !798, file: !36, line: 103, baseType: !388, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !795, file: !36, line: 106, baseType: !726, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !36, line: 107, baseType: !810, size: 64, offset: 192)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !36, line: 107, size: 64, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !810, file: !36, line: 108, baseType: !351, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !810, file: !36, line: 109, baseType: !351, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !795, file: !36, line: 117, baseType: !351, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !36, line: 119, baseType: !816, size: 320)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !36, line: 119, size: 320, elements: !817)
!817 = !{!818, !819, !822, !823, !824}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !816, file: !36, line: 124, baseType: !351, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !816, file: !36, line: 125, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !36, line: 125, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !816, file: !36, line: 126, baseType: !351, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !816, file: !36, line: 127, baseType: !351, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !36, line: 128, baseType: !825, size: 64, offset: 256)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !36, line: 128, size: 64, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !825, file: !36, line: 133, baseType: !351, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !825, file: !36, line: 138, baseType: !742, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !36, line: 141, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !36, line: 141, size: 64, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !830, file: !36, line: 142, baseType: !351, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !36, line: 144, baseType: !834, size: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !36, line: 144, size: 128, elements: !835)
!835 = !{!836, !1816}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !834, file: !36, line: 146, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !20, line: 126, size: 1216, elements: !839)
!839 = !{!840, !850, !881, !892, !893, !894, !895, !1798, !1799, !1800}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !838, file: !20, line: 127, baseType: !841, size: 384)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !20, line: 21, size: 384, elements: !842)
!842 = !{!843, !844, !846, !847, !848, !849}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !841, file: !20, line: 22, baseType: !351, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !841, file: !20, line: 23, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !841, file: !20, line: 24, baseType: !845, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !841, file: !20, line: 25, baseType: !351, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !841, file: !20, line: 26, baseType: !351, size: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !841, file: !20, line: 27, baseType: !351, size: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !838, file: !20, line: 128, baseType: !851, size: 128, offset: 384)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !852, line: 105, size: 128, elements: !853)
!852 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !851, file: !852, line: 110, baseType: !351, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !851, file: !852, line: 118, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !852, line: 95, size: 448, elements: !858)
!858 = !{!859, !860, !866, !867, !870, !871, !880}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !857, file: !852, line: 96, baseType: !742, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !857, file: !852, line: 97, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !852, line: 60, baseType: !863)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !857, file: !852, line: 98, baseType: !861, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !857, file: !852, line: 99, baseType: !868, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !350, line: 35, baseType: !869)
!869 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !857, file: !852, line: 100, baseType: !868, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !857, file: !852, line: 101, baseType: !872, size: 128, align: 64, offset: 256)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !350, line: 232, size: 128, align: 64, elements: !873)
!873 = !{!874, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !872, file: !350, line: 233, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !872, file: !350, line: 234, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !875}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !857, file: !852, line: 102, baseType: !865, size: 64, offset: 384)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !838, file: !20, line: 129, baseType: !882, size: 256, offset: 512)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !883, line: 26, size: 256, elements: !884)
!883 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !882, file: !883, line: 27, baseType: !13, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !882, file: !883, line: 28, baseType: !887, size: 192, offset: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !888, line: 43, size: 192, elements: !889)
!888 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !887, file: !888, line: 44, baseType: !757, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !887, file: !888, line: 45, baseType: !388, size: 128, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !20, line: 130, baseType: !19, size: 32, offset: 768)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !20, line: 131, baseType: !13, size: 32, offset: 800)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !838, file: !20, line: 132, baseType: !351, size: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !838, file: !20, line: 133, baseType: !896, size: 64, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !20, line: 77, size: 192, elements: !899)
!899 = !{!900, !904, !1794}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !898, file: !20, line: 83, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !787}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !898, file: !20, line: 89, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !36, line: 1184, baseType: !13)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !911, line: 512, size: 896, elements: !912)
!911 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!912 = !{!913, !1761, !1762, !1769, !1776, !1786, !1787, !1788, !1790, !1792}
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !911, line: 513, baseType: !914, size: 320)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !911, line: 513, size: 320, elements: !915)
!915 = !{!916, !1757, !1758, !1759, !1760}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !914, file: !911, line: 514, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !36, line: 625, size: 1344, elements: !919)
!919 = !{!920, !929, !1662, !1668, !1675, !1676, !1681, !1682, !1687, !1688, !1691, !1750, !1751, !1752, !1753, !1754, !1755}
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !36, line: 628, baseType: !921, size: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !36, line: 628, size: 128, elements: !922)
!922 = !{!923, !928}
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !36, line: 629, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !36, line: 629, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !924, file: !36, line: 631, baseType: !351, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !924, file: !36, line: 632, baseType: !351, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !921, file: !36, line: 635, baseType: !872, size: 128, align: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !918, file: !36, line: 639, baseType: !930, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !36, line: 733, size: 10240, elements: !932)
!932 = !{!933, !1660}
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !36, line: 734, baseType: !934, size: 10240)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !931, file: !36, line: 734, size: 10240, elements: !935)
!935 = !{!936, !940, !954, !1524, !1525, !1526, !1527, !1528, !1529, !1538, !1539, !1540, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1579, !1581, !1584, !1629, !1630, !1631, !1634, !1635, !1636, !1639, !1640, !1641, !1647, !1648}
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !36, line: 739, baseType: !937, size: 512, align: 512)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !36, line: 739, size: 512, align: 512, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !937, file: !36, line: 747, baseType: !494, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !934, file: !36, line: 750, baseType: !941, size: 128, offset: 512)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !942, line: 218, size: 128, elements: !943)
!942 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!943 = !{!944, !952, !953}
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !942, line: 219, baseType: !945, size: 32)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !942, line: 219, size: 32, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !945, file: !942, line: 220, baseType: !474, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !945, file: !942, line: 221, baseType: !949)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !942, line: 197, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !942, line: 197, elements: !951)
!951 = !{}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !941, file: !942, line: 223, baseType: !13, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !941, file: !942, line: 224, baseType: !348, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !934, file: !36, line: 752, baseType: !955, size: 64, offset: 640)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!351, !958, !351, !351, !351, !351}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !65, line: 994, size: 1856, align: 64, elements: !960)
!960 = !{!961, !972, !973, !975, !976, !984, !985, !986, !1056, !1251, !1260, !1266, !1267, !1514, !1515, !1516, !1517, !1519, !1520, !1523}
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !65, line: 995, baseType: !962, size: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !65, line: 995, size: 128, elements: !963)
!963 = !{!964, !970, !971}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !962, file: !65, line: 996, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !966, line: 60, size: 64, elements: !967)
!966 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!967 = !{!968}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !965, file: !966, line: 61, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !962, file: !65, line: 997, baseType: !872, size: 128, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !962, file: !65, line: 998, baseType: !13, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !959, file: !65, line: 1005, baseType: !474, size: 32, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !959, file: !65, line: 1006, baseType: !974, size: 32, offset: 160)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !350, line: 156, baseType: !13)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !959, file: !65, line: 1007, baseType: !742, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !959, file: !65, line: 1008, baseType: !977, size: 256, offset: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !978, line: 66, size: 256, elements: !979)
!978 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!979 = !{!980, !981, !982, !983}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !977, file: !978, line: 67, baseType: !742, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !977, file: !978, line: 68, baseType: !757, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !977, file: !978, line: 70, baseType: !752, size: 32, offset: 96)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !977, file: !978, line: 72, baseType: !388, size: 128, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !959, file: !65, line: 1009, baseType: !576, size: 64, offset: 512)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !959, file: !65, line: 1010, baseType: !13, size: 32, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !959, file: !65, line: 1011, baseType: !987, size: 256, offset: 640)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !65, line: 948, size: 256, elements: !988)
!988 = !{!989, !1010, !1052, !1053, !1054, !1055}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !987, file: !65, line: 949, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !991, line: 34, baseType: !992)
!991 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !991, line: 25, size: 64, elements: !993)
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !992, file: !991, line: 26, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !996, line: 27, baseType: !997)
!996 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !996, line: 13, size: 64, elements: !998)
!998 = !{!999, !1009}
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !996, line: 14, baseType: !1000, size: 32)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !996, line: 14, size: 32, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1000, file: !996, line: 15, baseType: !494, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !996, line: 16, baseType: !1004, size: 32)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !996, line: 16, size: 32, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1004, file: !996, line: 18, baseType: !502, size: 8)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1004, file: !996, line: 19, baseType: !1008, size: 24, offset: 8)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 24, elements: !363)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !997, file: !996, line: 26, baseType: !486, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !987, file: !65, line: 950, baseType: !1011, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !28, line: 59, size: 768, elements: !1013)
!1013 = !{!1014, !1020, !1021, !1022, !1035, !1036, !1043, !1044}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1012, file: !28, line: 61, baseType: !1015, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1016, line: 113, baseType: !1017)
!1016 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1016, line: 111, size: 32, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1017, file: !1016, line: 112, baseType: !494, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1012, file: !28, line: 62, baseType: !13, size: 32, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1012, file: !28, line: 63, baseType: !474, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1012, file: !28, line: 65, baseType: !1023, size: 256, offset: 128)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1024, size: 256, elements: !1033)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !350, line: 194, size: 64, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1024, file: !350, line: 195, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !350, line: 198, size: 128, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1028, file: !350, line: 199, baseType: !1027, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1028, file: !350, line: 199, baseType: !1032, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1033 = !{!1034}
!1034 = !DISubrange(count: 4)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1012, file: !28, line: 66, baseType: !1024, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1012, file: !28, line: 68, baseType: !1037, size: 192, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1038, line: 41, baseType: !1039)
!1038 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1038, line: 37, size: 192, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1039, file: !1038, line: 38, baseType: !474, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1039, file: !1038, line: 39, baseType: !388, size: 128, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1012, file: !28, line: 69, baseType: !872, size: 128, align: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1012, file: !28, line: 70, baseType: !1045, offset: 768)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, elements: !248)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !28, line: 54, size: 128, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1046, file: !28, line: 55, baseType: !102, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1046, file: !28, line: 56, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !28, line: 56, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !987, file: !65, line: 951, baseType: !27, size: 32, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !987, file: !65, line: 952, baseType: !380, size: 32, offset: 160)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !987, file: !65, line: 952, baseType: !380, size: 32, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !987, file: !65, line: 953, baseType: !102, size: 32, offset: 224)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !959, file: !65, line: 1012, baseType: !1057, size: 64, offset: 896)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1060, line: 110, size: 1472, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1078, !1079, !1080, !1081, !1082, !1083, !1196, !1197, !1198, !1199, !1200, !1231, !1234, !1238, !1246}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1059, file: !1060, line: 111, baseType: !742, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1059, file: !1060, line: 112, baseType: !380, size: 32, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1059, file: !1060, line: 113, baseType: !394, size: 32, offset: 96)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1059, file: !1060, line: 114, baseType: !380, size: 32, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1059, file: !1060, line: 115, baseType: !394, size: 32, offset: 160)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1059, file: !1060, line: 116, baseType: !380, size: 32, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1059, file: !1060, line: 117, baseType: !394, size: 32, offset: 224)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1059, file: !1060, line: 118, baseType: !380, size: 32, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1059, file: !1060, line: 119, baseType: !394, size: 32, offset: 288)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1059, file: !1060, line: 120, baseType: !13, size: 32, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1059, file: !1060, line: 121, baseType: !1073, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1074, line: 24, baseType: !1075)
!1074 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1074, line: 24, size: 64, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1075, file: !1074, line: 24, baseType: !450, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1059, file: !1060, line: 122, baseType: !1073, size: 64, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1059, file: !1060, line: 123, baseType: !1073, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1059, file: !1060, line: 124, baseType: !1073, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1059, file: !1060, line: 125, baseType: !1073, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1059, file: !1060, line: 127, baseType: !217, size: 8, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1059, file: !1060, line: 129, baseType: !1084, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1086, line: 195, size: 1728, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1087 = !{!1088, !1089, !1094, !1099, !1100, !1103, !1104, !1111, !1112, !1113, !1114, !1117, !1118, !1119, !1121, !1122, !1160, !1181}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1085, file: !1086, line: 196, baseType: !1015, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1085, file: !1086, line: 197, baseType: !1090, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1086, line: 28, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !350, line: 104, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !324, line: 20, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !216, line: 26, baseType: !102)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1086, line: 198, baseType: !1095, size: 192, offset: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !1086, line: 198, size: 192, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1095, file: !1086, line: 199, baseType: !388, size: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1095, file: !1086, line: 200, baseType: !770, size: 192, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1085, file: !1086, line: 205, baseType: !738, size: 320, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1085, file: !1086, line: 206, baseType: !1101, size: 64, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1086, line: 206, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1085, file: !1086, line: 207, baseType: !348, size: 64, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1086, line: 208, baseType: !1105, size: 64, offset: 704)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !1086, line: 208, size: 64, elements: !1106)
!1106 = !{!1107, !1110}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1105, file: !1086, line: 209, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1109, line: 8, baseType: !749)
!1109 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1105, file: !1086, line: 210, baseType: !1108, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1085, file: !1086, line: 212, baseType: !1108, size: 64, offset: 768)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1085, file: !1086, line: 213, baseType: !380, size: 32, offset: 832)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1085, file: !1086, line: 214, baseType: !394, size: 32, offset: 864)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1085, file: !1086, line: 215, baseType: !1115, size: 32, offset: 896)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1086, line: 31, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !350, line: 110, baseType: !341)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1085, file: !1086, line: 216, baseType: !313, size: 16, offset: 928)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1085, file: !1086, line: 217, baseType: !313, size: 16, offset: 944)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1085, file: !1086, line: 221, baseType: !1120, size: 16, offset: 960)
!1120 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1085, file: !1086, line: 228, baseType: !351, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1086, line: 245, baseType: !1123, size: 320, offset: 1088)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !1086, line: 245, size: 320, elements: !1124)
!1124 = !{!1125, !1152}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1123, file: !1086, line: 246, baseType: !1126, size: 320)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1086, line: 114, size: 320, elements: !1127)
!1127 = !{!1128, !1129, !1141, !1144, !1151}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1126, file: !1086, line: 116, baseType: !351, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1086, line: 117, baseType: !1130, size: 64, offset: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !1086, line: 117, size: 64, elements: !1131)
!1131 = !{!1132, !1140}
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !1086, line: 118, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1086, line: 118, size: 64, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1133, file: !1086, line: 120, baseType: !323, size: 16)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1133, file: !1086, line: 121, baseType: !1137, size: 48, offset: 16)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 6)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1130, file: !1086, line: 127, baseType: !351, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1126, file: !1086, line: 129, baseType: !1142, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1086, line: 102, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1126, file: !1086, line: 130, baseType: !1145, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1086, line: 108, size: 192, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1146, file: !1086, line: 109, baseType: !872, size: 128, align: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1146, file: !1086, line: 110, baseType: !1015, size: 32, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1146, file: !1086, line: 111, baseType: !868, size: 8, offset: 160)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1126, file: !1086, line: 131, baseType: !531, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !1086, line: 247, baseType: !1153, size: 320)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !1086, line: 247, size: 320, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1153, file: !1086, line: 248, baseType: !351, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1153, file: !1086, line: 249, baseType: !351, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1153, file: !1086, line: 250, baseType: !1142, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1153, file: !1086, line: 251, baseType: !1145, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1153, file: !1086, line: 252, baseType: !353, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1086, line: 260, baseType: !1161, size: 256, offset: 1408)
!1161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !1086, line: 260, size: 256, elements: !1162)
!1162 = !{!1163, !1169}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1161, file: !1086, line: 261, baseType: !1164, size: 256)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1086, line: 134, size: 256, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1164, file: !1086, line: 135, baseType: !348, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1164, file: !1086, line: 136, baseType: !1168, size: 256)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !1033)
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1086, line: 262, baseType: !1170, size: 256)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1161, file: !1086, line: 262, size: 256, elements: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1170, file: !1086, line: 264, baseType: !388, size: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1170, file: !1086, line: 265, baseType: !1174, size: 128, offset: 128)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1175, line: 22, size: 128, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1176 = !{!1177, !1180}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1174, file: !1175, line: 23, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1175, line: 23, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1174, file: !1175, line: 24, baseType: !351, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1085, file: !1086, line: 280, baseType: !1182, size: 64, offset: 1664)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1086, line: 176, size: 192, elements: !1184)
!1184 = !{!1185, !1194, !1195}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1183, file: !1086, line: 177, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1086, line: 171, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!102, !1084, !1190, !1192, !1084}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1183, file: !1086, line: 178, baseType: !1084, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1183, file: !1086, line: 179, baseType: !1142, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1059, file: !1060, line: 130, baseType: !1084, size: 64, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1059, file: !1060, line: 131, baseType: !1084, size: 64, offset: 896)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1059, file: !1060, line: 132, baseType: !1084, size: 64, offset: 960)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1059, file: !1060, line: 135, baseType: !348, size: 64, offset: 1024)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1059, file: !1060, line: 137, baseType: !1201, size: 64, offset: 1088)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1203, line: 14, size: 1088, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1204 = !{!1205, !1206, !1215, !1216, !1217, !1218, !1219, !1220}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1202, file: !1203, line: 15, baseType: !1015, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1202, file: !1203, line: 17, baseType: !1207, size: 320, offset: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1208, line: 22, size: 320, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1209 = !{!1210, !1211, !1212, !1213}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1207, file: !1208, line: 23, baseType: !757, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1207, file: !1208, line: 24, baseType: !748, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1207, file: !1208, line: 26, baseType: !388, size: 128, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1207, file: !1208, line: 28, baseType: !1214, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1202, file: !1203, line: 19, baseType: !351, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1202, file: !1203, line: 20, baseType: !742, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1202, file: !1203, line: 23, baseType: !1028, size: 128, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1202, file: !1203, line: 24, baseType: !380, size: 32, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1202, file: !1203, line: 29, baseType: !742, size: 64, offset: 704)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1202, file: !1203, line: 36, baseType: !1221, size: 320, offset: 768)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1222, line: 15, size: 320, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1221, file: !1222, line: 16, baseType: !757, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1221, file: !1222, line: 18, baseType: !102, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1221, file: !1222, line: 19, baseType: !102, size: 32, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1221, file: !1222, line: 20, baseType: !102, size: 32, offset: 96)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1221, file: !1222, line: 21, baseType: !102, size: 32, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1221, file: !1222, line: 22, baseType: !351, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1221, file: !1222, line: 23, baseType: !351, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1059, file: !1060, line: 138, baseType: !1232, size: 64, offset: 1152)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !36, line: 901, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1059, file: !1060, line: 139, baseType: !1235, size: 64, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1237, line: 16, flags: DIFlagFwdDecl)
!1237 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1059, file: !1060, line: 140, baseType: !1239, size: 64, offset: 1280)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1060, line: 25, size: 64, elements: !1241)
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1240, file: !1060, line: 26, baseType: !494, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1240, file: !1060, line: 27, baseType: !102, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1240, file: !1060, line: 28, baseType: !1245, offset: 64)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, elements: !248)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !1060, line: 142, baseType: !1247, size: 128, offset: 1344)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !1060, line: 142, size: 128, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1247, file: !1060, line: 143, baseType: !102, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1247, file: !1060, line: 144, baseType: !872, size: 128, align: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !959, file: !65, line: 1013, baseType: !1252, size: 256, offset: 960)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !65, line: 970, size: 256, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1252, file: !65, line: 971, baseType: !351, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1252, file: !65, line: 972, baseType: !13, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1252, file: !65, line: 973, baseType: !13, size: 32, offset: 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1252, file: !65, line: 974, baseType: !13, size: 32, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1252, file: !65, line: 975, baseType: !13, size: 32, offset: 160)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1252, file: !65, line: 976, baseType: !576, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !959, file: !65, line: 1014, baseType: !1261, size: 128, offset: 1216)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1262, line: 8, size: 128, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1261, file: !1262, line: 9, baseType: !560, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1261, file: !1262, line: 10, baseType: !414, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !959, file: !65, line: 1015, baseType: !457, size: 64, offset: 1344)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !959, file: !65, line: 1016, baseType: !1268, size: 64, offset: 1408)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !65, line: 1914, size: 2112, elements: !1271)
!1271 = !{!1272, !1273, !1277, !1282, !1286, !1397, !1398, !1404, !1417, !1424, !1428, !1429, !1433, !1434, !1438, !1443, !1444, !1448, !1452, !1458, !1459, !1463, !1464, !1471, !1475, !1479, !1485, !1489, !1495, !1499, !1503, !1504, !1510}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1270, file: !65, line: 1915, baseType: !604, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1270, file: !65, line: 1916, baseType: !1274, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!576, !958, !576, !102}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1270, file: !65, line: 1917, baseType: !1278, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!687, !958, !353, !698, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1270, file: !65, line: 1918, baseType: !1283, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!687, !958, !531, !698, !1281}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1270, file: !65, line: 1919, baseType: !1287, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!687, !1290, !1395}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !65, line: 373, size: 384, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1299, !1300, !1301, !1302}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1291, file: !65, line: 374, baseType: !958, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1291, file: !65, line: 375, baseType: !576, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1291, file: !65, line: 376, baseType: !1296, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1290, !372}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1291, file: !65, line: 377, baseType: !348, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1291, file: !65, line: 378, baseType: !102, size: 32, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1291, file: !65, line: 379, baseType: !323, size: 16, offset: 288)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !65, line: 380, baseType: !1303, size: 64, offset: 320)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !65, line: 380, size: 64, elements: !1304)
!1304 = !{!1305, !1391}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1303, file: !65, line: 386, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1308, line: 998, size: 448, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1309 = !{!1310, !1377, !1378}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1307, file: !1308, line: 999, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !36, line: 293, size: 1536, elements: !1313)
!1313 = !{!1314, !1344, !1358}
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !36, line: 295, baseType: !1315, size: 512)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !36, line: 295, size: 512, elements: !1316)
!1316 = !{!1317, !1343}
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !36, line: 296, baseType: !1318, size: 448)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1315, file: !36, line: 296, size: 448, elements: !1319)
!1319 = !{!1320, !1321, !1330, !1331, !1332, !1341, !1342}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1318, file: !36, line: 298, baseType: !351, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !36, line: 299, baseType: !1322, size: 128, offset: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !36, line: 299, size: 128, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1322, file: !36, line: 300, baseType: !388, size: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !36, line: 302, baseType: !1326, size: 128)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1322, file: !36, line: 302, size: 128, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1326, file: !36, line: 303, baseType: !348, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1326, file: !36, line: 305, baseType: !13, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1318, file: !36, line: 310, baseType: !726, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1318, file: !36, line: 311, baseType: !351, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !36, line: 312, baseType: !1333, size: 64, offset: 320)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !36, line: 312, size: 64, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1333, file: !36, line: 313, baseType: !348, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1333, file: !36, line: 314, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !36, line: 257, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 255, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1338, file: !36, line: 256, baseType: !351, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1318, file: !36, line: 316, baseType: !494, size: 32, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1318, file: !36, line: 317, baseType: !494, size: 32, offset: 416)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1315, file: !36, line: 323, baseType: !788, size: 512, align: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !36, line: 325, baseType: !1345, size: 512, offset: 512)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !36, line: 325, size: 512, elements: !1346)
!1346 = !{!1347, !1357}
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !36, line: 326, baseType: !1348, size: 320)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1345, file: !36, line: 326, size: 320, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1348, file: !36, line: 327, baseType: !351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1348, file: !36, line: 328, baseType: !351, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1348, file: !36, line: 329, baseType: !351, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1348, file: !36, line: 331, baseType: !494, size: 32, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1348, file: !36, line: 332, baseType: !494, size: 32, offset: 224)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1348, file: !36, line: 333, baseType: !494, size: 32, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1348, file: !36, line: 335, baseType: !13, size: 32, offset: 288)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1345, file: !36, line: 339, baseType: !788, size: 512, align: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !36, line: 341, baseType: !1359, size: 512, offset: 1024)
!1359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !36, line: 341, size: 512, elements: !1360)
!1360 = !{!1361, !1370, !1376}
!1361 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !36, line: 342, baseType: !1362, size: 384)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1359, file: !36, line: 342, size: 384, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1362, file: !36, line: 343, baseType: !351, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1362, file: !36, line: 344, baseType: !351, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1362, file: !36, line: 346, baseType: !348, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1362, file: !36, line: 347, baseType: !348, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1362, file: !36, line: 348, baseType: !348, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1362, file: !36, line: 349, baseType: !348, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !36, line: 352, baseType: !1371, size: 256)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1359, file: !36, line: 352, size: 256, elements: !1372)
!1372 = !{!1373, !1374, !1375}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1371, file: !36, line: 353, baseType: !351, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1371, file: !36, line: 354, baseType: !351, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1371, file: !36, line: 356, baseType: !388, size: 128, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1359, file: !36, line: 359, baseType: !788, size: 512, align: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1307, file: !1308, line: 1000, baseType: !102, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1307, file: !1308, line: 1001, baseType: !1379, size: 320, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1038, line: 14, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1038, line: 30, size: 320, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1390}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1380, file: !1038, line: 31, baseType: !13, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1380, file: !1038, line: 32, baseType: !348, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1380, file: !1038, line: 33, baseType: !1385, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1038, line: 16, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!102, !1389, !13, !102, !348}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1380, file: !1038, line: 34, baseType: !388, size: 128, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1303, file: !65, line: 395, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!687, !348}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !65, line: 69, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1270, file: !65, line: 1920, baseType: !1287, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1270, file: !65, line: 1921, baseType: !1399, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!102, !1290, !1402, !13}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !65, line: 53, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1270, file: !65, line: 1923, baseType: !1405, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!102, !958, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !65, line: 1858, size: 128, elements: !1410)
!1410 = !{!1411, !1416}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1409, file: !65, line: 1859, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !65, line: 1855, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!868, !1408, !531, !102, !576, !450, !13}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1409, file: !65, line: 1860, baseType: !576, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1270, file: !65, line: 1924, baseType: !1418, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!1421, !958, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !315, line: 59, baseType: !13)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !65, line: 61, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1270, file: !65, line: 1925, baseType: !1425, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!372, !958, !13, !351}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1270, file: !65, line: 1926, baseType: !1425, size: 64, offset: 640)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1270, file: !65, line: 1927, baseType: !1430, size: 64, offset: 704)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!102, !958, !917}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1270, file: !65, line: 1928, baseType: !351, size: 64, offset: 768)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1270, file: !65, line: 1929, baseType: !1435, size: 64, offset: 832)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!102, !457, !958}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1270, file: !65, line: 1930, baseType: !1439, size: 64, offset: 896)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!102, !958, !1442}
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !65, line: 1061, baseType: !348)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1270, file: !65, line: 1931, baseType: !1435, size: 64, offset: 960)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1270, file: !65, line: 1932, baseType: !1445, size: 64, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!102, !958, !576, !576, !102}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1270, file: !65, line: 1933, baseType: !1449, size: 64, offset: 1088)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!102, !102, !958, !102}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1270, file: !65, line: 1934, baseType: !1453, size: 64, offset: 1152)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!102, !958, !102, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !65, line: 1063, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1270, file: !65, line: 1935, baseType: !955, size: 64, offset: 1216)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1270, file: !65, line: 1936, baseType: !1460, size: 64, offset: 1280)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!102, !102}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1270, file: !65, line: 1937, baseType: !1453, size: 64, offset: 1344)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1270, file: !65, line: 1938, baseType: !1465, size: 64, offset: 1408)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!687, !1468, !958, !1281, !698, !13}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1470, line: 59, flags: DIFlagFwdDecl)
!1470 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1270, file: !65, line: 1939, baseType: !1472, size: 64, offset: 1472)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!687, !958, !1281, !1468, !698, !13}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1270, file: !65, line: 1940, baseType: !1476, size: 64, offset: 1536)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !958}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1270, file: !65, line: 1941, baseType: !1480, size: 64, offset: 1600)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!102, !958, !102, !1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1270, file: !65, line: 1942, baseType: !1486, size: 64, offset: 1664)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!372, !958, !102, !576, !576}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1270, file: !65, line: 1944, baseType: !1490, size: 64, offset: 1728)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1493, !958}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1470, line: 66, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1270, file: !65, line: 1948, baseType: !1496, size: 64, offset: 1792)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!687, !958, !576, !958, !576, !698, !13}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1270, file: !65, line: 1950, baseType: !1500, size: 64, offset: 1856)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!576, !958, !576, !958, !576, !576, !13}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1270, file: !65, line: 1953, baseType: !1445, size: 64, offset: 1920)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1270, file: !65, line: 1954, baseType: !1505, size: 64, offset: 1984)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!102, !1508, !13}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !65, line: 1911, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1270, file: !65, line: 1955, baseType: !1511, size: 64, offset: 2048)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!102, !1508, !1402, !13}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !959, file: !65, line: 1018, baseType: !450, size: 64, offset: 1472)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !959, file: !65, line: 1020, baseType: !348, size: 64, offset: 1536)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !959, file: !65, line: 1023, baseType: !348, size: 64, offset: 1600)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !959, file: !65, line: 1027, baseType: !1518, size: 64, offset: 1664)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !959, file: !65, line: 1029, baseType: !726, size: 64, offset: 1728)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !959, file: !65, line: 1030, baseType: !1521, size: 32, offset: 1792)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1522, line: 8, baseType: !341)
!1522 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !959, file: !65, line: 1031, baseType: !1521, size: 32, offset: 1824)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !934, file: !36, line: 756, baseType: !351, size: 64, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !934, file: !36, line: 757, baseType: !351, size: 64, offset: 768)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !934, file: !36, line: 760, baseType: !351, size: 64, offset: 832)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !934, file: !36, line: 761, baseType: !351, size: 64, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !934, file: !36, line: 763, baseType: !351, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !934, file: !36, line: 764, baseType: !1530, size: 64, offset: 1024)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1532, line: 299, baseType: !1533)
!1532 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1532, line: 299, size: 64, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1533, file: !1532, line: 299, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1537, line: 18, baseType: !351)
!1537 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !934, file: !36, line: 773, baseType: !494, size: 32, offset: 1088)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !934, file: !36, line: 785, baseType: !494, size: 32, offset: 1120)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !934, file: !36, line: 795, baseType: !1541, size: 64, offset: 1152)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !36, line: 726, size: 128, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1542, file: !36, line: 727, baseType: !450, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1542, file: !36, line: 728, baseType: !102, size: 32, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !934, file: !36, line: 801, baseType: !351, size: 64, offset: 1216)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !934, file: !36, line: 804, baseType: !742, size: 64, offset: 1280)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !934, file: !36, line: 806, baseType: !102, size: 32, offset: 1344)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !934, file: !36, line: 808, baseType: !474, size: 32, offset: 1376)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !934, file: !36, line: 823, baseType: !738, size: 320, offset: 1408)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !934, file: !36, line: 825, baseType: !388, size: 128, offset: 1728)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !934, file: !36, line: 845, baseType: !102, size: 32, offset: 1856)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !934, file: !36, line: 849, baseType: !351, size: 64, offset: 1920)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !934, file: !36, line: 850, baseType: !351, size: 64, offset: 1984)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !934, file: !36, line: 852, baseType: !351, size: 64, offset: 2048)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !934, file: !36, line: 853, baseType: !351, size: 64, offset: 2112)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !934, file: !36, line: 854, baseType: !744, size: 64, offset: 2176)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !934, file: !36, line: 855, baseType: !351, size: 64, offset: 2240)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !934, file: !36, line: 856, baseType: !351, size: 64, offset: 2304)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !934, file: !36, line: 857, baseType: !351, size: 64, offset: 2368)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !934, file: !36, line: 858, baseType: !351, size: 64, offset: 2432)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !934, file: !36, line: 865, baseType: !425, size: 32, offset: 2496)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !934, file: !36, line: 867, baseType: !474, size: 32, offset: 2528)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !934, file: !36, line: 869, baseType: !351, size: 64, offset: 2560)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !934, file: !36, line: 869, baseType: !351, size: 64, offset: 2624)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !934, file: !36, line: 869, baseType: !351, size: 64, offset: 2688)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !934, file: !36, line: 869, baseType: !351, size: 64, offset: 2752)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !934, file: !36, line: 870, baseType: !351, size: 64, offset: 2816)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !934, file: !36, line: 870, baseType: !351, size: 64, offset: 2880)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !934, file: !36, line: 870, baseType: !351, size: 64, offset: 2944)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !934, file: !36, line: 871, baseType: !351, size: 64, offset: 3008)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !934, file: !36, line: 871, baseType: !351, size: 64, offset: 3072)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !934, file: !36, line: 871, baseType: !351, size: 64, offset: 3136)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !934, file: !36, line: 871, baseType: !351, size: 64, offset: 3200)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !934, file: !36, line: 873, baseType: !1576, size: 3328, offset: 3264)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 3328, elements: !1577)
!1577 = !{!1578}
!1578 = !DISubrange(count: 52)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !934, file: !36, line: 875, baseType: !1580, size: 1280, offset: 6592)
!1580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 1280, elements: !1033)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !934, file: !36, line: 877, baseType: !1582, size: 64, offset: 7872)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !36, line: 877, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !934, file: !36, line: 880, baseType: !1585, size: 1088, offset: 7936)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1586, line: 72, baseType: !1587)
!1586 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1586, line: 23, size: 1088, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1596, !1597, !1598, !1599, !1624, !1625, !1626}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1587, file: !1586, line: 28, baseType: !450, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1587, file: !1586, line: 38, baseType: !744, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1587, file: !1586, line: 40, baseType: !351, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1587, file: !1586, line: 43, baseType: !738, size: 320, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1587, file: !1586, line: 44, baseType: !1594, size: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1586, line: 44, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1587, file: !1586, line: 48, baseType: !351, size: 64, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1587, file: !1586, line: 59, baseType: !977, size: 256, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1587, file: !1586, line: 60, baseType: !348, size: 64, offset: 896)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1587, file: !1586, line: 61, baseType: !1600, size: 64, offset: 960)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1603, line: 13, size: 1216, elements: !1604)
!1603 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1602, file: !1603, line: 14, baseType: !348, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1602, file: !1603, line: 15, baseType: !351, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1602, file: !1603, line: 17, baseType: !351, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1602, file: !1603, line: 17, baseType: !351, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1602, file: !1603, line: 18, baseType: !351, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1602, file: !1603, line: 18, baseType: !351, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1602, file: !1603, line: 19, baseType: !325, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1602, file: !1603, line: 21, baseType: !372, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1602, file: !1603, line: 23, baseType: !372, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1602, file: !1603, line: 24, baseType: !372, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1602, file: !1603, line: 25, baseType: !372, size: 64, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1602, file: !1603, line: 26, baseType: !372, size: 64, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1602, file: !1603, line: 27, baseType: !372, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1602, file: !1603, line: 28, baseType: !372, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1602, file: !1603, line: 29, baseType: !372, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1602, file: !1603, line: 30, baseType: !372, size: 64, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1602, file: !1603, line: 31, baseType: !372, size: 64, offset: 1024)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1602, file: !1603, line: 32, baseType: !372, size: 64, offset: 1088)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1602, file: !1603, line: 33, baseType: !372, size: 64, offset: 1152)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1587, file: !1586, line: 63, baseType: !494, size: 32, offset: 1024)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1587, file: !1586, line: 69, baseType: !323, size: 16, offset: 1056)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1587, file: !1586, line: 70, baseType: !1627, size: 16, offset: 1072)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !324, line: 18, baseType: !1628)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !216, line: 23, baseType: !1120)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !934, file: !36, line: 882, baseType: !351, size: 64, offset: 9024)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !934, file: !36, line: 885, baseType: !474, size: 32, offset: 9088)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !934, file: !36, line: 886, baseType: !1632, size: 64, offset: 9152)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !36, line: 732, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !934, file: !36, line: 901, baseType: !1232, size: 64, offset: 9216)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !934, file: !36, line: 904, baseType: !958, size: 64, offset: 9280)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !934, file: !36, line: 906, baseType: !1637, size: 64, offset: 9344)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !36, line: 906, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !934, file: !36, line: 930, baseType: !494, size: 32, offset: 9408)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !934, file: !36, line: 933, baseType: !494, size: 32, offset: 9440)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !934, file: !36, line: 935, baseType: !1642, size: 64, offset: 9472)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !141, line: 103, size: 64, elements: !1643)
!1643 = !{!1644}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1642, file: !141, line: 104, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !141, line: 101, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !934, file: !36, line: 940, baseType: !742, size: 64, offset: 9536)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !934, file: !36, line: 942, baseType: !1649, size: 256, offset: 9600)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1650, line: 98, size: 256, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1651 = !{!1652, !1653, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1649, file: !1650, line: 99, baseType: !742, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1649, file: !1650, line: 100, baseType: !388, size: 128, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1649, file: !1650, line: 101, baseType: !1655, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1650, line: 21, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1659}
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !931, file: !36, line: 986, baseType: !1661, offset: 10240)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, elements: !248)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !918, file: !36, line: 640, baseType: !1663, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1532, line: 297, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1532, line: 297, size: 64, elements: !1665)
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1664, file: !1532, line: 297, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1537, line: 19, baseType: !351)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !36, line: 646, baseType: !1669, size: 64, offset: 256)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !36, line: 646, size: 64, elements: !1670)
!1670 = !{!1671, !1674}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1669, file: !36, line: 647, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !36, line: 542, baseType: !351)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1669, file: !36, line: 648, baseType: !1673, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !918, file: !36, line: 666, baseType: !102, size: 32, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !918, file: !36, line: 667, baseType: !1677, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !36, line: 579, size: 320, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1678, file: !36, line: 580, baseType: !738, size: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !918, file: !36, line: 670, baseType: !868, size: 8, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !918, file: !36, line: 681, baseType: !1683, size: 256, offset: 512)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !36, line: 678, size: 256, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1683, file: !36, line: 679, baseType: !770, size: 192, align: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1683, file: !36, line: 680, baseType: !351, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !918, file: !36, line: 689, baseType: !388, size: 128, offset: 768)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !918, file: !36, line: 691, baseType: !1689, size: 64, offset: 896)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !36, line: 691, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !918, file: !36, line: 694, baseType: !1692, size: 64, offset: 960)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !911, line: 563, size: 1024, elements: !1695)
!1695 = !{!1696, !1700, !1701, !1705, !1709, !1713, !1714, !1718, !1722, !1726, !1727, !1728, !1732, !1736, !1742, !1746}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1694, file: !911, line: 564, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !917}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1694, file: !911, line: 569, baseType: !1697, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1694, file: !911, line: 571, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!102, !917, !351}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1694, file: !911, line: 572, baseType: !1706, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!102, !917}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1694, file: !911, line: 578, baseType: !1710, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!102, !917, !351, !351, !351}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1694, file: !911, line: 580, baseType: !905, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1694, file: !911, line: 581, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!908, !909, !13}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1694, file: !911, line: 582, baseType: !1719, size: 64, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!908, !909, !351, !351}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1694, file: !911, line: 584, baseType: !1723, size: 64, offset: 512)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!351, !917}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1694, file: !911, line: 588, baseType: !905, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1694, file: !911, line: 591, baseType: !905, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1694, file: !911, line: 597, baseType: !1729, size: 64, offset: 704)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!102, !917, !351, !348, !102, !102}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1694, file: !911, line: 603, baseType: !1733, size: 64, offset: 768)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!531, !917}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1694, file: !911, line: 613, baseType: !1737, size: 64, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!102, !917, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !36, line: 717, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1694, file: !911, line: 625, baseType: !1743, size: 64, offset: 896)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!1740, !917, !351}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1694, file: !911, line: 633, baseType: !1747, size: 64, offset: 960)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!787, !917, !351}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !918, file: !36, line: 697, baseType: !351, size: 64, offset: 1024)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !918, file: !36, line: 699, baseType: !958, size: 64, offset: 1088)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !918, file: !36, line: 700, baseType: !348, size: 64, offset: 1152)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !918, file: !36, line: 711, baseType: !742, size: 64, offset: 1216)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !918, file: !36, line: 717, baseType: !1740, size: 64, offset: 1280)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !918, file: !36, line: 722, baseType: !1756, offset: 1344)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !36, line: 570, elements: !951)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !914, file: !911, line: 515, baseType: !349, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !914, file: !911, line: 516, baseType: !351, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !914, file: !911, line: 517, baseType: !351, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !914, file: !911, line: 518, baseType: !351, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !910, file: !911, line: 520, baseType: !35, size: 32, offset: 320)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !910, file: !911, line: 522, baseType: !1763, size: 64, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1537, line: 22, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1537, line: 22, size: 64, elements: !1766)
!1766 = !{!1767}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1765, file: !1537, line: 22, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1537, line: 15, baseType: !351)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !910, file: !911, line: 524, baseType: !1770, size: 64, offset: 448)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1532, line: 372, baseType: !1772)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1532, line: 372, size: 64, elements: !1773)
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1772, file: !1532, line: 372, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1537, line: 16, baseType: !351)
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !911, line: 527, baseType: !1777, size: 64, offset: 512)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !911, line: 527, size: 64, elements: !1778)
!1778 = !{!1779, !1785}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1777, file: !911, line: 528, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1537, line: 21, baseType: !1781)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1537, line: 21, size: 64, elements: !1782)
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1781, file: !1537, line: 21, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1537, line: 14, baseType: !351)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1777, file: !911, line: 529, baseType: !1764, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !910, file: !911, line: 534, baseType: !787, size: 64, offset: 576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !910, file: !911, line: 535, baseType: !787, size: 64, offset: 640)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !910, file: !911, line: 541, baseType: !1789, size: 64, offset: 704)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !910, file: !911, line: 545, baseType: !1791, size: 64, offset: 768)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !910, file: !911, line: 549, baseType: !1793, size: 64, offset: 832)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1532, line: 520, baseType: !787)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !898, file: !20, line: 100, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!102, !837, !351, !351, !102}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !838, file: !20, line: 134, baseType: !348, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !838, file: !20, line: 135, baseType: !102, size: 32, offset: 1024)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !20, line: 136, baseType: !1801, size: 128, offset: 1088)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !20, line: 136, size: 128, elements: !1802)
!1802 = !{!1803, !1809}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1801, file: !20, line: 137, baseType: !1804, size: 128)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1805, line: 6, size: 128, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1804, file: !1805, line: 7, baseType: !450, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1804, file: !1805, line: 8, baseType: !450, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1801, file: !20, line: 138, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !20, line: 138, elements: !1811)
!1811 = !{!1812, !1814}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1810, file: !20, line: 138, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !20, line: 138, elements: !951)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1810, file: !20, line: 138, baseType: !1815)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1804, elements: !248)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !834, file: !36, line: 147, baseType: !348, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !792, file: !36, line: 161, baseType: !872, size: 128, align: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !36, line: 164, baseType: !1819, size: 32, offset: 384)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !788, file: !36, line: 164, size: 32, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1819, file: !36, line: 169, baseType: !494, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1819, file: !36, line: 177, baseType: !13, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !788, file: !36, line: 181, baseType: !494, size: 32, offset: 416)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !65, line: 309, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !781, file: !65, line: 406, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!102, !958, !1311}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !781, file: !65, line: 409, baseType: !1831, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!102, !726, !1824}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !781, file: !65, line: 412, baseType: !1835, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!868, !726, !1311}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !781, file: !65, line: 414, baseType: !1839, size: 64, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1308, line: 1276, size: 448, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1849, !1850, !1851, !1852, !1853}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1843, file: !1308, line: 1277, baseType: !958, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1843, file: !1308, line: 1278, baseType: !726, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1843, file: !1308, line: 1279, baseType: !1848, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1843, file: !1308, line: 1281, baseType: !351, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1843, file: !1308, line: 1282, baseType: !13, size: 32, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1843, file: !1308, line: 1283, baseType: !13, size: 32, offset: 288)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1843, file: !1308, line: 1284, baseType: !868, size: 8, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1843, file: !1308, line: 1285, baseType: !351, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !781, file: !65, line: 416, baseType: !1855, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!102, !958, !726, !576, !13, !1858, !1484}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !781, file: !65, line: 419, baseType: !1860, size: 64, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!102, !958, !726, !576, !13, !13, !787, !348}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !781, file: !65, line: 424, baseType: !1864, size: 64, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!1867, !726, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !350, line: 131, baseType: !450)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !781, file: !65, line: 425, baseType: !1869, size: 64, offset: 512)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !1311, !698, !698}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !781, file: !65, line: 426, baseType: !1873, size: 64, offset: 576)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!868, !1311, !349}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !781, file: !65, line: 427, baseType: !1877, size: 64, offset: 640)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1311}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !781, file: !65, line: 428, baseType: !1287, size: 64, offset: 704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !781, file: !65, line: 433, baseType: !1882, size: 64, offset: 768)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!102, !726, !1311, !1311, !51}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !781, file: !65, line: 435, baseType: !1886, size: 64, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!102, !1311}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !781, file: !65, line: 436, baseType: !1890, size: 64, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!868, !1311, !698, !698}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !781, file: !65, line: 438, baseType: !1894, size: 64, offset: 960)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !1311, !1897, !1897}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !781, file: !65, line: 439, baseType: !1899, size: 64, offset: 1024)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!102, !726, !787}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !781, file: !65, line: 442, baseType: !1903, size: 64, offset: 1088)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!102, !1906, !958, !1908}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !65, line: 66, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !781, file: !65, line: 444, baseType: !1476, size: 64, offset: 1152)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !781, file: !65, line: 445, baseType: !1911, size: 64, offset: 1216)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!102, !1290, !1395}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !65, line: 486, baseType: !351, size: 64, offset: 896)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !727, file: !65, line: 487, baseType: !738, size: 320, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !727, file: !65, line: 488, baseType: !1521, size: 32, offset: 1280)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !727, file: !65, line: 489, baseType: !474, size: 32, offset: 1312)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !727, file: !65, line: 490, baseType: !388, size: 128, offset: 1344)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !727, file: !65, line: 491, baseType: !348, size: 64, offset: 1472)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !717, file: !681, line: 180, baseType: !1921, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!687, !958, !623, !716, !353, !576, !698}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !717, file: !681, line: 182, baseType: !1921, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !717, file: !681, line: 184, baseType: !1926, size: 64, offset: 448)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!102, !958, !623, !716, !917}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !705, file: !681, line: 90, baseType: !1930, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !705, file: !681, line: 91, baseType: !1932, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !671, file: !618, line: 120, baseType: !1934, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1937, !641}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !1940)
!1940 = !{!1941, !1942, !1946, !1950, !1956, !1960}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1939, file: !59, line: 40, baseType: !58, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1939, file: !59, line: 41, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!868}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1939, file: !59, line: 42, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!348}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1939, file: !59, line: 43, baseType: !1951, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!325, !1954}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1939, file: !59, line: 44, baseType: !1957, size: 64, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!325}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1939, file: !59, line: 45, baseType: !1961, size: 64, offset: 320)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !348}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !671, file: !618, line: 121, baseType: !1965, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!325, !641}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !671, file: !618, line: 122, baseType: !1969, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !641, !1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !617, file: !618, line: 70, baseType: !1975, size: 64, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1977, line: 190, size: 1152, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !2070, !2071, !2072, !2073, !2074, !2077}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1976, file: !1977, line: 191, baseType: !494, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1976, file: !1977, line: 192, baseType: !494, size: 32, offset: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1976, file: !1977, line: 202, baseType: !1975, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1976, file: !1977, line: 203, baseType: !531, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1976, file: !1977, line: 205, baseType: !770, size: 192, align: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1976, file: !1977, line: 207, baseType: !325, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1976, file: !1977, line: 208, baseType: !13, size: 32, offset: 448)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1977, line: 209, baseType: !1987, size: 256, offset: 512)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !1977, line: 209, size: 256, elements: !1988)
!1988 = !{!1989, !1998, !2002}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1987, file: !1977, line: 210, baseType: !1990, size: 256)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1977, line: 153, size: 256, elements: !1991)
!1991 = !{!1992, !1993, !1994, !1997}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1990, file: !1977, line: 154, baseType: !351, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1990, file: !1977, line: 156, baseType: !766, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1990, file: !1977, line: 162, baseType: !1995, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1977, line: 162, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1990, file: !1977, line: 167, baseType: !351, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1987, file: !1977, line: 211, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1977, line: 170, size: 64, elements: !2000)
!2000 = !{!2001}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1999, file: !1977, line: 171, baseType: !1975, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1987, file: !1977, line: 212, baseType: !2003, size: 256)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1977, line: 174, size: 256, elements: !2004)
!2004 = !{!2005, !2065, !2068, !2069}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2003, file: !1977, line: 175, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1977, line: 271, size: 768, elements: !2009)
!2009 = !{!2010, !2030, !2034, !2038, !2042, !2046, !2050, !2054, !2055, !2056, !2057, !2061}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2008, file: !1977, line: 276, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!102, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1977, line: 251, size: 1216, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2015, file: !1977, line: 253, baseType: !1975, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2015, file: !1977, line: 254, baseType: !958, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2015, file: !1977, line: 255, baseType: !1493, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2015, file: !1977, line: 256, baseType: !348, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2015, file: !1977, line: 259, baseType: !977, size: 256, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2015, file: !1977, line: 260, baseType: !977, size: 256, offset: 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2015, file: !1977, line: 261, baseType: !102, size: 32, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2015, file: !1977, line: 262, baseType: !388, size: 128, offset: 832)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2015, file: !1977, line: 263, baseType: !353, size: 64, offset: 960)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2015, file: !1977, line: 265, baseType: !698, size: 64, offset: 1024)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2015, file: !1977, line: 266, baseType: !868, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2015, file: !1977, line: 267, baseType: !868, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2015, file: !1977, line: 268, baseType: !1692, size: 64, offset: 1152)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2008, file: !1977, line: 277, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !2014}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2008, file: !1977, line: 290, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!102, !1493, !348}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2008, file: !1977, line: 292, baseType: !2039, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!348, !1493, !1281}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2008, file: !1977, line: 293, baseType: !2043, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!348, !1493, !348, !1281}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2008, file: !1977, line: 294, baseType: !2047, size: 64, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !1493, !348}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2008, file: !1977, line: 296, baseType: !2051, size: 64, offset: 384)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!687, !2014, !353, !698, !576}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2008, file: !1977, line: 306, baseType: !698, size: 64, offset: 448)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2008, file: !1977, line: 313, baseType: !868, size: 8, offset: 512)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2008, file: !1977, line: 314, baseType: !2051, size: 64, offset: 576)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2008, file: !1977, line: 317, baseType: !2058, size: 64, offset: 640)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!1421, !2014, !1422}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2008, file: !1977, line: 320, baseType: !2062, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!102, !2014, !917}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2003, file: !1977, line: 176, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1977, line: 35, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2003, file: !1977, line: 177, baseType: !576, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2003, file: !1977, line: 178, baseType: !1975, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1976, file: !1977, line: 215, baseType: !348, size: 64, offset: 768)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1976, file: !1977, line: 221, baseType: !450, size: 64, offset: 832)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1976, file: !1977, line: 223, baseType: !313, size: 16, offset: 896)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1976, file: !1977, line: 224, baseType: !377, size: 16, offset: 912)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1976, file: !1977, line: 225, baseType: !2075, size: 64, offset: 960)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1977, line: 36, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1976, file: !1977, line: 227, baseType: !872, size: 128, align: 64, offset: 1024)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !617, file: !618, line: 71, baseType: !2079, size: 32, offset: 448)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2080, line: 19, size: 32, elements: !2081)
!2080 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2081 = !{!2082}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2079, file: !2080, line: 20, baseType: !1015, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !617, file: !618, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !617, file: !618, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !617, file: !618, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !617, file: !618, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !617, file: !618, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !614, file: !12, line: 47, baseType: !604, size: 64, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !614, file: !12, line: 48, baseType: !623, size: 64, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !614, file: !12, line: 49, baseType: !2091, size: 64, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !614, file: !12, line: 50, baseType: !2094, size: 64, offset: 704)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !605, file: !12, line: 418, baseType: !2096, size: 64, offset: 1408)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !2098)
!2098 = !{!2099, !2100, !2105, !2109, !2113, !2117}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2097, file: !12, line: 54, baseType: !690, size: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2097, file: !12, line: 55, baseType: !2101, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!687, !2096, !2104, !353}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2097, file: !12, line: 57, baseType: !2106, size: 64, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!687, !2096, !2104, !531, !698}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2097, file: !12, line: 59, baseType: !2110, size: 64, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{null, !604, !531}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2097, file: !12, line: 60, baseType: !2114, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!102, !604}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2097, file: !12, line: 61, baseType: !2118, size: 64, offset: 384)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !604}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !605, file: !12, line: 419, baseType: !531, size: 64, offset: 1472)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !605, file: !12, line: 420, baseType: !531, size: 64, offset: 1536)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !605, file: !12, line: 421, baseType: !623, size: 64, offset: 1600)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !605, file: !12, line: 424, baseType: !2125, size: 64, offset: 1664)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !605, file: !12, line: 425, baseType: !2129, size: 64, offset: 1728)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !605, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !605, file: !12, line: 435, baseType: !977, size: 256, offset: 1856)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !605, file: !12, line: 437, baseType: !2134, size: 64, offset: 2112)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2136, line: 69, size: 320, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2137 = !{!2138, !2139, !2140, !2157, !2159, !2163, !2164}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2135, file: !2136, line: 70, baseType: !531, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2135, file: !2136, line: 71, baseType: !604, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2135, file: !2136, line: 72, baseType: !2141, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2136, line: 47, size: 256, elements: !2144)
!2144 = !{!2145, !2146, !2152, !2156}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !2136, line: 49, baseType: !13, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2143, file: !2136, line: 51, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!102, !531, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2143, file: !2136, line: 53, baseType: !2153, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!102, !353, !2150}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2143, file: !2136, line: 55, baseType: !1961, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2135, file: !2136, line: 73, baseType: !2158, size: 16, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2135, file: !2136, line: 74, baseType: !2160, size: 8, offset: 208)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !324, line: 16, baseType: !2161)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !216, line: 20, baseType: !2162)
!2162 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2135, file: !2136, line: 75, baseType: !502, size: 8, offset: 216)
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !2136, line: 76, baseType: !2165, size: 64, offset: 256)
!2165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !2136, line: 76, size: 64, elements: !2166)
!2166 = !{!2167, !2168, !2175}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2165, file: !2136, line: 77, baseType: !348, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2165, file: !2136, line: 78, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2171)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2136, line: 86, size: 128, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2171, file: !2136, line: 87, baseType: !13, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2171, file: !2136, line: 88, baseType: !353, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2165, file: !2136, line: 79, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2136, line: 92, size: 256, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2184, !2185}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2178, file: !2136, line: 94, baseType: !13, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2178, file: !2136, line: 95, baseType: !13, size: 32, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2178, file: !2136, line: 96, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2178, file: !2136, line: 97, baseType: !2141, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2178, file: !2136, line: 98, baseType: !348, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !605, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !605, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !605, file: !12, line: 442, baseType: !2125, size: 64, offset: 2240)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !605, file: !12, line: 443, baseType: !2129, size: 64, offset: 2304)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !605, file: !12, line: 444, baseType: !868, size: 8, offset: 2368)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !605, file: !12, line: 451, baseType: !868, size: 8, offset: 2376)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !605, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !605, file: !12, line: 455, baseType: !2194, size: 64, offset: 2432)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2196, line: 23, size: 96, elements: !2197)
!2196 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2197 = !{!2198, !2199, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2195, file: !2196, line: 24, baseType: !102, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2195, file: !2196, line: 24, baseType: !102, size: 32, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2195, file: !2196, line: 24, baseType: !102, size: 32, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !605, file: !12, line: 458, baseType: !2202, size: 64, offset: 2496)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!102}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !605, file: !12, line: 460, baseType: !2206, size: 4032, align: 512, offset: 2560)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2207, size: 4032, elements: !303)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !2208)
!2208 = !{!2209, !2210, !2211}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2207, file: !12, line: 363, baseType: !348, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2207, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2207, file: !12, line: 367, baseType: !2212, size: 448, offset: 128)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !2213)
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2212, file: !12, line: 320, baseType: !604, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2212, file: !12, line: 321, baseType: !2216, size: 384, offset: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2217, line: 40, size: 384, elements: !2218)
!2217 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2218 = !{!2219}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2216, file: !2217, line: 41, baseType: !2220, size: 384, align: 64)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 384, align: 64, elements: !218)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !605, file: !12, line: 463, baseType: !2222, size: 192, offset: 6592)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2223, line: 8, size: 192, elements: !2224)
!2223 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2224 = !{!2225, !2226, !2228}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2222, file: !2223, line: 10, baseType: !13, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2222, file: !2223, line: 11, baseType: !2227, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2222, file: !2223, line: 12, baseType: !2229, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2231, line: 59, size: 48, elements: !2232)
!2231 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2230, file: !2231, line: 60, baseType: !1627, size: 16)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2230, file: !2231, line: 61, baseType: !1627, size: 16, offset: 16)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2230, file: !2231, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2230, file: !2231, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2230, file: !2231, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2230, file: !2231, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !605, file: !12, line: 465, baseType: !351, size: 64, offset: 6784)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !605, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !605, file: !12, line: 470, baseType: !388, size: 128, offset: 6912)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !605, file: !12, line: 471, baseType: !2243, size: 64, offset: 7040)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2245, line: 33, size: 96, elements: !2246)
!2245 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2246 = !{!2247, !2248, !2249, !2250}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2244, file: !2245, line: 37, baseType: !102, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2244, file: !2245, line: 43, baseType: !102, size: 32, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2244, file: !2245, line: 45, baseType: !313, size: 16, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2244, file: !2245, line: 47, baseType: !313, size: 16, offset: 80)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !605, file: !12, line: 476, baseType: !2252, size: 64, offset: 7104)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !2254)
!2254 = !{!2255, !2271, !2272, !2273}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2253, file: !12, line: 379, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2258, line: 204, baseType: !2259)
!2258 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2258, line: 197, size: 192, elements: !2260)
!2260 = !{!2261, !2263, !2264, !2265, !2267, !2269}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2259, file: !2258, line: 198, baseType: !2262, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2258, line: 21, baseType: !333)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2259, file: !2258, line: 199, baseType: !217, size: 8, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2259, file: !2258, line: 200, baseType: !217, size: 8, offset: 40)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2259, file: !2258, line: 201, baseType: !2266, size: 16, offset: 48)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2258, line: 17, baseType: !312)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2259, file: !2258, line: 202, baseType: !2268, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2258, line: 16, baseType: !451)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2259, file: !2258, line: 203, baseType: !2270, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2258, line: 22, baseType: !451)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2253, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2253, file: !12, line: 381, baseType: !353, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2253, file: !12, line: 382, baseType: !353, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !605, file: !12, line: 477, baseType: !2253, size: 256, offset: 7168)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !605, file: !12, line: 480, baseType: !2276, size: 64, offset: 7424)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !605, file: !12, line: 483, baseType: !2279, size: 64, offset: 7488)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !605, file: !12, line: 488, baseType: !353, size: 64, offset: 7552)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !605, file: !12, line: 492, baseType: !348, size: 64, offset: 7616)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !605, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !605, file: !12, line: 495, baseType: !348, size: 64, offset: 7744)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !605, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !605, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !605, file: !12, line: 500, baseType: !2288, size: 64, offset: 7872)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2290, line: 45, baseType: !2291)
!2290 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !605, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !605, file: !12, line: 504, baseType: !2294, size: 64, offset: 8000)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2297, line: 96, size: 192, elements: !2298)
!2297 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2298 = !{!2299, !2300, !2354, !2357}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2296, file: !2297, line: 97, baseType: !13, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2296, file: !2297, line: 98, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2297, line: 24, size: 3072, elements: !2303)
!2303 = !{!2304, !2306, !2307, !2308, !2309, !2323, !2324, !2325, !2326, !2338, !2339, !2340, !2351, !2352, !2353}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2302, file: !2297, line: 26, baseType: !2305, size: 128)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 128, elements: !218)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2302, file: !2297, line: 27, baseType: !2305, size: 128, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2302, file: !2297, line: 28, baseType: !102, size: 32, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2302, file: !2297, line: 31, baseType: !474, size: 32, align: 512, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2302, file: !2297, line: 32, baseType: !2310, size: 960, offset: 576)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2311, line: 206, size: 960, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2312 = !{!2313, !2314, !2317, !2319, !2320, !2322}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2310, file: !2311, line: 207, baseType: !875, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2310, file: !2311, line: 208, baseType: !2315, size: 256, offset: 64)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2316, size: 256, elements: !1033)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2310, file: !2311, line: 209, baseType: !2318, size: 256, offset: 320)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 256, elements: !1033)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2310, file: !2311, line: 213, baseType: !372, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2310, file: !2311, line: 215, baseType: !2321, size: 256, offset: 640)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 256, elements: !1033)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !2311, line: 216, baseType: !502, size: 8, offset: 896)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2302, file: !2297, line: 33, baseType: !351, size: 64, offset: 1536)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2302, file: !2297, line: 34, baseType: !351, size: 64, offset: 1600)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2302, file: !2297, line: 35, baseType: !868, size: 8, offset: 1664)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2302, file: !2297, line: 36, baseType: !2327, size: 320, offset: 1728)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2328, line: 11, size: 320, elements: !2329)
!2328 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2329 = !{!2330, !2331, !2332, !2337}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2327, file: !2328, line: 16, baseType: !1028, size: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2327, file: !2328, line: 17, baseType: !351, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2327, file: !2328, line: 18, baseType: !2333, size: 64, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2327, file: !2328, line: 19, baseType: !341, size: 32, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2302, file: !2297, line: 37, baseType: !1649, size: 256, offset: 2048)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2302, file: !2297, line: 38, baseType: !872, size: 128, align: 64, offset: 2304)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2302, file: !2297, line: 39, baseType: !2341, size: 64, offset: 2432)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2297, line: 49, size: 768, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2342, file: !2297, line: 50, baseType: !474, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2342, file: !2297, line: 51, baseType: !2318, size: 256, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2342, file: !2297, line: 53, baseType: !2318, size: 256, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2342, file: !2297, line: 54, baseType: !351, size: 64, offset: 576)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2342, file: !2297, line: 55, baseType: !2341, size: 64, offset: 640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2342, file: !2297, line: 56, baseType: !102, size: 32, offset: 704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2342, file: !2297, line: 57, baseType: !102, size: 32, offset: 736)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2302, file: !2297, line: 40, baseType: !351, size: 64, offset: 2496)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2302, file: !2297, line: 42, baseType: !102, size: 32, offset: 2560)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2302, file: !2297, line: 43, baseType: !2295, size: 64, offset: 2624)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2296, file: !2297, line: 99, baseType: !2355, offset: 128)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2356, line: 211, elements: !951)
!2356 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2296, file: !2297, line: 100, baseType: !2358, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2297, line: 63, size: 3008, elements: !2360)
!2360 = !{!2361, !2362, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2392}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2359, file: !2297, line: 64, baseType: !2341, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2359, file: !2297, line: 65, baseType: !2363, size: 192, offset: 64)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2341, size: 192, elements: !363)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2359, file: !2297, line: 67, baseType: !102, size: 32, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2359, file: !2297, line: 68, baseType: !977, size: 256, offset: 320)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2359, file: !2297, line: 69, baseType: !474, size: 32, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2359, file: !2297, line: 70, baseType: !977, size: 256, offset: 640)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2359, file: !2297, line: 71, baseType: !351, size: 64, offset: 896)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2359, file: !2297, line: 72, baseType: !351, size: 64, offset: 960)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2359, file: !2297, line: 73, baseType: !351, size: 64, offset: 1024)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2359, file: !2297, line: 74, baseType: !351, size: 64, offset: 1088)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2359, file: !2297, line: 75, baseType: !351, size: 64, offset: 1152)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2359, file: !2297, line: 76, baseType: !351, size: 64, offset: 1216)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2359, file: !2297, line: 77, baseType: !351, size: 64, offset: 1280)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2359, file: !2297, line: 78, baseType: !351, size: 64, offset: 1344)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2359, file: !2297, line: 79, baseType: !868, size: 8, offset: 1408)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2359, file: !2297, line: 80, baseType: !351, size: 64, offset: 1472)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2359, file: !2297, line: 81, baseType: !977, size: 256, offset: 1536)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2359, file: !2297, line: 82, baseType: !882, size: 256, offset: 1792)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2359, file: !2297, line: 84, baseType: !494, size: 32, offset: 2048)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2359, file: !2297, line: 87, baseType: !351, size: 64, offset: 2112)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2359, file: !2297, line: 88, baseType: !351, size: 64, offset: 2176)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2359, file: !2297, line: 89, baseType: !2384, size: 704, offset: 2240)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1650, line: 111, size: 704, elements: !2385)
!2385 = !{!2386, !2387, !2388, !2391}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2384, file: !1650, line: 112, baseType: !1649, size: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2384, file: !1650, line: 113, baseType: !2327, size: 320, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2384, file: !1650, line: 116, baseType: !2389, size: 64, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1650, line: 18, flags: DIFlagFwdDecl)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2384, file: !1650, line: 117, baseType: !102, size: 32, offset: 640)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2359, file: !2297, line: 90, baseType: !2295, size: 64, offset: 2944)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !605, file: !12, line: 515, baseType: !2394, size: 64, offset: 8064)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2396, line: 117, size: 128, elements: !2397)
!2396 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2397 = !{!2398, !2399, !2400}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2395, file: !2396, line: 118, baseType: !1092, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2395, file: !2396, line: 119, baseType: !1092, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2395, file: !2396, line: 120, baseType: !372, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !605, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !605, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !605, file: !12, line: 520, baseType: !2404, size: 64, offset: 8192)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !605, file: !12, line: 523, baseType: !2406, size: 64, offset: 8256)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !605, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !605, file: !12, line: 525, baseType: !2411, size: 64, offset: 8384)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !605, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !605, file: !12, line: 533, baseType: !348, size: 64, offset: 8512)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !605, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !605, file: !12, line: 535, baseType: !2418, size: 64, offset: 8640)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !605, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !605, file: !12, line: 539, baseType: !102, size: 32, offset: 8736)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !605, file: !12, line: 540, baseType: !2422, size: 64, offset: 8768)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2424, line: 32, size: 64, elements: !2425)
!2424 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2425 = !{!2426, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2423, file: !2424, line: 33, baseType: !1092, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2423, file: !2424, line: 34, baseType: !1092, size: 32, offset: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !605, file: !12, line: 563, baseType: !388, size: 128, offset: 8832)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !605, file: !12, line: 565, baseType: !388, size: 128, offset: 8960)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !605, file: !12, line: 568, baseType: !2431, size: 64, offset: 9088)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{null}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !605, file: !12, line: 570, baseType: !494, size: 32, offset: 9152)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !65, line: 2382, baseType: !580, size: 64, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !581, file: !65, line: 2383, baseType: !1024, size: 64, offset: 512)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !581, file: !65, line: 2385, baseType: !2438, offset: 576)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2356, line: 206, elements: !951)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !581, file: !65, line: 2386, baseType: !2438, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !581, file: !65, line: 2387, baseType: !2438, offset: 576)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !581, file: !65, line: 2388, baseType: !2442, offset: 576)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2438, elements: !363)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !581, file: !65, line: 2390, baseType: !2438, offset: 576)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !581, file: !65, line: 2391, baseType: !2438, offset: 576)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !581, file: !65, line: 2392, baseType: !2438, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !581, file: !65, line: 2393, baseType: !2438, offset: 576)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !567, file: !65, line: 1197, baseType: !2448, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !65, line: 2057, size: 1664, elements: !2451)
!2451 = !{!2452, !2456, !2460, !2461, !2465, !2469, !2473, !2474, !2475, !2479, !2483, !2487, !2488, !2489, !2495, !2499, !2500, !2504, !2505, !2506, !2507, !2511, !2515, !2562, !2577, !2578}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2450, file: !65, line: 2058, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!457, !566}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2450, file: !65, line: 2059, baseType: !2457, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{null, !457}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2450, file: !65, line: 2060, baseType: !2457, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2450, file: !65, line: 2062, baseType: !2462, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !457, !102}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2450, file: !65, line: 2063, baseType: !2466, size: 64, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!102, !457, !1824}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2450, file: !65, line: 2064, baseType: !2470, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!102, !457}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2450, file: !65, line: 2065, baseType: !2457, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2450, file: !65, line: 2066, baseType: !600, size: 64, offset: 448)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2450, file: !65, line: 2067, baseType: !2476, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!102, !566, !102}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2450, file: !65, line: 2068, baseType: !2480, size: 64, offset: 576)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!102, !566, !64}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2450, file: !65, line: 2069, baseType: !2484, size: 64, offset: 640)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!102, !566}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2450, file: !65, line: 2070, baseType: !2480, size: 64, offset: 704)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2450, file: !65, line: 2071, baseType: !2484, size: 64, offset: 768)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2450, file: !65, line: 2072, baseType: !2490, size: 64, offset: 832)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!102, !414, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !65, line: 62, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2450, file: !65, line: 2073, baseType: !2496, size: 64, offset: 896)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!102, !566, !2227, !353}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2450, file: !65, line: 2074, baseType: !600, size: 64, offset: 960)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2450, file: !65, line: 2076, baseType: !2501, size: 64, offset: 1024)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!102, !1493, !414}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2450, file: !65, line: 2077, baseType: !2501, size: 64, offset: 1088)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2450, file: !65, line: 2078, baseType: !2501, size: 64, offset: 1152)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2450, file: !65, line: 2079, baseType: !2501, size: 64, offset: 1216)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2450, file: !65, line: 2081, baseType: !2508, size: 64, offset: 1280)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!687, !566, !102, !353, !698, !576}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2450, file: !65, line: 2082, baseType: !2512, size: 64, offset: 1344)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!687, !566, !102, !531, !698, !576}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2450, file: !65, line: 2083, baseType: !2516, size: 64, offset: 1408)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!2519, !457}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !70, line: 296, size: 1664, elements: !2522)
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2547, !2548, !2549}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2521, file: !70, line: 297, baseType: !1028, size: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2521, file: !70, line: 298, baseType: !388, size: 128, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2521, file: !70, line: 299, baseType: !388, size: 128, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2521, file: !70, line: 300, baseType: !388, size: 128, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2521, file: !70, line: 301, baseType: !977, size: 256, offset: 512)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2521, file: !70, line: 302, baseType: !474, size: 32, offset: 768)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2521, file: !70, line: 303, baseType: !494, size: 32, offset: 800)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2521, file: !70, line: 304, baseType: !566, size: 64, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2521, file: !70, line: 305, baseType: !2532, size: 64, offset: 896)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !70, line: 68, size: 64, elements: !2533)
!2533 = !{!2534, !2546}
!2534 = !DIDerivedType(tag: DW_TAG_member, scope: !2532, file: !70, line: 69, baseType: !2535, size: 32)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2532, file: !70, line: 69, size: 32, elements: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2535, file: !70, line: 70, baseType: !380, size: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2535, file: !70, line: 71, baseType: !394, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2535, file: !70, line: 72, baseType: !2540, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2541, line: 24, baseType: !2542)
!2541 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2541, line: 22, size: 32, elements: !2543)
!2543 = !{!2544}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2542, file: !2541, line: 23, baseType: !2545, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2541, line: 20, baseType: !386)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2532, file: !70, line: 74, baseType: !69, size: 32, offset: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2521, file: !70, line: 306, baseType: !576, size: 64, offset: 960)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2521, file: !70, line: 307, baseType: !351, size: 64, offset: 1024)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2521, file: !70, line: 308, baseType: !2550, size: 576, offset: 1088)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !70, line: 205, size: 576, elements: !2551)
!2551 = !{!2552, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2550, file: !70, line: 206, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !70, line: 66, baseType: !578)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2550, file: !70, line: 207, baseType: !2553, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2550, file: !70, line: 208, baseType: !2553, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2550, file: !70, line: 209, baseType: !2553, size: 64, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2550, file: !70, line: 210, baseType: !2553, size: 64, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2550, file: !70, line: 211, baseType: !2553, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2550, file: !70, line: 212, baseType: !2553, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2550, file: !70, line: 213, baseType: !1108, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2550, file: !70, line: 214, baseType: !1108, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2450, file: !65, line: 2085, baseType: !2563, size: 64, offset: 1472)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!372, !566, !2566}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2568, line: 15, size: 256, elements: !2569)
!2568 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2569 = !{!2570, !2571, !2572, !2573, !2574}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2567, file: !2568, line: 16, baseType: !349, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2567, file: !2568, line: 19, baseType: !102, size: 32, offset: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2567, file: !2568, line: 26, baseType: !351, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2567, file: !2568, line: 33, baseType: !351, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2567, file: !2568, line: 36, baseType: !2575, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !36, line: 33, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2450, file: !65, line: 2087, baseType: !2563, size: 64, offset: 1536)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2450, file: !65, line: 2089, baseType: !600, size: 64, offset: 1600)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !567, file: !65, line: 1198, baseType: !2580, size: 64, offset: 448)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2582)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !70, line: 324, size: 704, elements: !2583)
!2583 = !{!2584, !2588, !2592, !2596, !2597, !2598, !2599, !2600, !2605, !2610, !2614}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2582, file: !70, line: 325, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!102, !2520}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2582, file: !70, line: 326, baseType: !2589, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!2520, !566, !102}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2582, file: !70, line: 327, baseType: !2593, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !2520}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2582, file: !70, line: 328, baseType: !2585, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2582, file: !70, line: 329, baseType: !2585, size: 64, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2582, file: !70, line: 330, baseType: !2585, size: 64, offset: 320)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2582, file: !70, line: 331, baseType: !2476, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2582, file: !70, line: 334, baseType: !2601, size: 64, offset: 448)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!2604, !457}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2582, file: !70, line: 335, baseType: !2606, size: 64, offset: 512)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!102, !457, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2582, file: !70, line: 337, baseType: !2611, size: 64, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!102, !457, !2604}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2582, file: !70, line: 339, baseType: !2615, size: 64, offset: 640)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!102, !566, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !567, file: !65, line: 1199, baseType: !2620, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2622)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !70, line: 430, size: 704, elements: !2623)
!2623 = !{!2624, !2630, !2631, !2635, !2636, !2637, !2652, !2675, !2679, !2680, !2703}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2622, file: !70, line: 431, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!102, !566, !102, !102, !2628}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2622, file: !70, line: 432, baseType: !2476, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2622, file: !70, line: 433, baseType: !2632, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!102, !566, !13}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2622, file: !70, line: 434, baseType: !2632, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2622, file: !70, line: 435, baseType: !2476, size: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2622, file: !70, line: 436, baseType: !2638, size: 64, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!102, !566, !102, !2641}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !70, line: 417, size: 256, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2642, file: !70, line: 418, baseType: !102, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2642, file: !70, line: 419, baseType: !13, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2642, file: !70, line: 420, baseType: !13, size: 32, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2642, file: !70, line: 422, baseType: !13, size: 32, offset: 96)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2642, file: !70, line: 423, baseType: !13, size: 32, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2642, file: !70, line: 424, baseType: !13, size: 32, offset: 160)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2642, file: !70, line: 425, baseType: !13, size: 32, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2642, file: !70, line: 426, baseType: !13, size: 32, offset: 224)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2622, file: !70, line: 437, baseType: !2653, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!102, !566, !2532, !2656}
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !70, line: 345, size: 960, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2657, file: !70, line: 346, baseType: !102, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2657, file: !70, line: 347, baseType: !450, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2657, file: !70, line: 348, baseType: !450, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2657, file: !70, line: 349, baseType: !450, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2657, file: !70, line: 350, baseType: !450, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2657, file: !70, line: 351, baseType: !450, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2657, file: !70, line: 352, baseType: !450, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2657, file: !70, line: 353, baseType: !748, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2657, file: !70, line: 355, baseType: !748, size: 64, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2657, file: !70, line: 356, baseType: !102, size: 32, offset: 576)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2657, file: !70, line: 357, baseType: !102, size: 32, offset: 608)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2657, file: !70, line: 358, baseType: !450, size: 64, offset: 640)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2657, file: !70, line: 359, baseType: !450, size: 64, offset: 704)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2657, file: !70, line: 360, baseType: !450, size: 64, offset: 768)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2657, file: !70, line: 361, baseType: !748, size: 64, offset: 832)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2657, file: !70, line: 362, baseType: !102, size: 32, offset: 896)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2622, file: !70, line: 438, baseType: !2676, size: 64, offset: 448)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!102, !566, !2618, !2656}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2622, file: !70, line: 440, baseType: !2653, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2622, file: !70, line: 441, baseType: !2681, size: 64, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!102, !566, !2684}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !70, line: 411, size: 1408, elements: !2686)
!2686 = !{!2687, !2688}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2685, file: !70, line: 412, baseType: !13, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2685, file: !70, line: 413, baseType: !2689, size: 1344, offset: 64)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 1344, elements: !363)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !70, line: 397, size: 448, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2702}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2690, file: !70, line: 398, baseType: !13, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2690, file: !70, line: 399, baseType: !13, size: 32, offset: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2690, file: !70, line: 401, baseType: !13, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2690, file: !70, line: 402, baseType: !13, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2690, file: !70, line: 403, baseType: !13, size: 32, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2690, file: !70, line: 404, baseType: !13, size: 32, offset: 160)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2690, file: !70, line: 405, baseType: !13, size: 32, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2690, file: !70, line: 406, baseType: !452, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2690, file: !70, line: 407, baseType: !2701, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !350, line: 132, baseType: !450)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2690, file: !70, line: 408, baseType: !2701, size: 64, offset: 384)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2622, file: !70, line: 442, baseType: !2632, size: 64, offset: 640)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !567, file: !65, line: 1200, baseType: !2705, size: 64, offset: 576)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2707)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !2708, line: 201, size: 640, elements: !2709)
!2708 = !DIFile(filename: "./include/linux/exportfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b88049a7651ed625da9f6bb7042c568")
!2709 = !{!2710, !2715, !2748, !2749, !2753, !2757, !2758, !2765, !2771, !2808}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "encode_fh", scope: !2707, file: !2708, line: 202, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!102, !457, !2714, !2227, !457}
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_dentry", scope: !2707, file: !2708, line: 204, baseType: !2716, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!414, !566, !2719, !102, !102}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fid", file: !2708, line: 118, size: 160, elements: !2721)
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, scope: !2720, file: !2708, line: 119, baseType: !2723, size: 160)
!2723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2720, file: !2708, line: 119, size: 160, elements: !2724)
!2724 = !{!2725, !2732, !2741}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !2723, file: !2708, line: 125, baseType: !2726, size: 128)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2723, file: !2708, line: 120, size: 128, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2726, file: !2708, line: 121, baseType: !341, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !2726, file: !2708, line: 122, baseType: !341, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ino", scope: !2726, file: !2708, line: 123, baseType: !341, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2726, file: !2708, line: 124, baseType: !341, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "udf", scope: !2723, file: !2708, line: 133, baseType: !2733, size: 160)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2723, file: !2708, line: 126, size: 160, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2733, file: !2708, line: 127, baseType: !341, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "partref", scope: !2733, file: !2708, line: 128, baseType: !323, size: 16, offset: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "parent_partref", scope: !2733, file: !2708, line: 129, baseType: !323, size: 16, offset: 48)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2733, file: !2708, line: 130, baseType: !341, size: 32, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "parent_block", scope: !2733, file: !2708, line: 131, baseType: !341, size: 32, offset: 96)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "parent_generation", scope: !2733, file: !2708, line: 132, baseType: !341, size: 32, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, scope: !2723, file: !2708, line: 134, baseType: !2742)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2723, file: !2708, line: 134, elements: !2743)
!2743 = !{!2744, !2746}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_raw", scope: !2742, file: !2708, line: 134, baseType: !2745)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2742, file: !2708, line: 134, elements: !951)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2742, file: !2708, line: 134, baseType: !2747)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, elements: !248)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_parent", scope: !2707, file: !2708, line: 206, baseType: !2716, size: 64, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2707, file: !2708, line: 208, baseType: !2750, size: 64, offset: 192)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!102, !414, !353, !414}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2707, file: !2708, line: 210, baseType: !2754, size: 64, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!414, !414}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "commit_metadata", scope: !2707, file: !2708, line: 211, baseType: !2470, size: 64, offset: 320)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "get_uuid", scope: !2707, file: !2708, line: 213, baseType: !2759, size: 64, offset: 384)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!102, !566, !2762, !2763, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "map_blocks", scope: !2707, file: !2708, line: 214, baseType: !2766, size: 64, offset: 448)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!102, !457, !576, !450, !2769, !868, !2763}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "iomap", file: !2708, line: 10, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "commit_blocks", scope: !2707, file: !2708, line: 217, baseType: !2772, size: 64, offset: 512)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!102, !457, !2769, !102, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !65, line: 226, size: 640, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2790, !2799, !2800, !2805, !2806, !2807}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2776, file: !65, line: 227, baseType: !13, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2776, file: !65, line: 228, baseType: !377, size: 16, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, scope: !2776, file: !65, line: 241, baseType: !2781, size: 32, offset: 64)
!2781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2776, file: !65, line: 241, size: 32, elements: !2782)
!2782 = !{!2783, !2784}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2781, file: !65, line: 242, baseType: !380, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !2781, file: !65, line: 243, baseType: !2785, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !2786, line: 16, baseType: !2787)
!2786 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2786, line: 14, size: 32, elements: !2788)
!2788 = !{!2789}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2787, file: !2786, line: 15, baseType: !385, size: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, scope: !2776, file: !65, line: 245, baseType: !2791, size: 32, offset: 96)
!2791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2776, file: !65, line: 245, size: 32, elements: !2792)
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2791, file: !65, line: 246, baseType: !394, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !2791, file: !65, line: 247, baseType: !2795, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !2786, line: 20, baseType: !2796)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2786, line: 18, size: 32, elements: !2797)
!2797 = !{!2798}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2796, file: !2786, line: 19, baseType: !398, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2776, file: !65, line: 249, baseType: !576, size: 64, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2776, file: !65, line: 250, baseType: !2801, size: 128, offset: 192)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1109, line: 13, size: 128, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2801, file: !1109, line: 14, baseType: !1108, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2801, file: !1109, line: 15, baseType: !372, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2776, file: !65, line: 251, baseType: !2801, size: 128, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2776, file: !65, line: 252, baseType: !2801, size: 128, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2776, file: !65, line: 259, baseType: !958, size: 64, offset: 576)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2707, file: !2708, line: 227, baseType: !351, size: 64, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !567, file: !65, line: 1201, baseType: !351, size: 64, offset: 640)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !567, file: !65, line: 1202, baseType: !351, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !567, file: !65, line: 1203, baseType: !351, size: 64, offset: 768)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !567, file: !65, line: 1204, baseType: !414, size: 64, offset: 832)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !567, file: !65, line: 1205, baseType: !738, size: 320, offset: 896)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !567, file: !65, line: 1206, baseType: !102, size: 32, offset: 1216)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !567, file: !65, line: 1207, baseType: !494, size: 32, offset: 1248)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !567, file: !65, line: 1209, baseType: !348, size: 64, offset: 1280)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !567, file: !65, line: 1211, baseType: !2818, size: 64, offset: 1344)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2821)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !65, line: 1211, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !567, file: !65, line: 1223, baseType: !2823, size: 64, offset: 1408)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !431, line: 34, size: 64, elements: !2824)
!2824 = !{!2825}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2823, file: !431, line: 35, baseType: !434, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !567, file: !65, line: 1224, baseType: !388, size: 128, offset: 1472)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !567, file: !65, line: 1225, baseType: !2828, size: 64, offset: 1600)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2830, line: 40, size: 7424, elements: !2831)
!2830 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2831 = !{!2832, !2833, !2834, !2837, !2841, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2868, !2869}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2829, file: !2830, line: 41, baseType: !1867, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2829, file: !2830, line: 42, baseType: !1867, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2829, file: !2830, line: 43, baseType: !2835, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1470, line: 1453, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2829, file: !2830, line: 44, baseType: !2838, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2840, line: 74, flags: DIFlagFwdDecl)
!2840 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2829, file: !2830, line: 45, baseType: !2842, size: 64, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2830, line: 45, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2829, file: !2830, line: 46, baseType: !351, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2829, file: !2830, line: 47, baseType: !868, size: 8, offset: 384)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2829, file: !2830, line: 48, baseType: !502, size: 8, offset: 392)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2829, file: !2830, line: 49, baseType: !868, size: 8, offset: 400)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2829, file: !2830, line: 50, baseType: !868, size: 8, offset: 408)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2829, file: !2830, line: 51, baseType: !571, size: 32, offset: 416)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2829, file: !2830, line: 52, baseType: !494, size: 32, offset: 448)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2829, file: !2830, line: 53, baseType: !474, size: 32, offset: 480)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2829, file: !2830, line: 54, baseType: !457, size: 64, offset: 512)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2829, file: !2830, line: 55, baseType: !348, size: 64, offset: 576)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2829, file: !2830, line: 56, baseType: !348, size: 64, offset: 640)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2829, file: !2830, line: 57, baseType: !2856, size: 64, offset: 704)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2858)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2830, line: 57, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2829, file: !2830, line: 58, baseType: !977, size: 256, offset: 768)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2829, file: !2830, line: 60, baseType: !102, size: 32, offset: 1024)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2829, file: !2830, line: 61, baseType: !102, size: 32, offset: 1056)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2829, file: !2830, line: 62, baseType: !623, size: 64, offset: 1088)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2829, file: !2830, line: 65, baseType: !977, size: 256, offset: 1152)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2829, file: !2830, line: 66, baseType: !566, size: 64, offset: 1408)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2829, file: !2830, line: 68, baseType: !2866, size: 64, offset: 1472)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2830, line: 68, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2829, file: !2830, line: 72, baseType: !868, size: 8, offset: 1536)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2829, file: !2830, line: 77, baseType: !2870, size: 5824, offset: 1600)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !82, line: 705, size: 5824, elements: !2871)
!2871 = !{!2872, !2873, !2875, !2878, !2879, !2932, !3002, !3003, !3004, !3005, !3006, !3013, !3171, !3184, !3194, !3198, !3199, !3200, !3201, !3205, !3212, !3213, !3216, !3219, !3223, !3226, !3227, !3228, !3229, !3230, !3231, !3261, !3262, !3263, !3266, !3269, !3278, !3279, !3280, !3281, !3282, !3283}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2870, file: !82, line: 706, baseType: !617, size: 512)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2870, file: !82, line: 707, baseType: !2874, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2870, file: !82, line: 709, baseType: !2876, size: 64, offset: 576)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !82, line: 37, flags: DIFlagFwdDecl)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2870, file: !82, line: 711, baseType: !531, size: 64, offset: 640)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2870, file: !82, line: 712, baseType: !2880, size: 64, offset: 704)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2882)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !82, line: 89, size: 384, elements: !2883)
!2883 = !{!2884, !2885, !2886, !2892, !2897, !2901}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2882, file: !82, line: 90, baseType: !531, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2882, file: !82, line: 91, baseType: !702, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2882, file: !82, line: 92, baseType: !2887, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!102, !2890, !653}
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2870)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2882, file: !82, line: 93, baseType: !2893, size: 64, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!353, !2890, !2896, !1972, !1973}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2882, file: !82, line: 95, baseType: !2898, size: 64, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2874}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2882, file: !82, line: 97, baseType: !2902, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !94, line: 286, size: 1472, elements: !2905)
!2905 = !{!2906, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2904, file: !94, line: 287, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!102, !2874}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2904, file: !94, line: 288, baseType: !2898, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2904, file: !94, line: 289, baseType: !2907, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2904, file: !94, line: 290, baseType: !2907, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2904, file: !94, line: 291, baseType: !2907, size: 64, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2904, file: !94, line: 292, baseType: !2907, size: 64, offset: 320)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2904, file: !94, line: 293, baseType: !2907, size: 64, offset: 384)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2904, file: !94, line: 294, baseType: !2907, size: 64, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2904, file: !94, line: 295, baseType: !2907, size: 64, offset: 512)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2904, file: !94, line: 296, baseType: !2907, size: 64, offset: 576)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2904, file: !94, line: 297, baseType: !2907, size: 64, offset: 640)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2904, file: !94, line: 298, baseType: !2907, size: 64, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2904, file: !94, line: 299, baseType: !2907, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2904, file: !94, line: 300, baseType: !2907, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2904, file: !94, line: 301, baseType: !2907, size: 64, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2904, file: !94, line: 302, baseType: !2907, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2904, file: !94, line: 303, baseType: !2907, size: 64, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2904, file: !94, line: 304, baseType: !2907, size: 64, offset: 1088)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2904, file: !94, line: 305, baseType: !2907, size: 64, offset: 1152)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2904, file: !94, line: 306, baseType: !2907, size: 64, offset: 1216)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2904, file: !94, line: 307, baseType: !2907, size: 64, offset: 1280)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2904, file: !94, line: 308, baseType: !2907, size: 64, offset: 1344)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2904, file: !94, line: 309, baseType: !2907, size: 64, offset: 1408)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2870, file: !82, line: 714, baseType: !2933, size: 64, offset: 768)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2935)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2936, line: 80, size: 1344, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2943, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3001}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2935, file: !2936, line: 81, baseType: !531, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2935, file: !2936, line: 82, baseType: !531, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2935, file: !2936, line: 83, baseType: !702, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2935, file: !2936, line: 84, baseType: !702, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2935, file: !2936, line: 85, baseType: !702, size: 64, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2935, file: !2936, line: 87, baseType: !2944, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!102, !2874, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !76, line: 96, size: 1152, elements: !2949)
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955, !2956, !2960, !2964, !2965, !2966, !2967, !2968, !2976, !2977, !2978, !2979, !2980, !2981}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2948, file: !76, line: 97, baseType: !531, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2948, file: !76, line: 98, baseType: !2933, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2948, file: !76, line: 100, baseType: !604, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2948, file: !76, line: 101, baseType: !531, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2948, file: !76, line: 103, baseType: !868, size: 8, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2948, file: !76, line: 104, baseType: !75, size: 32, offset: 288)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2948, file: !76, line: 106, baseType: !2957, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2959)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !76, line: 106, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2948, file: !76, line: 107, baseType: !2961, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2963)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !76, line: 107, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2948, file: !76, line: 109, baseType: !2907, size: 64, offset: 448)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2948, file: !76, line: 110, baseType: !2898, size: 64, offset: 512)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2948, file: !76, line: 111, baseType: !2907, size: 64, offset: 576)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2948, file: !76, line: 112, baseType: !2898, size: 64, offset: 640)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2948, file: !76, line: 113, baseType: !2969, size: 64, offset: 704)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!102, !2874, !2972}
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !94, line: 60, baseType: !2973)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !94, line: 58, size: 32, elements: !2974)
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2973, file: !94, line: 59, baseType: !102, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2948, file: !76, line: 114, baseType: !2907, size: 64, offset: 768)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2948, file: !76, line: 115, baseType: !702, size: 64, offset: 832)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2948, file: !76, line: 116, baseType: !702, size: 64, offset: 896)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2948, file: !76, line: 118, baseType: !2902, size: 64, offset: 960)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2948, file: !76, line: 119, baseType: !2898, size: 64, offset: 1024)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2948, file: !76, line: 121, baseType: !2982, size: 64, offset: 1088)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !76, line: 121, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2935, file: !2936, line: 88, baseType: !2887, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2935, file: !2936, line: 89, baseType: !2907, size: 64, offset: 448)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2935, file: !2936, line: 90, baseType: !2898, size: 64, offset: 512)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2935, file: !2936, line: 91, baseType: !2898, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2935, file: !2936, line: 92, baseType: !2898, size: 64, offset: 640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2935, file: !2936, line: 94, baseType: !2907, size: 64, offset: 704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2935, file: !2936, line: 95, baseType: !2907, size: 64, offset: 768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2935, file: !2936, line: 97, baseType: !2969, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2935, file: !2936, line: 98, baseType: !2907, size: 64, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2935, file: !2936, line: 100, baseType: !2907, size: 64, offset: 960)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2935, file: !2936, line: 102, baseType: !2907, size: 64, offset: 1024)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2935, file: !2936, line: 103, baseType: !2898, size: 64, offset: 1088)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2935, file: !2936, line: 105, baseType: !2902, size: 64, offset: 1152)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2935, file: !2936, line: 107, baseType: !2998, size: 64, offset: 1216)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2936, line: 107, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2935, file: !2936, line: 109, baseType: !868, size: 8, offset: 1280)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2870, file: !82, line: 715, baseType: !2947, size: 64, offset: 832)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2870, file: !82, line: 717, baseType: !348, size: 64, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2870, file: !82, line: 719, baseType: !348, size: 64, offset: 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2870, file: !82, line: 721, baseType: !977, size: 256, offset: 1024)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2870, file: !82, line: 725, baseType: !3007, size: 448, offset: 1280)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !82, line: 517, size: 448, elements: !3008)
!3008 = !{!3009, !3010, !3011, !3012}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3007, file: !82, line: 518, baseType: !388, size: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3007, file: !82, line: 519, baseType: !388, size: 128, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3007, file: !82, line: 520, baseType: !388, size: 128, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3007, file: !82, line: 521, baseType: !81, size: 32, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2870, file: !82, line: 726, baseType: !3014, size: 2496, offset: 1728)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !94, line: 663, size: 2496, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3060, !3061, !3062, !3063, !3064, !3065, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3164, !3168}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3014, file: !94, line: 664, baseType: !2972, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3014, file: !94, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3014, file: !94, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3014, file: !94, line: 667, baseType: !868, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3014, file: !94, line: 668, baseType: !868, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3014, file: !94, line: 669, baseType: !868, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3014, file: !94, line: 670, baseType: !868, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3014, file: !94, line: 671, baseType: !868, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3014, file: !94, line: 672, baseType: !868, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3014, file: !94, line: 673, baseType: !868, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3014, file: !94, line: 674, baseType: !868, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3014, file: !94, line: 675, baseType: !341, size: 32, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3014, file: !94, line: 676, baseType: !474, size: 32, offset: 96)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3014, file: !94, line: 678, baseType: !388, size: 128, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3014, file: !94, line: 679, baseType: !882, size: 256, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3014, file: !94, line: 680, baseType: !3032, size: 64, offset: 512)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3034, line: 43, size: 1536, elements: !3035)
!3034 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3043, !3044, !3045, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3033, file: !3034, line: 44, baseType: !531, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3033, file: !3034, line: 45, baseType: !102, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3033, file: !3034, line: 46, baseType: !388, size: 128, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3033, file: !3034, line: 47, baseType: !474, size: 32, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3033, file: !3034, line: 48, baseType: !3041, size: 64, offset: 320)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !94, line: 629, flags: DIFlagFwdDecl)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3033, file: !3034, line: 49, baseType: !2327, size: 320, offset: 384)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3033, file: !3034, line: 50, baseType: !351, size: 64, offset: 704)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3033, file: !3034, line: 51, baseType: !3046, size: 64, offset: 768)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3047, line: 29, baseType: !748)
!3047 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3033, file: !3034, line: 52, baseType: !3046, size: 64, offset: 832)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3033, file: !3034, line: 53, baseType: !3046, size: 64, offset: 896)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3033, file: !3034, line: 54, baseType: !3046, size: 64, offset: 960)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3033, file: !3034, line: 55, baseType: !3046, size: 64, offset: 1024)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3033, file: !3034, line: 56, baseType: !351, size: 64, offset: 1088)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3033, file: !3034, line: 57, baseType: !351, size: 64, offset: 1152)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3033, file: !3034, line: 58, baseType: !351, size: 64, offset: 1216)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3033, file: !3034, line: 59, baseType: !351, size: 64, offset: 1280)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3033, file: !3034, line: 60, baseType: !351, size: 64, offset: 1344)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3033, file: !3034, line: 61, baseType: !2874, size: 64, offset: 1408)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3033, file: !3034, line: 62, baseType: !868, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3033, file: !3034, line: 63, baseType: !868, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3014, file: !94, line: 681, baseType: !868, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3014, file: !94, line: 682, baseType: !868, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3014, file: !94, line: 683, baseType: !868, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3014, file: !94, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3014, file: !94, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3014, file: !94, line: 690, baseType: !3066, size: 512, offset: 640)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !89, line: 118, size: 512, elements: !3067)
!3067 = !{!3068, !3074, !3075, !3080, !3126, !3127, !3128, !3129}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3066, file: !89, line: 119, baseType: !3069, size: 256)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3070, line: 9, size: 256, elements: !3071)
!3070 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3069, file: !3070, line: 10, baseType: !770, size: 192, align: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3069, file: !3070, line: 11, baseType: !3046, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3066, file: !89, line: 120, baseType: !3046, size: 64, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3066, file: !89, line: 121, baseType: !3076, size: 64, offset: 320)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!88, !3079}
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3066, file: !89, line: 122, baseType: !3081, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !89, line: 159, size: 512, align: 512, elements: !3083)
!3083 = !{!3084, !3107, !3108, !3111, !3116, !3117, !3121, !3125}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3082, file: !89, line: 160, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !89, line: 215, size: 4608, align: 512, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3086, file: !89, line: 216, baseType: !757, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3086, file: !89, line: 217, baseType: !13, size: 32, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3086, file: !89, line: 218, baseType: !13, size: 32, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3086, file: !89, line: 219, baseType: !13, size: 32, offset: 96)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3086, file: !89, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3086, file: !89, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3086, file: !89, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3086, file: !89, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3086, file: !89, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3086, file: !89, line: 226, baseType: !13, size: 32, offset: 160)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3086, file: !89, line: 227, baseType: !313, size: 16, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3086, file: !89, line: 228, baseType: !313, size: 16, offset: 208)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3086, file: !89, line: 229, baseType: !13, size: 32, offset: 224)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3086, file: !89, line: 235, baseType: !3046, size: 64, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3086, file: !89, line: 236, baseType: !3079, size: 64, offset: 320)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3086, file: !89, line: 237, baseType: !3046, size: 64, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3086, file: !89, line: 238, baseType: !3079, size: 64, offset: 448)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3086, file: !89, line: 239, baseType: !3106, size: 4096, align: 512, offset: 512)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3082, size: 4096, align: 512, elements: !235)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3082, file: !89, line: 161, baseType: !13, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3082, file: !89, line: 162, baseType: !3109, size: 32, offset: 96)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !350, line: 32, baseType: !3110)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !370, line: 96, baseType: !102)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3082, file: !89, line: 163, baseType: !3112, size: 32, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !421, line: 274, baseType: !3113)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !421, line: 274, size: 32, elements: !3114)
!3114 = !{!3115}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3113, file: !421, line: 274, baseType: !425, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3082, file: !89, line: 164, baseType: !3079, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3082, file: !89, line: 165, baseType: !3118, size: 128, offset: 256)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3070, line: 14, size: 128, elements: !3119)
!3119 = !{!3120}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3118, file: !3070, line: 15, baseType: !762, size: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3082, file: !89, line: 166, baseType: !3122, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!3046}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3082, file: !89, line: 167, baseType: !3046, size: 64, offset: 448)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3066, file: !89, line: 123, baseType: !502, size: 8, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3066, file: !89, line: 124, baseType: !502, size: 8, offset: 456)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3066, file: !89, line: 125, baseType: !502, size: 8, offset: 464)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3066, file: !89, line: 126, baseType: !502, size: 8, offset: 472)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3014, file: !94, line: 691, baseType: !450, size: 64, offset: 1152)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3014, file: !94, line: 692, baseType: !1649, size: 256, offset: 1216)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3014, file: !94, line: 693, baseType: !1037, size: 192, offset: 1472)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3014, file: !94, line: 694, baseType: !3041, size: 64, offset: 1664)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3014, file: !94, line: 695, baseType: !494, size: 32, offset: 1728)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3014, file: !94, line: 696, baseType: !494, size: 32, offset: 1760)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3014, file: !94, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3014, file: !94, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3014, file: !94, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3014, file: !94, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3014, file: !94, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3014, file: !94, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3014, file: !94, line: 703, baseType: !868, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3014, file: !94, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3014, file: !94, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3014, file: !94, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3014, file: !94, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3014, file: !94, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3014, file: !94, line: 709, baseType: !13, size: 32, offset: 1824)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3014, file: !94, line: 710, baseType: !93, size: 32, offset: 1856)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3014, file: !94, line: 711, baseType: !101, size: 32, offset: 1888)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3014, file: !94, line: 712, baseType: !101, size: 32, offset: 1920)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3014, file: !94, line: 713, baseType: !102, size: 32, offset: 1952)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3014, file: !94, line: 714, baseType: !102, size: 32, offset: 1984)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3014, file: !94, line: 715, baseType: !450, size: 64, offset: 2048)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3014, file: !94, line: 716, baseType: !450, size: 64, offset: 2112)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3014, file: !94, line: 717, baseType: !450, size: 64, offset: 2176)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3014, file: !94, line: 718, baseType: !450, size: 64, offset: 2240)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3014, file: !94, line: 720, baseType: !3159, size: 64, offset: 2304)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !94, line: 632, size: 64, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3160, file: !94, line: 633, baseType: !474, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3160, file: !94, line: 634, baseType: !13, size: 32, offset: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3014, file: !94, line: 721, baseType: !3165, size: 64, offset: 2368)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !2874, !1092}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3014, file: !94, line: 722, baseType: !3169, size: 64, offset: 2432)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !94, line: 722, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2870, file: !82, line: 727, baseType: !3172, size: 64, offset: 4224)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !94, line: 742, size: 1792, elements: !3174)
!3174 = !{!3175, !3176, !3177, !3181, !3182, !3183}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3173, file: !94, line: 743, baseType: !2904, size: 1472)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3173, file: !94, line: 744, baseType: !2907, size: 64, offset: 1472)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3173, file: !94, line: 745, baseType: !3178, size: 64, offset: 1536)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !2874, !868}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3173, file: !94, line: 746, baseType: !2907, size: 64, offset: 1600)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3173, file: !94, line: 747, baseType: !2898, size: 64, offset: 1664)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3173, file: !94, line: 748, baseType: !2898, size: 64, offset: 1728)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2870, file: !82, line: 736, baseType: !3185, size: 128, offset: 4288)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !82, line: 529, size: 128, elements: !3186)
!3186 = !{!3187, !3191}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3185, file: !82, line: 531, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3190, line: 13, flags: DIFlagFwdDecl)
!3190 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3185, file: !82, line: 532, baseType: !3192, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !82, line: 49, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2870, file: !82, line: 738, baseType: !3195, size: 64, offset: 4416)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !82, line: 738, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2870, file: !82, line: 740, baseType: !2764, size: 64, offset: 4480)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2870, file: !82, line: 741, baseType: !450, size: 64, offset: 4544)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2870, file: !82, line: 746, baseType: !450, size: 64, offset: 4608)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2870, file: !82, line: 747, baseType: !3202, size: 64, offset: 4672)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !82, line: 747, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2870, file: !82, line: 749, baseType: !3206, size: 64, offset: 4736)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !82, line: 428, size: 128, elements: !3208)
!3208 = !{!3209, !3210, !3211}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3207, file: !82, line: 433, baseType: !13, size: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3207, file: !82, line: 434, baseType: !13, size: 32, offset: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3207, file: !82, line: 435, baseType: !351, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2870, file: !82, line: 751, baseType: !388, size: 128, offset: 4800)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2870, file: !82, line: 762, baseType: !3214, size: 64, offset: 4928)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !82, line: 762, flags: DIFlagFwdDecl)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2870, file: !82, line: 770, baseType: !3217, offset: 4992)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3218, line: 5, elements: !951)
!3218 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2870, file: !82, line: 772, baseType: !3220, size: 64, offset: 4992)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3222, line: 18, flags: DIFlagFwdDecl)
!3222 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2870, file: !82, line: 773, baseType: !3224, size: 64, offset: 5056)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2936, line: 22, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2870, file: !82, line: 776, baseType: !102, size: 32, offset: 5120)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2870, file: !82, line: 778, baseType: !571, size: 32, offset: 5152)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2870, file: !82, line: 779, baseType: !341, size: 32, offset: 5184)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2870, file: !82, line: 781, baseType: !474, size: 32, offset: 5216)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2870, file: !82, line: 782, baseType: !388, size: 128, offset: 5248)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2870, file: !82, line: 784, baseType: !3232, size: 64, offset: 5376)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3234)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3235, line: 52, size: 768, elements: !3236)
!3235 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3245, !3249, !3250, !3251, !3252, !3256, !3260}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3234, file: !3235, line: 53, baseType: !531, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3234, file: !3235, line: 55, baseType: !702, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3234, file: !3235, line: 56, baseType: !702, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3234, file: !3235, line: 58, baseType: !2887, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3234, file: !3235, line: 59, baseType: !3242, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!353, !2890, !2896}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3234, file: !3235, line: 61, baseType: !3246, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !3232}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3234, file: !3235, line: 62, baseType: !2898, size: 64, offset: 384)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3234, file: !3235, line: 64, baseType: !2907, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3234, file: !3235, line: 66, baseType: !1937, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3234, file: !3235, line: 67, baseType: !3253, size: 64, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!325, !2890}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3234, file: !3235, line: 69, baseType: !3257, size: 64, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !2890, !1972, !1973}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3234, file: !3235, line: 71, baseType: !2902, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2870, file: !82, line: 785, baseType: !702, size: 64, offset: 5440)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2870, file: !82, line: 787, baseType: !2898, size: 64, offset: 5504)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2870, file: !82, line: 788, baseType: !3264, size: 64, offset: 5568)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !82, line: 46, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2870, file: !82, line: 789, baseType: !3267, size: 64, offset: 5632)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !82, line: 48, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2870, file: !82, line: 791, baseType: !3270, size: 64, offset: 5696)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !82, line: 597, size: 128, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3271, file: !82, line: 598, baseType: !109, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3271, file: !82, line: 599, baseType: !118, size: 32, offset: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3271, file: !82, line: 600, baseType: !123, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3271, file: !82, line: 601, baseType: !868, size: 8, offset: 96)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3271, file: !82, line: 602, baseType: !868, size: 8, offset: 104)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2870, file: !82, line: 793, baseType: !128, size: 32, offset: 5760)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2870, file: !82, line: 795, baseType: !868, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2870, file: !82, line: 796, baseType: !868, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2870, file: !82, line: 797, baseType: !868, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2870, file: !82, line: 798, baseType: !868, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2870, file: !82, line: 799, baseType: !868, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !567, file: !65, line: 1226, baseType: !3285, size: 64, offset: 1664)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !65, line: 1226, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !567, file: !65, line: 1227, baseType: !3288, size: 64, offset: 1728)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !65, line: 50, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !567, file: !65, line: 1228, baseType: !3291, size: 64, offset: 1792)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !65, line: 1228, flags: DIFlagFwdDecl)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !567, file: !65, line: 1229, baseType: !1028, size: 128, offset: 1856)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !567, file: !65, line: 1230, baseType: !13, size: 32, offset: 1984)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !567, file: !65, line: 1231, baseType: !3296, size: 2496, offset: 2048)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !70, line: 521, size: 2496, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3302, !3334}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3296, file: !70, line: 522, baseType: !13, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3296, file: !70, line: 523, baseType: !738, size: 320, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3296, file: !70, line: 524, baseType: !3301, size: 192, offset: 384)
!3301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 192, elements: !363)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3296, file: !70, line: 525, baseType: !3303, size: 1728, offset: 576)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3304, size: 1728, elements: !363)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !70, line: 222, size: 576, elements: !3305)
!3305 = !{!3306, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3304, file: !70, line: 223, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !70, line: 445, size: 256, elements: !3309)
!3309 = !{!3310, !3311, !3324, !3325}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3308, file: !70, line: 446, baseType: !102, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3308, file: !70, line: 447, baseType: !3312, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3314)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !70, line: 312, size: 512, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3314, file: !70, line: 313, baseType: !2476, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3314, file: !70, line: 314, baseType: !2476, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3314, file: !70, line: 315, baseType: !2476, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3314, file: !70, line: 316, baseType: !2476, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3314, file: !70, line: 317, baseType: !2585, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3314, file: !70, line: 318, baseType: !2585, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3314, file: !70, line: 319, baseType: !2585, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3314, file: !70, line: 320, baseType: !2615, size: 64, offset: 448)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3308, file: !70, line: 448, baseType: !604, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3308, file: !70, line: 449, baseType: !3307, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3304, file: !70, line: 224, baseType: !102, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3304, file: !70, line: 226, baseType: !388, size: 128, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3304, file: !70, line: 227, baseType: !351, size: 64, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3304, file: !70, line: 228, baseType: !13, size: 32, offset: 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3304, file: !70, line: 229, baseType: !13, size: 32, offset: 352)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3304, file: !70, line: 230, baseType: !2553, size: 64, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3304, file: !70, line: 231, baseType: !2553, size: 64, offset: 448)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3304, file: !70, line: 232, baseType: !348, size: 64, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3296, file: !70, line: 526, baseType: !3335, size: 192, offset: 2304)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3312, size: 192, elements: !363)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !567, file: !65, line: 1233, baseType: !3337, size: 2368, offset: 4544)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !65, line: 1184, size: 2368, elements: !3338)
!3338 = !{!3339, !3340, !3341}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3337, file: !65, line: 1185, baseType: !313, size: 16)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3337, file: !65, line: 1186, baseType: !313, size: 16, offset: 16)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3337, file: !65, line: 1187, baseType: !3342, size: 2304, offset: 64)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3343, size: 2304, elements: !363)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3344, line: 12, size: 768, elements: !3345)
!3344 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3345 = !{!3346, !3354, !3355, !4458, !4459}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3343, file: !3344, line: 13, baseType: !3347, size: 384)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3348, line: 17, size: 384, elements: !3349)
!3348 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3349 = !{!3350, !3351, !3352, !3353}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3347, file: !3348, line: 18, baseType: !102, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3347, file: !3348, line: 19, baseType: !102, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3347, file: !3348, line: 20, baseType: !1037, size: 192, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3347, file: !3348, line: 22, baseType: !872, size: 128, align: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3343, file: !3344, line: 14, baseType: !2183, size: 64, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3343, file: !3344, line: 15, baseType: !3356, size: 64, offset: 448)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3357, line: 16, size: 64, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3358 = !{!3359}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3356, file: !3357, line: 17, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1470, line: 746, size: 58368, elements: !3362)
!3362 = !{!3363, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3443, !3454, !3474, !3478, !3481, !3512, !3513, !3514, !3515, !3524, !3526, !3527, !3528, !3529, !3530, !3531, !3542, !3543, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3560, !3561, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3648, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3696, !3702, !3703, !3704, !3705, !3706, !3710, !3713, !3720, !3725, !3728, !3731, !3734, !3737, !3875, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3913, !3914, !3915, !3924, !3932, !3933, !3934, !3935, !3936, !3941, !3942, !3943, !3946, !3947, !3950, !3953, !3956, !3963, !3966, !3967, !4053, !4054, !4055, !4056, !4057, !4063, !4064, !4065, !4066, !4069, !4070, !4073, !4076, !4077, !4080, !4081, !4082, !4085, !4086, !4087, !4088, !4089, !4090, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4121, !4122, !4128, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4210, !4212, !4213, !4214, !4215, !4216, !4217, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4235, !4236, !4237}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3361, file: !1470, line: 752, baseType: !3364, size: 192)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3365, line: 56, size: 192, elements: !3366)
!3365 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3366 = !{!3367, !3368, !3369, !3370}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3364, file: !3365, line: 57, baseType: !351, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3364, file: !3365, line: 58, baseType: !351, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3364, file: !3365, line: 59, baseType: !341, size: 32, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3364, file: !3365, line: 61, baseType: !341, size: 32, offset: 160)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3361, file: !1470, line: 754, baseType: !13, size: 32, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3361, file: !1470, line: 767, baseType: !348, size: 64, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3361, file: !1470, line: 768, baseType: !1015, size: 32, offset: 320)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3361, file: !1470, line: 770, baseType: !13, size: 32, offset: 352)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3361, file: !1470, line: 771, baseType: !13, size: 32, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3361, file: !1470, line: 774, baseType: !102, size: 32, offset: 416)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3361, file: !1470, line: 775, baseType: !3378, size: 128, offset: 448)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3379, line: 58, size: 128, elements: !3380)
!3379 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3380 = !{!3381, !3382, !3387, !3388}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3378, file: !3379, line: 59, baseType: !965, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, scope: !3378, file: !3379, line: 60, baseType: !3383, size: 32, offset: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3378, file: !3379, line: 60, size: 32, elements: !3384)
!3384 = !{!3385, !3386}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3383, file: !3379, line: 61, baseType: !13, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3383, file: !3379, line: 62, baseType: !494, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3378, file: !3379, line: 65, baseType: !323, size: 16, offset: 96)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3378, file: !3379, line: 65, baseType: !323, size: 16, offset: 112)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3361, file: !1470, line: 776, baseType: !13, size: 32, offset: 576)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3361, file: !1470, line: 777, baseType: !351, size: 64, offset: 640)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3361, file: !1470, line: 778, baseType: !3360, size: 64, offset: 704)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3361, file: !1470, line: 787, baseType: !102, size: 32, offset: 768)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3361, file: !1470, line: 788, baseType: !102, size: 32, offset: 800)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3361, file: !1470, line: 790, baseType: !102, size: 32, offset: 832)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3361, file: !1470, line: 792, baseType: !102, size: 32, offset: 864)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3361, file: !1470, line: 793, baseType: !102, size: 32, offset: 896)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3361, file: !1470, line: 794, baseType: !102, size: 32, offset: 928)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3361, file: !1470, line: 795, baseType: !13, size: 32, offset: 960)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3361, file: !1470, line: 797, baseType: !3400, size: 2048, offset: 1024)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1470, line: 551, size: 2048, elements: !3401)
!3401 = !{!3402, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3422, !3425, !3426, !3427}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3400, file: !1470, line: 553, baseType: !3403, size: 128)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1470, line: 411, size: 128, elements: !3404)
!3404 = !{!3405, !3406}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3403, file: !1470, line: 412, baseType: !351, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3403, file: !1470, line: 413, baseType: !341, size: 32, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3400, file: !1470, line: 554, baseType: !770, size: 192, align: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3400, file: !1470, line: 555, baseType: !450, size: 64, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3400, file: !1470, line: 556, baseType: !450, size: 64, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3400, file: !1470, line: 558, baseType: !388, size: 128, offset: 448)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3400, file: !1470, line: 559, baseType: !13, size: 32, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3400, file: !1470, line: 561, baseType: !450, size: 64, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3400, file: !1470, line: 562, baseType: !450, size: 64, offset: 704)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3400, file: !1470, line: 563, baseType: !450, size: 64, offset: 768)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3400, file: !1470, line: 564, baseType: !450, size: 64, offset: 832)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3400, file: !1470, line: 565, baseType: !748, size: 64, offset: 896)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3400, file: !1470, line: 566, baseType: !450, size: 64, offset: 960)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3400, file: !1470, line: 568, baseType: !450, size: 64, offset: 1024)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3400, file: !1470, line: 571, baseType: !102, size: 32, offset: 1088)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3400, file: !1470, line: 572, baseType: !3421, size: 64, offset: 1152)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3400, file: !1470, line: 574, baseType: !3423, size: 64, offset: 1216)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1470, line: 49, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3400, file: !1470, line: 576, baseType: !3423, size: 64, offset: 1280)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3400, file: !1470, line: 578, baseType: !351, size: 64, offset: 1344)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3400, file: !1470, line: 588, baseType: !3428, size: 512, align: 512, offset: 1536)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1470, line: 497, size: 512, align: 512, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3428, file: !1470, line: 498, baseType: !450, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3428, file: !1470, line: 499, baseType: !450, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3428, file: !1470, line: 500, baseType: !450, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3428, file: !1470, line: 501, baseType: !341, size: 32, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3428, file: !1470, line: 502, baseType: !341, size: 32, offset: 224)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3428, file: !1470, line: 503, baseType: !351, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3428, file: !1470, line: 504, baseType: !351, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3428, file: !1470, line: 505, baseType: !351, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3428, file: !1470, line: 506, baseType: !3439, size: 64, align: 64, offset: 448)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1470, line: 445, size: 64, align: 64, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3439, file: !1470, line: 446, baseType: !13, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3439, file: !1470, line: 447, baseType: !13, size: 32, offset: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3361, file: !1470, line: 798, baseType: !3444, size: 384, offset: 3072)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1470, line: 592, size: 384, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451, !3452}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3444, file: !1470, line: 593, baseType: !388, size: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3444, file: !1470, line: 594, baseType: !351, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3444, file: !1470, line: 595, baseType: !351, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3444, file: !1470, line: 596, baseType: !13, size: 32, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3444, file: !1470, line: 597, baseType: !313, size: 16, offset: 288)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3444, file: !1470, line: 598, baseType: !313, size: 16, offset: 304)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3444, file: !1470, line: 600, baseType: !3453, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3361, file: !1470, line: 799, baseType: !3455, size: 1792, offset: 3456)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1470, line: 610, size: 1792, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3455, file: !1470, line: 611, baseType: !770, size: 192, align: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3455, file: !1470, line: 618, baseType: !450, size: 64, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3455, file: !1470, line: 619, baseType: !450, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3455, file: !1470, line: 620, baseType: !450, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3455, file: !1470, line: 621, baseType: !450, size: 64, offset: 384)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3455, file: !1470, line: 622, baseType: !450, size: 64, offset: 448)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3455, file: !1470, line: 629, baseType: !748, size: 64, offset: 512)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3455, file: !1470, line: 630, baseType: !450, size: 64, offset: 576)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3455, file: !1470, line: 631, baseType: !13, size: 32, offset: 640)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3455, file: !1470, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3455, file: !1470, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3455, file: !1470, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3455, file: !1470, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3455, file: !1470, line: 662, baseType: !3066, size: 512, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3455, file: !1470, line: 671, baseType: !3066, size: 512, offset: 1216)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3455, file: !1470, line: 679, baseType: !3473, size: 64, offset: 1728)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3361, file: !1470, line: 800, baseType: !3475, size: 64, offset: 5248)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3477)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1470, line: 800, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3361, file: !1470, line: 809, baseType: !3479, size: 64, offset: 5312)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1470, line: 70, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3361, file: !1470, line: 825, baseType: !3482, size: 2048, align: 512, offset: 5632)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1470, line: 509, size: 2048, align: 512, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3482, file: !1470, line: 511, baseType: !450, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3482, file: !1470, line: 512, baseType: !450, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3482, file: !1470, line: 513, baseType: !450, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3482, file: !1470, line: 514, baseType: !450, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3482, file: !1470, line: 515, baseType: !450, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3482, file: !1470, line: 516, baseType: !450, size: 64, offset: 320)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3482, file: !1470, line: 518, baseType: !450, size: 64, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3482, file: !1470, line: 519, baseType: !450, size: 64, offset: 448)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3482, file: !1470, line: 520, baseType: !748, size: 64, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3482, file: !1470, line: 522, baseType: !450, size: 64, offset: 576)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3482, file: !1470, line: 523, baseType: !450, size: 64, offset: 640)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3482, file: !1470, line: 524, baseType: !748, size: 64, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3482, file: !1470, line: 526, baseType: !748, size: 64, offset: 768)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3482, file: !1470, line: 527, baseType: !450, size: 64, offset: 832)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3482, file: !1470, line: 529, baseType: !450, size: 64, offset: 896)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3482, file: !1470, line: 530, baseType: !450, size: 64, offset: 960)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3482, file: !1470, line: 531, baseType: !450, size: 64, offset: 1024)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3482, file: !1470, line: 532, baseType: !450, size: 64, offset: 1088)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3482, file: !1470, line: 533, baseType: !450, size: 64, offset: 1152)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3482, file: !1470, line: 535, baseType: !450, size: 64, offset: 1216)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3482, file: !1470, line: 536, baseType: !450, size: 64, offset: 1280)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3482, file: !1470, line: 537, baseType: !450, size: 64, offset: 1344)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3482, file: !1470, line: 538, baseType: !450, size: 64, offset: 1408)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3482, file: !1470, line: 539, baseType: !450, size: 64, offset: 1472)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3482, file: !1470, line: 540, baseType: !450, size: 64, offset: 1536)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3482, file: !1470, line: 541, baseType: !450, size: 64, offset: 1600)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3482, file: !1470, line: 542, baseType: !450, size: 64, offset: 1664)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3482, file: !1470, line: 543, baseType: !450, size: 64, offset: 1728)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3361, file: !1470, line: 833, baseType: !13, size: 32, offset: 7680)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3361, file: !1470, line: 836, baseType: !13, size: 32, offset: 7712)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3361, file: !1470, line: 837, baseType: !102, size: 32, offset: 7744)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3361, file: !1470, line: 838, baseType: !3516, size: 64, offset: 7808)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3519, line: 19, baseType: !3520)
!3519 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3519, line: 19, size: 64, elements: !3521)
!3521 = !{!3522}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3520, file: !3519, line: 19, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 64, elements: !255)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3361, file: !1470, line: 839, baseType: !3525, size: 64, offset: 7872)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3361, file: !1470, line: 840, baseType: !3518, size: 64, offset: 7936)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3361, file: !1470, line: 841, baseType: !348, size: 64, offset: 8000)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3361, file: !1470, line: 843, baseType: !313, size: 16, offset: 8064)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3361, file: !1470, line: 845, baseType: !313, size: 16, offset: 8080)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3361, file: !1470, line: 848, baseType: !102, size: 32, offset: 8096)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3361, file: !1470, line: 849, baseType: !3532, size: 32, offset: 8128)
!3532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1470, line: 718, size: 32, elements: !3533)
!3533 = !{!3534, !3541}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3532, file: !1470, line: 724, baseType: !3535, size: 32)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !1470, line: 719, size: 32, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3535, file: !1470, line: 720, baseType: !502, size: 8)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3535, file: !1470, line: 721, baseType: !502, size: 8, offset: 8)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3535, file: !1470, line: 722, baseType: !502, size: 8, offset: 16)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3535, file: !1470, line: 723, baseType: !502, size: 8, offset: 24)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3532, file: !1470, line: 725, baseType: !341, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3361, file: !1470, line: 850, baseType: !388, size: 128, offset: 8192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3361, file: !1470, line: 851, baseType: !3544, size: 64, offset: 8320)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1470, line: 60, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3361, file: !1470, line: 855, baseType: !351, size: 64, offset: 8384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3361, file: !1470, line: 856, baseType: !502, size: 8, offset: 8448)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3361, file: !1470, line: 857, baseType: !502, size: 8, offset: 8456)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3361, file: !1470, line: 858, baseType: !102, size: 32, offset: 8480)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3361, file: !1470, line: 859, baseType: !388, size: 128, offset: 8512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3361, file: !1470, line: 860, baseType: !102, size: 32, offset: 8640)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3361, file: !1470, line: 861, baseType: !388, size: 128, offset: 8704)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3361, file: !1470, line: 873, baseType: !3554, size: 256, offset: 8832)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1470, line: 376, size: 256, elements: !3555)
!3555 = !{!3556, !3557, !3558, !3559}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3554, file: !1470, line: 381, baseType: !351, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3554, file: !1470, line: 384, baseType: !452, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3554, file: !1470, line: 389, baseType: !452, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3554, file: !1470, line: 392, baseType: !452, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3361, file: !1470, line: 875, baseType: !388, size: 128, offset: 9088)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3361, file: !1470, line: 877, baseType: !3562, size: 320, offset: 9216)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3563, line: 86, size: 320, elements: !3564)
!3563 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3562, file: !3563, line: 87, baseType: !102, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3562, file: !3563, line: 88, baseType: !388, size: 128, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3562, file: !3563, line: 89, baseType: !388, size: 128, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3361, file: !1470, line: 878, baseType: !770, size: 192, align: 64, offset: 9536)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3361, file: !1470, line: 881, baseType: !930, size: 64, offset: 9728)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3361, file: !1470, line: 882, baseType: !930, size: 64, offset: 9792)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3361, file: !1470, line: 884, baseType: !102, size: 32, offset: 9856)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3361, file: !1470, line: 885, baseType: !102, size: 32, offset: 9888)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3361, file: !1470, line: 886, baseType: !102, size: 32, offset: 9920)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3361, file: !1470, line: 888, baseType: !102, size: 32, offset: 9952)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3361, file: !1470, line: 890, baseType: !351, size: 64, offset: 9984)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3361, file: !1470, line: 893, baseType: !13, size: 32, offset: 10048)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3361, file: !1470, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3361, file: !1470, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3361, file: !1470, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3361, file: !1470, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3361, file: !1470, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3361, file: !1470, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3361, file: !1470, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3361, file: !1470, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3361, file: !1470, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3361, file: !1470, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3361, file: !1470, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3361, file: !1470, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3361, file: !1470, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3361, file: !1470, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3361, file: !1470, line: 969, baseType: !351, size: 64, offset: 10176)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3361, file: !1470, line: 971, baseType: !3593, size: 448, offset: 10240)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !135, line: 25, size: 448, elements: !3594)
!3594 = !{!3595, !3596, !3601}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3593, file: !135, line: 26, baseType: !351, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3593, file: !135, line: 27, baseType: !3597, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!372, !3600}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, scope: !3593, file: !135, line: 28, baseType: !3602, size: 320, offset: 128)
!3602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3593, file: !135, line: 28, size: 320, elements: !3603)
!3603 = !{!3604, !3613, !3638}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3602, file: !135, line: 37, baseType: !3605, size: 320)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3602, file: !135, line: 30, size: 320, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610, !3611, !3612}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3605, file: !135, line: 31, baseType: !2763, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3605, file: !135, line: 32, baseType: !341, size: 32, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3605, file: !135, line: 33, baseType: !341, size: 32, offset: 96)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3605, file: !135, line: 34, baseType: !341, size: 32, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3605, file: !135, line: 35, baseType: !450, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3605, file: !135, line: 36, baseType: !2763, size: 64, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3602, file: !135, line: 47, baseType: !3614, size: 192)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3602, file: !135, line: 39, size: 192, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3637}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3614, file: !135, line: 40, baseType: !3109, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3614, file: !135, line: 41, baseType: !134, size: 32, offset: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, scope: !3614, file: !135, line: 42, baseType: !3619, size: 64, offset: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3614, file: !135, line: 42, size: 64, elements: !3620)
!3620 = !{!3621, !3629}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3619, file: !135, line: 43, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3624, line: 7, size: 128, elements: !3625)
!3624 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3625 = !{!3626, !3628}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3623, file: !3624, line: 8, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !370, line: 93, baseType: !578)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3623, file: !3624, line: 9, baseType: !578, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3619, file: !135, line: 44, baseType: !3630, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3632, line: 7, size: 64, elements: !3633)
!3632 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3633 = !{!3634, !3636}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3631, file: !3632, line: 8, baseType: !3635, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3632, line: 5, baseType: !1092)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3631, file: !3632, line: 9, baseType: !1092, size: 32, offset: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3614, file: !135, line: 46, baseType: !450, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3602, file: !135, line: 55, baseType: !3639, size: 256)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3602, file: !135, line: 49, size: 256, elements: !3640)
!3640 = !{!3641, !3644, !3645, !3646, !3647}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3639, file: !135, line: 50, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !135, line: 14, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3639, file: !135, line: 51, baseType: !102, size: 32, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3639, file: !135, line: 52, baseType: !102, size: 32, offset: 96)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3639, file: !135, line: 53, baseType: !351, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3639, file: !135, line: 54, baseType: !351, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3361, file: !1470, line: 973, baseType: !3649, size: 32, offset: 10688)
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !350, line: 27, baseType: !3650)
!3650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !370, line: 28, baseType: !102)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3361, file: !1470, line: 974, baseType: !3649, size: 32, offset: 10720)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3361, file: !1470, line: 978, baseType: !351, size: 64, offset: 10752)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3361, file: !1470, line: 987, baseType: !3360, size: 64, offset: 10816)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3361, file: !1470, line: 990, baseType: !3360, size: 64, offset: 10880)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3361, file: !1470, line: 995, baseType: !388, size: 128, offset: 10944)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3361, file: !1470, line: 996, baseType: !388, size: 128, offset: 11072)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3361, file: !1470, line: 997, baseType: !3360, size: 64, offset: 11200)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3361, file: !1470, line: 1005, baseType: !388, size: 128, offset: 11264)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3361, file: !1470, line: 1006, baseType: !388, size: 128, offset: 11392)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3361, file: !1470, line: 1009, baseType: !1011, size: 64, offset: 11520)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3361, file: !1470, line: 1010, baseType: !3662, size: 512, offset: 11584)
!3662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 512, elements: !1033)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3361, file: !1470, line: 1011, baseType: !388, size: 128, offset: 12096)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3361, file: !1470, line: 1012, baseType: !388, size: 128, offset: 12224)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3361, file: !1470, line: 1014, baseType: !2094, size: 64, offset: 12352)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3361, file: !1470, line: 1017, baseType: !2227, size: 64, offset: 12416)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3361, file: !1470, line: 1020, baseType: !2227, size: 64, offset: 12480)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3361, file: !1470, line: 1023, baseType: !348, size: 64, offset: 12544)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3361, file: !1470, line: 1025, baseType: !450, size: 64, offset: 12608)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3361, file: !1470, line: 1026, baseType: !450, size: 64, offset: 12672)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3361, file: !1470, line: 1031, baseType: !450, size: 64, offset: 12736)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3361, file: !1470, line: 1032, baseType: !3673, size: 192, offset: 12800)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1470, line: 324, size: 192, elements: !3674)
!3674 = !{!3675, !3676, !3677}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3673, file: !1470, line: 326, baseType: !450, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3673, file: !1470, line: 327, baseType: !450, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3673, file: !1470, line: 328, baseType: !757, size: 32, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3361, file: !1470, line: 1041, baseType: !351, size: 64, offset: 12992)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3361, file: !1470, line: 1042, baseType: !351, size: 64, offset: 13056)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3361, file: !1470, line: 1045, baseType: !450, size: 64, offset: 13120)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3361, file: !1470, line: 1048, baseType: !450, size: 64, offset: 13184)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3361, file: !1470, line: 1051, baseType: !351, size: 64, offset: 13248)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3361, file: !1470, line: 1052, baseType: !351, size: 64, offset: 13312)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3361, file: !1470, line: 1055, baseType: !3685, size: 640, offset: 13376)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3686, line: 132, size: 640, elements: !3687)
!3686 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3687 = !{!3688, !3694, !3695}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3685, file: !3686, line: 133, baseType: !3689, size: 576)
!3689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3690, size: 576, elements: !363)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3686, line: 117, size: 192, elements: !3691)
!3691 = !{!3692, !3693}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3690, file: !3686, line: 118, baseType: !450, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3690, file: !3686, line: 119, baseType: !3118, size: 128, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3685, file: !3686, line: 134, baseType: !13, size: 32, offset: 576)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3685, file: !3686, line: 135, baseType: !13, size: 32, offset: 608)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3361, file: !1470, line: 1058, baseType: !3697, size: 448, offset: 14016)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3686, line: 144, size: 448, elements: !3698)
!3698 = !{!3699, !3700, !3701}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3697, file: !3686, line: 145, baseType: !872, size: 128, align: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3697, file: !3686, line: 146, baseType: !977, size: 256, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3697, file: !3686, line: 147, baseType: !13, size: 32, offset: 384)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3361, file: !1470, line: 1064, baseType: !1057, size: 64, offset: 14464)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3361, file: !1470, line: 1067, baseType: !1057, size: 64, offset: 14528)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3361, file: !1470, line: 1070, baseType: !1057, size: 64, offset: 14592)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3361, file: !1470, line: 1074, baseType: !1084, size: 64, offset: 14656)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3361, file: !1470, line: 1084, baseType: !3707, size: 128, offset: 14720)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3708)
!3708 = !{!3709}
!3709 = !DISubrange(count: 16)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3361, file: !1470, line: 1086, baseType: !3711, size: 64, offset: 14848)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1470, line: 55, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3361, file: !1470, line: 1089, baseType: !3714, size: 64, offset: 14912)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3715, line: 12, size: 64, elements: !3716)
!3715 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3716 = !{!3717}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3714, file: !3715, line: 13, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3715, line: 8, flags: DIFlagFwdDecl)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3361, file: !1470, line: 1090, baseType: !3721, size: 128, offset: 14976)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3722, line: 13, size: 128, elements: !3723)
!3722 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3723 = !{!3724}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3721, file: !3722, line: 14, baseType: !388, size: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3361, file: !1470, line: 1097, baseType: !3726, size: 64, offset: 15104)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1470, line: 50, flags: DIFlagFwdDecl)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3361, file: !1470, line: 1100, baseType: !3729, size: 64, offset: 15168)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1470, line: 1100, flags: DIFlagFwdDecl)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3361, file: !1470, line: 1103, baseType: !3732, size: 64, offset: 15232)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1470, line: 53, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3361, file: !1470, line: 1107, baseType: !3735, size: 64, offset: 15296)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1470, line: 56, flags: DIFlagFwdDecl)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3361, file: !1470, line: 1110, baseType: !3738, size: 64, offset: 15360)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3740, line: 93, size: 8768, elements: !3741)
!3740 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3789, !3798, !3799, !3801, !3802, !3803, !3806, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3844, !3845, !3852, !3862, !3865, !3866, !3869, !3870, !3871, !3872, !3873, !3874}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3739, file: !3740, line: 94, baseType: !1015, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3739, file: !3740, line: 95, baseType: !494, size: 32, offset: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3739, file: !3740, line: 96, baseType: !102, size: 32, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3739, file: !3740, line: 97, baseType: !102, size: 32, offset: 96)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3739, file: !3740, line: 98, baseType: !388, size: 128, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3739, file: !3740, line: 100, baseType: !1037, size: 192, offset: 256)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3739, file: !3740, line: 103, baseType: !3360, size: 64, offset: 448)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3739, file: !3740, line: 106, baseType: !3750, size: 192, offset: 512)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1237, line: 32, size: 192, elements: !3751)
!3751 = !{!3752, !3753}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3750, file: !1237, line: 33, baseType: !388, size: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3750, file: !1237, line: 34, baseType: !3754, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3755, line: 25, baseType: !3756)
!3755 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3755, line: 23, size: 64, elements: !3757)
!3757 = !{!3758}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3756, file: !3755, line: 24, baseType: !3523, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3739, file: !3740, line: 109, baseType: !1024, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3739, file: !3740, line: 112, baseType: !102, size: 32, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3739, file: !3740, line: 114, baseType: !102, size: 32, offset: 800)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3739, file: !3740, line: 115, baseType: !3360, size: 64, offset: 832)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3739, file: !3740, line: 118, baseType: !102, size: 32, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3739, file: !3740, line: 119, baseType: !13, size: 32, offset: 928)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3739, file: !3740, line: 121, baseType: !3766, size: 64, offset: 960)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3740, line: 80, size: 448, elements: !3768)
!3768 = !{!3769, !3770, !3776}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3767, file: !3740, line: 81, baseType: !494, size: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3767, file: !3740, line: 82, baseType: !3771, size: 128, offset: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3740, line: 75, size: 128, elements: !3772)
!3772 = !{!3773, !3774}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3771, file: !3740, line: 76, baseType: !3360, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3771, file: !3740, line: 77, baseType: !3775, size: 64, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3767, file: !3740, line: 83, baseType: !882, size: 256, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3739, file: !3740, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3739, file: !3740, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3739, file: !3740, line: 138, baseType: !13, size: 32, offset: 1056)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3739, file: !3740, line: 139, baseType: !388, size: 128, offset: 1088)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3739, file: !3740, line: 142, baseType: !3066, size: 512, offset: 1216)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3739, file: !3740, line: 143, baseType: !3046, size: 64, offset: 1728)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3739, file: !3740, line: 150, baseType: !3784, size: 256, offset: 1792)
!3784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3785, size: 256, elements: !218)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3740, line: 38, size: 128, elements: !3786)
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3785, file: !3740, line: 39, baseType: !450, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3785, file: !3740, line: 40, baseType: !450, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3739, file: !3740, line: 156, baseType: !3790, size: 192, offset: 2048)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3740, line: 66, size: 192, elements: !3791)
!3791 = !{!3792}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3790, file: !3740, line: 67, baseType: !3793, size: 192)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3740, line: 47, size: 192, elements: !3794)
!3794 = !{!3795, !3796, !3797}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3793, file: !3740, line: 48, baseType: !744, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3793, file: !3740, line: 49, baseType: !744, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3793, file: !3740, line: 50, baseType: !744, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3739, file: !3740, line: 160, baseType: !3685, size: 640, offset: 2240)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3739, file: !3740, line: 163, baseType: !3800, size: 256, offset: 2880)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 256, elements: !1033)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3739, file: !3740, line: 169, baseType: !1011, size: 64, offset: 3136)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3739, file: !3740, line: 172, baseType: !102, size: 32, offset: 3200)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3739, file: !3740, line: 174, baseType: !3804, size: 64, offset: 3264)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3740, line: 174, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3739, file: !3740, line: 185, baseType: !3807, size: 64, offset: 3328)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !421, line: 860, baseType: !3808)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 853, size: 64, elements: !3809)
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3808, file: !421, line: 858, baseType: !420, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3808, file: !421, line: 859, baseType: !474, size: 32, offset: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3739, file: !3740, line: 186, baseType: !450, size: 64, offset: 3392)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3739, file: !3740, line: 186, baseType: !450, size: 64, offset: 3456)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3739, file: !3740, line: 186, baseType: !450, size: 64, offset: 3520)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3739, file: !3740, line: 186, baseType: !450, size: 64, offset: 3584)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3739, file: !3740, line: 187, baseType: !450, size: 64, offset: 3648)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3739, file: !3740, line: 188, baseType: !450, size: 64, offset: 3712)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3739, file: !3740, line: 189, baseType: !3673, size: 192, offset: 3776)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3739, file: !3740, line: 190, baseType: !351, size: 64, offset: 3968)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3739, file: !3740, line: 190, baseType: !351, size: 64, offset: 4032)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3739, file: !3740, line: 190, baseType: !351, size: 64, offset: 4096)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3739, file: !3740, line: 190, baseType: !351, size: 64, offset: 4160)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3739, file: !3740, line: 191, baseType: !351, size: 64, offset: 4224)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3739, file: !3740, line: 191, baseType: !351, size: 64, offset: 4288)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3739, file: !3740, line: 191, baseType: !351, size: 64, offset: 4352)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3739, file: !3740, line: 191, baseType: !351, size: 64, offset: 4416)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3739, file: !3740, line: 192, baseType: !351, size: 64, offset: 4480)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3739, file: !3740, line: 192, baseType: !351, size: 64, offset: 4544)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3739, file: !3740, line: 192, baseType: !351, size: 64, offset: 4608)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3739, file: !3740, line: 192, baseType: !351, size: 64, offset: 4672)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3739, file: !3740, line: 193, baseType: !351, size: 64, offset: 4736)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3739, file: !3740, line: 193, baseType: !351, size: 64, offset: 4800)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3739, file: !3740, line: 194, baseType: !3834, size: 448, offset: 4864)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3835, line: 12, size: 448, elements: !3836)
!3835 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3834, file: !3835, line: 15, baseType: !450, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3834, file: !3835, line: 17, baseType: !450, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3834, file: !3835, line: 19, baseType: !450, size: 64, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3834, file: !3835, line: 21, baseType: !450, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3834, file: !3835, line: 29, baseType: !450, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3834, file: !3835, line: 35, baseType: !450, size: 64, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3834, file: !3835, line: 44, baseType: !450, size: 64, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3739, file: !3740, line: 202, baseType: !452, size: 64, offset: 5312)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3739, file: !3740, line: 213, baseType: !3846, size: 2048, offset: 5376)
!3846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3847, size: 2048, elements: !3708)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3848, line: 43, size: 128, elements: !3849)
!3848 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3849 = !{!3850, !3851}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3847, file: !3848, line: 44, baseType: !700, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3847, file: !3848, line: 45, baseType: !700, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3739, file: !3740, line: 216, baseType: !3853, size: 448, offset: 7424)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3740, line: 30, size: 448, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3853, file: !3740, line: 31, baseType: !102, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3853, file: !3740, line: 32, baseType: !372, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3853, file: !3740, line: 33, baseType: !351, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3853, file: !3740, line: 34, baseType: !450, size: 64, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3853, file: !3740, line: 34, baseType: !450, size: 64, offset: 256)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3853, file: !3740, line: 35, baseType: !351, size: 64, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3853, file: !3740, line: 35, baseType: !351, size: 64, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3739, file: !3740, line: 219, baseType: !3863, size: 64, offset: 7872)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3740, line: 219, flags: DIFlagFwdDecl)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3739, file: !3740, line: 222, baseType: !13, size: 32, offset: 7936)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3739, file: !3740, line: 223, baseType: !3867, size: 64, offset: 8000)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3740, line: 223, flags: DIFlagFwdDecl)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3739, file: !3740, line: 230, baseType: !868, size: 8, offset: 8064)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3739, file: !3740, line: 231, baseType: !1120, size: 16, offset: 8080)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3739, file: !3740, line: 232, baseType: !1120, size: 16, offset: 8096)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3739, file: !3740, line: 234, baseType: !930, size: 64, offset: 8128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3739, file: !3740, line: 237, baseType: !977, size: 256, offset: 8192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3739, file: !3740, line: 243, baseType: !738, size: 320, offset: 8448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3361, file: !1470, line: 1111, baseType: !3876, size: 64, offset: 15424)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3740, line: 20, size: 16640, elements: !3878)
!3878 = !{!3879, !3880, !3881, !3882}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3877, file: !3740, line: 21, baseType: !474, size: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3877, file: !3740, line: 22, baseType: !1015, size: 32, offset: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3877, file: !3740, line: 23, baseType: !1037, size: 192, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3877, file: !3740, line: 24, baseType: !3883, size: 16384, offset: 256)
!3883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3884, size: 16384, elements: !660)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1237, line: 51, size: 256, elements: !3885)
!3885 = !{!3886}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3884, file: !1237, line: 52, baseType: !3887, size: 256)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1237, line: 37, size: 256, elements: !3888)
!3888 = !{!3889, !3896, !3897, !3901}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3887, file: !1237, line: 39, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3891, line: 83, baseType: !3892)
!3891 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3891, line: 82, baseType: !3894)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !102}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3887, file: !1237, line: 40, baseType: !351, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3887, file: !1237, line: 46, baseType: !3898, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3891, line: 86, baseType: !3899)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3891, line: 85, baseType: !2432)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3887, file: !1237, line: 48, baseType: !3754, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3361, file: !1470, line: 1112, baseType: !3754, size: 64, offset: 15488)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3361, file: !1470, line: 1113, baseType: !3754, size: 64, offset: 15552)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3361, file: !1470, line: 1115, baseType: !3754, size: 64, offset: 15616)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3361, file: !1470, line: 1116, baseType: !3750, size: 192, offset: 15680)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3361, file: !1470, line: 1117, baseType: !351, size: 64, offset: 15872)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3361, file: !1470, line: 1118, baseType: !698, size: 64, offset: 15936)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3361, file: !1470, line: 1119, baseType: !13, size: 32, offset: 16000)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3361, file: !1470, line: 1121, baseType: !875, size: 64, offset: 16064)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3361, file: !1470, line: 1125, baseType: !3911, size: 64, offset: 16128)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1470, line: 43, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3361, file: !1470, line: 1127, baseType: !380, size: 32, offset: 16192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3361, file: !1470, line: 1128, baseType: !13, size: 32, offset: 16224)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3361, file: !1470, line: 1130, baseType: !3916, size: 128, offset: 16256)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3917, line: 37, size: 128, elements: !3918)
!3917 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3918 = !{!3919, !3920, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3916, file: !3917, line: 38, baseType: !102, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3916, file: !3917, line: 39, baseType: !494, size: 32, offset: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3916, file: !3917, line: 40, baseType: !3922, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3917, line: 24, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3361, file: !1470, line: 1131, baseType: !3925, size: 256, offset: 16384)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3926, line: 12, size: 256, elements: !3927)
!3926 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3927 = !{!3928, !3929, !3930, !3931}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3925, file: !3926, line: 13, baseType: !353, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3925, file: !3926, line: 14, baseType: !351, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3925, file: !3926, line: 15, baseType: !351, size: 64, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3925, file: !3926, line: 16, baseType: !868, size: 8, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3361, file: !1470, line: 1134, baseType: !450, size: 64, offset: 16640)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3361, file: !1470, line: 1135, baseType: !450, size: 64, offset: 16704)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3361, file: !1470, line: 1138, baseType: !474, size: 32, offset: 16768)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3361, file: !1470, line: 1141, baseType: !757, size: 32, offset: 16800)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3361, file: !1470, line: 1143, baseType: !3937, size: 64, offset: 16832)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1470, line: 735, size: 64, elements: !3938)
!3938 = !{!3939}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3937, file: !1470, line: 736, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3361, file: !1470, line: 1147, baseType: !762, size: 128, offset: 16896)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3361, file: !1470, line: 1149, baseType: !3360, size: 64, offset: 17024)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3361, file: !1470, line: 1151, baseType: !3944, size: 64, offset: 17088)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1470, line: 1151, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3361, file: !1470, line: 1188, baseType: !348, size: 64, offset: 17152)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3361, file: !1470, line: 1191, baseType: !3948, size: 64, offset: 17216)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1470, line: 44, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3361, file: !1470, line: 1194, baseType: !3951, size: 64, offset: 17280)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1470, line: 45, flags: DIFlagFwdDecl)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3361, file: !1470, line: 1197, baseType: !3954, size: 64, offset: 17344)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1470, line: 61, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3361, file: !1470, line: 1199, baseType: !3957, size: 64, offset: 17408)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2840, line: 99, size: 128, elements: !3959)
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3958, file: !2840, line: 100, baseType: !742, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3958, file: !2840, line: 101, baseType: !494, size: 32, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3958, file: !2840, line: 103, baseType: !313, size: 16, offset: 96)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3361, file: !1470, line: 1202, baseType: !3964, size: 64, offset: 17472)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1470, line: 48, flags: DIFlagFwdDecl)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3361, file: !1470, line: 1205, baseType: !351, size: 64, offset: 17536)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3361, file: !1470, line: 1206, baseType: !3968, size: 64, offset: 17600)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1237, line: 14, baseType: !3970)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1237, line: 12, size: 384, elements: !3971)
!3971 = !{!3972}
!3972 = !DIDerivedType(tag: DW_TAG_member, scope: !3970, file: !1237, line: 13, baseType: !3973, size: 384)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !1237, line: 13, size: 384, elements: !3974)
!3974 = !{!3975, !3976, !3977, !3978}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3973, file: !1237, line: 13, baseType: !102, size: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3973, file: !1237, line: 13, baseType: !102, size: 32, offset: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3973, file: !1237, line: 13, baseType: !102, size: 32, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3973, file: !1237, line: 13, baseType: !3979, size: 256, offset: 128)
!3979 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3980, line: 37, size: 256, elements: !3981)
!3980 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3981 = !{!3982, !3987, !4000, !4006, !4015, !4042, !4047}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3979, file: !3980, line: 42, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3979, file: !3980, line: 39, size: 64, elements: !3984)
!3984 = !{!3985, !3986}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3983, file: !3980, line: 40, baseType: !3650, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3983, file: !3980, line: 41, baseType: !386, size: 32, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3979, file: !3980, line: 50, baseType: !3988, size: 192)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3979, file: !3980, line: 45, size: 192, elements: !3989)
!3989 = !{!3990, !3992, !3993, !3999}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3988, file: !3980, line: 46, baseType: !3991, size: 32)
!3991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !370, line: 95, baseType: !102)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3988, file: !3980, line: 47, baseType: !102, size: 32, offset: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3988, file: !3980, line: 48, baseType: !3994, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3980, line: 11, baseType: !3995)
!3995 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3980, line: 8, size: 64, elements: !3996)
!3996 = !{!3997, !3998}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3995, file: !3980, line: 9, baseType: !102, size: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3995, file: !3980, line: 10, baseType: !348, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3988, file: !3980, line: 49, baseType: !102, size: 32, offset: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3979, file: !3980, line: 57, baseType: !4001, size: 128)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3979, file: !3980, line: 53, size: 128, elements: !4002)
!4002 = !{!4003, !4004, !4005}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4001, file: !3980, line: 54, baseType: !3650, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4001, file: !3980, line: 55, baseType: !386, size: 32, offset: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4001, file: !3980, line: 56, baseType: !3994, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3979, file: !3980, line: 66, baseType: !4007, size: 256)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3979, file: !3980, line: 60, size: 256, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012, !4014}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4007, file: !3980, line: 61, baseType: !3650, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4007, file: !3980, line: 62, baseType: !386, size: 32, offset: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4007, file: !3980, line: 63, baseType: !102, size: 32, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4007, file: !3980, line: 64, baseType: !4013, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !370, line: 94, baseType: !371)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4007, file: !3980, line: 65, baseType: !4013, size: 64, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3979, file: !3980, line: 105, baseType: !4016, size: 256)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3979, file: !3980, line: 69, size: 256, elements: !4017)
!4017 = !{!4018, !4019}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4016, file: !3980, line: 70, baseType: !348, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !3980, line: 79, baseType: !4020, size: 192, offset: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4016, file: !3980, line: 79, size: 192, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4031, !4036}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4020, file: !3980, line: 81, baseType: !102, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4020, file: !3980, line: 86, baseType: !1120, size: 16)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4020, file: !3980, line: 92, baseType: !4025, size: 192)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4020, file: !3980, line: 88, size: 192, elements: !4026)
!4026 = !{!4027, !4029, !4030}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4025, file: !3980, line: 89, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !235)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4025, file: !3980, line: 90, baseType: !348, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4025, file: !3980, line: 91, baseType: !348, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4020, file: !3980, line: 97, baseType: !4032, size: 96)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4020, file: !3980, line: 94, size: 96, elements: !4033)
!4033 = !{!4034, !4035}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4032, file: !3980, line: 95, baseType: !4028, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4032, file: !3980, line: 96, baseType: !333, size: 32, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4020, file: !3980, line: 103, baseType: !4037, size: 128)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4020, file: !3980, line: 99, size: 128, elements: !4038)
!4038 = !{!4039, !4040, !4041}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4037, file: !3980, line: 100, baseType: !351, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4037, file: !3980, line: 101, baseType: !333, size: 32, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4037, file: !3980, line: 102, baseType: !333, size: 32, offset: 96)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3979, file: !3980, line: 111, baseType: !4043, size: 128)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3979, file: !3980, line: 108, size: 128, elements: !4044)
!4044 = !{!4045, !4046}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4043, file: !3980, line: 109, baseType: !372, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4043, file: !3980, line: 110, baseType: !102, size: 32, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3979, file: !3980, line: 118, baseType: !4048, size: 128)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3979, file: !3980, line: 114, size: 128, elements: !4049)
!4049 = !{!4050, !4051, !4052}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4048, file: !3980, line: 115, baseType: !348, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4048, file: !3980, line: 116, baseType: !102, size: 32, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4048, file: !3980, line: 117, baseType: !13, size: 32, offset: 96)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3361, file: !1470, line: 1208, baseType: !3834, size: 448, offset: 17664)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3361, file: !1470, line: 1215, baseType: !450, size: 64, offset: 18112)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3361, file: !1470, line: 1217, baseType: !450, size: 64, offset: 18176)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3361, file: !1470, line: 1219, baseType: !450, size: 64, offset: 18240)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3361, file: !1470, line: 1223, baseType: !4058, size: 64, offset: 18304)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4059, line: 99, baseType: !4060)
!4059 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4059, line: 99, size: 64, elements: !4061)
!4061 = !{!4062}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4060, file: !4059, line: 99, baseType: !3523, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3361, file: !1470, line: 1225, baseType: !420, size: 32, offset: 18368)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3361, file: !1470, line: 1226, baseType: !102, size: 32, offset: 18400)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3361, file: !1470, line: 1227, baseType: !102, size: 32, offset: 18432)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3361, file: !1470, line: 1231, baseType: !4067, size: 64, offset: 18496)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1470, line: 1231, flags: DIFlagFwdDecl)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3361, file: !1470, line: 1233, baseType: !388, size: 128, offset: 18560)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3361, file: !1470, line: 1240, baseType: !4071, size: 64, offset: 18688)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1470, line: 62, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3361, file: !1470, line: 1242, baseType: !4074, size: 64, offset: 18752)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1470, line: 1242, flags: DIFlagFwdDecl)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3361, file: !1470, line: 1244, baseType: !388, size: 128, offset: 18816)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3361, file: !1470, line: 1245, baseType: !4078, size: 64, offset: 18944)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1470, line: 51, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3361, file: !1470, line: 1246, baseType: !977, size: 256, offset: 19008)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3361, file: !1470, line: 1247, baseType: !13, size: 32, offset: 19264)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3361, file: !1470, line: 1250, baseType: !4083, size: 64, offset: 19328)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1470, line: 57, flags: DIFlagFwdDecl)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3361, file: !1470, line: 1251, baseType: !977, size: 256, offset: 19392)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3361, file: !1470, line: 1252, baseType: !388, size: 128, offset: 19648)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3361, file: !1470, line: 1259, baseType: !1740, size: 64, offset: 19776)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3361, file: !1470, line: 1260, baseType: !1120, size: 16, offset: 19840)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3361, file: !1470, line: 1261, baseType: !1120, size: 16, offset: 19856)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3361, file: !1470, line: 1314, baseType: !4091, size: 64, offset: 19904)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4093, line: 62, size: 256, align: 256, elements: !4094)
!4093 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4092, file: !4093, line: 75, baseType: !333, size: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4092, file: !4093, line: 90, baseType: !333, size: 32, offset: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4092, file: !4093, line: 112, baseType: !451, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4092, file: !4093, line: 132, baseType: !333, size: 32, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4092, file: !4093, line: 140, baseType: !333, size: 32, offset: 160)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4092, file: !4093, line: 149, baseType: !333, size: 32, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4092, file: !4093, line: 154, baseType: !284, offset: 224)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3361, file: !1470, line: 1315, baseType: !341, size: 32, offset: 19968)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3361, file: !1470, line: 1316, baseType: !341, size: 32, offset: 20000)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3361, file: !1470, line: 1321, baseType: !351, size: 64, offset: 20032)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3361, file: !1470, line: 1325, baseType: !102, size: 32, offset: 20096)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3361, file: !1470, line: 1326, baseType: !102, size: 32, offset: 20128)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3361, file: !1470, line: 1327, baseType: !102, size: 32, offset: 20160)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3361, file: !1470, line: 1328, baseType: !102, size: 32, offset: 20192)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3361, file: !1470, line: 1329, baseType: !872, size: 128, align: 64, offset: 20224)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3361, file: !1470, line: 1332, baseType: !4111, size: 128, offset: 20352)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4112, line: 51, size: 128, elements: !4113)
!4112 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4113 = !{!4114, !4119, !4120}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4111, file: !4112, line: 60, baseType: !4115, size: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4116, line: 7, size: 64, elements: !4117)
!4116 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4117 = !{!4118}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4115, file: !4116, line: 12, baseType: !3520, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4111, file: !4112, line: 63, baseType: !868, size: 8, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4111, file: !4112, line: 70, baseType: !868, size: 8, offset: 72)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3361, file: !1470, line: 1335, baseType: !1468, size: 64, offset: 20480)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3361, file: !1470, line: 1337, baseType: !4123, size: 128, offset: 20544)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4112, line: 39, size: 128, elements: !4124)
!4124 = !{!4125, !4126, !4127}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4123, file: !4112, line: 40, baseType: !787, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4123, file: !4112, line: 42, baseType: !333, size: 32, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4123, file: !4112, line: 43, baseType: !333, size: 32, offset: 96)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3361, file: !1470, line: 1340, baseType: !4129, size: 64, offset: 20672)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1470, line: 69, flags: DIFlagFwdDecl)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3361, file: !1470, line: 1351, baseType: !102, size: 32, offset: 20736)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3361, file: !1470, line: 1352, baseType: !102, size: 32, offset: 20768)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3361, file: !1470, line: 1354, baseType: !351, size: 64, offset: 20800)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3361, file: !1470, line: 1364, baseType: !450, size: 64, offset: 20864)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3361, file: !1470, line: 1365, baseType: !450, size: 64, offset: 20928)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3361, file: !1470, line: 1412, baseType: !351, size: 64, offset: 20992)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3361, file: !1470, line: 1453, baseType: !2835, size: 64, offset: 21056)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3361, file: !1470, line: 1457, baseType: !4139, size: 64, offset: 21120)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !141, line: 61, size: 576, elements: !4141)
!4141 = !{!4142, !4143, !4162, !4165, !4166, !4199, !4209}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4140, file: !141, line: 62, baseType: !140, size: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, scope: !4140, file: !141, line: 64, baseType: !4144, size: 192, offset: 64)
!4144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4140, file: !141, line: 64, size: 192, elements: !4145)
!4145 = !{!4146, !4157}
!4146 = !DIDerivedType(tag: DW_TAG_member, scope: !4144, file: !141, line: 65, baseType: !4147, size: 192)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4144, file: !141, line: 65, size: 192, elements: !4148)
!4148 = !{!4149, !4156}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4147, file: !141, line: 66, baseType: !4150, size: 128)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4151, line: 50, size: 128, elements: !4152)
!4151 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4152 = !{!4153, !4154, !4155}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4150, file: !4151, line: 52, baseType: !351, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4150, file: !4151, line: 54, baseType: !13, size: 32, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4150, file: !4151, line: 55, baseType: !13, size: 32, offset: 96)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4147, file: !141, line: 67, baseType: !351, size: 64, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, scope: !4144, file: !141, line: 70, baseType: !4158, size: 192)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4144, file: !141, line: 70, size: 192, elements: !4159)
!4159 = !{!4160, !4161}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4158, file: !141, line: 71, baseType: !872, size: 128, align: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4158, file: !141, line: 72, baseType: !351, size: 64, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4140, file: !141, line: 76, baseType: !4163, size: 64, offset: 256)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !141, line: 76, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4140, file: !141, line: 77, baseType: !351, size: 64, offset: 320)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4140, file: !141, line: 79, baseType: !4167, size: 64, offset: 384)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4151, line: 25, size: 256, elements: !4169)
!4169 = !{!4170, !4176, !4180}
!4170 = !DIDerivedType(tag: DW_TAG_member, scope: !4168, file: !4151, line: 26, baseType: !4171, size: 128)
!4171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4168, file: !4151, line: 26, size: 128, elements: !4172)
!4172 = !{!4173, !4175}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4171, file: !4151, line: 27, baseType: !4174, size: 128)
!4174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 128, elements: !3708)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4171, file: !4151, line: 28, baseType: !4174, size: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4168, file: !4151, line: 31, baseType: !4177, size: 64, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4179)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4151, line: 23, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, scope: !4168, file: !4151, line: 33, baseType: !4181, size: 64, offset: 192)
!4181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4168, file: !4151, line: 33, size: 64, elements: !4182)
!4182 = !{!4183, !4189, !4194}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4181, file: !4151, line: 38, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4181, file: !4151, line: 34, size: 64, elements: !4185)
!4185 = !{!4186, !4187, !4188}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4184, file: !4151, line: 35, baseType: !1092, size: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4184, file: !4151, line: 36, baseType: !502, size: 8, offset: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4184, file: !4151, line: 37, baseType: !502, size: 8, offset: 40)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4181, file: !4151, line: 42, baseType: !4190, size: 16)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4181, file: !4151, line: 39, size: 16, elements: !4191)
!4191 = !{!4192, !4193}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4190, file: !4151, line: 40, baseType: !502, size: 8)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4190, file: !4151, line: 41, baseType: !502, size: 8, offset: 8)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4181, file: !4151, line: 46, baseType: !4195, size: 16)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4181, file: !4151, line: 43, size: 16, elements: !4196)
!4196 = !{!4197, !4198}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4195, file: !4151, line: 44, baseType: !502, size: 8)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4195, file: !4151, line: 45, baseType: !502, size: 8, offset: 8)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4140, file: !141, line: 81, baseType: !4200, size: 64, offset: 448)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !141, line: 85, size: 384, elements: !4202)
!4202 = !{!4203, !4204, !4205, !4206, !4207, !4208}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4201, file: !141, line: 86, baseType: !4163, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4201, file: !141, line: 87, baseType: !351, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4201, file: !141, line: 88, baseType: !351, size: 64, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4201, file: !141, line: 89, baseType: !351, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4201, file: !141, line: 90, baseType: !868, size: 8, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4201, file: !141, line: 92, baseType: !4200, size: 64, offset: 320)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4140, file: !141, line: 82, baseType: !13, size: 32, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3361, file: !1470, line: 1463, baseType: !4211, offset: 21184)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1470, line: 739, elements: !951)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3361, file: !1470, line: 1470, baseType: !872, size: 128, align: 64, offset: 21184)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3361, file: !1470, line: 1471, baseType: !1015, size: 32, offset: 21312)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3361, file: !1470, line: 1472, baseType: !102, size: 32, offset: 21344)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3361, file: !1470, line: 1474, baseType: !3360, size: 64, offset: 21376)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3361, file: !1470, line: 1475, baseType: !2327, size: 320, offset: 21440)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3361, file: !1470, line: 1478, baseType: !4218, size: 64, offset: 21760)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4220, line: 14, flags: DIFlagFwdDecl)
!4220 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3361, file: !1470, line: 1482, baseType: !1015, size: 32, offset: 21824)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3361, file: !1470, line: 1489, baseType: !348, size: 64, offset: 21888)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3361, file: !1470, line: 1504, baseType: !348, size: 64, offset: 21952)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3361, file: !1470, line: 1505, baseType: !451, size: 64, offset: 22016)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3361, file: !1470, line: 1506, baseType: !450, size: 64, offset: 22080)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3361, file: !1470, line: 1507, baseType: !451, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3361, file: !1470, line: 1508, baseType: !451, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3361, file: !1470, line: 1509, baseType: !451, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3361, file: !1470, line: 1510, baseType: !872, size: 128, align: 64, offset: 22208)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3361, file: !1470, line: 1511, baseType: !102, size: 32, offset: 22336)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3361, file: !1470, line: 1515, baseType: !4232, size: 64, offset: 22400)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !966, line: 56, size: 64, elements: !4233)
!4233 = !{!4234}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4232, file: !966, line: 57, baseType: !969, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3361, file: !1470, line: 1518, baseType: !4232, size: 64, offset: 22464)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3361, file: !1470, line: 1528, baseType: !872, size: 128, align: 64, offset: 22528)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3361, file: !1470, line: 1552, baseType: !4238, size: 35328, offset: 23040)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4239, line: 430, size: 35328, elements: !4240)
!4239 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4240 = !{!4241, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4270, !4271, !4272, !4273, !4274, !4275, !4278, !4279, !4280, !4281}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4238, file: !4239, line: 432, baseType: !4242, size: 192)
!4242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4243, size: 192, elements: !363)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4244, line: 16, size: 64, elements: !4245)
!4244 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4245 = !{!4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4243, file: !4244, line: 17, baseType: !323, size: 16)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4243, file: !4244, line: 18, baseType: !323, size: 16, offset: 16)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4243, file: !4244, line: 19, baseType: !323, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4243, file: !4244, line: 19, baseType: !323, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4243, file: !4244, line: 19, baseType: !323, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4243, file: !4244, line: 19, baseType: !323, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4243, file: !4244, line: 19, baseType: !323, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4243, file: !4244, line: 20, baseType: !323, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4243, file: !4244, line: 20, baseType: !323, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4243, file: !4244, line: 20, baseType: !323, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4243, file: !4244, line: 20, baseType: !323, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4243, file: !4244, line: 20, baseType: !323, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4243, file: !4244, line: 20, baseType: !323, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4238, file: !4239, line: 436, baseType: !351, size: 64, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4238, file: !4239, line: 440, baseType: !313, size: 16, offset: 256)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4238, file: !4239, line: 441, baseType: !313, size: 16, offset: 272)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4238, file: !4239, line: 442, baseType: !313, size: 16, offset: 288)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4238, file: !4239, line: 443, baseType: !313, size: 16, offset: 304)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4238, file: !4239, line: 447, baseType: !351, size: 64, offset: 320)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4238, file: !4239, line: 448, baseType: !351, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4238, file: !4239, line: 459, baseType: !4267, size: 256, offset: 448)
!4267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4268, size: 256, elements: !1033)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4239, line: 428, flags: DIFlagFwdDecl)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4238, file: !4239, line: 461, baseType: !351, size: 64, offset: 704)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4238, file: !4239, line: 463, baseType: !351, size: 64, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4238, file: !4239, line: 465, baseType: !351, size: 64, offset: 832)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4238, file: !4239, line: 466, baseType: !351, size: 64, offset: 896)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4238, file: !4239, line: 467, baseType: !351, size: 64, offset: 960)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4238, file: !4239, line: 473, baseType: !4276, size: 64, offset: 1024)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4239, line: 10, flags: DIFlagFwdDecl)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4238, file: !4239, line: 480, baseType: !351, size: 64, offset: 1088)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4238, file: !4239, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4238, file: !4239, line: 491, baseType: !341, size: 32, offset: 1184)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4238, file: !4239, line: 501, baseType: !4282, size: 33792, offset: 1536)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4283, line: 448, size: 33792, elements: !4284)
!4283 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4284 = !{!4285, !4286, !4287, !4449, !4450, !4456, !4457}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4282, file: !4283, line: 461, baseType: !13, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4282, file: !4283, line: 468, baseType: !351, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4282, file: !4283, line: 476, baseType: !4288, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4283, line: 356, size: 33280, align: 512, elements: !4290)
!4290 = !{!4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4289, file: !4283, line: 358, baseType: !13, size: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4289, file: !4283, line: 361, baseType: !13, size: 32, offset: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4289, file: !4283, line: 364, baseType: !450, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4289, file: !4283, line: 367, baseType: !450, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4289, file: !4283, line: 370, baseType: !450, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4289, file: !4283, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4289, file: !4283, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4289, file: !4283, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4289, file: !4283, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4289, file: !4283, line: 397, baseType: !4301, size: 32768, offset: 512)
!4301 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4283, line: 348, size: 32768, elements: !4302)
!4302 = !{!4303, !4318, !4355, !4432, !4445}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4301, file: !4283, line: 349, baseType: !4304, size: 896)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4283, line: 12, size: 896, elements: !4305)
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4317}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4304, file: !4283, line: 13, baseType: !341, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4304, file: !4283, line: 14, baseType: !341, size: 32, offset: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4304, file: !4283, line: 15, baseType: !341, size: 32, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4304, file: !4283, line: 16, baseType: !341, size: 32, offset: 96)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4304, file: !4283, line: 17, baseType: !341, size: 32, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4304, file: !4283, line: 18, baseType: !341, size: 32, offset: 160)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4304, file: !4283, line: 19, baseType: !341, size: 32, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4304, file: !4283, line: 22, baseType: !4314, size: 640, offset: 224)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 640, elements: !4315)
!4315 = !{!4316}
!4316 = !DISubrange(count: 20)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4304, file: !4283, line: 25, baseType: !341, size: 32, offset: 864)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4301, file: !4283, line: 350, baseType: !4319, size: 4096, align: 128)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4283, line: 34, size: 4096, align: 128, elements: !4320)
!4320 = !{!4321, !4322, !4323, !4324, !4325, !4340, !4341, !4342, !4344, !4346, !4350}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4319, file: !4283, line: 35, baseType: !323, size: 16)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4319, file: !4283, line: 36, baseType: !323, size: 16, offset: 16)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4319, file: !4283, line: 37, baseType: !323, size: 16, offset: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4319, file: !4283, line: 38, baseType: !323, size: 16, offset: 48)
!4325 = !DIDerivedType(tag: DW_TAG_member, scope: !4319, file: !4283, line: 39, baseType: !4326, size: 128, offset: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4319, file: !4283, line: 39, size: 128, elements: !4327)
!4327 = !{!4328, !4333}
!4328 = !DIDerivedType(tag: DW_TAG_member, scope: !4326, file: !4283, line: 40, baseType: !4329, size: 128)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4326, file: !4283, line: 40, size: 128, elements: !4330)
!4330 = !{!4331, !4332}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4329, file: !4283, line: 41, baseType: !450, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4329, file: !4283, line: 42, baseType: !450, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, scope: !4326, file: !4283, line: 44, baseType: !4334, size: 128)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4326, file: !4283, line: 44, size: 128, elements: !4335)
!4335 = !{!4336, !4337, !4338, !4339}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4334, file: !4283, line: 45, baseType: !341, size: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4334, file: !4283, line: 46, baseType: !341, size: 32, offset: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4334, file: !4283, line: 47, baseType: !341, size: 32, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4334, file: !4283, line: 48, baseType: !341, size: 32, offset: 96)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4319, file: !4283, line: 51, baseType: !341, size: 32, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4319, file: !4283, line: 52, baseType: !341, size: 32, offset: 224)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4319, file: !4283, line: 55, baseType: !4343, size: 1024, offset: 256)
!4343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 1024, elements: !460)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4319, file: !4283, line: 58, baseType: !4345, size: 2048, offset: 1280)
!4345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 2048, elements: !660)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4319, file: !4283, line: 60, baseType: !4347, size: 384, offset: 3328)
!4347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 384, elements: !4348)
!4348 = !{!4349}
!4349 = !DISubrange(count: 12)
!4350 = !DIDerivedType(tag: DW_TAG_member, scope: !4319, file: !4283, line: 62, baseType: !4351, size: 384, offset: 3712)
!4351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4319, file: !4283, line: 62, size: 384, elements: !4352)
!4352 = !{!4353, !4354}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4351, file: !4283, line: 63, baseType: !4347, size: 384)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4351, file: !4283, line: 64, baseType: !4347, size: 384)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4301, file: !4283, line: 351, baseType: !4356, size: 1088)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4283, line: 79, size: 1088, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4431}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4356, file: !4283, line: 80, baseType: !341, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4356, file: !4283, line: 81, baseType: !341, size: 32, offset: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4356, file: !4283, line: 82, baseType: !341, size: 32, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4356, file: !4283, line: 83, baseType: !341, size: 32, offset: 96)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4356, file: !4283, line: 84, baseType: !341, size: 32, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4356, file: !4283, line: 85, baseType: !341, size: 32, offset: 160)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4356, file: !4283, line: 86, baseType: !341, size: 32, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4356, file: !4283, line: 88, baseType: !4314, size: 640, offset: 224)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4356, file: !4283, line: 89, baseType: !502, size: 8, offset: 864)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4356, file: !4283, line: 90, baseType: !502, size: 8, offset: 872)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4356, file: !4283, line: 91, baseType: !502, size: 8, offset: 880)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4356, file: !4283, line: 92, baseType: !502, size: 8, offset: 888)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4356, file: !4283, line: 93, baseType: !502, size: 8, offset: 896)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4356, file: !4283, line: 94, baseType: !502, size: 8, offset: 904)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4356, file: !4283, line: 95, baseType: !4373, size: 64, offset: 960)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4375, line: 11, size: 128, elements: !4376)
!4375 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4376 = !{!4377, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4374, file: !4375, line: 12, baseType: !372, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4374, file: !4375, line: 13, baseType: !4379, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4381, line: 103, size: 1344, elements: !4382)
!4381 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4411, !4412, !4413}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4380, file: !4381, line: 109, baseType: !351, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4380, file: !4381, line: 110, baseType: !351, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4380, file: !4381, line: 111, baseType: !351, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4380, file: !4381, line: 112, baseType: !351, size: 64, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4380, file: !4381, line: 113, baseType: !351, size: 64, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4380, file: !4381, line: 114, baseType: !351, size: 64, offset: 320)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4380, file: !4381, line: 117, baseType: !351, size: 64, offset: 384)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4380, file: !4381, line: 118, baseType: !351, size: 64, offset: 448)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4380, file: !4381, line: 119, baseType: !351, size: 64, offset: 512)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4380, file: !4381, line: 120, baseType: !351, size: 64, offset: 576)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4380, file: !4381, line: 121, baseType: !351, size: 64, offset: 640)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4380, file: !4381, line: 122, baseType: !351, size: 64, offset: 704)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4380, file: !4381, line: 123, baseType: !351, size: 64, offset: 768)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4380, file: !4381, line: 124, baseType: !351, size: 64, offset: 832)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4380, file: !4381, line: 125, baseType: !351, size: 64, offset: 896)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4380, file: !4381, line: 139, baseType: !351, size: 64, offset: 960)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4380, file: !4381, line: 142, baseType: !351, size: 64, offset: 1024)
!4400 = !DIDerivedType(tag: DW_TAG_member, scope: !4380, file: !4381, line: 144, baseType: !4401, size: 64, offset: 1088)
!4401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4380, file: !4381, line: 144, size: 64, elements: !4402)
!4402 = !{!4403, !4404, !4405}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4401, file: !4381, line: 146, baseType: !323, size: 16)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4401, file: !4381, line: 148, baseType: !450, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4401, file: !4381, line: 150, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4381, line: 59, size: 64, elements: !4407)
!4407 = !{!4408, !4409, !4410}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4406, file: !4381, line: 61, baseType: !450, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4406, file: !4381, line: 63, baseType: !450, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4406, file: !4381, line: 65, baseType: !450, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4380, file: !4381, line: 153, baseType: !351, size: 64, offset: 1152)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4380, file: !4381, line: 154, baseType: !351, size: 64, offset: 1216)
!4413 = !DIDerivedType(tag: DW_TAG_member, scope: !4380, file: !4381, line: 156, baseType: !4414, size: 64, offset: 1280)
!4414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4380, file: !4381, line: 156, size: 64, elements: !4415)
!4415 = !{!4416, !4417, !4418}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4414, file: !4381, line: 158, baseType: !323, size: 16)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4414, file: !4381, line: 160, baseType: !450, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4414, file: !4381, line: 162, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4381, line: 69, size: 64, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4419, file: !4381, line: 71, baseType: !450, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4419, file: !4381, line: 73, baseType: !450, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4419, file: !4381, line: 75, baseType: !450, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4419, file: !4381, line: 77, baseType: !450, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4419, file: !4381, line: 80, baseType: !450, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4419, file: !4381, line: 83, baseType: !450, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4419, file: !4381, line: 86, baseType: !450, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4419, file: !4381, line: 88, baseType: !450, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4419, file: !4381, line: 93, baseType: !450, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4419, file: !4381, line: 100, baseType: !450, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4356, file: !4283, line: 96, baseType: !341, size: 32, offset: 1024)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4301, file: !4283, line: 352, baseType: !4433, size: 4608, align: 512)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4283, line: 333, size: 4608, align: 512, elements: !4434)
!4434 = !{!4435, !4436, !4443}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4433, file: !4283, line: 334, baseType: !4319, size: 4096, align: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4433, file: !4283, line: 335, baseType: !4437, size: 512, offset: 4096)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4283, line: 312, size: 512, elements: !4438)
!4438 = !{!4439, !4440, !4441}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4437, file: !4283, line: 313, baseType: !450, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4437, file: !4283, line: 314, baseType: !450, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4437, file: !4283, line: 315, baseType: !4442, size: 384, offset: 128)
!4442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 384, elements: !1138)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4433, file: !4283, line: 336, baseType: !4444, offset: 4608)
!4444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, elements: !248)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4301, file: !4283, line: 353, baseType: !4446, size: 32768)
!4446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 32768, elements: !4447)
!4447 = !{!4448}
!4448 = !DISubrange(count: 4096)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4282, file: !4283, line: 484, baseType: !4288, size: 64, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4282, file: !4283, line: 491, baseType: !4451, size: 128, offset: 256)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4283, line: 404, size: 128, elements: !4452)
!4452 = !{!4453, !4454, !4455}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4451, file: !4283, line: 424, baseType: !450, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4451, file: !4283, line: 432, baseType: !13, size: 32, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4451, file: !4283, line: 440, baseType: !13, size: 32, offset: 96)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4282, file: !4283, line: 498, baseType: !4451, size: 128, offset: 384)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4282, file: !4283, line: 508, baseType: !4289, size: 33280, align: 512, offset: 512)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3343, file: !3344, line: 16, baseType: !1037, size: 192, offset: 512)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3343, file: !3344, line: 17, baseType: !494, size: 32, offset: 704)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !567, file: !65, line: 1240, baseType: !348, size: 64, offset: 6912)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !567, file: !65, line: 1243, baseType: !341, size: 32, offset: 6976)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !567, file: !65, line: 1245, baseType: !1108, size: 64, offset: 7040)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !567, file: !65, line: 1246, baseType: !1108, size: 64, offset: 7104)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !567, file: !65, line: 1248, baseType: !333, size: 32, offset: 7168)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !567, file: !65, line: 1249, baseType: !4466, size: 64, offset: 7232)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !65, line: 634, flags: DIFlagFwdDecl)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !567, file: !65, line: 1252, baseType: !4469, size: 256, offset: 7296)
!4469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !460)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !567, file: !65, line: 1253, baseType: !4471, size: 128, offset: 7552)
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4472, line: 21, baseType: !4473)
!4472 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4472, line: 19, size: 128, elements: !4474)
!4474 = !{!4475}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4473, file: !4472, line: 20, baseType: !4476, size: 128)
!4476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !3708)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !567, file: !65, line: 1255, baseType: !13, size: 32, offset: 7680)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !567, file: !65, line: 1261, baseType: !977, size: 256, offset: 7744)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !567, file: !65, line: 1267, baseType: !531, size: 64, offset: 8000)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !567, file: !65, line: 1269, baseType: !511, size: 64, offset: 8064)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !567, file: !65, line: 1271, baseType: !4482, size: 448, offset: 8128)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2568, line: 63, size: 448, elements: !4483)
!4483 = !{!4484, !4489, !4490, !4491, !4492, !4493, !4494}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4482, file: !2568, line: 64, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!351, !4488, !2566}
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4482, file: !2568, line: 66, baseType: !4485, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4482, file: !2568, line: 69, baseType: !372, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4482, file: !2568, line: 70, baseType: !102, size: 32, offset: 192)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4482, file: !2568, line: 71, baseType: !13, size: 32, offset: 224)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4482, file: !2568, line: 74, baseType: !388, size: 128, offset: 256)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4482, file: !2568, line: 85, baseType: !4495, size: 64, offset: 384)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !567, file: !65, line: 1274, baseType: !742, size: 64, offset: 8576)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !567, file: !65, line: 1280, baseType: !742, size: 64, offset: 8640)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !567, file: !65, line: 1283, baseType: !102, size: 32, offset: 8704)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !567, file: !65, line: 1286, baseType: !1521, size: 32, offset: 8736)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !567, file: !65, line: 1289, baseType: !2389, size: 64, offset: 8768)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !567, file: !65, line: 1290, baseType: !1024, size: 64, offset: 8832)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !567, file: !65, line: 1297, baseType: !1232, size: 64, offset: 8896)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !567, file: !65, line: 1304, baseType: !4504, size: 64, offset: 8960)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4505, line: 49, size: 64, elements: !4506)
!4505 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4506 = !{!4507}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4504, file: !4505, line: 50, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4505, line: 41, size: 512, align: 512, elements: !4510)
!4510 = !{!4511, !4512, !4517}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4509, file: !4505, line: 43, baseType: !474, size: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4509, file: !4505, line: 45, baseType: !4513, size: 192, offset: 64)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4505, line: 29, size: 192, elements: !4514)
!4514 = !{!4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4513, file: !4505, line: 30, baseType: !388, size: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4513, file: !4505, line: 32, baseType: !372, size: 64, offset: 128)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4509, file: !4505, line: 46, baseType: !372, size: 64, offset: 256)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !567, file: !65, line: 1305, baseType: !4504, size: 64, offset: 9024)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !567, file: !65, line: 1306, baseType: !872, size: 128, align: 64, offset: 9088)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !567, file: !65, line: 1307, baseType: !1649, size: 256, offset: 9216)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !567, file: !65, line: 1309, baseType: !977, size: 256, offset: 9472)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !567, file: !65, line: 1314, baseType: !102, size: 32, offset: 9728)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !567, file: !65, line: 1317, baseType: !474, size: 32, align: 512, offset: 10240)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !567, file: !65, line: 1318, baseType: !388, size: 128, offset: 10304)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !567, file: !65, line: 1320, baseType: !474, size: 32, offset: 10432)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !567, file: !65, line: 1321, baseType: !388, size: 128, offset: 10496)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !561, file: !562, line: 73, baseType: !102, size: 32, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !561, file: !562, line: 74, baseType: !4529, size: 64, offset: 192)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1074, line: 42, flags: DIFlagFwdDecl)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !513, file: !416, line: 141, baseType: !4533, size: 64, offset: 704)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!102, !2628, !868}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !513, file: !416, line: 142, baseType: !4537, size: 64, offset: 768)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!414, !414, !4540}
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !415, file: !416, line: 96, baseType: !566, size: 64, offset: 832)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !415, file: !416, line: 97, baseType: !351, size: 64, offset: 896)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !415, file: !416, line: 98, baseType: !348, size: 64, offset: 960)
!4545 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !416, line: 100, baseType: !4546, size: 128, offset: 1024)
!4546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !416, line: 100, size: 128, elements: !4547)
!4547 = !{!4548, !4549}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4546, file: !416, line: 101, baseType: !388, size: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4546, file: !416, line: 102, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !415, file: !416, line: 104, baseType: !388, size: 128, offset: 1152)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !415, file: !416, line: 105, baseType: !388, size: 128, offset: 1280)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !415, file: !416, line: 113, baseType: !4554, size: 128, offset: 1408)
!4554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !416, line: 109, size: 128, elements: !4555)
!4555 = !{!4556, !4557, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4554, file: !416, line: 110, baseType: !1028, size: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4554, file: !416, line: 111, baseType: !430, size: 128)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4554, file: !416, line: 112, baseType: !872, size: 128, align: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !408, file: !65, line: 1968, baseType: !4560, size: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!531, !414, !457, !4563}
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4565, line: 10, size: 128, elements: !4566)
!4565 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4566 = !{!4567, !4568}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4564, file: !4565, line: 11, baseType: !1961, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4564, file: !4565, line: 12, baseType: !348, size: 64, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !408, file: !65, line: 1969, baseType: !4570, size: 64, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!102, !4529, !457, !102}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !408, file: !65, line: 1970, baseType: !4574, size: 64, offset: 192)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!402, !457, !102, !868}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !408, file: !65, line: 1972, baseType: !4578, size: 64, offset: 256)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!102, !414, !353, !102}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !408, file: !65, line: 1974, baseType: !4582, size: 64, offset: 320)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!102, !4529, !457, !414, !377, !868}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !408, file: !65, line: 1976, baseType: !4586, size: 64, offset: 384)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!102, !414, !457, !414}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !408, file: !65, line: 1977, baseType: !4590, size: 64, offset: 448)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!102, !457, !414}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !408, file: !65, line: 1978, baseType: !4594, size: 64, offset: 512)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!102, !4529, !457, !414, !531}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !408, file: !65, line: 1980, baseType: !4598, size: 64, offset: 576)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!102, !4529, !457, !414, !377}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !408, file: !65, line: 1982, baseType: !4590, size: 64, offset: 640)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !408, file: !65, line: 1983, baseType: !4603, size: 64, offset: 704)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!102, !4529, !457, !414, !377, !571}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !408, file: !65, line: 1985, baseType: !4607, size: 64, offset: 768)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!102, !4529, !457, !414, !457, !414, !13}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !408, file: !65, line: 1987, baseType: !4611, size: 64, offset: 832)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!102, !4529, !414, !2775}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !408, file: !65, line: 1988, baseType: !4615, size: 64, offset: 896)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!102, !4529, !2628, !4618, !341, !13}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4620, line: 22, size: 1280, elements: !4621)
!4620 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4621 = !{!4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4619, file: !4620, line: 23, baseType: !341, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4619, file: !4620, line: 24, baseType: !377, size: 16, offset: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4619, file: !4620, line: 25, baseType: !13, size: 32, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4619, file: !4620, line: 26, baseType: !1116, size: 32, offset: 96)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4619, file: !4620, line: 27, baseType: !450, size: 64, offset: 128)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4619, file: !4620, line: 28, baseType: !450, size: 64, offset: 192)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4619, file: !4620, line: 41, baseType: !450, size: 64, offset: 256)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4619, file: !4620, line: 42, baseType: !571, size: 32, offset: 320)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4619, file: !4620, line: 43, baseType: !571, size: 32, offset: 352)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4619, file: !4620, line: 44, baseType: !380, size: 32, offset: 384)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4619, file: !4620, line: 45, baseType: !394, size: 32, offset: 416)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4619, file: !4620, line: 46, baseType: !576, size: 64, offset: 448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4619, file: !4620, line: 47, baseType: !2801, size: 128, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4619, file: !4620, line: 48, baseType: !2801, size: 128, offset: 640)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4619, file: !4620, line: 49, baseType: !2801, size: 128, offset: 768)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4619, file: !4620, line: 50, baseType: !2801, size: 128, offset: 896)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4619, file: !4620, line: 51, baseType: !450, size: 64, offset: 1024)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4619, file: !4620, line: 52, baseType: !450, size: 64, offset: 1088)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4619, file: !4620, line: 53, baseType: !341, size: 32, offset: 1152)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4619, file: !4620, line: 54, baseType: !341, size: 32, offset: 1184)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4619, file: !4620, line: 55, baseType: !450, size: 64, offset: 1216)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !408, file: !65, line: 1990, baseType: !4644, size: 64, offset: 960)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!687, !414, !353, !698}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !408, file: !65, line: 1991, baseType: !4648, size: 64, offset: 1024)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!102, !457, !4651, !450, !450}
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !65, line: 55, flags: DIFlagFwdDecl)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !408, file: !65, line: 1993, baseType: !4654, size: 64, offset: 1088)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!102, !457, !102}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !408, file: !65, line: 1994, baseType: !4658, size: 64, offset: 1152)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!102, !457, !414, !958, !13, !377}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !408, file: !65, line: 1997, baseType: !4662, size: 64, offset: 1216)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!102, !4529, !457, !958, !377}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !408, file: !65, line: 1999, baseType: !4666, size: 64, offset: 1280)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!402, !4529, !414, !102}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !408, file: !65, line: 2001, baseType: !4670, size: 64, offset: 1344)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!102, !4529, !414, !402, !102}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !408, file: !65, line: 2003, baseType: !4674, size: 64, offset: 1408)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!102, !4529, !414, !4677}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !65, line: 76, flags: DIFlagFwdDecl)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !408, file: !65, line: 2005, baseType: !4680, size: 64, offset: 1472)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!102, !414, !4677}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !408, file: !65, line: 2006, baseType: !4684, size: 64, offset: 1536)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!4687, !457}
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !65, line: 3192, size: 192, elements: !4689)
!4689 = !{!4690, !4691}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4688, file: !65, line: 3193, baseType: !731, size: 128)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4688, file: !65, line: 3194, baseType: !341, size: 32, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !374, file: !65, line: 655, baseType: !566, size: 64, offset: 448)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !374, file: !65, line: 656, baseType: !726, size: 64, offset: 512)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !374, file: !65, line: 659, baseType: !348, size: 64, offset: 576)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !374, file: !65, line: 663, baseType: !351, size: 64, offset: 640)
!4696 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !65, line: 671, baseType: !4697, size: 32, offset: 704)
!4697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !65, line: 671, size: 32, elements: !4698)
!4698 = !{!4699, !4701}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4697, file: !65, line: 672, baseType: !4700, size: 32)
!4700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4697, file: !65, line: 673, baseType: !13, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !374, file: !65, line: 675, baseType: !571, size: 32, offset: 736)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !374, file: !65, line: 676, baseType: !576, size: 64, offset: 768)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !374, file: !65, line: 677, baseType: !2801, size: 128, offset: 832)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !374, file: !65, line: 678, baseType: !2801, size: 128, offset: 960)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !374, file: !65, line: 679, baseType: !2801, size: 128, offset: 1088)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !374, file: !65, line: 680, baseType: !474, size: 32, offset: 1216)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !374, file: !65, line: 681, baseType: !313, size: 16, offset: 1248)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !374, file: !65, line: 682, baseType: !502, size: 8, offset: 1264)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !374, file: !65, line: 683, baseType: !502, size: 8, offset: 1272)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !374, file: !65, line: 684, baseType: !2701, size: 64, offset: 1280)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !374, file: !65, line: 691, baseType: !351, size: 64, offset: 1344)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !374, file: !65, line: 692, baseType: !738, size: 320, offset: 1408)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !374, file: !65, line: 694, baseType: !351, size: 64, offset: 1728)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !374, file: !65, line: 695, baseType: !351, size: 64, offset: 1792)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !374, file: !65, line: 697, baseType: !1028, size: 128, offset: 1856)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !374, file: !65, line: 698, baseType: !388, size: 128, offset: 1984)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !374, file: !65, line: 707, baseType: !388, size: 128, offset: 2112)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !374, file: !65, line: 708, baseType: !388, size: 128, offset: 2240)
!4720 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !65, line: 709, baseType: !4721, size: 128, offset: 2368)
!4721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !65, line: 709, size: 128, elements: !4722)
!4722 = !{!4723, !4724}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4721, file: !65, line: 710, baseType: !1024, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4721, file: !65, line: 711, baseType: !872, size: 128, align: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !374, file: !65, line: 713, baseType: !744, size: 64, offset: 2496)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !374, file: !65, line: 714, baseType: !744, size: 64, offset: 2560)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !374, file: !65, line: 715, baseType: !494, size: 32, offset: 2624)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !374, file: !65, line: 716, baseType: !494, size: 32, offset: 2656)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !374, file: !65, line: 717, baseType: !494, size: 32, offset: 2688)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !374, file: !65, line: 719, baseType: !494, size: 32, offset: 2720)
!4731 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !65, line: 721, baseType: !4732, size: 64, offset: 2752)
!4732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !65, line: 721, size: 64, elements: !4733)
!4733 = !{!4734, !4735}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4732, file: !65, line: 722, baseType: !1268, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4732, file: !65, line: 723, baseType: !2457, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !374, file: !65, line: 725, baseType: !4737, size: 64, offset: 2816)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !65, line: 725, flags: DIFlagFwdDecl)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !374, file: !65, line: 726, baseType: !727, size: 1536, align: 64, offset: 2880)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !374, file: !65, line: 727, baseType: !388, size: 128, offset: 4416)
!4741 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !65, line: 728, baseType: !4742, size: 64, offset: 4544)
!4742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !65, line: 728, size: 64, elements: !4743)
!4743 = !{!4744, !4745, !4748, !4749}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4742, file: !65, line: 729, baseType: !1468, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4742, file: !65, line: 730, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !65, line: 730, flags: DIFlagFwdDecl)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4742, file: !65, line: 731, baseType: !353, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4742, file: !65, line: 732, baseType: !13, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !374, file: !65, line: 735, baseType: !333, size: 32, offset: 4608)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !374, file: !65, line: 738, baseType: !333, size: 32, offset: 4640)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !374, file: !65, line: 739, baseType: !4466, size: 64, offset: 4672)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !374, file: !65, line: 750, baseType: !348, size: 64, offset: 4736)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iso_directory_record", file: !4756, line: 146, size: 264, elements: !4757)
!4756 = !DIFile(filename: "./include/uapi/linux/iso_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58bf1efa0be4510dcd86f01083454e5e")
!4757 = !{!4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4768, !4769}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4755, file: !4756, line: 147, baseType: !254, size: 8)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "ext_attr_length", scope: !4755, file: !4756, line: 148, baseType: !254, size: 8, offset: 8)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !4755, file: !4756, line: 149, baseType: !234, size: 64, offset: 16)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4755, file: !4756, line: 150, baseType: !234, size: 64, offset: 80)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4755, file: !4756, line: 151, baseType: !302, size: 56, offset: 144)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4755, file: !4756, line: 152, baseType: !254, size: 8, offset: 200)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "file_unit_size", scope: !4755, file: !4756, line: 153, baseType: !254, size: 8, offset: 208)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "interleave", scope: !4755, file: !4756, line: 154, baseType: !254, size: 8, offset: 216)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "volume_sequence_number", scope: !4755, file: !4756, line: 155, baseType: !4767, size: 32, offset: 224)
!4767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32, elements: !1033)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !4755, file: !4756, line: 156, baseType: !254, size: 8, offset: 256)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4755, file: !4756, line: 157, baseType: !284, offset: 264)
!4770 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !350, line: 159, baseType: !450)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !372)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4777)
!4777 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !351)
!4778 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !350, line: 42, baseType: !351)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!4782 = !{!0, !7, !4783, !4788, !4793, !4798, !4803, !4808, !4813, !4818, !4821, !4826, !4831, !4836, !4838, !4843, !4845, !4850, !4855}
!4783 = !DIGlobalVariableExpression(var: !4784, expr: !DIExpression())
!4784 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !4785, isLocal: true, isDefinition: true)
!4785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !4786)
!4786 = !{!4787}
!4787 = !DISubrange(count: 48)
!4788 = !DIGlobalVariableExpression(var: !4789, expr: !DIExpression())
!4789 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !4790, isLocal: true, isDefinition: true)
!4790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !4791)
!4791 = !{!4792}
!4792 = !DISubrange(count: 43)
!4793 = !DIGlobalVariableExpression(var: !4794, expr: !DIExpression())
!4794 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !4795, isLocal: true, isDefinition: true)
!4795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !4796)
!4796 = !{!4797}
!4797 = !DISubrange(count: 66)
!4798 = !DIGlobalVariableExpression(var: !4799, expr: !DIExpression())
!4799 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !4800, isLocal: true, isDefinition: true)
!4800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !4801)
!4801 = !{!4802}
!4802 = !DISubrange(count: 38)
!4803 = !DIGlobalVariableExpression(var: !4804, expr: !DIExpression())
!4804 = distinct !DIGlobalVariable(scope: null, file: !153, line: 480, type: !4805, isLocal: true, isDefinition: true)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4806)
!4806 = !{!4807}
!4807 = !DISubrange(count: 21)
!4808 = !DIGlobalVariableExpression(var: !4809, expr: !DIExpression())
!4809 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !4810, isLocal: true, isDefinition: true)
!4810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !4811)
!4811 = !{!4812}
!4812 = !DISubrange(count: 24)
!4813 = !DIGlobalVariableExpression(var: !4814, expr: !DIExpression())
!4814 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !4815, isLocal: true, isDefinition: true)
!4815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !4816)
!4816 = !{!4817}
!4817 = !DISubrange(count: 5)
!4818 = !DIGlobalVariableExpression(var: !4819, expr: !DIExpression())
!4819 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !4820, isLocal: true, isDefinition: true)
!4820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !1033)
!4821 = !DIGlobalVariableExpression(var: !4822, expr: !DIExpression())
!4822 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !4823, isLocal: true, isDefinition: true)
!4823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !4824)
!4824 = !{!4825}
!4825 = !DISubrange(count: 40)
!4826 = !DIGlobalVariableExpression(var: !4827, expr: !DIExpression())
!4827 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !4828, isLocal: true, isDefinition: true)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !4829)
!4829 = !{!4830}
!4830 = !DISubrange(count: 49)
!4831 = !DIGlobalVariableExpression(var: !4832, expr: !DIExpression())
!4832 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !4833, isLocal: true, isDefinition: true)
!4833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !4834)
!4834 = !{!4835}
!4835 = !DISubrange(count: 58)
!4836 = !DIGlobalVariableExpression(var: !4837, expr: !DIExpression())
!4837 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !4785, isLocal: true, isDefinition: true)
!4838 = !DIGlobalVariableExpression(var: !4839, expr: !DIExpression())
!4839 = distinct !DIGlobalVariable(scope: null, file: !2, line: 550, type: !4840, isLocal: true, isDefinition: true)
!4840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !4841)
!4841 = !{!4842}
!4842 = !DISubrange(count: 45)
!4843 = !DIGlobalVariableExpression(var: !4844, expr: !DIExpression())
!4844 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !4828, isLocal: true, isDefinition: true)
!4845 = !DIGlobalVariableExpression(var: !4846, expr: !DIExpression())
!4846 = distinct !DIGlobalVariable(scope: null, file: !2, line: 793, type: !4847, isLocal: true, isDefinition: true)
!4847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !4848)
!4848 = !{!4849}
!4849 = !DISubrange(count: 28)
!4850 = !DIGlobalVariableExpression(var: !4851, expr: !DIExpression())
!4851 = distinct !DIGlobalVariable(scope: null, file: !2, line: 796, type: !4852, isLocal: true, isDefinition: true)
!4852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !4853)
!4853 = !{!4854}
!4854 = !DISubrange(count: 30)
!4855 = !DIGlobalVariableExpression(var: !4856, expr: !DIExpression())
!4856 = distinct !DIGlobalVariable(scope: null, file: !2, line: 636, type: !4840, isLocal: true, isDefinition: true)
!4857 = !{i32 7, !"Dwarf Version", i32 5}
!4858 = !{i32 2, !"Debug Info Version", i32 3}
!4859 = !{i32 1, !"wchar_size", i32 2}
!4860 = !{i32 8, !"cf-protection-branch", i32 1}
!4861 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4862 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4863 = !{i32 1, !"Code Model", i32 2}
!4864 = !{i32 1, !"override-stack-alignment", i32 8}
!4865 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4866 = distinct !DISubprogram(name: "get_rock_ridge_filename", scope: !2, file: !2, line: 198, type: !4867, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4869)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!102, !4754, !353, !457}
!4869 = !{!4870, !4871, !4872, !4873, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893}
!4870 = !DILocalVariable(name: "de", arg: 1, scope: !4866, file: !2, line: 198, type: !4754)
!4871 = !DILocalVariable(name: "retname", arg: 2, scope: !4866, file: !2, line: 199, type: !353)
!4872 = !DILocalVariable(name: "inode", arg: 3, scope: !4866, file: !2, line: 199, type: !457)
!4873 = !DILocalVariable(name: "rs", scope: !4866, file: !2, line: 201, type: !4874)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rock_state", file: !2, line: 27, size: 384, elements: !4875)
!4875 = !{!4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4874, file: !2, line: 28, baseType: !348, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "chr", scope: !4874, file: !2, line: 29, baseType: !311, size: 64, offset: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4874, file: !2, line: 30, baseType: !102, size: 32, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "cont_size", scope: !4874, file: !2, line: 31, baseType: !102, size: 32, offset: 160)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "cont_extent", scope: !4874, file: !2, line: 32, baseType: !102, size: 32, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "cont_offset", scope: !4874, file: !2, line: 33, baseType: !102, size: 32, offset: 224)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "cont_loops", scope: !4874, file: !2, line: 34, baseType: !102, size: 32, offset: 256)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !4874, file: !2, line: 35, baseType: !457, size: 64, offset: 320)
!4884 = !DILocalVariable(name: "rr", scope: !4866, file: !2, line: 202, type: !209)
!4885 = !DILocalVariable(name: "sig", scope: !4866, file: !2, line: 203, type: !102)
!4886 = !DILocalVariable(name: "retnamlen", scope: !4866, file: !2, line: 204, type: !102)
!4887 = !DILocalVariable(name: "truncate", scope: !4866, file: !2, line: 205, type: !102)
!4888 = !DILocalVariable(name: "ret", scope: !4866, file: !2, line: 206, type: !102)
!4889 = !DILocalVariable(name: "p", scope: !4866, file: !2, line: 207, type: !353)
!4890 = !DILocalVariable(name: "len", scope: !4866, file: !2, line: 208, type: !102)
!4891 = !DILabel(scope: !4866, name: "repeat", file: !2, line: 216)
!4892 = !DILabel(scope: !4866, name: "out", file: !2, line: 297)
!4893 = !DILabel(scope: !4866, name: "eio", file: !2, line: 300)
!4894 = !DILocation(line: 198, column: 58, scope: !4866)
!4895 = !DILocation(line: 199, column: 14, scope: !4866)
!4896 = !DILocation(line: 199, column: 37, scope: !4866)
!4897 = !DILocation(line: 201, column: 2, scope: !4866)
!4898 = !DILocation(line: 201, column: 20, scope: !4866)
!4899 = !DILocation(line: 202, column: 2, scope: !4866)
!4900 = !DILocation(line: 202, column: 21, scope: !4866)
!4901 = !DILocation(line: 203, column: 2, scope: !4866)
!4902 = !DILocation(line: 203, column: 6, scope: !4866)
!4903 = !DILocation(line: 204, column: 2, scope: !4866)
!4904 = !DILocation(line: 204, column: 6, scope: !4866)
!4905 = !DILocation(line: 205, column: 2, scope: !4866)
!4906 = !DILocation(line: 205, column: 6, scope: !4866)
!4907 = !DILocation(line: 206, column: 2, scope: !4866)
!4908 = !DILocation(line: 206, column: 6, scope: !4866)
!4909 = !DILocation(line: 207, column: 2, scope: !4866)
!4910 = !DILocation(line: 207, column: 8, scope: !4866)
!4911 = !DILocation(line: 208, column: 2, scope: !4866)
!4912 = !DILocation(line: 208, column: 6, scope: !4866)
!4913 = !DILocation(line: 210, column: 16, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4866, file: !2, line: 210, column: 6)
!4915 = !DILocation(line: 210, column: 23, scope: !4914)
!4916 = !DILocation(line: 210, column: 7, scope: !4914)
!4917 = !DILocation(line: 210, column: 30, scope: !4914)
!4918 = !DILocation(line: 210, column: 6, scope: !4866)
!4919 = !DILocation(line: 211, column: 3, scope: !4914)
!4920 = !DILocation(line: 212, column: 3, scope: !4866)
!4921 = !DILocation(line: 212, column: 11, scope: !4866)
!4922 = !DILocation(line: 214, column: 23, scope: !4866)
!4923 = !DILocation(line: 214, column: 2, scope: !4866)
!4924 = !DILocation(line: 215, column: 19, scope: !4866)
!4925 = !DILocation(line: 215, column: 23, scope: !4866)
!4926 = !DILocation(line: 215, column: 2, scope: !4866)
!4927 = !DILocation(line: 216, column: 1, scope: !4866)
!4928 = !DILocation(line: 218, column: 2, scope: !4866)
!4929 = !DILocation(line: 218, column: 12, scope: !4866)
!4930 = !DILocation(line: 218, column: 16, scope: !4866)
!4931 = !DILocation(line: 219, column: 32, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4866, file: !2, line: 218, column: 21)
!4933 = !DILocation(line: 219, column: 6, scope: !4932)
!4934 = !DILocation(line: 225, column: 7, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4932, file: !2, line: 225, column: 7)
!4936 = !DILocation(line: 225, column: 11, scope: !4935)
!4937 = !DILocation(line: 225, column: 15, scope: !4935)
!4938 = !DILocation(line: 225, column: 7, scope: !4932)
!4939 = !DILocation(line: 226, column: 4, scope: !4935)
!4940 = !DILocation(line: 227, column: 23, scope: !4932)
!4941 = !DILocation(line: 227, column: 9, scope: !4932)
!4942 = !DILocation(line: 227, column: 7, scope: !4932)
!4943 = !DILocation(line: 228, column: 32, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4932, file: !2, line: 228, column: 7)
!4945 = !DILocation(line: 228, column: 7, scope: !4944)
!4946 = !DILocation(line: 228, column: 7, scope: !4932)
!4947 = !DILocation(line: 229, column: 4, scope: !4944)
!4948 = !DILocation(line: 230, column: 13, scope: !4932)
!4949 = !DILocation(line: 230, column: 17, scope: !4932)
!4950 = !DILocation(line: 230, column: 6, scope: !4932)
!4951 = !DILocation(line: 230, column: 10, scope: !4932)
!4952 = !DILocation(line: 231, column: 13, scope: !4932)
!4953 = !DILocation(line: 231, column: 17, scope: !4932)
!4954 = !DILocation(line: 231, column: 6, scope: !4932)
!4955 = !DILocation(line: 231, column: 10, scope: !4932)
!4956 = !DILocation(line: 236, column: 10, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4932, file: !2, line: 236, column: 7)
!4958 = !DILocation(line: 236, column: 14, scope: !4957)
!4959 = !DILocation(line: 236, column: 7, scope: !4932)
!4960 = !DILocation(line: 237, column: 4, scope: !4957)
!4961 = !DILocation(line: 239, column: 11, scope: !4932)
!4962 = !DILocation(line: 239, column: 3, scope: !4932)
!4963 = !DILocation(line: 241, column: 9, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 241, column: 8)
!4965 = distinct !DILexicalBlock(scope: !4932, file: !2, line: 239, column: 16)
!4966 = !DILocation(line: 241, column: 13, scope: !4964)
!4967 = !DILocation(line: 241, column: 18, scope: !4964)
!4968 = !DILocation(line: 241, column: 27, scope: !4964)
!4969 = !DILocation(line: 241, column: 36, scope: !4964)
!4970 = !DILocation(line: 241, column: 8, scope: !4965)
!4971 = !DILocation(line: 242, column: 5, scope: !4964)
!4972 = !DILocation(line: 243, column: 4, scope: !4965)
!4973 = !DILocation(line: 245, column: 17, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 245, column: 8)
!4975 = !DILocation(line: 245, column: 21, scope: !4974)
!4976 = !DILocation(line: 245, column: 8, scope: !4974)
!4977 = !DILocation(line: 245, column: 8, scope: !4965)
!4978 = !DILocation(line: 246, column: 5, scope: !4974)
!4979 = !DILocation(line: 247, column: 4, scope: !4965)
!4980 = !DILocation(line: 249, column: 32, scope: !4965)
!4981 = !DILocation(line: 249, column: 36, scope: !4965)
!4982 = !DILocation(line: 249, column: 41, scope: !4965)
!4983 = !DILocation(line: 249, column: 21, scope: !4965)
!4984 = !DILocation(line: 249, column: 7, scope: !4965)
!4985 = !DILocation(line: 249, column: 19, scope: !4965)
!4986 = !DILocation(line: 250, column: 32, scope: !4965)
!4987 = !DILocation(line: 250, column: 36, scope: !4965)
!4988 = !DILocation(line: 250, column: 41, scope: !4965)
!4989 = !DILocation(line: 250, column: 21, scope: !4965)
!4990 = !DILocation(line: 250, column: 7, scope: !4965)
!4991 = !DILocation(line: 250, column: 19, scope: !4965)
!4992 = !DILocation(line: 251, column: 30, scope: !4965)
!4993 = !DILocation(line: 251, column: 34, scope: !4965)
!4994 = !DILocation(line: 251, column: 39, scope: !4965)
!4995 = !DILocation(line: 251, column: 19, scope: !4965)
!4996 = !DILocation(line: 251, column: 7, scope: !4965)
!4997 = !DILocation(line: 251, column: 17, scope: !4965)
!4998 = !DILocation(line: 252, column: 4, scope: !4965)
!4999 = !DILocation(line: 254, column: 8, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 254, column: 8)
!5001 = !DILocation(line: 254, column: 8, scope: !4965)
!5002 = !DILocation(line: 255, column: 5, scope: !5000)
!5003 = !DILocation(line: 256, column: 8, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 256, column: 8)
!5005 = !DILocation(line: 256, column: 12, scope: !5004)
!5006 = !DILocation(line: 256, column: 16, scope: !5004)
!5007 = !DILocation(line: 256, column: 8, scope: !4965)
!5008 = !DILocation(line: 257, column: 5, scope: !5004)
!5009 = !DILocation(line: 265, column: 8, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 265, column: 8)
!5011 = !DILocation(line: 265, column: 12, scope: !5010)
!5012 = !DILocation(line: 265, column: 17, scope: !5010)
!5013 = !DILocation(line: 265, column: 23, scope: !5010)
!5014 = !DILocation(line: 265, column: 8, scope: !4965)
!5015 = !DILocation(line: 266, column: 5, scope: !5010)
!5016 = !DILocation(line: 268, column: 8, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 268, column: 8)
!5018 = !DILocation(line: 268, column: 12, scope: !5017)
!5019 = !DILocation(line: 268, column: 17, scope: !5017)
!5020 = !DILocation(line: 268, column: 23, scope: !5017)
!5021 = !DILocation(line: 268, column: 8, scope: !4965)
!5022 = !DILocation(line: 269, column: 5, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 269, column: 5)
!5024 = distinct !DILexicalBlock(scope: !5017, file: !2, line: 268, column: 29)
!5025 = !DILocation(line: 269, column: 5, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5023, file: !2, line: 269, column: 5)
!5027 = !DILocation(line: 271, column: 5, scope: !5024)
!5028 = !DILocation(line: 273, column: 10, scope: !4965)
!5029 = !DILocation(line: 273, column: 14, scope: !4965)
!5030 = !DILocation(line: 273, column: 18, scope: !4965)
!5031 = !DILocation(line: 273, column: 8, scope: !4965)
!5032 = !DILocation(line: 274, column: 8, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 274, column: 8)
!5034 = !DILocation(line: 274, column: 20, scope: !5033)
!5035 = !DILocation(line: 274, column: 18, scope: !5033)
!5036 = !DILocation(line: 274, column: 24, scope: !5033)
!5037 = !DILocation(line: 274, column: 8, scope: !4965)
!5038 = !DILocation(line: 275, column: 14, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5033, file: !2, line: 274, column: 32)
!5040 = !DILocation(line: 276, column: 5, scope: !5039)
!5041 = !DILocation(line: 278, column: 15, scope: !4965)
!5042 = !DILocation(line: 278, column: 19, scope: !4965)
!5043 = !DILocation(line: 278, column: 24, scope: !4965)
!5044 = !DILocation(line: 278, column: 36, scope: !4965)
!5045 = !DILocation(line: 278, column: 8, scope: !4965)
!5046 = !DILocation(line: 278, column: 6, scope: !4965)
!5047 = !DILocation(line: 279, column: 8, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 279, column: 8)
!5049 = !DILocation(line: 279, column: 8, scope: !4965)
!5050 = !DILocation(line: 280, column: 11, scope: !5048)
!5051 = !DILocation(line: 280, column: 15, scope: !5048)
!5052 = !DILocation(line: 280, column: 19, scope: !5048)
!5053 = !DILocation(line: 280, column: 24, scope: !5048)
!5054 = !DILocation(line: 280, column: 13, scope: !5048)
!5055 = !DILocation(line: 280, column: 9, scope: !5048)
!5056 = !DILocation(line: 280, column: 5, scope: !5048)
!5057 = !DILocation(line: 281, column: 11, scope: !4965)
!5058 = !DILocation(line: 281, column: 21, scope: !4965)
!5059 = !DILocation(line: 281, column: 19, scope: !4965)
!5060 = !DILocation(line: 281, column: 32, scope: !4965)
!5061 = !DILocation(line: 281, column: 36, scope: !4965)
!5062 = !DILocation(line: 281, column: 41, scope: !4965)
!5063 = !DILocation(line: 281, column: 4, scope: !4965)
!5064 = !DILocation(line: 281, column: 47, scope: !4965)
!5065 = !DILocation(line: 282, column: 17, scope: !4965)
!5066 = !DILocation(line: 282, column: 14, scope: !4965)
!5067 = !DILocation(line: 283, column: 4, scope: !4965)
!5068 = !DILocation(line: 283, column: 12, scope: !4965)
!5069 = !DILocation(line: 283, column: 23, scope: !4965)
!5070 = !DILocation(line: 284, column: 4, scope: !4965)
!5071 = !DILocation(line: 286, column: 13, scope: !4965)
!5072 = !DILocation(line: 286, column: 4, scope: !4965)
!5073 = !DILocation(line: 287, column: 4, scope: !4965)
!5074 = !DILocation(line: 289, column: 4, scope: !4965)
!5075 = distinct !{!5075, !4928, !5076, !5077, !5078}
!5076 = !DILocation(line: 291, column: 2, scope: !4866)
!5077 = !{!"llvm.loop.mustprogress"}
!5078 = !{!"llvm.loop.unroll.disable"}
!5079 = !DILocation(line: 292, column: 8, scope: !4866)
!5080 = !DILocation(line: 292, column: 6, scope: !4866)
!5081 = !DILocation(line: 293, column: 6, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !4866, file: !2, line: 293, column: 6)
!5083 = !DILocation(line: 293, column: 10, scope: !5082)
!5084 = !DILocation(line: 293, column: 6, scope: !4866)
!5085 = !DILocation(line: 294, column: 3, scope: !5082)
!5086 = !DILocation(line: 295, column: 6, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !4866, file: !2, line: 295, column: 6)
!5088 = !DILocation(line: 295, column: 10, scope: !5087)
!5089 = !DILocation(line: 295, column: 6, scope: !4866)
!5090 = !DILocation(line: 296, column: 10, scope: !5087)
!5091 = !DILocation(line: 296, column: 3, scope: !5087)
!5092 = !DILocation(line: 295, column: 13, scope: !5087)
!5093 = !DILocation(line: 297, column: 1, scope: !4866)
!5094 = !DILocation(line: 298, column: 11, scope: !4866)
!5095 = !DILocation(line: 298, column: 2, scope: !4866)
!5096 = !DILocation(line: 299, column: 9, scope: !4866)
!5097 = !DILocation(line: 299, column: 2, scope: !4866)
!5098 = !DILocation(line: 300, column: 1, scope: !4866)
!5099 = !DILocation(line: 301, column: 6, scope: !4866)
!5100 = !DILocation(line: 302, column: 2, scope: !4866)
!5101 = !DILocation(line: 303, column: 1, scope: !4866)
!5102 = distinct !DISubprogram(name: "ISOFS_SB", scope: !163, file: !163, line: 65, type: !5103, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5135)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!5105, !566}
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isofs_sb_info", file: !163, line: 32, size: 640, elements: !5107)
!5107 = !{!5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "s_ninodes", scope: !5106, file: !163, line: 33, baseType: !351, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "s_nzones", scope: !5106, file: !163, line: 34, baseType: !351, size: 64, offset: 64)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "s_firstdatazone", scope: !5106, file: !163, line: 35, baseType: !351, size: 64, offset: 128)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_zone_size", scope: !5106, file: !163, line: 36, baseType: !351, size: 64, offset: 192)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_size", scope: !5106, file: !163, line: 37, baseType: !351, size: 64, offset: 256)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "s_rock_offset", scope: !5106, file: !163, line: 39, baseType: !102, size: 32, offset: 320)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "s_sbsector", scope: !5106, file: !163, line: 40, baseType: !1092, size: 32, offset: 352)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "s_joliet_level", scope: !5106, file: !163, line: 41, baseType: !217, size: 8, offset: 384)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "s_mapping", scope: !5106, file: !163, line: 42, baseType: !217, size: 8, offset: 392)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "s_check", scope: !5106, file: !163, line: 43, baseType: !217, size: 8, offset: 400)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "s_session", scope: !5106, file: !163, line: 44, baseType: !217, size: 8, offset: 408)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "s_high_sierra", scope: !5106, file: !163, line: 45, baseType: !13, size: 1, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "s_rock", scope: !5106, file: !163, line: 46, baseType: !13, size: 2, offset: 417, flags: DIFlagBitField, extraData: i64 416)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "s_cruft", scope: !5106, file: !163, line: 47, baseType: !13, size: 1, offset: 419, flags: DIFlagBitField, extraData: i64 416)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "s_nocompress", scope: !5106, file: !163, line: 49, baseType: !13, size: 1, offset: 420, flags: DIFlagBitField, extraData: i64 416)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "s_hide", scope: !5106, file: !163, line: 50, baseType: !13, size: 1, offset: 421, flags: DIFlagBitField, extraData: i64 416)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "s_showassoc", scope: !5106, file: !163, line: 51, baseType: !13, size: 1, offset: 422, flags: DIFlagBitField, extraData: i64 416)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "s_overriderockperm", scope: !5106, file: !163, line: 52, baseType: !13, size: 1, offset: 423, flags: DIFlagBitField, extraData: i64 416)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "s_uid_set", scope: !5106, file: !163, line: 53, baseType: !13, size: 1, offset: 424, flags: DIFlagBitField, extraData: i64 416)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "s_gid_set", scope: !5106, file: !163, line: 54, baseType: !13, size: 1, offset: 425, flags: DIFlagBitField, extraData: i64 416)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "s_fmode", scope: !5106, file: !163, line: 56, baseType: !377, size: 16, offset: 432)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "s_dmode", scope: !5106, file: !163, line: 57, baseType: !377, size: 16, offset: 448)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "s_gid", scope: !5106, file: !163, line: 58, baseType: !394, size: 32, offset: 480)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "s_uid", scope: !5106, file: !163, line: 59, baseType: !380, size: 32, offset: 512)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "s_nls_iocharset", scope: !5106, file: !163, line: 60, baseType: !5133, size: 64, offset: 576)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DICompositeType(tag: DW_TAG_structure_type, name: "nls_table", file: !163, line: 60, flags: DIFlagFwdDecl)
!5135 = !{!5136}
!5136 = !DILocalVariable(name: "sb", arg: 1, scope: !5102, file: !163, line: 65, type: !566)
!5137 = !DILocation(line: 65, column: 66, scope: !5102)
!5138 = !DILocation(line: 67, column: 9, scope: !5102)
!5139 = !DILocation(line: 67, column: 13, scope: !5102)
!5140 = !DILocation(line: 67, column: 2, scope: !5102)
!5141 = distinct !DISubprogram(name: "init_rock_state", scope: !2, file: !2, line: 72, type: !5142, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5145)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !5144, !457}
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!5145 = !{!5146, !5147}
!5146 = !DILocalVariable(name: "rs", arg: 1, scope: !5141, file: !2, line: 72, type: !5144)
!5147 = !DILocalVariable(name: "inode", arg: 2, scope: !5141, file: !2, line: 72, type: !457)
!5148 = !DILocation(line: 72, column: 48, scope: !5141)
!5149 = !DILocation(line: 72, column: 66, scope: !5141)
!5150 = !DILocation(line: 74, column: 9, scope: !5141)
!5151 = !DILocation(line: 74, column: 2, scope: !5141)
!5152 = !DILocation(line: 75, column: 14, scope: !5141)
!5153 = !DILocation(line: 75, column: 2, scope: !5141)
!5154 = !DILocation(line: 75, column: 6, scope: !5141)
!5155 = !DILocation(line: 75, column: 12, scope: !5141)
!5156 = !DILocation(line: 76, column: 1, scope: !5141)
!5157 = distinct !DISubprogram(name: "setup_rock_ridge", scope: !2, file: !2, line: 53, type: !5158, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5160)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{null, !4754, !457, !5144}
!5160 = !{!5161, !5162, !5163}
!5161 = !DILocalVariable(name: "de", arg: 1, scope: !5157, file: !2, line: 53, type: !4754)
!5162 = !DILocalVariable(name: "inode", arg: 2, scope: !5157, file: !2, line: 54, type: !457)
!5163 = !DILocalVariable(name: "rs", arg: 3, scope: !5157, file: !2, line: 54, type: !5144)
!5164 = !DILocation(line: 53, column: 59, scope: !5157)
!5165 = !DILocation(line: 54, column: 18, scope: !5157)
!5166 = !DILocation(line: 54, column: 44, scope: !5157)
!5167 = !DILocation(line: 56, column: 50, scope: !5157)
!5168 = !DILocation(line: 56, column: 54, scope: !5157)
!5169 = !DILocation(line: 56, column: 48, scope: !5157)
!5170 = !DILocation(line: 56, column: 12, scope: !5157)
!5171 = !DILocation(line: 56, column: 2, scope: !5157)
!5172 = !DILocation(line: 56, column: 6, scope: !5157)
!5173 = !DILocation(line: 56, column: 10, scope: !5157)
!5174 = !DILocation(line: 57, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5157, file: !2, line: 57, column: 6)
!5176 = !DILocation(line: 57, column: 10, scope: !5175)
!5177 = !DILocation(line: 57, column: 14, scope: !5175)
!5178 = !DILocation(line: 57, column: 6, scope: !5157)
!5179 = !DILocation(line: 58, column: 4, scope: !5175)
!5180 = !DILocation(line: 58, column: 8, scope: !5175)
!5181 = !DILocation(line: 58, column: 12, scope: !5175)
!5182 = !DILocation(line: 58, column: 3, scope: !5175)
!5183 = !DILocation(line: 59, column: 29, scope: !5157)
!5184 = !DILocation(line: 59, column: 34, scope: !5157)
!5185 = !DILocation(line: 59, column: 38, scope: !5157)
!5186 = !DILocation(line: 59, column: 32, scope: !5157)
!5187 = !DILocation(line: 59, column: 2, scope: !5157)
!5188 = !DILocation(line: 59, column: 6, scope: !5157)
!5189 = !DILocation(line: 59, column: 10, scope: !5157)
!5190 = !DILocation(line: 60, column: 31, scope: !5157)
!5191 = !DILocation(line: 60, column: 12, scope: !5157)
!5192 = !DILocation(line: 60, column: 37, scope: !5157)
!5193 = !DILocation(line: 60, column: 41, scope: !5157)
!5194 = !DILocation(line: 60, column: 35, scope: !5157)
!5195 = !DILocation(line: 60, column: 2, scope: !5157)
!5196 = !DILocation(line: 60, column: 6, scope: !5157)
!5197 = !DILocation(line: 60, column: 10, scope: !5157)
!5198 = !DILocation(line: 61, column: 6, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5157, file: !2, line: 61, column: 6)
!5200 = !DILocation(line: 61, column: 10, scope: !5199)
!5201 = !DILocation(line: 61, column: 14, scope: !5199)
!5202 = !DILocation(line: 61, column: 6, scope: !5157)
!5203 = !DILocation(line: 62, column: 3, scope: !5199)
!5204 = !DILocation(line: 62, column: 7, scope: !5199)
!5205 = !DILocation(line: 62, column: 11, scope: !5199)
!5206 = !DILocation(line: 64, column: 15, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5157, file: !2, line: 64, column: 6)
!5208 = !DILocation(line: 64, column: 22, scope: !5207)
!5209 = !DILocation(line: 64, column: 6, scope: !5207)
!5210 = !DILocation(line: 64, column: 29, scope: !5207)
!5211 = !DILocation(line: 64, column: 43, scope: !5207)
!5212 = !DILocation(line: 64, column: 6, scope: !5157)
!5213 = !DILocation(line: 65, column: 23, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5207, file: !2, line: 64, column: 50)
!5215 = !DILocation(line: 65, column: 30, scope: !5214)
!5216 = !DILocation(line: 65, column: 14, scope: !5214)
!5217 = !DILocation(line: 65, column: 37, scope: !5214)
!5218 = !DILocation(line: 65, column: 3, scope: !5214)
!5219 = !DILocation(line: 65, column: 7, scope: !5214)
!5220 = !DILocation(line: 65, column: 11, scope: !5214)
!5221 = !DILocation(line: 66, column: 23, scope: !5214)
!5222 = !DILocation(line: 66, column: 30, scope: !5214)
!5223 = !DILocation(line: 66, column: 14, scope: !5214)
!5224 = !DILocation(line: 66, column: 37, scope: !5214)
!5225 = !DILocation(line: 66, column: 3, scope: !5214)
!5226 = !DILocation(line: 66, column: 7, scope: !5214)
!5227 = !DILocation(line: 66, column: 11, scope: !5214)
!5228 = !DILocation(line: 67, column: 7, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5214, file: !2, line: 67, column: 7)
!5230 = !DILocation(line: 67, column: 11, scope: !5229)
!5231 = !DILocation(line: 67, column: 15, scope: !5229)
!5232 = !DILocation(line: 67, column: 7, scope: !5214)
!5233 = !DILocation(line: 68, column: 4, scope: !5229)
!5234 = !DILocation(line: 68, column: 8, scope: !5229)
!5235 = !DILocation(line: 68, column: 12, scope: !5229)
!5236 = !DILocation(line: 69, column: 2, scope: !5214)
!5237 = !DILocation(line: 70, column: 1, scope: !5157)
!5238 = distinct !DISubprogram(name: "isonum_721", scope: !163, file: !163, line: 83, type: !5239, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5241)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!13, !2762}
!5241 = !{!5242}
!5242 = !DILocalVariable(name: "p", arg: 1, scope: !5238, file: !163, line: 83, type: !2762)
!5243 = !DILocation(line: 83, column: 43, scope: !5238)
!5244 = !DILocation(line: 85, column: 28, scope: !5238)
!5245 = !DILocation(line: 85, column: 9, scope: !5238)
!5246 = !DILocation(line: 85, column: 2, scope: !5238)
!5247 = distinct !DISubprogram(name: "rock_check_overflow", scope: !2, file: !2, line: 139, type: !5248, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5250)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!102, !5144, !102}
!5250 = !{!5251, !5252, !5253}
!5251 = !DILocalVariable(name: "rs", arg: 1, scope: !5247, file: !2, line: 139, type: !5144)
!5252 = !DILocalVariable(name: "sig", arg: 2, scope: !5247, file: !2, line: 139, type: !102)
!5253 = !DILocalVariable(name: "len", scope: !5247, file: !2, line: 141, type: !102)
!5254 = !DILocation(line: 139, column: 51, scope: !5247)
!5255 = !DILocation(line: 139, column: 59, scope: !5247)
!5256 = !DILocation(line: 141, column: 2, scope: !5247)
!5257 = !DILocation(line: 141, column: 6, scope: !5247)
!5258 = !DILocation(line: 143, column: 10, scope: !5247)
!5259 = !DILocation(line: 143, column: 2, scope: !5247)
!5260 = !DILocation(line: 145, column: 7, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5247, file: !2, line: 143, column: 15)
!5262 = !DILocation(line: 146, column: 3, scope: !5261)
!5263 = !DILocation(line: 148, column: 7, scope: !5261)
!5264 = !DILocation(line: 149, column: 3, scope: !5261)
!5265 = !DILocation(line: 151, column: 7, scope: !5261)
!5266 = !DILocation(line: 152, column: 3, scope: !5261)
!5267 = !DILocation(line: 154, column: 7, scope: !5261)
!5268 = !DILocation(line: 155, column: 3, scope: !5261)
!5269 = !DILocation(line: 157, column: 7, scope: !5261)
!5270 = !DILocation(line: 158, column: 3, scope: !5261)
!5271 = !DILocation(line: 160, column: 7, scope: !5261)
!5272 = !DILocation(line: 161, column: 3, scope: !5261)
!5273 = !DILocation(line: 163, column: 7, scope: !5261)
!5274 = !DILocation(line: 164, column: 3, scope: !5261)
!5275 = !DILocation(line: 166, column: 7, scope: !5261)
!5276 = !DILocation(line: 167, column: 3, scope: !5261)
!5277 = !DILocation(line: 169, column: 7, scope: !5261)
!5278 = !DILocation(line: 170, column: 3, scope: !5261)
!5279 = !DILocation(line: 172, column: 7, scope: !5261)
!5280 = !DILocation(line: 173, column: 3, scope: !5261)
!5281 = !DILocation(line: 175, column: 7, scope: !5261)
!5282 = !DILocation(line: 176, column: 3, scope: !5261)
!5283 = !DILocation(line: 178, column: 7, scope: !5261)
!5284 = !DILocation(line: 179, column: 3, scope: !5261)
!5285 = !DILocation(line: 181, column: 7, scope: !5261)
!5286 = !DILocation(line: 182, column: 3, scope: !5261)
!5287 = !DILocation(line: 184, column: 6, scope: !5247)
!5288 = !DILocation(line: 185, column: 6, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5247, file: !2, line: 185, column: 6)
!5290 = !DILocation(line: 185, column: 12, scope: !5289)
!5291 = !DILocation(line: 185, column: 16, scope: !5289)
!5292 = !DILocation(line: 185, column: 10, scope: !5289)
!5293 = !DILocation(line: 185, column: 6, scope: !5247)
!5294 = !DILocation(line: 186, column: 3, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !2, line: 186, column: 3)
!5296 = distinct !DILexicalBlock(scope: !5289, file: !2, line: 185, column: 21)
!5297 = !DILocation(line: 186, column: 3, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5295, file: !2, line: 186, column: 3)
!5299 = !DILocation(line: 188, column: 3, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5296, file: !2, line: 188, column: 3)
!5301 = !DILocation(line: 188, column: 3, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5300, file: !2, line: 188, column: 3)
!5303 = !DILocation(line: 190, column: 3, scope: !5296)
!5304 = !DILocation(line: 192, column: 2, scope: !5247)
!5305 = !DILocation(line: 193, column: 1, scope: !5247)
!5306 = distinct !DISubprogram(name: "check_sp", scope: !2, file: !2, line: 43, type: !5307, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5309)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!102, !209, !457}
!5309 = !{!5310, !5311}
!5310 = !DILocalVariable(name: "rr", arg: 1, scope: !5306, file: !2, line: 43, type: !209)
!5311 = !DILocalVariable(name: "inode", arg: 2, scope: !5306, file: !2, line: 43, type: !457)
!5312 = !DILocation(line: 43, column: 40, scope: !5306)
!5313 = !DILocation(line: 43, column: 58, scope: !5306)
!5314 = !DILocation(line: 45, column: 6, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5306, file: !2, line: 45, column: 6)
!5316 = !DILocation(line: 45, column: 10, scope: !5315)
!5317 = !DILocation(line: 45, column: 15, scope: !5315)
!5318 = !DILocation(line: 45, column: 24, scope: !5315)
!5319 = !DILocation(line: 45, column: 6, scope: !5306)
!5320 = !DILocation(line: 46, column: 3, scope: !5315)
!5321 = !DILocation(line: 47, column: 6, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5306, file: !2, line: 47, column: 6)
!5323 = !DILocation(line: 47, column: 10, scope: !5322)
!5324 = !DILocation(line: 47, column: 15, scope: !5322)
!5325 = !DILocation(line: 47, column: 24, scope: !5322)
!5326 = !DILocation(line: 47, column: 6, scope: !5306)
!5327 = !DILocation(line: 48, column: 3, scope: !5322)
!5328 = !DILocation(line: 49, column: 41, scope: !5306)
!5329 = !DILocation(line: 49, column: 45, scope: !5306)
!5330 = !DILocation(line: 49, column: 50, scope: !5306)
!5331 = !DILocation(line: 49, column: 11, scope: !5306)
!5332 = !DILocation(line: 49, column: 18, scope: !5306)
!5333 = !DILocation(line: 49, column: 2, scope: !5306)
!5334 = !DILocation(line: 49, column: 25, scope: !5306)
!5335 = !DILocation(line: 49, column: 39, scope: !5306)
!5336 = !DILocation(line: 50, column: 2, scope: !5306)
!5337 = !DILocation(line: 51, column: 1, scope: !5306)
!5338 = distinct !DISubprogram(name: "isonum_733", scope: !163, file: !163, line: 104, type: !5239, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5339)
!5339 = !{!5340}
!5340 = !DILocalVariable(name: "p", arg: 1, scope: !5338, file: !163, line: 104, type: !2762)
!5341 = !DILocation(line: 104, column: 43, scope: !5338)
!5342 = !DILocation(line: 107, column: 28, scope: !5338)
!5343 = !DILocation(line: 107, column: 9, scope: !5338)
!5344 = !DILocation(line: 107, column: 2, scope: !5338)
!5345 = !DISubprogram(name: "_printk", scope: !5346, file: !5346, line: 153, type: !5347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5346 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!102, !531, null}
!5349 = !DISubprogram(name: "memchr", scope: !5350, file: !5350, line: 202, type: !5351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5350 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!348, !325, !102, !699}
!5353 = !DISubprogram(name: "kfree", scope: !153, file: !153, line: 227, type: !5354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{null, !325}
!5356 = distinct !DISubprogram(name: "rock_continue", scope: !2, file: !2, line: 85, type: !5357, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5359)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!102, !5144}
!5359 = !{!5360, !5361, !5362, !5363, !5364, !5392}
!5360 = !DILocalVariable(name: "rs", arg: 1, scope: !5356, file: !2, line: 85, type: !5144)
!5361 = !DILocalVariable(name: "ret", scope: !5356, file: !2, line: 87, type: !102)
!5362 = !DILocalVariable(name: "blocksize", scope: !5356, file: !2, line: 88, type: !102)
!5363 = !DILocalVariable(name: "min_de_size", scope: !5356, file: !2, line: 89, type: !2291)
!5364 = !DILocalVariable(name: "bh", scope: !5365, file: !2, line: 105, type: !5367)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 104, column: 23)
!5366 = distinct !DILexicalBlock(scope: !5356, file: !2, line: 104, column: 6)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !5369, line: 59, size: 832, elements: !5370)
!5369 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!5370 = !{!5371, !5372, !5373, !5378, !5379, !5380, !5381, !5382, !5387, !5388, !5389, !5390, !5391}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !5368, file: !5369, line: 60, baseType: !351, size: 64)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !5368, file: !5369, line: 61, baseType: !5367, size: 64, offset: 64)
!5373 = !DIDerivedType(tag: DW_TAG_member, scope: !5368, file: !5369, line: 62, baseType: !5374, size: 64, offset: 128)
!5374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5368, file: !5369, line: 62, size: 64, elements: !5375)
!5375 = !{!5376, !5377}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !5374, file: !5369, line: 63, baseType: !787, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !5374, file: !5369, line: 64, baseType: !1311, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !5368, file: !5369, line: 67, baseType: !1867, size: 64, offset: 192)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !5368, file: !5369, line: 68, baseType: !698, size: 64, offset: 256)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !5368, file: !5369, line: 69, baseType: !353, size: 64, offset: 320)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !5368, file: !5369, line: 71, baseType: !2828, size: 64, offset: 384)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !5368, file: !5369, line: 72, baseType: !5383, size: 64, offset: 448)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !5369, line: 48, baseType: !5385)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{null, !5367, !102}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !5368, file: !5369, line: 73, baseType: !348, size: 64, offset: 512)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !5368, file: !5369, line: 74, baseType: !388, size: 128, offset: 576)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !5368, file: !5369, line: 75, baseType: !726, size: 64, offset: 704)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !5368, file: !5369, line: 77, baseType: !494, size: 32, offset: 768)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !5368, file: !5369, line: 78, baseType: !474, size: 32, offset: 800)
!5392 = !DILabel(scope: !5356, name: "out", file: !2, line: 129)
!5393 = !DILocation(line: 85, column: 45, scope: !5356)
!5394 = !DILocation(line: 87, column: 2, scope: !5356)
!5395 = !DILocation(line: 87, column: 6, scope: !5356)
!5396 = !DILocation(line: 88, column: 2, scope: !5356)
!5397 = !DILocation(line: 88, column: 6, scope: !5356)
!5398 = !DILocation(line: 88, column: 23, scope: !5356)
!5399 = !DILocation(line: 88, column: 27, scope: !5356)
!5400 = !DILocation(line: 88, column: 34, scope: !5356)
!5401 = !DILocation(line: 88, column: 20, scope: !5356)
!5402 = !DILocation(line: 89, column: 2, scope: !5356)
!5403 = !DILocation(line: 89, column: 12, scope: !5356)
!5404 = !DILocation(line: 91, column: 8, scope: !5356)
!5405 = !DILocation(line: 91, column: 12, scope: !5356)
!5406 = !DILocation(line: 91, column: 2, scope: !5356)
!5407 = !DILocation(line: 92, column: 2, scope: !5356)
!5408 = !DILocation(line: 92, column: 6, scope: !5356)
!5409 = !DILocation(line: 92, column: 13, scope: !5356)
!5410 = !DILocation(line: 94, column: 16, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5356, file: !2, line: 94, column: 6)
!5412 = !DILocation(line: 94, column: 20, scope: !5411)
!5413 = !DILocation(line: 94, column: 34, scope: !5411)
!5414 = !DILocation(line: 94, column: 44, scope: !5411)
!5415 = !DILocation(line: 94, column: 32, scope: !5411)
!5416 = !DILocation(line: 94, column: 58, scope: !5411)
!5417 = !DILocation(line: 95, column: 16, scope: !5411)
!5418 = !DILocation(line: 95, column: 20, scope: !5411)
!5419 = !DILocation(line: 95, column: 32, scope: !5411)
!5420 = !DILocation(line: 95, column: 30, scope: !5411)
!5421 = !DILocation(line: 95, column: 42, scope: !5411)
!5422 = !DILocation(line: 96, column: 17, scope: !5411)
!5423 = !DILocation(line: 96, column: 21, scope: !5411)
!5424 = !DILocation(line: 96, column: 35, scope: !5411)
!5425 = !DILocation(line: 96, column: 39, scope: !5411)
!5426 = !DILocation(line: 96, column: 33, scope: !5411)
!5427 = !DILocation(line: 96, column: 52, scope: !5411)
!5428 = !DILocation(line: 96, column: 50, scope: !5411)
!5429 = !DILocation(line: 94, column: 6, scope: !5356)
!5430 = !DILocation(line: 97, column: 3, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5432, file: !2, line: 97, column: 3)
!5432 = distinct !DILexicalBlock(scope: !5411, file: !2, line: 96, column: 63)
!5433 = !DILocation(line: 97, column: 3, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5431, file: !2, line: 97, column: 3)
!5435 = !DILocation(line: 100, column: 7, scope: !5432)
!5436 = !DILocation(line: 101, column: 3, scope: !5432)
!5437 = !DILocation(line: 104, column: 6, scope: !5366)
!5438 = !DILocation(line: 104, column: 10, scope: !5366)
!5439 = !DILocation(line: 104, column: 6, scope: !5356)
!5440 = !DILocation(line: 105, column: 3, scope: !5365)
!5441 = !DILocation(line: 105, column: 23, scope: !5365)
!5442 = !DILocation(line: 107, column: 24, scope: !5365)
!5443 = !DILocation(line: 107, column: 28, scope: !5365)
!5444 = !DILocation(line: 107, column: 16, scope: !5365)
!5445 = !DILocation(line: 107, column: 3, scope: !5365)
!5446 = !DILocation(line: 107, column: 7, scope: !5365)
!5447 = !DILocation(line: 107, column: 14, scope: !5365)
!5448 = !DILocation(line: 108, column: 8, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5365, file: !2, line: 108, column: 7)
!5450 = !DILocation(line: 108, column: 12, scope: !5449)
!5451 = !DILocation(line: 108, column: 7, scope: !5365)
!5452 = !DILocation(line: 109, column: 8, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5449, file: !2, line: 108, column: 20)
!5454 = !DILocation(line: 110, column: 4, scope: !5453)
!5455 = !DILocation(line: 112, column: 7, scope: !5365)
!5456 = !DILocation(line: 113, column: 9, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5365, file: !2, line: 113, column: 7)
!5458 = !DILocation(line: 113, column: 13, scope: !5457)
!5459 = !DILocation(line: 113, column: 7, scope: !5457)
!5460 = !DILocation(line: 113, column: 24, scope: !5457)
!5461 = !DILocation(line: 113, column: 7, scope: !5365)
!5462 = !DILocation(line: 114, column: 4, scope: !5457)
!5463 = !DILocation(line: 115, column: 17, scope: !5365)
!5464 = !DILocation(line: 115, column: 21, scope: !5365)
!5465 = !DILocation(line: 115, column: 28, scope: !5365)
!5466 = !DILocation(line: 115, column: 34, scope: !5365)
!5467 = !DILocation(line: 115, column: 38, scope: !5365)
!5468 = !DILocation(line: 115, column: 8, scope: !5365)
!5469 = !DILocation(line: 115, column: 6, scope: !5365)
!5470 = !DILocation(line: 116, column: 7, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5365, file: !2, line: 116, column: 7)
!5472 = !DILocation(line: 116, column: 7, scope: !5365)
!5473 = !DILocation(line: 117, column: 11, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5471, file: !2, line: 116, column: 11)
!5475 = !DILocation(line: 117, column: 15, scope: !5474)
!5476 = !DILocation(line: 117, column: 23, scope: !5474)
!5477 = !DILocation(line: 117, column: 27, scope: !5474)
!5478 = !DILocation(line: 117, column: 36, scope: !5474)
!5479 = !DILocation(line: 117, column: 40, scope: !5474)
!5480 = !DILocation(line: 117, column: 34, scope: !5474)
!5481 = !DILocation(line: 118, column: 6, scope: !5474)
!5482 = !DILocation(line: 118, column: 10, scope: !5474)
!5483 = !DILocation(line: 117, column: 4, scope: !5474)
!5484 = !DILocation(line: 119, column: 11, scope: !5474)
!5485 = !DILocation(line: 119, column: 4, scope: !5474)
!5486 = !DILocation(line: 120, column: 14, scope: !5474)
!5487 = !DILocation(line: 120, column: 18, scope: !5474)
!5488 = !DILocation(line: 120, column: 4, scope: !5474)
!5489 = !DILocation(line: 120, column: 8, scope: !5474)
!5490 = !DILocation(line: 120, column: 12, scope: !5474)
!5491 = !DILocation(line: 121, column: 14, scope: !5474)
!5492 = !DILocation(line: 121, column: 18, scope: !5474)
!5493 = !DILocation(line: 121, column: 4, scope: !5474)
!5494 = !DILocation(line: 121, column: 8, scope: !5474)
!5495 = !DILocation(line: 121, column: 12, scope: !5474)
!5496 = !DILocation(line: 122, column: 4, scope: !5474)
!5497 = !DILocation(line: 122, column: 8, scope: !5474)
!5498 = !DILocation(line: 122, column: 20, scope: !5474)
!5499 = !DILocation(line: 123, column: 4, scope: !5474)
!5500 = !DILocation(line: 123, column: 8, scope: !5474)
!5501 = !DILocation(line: 123, column: 18, scope: !5474)
!5502 = !DILocation(line: 124, column: 4, scope: !5474)
!5503 = !DILocation(line: 124, column: 8, scope: !5474)
!5504 = !DILocation(line: 124, column: 20, scope: !5474)
!5505 = !DILocation(line: 125, column: 4, scope: !5474)
!5506 = !DILocation(line: 127, column: 3, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5365, file: !2, line: 127, column: 3)
!5508 = !DILocation(line: 127, column: 3, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5507, file: !2, line: 127, column: 3)
!5510 = !DILocation(line: 128, column: 2, scope: !5366)
!5511 = !DILocation(line: 128, column: 2, scope: !5365)
!5512 = !DILocation(line: 129, column: 1, scope: !5356)
!5513 = !DILocation(line: 130, column: 8, scope: !5356)
!5514 = !DILocation(line: 130, column: 12, scope: !5356)
!5515 = !DILocation(line: 130, column: 2, scope: !5356)
!5516 = !DILocation(line: 131, column: 2, scope: !5356)
!5517 = !DILocation(line: 131, column: 6, scope: !5356)
!5518 = !DILocation(line: 131, column: 13, scope: !5356)
!5519 = !DILocation(line: 132, column: 9, scope: !5356)
!5520 = !DILocation(line: 132, column: 2, scope: !5356)
!5521 = !DILocation(line: 133, column: 1, scope: !5356)
!5522 = distinct !DISubprogram(name: "parse_rock_ridge_inode", scope: !2, file: !2, line: 669, type: !5523, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5525)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{!102, !4754, !457, !102}
!5525 = !{!5526, !5527, !5528, !5529, !5530}
!5526 = !DILocalVariable(name: "de", arg: 1, scope: !5522, file: !2, line: 669, type: !4754)
!5527 = !DILocalVariable(name: "inode", arg: 2, scope: !5522, file: !2, line: 669, type: !457)
!5528 = !DILocalVariable(name: "relocated", arg: 3, scope: !5522, file: !2, line: 670, type: !102)
!5529 = !DILocalVariable(name: "flags", scope: !5522, file: !2, line: 672, type: !102)
!5530 = !DILocalVariable(name: "result", scope: !5522, file: !2, line: 673, type: !102)
!5531 = !DILocation(line: 669, column: 57, scope: !5522)
!5532 = !DILocation(line: 669, column: 75, scope: !5522)
!5533 = !DILocation(line: 670, column: 11, scope: !5522)
!5534 = !DILocation(line: 672, column: 2, scope: !5522)
!5535 = !DILocation(line: 672, column: 6, scope: !5522)
!5536 = !DILocation(line: 672, column: 14, scope: !5522)
!5537 = !DILocation(line: 673, column: 2, scope: !5522)
!5538 = !DILocation(line: 673, column: 6, scope: !5522)
!5539 = !DILocation(line: 673, column: 47, scope: !5522)
!5540 = !DILocation(line: 673, column: 51, scope: !5522)
!5541 = !DILocation(line: 673, column: 58, scope: !5522)
!5542 = !DILocation(line: 673, column: 15, scope: !5522)
!5543 = !DILocation(line: 679, column: 16, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5522, file: !2, line: 679, column: 6)
!5545 = !DILocation(line: 679, column: 23, scope: !5544)
!5546 = !DILocation(line: 679, column: 7, scope: !5544)
!5547 = !DILocation(line: 679, column: 30, scope: !5544)
!5548 = !DILocation(line: 679, column: 44, scope: !5544)
!5549 = !DILocation(line: 680, column: 6, scope: !5544)
!5550 = !DILocation(line: 680, column: 19, scope: !5544)
!5551 = !DILocation(line: 680, column: 26, scope: !5544)
!5552 = !DILocation(line: 680, column: 10, scope: !5544)
!5553 = !DILocation(line: 680, column: 33, scope: !5544)
!5554 = !DILocation(line: 680, column: 40, scope: !5544)
!5555 = !DILocation(line: 679, column: 6, scope: !5522)
!5556 = !DILocation(line: 681, column: 44, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5544, file: !2, line: 680, column: 47)
!5558 = !DILocation(line: 681, column: 48, scope: !5557)
!5559 = !DILocation(line: 682, column: 9, scope: !5557)
!5560 = !DILocation(line: 682, column: 15, scope: !5557)
!5561 = !DILocation(line: 681, column: 12, scope: !5557)
!5562 = !DILocation(line: 681, column: 10, scope: !5557)
!5563 = !DILocation(line: 683, column: 2, scope: !5557)
!5564 = !DILocation(line: 684, column: 9, scope: !5522)
!5565 = !DILocation(line: 685, column: 1, scope: !5522)
!5566 = !DILocation(line: 684, column: 2, scope: !5522)
!5567 = distinct !DISubprogram(name: "parse_rock_ridge_inode_internal", scope: !2, file: !2, line: 309, type: !5523, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5568)
!5568 = !{!5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5582, !5586, !5588, !5589, !5591, !5592, !5593, !5595, !5598, !5599}
!5569 = !DILocalVariable(name: "de", arg: 1, scope: !5567, file: !2, line: 309, type: !4754)
!5570 = !DILocalVariable(name: "inode", arg: 2, scope: !5567, file: !2, line: 310, type: !457)
!5571 = !DILocalVariable(name: "flags", arg: 3, scope: !5567, file: !2, line: 310, type: !102)
!5572 = !DILocalVariable(name: "symlink_len", scope: !5567, file: !2, line: 312, type: !102)
!5573 = !DILocalVariable(name: "cnt", scope: !5567, file: !2, line: 313, type: !102)
!5574 = !DILocalVariable(name: "sig", scope: !5567, file: !2, line: 313, type: !102)
!5575 = !DILocalVariable(name: "reloc_block", scope: !5567, file: !2, line: 314, type: !13)
!5576 = !DILocalVariable(name: "reloc", scope: !5567, file: !2, line: 315, type: !457)
!5577 = !DILocalVariable(name: "rr", scope: !5567, file: !2, line: 316, type: !209)
!5578 = !DILocalVariable(name: "rootflag", scope: !5567, file: !2, line: 317, type: !102)
!5579 = !DILocalVariable(name: "rs", scope: !5567, file: !2, line: 318, type: !4874)
!5580 = !DILocalVariable(name: "ret", scope: !5567, file: !2, line: 319, type: !102)
!5581 = !DILabel(scope: !5567, name: "repeat", file: !2, line: 333)
!5582 = !DILocalVariable(name: "p", scope: !5583, file: !2, line: 379, type: !102)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 378, column: 4)
!5584 = distinct !DILexicalBlock(scope: !5585, file: !2, line: 355, column: 16)
!5585 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 334, column: 21)
!5586 = !DILocalVariable(name: "high", scope: !5587, file: !2, line: 393, type: !102)
!5587 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 392, column: 4)
!5588 = !DILocalVariable(name: "low", scope: !5587, file: !2, line: 393, type: !102)
!5589 = !DILocalVariable(name: "slen", scope: !5590, file: !2, line: 448, type: !102)
!5590 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 447, column: 4)
!5591 = !DILocalVariable(name: "slp", scope: !5590, file: !2, line: 449, type: !352)
!5592 = !DILocalVariable(name: "oldslp", scope: !5590, file: !2, line: 450, type: !352)
!5593 = !DILocalVariable(name: "algo", scope: !5594, file: !2, line: 541, type: !102)
!5594 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 540, column: 23)
!5595 = !DILocalVariable(name: "block_shift", scope: !5596, file: !2, line: 547, type: !102)
!5596 = distinct !DILexicalBlock(scope: !5597, file: !2, line: 546, column: 31)
!5597 = distinct !DILexicalBlock(scope: !5594, file: !2, line: 546, column: 8)
!5598 = !DILabel(scope: !5567, name: "out", file: !2, line: 593)
!5599 = !DILabel(scope: !5567, name: "eio", file: !2, line: 596)
!5600 = !DILocation(line: 309, column: 62, scope: !5567)
!5601 = !DILocation(line: 310, column: 19, scope: !5567)
!5602 = !DILocation(line: 310, column: 30, scope: !5567)
!5603 = !DILocation(line: 312, column: 2, scope: !5567)
!5604 = !DILocation(line: 312, column: 6, scope: !5567)
!5605 = !DILocation(line: 313, column: 2, scope: !5567)
!5606 = !DILocation(line: 313, column: 6, scope: !5567)
!5607 = !DILocation(line: 313, column: 11, scope: !5567)
!5608 = !DILocation(line: 314, column: 2, scope: !5567)
!5609 = !DILocation(line: 314, column: 15, scope: !5567)
!5610 = !DILocation(line: 315, column: 2, scope: !5567)
!5611 = !DILocation(line: 315, column: 16, scope: !5567)
!5612 = !DILocation(line: 316, column: 2, scope: !5567)
!5613 = !DILocation(line: 316, column: 21, scope: !5567)
!5614 = !DILocation(line: 317, column: 2, scope: !5567)
!5615 = !DILocation(line: 317, column: 6, scope: !5567)
!5616 = !DILocation(line: 318, column: 2, scope: !5567)
!5617 = !DILocation(line: 318, column: 20, scope: !5567)
!5618 = !DILocation(line: 319, column: 2, scope: !5567)
!5619 = !DILocation(line: 319, column: 6, scope: !5567)
!5620 = !DILocation(line: 321, column: 16, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 321, column: 6)
!5622 = !DILocation(line: 321, column: 23, scope: !5621)
!5623 = !DILocation(line: 321, column: 7, scope: !5621)
!5624 = !DILocation(line: 321, column: 30, scope: !5621)
!5625 = !DILocation(line: 321, column: 6, scope: !5567)
!5626 = !DILocation(line: 322, column: 3, scope: !5621)
!5627 = !DILocation(line: 324, column: 23, scope: !5567)
!5628 = !DILocation(line: 324, column: 2, scope: !5567)
!5629 = !DILocation(line: 325, column: 19, scope: !5567)
!5630 = !DILocation(line: 325, column: 23, scope: !5567)
!5631 = !DILocation(line: 325, column: 2, scope: !5567)
!5632 = !DILocation(line: 326, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 326, column: 6)
!5634 = !DILocation(line: 326, column: 12, scope: !5633)
!5635 = !DILocation(line: 326, column: 6, scope: !5567)
!5636 = !DILocation(line: 327, column: 6, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5633, file: !2, line: 326, column: 28)
!5638 = !DILocation(line: 327, column: 10, scope: !5637)
!5639 = !DILocation(line: 328, column: 6, scope: !5637)
!5640 = !DILocation(line: 328, column: 10, scope: !5637)
!5641 = !DILocation(line: 329, column: 10, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5637, file: !2, line: 329, column: 7)
!5643 = !DILocation(line: 329, column: 14, scope: !5642)
!5644 = !DILocation(line: 329, column: 7, scope: !5637)
!5645 = !DILocation(line: 330, column: 7, scope: !5642)
!5646 = !DILocation(line: 330, column: 11, scope: !5642)
!5647 = !DILocation(line: 330, column: 4, scope: !5642)
!5648 = !DILocation(line: 331, column: 2, scope: !5637)
!5649 = !DILocation(line: 326, column: 14, scope: !5633)
!5650 = !DILocation(line: 333, column: 1, scope: !5567)
!5651 = !DILocation(line: 334, column: 2, scope: !5567)
!5652 = !DILocation(line: 334, column: 12, scope: !5567)
!5653 = !DILocation(line: 334, column: 16, scope: !5567)
!5654 = !DILocation(line: 335, column: 32, scope: !5585)
!5655 = !DILocation(line: 335, column: 6, scope: !5585)
!5656 = !DILocation(line: 341, column: 7, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5585, file: !2, line: 341, column: 7)
!5658 = !DILocation(line: 341, column: 11, scope: !5657)
!5659 = !DILocation(line: 341, column: 15, scope: !5657)
!5660 = !DILocation(line: 341, column: 7, scope: !5585)
!5661 = !DILocation(line: 342, column: 4, scope: !5657)
!5662 = !DILocation(line: 343, column: 23, scope: !5585)
!5663 = !DILocation(line: 343, column: 9, scope: !5585)
!5664 = !DILocation(line: 343, column: 7, scope: !5585)
!5665 = !DILocation(line: 344, column: 32, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5585, file: !2, line: 344, column: 7)
!5667 = !DILocation(line: 344, column: 7, scope: !5666)
!5668 = !DILocation(line: 344, column: 7, scope: !5585)
!5669 = !DILocation(line: 345, column: 4, scope: !5666)
!5670 = !DILocation(line: 346, column: 13, scope: !5585)
!5671 = !DILocation(line: 346, column: 17, scope: !5585)
!5672 = !DILocation(line: 346, column: 6, scope: !5585)
!5673 = !DILocation(line: 346, column: 10, scope: !5585)
!5674 = !DILocation(line: 347, column: 13, scope: !5585)
!5675 = !DILocation(line: 347, column: 17, scope: !5585)
!5676 = !DILocation(line: 347, column: 6, scope: !5585)
!5677 = !DILocation(line: 347, column: 10, scope: !5585)
!5678 = !DILocation(line: 352, column: 10, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5585, file: !2, line: 352, column: 7)
!5680 = !DILocation(line: 352, column: 14, scope: !5679)
!5681 = !DILocation(line: 352, column: 7, scope: !5585)
!5682 = !DILocation(line: 353, column: 4, scope: !5679)
!5683 = !DILocation(line: 355, column: 11, scope: !5585)
!5684 = !DILocation(line: 355, column: 3, scope: !5585)
!5685 = !DILocation(line: 364, column: 17, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 364, column: 8)
!5687 = !DILocation(line: 364, column: 21, scope: !5686)
!5688 = !DILocation(line: 364, column: 8, scope: !5686)
!5689 = !DILocation(line: 364, column: 8, scope: !5584)
!5690 = !DILocation(line: 365, column: 5, scope: !5686)
!5691 = !DILocation(line: 366, column: 4, scope: !5584)
!5692 = !DILocation(line: 368, column: 32, scope: !5584)
!5693 = !DILocation(line: 368, column: 36, scope: !5584)
!5694 = !DILocation(line: 368, column: 41, scope: !5584)
!5695 = !DILocation(line: 368, column: 21, scope: !5584)
!5696 = !DILocation(line: 368, column: 7, scope: !5584)
!5697 = !DILocation(line: 368, column: 19, scope: !5584)
!5698 = !DILocation(line: 369, column: 32, scope: !5584)
!5699 = !DILocation(line: 369, column: 36, scope: !5584)
!5700 = !DILocation(line: 369, column: 41, scope: !5584)
!5701 = !DILocation(line: 369, column: 21, scope: !5584)
!5702 = !DILocation(line: 369, column: 7, scope: !5584)
!5703 = !DILocation(line: 369, column: 19, scope: !5584)
!5704 = !DILocation(line: 370, column: 30, scope: !5584)
!5705 = !DILocation(line: 370, column: 34, scope: !5584)
!5706 = !DILocation(line: 370, column: 39, scope: !5584)
!5707 = !DILocation(line: 370, column: 19, scope: !5584)
!5708 = !DILocation(line: 370, column: 7, scope: !5584)
!5709 = !DILocation(line: 370, column: 17, scope: !5584)
!5710 = !DILocation(line: 371, column: 4, scope: !5584)
!5711 = !DILocation(line: 374, column: 8, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 374, column: 8)
!5713 = !DILocation(line: 374, column: 12, scope: !5712)
!5714 = !DILocation(line: 374, column: 17, scope: !5712)
!5715 = !DILocation(line: 374, column: 24, scope: !5712)
!5716 = !DILocation(line: 374, column: 67, scope: !5712)
!5717 = !DILocation(line: 374, column: 71, scope: !5712)
!5718 = !DILocation(line: 374, column: 65, scope: !5712)
!5719 = !DILocation(line: 374, column: 8, scope: !5584)
!5720 = !DILocation(line: 375, column: 5, scope: !5712)
!5721 = !DILocation(line: 376, column: 13, scope: !5584)
!5722 = !DILocation(line: 376, column: 20, scope: !5584)
!5723 = !DILocation(line: 376, column: 4, scope: !5584)
!5724 = !DILocation(line: 376, column: 27, scope: !5584)
!5725 = !DILocation(line: 376, column: 34, scope: !5584)
!5726 = !DILocation(line: 377, column: 4, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 377, column: 4)
!5728 = !DILocation(line: 377, column: 4, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5727, file: !2, line: 377, column: 4)
!5730 = !DILocation(line: 379, column: 5, scope: !5583)
!5731 = !DILocation(line: 379, column: 9, scope: !5583)
!5732 = !DILocation(line: 380, column: 12, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5583, file: !2, line: 380, column: 5)
!5734 = !DILocation(line: 380, column: 10, scope: !5733)
!5735 = !DILocation(line: 380, column: 17, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5733, file: !2, line: 380, column: 5)
!5737 = !DILocation(line: 380, column: 21, scope: !5736)
!5738 = !DILocation(line: 380, column: 25, scope: !5736)
!5739 = !DILocation(line: 380, column: 30, scope: !5736)
!5740 = !DILocation(line: 380, column: 19, scope: !5736)
!5741 = !DILocation(line: 380, column: 5, scope: !5733)
!5742 = !DILocation(line: 381, column: 6, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5736, file: !2, line: 381, column: 6)
!5744 = !DILocation(line: 381, column: 6, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5743, file: !2, line: 381, column: 6)
!5746 = !DILocation(line: 381, column: 6, scope: !5736)
!5747 = !DILocation(line: 380, column: 39, scope: !5736)
!5748 = !DILocation(line: 380, column: 5, scope: !5736)
!5749 = distinct !{!5749, !5741, !5750, !5077, !5078}
!5750 = !DILocation(line: 381, column: 6, scope: !5733)
!5751 = !DILocation(line: 382, column: 4, scope: !5584)
!5752 = !DILocation(line: 383, column: 4, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 383, column: 4)
!5754 = !DILocation(line: 383, column: 4, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5753, file: !2, line: 383, column: 4)
!5756 = !DILocation(line: 384, column: 4, scope: !5584)
!5757 = !DILocation(line: 386, column: 31, scope: !5584)
!5758 = !DILocation(line: 386, column: 35, scope: !5584)
!5759 = !DILocation(line: 386, column: 40, scope: !5584)
!5760 = !DILocation(line: 386, column: 20, scope: !5584)
!5761 = !DILocation(line: 386, column: 4, scope: !5584)
!5762 = !DILocation(line: 386, column: 11, scope: !5584)
!5763 = !DILocation(line: 386, column: 18, scope: !5584)
!5764 = !DILocation(line: 387, column: 14, scope: !5584)
!5765 = !DILocation(line: 387, column: 32, scope: !5584)
!5766 = !DILocation(line: 387, column: 36, scope: !5584)
!5767 = !DILocation(line: 387, column: 41, scope: !5584)
!5768 = !DILocation(line: 387, column: 21, scope: !5584)
!5769 = !DILocation(line: 387, column: 4, scope: !5584)
!5770 = !DILocation(line: 388, column: 16, scope: !5584)
!5771 = !DILocation(line: 388, column: 34, scope: !5584)
!5772 = !DILocation(line: 388, column: 38, scope: !5584)
!5773 = !DILocation(line: 388, column: 43, scope: !5584)
!5774 = !DILocation(line: 388, column: 23, scope: !5584)
!5775 = !DILocation(line: 388, column: 4, scope: !5584)
!5776 = !DILocation(line: 389, column: 16, scope: !5584)
!5777 = !DILocation(line: 389, column: 34, scope: !5584)
!5778 = !DILocation(line: 389, column: 38, scope: !5584)
!5779 = !DILocation(line: 389, column: 43, scope: !5584)
!5780 = !DILocation(line: 389, column: 23, scope: !5584)
!5781 = !DILocation(line: 389, column: 4, scope: !5584)
!5782 = !DILocation(line: 390, column: 4, scope: !5584)
!5783 = !DILocation(line: 393, column: 5, scope: !5587)
!5784 = !DILocation(line: 393, column: 9, scope: !5587)
!5785 = !DILocation(line: 393, column: 15, scope: !5587)
!5786 = !DILocation(line: 394, column: 23, scope: !5587)
!5787 = !DILocation(line: 394, column: 27, scope: !5587)
!5788 = !DILocation(line: 394, column: 32, scope: !5587)
!5789 = !DILocation(line: 394, column: 12, scope: !5587)
!5790 = !DILocation(line: 394, column: 10, scope: !5587)
!5791 = !DILocation(line: 395, column: 22, scope: !5587)
!5792 = !DILocation(line: 395, column: 26, scope: !5587)
!5793 = !DILocation(line: 395, column: 31, scope: !5587)
!5794 = !DILocation(line: 395, column: 11, scope: !5587)
!5795 = !DILocation(line: 395, column: 9, scope: !5587)
!5796 = !DILocation(line: 406, column: 10, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5587, file: !2, line: 406, column: 9)
!5798 = !DILocation(line: 406, column: 14, scope: !5797)
!5799 = !DILocation(line: 406, column: 23, scope: !5797)
!5800 = !DILocation(line: 406, column: 26, scope: !5797)
!5801 = !DILocation(line: 406, column: 31, scope: !5797)
!5802 = !DILocation(line: 406, column: 9, scope: !5587)
!5803 = !DILocation(line: 408, column: 10, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5797, file: !2, line: 406, column: 37)
!5805 = !DILocation(line: 407, column: 6, scope: !5804)
!5806 = !DILocation(line: 407, column: 13, scope: !5804)
!5807 = !DILocation(line: 407, column: 20, scope: !5804)
!5808 = !DILocation(line: 409, column: 5, scope: !5804)
!5809 = !DILocation(line: 411, column: 10, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5797, file: !2, line: 409, column: 12)
!5811 = !DILocation(line: 410, column: 6, scope: !5810)
!5812 = !DILocation(line: 410, column: 13, scope: !5810)
!5813 = !DILocation(line: 410, column: 20, scope: !5810)
!5814 = !DILocation(line: 413, column: 4, scope: !5584)
!5815 = !DILocation(line: 414, column: 4, scope: !5584)
!5816 = !DILocation(line: 422, column: 8, scope: !5584)
!5817 = !DILocation(line: 423, column: 8, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 423, column: 8)
!5819 = !DILocation(line: 423, column: 12, scope: !5818)
!5820 = !DILocation(line: 423, column: 17, scope: !5818)
!5821 = !DILocation(line: 423, column: 23, scope: !5818)
!5822 = !DILocation(line: 423, column: 8, scope: !5584)
!5823 = !DILocation(line: 424, column: 21, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5818, file: !2, line: 423, column: 36)
!5825 = !DILocation(line: 425, column: 16, scope: !5824)
!5826 = !DILocation(line: 425, column: 20, scope: !5824)
!5827 = !DILocation(line: 425, column: 25, scope: !5824)
!5828 = !DILocation(line: 425, column: 34, scope: !5824)
!5829 = !DILocation(line: 425, column: 38, scope: !5824)
!5830 = !DILocation(line: 425, column: 7, scope: !5824)
!5831 = !DILocation(line: 424, column: 5, scope: !5824)
!5832 = !DILocation(line: 427, column: 4, scope: !5824)
!5833 = !DILocation(line: 428, column: 8, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 428, column: 8)
!5835 = !DILocation(line: 428, column: 12, scope: !5834)
!5836 = !DILocation(line: 428, column: 17, scope: !5834)
!5837 = !DILocation(line: 428, column: 23, scope: !5834)
!5838 = !DILocation(line: 428, column: 8, scope: !5584)
!5839 = !DILocation(line: 430, column: 18, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5834, file: !2, line: 428, column: 36)
!5841 = !DILocation(line: 430, column: 22, scope: !5840)
!5842 = !DILocation(line: 430, column: 27, scope: !5840)
!5843 = !DILocation(line: 430, column: 36, scope: !5840)
!5844 = !DILocation(line: 430, column: 40, scope: !5840)
!5845 = !DILocation(line: 430, column: 9, scope: !5840)
!5846 = !DILocation(line: 429, column: 5, scope: !5840)
!5847 = !DILocation(line: 429, column: 12, scope: !5840)
!5848 = !DILocation(line: 429, column: 20, scope: !5840)
!5849 = !DILocation(line: 429, column: 27, scope: !5840)
!5850 = !DILocation(line: 432, column: 5, scope: !5840)
!5851 = !DILocation(line: 432, column: 12, scope: !5840)
!5852 = !DILocation(line: 432, column: 20, scope: !5840)
!5853 = !DILocation(line: 432, column: 28, scope: !5840)
!5854 = !DILocation(line: 433, column: 4, scope: !5840)
!5855 = !DILocation(line: 434, column: 8, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 434, column: 8)
!5857 = !DILocation(line: 434, column: 12, scope: !5856)
!5858 = !DILocation(line: 434, column: 17, scope: !5856)
!5859 = !DILocation(line: 434, column: 23, scope: !5856)
!5860 = !DILocation(line: 434, column: 8, scope: !5584)
!5861 = !DILocation(line: 436, column: 18, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5856, file: !2, line: 434, column: 36)
!5863 = !DILocation(line: 436, column: 22, scope: !5862)
!5864 = !DILocation(line: 436, column: 27, scope: !5862)
!5865 = !DILocation(line: 436, column: 36, scope: !5862)
!5866 = !DILocation(line: 436, column: 40, scope: !5862)
!5867 = !DILocation(line: 436, column: 9, scope: !5862)
!5868 = !DILocation(line: 435, column: 5, scope: !5862)
!5869 = !DILocation(line: 435, column: 12, scope: !5862)
!5870 = !DILocation(line: 435, column: 20, scope: !5862)
!5871 = !DILocation(line: 435, column: 27, scope: !5862)
!5872 = !DILocation(line: 438, column: 5, scope: !5862)
!5873 = !DILocation(line: 438, column: 12, scope: !5862)
!5874 = !DILocation(line: 438, column: 20, scope: !5862)
!5875 = !DILocation(line: 438, column: 28, scope: !5862)
!5876 = !DILocation(line: 439, column: 4, scope: !5862)
!5877 = !DILocation(line: 440, column: 8, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 440, column: 8)
!5879 = !DILocation(line: 440, column: 12, scope: !5878)
!5880 = !DILocation(line: 440, column: 17, scope: !5878)
!5881 = !DILocation(line: 440, column: 23, scope: !5878)
!5882 = !DILocation(line: 440, column: 8, scope: !5584)
!5883 = !DILocation(line: 441, column: 21, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5878, file: !2, line: 440, column: 40)
!5885 = !DILocation(line: 442, column: 16, scope: !5884)
!5886 = !DILocation(line: 442, column: 20, scope: !5884)
!5887 = !DILocation(line: 442, column: 25, scope: !5884)
!5888 = !DILocation(line: 442, column: 34, scope: !5884)
!5889 = !DILocation(line: 442, column: 38, scope: !5884)
!5890 = !DILocation(line: 442, column: 7, scope: !5884)
!5891 = !DILocation(line: 441, column: 5, scope: !5884)
!5892 = !DILocation(line: 444, column: 4, scope: !5884)
!5893 = !DILocation(line: 445, column: 4, scope: !5584)
!5894 = !DILocation(line: 448, column: 5, scope: !5590)
!5895 = !DILocation(line: 448, column: 9, scope: !5590)
!5896 = !DILocation(line: 449, column: 5, scope: !5590)
!5897 = !DILocation(line: 449, column: 26, scope: !5590)
!5898 = !DILocation(line: 450, column: 5, scope: !5590)
!5899 = !DILocation(line: 450, column: 26, scope: !5590)
!5900 = !DILocation(line: 451, column: 12, scope: !5590)
!5901 = !DILocation(line: 451, column: 16, scope: !5590)
!5902 = !DILocation(line: 451, column: 20, scope: !5590)
!5903 = !DILocation(line: 451, column: 10, scope: !5590)
!5904 = !DILocation(line: 452, column: 12, scope: !5590)
!5905 = !DILocation(line: 452, column: 16, scope: !5590)
!5906 = !DILocation(line: 452, column: 21, scope: !5590)
!5907 = !DILocation(line: 452, column: 9, scope: !5590)
!5908 = !DILocation(line: 453, column: 21, scope: !5590)
!5909 = !DILocation(line: 453, column: 5, scope: !5590)
!5910 = !DILocation(line: 453, column: 12, scope: !5590)
!5911 = !DILocation(line: 453, column: 19, scope: !5590)
!5912 = !DILocation(line: 454, column: 5, scope: !5590)
!5913 = !DILocation(line: 454, column: 12, scope: !5590)
!5914 = !DILocation(line: 454, column: 17, scope: !5590)
!5915 = !DILocation(line: 455, column: 15, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5590, file: !2, line: 454, column: 22)
!5917 = !DILocation(line: 456, column: 14, scope: !5916)
!5918 = !DILocation(line: 456, column: 19, scope: !5916)
!5919 = !DILocation(line: 456, column: 25, scope: !5916)
!5920 = !DILocation(line: 456, column: 6, scope: !5916)
!5921 = !DILocation(line: 459, column: 11, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5916, file: !2, line: 456, column: 31)
!5923 = !DILocation(line: 459, column: 16, scope: !5922)
!5924 = !DILocation(line: 458, column: 7, scope: !5922)
!5925 = !DILocation(line: 458, column: 14, scope: !5922)
!5926 = !DILocation(line: 458, column: 21, scope: !5922)
!5927 = !DILocation(line: 460, column: 7, scope: !5922)
!5928 = !DILocation(line: 462, column: 7, scope: !5922)
!5929 = !DILocation(line: 462, column: 14, scope: !5922)
!5930 = !DILocation(line: 462, column: 21, scope: !5922)
!5931 = !DILocation(line: 463, column: 7, scope: !5922)
!5932 = !DILocation(line: 465, column: 7, scope: !5922)
!5933 = !DILocation(line: 465, column: 14, scope: !5922)
!5934 = !DILocation(line: 465, column: 21, scope: !5922)
!5935 = !DILocation(line: 466, column: 7, scope: !5922)
!5936 = !DILocation(line: 468, column: 16, scope: !5922)
!5937 = !DILocation(line: 469, column: 7, scope: !5922)
!5938 = !DILocation(line: 469, column: 14, scope: !5922)
!5939 = !DILocation(line: 469, column: 21, scope: !5922)
!5940 = !DILocation(line: 470, column: 7, scope: !5922)
!5941 = !DILocation(line: 472, column: 7, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5922, file: !2, line: 472, column: 7)
!5943 = !DILocation(line: 472, column: 7, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5942, file: !2, line: 472, column: 7)
!5945 = !DILocation(line: 474, column: 6, scope: !5922)
!5946 = !DILocation(line: 475, column: 14, scope: !5916)
!5947 = !DILocation(line: 475, column: 19, scope: !5916)
!5948 = !DILocation(line: 475, column: 23, scope: !5916)
!5949 = !DILocation(line: 475, column: 11, scope: !5916)
!5950 = !DILocation(line: 476, column: 15, scope: !5916)
!5951 = !DILocation(line: 476, column: 13, scope: !5916)
!5952 = !DILocation(line: 478, column: 17, scope: !5916)
!5953 = !DILocation(line: 478, column: 24, scope: !5916)
!5954 = !DILocation(line: 478, column: 29, scope: !5916)
!5955 = !DILocation(line: 478, column: 22, scope: !5916)
!5956 = !DILocation(line: 478, column: 33, scope: !5916)
!5957 = !DILocation(line: 477, column: 10, scope: !5916)
!5958 = !DILocation(line: 480, column: 10, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5916, file: !2, line: 480, column: 10)
!5960 = !DILocation(line: 480, column: 15, scope: !5959)
!5961 = !DILocation(line: 480, column: 10, scope: !5916)
!5962 = !DILocation(line: 481, column: 13, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 481, column: 11)
!5964 = distinct !DILexicalBlock(scope: !5959, file: !2, line: 480, column: 20)
!5965 = !DILocation(line: 481, column: 17, scope: !5963)
!5966 = !DILocation(line: 482, column: 13, scope: !5963)
!5967 = !DILocation(line: 482, column: 19, scope: !5963)
!5968 = !DILocation(line: 482, column: 24, scope: !5963)
!5969 = !DILocation(line: 483, column: 11, scope: !5963)
!5970 = !DILocation(line: 484, column: 13, scope: !5963)
!5971 = !DILocation(line: 485, column: 13, scope: !5963)
!5972 = !DILocation(line: 485, column: 19, scope: !5963)
!5973 = !DILocation(line: 485, column: 24, scope: !5963)
!5974 = !DILocation(line: 481, column: 11, scope: !5964)
!5975 = !DILocation(line: 486, column: 8, scope: !5963)
!5976 = !DILocation(line: 486, column: 15, scope: !5963)
!5977 = !DILocation(line: 486, column: 22, scope: !5963)
!5978 = !DILocation(line: 488, column: 7, scope: !5964)
!5979 = !DILocation(line: 495, column: 11, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5916, file: !2, line: 495, column: 10)
!5981 = !DILocation(line: 496, column: 10, scope: !5980)
!5982 = !DILocation(line: 496, column: 14, scope: !5980)
!5983 = !DILocation(line: 496, column: 22, scope: !5980)
!5984 = !DILocation(line: 496, column: 28, scope: !5980)
!5985 = !DILocation(line: 496, column: 33, scope: !5980)
!5986 = !DILocation(line: 495, column: 10, scope: !5916)
!5987 = !DILocation(line: 497, column: 7, scope: !5980)
!5988 = !DILocation(line: 497, column: 14, scope: !5980)
!5989 = !DILocation(line: 497, column: 21, scope: !5980)
!5990 = distinct !{!5990, !5912, !5991, !5077, !5078}
!5991 = !DILocation(line: 498, column: 5, scope: !5590)
!5992 = !DILocation(line: 499, column: 4, scope: !5584)
!5993 = !DILocation(line: 500, column: 18, scope: !5584)
!5994 = !DILocation(line: 500, column: 25, scope: !5584)
!5995 = !DILocation(line: 500, column: 16, scope: !5584)
!5996 = !DILocation(line: 501, column: 4, scope: !5584)
!5997 = !DILocation(line: 503, column: 4, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 503, column: 4)
!5999 = !DILocation(line: 503, column: 4, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5998, file: !2, line: 503, column: 4)
!6001 = !DILocation(line: 505, column: 4, scope: !5584)
!6002 = !DILocation(line: 507, column: 8, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 507, column: 8)
!6004 = !DILocation(line: 507, column: 14, scope: !6003)
!6005 = !DILocation(line: 507, column: 8, scope: !5584)
!6006 = !DILocation(line: 508, column: 5, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !6008, file: !2, line: 508, column: 5)
!6008 = distinct !DILexicalBlock(scope: !6003, file: !2, line: 507, column: 29)
!6009 = !DILocation(line: 508, column: 5, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6007, file: !2, line: 508, column: 5)
!6011 = !DILocation(line: 511, column: 5, scope: !6008)
!6012 = !DILocation(line: 513, column: 29, scope: !5584)
!6013 = !DILocation(line: 513, column: 33, scope: !5584)
!6014 = !DILocation(line: 513, column: 38, scope: !5584)
!6015 = !DILocation(line: 513, column: 18, scope: !5584)
!6016 = !DILocation(line: 513, column: 16, scope: !5584)
!6017 = !DILocation(line: 514, column: 8, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 514, column: 8)
!6019 = !DILocation(line: 514, column: 31, scope: !6018)
!6020 = !DILocation(line: 514, column: 23, scope: !6018)
!6021 = !DILocation(line: 514, column: 39, scope: !6018)
!6022 = !DILocation(line: 514, column: 20, scope: !6018)
!6023 = !DILocation(line: 514, column: 53, scope: !6018)
!6024 = !DILocation(line: 515, column: 16, scope: !6018)
!6025 = !DILocation(line: 515, column: 8, scope: !6018)
!6026 = !DILocation(line: 515, column: 24, scope: !6018)
!6027 = !DILocation(line: 515, column: 39, scope: !6018)
!6028 = !DILocation(line: 514, column: 8, scope: !5584)
!6029 = !DILocation(line: 516, column: 5, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6031, file: !2, line: 516, column: 5)
!6031 = distinct !DILexicalBlock(scope: !6018, file: !2, line: 515, column: 45)
!6032 = !DILocation(line: 516, column: 5, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6030, file: !2, line: 516, column: 5)
!6034 = !DILocation(line: 519, column: 5, scope: !6031)
!6035 = !DILocation(line: 521, column: 37, scope: !5584)
!6036 = !DILocation(line: 521, column: 12, scope: !5584)
!6037 = !DILocation(line: 521, column: 4, scope: !5584)
!6038 = !DILocation(line: 521, column: 20, scope: !5584)
!6039 = !DILocation(line: 521, column: 35, scope: !5584)
!6040 = !DILocation(line: 522, column: 29, scope: !5584)
!6041 = !DILocation(line: 522, column: 36, scope: !5584)
!6042 = !DILocation(line: 522, column: 42, scope: !5584)
!6043 = !DILocation(line: 522, column: 12, scope: !5584)
!6044 = !DILocation(line: 522, column: 10, scope: !5584)
!6045 = !DILocation(line: 523, column: 15, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 523, column: 8)
!6047 = !DILocation(line: 523, column: 8, scope: !6046)
!6048 = !DILocation(line: 523, column: 8, scope: !5584)
!6049 = !DILocation(line: 524, column: 19, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6046, file: !2, line: 523, column: 23)
!6051 = !DILocation(line: 524, column: 11, scope: !6050)
!6052 = !DILocation(line: 524, column: 9, scope: !6050)
!6053 = !DILocation(line: 525, column: 5, scope: !6050)
!6054 = !DILocation(line: 527, column: 20, scope: !5584)
!6055 = !DILocation(line: 527, column: 27, scope: !5584)
!6056 = !DILocation(line: 527, column: 4, scope: !5584)
!6057 = !DILocation(line: 527, column: 11, scope: !5584)
!6058 = !DILocation(line: 527, column: 18, scope: !5584)
!6059 = !DILocation(line: 528, column: 14, scope: !5584)
!6060 = !DILocation(line: 528, column: 21, scope: !5584)
!6061 = !DILocation(line: 528, column: 28, scope: !5584)
!6062 = !DILocation(line: 528, column: 4, scope: !5584)
!6063 = !DILocation(line: 529, column: 4, scope: !5584)
!6064 = !DILocation(line: 529, column: 11, scope: !5584)
!6065 = !DILocation(line: 529, column: 19, scope: !5584)
!6066 = !DILocation(line: 529, column: 26, scope: !5584)
!6067 = !DILocation(line: 530, column: 4, scope: !5584)
!6068 = !DILocation(line: 530, column: 11, scope: !5584)
!6069 = !DILocation(line: 530, column: 19, scope: !5584)
!6070 = !DILocation(line: 530, column: 26, scope: !5584)
!6071 = !DILocation(line: 531, column: 20, scope: !5584)
!6072 = !DILocation(line: 531, column: 27, scope: !5584)
!6073 = !DILocation(line: 531, column: 4, scope: !5584)
!6074 = !DILocation(line: 531, column: 11, scope: !5584)
!6075 = !DILocation(line: 531, column: 18, scope: !5584)
!6076 = !DILocation(line: 532, column: 20, scope: !5584)
!6077 = !DILocation(line: 532, column: 27, scope: !5584)
!6078 = !DILocation(line: 532, column: 4, scope: !5584)
!6079 = !DILocation(line: 532, column: 11, scope: !5584)
!6080 = !DILocation(line: 532, column: 18, scope: !5584)
!6081 = !DILocation(line: 533, column: 22, scope: !5584)
!6082 = !DILocation(line: 533, column: 29, scope: !5584)
!6083 = !DILocation(line: 533, column: 4, scope: !5584)
!6084 = !DILocation(line: 533, column: 11, scope: !5584)
!6085 = !DILocation(line: 533, column: 20, scope: !5584)
!6086 = !DILocation(line: 534, column: 4, scope: !5584)
!6087 = !DILocation(line: 534, column: 11, scope: !5584)
!6088 = !DILocation(line: 534, column: 21, scope: !5584)
!6089 = !DILocation(line: 534, column: 28, scope: !5584)
!6090 = !DILocation(line: 535, column: 26, scope: !5584)
!6091 = !DILocation(line: 535, column: 49, scope: !5584)
!6092 = !DILocation(line: 535, column: 33, scope: !5584)
!6093 = !DILocation(line: 535, column: 4, scope: !5584)
!6094 = !DILocation(line: 536, column: 4, scope: !5584)
!6095 = !DILocation(line: 536, column: 11, scope: !5584)
!6096 = !DILocation(line: 536, column: 21, scope: !5584)
!6097 = !DILocation(line: 536, column: 28, scope: !5584)
!6098 = !DILocation(line: 537, column: 9, scope: !5584)
!6099 = !DILocation(line: 537, column: 4, scope: !5584)
!6100 = !DILocation(line: 538, column: 4, scope: !5584)
!6101 = !DILocation(line: 541, column: 4, scope: !5594)
!6102 = !DILocation(line: 541, column: 8, scope: !5594)
!6103 = !DILocation(line: 543, column: 17, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !5594, file: !2, line: 543, column: 8)
!6105 = !DILocation(line: 543, column: 24, scope: !6104)
!6106 = !DILocation(line: 543, column: 8, scope: !6104)
!6107 = !DILocation(line: 543, column: 31, scope: !6104)
!6108 = !DILocation(line: 543, column: 8, scope: !5594)
!6109 = !DILocation(line: 544, column: 5, scope: !6104)
!6110 = !DILocation(line: 545, column: 22, scope: !5594)
!6111 = !DILocation(line: 545, column: 26, scope: !5594)
!6112 = !DILocation(line: 545, column: 31, scope: !5594)
!6113 = !DILocation(line: 545, column: 11, scope: !5594)
!6114 = !DILocation(line: 545, column: 9, scope: !5594)
!6115 = !DILocation(line: 546, column: 8, scope: !5597)
!6116 = !DILocation(line: 546, column: 13, scope: !5597)
!6117 = !DILocation(line: 546, column: 8, scope: !5594)
!6118 = !DILocation(line: 547, column: 5, scope: !5596)
!6119 = !DILocation(line: 547, column: 9, scope: !5596)
!6120 = !DILocation(line: 548, column: 18, scope: !5596)
!6121 = !DILocation(line: 548, column: 22, scope: !5596)
!6122 = !DILocation(line: 548, column: 27, scope: !5596)
!6123 = !DILocation(line: 548, column: 6, scope: !5596)
!6124 = !DILocation(line: 549, column: 9, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !5596, file: !2, line: 549, column: 9)
!6126 = !DILocation(line: 549, column: 21, scope: !6125)
!6127 = !DILocation(line: 549, column: 9, scope: !5596)
!6128 = !DILocation(line: 550, column: 6, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6130, file: !2, line: 550, column: 6)
!6130 = distinct !DILexicalBlock(scope: !6125, file: !2, line: 549, column: 27)
!6131 = !DILocation(line: 550, column: 6, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6129, file: !2, line: 550, column: 6)
!6133 = !DILocation(line: 554, column: 5, scope: !6130)
!6134 = !DILocation(line: 559, column: 14, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6125, file: !2, line: 554, column: 12)
!6136 = !DILocation(line: 559, column: 6, scope: !6135)
!6137 = !DILocation(line: 559, column: 22, scope: !6135)
!6138 = !DILocation(line: 559, column: 36, scope: !6135)
!6139 = !DILocation(line: 567, column: 19, scope: !6135)
!6140 = !DILocation(line: 567, column: 23, scope: !6135)
!6141 = !DILocation(line: 567, column: 28, scope: !6135)
!6142 = !DILocation(line: 567, column: 7, scope: !6135)
!6143 = !DILocation(line: 566, column: 14, scope: !6135)
!6144 = !DILocation(line: 566, column: 6, scope: !6135)
!6145 = !DILocation(line: 566, column: 22, scope: !6135)
!6146 = !DILocation(line: 566, column: 39, scope: !6135)
!6147 = !DILocation(line: 569, column: 19, scope: !6135)
!6148 = !DILocation(line: 569, column: 23, scope: !6135)
!6149 = !DILocation(line: 569, column: 28, scope: !6135)
!6150 = !DILocation(line: 569, column: 7, scope: !6135)
!6151 = !DILocation(line: 568, column: 14, scope: !6135)
!6152 = !DILocation(line: 568, column: 6, scope: !6135)
!6153 = !DILocation(line: 568, column: 22, scope: !6135)
!6154 = !DILocation(line: 568, column: 39, scope: !6135)
!6155 = !DILocation(line: 571, column: 21, scope: !6135)
!6156 = !DILocation(line: 571, column: 25, scope: !6135)
!6157 = !DILocation(line: 572, column: 14, scope: !6135)
!6158 = !DILocation(line: 571, column: 10, scope: !6135)
!6159 = !DILocation(line: 570, column: 6, scope: !6135)
!6160 = !DILocation(line: 570, column: 13, scope: !6135)
!6161 = !DILocation(line: 570, column: 20, scope: !6135)
!6162 = !DILocation(line: 574, column: 4, scope: !5597)
!6163 = !DILocation(line: 574, column: 4, scope: !5596)
!6164 = !DILocation(line: 575, column: 5, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6166, file: !2, line: 575, column: 5)
!6166 = distinct !DILexicalBlock(scope: !5597, file: !2, line: 574, column: 11)
!6167 = !DILocation(line: 575, column: 5, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6165, file: !2, line: 575, column: 5)
!6169 = !DILocation(line: 581, column: 4, scope: !5594)
!6170 = !DILocation(line: 582, column: 3, scope: !5584)
!6171 = !DILocation(line: 585, column: 4, scope: !5584)
!6172 = distinct !{!6172, !5651, !6173, !5077, !5078}
!6173 = !DILocation(line: 587, column: 2, scope: !5567)
!6174 = !DILocation(line: 588, column: 8, scope: !5567)
!6175 = !DILocation(line: 588, column: 6, scope: !5567)
!6176 = !DILocation(line: 589, column: 6, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 589, column: 6)
!6178 = !DILocation(line: 589, column: 10, scope: !6177)
!6179 = !DILocation(line: 589, column: 6, scope: !5567)
!6180 = !DILocation(line: 590, column: 3, scope: !6177)
!6181 = !DILocation(line: 591, column: 6, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 591, column: 6)
!6183 = !DILocation(line: 591, column: 10, scope: !6182)
!6184 = !DILocation(line: 591, column: 6, scope: !5567)
!6185 = !DILocation(line: 592, column: 7, scope: !6182)
!6186 = !DILocation(line: 592, column: 3, scope: !6182)
!6187 = !DILocation(line: 591, column: 13, scope: !6182)
!6188 = !DILocation(line: 593, column: 1, scope: !5567)
!6189 = !DILocation(line: 594, column: 11, scope: !5567)
!6190 = !DILocation(line: 594, column: 2, scope: !5567)
!6191 = !DILocation(line: 595, column: 9, scope: !5567)
!6192 = !DILocation(line: 595, column: 2, scope: !5567)
!6193 = !DILocation(line: 596, column: 1, scope: !5567)
!6194 = !DILocation(line: 597, column: 6, scope: !5567)
!6195 = !DILocation(line: 598, column: 2, scope: !5567)
!6196 = !DILocation(line: 599, column: 1, scope: !5567)
!6197 = distinct !DISubprogram(name: "rock_ridge_symlink_read_folio", scope: !2, file: !2, line: 691, type: !1828, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6198)
!6198 = !{!6199, !6200, !6201, !6202, !6203, !6204, !6205, !6206, !6207, !6208, !6209, !6210, !6211, !6212, !6213, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222}
!6199 = !DILocalVariable(name: "file", arg: 1, scope: !6197, file: !2, line: 691, type: !958)
!6200 = !DILocalVariable(name: "folio", arg: 2, scope: !6197, file: !2, line: 691, type: !1311)
!6201 = !DILocalVariable(name: "page", scope: !6197, file: !2, line: 693, type: !787)
!6202 = !DILocalVariable(name: "inode", scope: !6197, file: !2, line: 694, type: !457)
!6203 = !DILocalVariable(name: "ei", scope: !6197, file: !2, line: 695, type: !354)
!6204 = !DILocalVariable(name: "sbi", scope: !6197, file: !2, line: 696, type: !5105)
!6205 = !DILocalVariable(name: "link", scope: !6197, file: !2, line: 697, type: !353)
!6206 = !DILocalVariable(name: "bufsize", scope: !6197, file: !2, line: 698, type: !351)
!6207 = !DILocalVariable(name: "bh", scope: !6197, file: !2, line: 699, type: !5367)
!6208 = !DILocalVariable(name: "rpnt", scope: !6197, file: !2, line: 700, type: !353)
!6209 = !DILocalVariable(name: "pnt", scope: !6197, file: !2, line: 701, type: !311)
!6210 = !DILocalVariable(name: "raw_de", scope: !6197, file: !2, line: 702, type: !4754)
!6211 = !DILocalVariable(name: "block", scope: !6197, file: !2, line: 703, type: !351)
!6212 = !DILocalVariable(name: "offset", scope: !6197, file: !2, line: 703, type: !351)
!6213 = !DILocalVariable(name: "sig", scope: !6197, file: !2, line: 704, type: !102)
!6214 = !DILocalVariable(name: "rr", scope: !6197, file: !2, line: 705, type: !209)
!6215 = !DILocalVariable(name: "rs", scope: !6197, file: !2, line: 706, type: !4874)
!6216 = !DILocalVariable(name: "ret", scope: !6197, file: !2, line: 707, type: !102)
!6217 = !DILabel(scope: !6197, name: "repeat", file: !2, line: 736)
!6218 = !DILabel(scope: !6197, name: "out", file: !2, line: 789)
!6219 = !DILabel(scope: !6197, name: "out_noread", file: !2, line: 792)
!6220 = !DILabel(scope: !6197, name: "out_bad_span", file: !2, line: 795)
!6221 = !DILabel(scope: !6197, name: "fail", file: !2, line: 797)
!6222 = !DILabel(scope: !6197, name: "error", file: !2, line: 799)
!6223 = !DILocation(line: 691, column: 55, scope: !6197)
!6224 = !DILocation(line: 691, column: 75, scope: !6197)
!6225 = !DILocation(line: 693, column: 2, scope: !6197)
!6226 = !DILocation(line: 693, column: 15, scope: !6197)
!6227 = !DILocation(line: 693, column: 23, scope: !6197)
!6228 = !DILocation(line: 693, column: 30, scope: !6197)
!6229 = !DILocation(line: 694, column: 2, scope: !6197)
!6230 = !DILocation(line: 694, column: 16, scope: !6197)
!6231 = !DILocation(line: 694, column: 24, scope: !6197)
!6232 = !DILocation(line: 694, column: 30, scope: !6197)
!6233 = !DILocation(line: 694, column: 39, scope: !6197)
!6234 = !DILocation(line: 695, column: 2, scope: !6197)
!6235 = !DILocation(line: 695, column: 25, scope: !6197)
!6236 = !DILocation(line: 695, column: 38, scope: !6197)
!6237 = !DILocation(line: 695, column: 30, scope: !6197)
!6238 = !DILocation(line: 696, column: 2, scope: !6197)
!6239 = !DILocation(line: 696, column: 24, scope: !6197)
!6240 = !DILocation(line: 696, column: 39, scope: !6197)
!6241 = !DILocation(line: 696, column: 46, scope: !6197)
!6242 = !DILocation(line: 696, column: 30, scope: !6197)
!6243 = !DILocation(line: 697, column: 2, scope: !6197)
!6244 = !DILocation(line: 697, column: 8, scope: !6197)
!6245 = !DILocation(line: 697, column: 15, scope: !6197)
!6246 = !DILocation(line: 698, column: 2, scope: !6197)
!6247 = !DILocation(line: 698, column: 16, scope: !6197)
!6248 = !DILocation(line: 698, column: 26, scope: !6197)
!6249 = !DILocation(line: 699, column: 2, scope: !6197)
!6250 = !DILocation(line: 699, column: 22, scope: !6197)
!6251 = !DILocation(line: 700, column: 2, scope: !6197)
!6252 = !DILocation(line: 700, column: 8, scope: !6197)
!6253 = !DILocation(line: 700, column: 15, scope: !6197)
!6254 = !DILocation(line: 701, column: 2, scope: !6197)
!6255 = !DILocation(line: 701, column: 17, scope: !6197)
!6256 = !DILocation(line: 702, column: 2, scope: !6197)
!6257 = !DILocation(line: 702, column: 31, scope: !6197)
!6258 = !DILocation(line: 703, column: 2, scope: !6197)
!6259 = !DILocation(line: 703, column: 16, scope: !6197)
!6260 = !DILocation(line: 703, column: 23, scope: !6197)
!6261 = !DILocation(line: 704, column: 2, scope: !6197)
!6262 = !DILocation(line: 704, column: 6, scope: !6197)
!6263 = !DILocation(line: 705, column: 2, scope: !6197)
!6264 = !DILocation(line: 705, column: 21, scope: !6197)
!6265 = !DILocation(line: 706, column: 2, scope: !6197)
!6266 = !DILocation(line: 706, column: 20, scope: !6197)
!6267 = !DILocation(line: 707, column: 2, scope: !6197)
!6268 = !DILocation(line: 707, column: 6, scope: !6197)
!6269 = !DILocation(line: 709, column: 7, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 709, column: 6)
!6271 = !DILocation(line: 709, column: 12, scope: !6270)
!6272 = !DILocation(line: 709, column: 6, scope: !6197)
!6273 = !DILocation(line: 710, column: 3, scope: !6270)
!6274 = !DILocation(line: 712, column: 23, scope: !6197)
!6275 = !DILocation(line: 712, column: 2, scope: !6197)
!6276 = !DILocation(line: 713, column: 10, scope: !6197)
!6277 = !DILocation(line: 713, column: 14, scope: !6197)
!6278 = !DILocation(line: 713, column: 8, scope: !6197)
!6279 = !DILocation(line: 714, column: 16, scope: !6197)
!6280 = !DILocation(line: 714, column: 23, scope: !6197)
!6281 = !DILocation(line: 714, column: 29, scope: !6197)
!6282 = !DILocation(line: 714, column: 7, scope: !6197)
!6283 = !DILocation(line: 714, column: 5, scope: !6197)
!6284 = !DILocation(line: 715, column: 7, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 715, column: 6)
!6286 = !DILocation(line: 715, column: 6, scope: !6197)
!6287 = !DILocation(line: 716, column: 3, scope: !6285)
!6288 = !DILocation(line: 718, column: 11, scope: !6197)
!6289 = !DILocation(line: 718, column: 15, scope: !6197)
!6290 = !DILocation(line: 718, column: 9, scope: !6197)
!6291 = !DILocation(line: 719, column: 25, scope: !6197)
!6292 = !DILocation(line: 719, column: 29, scope: !6197)
!6293 = !DILocation(line: 719, column: 38, scope: !6197)
!6294 = !DILocation(line: 719, column: 36, scope: !6197)
!6295 = !DILocation(line: 719, column: 6, scope: !6197)
!6296 = !DILocation(line: 721, column: 42, scope: !6197)
!6297 = !DILocation(line: 721, column: 9, scope: !6197)
!6298 = !DILocation(line: 726, column: 6, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 726, column: 6)
!6300 = !DILocation(line: 726, column: 16, scope: !6299)
!6301 = !DILocation(line: 726, column: 15, scope: !6299)
!6302 = !DILocation(line: 726, column: 13, scope: !6299)
!6303 = !DILocation(line: 726, column: 22, scope: !6299)
!6304 = !DILocation(line: 726, column: 20, scope: !6299)
!6305 = !DILocation(line: 726, column: 6, scope: !6197)
!6306 = !DILocation(line: 727, column: 3, scope: !6299)
!6307 = !DILocation(line: 734, column: 19, scope: !6197)
!6308 = !DILocation(line: 734, column: 27, scope: !6197)
!6309 = !DILocation(line: 734, column: 2, scope: !6197)
!6310 = !DILocation(line: 736, column: 1, scope: !6197)
!6311 = !DILocation(line: 737, column: 2, scope: !6197)
!6312 = !DILocation(line: 737, column: 12, scope: !6197)
!6313 = !DILocation(line: 737, column: 16, scope: !6197)
!6314 = !DILocation(line: 738, column: 32, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 737, column: 21)
!6316 = !DILocation(line: 738, column: 6, scope: !6315)
!6317 = !DILocation(line: 739, column: 7, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6315, file: !2, line: 739, column: 7)
!6319 = !DILocation(line: 739, column: 11, scope: !6318)
!6320 = !DILocation(line: 739, column: 15, scope: !6318)
!6321 = !DILocation(line: 739, column: 7, scope: !6315)
!6322 = !DILocation(line: 740, column: 4, scope: !6318)
!6323 = !DILocation(line: 741, column: 23, scope: !6315)
!6324 = !DILocation(line: 741, column: 9, scope: !6315)
!6325 = !DILocation(line: 741, column: 7, scope: !6315)
!6326 = !DILocation(line: 742, column: 32, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6315, file: !2, line: 742, column: 7)
!6328 = !DILocation(line: 742, column: 7, scope: !6327)
!6329 = !DILocation(line: 742, column: 7, scope: !6315)
!6330 = !DILocation(line: 743, column: 4, scope: !6327)
!6331 = !DILocation(line: 744, column: 13, scope: !6315)
!6332 = !DILocation(line: 744, column: 17, scope: !6315)
!6333 = !DILocation(line: 744, column: 6, scope: !6315)
!6334 = !DILocation(line: 744, column: 10, scope: !6315)
!6335 = !DILocation(line: 745, column: 13, scope: !6315)
!6336 = !DILocation(line: 745, column: 17, scope: !6315)
!6337 = !DILocation(line: 745, column: 6, scope: !6315)
!6338 = !DILocation(line: 745, column: 10, scope: !6315)
!6339 = !DILocation(line: 746, column: 10, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6315, file: !2, line: 746, column: 7)
!6341 = !DILocation(line: 746, column: 14, scope: !6340)
!6342 = !DILocation(line: 746, column: 7, scope: !6315)
!6343 = !DILocation(line: 747, column: 4, scope: !6340)
!6344 = !DILocation(line: 749, column: 11, scope: !6315)
!6345 = !DILocation(line: 749, column: 3, scope: !6315)
!6346 = !DILocation(line: 751, column: 9, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 751, column: 8)
!6348 = distinct !DILexicalBlock(scope: !6315, file: !2, line: 749, column: 16)
!6349 = !DILocation(line: 751, column: 13, scope: !6347)
!6350 = !DILocation(line: 751, column: 18, scope: !6347)
!6351 = !DILocation(line: 751, column: 27, scope: !6347)
!6352 = !DILocation(line: 751, column: 36, scope: !6347)
!6353 = !DILocation(line: 751, column: 8, scope: !6348)
!6354 = !DILocation(line: 752, column: 5, scope: !6347)
!6355 = !DILocation(line: 753, column: 4, scope: !6348)
!6356 = !DILocation(line: 755, column: 17, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 755, column: 8)
!6358 = !DILocation(line: 755, column: 21, scope: !6357)
!6359 = !DILocation(line: 755, column: 8, scope: !6357)
!6360 = !DILocation(line: 755, column: 8, scope: !6348)
!6361 = !DILocation(line: 756, column: 5, scope: !6357)
!6362 = !DILocation(line: 757, column: 4, scope: !6348)
!6363 = !DILocation(line: 759, column: 29, scope: !6348)
!6364 = !DILocation(line: 759, column: 35, scope: !6348)
!6365 = !DILocation(line: 760, column: 8, scope: !6348)
!6366 = !DILocation(line: 760, column: 13, scope: !6348)
!6367 = !DILocation(line: 759, column: 11, scope: !6348)
!6368 = !DILocation(line: 759, column: 9, scope: !6348)
!6369 = !DILocation(line: 761, column: 8, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 761, column: 8)
!6371 = !DILocation(line: 761, column: 13, scope: !6370)
!6372 = !DILocation(line: 761, column: 8, scope: !6348)
!6373 = !DILocation(line: 762, column: 5, scope: !6370)
!6374 = !DILocation(line: 763, column: 4, scope: !6348)
!6375 = !DILocation(line: 766, column: 32, scope: !6348)
!6376 = !DILocation(line: 766, column: 36, scope: !6348)
!6377 = !DILocation(line: 766, column: 41, scope: !6348)
!6378 = !DILocation(line: 766, column: 21, scope: !6348)
!6379 = !DILocation(line: 766, column: 7, scope: !6348)
!6380 = !DILocation(line: 766, column: 19, scope: !6348)
!6381 = !DILocation(line: 767, column: 32, scope: !6348)
!6382 = !DILocation(line: 767, column: 36, scope: !6348)
!6383 = !DILocation(line: 767, column: 41, scope: !6348)
!6384 = !DILocation(line: 767, column: 21, scope: !6348)
!6385 = !DILocation(line: 767, column: 7, scope: !6348)
!6386 = !DILocation(line: 767, column: 19, scope: !6348)
!6387 = !DILocation(line: 768, column: 30, scope: !6348)
!6388 = !DILocation(line: 768, column: 34, scope: !6348)
!6389 = !DILocation(line: 768, column: 39, scope: !6348)
!6390 = !DILocation(line: 768, column: 19, scope: !6348)
!6391 = !DILocation(line: 768, column: 7, scope: !6348)
!6392 = !DILocation(line: 768, column: 17, scope: !6348)
!6393 = !DILocation(line: 769, column: 4, scope: !6348)
!6394 = !DILocation(line: 771, column: 4, scope: !6348)
!6395 = distinct !{!6395, !6311, !6396, !5077, !5078}
!6396 = !DILocation(line: 773, column: 2, scope: !6197)
!6397 = !DILocation(line: 774, column: 8, scope: !6197)
!6398 = !DILocation(line: 774, column: 6, scope: !6197)
!6399 = !DILocation(line: 775, column: 6, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 775, column: 6)
!6401 = !DILocation(line: 775, column: 10, scope: !6400)
!6402 = !DILocation(line: 775, column: 6, scope: !6197)
!6403 = !DILocation(line: 776, column: 3, scope: !6400)
!6404 = !DILocation(line: 777, column: 6, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 777, column: 6)
!6406 = !DILocation(line: 777, column: 10, scope: !6405)
!6407 = !DILocation(line: 777, column: 6, scope: !6197)
!6408 = !DILocation(line: 778, column: 3, scope: !6405)
!6409 = !DILocation(line: 780, column: 6, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 780, column: 6)
!6411 = !DILocation(line: 780, column: 14, scope: !6410)
!6412 = !DILocation(line: 780, column: 11, scope: !6410)
!6413 = !DILocation(line: 780, column: 6, scope: !6197)
!6414 = !DILocation(line: 781, column: 3, scope: !6410)
!6415 = !DILocation(line: 782, column: 9, scope: !6197)
!6416 = !DILocation(line: 782, column: 2, scope: !6197)
!6417 = !DILocation(line: 783, column: 3, scope: !6197)
!6418 = !DILocation(line: 783, column: 8, scope: !6197)
!6419 = !DILocation(line: 784, column: 18, scope: !6197)
!6420 = !DILocation(line: 784, column: 2, scope: !6197)
!6421 = !DILocation(line: 785, column: 14, scope: !6197)
!6422 = !DILocation(line: 785, column: 2, scope: !6197)
!6423 = !DILocation(line: 786, column: 2, scope: !6197)
!6424 = !DILocation(line: 789, column: 1, scope: !6197)
!6425 = !DILocation(line: 790, column: 11, scope: !6197)
!6426 = !DILocation(line: 790, column: 2, scope: !6197)
!6427 = !DILocation(line: 791, column: 2, scope: !6197)
!6428 = !DILocation(line: 792, column: 1, scope: !6197)
!6429 = !DILocation(line: 793, column: 2, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 793, column: 2)
!6431 = !DILocation(line: 793, column: 2, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6430, file: !2, line: 793, column: 2)
!6433 = !DILocation(line: 794, column: 2, scope: !6197)
!6434 = !DILocation(line: 795, column: 1, scope: !6197)
!6435 = !DILocation(line: 796, column: 2, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 796, column: 2)
!6437 = !DILocation(line: 796, column: 2, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6436, file: !2, line: 796, column: 2)
!6439 = !DILocation(line: 796, column: 2, scope: !6197)
!6440 = !DILocation(line: 797, column: 1, scope: !6197)
!6441 = !DILocation(line: 798, column: 9, scope: !6197)
!6442 = !DILocation(line: 798, column: 2, scope: !6197)
!6443 = !DILocation(line: 799, column: 1, scope: !6197)
!6444 = !DILocation(line: 800, column: 15, scope: !6197)
!6445 = !DILocation(line: 800, column: 2, scope: !6197)
!6446 = !DILocation(line: 801, column: 14, scope: !6197)
!6447 = !DILocation(line: 801, column: 2, scope: !6197)
!6448 = !DILocation(line: 802, column: 2, scope: !6197)
!6449 = !DILocation(line: 803, column: 1, scope: !6197)
!6450 = !DILocation(line: 25, column: 50, scope: !320)
!6451 = !DILocation(line: 27, column: 9, scope: !330)
!6452 = !DILocation(line: 27, column: 9, scope: !320)
!6453 = !DILocation(line: 27, column: 2, scope: !320)
!6454 = !DILocation(line: 30, column: 50, scope: !338)
!6455 = !DILocation(line: 32, column: 9, scope: !345)
!6456 = !DILocation(line: 32, column: 9, scope: !338)
!6457 = !DILocation(line: 32, column: 2, scope: !338)
!6458 = distinct !DISubprogram(name: "kmalloc", scope: !153, file: !153, line: 591, type: !6459, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6461)
!6459 = !DISubroutineType(types: !6460)
!6460 = !{!348, !698, !349}
!6461 = !{!6462, !6463, !6464}
!6462 = !DILocalVariable(name: "size", arg: 1, scope: !6458, file: !153, line: 591, type: !698)
!6463 = !DILocalVariable(name: "flags", arg: 2, scope: !6458, file: !153, line: 591, type: !349)
!6464 = !DILocalVariable(name: "index", scope: !6465, file: !153, line: 594, type: !13)
!6465 = distinct !DILexicalBlock(scope: !6466, file: !153, line: 593, column: 42)
!6466 = distinct !DILexicalBlock(scope: !6458, file: !153, line: 593, column: 6)
!6467 = !DILocation(line: 591, column: 61, scope: !6458)
!6468 = !DILocation(line: 591, column: 73, scope: !6458)
!6469 = !DILocation(line: 593, column: 27, scope: !6466)
!6470 = !DILocation(line: 593, column: 6, scope: !6466)
!6471 = !DILocation(line: 593, column: 33, scope: !6466)
!6472 = !DILocation(line: 593, column: 36, scope: !6466)
!6473 = !DILocation(line: 593, column: 6, scope: !6458)
!6474 = !DILocation(line: 594, column: 3, scope: !6465)
!6475 = !DILocation(line: 594, column: 16, scope: !6465)
!6476 = !DILocation(line: 596, column: 7, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6465, file: !153, line: 596, column: 7)
!6478 = !DILocation(line: 596, column: 12, scope: !6477)
!6479 = !DILocation(line: 596, column: 7, scope: !6465)
!6480 = !DILocation(line: 597, column: 25, scope: !6477)
!6481 = !DILocation(line: 597, column: 31, scope: !6477)
!6482 = !DILocation(line: 597, column: 11, scope: !6477)
!6483 = !DILocation(line: 597, column: 4, scope: !6477)
!6484 = !DILocation(line: 599, column: 11, scope: !6465)
!6485 = !DILocation(line: 599, column: 9, scope: !6465)
!6486 = !DILocation(line: 601, column: 33, scope: !6465)
!6487 = !DILocation(line: 601, column: 40, scope: !6465)
!6488 = !DILocation(line: 601, column: 20, scope: !6465)
!6489 = !DILocation(line: 601, column: 5, scope: !6465)
!6490 = !DILocation(line: 601, column: 51, scope: !6465)
!6491 = !DILocation(line: 602, column: 5, scope: !6465)
!6492 = !DILocation(line: 602, column: 12, scope: !6465)
!6493 = !DILocation(line: 600, column: 10, scope: !6465)
!6494 = !DILocation(line: 600, column: 3, scope: !6465)
!6495 = !DILocation(line: 603, column: 2, scope: !6466)
!6496 = !DILocation(line: 604, column: 19, scope: !6458)
!6497 = !DILocation(line: 604, column: 25, scope: !6458)
!6498 = !DILocation(line: 604, column: 9, scope: !6458)
!6499 = !DILocation(line: 604, column: 2, scope: !6458)
!6500 = !DILocation(line: 605, column: 1, scope: !6458)
!6501 = distinct !DISubprogram(name: "sb_bread", scope: !5369, file: !5369, line: 324, type: !6502, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6504)
!6502 = !DISubroutineType(types: !6503)
!6503 = !{!5367, !566, !1867}
!6504 = !{!6505, !6506}
!6505 = !DILocalVariable(name: "sb", arg: 1, scope: !6501, file: !5369, line: 324, type: !566)
!6506 = !DILocalVariable(name: "block", arg: 2, scope: !6501, file: !5369, line: 324, type: !1867)
!6507 = !DILocation(line: 324, column: 30, scope: !6501)
!6508 = !DILocation(line: 324, column: 43, scope: !6501)
!6509 = !DILocation(line: 326, column: 21, scope: !6501)
!6510 = !DILocation(line: 326, column: 25, scope: !6501)
!6511 = !DILocation(line: 326, column: 33, scope: !6501)
!6512 = !DILocation(line: 326, column: 40, scope: !6501)
!6513 = !DILocation(line: 326, column: 44, scope: !6501)
!6514 = !DILocation(line: 326, column: 9, scope: !6501)
!6515 = !DILocation(line: 326, column: 2, scope: !6501)
!6516 = distinct !DISubprogram(name: "put_bh", scope: !5369, file: !5369, line: 305, type: !6517, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6519)
!6517 = !DISubroutineType(types: !6518)
!6518 = !{null, !5367}
!6519 = !{!6520}
!6520 = !DILocalVariable(name: "bh", arg: 1, scope: !6516, file: !5369, line: 305, type: !5367)
!6521 = !DILocation(line: 305, column: 47, scope: !6516)
!6522 = !DILocation(line: 307, column: 9, scope: !6516)
!6523 = !DILocation(line: 307, column: 9, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6516, file: !5369, line: 307, column: 9)
!6525 = !DILocation(line: 307, column: 9, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6524, file: !5369, line: 307, column: 9)
!6527 = !DILocation(line: 307, column: 9, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6524, file: !5369, line: 307, column: 9)
!6529 = !DILocation(line: 308, column: 21, scope: !6516)
!6530 = !DILocation(line: 308, column: 25, scope: !6516)
!6531 = !DILocation(line: 308, column: 9, scope: !6516)
!6532 = !DILocation(line: 309, column: 1, scope: !6516)
!6533 = !DISubprogram(name: "kmalloc_large", scope: !153, file: !153, line: 531, type: !6459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6534 = distinct !DISubprogram(name: "__kmalloc_index", scope: !153, file: !153, line: 444, type: !6535, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6537)
!6535 = !DISubroutineType(types: !6536)
!6536 = !{!13, !698, !868}
!6537 = !{!6538, !6539}
!6538 = !DILocalVariable(name: "size", arg: 1, scope: !6534, file: !153, line: 444, type: !698)
!6539 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6534, file: !153, line: 445, type: !868)
!6540 = !DILocation(line: 444, column: 60, scope: !6534)
!6541 = !DILocation(line: 445, column: 16, scope: !6534)
!6542 = !DILocation(line: 447, column: 7, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 447, column: 6)
!6544 = !DILocation(line: 447, column: 6, scope: !6534)
!6545 = !DILocation(line: 448, column: 3, scope: !6543)
!6546 = !DILocation(line: 450, column: 6, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 450, column: 6)
!6548 = !DILocation(line: 450, column: 11, scope: !6547)
!6549 = !DILocation(line: 450, column: 6, scope: !6534)
!6550 = !DILocation(line: 451, column: 3, scope: !6547)
!6551 = !DILocation(line: 453, column: 32, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 453, column: 6)
!6553 = !DILocation(line: 453, column: 37, scope: !6552)
!6554 = !DILocation(line: 453, column: 42, scope: !6552)
!6555 = !DILocation(line: 453, column: 45, scope: !6552)
!6556 = !DILocation(line: 453, column: 50, scope: !6552)
!6557 = !DILocation(line: 453, column: 6, scope: !6534)
!6558 = !DILocation(line: 454, column: 3, scope: !6552)
!6559 = !DILocation(line: 455, column: 32, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 455, column: 6)
!6561 = !DILocation(line: 455, column: 37, scope: !6560)
!6562 = !DILocation(line: 455, column: 43, scope: !6560)
!6563 = !DILocation(line: 455, column: 46, scope: !6560)
!6564 = !DILocation(line: 455, column: 51, scope: !6560)
!6565 = !DILocation(line: 455, column: 6, scope: !6534)
!6566 = !DILocation(line: 456, column: 3, scope: !6560)
!6567 = !DILocation(line: 457, column: 6, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 457, column: 6)
!6569 = !DILocation(line: 457, column: 11, scope: !6568)
!6570 = !DILocation(line: 457, column: 6, scope: !6534)
!6571 = !DILocation(line: 457, column: 26, scope: !6568)
!6572 = !DILocation(line: 458, column: 6, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 458, column: 6)
!6574 = !DILocation(line: 458, column: 11, scope: !6573)
!6575 = !DILocation(line: 458, column: 6, scope: !6534)
!6576 = !DILocation(line: 458, column: 26, scope: !6573)
!6577 = !DILocation(line: 459, column: 6, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 459, column: 6)
!6579 = !DILocation(line: 459, column: 11, scope: !6578)
!6580 = !DILocation(line: 459, column: 6, scope: !6534)
!6581 = !DILocation(line: 459, column: 26, scope: !6578)
!6582 = !DILocation(line: 460, column: 6, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 460, column: 6)
!6584 = !DILocation(line: 460, column: 11, scope: !6583)
!6585 = !DILocation(line: 460, column: 6, scope: !6534)
!6586 = !DILocation(line: 460, column: 26, scope: !6583)
!6587 = !DILocation(line: 461, column: 6, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 461, column: 6)
!6589 = !DILocation(line: 461, column: 11, scope: !6588)
!6590 = !DILocation(line: 461, column: 6, scope: !6534)
!6591 = !DILocation(line: 461, column: 26, scope: !6588)
!6592 = !DILocation(line: 462, column: 6, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 462, column: 6)
!6594 = !DILocation(line: 462, column: 11, scope: !6593)
!6595 = !DILocation(line: 462, column: 6, scope: !6534)
!6596 = !DILocation(line: 462, column: 26, scope: !6593)
!6597 = !DILocation(line: 463, column: 6, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 463, column: 6)
!6599 = !DILocation(line: 463, column: 11, scope: !6598)
!6600 = !DILocation(line: 463, column: 6, scope: !6534)
!6601 = !DILocation(line: 463, column: 26, scope: !6598)
!6602 = !DILocation(line: 464, column: 6, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 464, column: 6)
!6604 = !DILocation(line: 464, column: 11, scope: !6603)
!6605 = !DILocation(line: 464, column: 6, scope: !6534)
!6606 = !DILocation(line: 464, column: 26, scope: !6603)
!6607 = !DILocation(line: 465, column: 6, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 465, column: 6)
!6609 = !DILocation(line: 465, column: 11, scope: !6608)
!6610 = !DILocation(line: 465, column: 6, scope: !6534)
!6611 = !DILocation(line: 465, column: 26, scope: !6608)
!6612 = !DILocation(line: 466, column: 6, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 466, column: 6)
!6614 = !DILocation(line: 466, column: 11, scope: !6613)
!6615 = !DILocation(line: 466, column: 6, scope: !6534)
!6616 = !DILocation(line: 466, column: 26, scope: !6613)
!6617 = !DILocation(line: 467, column: 6, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 467, column: 6)
!6619 = !DILocation(line: 467, column: 11, scope: !6618)
!6620 = !DILocation(line: 467, column: 6, scope: !6534)
!6621 = !DILocation(line: 467, column: 26, scope: !6618)
!6622 = !DILocation(line: 468, column: 6, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 468, column: 6)
!6624 = !DILocation(line: 468, column: 11, scope: !6623)
!6625 = !DILocation(line: 468, column: 6, scope: !6534)
!6626 = !DILocation(line: 468, column: 26, scope: !6623)
!6627 = !DILocation(line: 469, column: 6, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 469, column: 6)
!6629 = !DILocation(line: 469, column: 11, scope: !6628)
!6630 = !DILocation(line: 469, column: 6, scope: !6534)
!6631 = !DILocation(line: 469, column: 26, scope: !6628)
!6632 = !DILocation(line: 470, column: 6, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 470, column: 6)
!6634 = !DILocation(line: 470, column: 11, scope: !6633)
!6635 = !DILocation(line: 470, column: 6, scope: !6534)
!6636 = !DILocation(line: 470, column: 26, scope: !6633)
!6637 = !DILocation(line: 471, column: 6, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 471, column: 6)
!6639 = !DILocation(line: 471, column: 11, scope: !6638)
!6640 = !DILocation(line: 471, column: 6, scope: !6534)
!6641 = !DILocation(line: 471, column: 26, scope: !6638)
!6642 = !DILocation(line: 472, column: 6, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 472, column: 6)
!6644 = !DILocation(line: 472, column: 11, scope: !6643)
!6645 = !DILocation(line: 472, column: 6, scope: !6534)
!6646 = !DILocation(line: 472, column: 26, scope: !6643)
!6647 = !DILocation(line: 473, column: 6, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 473, column: 6)
!6649 = !DILocation(line: 473, column: 11, scope: !6648)
!6650 = !DILocation(line: 473, column: 6, scope: !6534)
!6651 = !DILocation(line: 473, column: 26, scope: !6648)
!6652 = !DILocation(line: 474, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 474, column: 6)
!6654 = !DILocation(line: 474, column: 11, scope: !6653)
!6655 = !DILocation(line: 474, column: 6, scope: !6534)
!6656 = !DILocation(line: 474, column: 27, scope: !6653)
!6657 = !DILocation(line: 475, column: 6, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 475, column: 6)
!6659 = !DILocation(line: 475, column: 11, scope: !6658)
!6660 = !DILocation(line: 475, column: 6, scope: !6534)
!6661 = !DILocation(line: 475, column: 32, scope: !6658)
!6662 = !DILocation(line: 477, column: 50, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6534, file: !153, line: 477, column: 6)
!6664 = !{i8 0, i8 2}
!6665 = !DILocation(line: 477, column: 6, scope: !6534)
!6666 = !DILocation(line: 478, column: 3, scope: !6663)
!6667 = !DILocation(line: 478, column: 3, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6669, file: !153, line: 478, column: 3)
!6669 = distinct !DILexicalBlock(scope: !6663, file: !153, line: 478, column: 3)
!6670 = !{i32 -2143544336}
!6671 = !DILocation(line: 478, column: 3, scope: !6669)
!6672 = !DILocation(line: 480, column: 3, scope: !6663)
!6673 = !DILocation(line: 480, column: 3, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6663, file: !153, line: 480, column: 3)
!6675 = !DILocation(line: 480, column: 3, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6674, file: !153, line: 480, column: 3)
!6677 = !DILocation(line: 480, column: 3, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6674, file: !153, line: 480, column: 3)
!6679 = !{i64 2151423163, i64 2151423192, i64 2151423238, i64 2151423296, i64 2151423350, i64 2151423404, i64 2151423459, i64 2151423490}
!6680 = !DILocation(line: 483, column: 2, scope: !6534)
!6681 = !DILocation(line: 484, column: 1, scope: !6534)
!6682 = !DISubprogram(name: "kmalloc_trace", scope: !153, file: !153, line: 525, type: !6683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6683 = !DISubroutineType(types: !6684)
!6684 = !{!348, !6685, !349, !698}
!6685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6686, size: 64)
!6686 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4220, line: 11, flags: DIFlagFwdDecl)
!6687 = distinct !DISubprogram(name: "kmalloc_type", scope: !153, file: !153, line: 401, type: !6688, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6690)
!6688 = !DISubroutineType(types: !6689)
!6689 = !{!152, !349, !351}
!6690 = !{!6691, !6692}
!6691 = !DILocalVariable(name: "flags", arg: 1, scope: !6687, file: !153, line: 401, type: !349)
!6692 = !DILocalVariable(name: "caller", arg: 2, scope: !6687, file: !153, line: 401, type: !351)
!6693 = !DILocation(line: 401, column: 67, scope: !6687)
!6694 = !DILocation(line: 401, column: 88, scope: !6687)
!6695 = !DILocation(line: 407, column: 6, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6687, file: !153, line: 407, column: 6)
!6697 = !DILocation(line: 407, column: 6, scope: !6687)
!6698 = !DILocation(line: 413, column: 3, scope: !6696)
!6699 = !DILocation(line: 423, column: 38, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6687, file: !153, line: 423, column: 6)
!6701 = !DILocation(line: 423, column: 44, scope: !6700)
!6702 = !DILocation(line: 423, column: 6, scope: !6687)
!6703 = !DILocation(line: 424, column: 3, scope: !6700)
!6704 = !DILocation(line: 426, column: 3, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6687, file: !153, line: 425, column: 6)
!6706 = !DILocation(line: 429, column: 1, scope: !6687)
!6707 = !DISubprogram(name: "__kmalloc", scope: !153, file: !153, line: 488, type: !6459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6708 = !DISubprogram(name: "__compiletime_assert_117", scope: !153, file: !153, line: 478, type: !2432, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6709 = !DISubprogram(name: "__bread_gfp", scope: !5369, file: !5369, line: 235, type: !6710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6710 = !DISubroutineType(types: !6711)
!6711 = !{!5367, !2828, !1867, !13, !349}
!6712 = distinct !DISubprogram(name: "atomic_dec", scope: !6713, file: !6713, line: 590, type: !6714, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6717)
!6713 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6714 = !DISubroutineType(types: !6715)
!6715 = !{null, !6716}
!6716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!6717 = !{!6718}
!6718 = !DILocalVariable(name: "v", arg: 1, scope: !6712, file: !6713, line: 590, type: !6716)
!6719 = !DILocation(line: 590, column: 22, scope: !6712)
!6720 = !DILocation(line: 592, column: 31, scope: !6712)
!6721 = !DILocation(line: 592, column: 2, scope: !6712)
!6722 = !DILocation(line: 593, column: 17, scope: !6712)
!6723 = !DILocation(line: 593, column: 2, scope: !6712)
!6724 = !DILocation(line: 594, column: 1, scope: !6712)
!6725 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6726, file: !6726, line: 94, type: !6727, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6732)
!6726 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6727 = !DISubroutineType(types: !6728)
!6728 = !{null, !6729, !698}
!6729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6730, size: 64)
!6730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6731)
!6731 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6732 = !{!6733, !6734}
!6733 = !DILocalVariable(name: "v", arg: 1, scope: !6725, file: !6726, line: 94, type: !6729)
!6734 = !DILocalVariable(name: "size", arg: 2, scope: !6725, file: !6726, line: 94, type: !698)
!6735 = !DILocation(line: 94, column: 79, scope: !6725)
!6736 = !DILocation(line: 94, column: 89, scope: !6725)
!6737 = !DILocation(line: 96, column: 20, scope: !6725)
!6738 = !DILocation(line: 96, column: 23, scope: !6725)
!6739 = !DILocation(line: 96, column: 2, scope: !6725)
!6740 = !DILocation(line: 97, column: 2, scope: !6725)
!6741 = !DILocation(line: 98, column: 1, scope: !6725)
!6742 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6743, file: !6743, line: 1194, type: !6714, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6744)
!6743 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6744 = !{!6745}
!6745 = !DILocalVariable(name: "v", arg: 1, scope: !6742, file: !6743, line: 1194, type: !6716)
!6746 = !DILocation(line: 1194, column: 26, scope: !6742)
!6747 = !DILocation(line: 1197, column: 18, scope: !6742)
!6748 = !DILocation(line: 1197, column: 2, scope: !6742)
!6749 = !DILocation(line: 1201, column: 1, scope: !6742)
!6750 = distinct !DISubprogram(name: "kasan_check_write", scope: !6751, file: !6751, line: 44, type: !6752, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6754)
!6751 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6752 = !DISubroutineType(types: !6753)
!6753 = !{!868, !6729, !13}
!6754 = !{!6755, !6756}
!6755 = !DILocalVariable(name: "p", arg: 1, scope: !6750, file: !6751, line: 44, type: !6729)
!6756 = !DILocalVariable(name: "size", arg: 2, scope: !6750, file: !6751, line: 44, type: !13)
!6757 = !DILocation(line: 44, column: 59, scope: !6750)
!6758 = !DILocation(line: 44, column: 75, scope: !6750)
!6759 = !DILocation(line: 46, column: 2, scope: !6750)
!6760 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6761, file: !6761, line: 229, type: !6762, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6764)
!6761 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6762 = !DISubroutineType(types: !6763)
!6763 = !{null, !6729, !698, !102}
!6764 = !{!6765, !6766, !6767}
!6765 = !DILocalVariable(name: "ptr", arg: 1, scope: !6760, file: !6761, line: 229, type: !6729)
!6766 = !DILocalVariable(name: "size", arg: 2, scope: !6760, file: !6761, line: 229, type: !698)
!6767 = !DILocalVariable(name: "type", arg: 3, scope: !6760, file: !6761, line: 230, type: !102)
!6768 = !DILocation(line: 229, column: 60, scope: !6760)
!6769 = !DILocation(line: 229, column: 72, scope: !6760)
!6770 = !DILocation(line: 230, column: 15, scope: !6760)
!6771 = !DILocation(line: 230, column: 23, scope: !6760)
!6772 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6773, file: !6773, line: 58, type: !6714, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6774)
!6773 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6774 = !{!6775}
!6775 = !DILocalVariable(name: "v", arg: 1, scope: !6772, file: !6773, line: 58, type: !6716)
!6776 = !DILocation(line: 58, column: 55, scope: !6772)
!6777 = !DILocation(line: 61, column: 16, scope: !6772)
!6778 = !DILocation(line: 61, column: 19, scope: !6772)
!6779 = !DILocation(line: 60, column: 2, scope: !6772)
!6780 = !{i64 2148937158, i64 2148937197, i64 2148937218, i64 2148937255, i64 2148937278, i64 2148937148}
!6781 = !DILocation(line: 62, column: 1, scope: !6772)
!6782 = !DISubprogram(name: "set_nlink", scope: !65, file: !65, line: 2330, type: !6783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6783 = !DISubroutineType(types: !6784)
!6784 = !{null, !457, !13}
!6785 = distinct !DISubprogram(name: "i_uid_write", scope: !65, file: !65, line: 1344, type: !6786, scopeLine: 1345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6788)
!6786 = !DISubroutineType(types: !6787)
!6787 = !{null, !457, !385}
!6788 = !{!6789, !6790}
!6789 = !DILocalVariable(name: "inode", arg: 1, scope: !6785, file: !65, line: 1344, type: !457)
!6790 = !DILocalVariable(name: "uid", arg: 2, scope: !6785, file: !65, line: 1344, type: !385)
!6791 = !DILocation(line: 1344, column: 46, scope: !6785)
!6792 = !DILocation(line: 1344, column: 59, scope: !6785)
!6793 = !DILocation(line: 1346, column: 2, scope: !6785)
!6794 = !DILocation(line: 1346, column: 9, scope: !6785)
!6795 = !DILocation(line: 1346, column: 17, scope: !6785)
!6796 = !DILocation(line: 1346, column: 37, scope: !6785)
!6797 = !DILocation(line: 1346, column: 27, scope: !6785)
!6798 = !DILocation(line: 1346, column: 45, scope: !6785)
!6799 = !DILocation(line: 1347, column: 1, scope: !6785)
!6800 = distinct !DISubprogram(name: "i_gid_write", scope: !65, file: !65, line: 1349, type: !6801, scopeLine: 1350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6803)
!6801 = !DISubroutineType(types: !6802)
!6802 = !{null, !457, !398}
!6803 = !{!6804, !6805}
!6804 = !DILocalVariable(name: "inode", arg: 1, scope: !6800, file: !65, line: 1349, type: !457)
!6805 = !DILocalVariable(name: "gid", arg: 2, scope: !6800, file: !65, line: 1349, type: !398)
!6806 = !DILocation(line: 1349, column: 46, scope: !6800)
!6807 = !DILocation(line: 1349, column: 59, scope: !6800)
!6808 = !DILocation(line: 1351, column: 2, scope: !6800)
!6809 = !DILocation(line: 1351, column: 9, scope: !6800)
!6810 = !DILocation(line: 1351, column: 17, scope: !6800)
!6811 = !DILocation(line: 1351, column: 37, scope: !6800)
!6812 = !DILocation(line: 1351, column: 27, scope: !6800)
!6813 = !DILocation(line: 1351, column: 45, scope: !6800)
!6814 = !DILocation(line: 1352, column: 1, scope: !6800)
!6815 = distinct !DISubprogram(name: "inode_set_ctime", scope: !65, file: !65, line: 1607, type: !6816, scopeLine: 1609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6818)
!6816 = !DISubroutineType(types: !6817)
!6817 = !{!2801, !457, !1108, !372}
!6818 = !{!6819, !6820, !6821, !6822}
!6819 = !DILocalVariable(name: "inode", arg: 1, scope: !6815, file: !65, line: 1607, type: !457)
!6820 = !DILocalVariable(name: "sec", arg: 2, scope: !6815, file: !65, line: 1608, type: !1108)
!6821 = !DILocalVariable(name: "nsec", arg: 3, scope: !6815, file: !65, line: 1608, type: !372)
!6822 = !DILocalVariable(name: "ts", scope: !6815, file: !65, line: 1610, type: !2801)
!6823 = !DILocation(line: 1607, column: 63, scope: !6815)
!6824 = !DILocation(line: 1608, column: 16, scope: !6815)
!6825 = !DILocation(line: 1608, column: 26, scope: !6815)
!6826 = !DILocation(line: 1610, column: 2, scope: !6815)
!6827 = !DILocation(line: 1610, column: 20, scope: !6815)
!6828 = !DILocation(line: 1610, column: 25, scope: !6815)
!6829 = !DILocation(line: 1610, column: 38, scope: !6815)
!6830 = !DILocation(line: 1611, column: 17, scope: !6815)
!6831 = !DILocation(line: 1613, column: 31, scope: !6815)
!6832 = !DILocation(line: 1613, column: 9, scope: !6815)
!6833 = !DILocation(line: 1614, column: 1, scope: !6815)
!6834 = !DISubprogram(name: "iso_date", scope: !163, file: !163, line: 109, type: !6835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6835 = !DISubroutineType(types: !6836)
!6836 = !{!102, !2762, !102}
!6837 = distinct !DISubprogram(name: "ISOFS_I", scope: !163, file: !163, line: 70, type: !6838, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6840)
!6838 = !DISubroutineType(types: !6839)
!6839 = !{!354, !457}
!6840 = !{!6841, !6842}
!6841 = !DILocalVariable(name: "inode", arg: 1, scope: !6837, file: !163, line: 70, type: !457)
!6842 = !DILocalVariable(name: "__mptr", scope: !6843, file: !163, line: 72, type: !348)
!6843 = distinct !DILexicalBlock(scope: !6837, file: !163, line: 72, column: 9)
!6844 = !DILocation(line: 70, column: 60, scope: !6837)
!6845 = !DILocation(line: 72, column: 9, scope: !6843)
!6846 = !DILocation(line: 72, column: 9, scope: !6837)
!6847 = !DILocation(line: 72, column: 2, scope: !6837)
!6848 = distinct !DISubprogram(name: "isofs_iget_reloc", scope: !163, file: !163, line: 136, type: !6849, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6851)
!6849 = !DISubroutineType(types: !6850)
!6850 = !{!457, !566, !351, !351}
!6851 = !{!6852, !6853, !6854}
!6852 = !DILocalVariable(name: "sb", arg: 1, scope: !6848, file: !163, line: 136, type: !566)
!6853 = !DILocalVariable(name: "block", arg: 2, scope: !6848, file: !163, line: 137, type: !351)
!6854 = !DILocalVariable(name: "offset", arg: 3, scope: !6848, file: !163, line: 138, type: !351)
!6855 = !DILocation(line: 136, column: 66, scope: !6848)
!6856 = !DILocation(line: 137, column: 25, scope: !6848)
!6857 = !DILocation(line: 138, column: 25, scope: !6848)
!6858 = !DILocation(line: 140, column: 22, scope: !6848)
!6859 = !DILocation(line: 140, column: 26, scope: !6848)
!6860 = !DILocation(line: 140, column: 33, scope: !6848)
!6861 = !DILocation(line: 140, column: 9, scope: !6848)
!6862 = !DILocation(line: 140, column: 2, scope: !6848)
!6863 = distinct !DISubprogram(name: "IS_ERR", scope: !6864, file: !6864, line: 59, type: !6865, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6867)
!6864 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6865 = !DISubroutineType(types: !6866)
!6866 = !{!868, !325}
!6867 = !{!6868}
!6868 = !DILocalVariable(name: "ptr", arg: 1, scope: !6863, file: !6864, line: 59, type: !325)
!6869 = !DILocation(line: 59, column: 60, scope: !6863)
!6870 = !DILocation(line: 61, column: 9, scope: !6863)
!6871 = !DILocation(line: 61, column: 2, scope: !6863)
!6872 = distinct !DISubprogram(name: "PTR_ERR", scope: !6864, file: !6864, line: 49, type: !6873, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6875)
!6873 = !DISubroutineType(types: !6874)
!6874 = !{!372, !325}
!6875 = !{!6876}
!6876 = !DILocalVariable(name: "ptr", arg: 1, scope: !6872, file: !6864, line: 49, type: !325)
!6877 = !DILocation(line: 49, column: 61, scope: !6872)
!6878 = !DILocation(line: 51, column: 16, scope: !6872)
!6879 = !DILocation(line: 51, column: 9, scope: !6872)
!6880 = !DILocation(line: 51, column: 2, scope: !6872)
!6881 = distinct !DISubprogram(name: "inode_set_ctime_to_ts", scope: !65, file: !65, line: 1592, type: !6882, scopeLine: 1594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6884)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{!2801, !457, !2801}
!6884 = !{!6885, !6886}
!6885 = !DILocalVariable(name: "inode", arg: 1, scope: !6881, file: !65, line: 1592, type: !457)
!6886 = !DILocalVariable(name: "ts", arg: 2, scope: !6881, file: !65, line: 1593, type: !2801)
!6887 = !DILocation(line: 1592, column: 69, scope: !6881)
!6888 = !DILocation(line: 1593, column: 31, scope: !6881)
!6889 = !DILocation(line: 1595, column: 2, scope: !6881)
!6890 = !DILocation(line: 1595, column: 9, scope: !6881)
!6891 = !DILocation(line: 1595, column: 21, scope: !6881)
!6892 = !DILocation(line: 1596, column: 9, scope: !6881)
!6893 = !DILocation(line: 1596, column: 2, scope: !6881)
!6894 = distinct !DISubprogram(name: "inode_get_ctime", scope: !65, file: !65, line: 1587, type: !6895, scopeLine: 1588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6897)
!6895 = !DISubroutineType(types: !6896)
!6896 = !{!2801, !4540}
!6897 = !{!6898}
!6898 = !DILocalVariable(name: "inode", arg: 1, scope: !6894, file: !65, line: 1587, type: !4540)
!6899 = !DILocation(line: 1587, column: 69, scope: !6894)
!6900 = !DILocation(line: 1589, column: 9, scope: !6894)
!6901 = !DILocation(line: 1589, column: 16, scope: !6894)
!6902 = !DILocation(line: 1589, column: 2, scope: !6894)
!6903 = !DISubprogram(name: "iput", scope: !65, file: !65, line: 2459, type: !2458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6904 = distinct !DISubprogram(name: "isonum_711", scope: !163, file: !163, line: 75, type: !6905, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6907)
!6905 = !DISubroutineType(types: !6906)
!6906 = !{!102, !2762}
!6907 = !{!6908}
!6908 = !DILocalVariable(name: "p", arg: 1, scope: !6904, file: !163, line: 75, type: !2762)
!6909 = !DILocation(line: 75, column: 34, scope: !6904)
!6910 = !DILocation(line: 77, column: 10, scope: !6904)
!6911 = !DILocation(line: 77, column: 9, scope: !6904)
!6912 = !DILocation(line: 77, column: 2, scope: !6904)
!6913 = distinct !DISubprogram(name: "make_kuid", scope: !381, file: !381, line: 143, type: !6914, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6916)
!6914 = !DISubroutineType(types: !6915)
!6915 = !{!380, !1232, !385}
!6916 = !{!6917, !6918}
!6917 = !DILocalVariable(name: "from", arg: 1, scope: !6913, file: !381, line: 143, type: !1232)
!6918 = !DILocalVariable(name: "uid", arg: 2, scope: !6913, file: !381, line: 143, type: !385)
!6919 = !DILocation(line: 143, column: 55, scope: !6913)
!6920 = !DILocation(line: 143, column: 67, scope: !6913)
!6921 = !DILocation(line: 145, column: 9, scope: !6913)
!6922 = !DILocation(line: 145, column: 2, scope: !6913)
!6923 = distinct !DISubprogram(name: "i_user_ns", scope: !65, file: !65, line: 1324, type: !6924, scopeLine: 1325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6926)
!6924 = !DISubroutineType(types: !6925)
!6925 = !{!1232, !4540}
!6926 = !{!6927}
!6927 = !DILocalVariable(name: "inode", arg: 1, scope: !6923, file: !65, line: 1324, type: !4540)
!6928 = !DILocation(line: 1324, column: 68, scope: !6923)
!6929 = !DILocation(line: 1326, column: 9, scope: !6923)
!6930 = !DILocation(line: 1326, column: 16, scope: !6923)
!6931 = !DILocation(line: 1326, column: 22, scope: !6923)
!6932 = !DILocation(line: 1326, column: 2, scope: !6923)
!6933 = distinct !DISubprogram(name: "make_kgid", scope: !381, file: !381, line: 148, type: !6934, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6936)
!6934 = !DISubroutineType(types: !6935)
!6935 = !{!394, !1232, !398}
!6936 = !{!6937, !6938}
!6937 = !DILocalVariable(name: "from", arg: 1, scope: !6933, file: !381, line: 148, type: !1232)
!6938 = !DILocalVariable(name: "gid", arg: 2, scope: !6933, file: !381, line: 148, type: !398)
!6939 = !DILocation(line: 148, column: 55, scope: !6933)
!6940 = !DILocation(line: 148, column: 67, scope: !6933)
!6941 = !DILocation(line: 150, column: 9, scope: !6933)
!6942 = !DILocation(line: 150, column: 2, scope: !6933)
!6943 = !DISubprogram(name: "__isofs_iget", scope: !163, file: !163, line: 124, type: !6944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6944 = !DISubroutineType(types: !6945)
!6945 = !{!457, !566, !351, !351, !102}
!6946 = distinct !DISubprogram(name: "lowmem_page_address", scope: !911, file: !911, line: 2176, type: !6947, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6949)
!6947 = !DISubroutineType(types: !6948)
!6948 = !{!348, !4780}
!6949 = !{!6950}
!6950 = !DILocalVariable(name: "page", arg: 1, scope: !6946, file: !911, line: 2176, type: !4780)
!6951 = !DILocation(line: 2176, column: 69, scope: !6946)
!6952 = !DILocation(line: 2178, column: 9, scope: !6946)
!6953 = !DILocation(line: 2178, column: 2, scope: !6946)
!6954 = distinct !DISubprogram(name: "get_symlink_chunk", scope: !2, file: !2, line: 601, type: !6955, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6957)
!6955 = !DISubroutineType(types: !6956)
!6956 = !{!353, !353, !209, !353}
!6957 = !{!6958, !6959, !6960, !6961, !6962, !6963, !6964}
!6958 = !DILocalVariable(name: "rpnt", arg: 1, scope: !6954, file: !2, line: 601, type: !353)
!6959 = !DILocalVariable(name: "rr", arg: 2, scope: !6954, file: !2, line: 601, type: !209)
!6960 = !DILocalVariable(name: "plimit", arg: 3, scope: !6954, file: !2, line: 601, type: !353)
!6961 = !DILocalVariable(name: "slen", scope: !6954, file: !2, line: 603, type: !102)
!6962 = !DILocalVariable(name: "rootflag", scope: !6954, file: !2, line: 604, type: !102)
!6963 = !DILocalVariable(name: "oldslp", scope: !6954, file: !2, line: 605, type: !352)
!6964 = !DILocalVariable(name: "slp", scope: !6954, file: !2, line: 606, type: !352)
!6965 = !DILocation(line: 601, column: 38, scope: !6954)
!6966 = !DILocation(line: 601, column: 63, scope: !6954)
!6967 = !DILocation(line: 601, column: 73, scope: !6954)
!6968 = !DILocation(line: 603, column: 2, scope: !6954)
!6969 = !DILocation(line: 603, column: 6, scope: !6954)
!6970 = !DILocation(line: 604, column: 2, scope: !6954)
!6971 = !DILocation(line: 604, column: 6, scope: !6954)
!6972 = !DILocation(line: 605, column: 2, scope: !6954)
!6973 = !DILocation(line: 605, column: 23, scope: !6954)
!6974 = !DILocation(line: 606, column: 2, scope: !6954)
!6975 = !DILocation(line: 606, column: 23, scope: !6954)
!6976 = !DILocation(line: 607, column: 9, scope: !6954)
!6977 = !DILocation(line: 607, column: 13, scope: !6954)
!6978 = !DILocation(line: 607, column: 17, scope: !6954)
!6979 = !DILocation(line: 607, column: 7, scope: !6954)
!6980 = !DILocation(line: 608, column: 9, scope: !6954)
!6981 = !DILocation(line: 608, column: 13, scope: !6954)
!6982 = !DILocation(line: 608, column: 18, scope: !6954)
!6983 = !DILocation(line: 608, column: 6, scope: !6954)
!6984 = !DILocation(line: 609, column: 2, scope: !6954)
!6985 = !DILocation(line: 609, column: 9, scope: !6954)
!6986 = !DILocation(line: 609, column: 14, scope: !6954)
!6987 = !DILocation(line: 610, column: 12, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6954, file: !2, line: 609, column: 19)
!6989 = !DILocation(line: 611, column: 11, scope: !6988)
!6990 = !DILocation(line: 611, column: 16, scope: !6988)
!6991 = !DILocation(line: 611, column: 22, scope: !6988)
!6992 = !DILocation(line: 611, column: 3, scope: !6988)
!6993 = !DILocation(line: 613, column: 8, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6995, file: !2, line: 613, column: 8)
!6995 = distinct !DILexicalBlock(scope: !6988, file: !2, line: 611, column: 28)
!6996 = !DILocation(line: 613, column: 13, scope: !6994)
!6997 = !DILocation(line: 613, column: 19, scope: !6994)
!6998 = !DILocation(line: 613, column: 28, scope: !6994)
!6999 = !DILocation(line: 613, column: 26, scope: !6994)
!7000 = !DILocation(line: 613, column: 17, scope: !6994)
!7001 = !DILocation(line: 613, column: 8, scope: !6995)
!7002 = !DILocation(line: 614, column: 5, scope: !6994)
!7003 = !DILocation(line: 615, column: 11, scope: !6995)
!7004 = !DILocation(line: 615, column: 17, scope: !6995)
!7005 = !DILocation(line: 615, column: 22, scope: !6995)
!7006 = !DILocation(line: 615, column: 4, scope: !6995)
!7007 = !DILocation(line: 615, column: 28, scope: !6995)
!7008 = !DILocation(line: 615, column: 33, scope: !6995)
!7009 = !DILocation(line: 616, column: 12, scope: !6995)
!7010 = !DILocation(line: 616, column: 17, scope: !6995)
!7011 = !DILocation(line: 616, column: 9, scope: !6995)
!7012 = !DILocation(line: 617, column: 4, scope: !6995)
!7013 = !DILocation(line: 619, column: 8, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !6995, file: !2, line: 619, column: 8)
!7015 = !DILocation(line: 619, column: 16, scope: !7014)
!7016 = !DILocation(line: 619, column: 13, scope: !7014)
!7017 = !DILocation(line: 619, column: 8, scope: !6995)
!7018 = !DILocation(line: 620, column: 5, scope: !7014)
!7019 = !DILocation(line: 621, column: 9, scope: !6995)
!7020 = !DILocation(line: 621, column: 12, scope: !6995)
!7021 = !DILocation(line: 622, column: 4, scope: !6995)
!7022 = !DILocation(line: 624, column: 12, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !6995, file: !2, line: 624, column: 8)
!7024 = !DILocation(line: 624, column: 21, scope: !7023)
!7025 = !DILocation(line: 624, column: 19, scope: !7023)
!7026 = !DILocation(line: 624, column: 10, scope: !7023)
!7027 = !DILocation(line: 624, column: 8, scope: !6995)
!7028 = !DILocation(line: 625, column: 5, scope: !7023)
!7029 = !DILocation(line: 626, column: 9, scope: !6995)
!7030 = !DILocation(line: 626, column: 12, scope: !6995)
!7031 = !DILocation(line: 627, column: 9, scope: !6995)
!7032 = !DILocation(line: 627, column: 12, scope: !6995)
!7033 = !DILocation(line: 628, column: 4, scope: !6995)
!7034 = !DILocation(line: 630, column: 8, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !6995, file: !2, line: 630, column: 8)
!7036 = !DILocation(line: 630, column: 16, scope: !7035)
!7037 = !DILocation(line: 630, column: 13, scope: !7035)
!7038 = !DILocation(line: 630, column: 8, scope: !6995)
!7039 = !DILocation(line: 631, column: 5, scope: !7035)
!7040 = !DILocation(line: 632, column: 13, scope: !6995)
!7041 = !DILocation(line: 633, column: 9, scope: !6995)
!7042 = !DILocation(line: 633, column: 12, scope: !6995)
!7043 = !DILocation(line: 634, column: 4, scope: !6995)
!7044 = !DILocation(line: 636, column: 4, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !6995, file: !2, line: 636, column: 4)
!7046 = !DILocation(line: 636, column: 4, scope: !7047)
!7047 = distinct !DILexicalBlock(scope: !7045, file: !2, line: 636, column: 4)
!7048 = !DILocation(line: 638, column: 3, scope: !6995)
!7049 = !DILocation(line: 639, column: 11, scope: !6988)
!7050 = !DILocation(line: 639, column: 16, scope: !6988)
!7051 = !DILocation(line: 639, column: 20, scope: !6988)
!7052 = !DILocation(line: 639, column: 8, scope: !6988)
!7053 = !DILocation(line: 640, column: 12, scope: !6988)
!7054 = !DILocation(line: 640, column: 10, scope: !6988)
!7055 = !DILocation(line: 641, column: 41, scope: !6988)
!7056 = !DILocation(line: 641, column: 47, scope: !6988)
!7057 = !DILocation(line: 641, column: 52, scope: !6988)
!7058 = !DILocation(line: 641, column: 45, scope: !6988)
!7059 = !DILocation(line: 641, column: 56, scope: !6988)
!7060 = !DILocation(line: 641, column: 7, scope: !6988)
!7061 = !DILocation(line: 643, column: 7, scope: !7062)
!7062 = distinct !DILexicalBlock(scope: !6988, file: !2, line: 643, column: 7)
!7063 = !DILocation(line: 643, column: 12, scope: !7062)
!7064 = !DILocation(line: 643, column: 7, scope: !6988)
!7065 = !DILocation(line: 648, column: 10, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !7067, file: !2, line: 648, column: 8)
!7067 = distinct !DILexicalBlock(scope: !7062, file: !2, line: 643, column: 17)
!7068 = !DILocation(line: 648, column: 20, scope: !7066)
!7069 = !DILocation(line: 648, column: 24, scope: !7066)
!7070 = !DILocation(line: 648, column: 28, scope: !7066)
!7071 = !DILocation(line: 648, column: 33, scope: !7066)
!7072 = !DILocation(line: 648, column: 39, scope: !7066)
!7073 = !DILocation(line: 648, column: 44, scope: !7066)
!7074 = !DILocation(line: 649, column: 10, scope: !7066)
!7075 = !DILocation(line: 649, column: 18, scope: !7066)
!7076 = !DILocation(line: 649, column: 24, scope: !7066)
!7077 = !DILocation(line: 648, column: 8, scope: !7067)
!7078 = !DILocation(line: 650, column: 9, scope: !7079)
!7079 = distinct !DILexicalBlock(scope: !7080, file: !2, line: 650, column: 9)
!7080 = distinct !DILexicalBlock(scope: !7066, file: !2, line: 649, column: 30)
!7081 = !DILocation(line: 650, column: 17, scope: !7079)
!7082 = !DILocation(line: 650, column: 14, scope: !7079)
!7083 = !DILocation(line: 650, column: 9, scope: !7080)
!7084 = !DILocation(line: 651, column: 6, scope: !7079)
!7085 = !DILocation(line: 652, column: 10, scope: !7080)
!7086 = !DILocation(line: 652, column: 13, scope: !7080)
!7087 = !DILocation(line: 653, column: 4, scope: !7080)
!7088 = !DILocation(line: 654, column: 4, scope: !7067)
!7089 = !DILocation(line: 660, column: 8, scope: !7090)
!7090 = distinct !DILexicalBlock(scope: !6988, file: !2, line: 660, column: 7)
!7091 = !DILocation(line: 660, column: 17, scope: !7090)
!7092 = !DILocation(line: 660, column: 22, scope: !7090)
!7093 = !DILocation(line: 660, column: 30, scope: !7090)
!7094 = !DILocation(line: 660, column: 36, scope: !7090)
!7095 = !DILocation(line: 660, column: 7, scope: !6988)
!7096 = !DILocation(line: 661, column: 8, scope: !7097)
!7097 = distinct !DILexicalBlock(scope: !7098, file: !2, line: 661, column: 8)
!7098 = distinct !DILexicalBlock(scope: !7090, file: !2, line: 660, column: 42)
!7099 = !DILocation(line: 661, column: 16, scope: !7097)
!7100 = !DILocation(line: 661, column: 13, scope: !7097)
!7101 = !DILocation(line: 661, column: 8, scope: !7098)
!7102 = !DILocation(line: 662, column: 5, scope: !7097)
!7103 = !DILocation(line: 663, column: 9, scope: !7098)
!7104 = !DILocation(line: 663, column: 12, scope: !7098)
!7105 = !DILocation(line: 664, column: 3, scope: !7098)
!7106 = distinct !{!7106, !6984, !7107, !5077, !5078}
!7107 = !DILocation(line: 665, column: 2, scope: !6954)
!7108 = !DILocation(line: 666, column: 9, scope: !6954)
!7109 = !DILocation(line: 666, column: 2, scope: !6954)
!7110 = !DILocation(line: 667, column: 1, scope: !6954)
!7111 = distinct !DISubprogram(name: "brelse", scope: !5369, file: !5369, line: 311, type: !6517, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7112)
!7112 = !{!7113}
!7113 = !DILocalVariable(name: "bh", arg: 1, scope: !7111, file: !5369, line: 311, type: !5367)
!7114 = !DILocation(line: 311, column: 47, scope: !7111)
!7115 = !DILocation(line: 313, column: 6, scope: !7116)
!7116 = distinct !DILexicalBlock(scope: !7111, file: !5369, line: 313, column: 6)
!7117 = !DILocation(line: 313, column: 6, scope: !7111)
!7118 = !DILocation(line: 314, column: 12, scope: !7116)
!7119 = !DILocation(line: 314, column: 3, scope: !7116)
!7120 = !DILocation(line: 315, column: 1, scope: !7111)
!7121 = distinct !DISubprogram(name: "SetPageUptodate", scope: !169, file: !169, line: 769, type: !902, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7122)
!7122 = !{!7123}
!7123 = !DILocalVariable(name: "page", arg: 1, scope: !7121, file: !169, line: 769, type: !787)
!7124 = !DILocation(line: 769, column: 58, scope: !7121)
!7125 = !DILocation(line: 771, column: 38, scope: !7121)
!7126 = !DILocation(line: 771, column: 2, scope: !7121)
!7127 = !DILocation(line: 772, column: 1, scope: !7121)
!7128 = !DISubprogram(name: "unlock_page", scope: !1308, file: !1308, line: 1020, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7129 = distinct !DISubprogram(name: "SetPageError", scope: !169, file: !169, line: 489, type: !902, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7130)
!7130 = !{!7131}
!7131 = !DILocalVariable(name: "page", arg: 1, scope: !7129, file: !169, line: 489, type: !787)
!7132 = !DILocation(line: 489, column: 1, scope: !7129)
!7133 = !DILocation(line: 489, column: 1, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !7135, file: !169, line: 489, column: 1)
!7135 = distinct !DILexicalBlock(scope: !7129, file: !169, line: 489, column: 1)
!7136 = !DILocation(line: 489, column: 1, scope: !7135)
!7137 = !DISubprogram(name: "__brelse", scope: !5369, file: !5369, line: 232, type: !6517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7138 = distinct !DISubprogram(name: "folio_mark_uptodate", scope: !169, file: !169, line: 753, type: !1878, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7139)
!7139 = !{!7140}
!7140 = !DILocalVariable(name: "folio", arg: 1, scope: !7138, file: !169, line: 753, type: !1311)
!7141 = !DILocation(line: 753, column: 63, scope: !7138)
!7142 = !DILocation(line: 760, column: 2, scope: !7138)
!7143 = !DILocation(line: 760, column: 2, scope: !7144)
!7144 = distinct !DILexicalBlock(scope: !7138, file: !169, line: 760, column: 2)
!7145 = !DILocation(line: 760, column: 2, scope: !7146)
!7146 = distinct !DILexicalBlock(scope: !7144, file: !169, line: 760, column: 2)
!7147 = !{i64 2150987614}
!7148 = !DILocation(line: 761, column: 35, scope: !7138)
!7149 = !DILocation(line: 761, column: 23, scope: !7138)
!7150 = !DILocation(line: 761, column: 2, scope: !7138)
!7151 = !DILocation(line: 762, column: 1, scope: !7138)
!7152 = distinct !DISubprogram(name: "set_bit", scope: !7153, file: !7153, line: 26, type: !7154, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7157)
!7153 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!7154 = !DISubroutineType(types: !7155)
!7155 = !{null, !372, !7156}
!7156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!7157 = !{!7158, !7159}
!7158 = !DILocalVariable(name: "nr", arg: 1, scope: !7152, file: !7153, line: 26, type: !372)
!7159 = !DILocalVariable(name: "addr", arg: 2, scope: !7152, file: !7153, line: 26, type: !7156)
!7160 = !DILocation(line: 26, column: 42, scope: !7152)
!7161 = !DILocation(line: 26, column: 70, scope: !7152)
!7162 = !DILocation(line: 28, column: 26, scope: !7152)
!7163 = !DILocation(line: 28, column: 33, scope: !7152)
!7164 = !DILocation(line: 28, column: 31, scope: !7152)
!7165 = !DILocation(line: 28, column: 2, scope: !7152)
!7166 = !DILocation(line: 29, column: 15, scope: !7152)
!7167 = !DILocation(line: 29, column: 19, scope: !7152)
!7168 = !DILocation(line: 29, column: 2, scope: !7152)
!7169 = !DILocation(line: 30, column: 1, scope: !7152)
!7170 = distinct !DISubprogram(name: "folio_flags", scope: !169, file: !169, line: 308, type: !7171, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7173)
!7171 = !DISubroutineType(types: !7172)
!7172 = !{!2418, !1311, !13}
!7173 = !{!7174, !7175, !7176}
!7174 = !DILocalVariable(name: "folio", arg: 1, scope: !7170, file: !169, line: 308, type: !1311)
!7175 = !DILocalVariable(name: "n", arg: 2, scope: !7170, file: !169, line: 308, type: !13)
!7176 = !DILocalVariable(name: "page", scope: !7170, file: !169, line: 310, type: !787)
!7177 = !DILocation(line: 308, column: 49, scope: !7170)
!7178 = !DILocation(line: 308, column: 65, scope: !7170)
!7179 = !DILocation(line: 310, column: 2, scope: !7170)
!7180 = !DILocation(line: 310, column: 15, scope: !7170)
!7181 = !DILocation(line: 310, column: 23, scope: !7170)
!7182 = !DILocation(line: 310, column: 30, scope: !7170)
!7183 = !DILocation(line: 314, column: 10, scope: !7170)
!7184 = !DILocation(line: 314, column: 15, scope: !7170)
!7185 = !DILocation(line: 314, column: 18, scope: !7170)
!7186 = !DILocation(line: 315, column: 1, scope: !7170)
!7187 = !DILocation(line: 314, column: 2, scope: !7170)
!7188 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6726, file: !6726, line: 80, type: !6727, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7189)
!7189 = !{!7190, !7191}
!7190 = !DILocalVariable(name: "v", arg: 1, scope: !7188, file: !6726, line: 80, type: !6729)
!7191 = !DILocalVariable(name: "size", arg: 2, scope: !7188, file: !6726, line: 80, type: !698)
!7192 = !DILocation(line: 80, column: 74, scope: !7188)
!7193 = !DILocation(line: 80, column: 84, scope: !7188)
!7194 = !DILocation(line: 82, column: 20, scope: !7188)
!7195 = !DILocation(line: 82, column: 23, scope: !7188)
!7196 = !DILocation(line: 82, column: 2, scope: !7188)
!7197 = !DILocation(line: 83, column: 2, scope: !7188)
!7198 = !DILocation(line: 84, column: 1, scope: !7188)
!7199 = distinct !DISubprogram(name: "arch_set_bit", scope: !7200, file: !7200, line: 52, type: !7154, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7201)
!7200 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7201 = !{!7202, !7203}
!7202 = !DILocalVariable(name: "nr", arg: 1, scope: !7199, file: !7200, line: 52, type: !372)
!7203 = !DILocalVariable(name: "addr", arg: 2, scope: !7199, file: !7200, line: 52, type: !7156)
!7204 = !DILocation(line: 52, column: 19, scope: !7199)
!7205 = !DILocation(line: 52, column: 47, scope: !7199)
!7206 = !DILocation(line: 54, column: 27, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7199, file: !7200, line: 54, column: 6)
!7208 = !DILocation(line: 54, column: 6, scope: !7207)
!7209 = !DILocation(line: 54, column: 6, scope: !7199)
!7210 = !DILocation(line: 56, column: 6, scope: !7211)
!7211 = distinct !DILexicalBlock(scope: !7207, file: !7200, line: 54, column: 32)
!7212 = !DILocation(line: 57, column: 12, scope: !7211)
!7213 = !DILocation(line: 55, column: 3, scope: !7211)
!7214 = !{i64 2148091616, i64 2148091655, i64 2148091676, i64 2148091713, i64 2148091736, i64 2148091606}
!7215 = !DILocation(line: 59, column: 2, scope: !7211)
!7216 = !DILocation(line: 61, column: 8, scope: !7217)
!7217 = distinct !DILexicalBlock(scope: !7207, file: !7200, line: 59, column: 9)
!7218 = !DILocation(line: 61, column: 32, scope: !7217)
!7219 = !DILocation(line: 60, column: 3, scope: !7217)
!7220 = !{i64 2148091901, i64 2148091940, i64 2148091961, i64 2148091998, i64 2148092021, i64 2148091891}
!7221 = !DILocation(line: 63, column: 1, scope: !7199)
!7222 = distinct !DISubprogram(name: "_compound_head", scope: !169, file: !169, line: 244, type: !7223, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7225)
!7223 = !DISubroutineType(types: !7224)
!7224 = !{!351, !4780}
!7225 = !{!7226, !7227}
!7226 = !DILocalVariable(name: "page", arg: 1, scope: !7222, file: !169, line: 244, type: !4780)
!7227 = !DILocalVariable(name: "head", scope: !7222, file: !169, line: 246, type: !351)
!7228 = !DILocation(line: 244, column: 63, scope: !7222)
!7229 = !DILocation(line: 246, column: 2, scope: !7222)
!7230 = !DILocation(line: 246, column: 16, scope: !7222)
!7231 = !DILocation(line: 246, column: 23, scope: !7232)
!7232 = distinct !DILexicalBlock(scope: !7222, file: !169, line: 246, column: 23)
!7233 = !DILocation(line: 246, column: 23, scope: !7234)
!7234 = distinct !DILexicalBlock(scope: !7232, file: !169, line: 246, column: 23)
!7235 = !DILocation(line: 248, column: 6, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7222, file: !169, line: 248, column: 6)
!7237 = !DILocation(line: 248, column: 6, scope: !7222)
!7238 = !DILocation(line: 249, column: 10, scope: !7236)
!7239 = !DILocation(line: 249, column: 15, scope: !7236)
!7240 = !DILocation(line: 249, column: 3, scope: !7236)
!7241 = !DILocation(line: 250, column: 45, scope: !7222)
!7242 = !DILocation(line: 250, column: 24, scope: !7222)
!7243 = !DILocation(line: 250, column: 9, scope: !7222)
!7244 = !DILocation(line: 250, column: 2, scope: !7222)
!7245 = !DILocation(line: 251, column: 1, scope: !7222)
!7246 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !169, file: !169, line: 207, type: !7247, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7249)
!7247 = !DISubroutineType(types: !7248)
!7248 = !{!4780, !4780}
!7249 = !{!7250, !7251, !7254}
!7250 = !DILocalVariable(name: "page", arg: 1, scope: !7246, file: !169, line: 207, type: !4780)
!7251 = !DILocalVariable(name: "branch", scope: !7252, file: !169, line: 209, type: !868)
!7252 = distinct !DILexicalBlock(scope: !7253, file: !169, line: 209, column: 7)
!7253 = distinct !DILexicalBlock(scope: !7246, file: !169, line: 209, column: 6)
!7254 = !DILocalVariable(name: "head", scope: !7255, file: !169, line: 225, type: !351)
!7255 = distinct !DILexicalBlock(scope: !7256, file: !169, line: 219, column: 39)
!7256 = distinct !DILexicalBlock(scope: !7246, file: !169, line: 218, column: 6)
!7257 = !DILocation(line: 207, column: 83, scope: !7246)
!7258 = !DILocation(line: 209, column: 7, scope: !7252)
!7259 = !DILocation(line: 209, column: 7, scope: !7260)
!7260 = distinct !DILexicalBlock(scope: !7261, file: !169, line: 209, column: 7)
!7261 = distinct !DILexicalBlock(scope: !7252, file: !169, line: 209, column: 7)
!7262 = !DILocation(line: 209, column: 7, scope: !7261)
!7263 = !DILocation(line: 209, column: 7, scope: !7253)
!7264 = !DILocation(line: 209, column: 6, scope: !7246)
!7265 = !DILocation(line: 210, column: 10, scope: !7253)
!7266 = !DILocation(line: 210, column: 3, scope: !7253)
!7267 = !DILocation(line: 218, column: 6, scope: !7256)
!7268 = !DILocation(line: 218, column: 49, scope: !7256)
!7269 = !DILocation(line: 219, column: 6, scope: !7256)
!7270 = !DILocation(line: 218, column: 6, scope: !7246)
!7271 = !DILocation(line: 225, column: 3, scope: !7255)
!7272 = !DILocation(line: 225, column: 17, scope: !7255)
!7273 = !DILocation(line: 225, column: 24, scope: !7274)
!7274 = distinct !DILexicalBlock(scope: !7255, file: !169, line: 225, column: 24)
!7275 = !DILocation(line: 225, column: 24, scope: !7276)
!7276 = distinct !DILexicalBlock(scope: !7274, file: !169, line: 225, column: 24)
!7277 = !DILocation(line: 227, column: 7, scope: !7278)
!7278 = distinct !DILexicalBlock(scope: !7255, file: !169, line: 227, column: 7)
!7279 = !DILocation(line: 227, column: 7, scope: !7255)
!7280 = !DILocation(line: 228, column: 33, scope: !7278)
!7281 = !DILocation(line: 228, column: 38, scope: !7278)
!7282 = !DILocation(line: 228, column: 11, scope: !7278)
!7283 = !DILocation(line: 228, column: 4, scope: !7278)
!7284 = !DILocation(line: 229, column: 2, scope: !7256)
!7285 = !DILocation(line: 229, column: 2, scope: !7255)
!7286 = !DILocation(line: 230, column: 9, scope: !7246)
!7287 = !DILocation(line: 230, column: 2, scope: !7246)
!7288 = !DILocation(line: 231, column: 1, scope: !7246)
!7289 = distinct !DISubprogram(name: "arch_static_branch", scope: !7290, file: !7290, line: 25, type: !7291, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7305)
!7290 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7291 = !DISubroutineType(types: !7292)
!7292 = !{!868, !7293, !868}
!7293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7294, size: 64)
!7294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2396, line: 85, size: 128, elements: !7295)
!7295 = !{!7296, !7297}
!7296 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !7294, file: !2396, line: 86, baseType: !494, size: 32)
!7297 = !DIDerivedType(tag: DW_TAG_member, scope: !7294, file: !2396, line: 101, baseType: !7298, size: 64, offset: 64)
!7298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7294, file: !2396, line: 101, size: 64, elements: !7299)
!7299 = !{!7300, !7301, !7302}
!7300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7298, file: !2396, line: 102, baseType: !351, size: 64)
!7301 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !7298, file: !2396, line: 103, baseType: !2394, size: 64)
!7302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7298, file: !2396, line: 104, baseType: !7303, size: 64)
!7303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7304, size: 64)
!7304 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2396, line: 104, flags: DIFlagFwdDecl)
!7305 = !{!7306, !7307, !7308}
!7306 = !DILocalVariable(name: "key", arg: 1, scope: !7289, file: !7290, line: 25, type: !7293)
!7307 = !DILocalVariable(name: "branch", arg: 2, scope: !7289, file: !7290, line: 25, type: !868)
!7308 = !DILabel(scope: !7289, name: "l_yes", file: !7290, line: 33)
!7309 = !DILocation(line: 25, column: 67, scope: !7289)
!7310 = !DILocation(line: 25, column: 77, scope: !7289)
!7311 = !DILocation(line: 30, column: 13, scope: !7289)
!7312 = !DILocation(line: 30, column: 28, scope: !7289)
!7313 = !DILocation(line: 30, column: 26, scope: !7289)
!7314 = !DILocation(line: 27, column: 2, scope: !7289)
!7315 = !{i64 1177919, i64 1177963, i64 2148662646, i64 2148662667, i64 2148662693, i64 2148662726, i64 2148662760, i64 2148662784}
!7316 = !DILocation(line: 32, column: 2, scope: !7289)
!7317 = !DILocation(line: 33, column: 1, scope: !7289)
!7318 = !DILocation(line: 34, column: 2, scope: !7289)
!7319 = !DILocation(line: 35, column: 1, scope: !7289)
!7320 = distinct !DISubprogram(name: "const_test_bit", scope: !7321, file: !7321, line: 166, type: !7322, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7324)
!7321 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7322 = !DISubroutineType(types: !7323)
!7323 = !{!868, !351, !4775}
!7324 = !{!7325, !7326, !7327, !7328, !7329}
!7325 = !DILocalVariable(name: "nr", arg: 1, scope: !7320, file: !7321, line: 166, type: !351)
!7326 = !DILocalVariable(name: "addr", arg: 2, scope: !7320, file: !7321, line: 166, type: !4775)
!7327 = !DILocalVariable(name: "p", scope: !7320, file: !7321, line: 168, type: !4779)
!7328 = !DILocalVariable(name: "mask", scope: !7320, file: !7321, line: 169, type: !351)
!7329 = !DILocalVariable(name: "val", scope: !7320, file: !7321, line: 170, type: !351)
!7330 = !DILocation(line: 166, column: 30, scope: !7320)
!7331 = !DILocation(line: 166, column: 64, scope: !7320)
!7332 = !DILocation(line: 168, column: 2, scope: !7320)
!7333 = !DILocation(line: 168, column: 23, scope: !7320)
!7334 = !DILocation(line: 168, column: 50, scope: !7320)
!7335 = !DILocation(line: 168, column: 57, scope: !7320)
!7336 = !DILocation(line: 168, column: 55, scope: !7320)
!7337 = !DILocation(line: 169, column: 2, scope: !7320)
!7338 = !DILocation(line: 169, column: 16, scope: !7320)
!7339 = !DILocation(line: 169, column: 23, scope: !7320)
!7340 = !DILocation(line: 170, column: 2, scope: !7320)
!7341 = !DILocation(line: 170, column: 16, scope: !7320)
!7342 = !DILocation(line: 170, column: 23, scope: !7320)
!7343 = !DILocation(line: 170, column: 22, scope: !7320)
!7344 = !DILocation(line: 172, column: 12, scope: !7320)
!7345 = !DILocation(line: 172, column: 18, scope: !7320)
!7346 = !DILocation(line: 172, column: 16, scope: !7320)
!7347 = !DILocation(line: 172, column: 10, scope: !7320)
!7348 = !DILocation(line: 172, column: 9, scope: !7320)
!7349 = !DILocation(line: 173, column: 1, scope: !7320)
!7350 = !DILocation(line: 172, column: 2, scope: !7320)
!7351 = distinct !DISubprogram(name: "_test_bit", scope: !7352, file: !7352, line: 139, type: !7322, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7353)
!7352 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7353 = !{!7354, !7355}
!7354 = !DILocalVariable(name: "nr", arg: 1, scope: !7351, file: !7352, line: 139, type: !351)
!7355 = !DILocalVariable(name: "addr", arg: 2, scope: !7351, file: !7352, line: 139, type: !4775)
!7356 = !DILocation(line: 139, column: 25, scope: !7351)
!7357 = !DILocation(line: 139, column: 59, scope: !7351)
!7358 = !DILocation(line: 141, column: 25, scope: !7351)
!7359 = !DILocation(line: 141, column: 32, scope: !7351)
!7360 = !DILocation(line: 141, column: 30, scope: !7351)
!7361 = !DILocation(line: 141, column: 2, scope: !7351)
!7362 = !DILocation(line: 142, column: 23, scope: !7351)
!7363 = !DILocation(line: 142, column: 27, scope: !7351)
!7364 = !DILocation(line: 142, column: 9, scope: !7351)
!7365 = !DILocation(line: 142, column: 2, scope: !7351)
!7366 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6726, file: !6726, line: 66, type: !6727, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7367)
!7367 = !{!7368, !7369}
!7368 = !DILocalVariable(name: "v", arg: 1, scope: !7366, file: !6726, line: 66, type: !6729)
!7369 = !DILocalVariable(name: "size", arg: 2, scope: !7366, file: !6726, line: 66, type: !698)
!7370 = !DILocation(line: 66, column: 73, scope: !7366)
!7371 = !DILocation(line: 66, column: 83, scope: !7366)
!7372 = !DILocation(line: 68, column: 19, scope: !7366)
!7373 = !DILocation(line: 68, column: 22, scope: !7366)
!7374 = !DILocation(line: 68, column: 2, scope: !7366)
!7375 = !DILocation(line: 69, column: 2, scope: !7366)
!7376 = !DILocation(line: 70, column: 1, scope: !7366)
!7377 = distinct !DISubprogram(name: "arch_test_bit", scope: !7200, file: !7200, line: 237, type: !7322, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7378)
!7378 = !{!7379, !7380}
!7379 = !DILocalVariable(name: "nr", arg: 1, scope: !7377, file: !7200, line: 237, type: !351)
!7380 = !DILocalVariable(name: "addr", arg: 2, scope: !7377, file: !7200, line: 237, type: !4775)
!7381 = !DILocation(line: 237, column: 29, scope: !7377)
!7382 = !DILocation(line: 237, column: 63, scope: !7377)
!7383 = !DILocation(line: 239, column: 30, scope: !7377)
!7384 = !DILocation(line: 239, column: 9, scope: !7377)
!7385 = !DILocation(line: 239, column: 54, scope: !7377)
!7386 = !DILocation(line: 239, column: 58, scope: !7377)
!7387 = !DILocation(line: 239, column: 36, scope: !7377)
!7388 = !DILocation(line: 240, column: 26, scope: !7377)
!7389 = !DILocation(line: 240, column: 30, scope: !7377)
!7390 = !DILocation(line: 240, column: 8, scope: !7377)
!7391 = !DILocation(line: 239, column: 2, scope: !7377)
!7392 = distinct !DISubprogram(name: "kasan_check_read", scope: !6751, file: !6751, line: 40, type: !6752, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7393)
!7393 = !{!7394, !7395}
!7394 = !DILocalVariable(name: "p", arg: 1, scope: !7392, file: !6751, line: 40, type: !6729)
!7395 = !DILocalVariable(name: "size", arg: 2, scope: !7392, file: !6751, line: 40, type: !13)
!7396 = !DILocation(line: 40, column: 58, scope: !7392)
!7397 = !DILocation(line: 40, column: 74, scope: !7392)
!7398 = !DILocation(line: 42, column: 2, scope: !7392)
!7399 = distinct !DISubprogram(name: "constant_test_bit", scope: !7200, file: !7200, line: 204, type: !7400, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7402)
!7400 = !DISubroutineType(types: !7401)
!7401 = !{!868, !372, !4775}
!7402 = !{!7403, !7404}
!7403 = !DILocalVariable(name: "nr", arg: 1, scope: !7399, file: !7200, line: 204, type: !372)
!7404 = !DILocalVariable(name: "addr", arg: 2, scope: !7399, file: !7200, line: 204, type: !4775)
!7405 = !DILocation(line: 204, column: 52, scope: !7399)
!7406 = !DILocation(line: 204, column: 86, scope: !7399)
!7407 = !DILocation(line: 206, column: 19, scope: !7399)
!7408 = !DILocation(line: 206, column: 22, scope: !7399)
!7409 = !DILocation(line: 206, column: 15, scope: !7399)
!7410 = !DILocation(line: 207, column: 4, scope: !7399)
!7411 = !DILocation(line: 207, column: 9, scope: !7399)
!7412 = !DILocation(line: 207, column: 12, scope: !7399)
!7413 = !DILocation(line: 206, column: 44, scope: !7399)
!7414 = !DILocation(line: 207, column: 37, scope: !7399)
!7415 = !DILocation(line: 206, column: 2, scope: !7399)
!7416 = distinct !DISubprogram(name: "variable_test_bit", scope: !7200, file: !7200, line: 224, type: !7400, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7417)
!7417 = !{!7418, !7419, !7420}
!7418 = !DILocalVariable(name: "nr", arg: 1, scope: !7416, file: !7200, line: 224, type: !372)
!7419 = !DILocalVariable(name: "addr", arg: 2, scope: !7416, file: !7200, line: 224, type: !4775)
!7420 = !DILocalVariable(name: "oldbit", scope: !7416, file: !7200, line: 226, type: !868)
!7421 = !DILocation(line: 224, column: 52, scope: !7416)
!7422 = !DILocation(line: 224, column: 86, scope: !7416)
!7423 = !DILocation(line: 226, column: 2, scope: !7416)
!7424 = !DILocation(line: 226, column: 7, scope: !7416)
!7425 = !DILocation(line: 231, column: 33, scope: !7416)
!7426 = !DILocation(line: 231, column: 46, scope: !7416)
!7427 = !DILocation(line: 228, column: 2, scope: !7416)
!7428 = !{i64 2148105228, i64 2148105302}
!7429 = !DILocation(line: 233, column: 9, scope: !7416)
!7430 = !DILocation(line: 234, column: 1, scope: !7416)
!7431 = !DILocation(line: 233, column: 2, scope: !7416)
