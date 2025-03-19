; ModuleID = 'fs/9p/vfs_file.c'
source_filename = "fs/9p/vfs_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.26 }
%struct.atomic_t = type { i32 }
%union.anon.26 = type { i64 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_call_key = type { ptr, %union.anon.47 }
%union.anon.47 = type { i64 }
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
%struct.v9fs_session_info = type { i32, i8, i16, i32, i32, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i64 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.16, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.17, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.18, ptr, %struct.address_space, %struct.list_head, %union.anon.19, i32, i32, ptr, ptr }
%union.anon.16 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.17 = type { %struct.callback_head }
%union.anon.18 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.19 = type { ptr }
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
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, %union.anon.27 }
%union.anon.27 = type { ptr }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i64, i64, ptr, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.vm_area_struct = type { %union.anon.31, ptr, %struct.pgprot, %union.anon.33, i32, ptr, i8, %struct.anon.34, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.33 = type { i64 }
%struct.anon.34 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.vm_userfaultfd_ctx = type {}
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.24, %struct.list_head, %struct.list_head, %union.anon.25 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.20, ptr }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8, ptr }
%struct.vm_fault = type { %struct.anon.35, i32, ptr, ptr, %union.anon.36, ptr, ptr, ptr, ptr, ptr }
%struct.anon.35 = type { ptr, i32, i64, i64, i64 }
%union.anon.36 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.37, %union.anon.46, %struct.atomic_t, [8 x i8] }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { %union.anon.39, ptr, %union.anon.41, i64 }
%union.anon.39 = type { %struct.list_head }
%union.anon.41 = type { i64 }
%union.anon.46 = type { %struct.atomic_t }
%struct.anon.44 = type { i64 }
%struct.folio = type { %union.anon.48, %union.anon.53, %union.anon.55 }
%union.anon.48 = type { %struct.page }
%union.anon.53 = type { %struct.page }
%union.anon.55 = type { %struct.page }
%struct.p9_flock = type { i8, i32, i64, i64, i32, ptr }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.58, %struct.idr, %struct.idr, [65 x i8] }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.p9_getlock = type { i8, i64, i64, i32, ptr }

@v9fs_file_operations = hidden constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @v9fs_file_read_iter, ptr @v9fs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_readonly_mmap, i64 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync, ptr null, ptr @v9fs_file_lock, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @v9fs_file_splice_read, ptr null, ptr @simple_nosetlease, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@v9fs_file_operations_dotl = hidden constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @v9fs_file_read_iter, ptr @v9fs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_file_mmap, i64 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync_dotl, ptr null, ptr @v9fs_file_lock_dotl, ptr null, ptr null, ptr @v9fs_file_flock_dotl, ptr @iter_file_splice_write, ptr @v9fs_file_splice_read, ptr null, ptr @simple_nosetlease, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4913
@__tracepoint_9p_fid_ref = external dso_local global %struct.tracepoint, align 8
@v9fs_mmap_file_vm_ops = internal constant %struct.vm_operations_struct { ptr null, ptr @v9fs_mmap_vm_close, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @v9fs_vm_page_mkwrite, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4915
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4917
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str = private unnamed_addr constant [17 x i8] c"fs/9p/vfs_file.c\00", align 1, !dbg !4921
@v9fs_file_do_lock.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4926
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown lock status code: %d\0A\00", align 1, !dbg !5036
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @v9fs_file_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5050 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %v9ses = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %omode = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %writeback_omode = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5052, metadata !DIExpression()), !dbg !5063
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5053, metadata !DIExpression()), !dbg !5064
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !5065
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5054, metadata !DIExpression()), !dbg !5066
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #10, !dbg !5067
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !5055, metadata !DIExpression()), !dbg !5068
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #10, !dbg !5069
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5056, metadata !DIExpression()), !dbg !5070
  call void @llvm.lifetime.start.p0(i64 4, ptr %omode) #10, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %omode, metadata !5057, metadata !DIExpression()), !dbg !5072
  store i32 0, ptr %tmp, align 4, !dbg !5073
  %0 = load i32, ptr %tmp, align 4, !dbg !5076
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5077
  %call = call ptr @v9fs_inode2v9ses(ptr noundef %1) #11, !dbg !5078
  store ptr %call, ptr %v9ses, align 8, !dbg !5079
  %2 = load ptr, ptr %v9ses, align 8, !dbg !5080
  %call1 = call i32 @v9fs_proto_dotl(ptr noundef %2) #11, !dbg !5082
  %tobool = icmp ne i32 %call1, 0, !dbg !5082
  br i1 %tobool, label %if.then, label %if.else, !dbg !5083

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %file.addr, align 8, !dbg !5084
  %f_flags = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 6, !dbg !5085
  %4 = load i32, ptr %f_flags, align 8, !dbg !5085
  %call2 = call i32 @v9fs_open_to_dotl_flags(i32 noundef %4) #11, !dbg !5086
  store i32 %call2, ptr %omode, align 4, !dbg !5087
  br label %if.end, !dbg !5088

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %file.addr, align 8, !dbg !5089
  %f_flags3 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 6, !dbg !5090
  %6 = load i32, ptr %f_flags3, align 8, !dbg !5090
  %7 = load ptr, ptr %v9ses, align 8, !dbg !5091
  %call4 = call i32 @v9fs_proto_dotu(ptr noundef %7) #11, !dbg !5092
  %call5 = call i32 @v9fs_uflags2omode(i32 noundef %6, i32 noundef %call4) #11, !dbg !5093
  store i32 %call5, ptr %omode, align 4, !dbg !5094
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %file.addr, align 8, !dbg !5095
  %private_data = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 15, !dbg !5096
  %9 = load ptr, ptr %private_data, align 8, !dbg !5096
  store ptr %9, ptr %fid, align 8, !dbg !5097
  %10 = load ptr, ptr %fid, align 8, !dbg !5098
  %tobool6 = icmp ne ptr %10, null, !dbg !5098
  br i1 %tobool6, label %if.end48, label %if.then7, !dbg !5099

if.then7:                                         ; preds = %if.end
  %11 = load ptr, ptr %file.addr, align 8, !dbg !5100
  %call8 = call ptr @file_dentry(ptr noundef %11) #11, !dbg !5101
  %call9 = call ptr @v9fs_fid_clone(ptr noundef %call8) #11, !dbg !5102
  store ptr %call9, ptr %fid, align 8, !dbg !5103
  %12 = load ptr, ptr %fid, align 8, !dbg !5104
  %call10 = call zeroext i1 @IS_ERR(ptr noundef %12) #11, !dbg !5106
  br i1 %call10, label %if.then11, label %if.end13, !dbg !5107

if.then11:                                        ; preds = %if.then7
  %13 = load ptr, ptr %fid, align 8, !dbg !5108
  %call12 = call i64 @PTR_ERR(ptr noundef %13) #11, !dbg !5109
  %conv = trunc i64 %call12 to i32, !dbg !5109
  store i32 %conv, ptr %retval, align 4, !dbg !5110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5110

if.end13:                                         ; preds = %if.then7
  %14 = load ptr, ptr %v9ses, align 8, !dbg !5111
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %14, i32 0, i32 4, !dbg !5112
  %15 = load i32, ptr %cache, align 4, !dbg !5112
  %and = and i32 %15, 4, !dbg !5113
  %tobool14 = icmp ne i32 %and, 0, !dbg !5113
  br i1 %tobool14, label %land.lhs.true, label %if.else27, !dbg !5114

land.lhs.true:                                    ; preds = %if.end13
  %16 = load i32, ptr %omode, align 4, !dbg !5115
  %and15 = and i32 %16, 1, !dbg !5116
  %tobool16 = icmp ne i32 %and15, 0, !dbg !5116
  br i1 %tobool16, label %if.then17, label %if.else27, !dbg !5117

if.then17:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %writeback_omode) #10, !dbg !5118
  call void @llvm.dbg.declare(metadata ptr %writeback_omode, metadata !5058, metadata !DIExpression()), !dbg !5119
  %17 = load i32, ptr %omode, align 4, !dbg !5120
  %and18 = and i32 %17, -2, !dbg !5121
  %or = or i32 %and18, 2, !dbg !5122
  store i32 %or, ptr %writeback_omode, align 4, !dbg !5119
  store i32 0, ptr %tmp19, align 4, !dbg !5123
  %18 = load i32, ptr %tmp19, align 4, !dbg !5126
  %19 = load ptr, ptr %fid, align 8, !dbg !5127
  %20 = load i32, ptr %writeback_omode, align 4, !dbg !5128
  %call20 = call i32 @p9_client_open(ptr noundef %19, i32 noundef %20) #11, !dbg !5129
  store i32 %call20, ptr %err, align 4, !dbg !5130
  %21 = load i32, ptr %err, align 4, !dbg !5131
  %cmp = icmp slt i32 %21, 0, !dbg !5133
  br i1 %cmp, label %if.then22, label %if.end26, !dbg !5134

if.then22:                                        ; preds = %if.then17
  store i32 0, ptr %tmp23, align 4, !dbg !5135
  %22 = load i32, ptr %tmp23, align 4, !dbg !5139
  %23 = load ptr, ptr %fid, align 8, !dbg !5140
  %24 = load i32, ptr %omode, align 4, !dbg !5141
  %call24 = call i32 @p9_client_open(ptr noundef %23, i32 noundef %24) #11, !dbg !5142
  store i32 %call24, ptr %err, align 4, !dbg !5143
  %25 = load ptr, ptr %fid, align 8, !dbg !5144
  %mode = getelementptr inbounds %struct.p9_fid, ptr %25, i32 0, i32 3, !dbg !5145
  %26 = load i32, ptr %mode, align 8, !dbg !5146
  %or25 = or i32 %26, 8192, !dbg !5146
  store i32 %or25, ptr %mode, align 8, !dbg !5146
  br label %if.end26, !dbg !5147

if.end26:                                         ; preds = %if.then22, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %writeback_omode) #10, !dbg !5148
  br label %if.end29, !dbg !5149

if.else27:                                        ; preds = %land.lhs.true, %if.end13
  %27 = load ptr, ptr %fid, align 8, !dbg !5150
  %28 = load i32, ptr %omode, align 4, !dbg !5152
  %call28 = call i32 @p9_client_open(ptr noundef %27, i32 noundef %28) #11, !dbg !5153
  store i32 %call28, ptr %err, align 4, !dbg !5154
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.end26
  %29 = load i32, ptr %err, align 4, !dbg !5155
  %cmp30 = icmp slt i32 %29, 0, !dbg !5157
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !5158

if.then32:                                        ; preds = %if.end29
  %30 = load ptr, ptr %fid, align 8, !dbg !5159
  %call33 = call i32 @p9_fid_put(ptr noundef %30) #11, !dbg !5161
  %31 = load i32, ptr %err, align 4, !dbg !5162
  store i32 %31, ptr %retval, align 4, !dbg !5163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5163

if.end34:                                         ; preds = %if.end29
  %32 = load ptr, ptr %file.addr, align 8, !dbg !5164
  %f_flags35 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 6, !dbg !5166
  %33 = load i32, ptr %f_flags35, align 8, !dbg !5166
  %and36 = and i32 %33, 1024, !dbg !5167
  %tobool37 = icmp ne i32 %and36, 0, !dbg !5167
  br i1 %tobool37, label %land.lhs.true38, label %if.end46, !dbg !5168

land.lhs.true38:                                  ; preds = %if.end34
  %34 = load ptr, ptr %v9ses, align 8, !dbg !5169
  %call39 = call i32 @v9fs_proto_dotu(ptr noundef %34) #11, !dbg !5170
  %tobool40 = icmp ne i32 %call39, 0, !dbg !5170
  br i1 %tobool40, label %if.end46, label %land.lhs.true41, !dbg !5171

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %35 = load ptr, ptr %v9ses, align 8, !dbg !5172
  %call42 = call i32 @v9fs_proto_dotl(ptr noundef %35) #11, !dbg !5173
  %tobool43 = icmp ne i32 %call42, 0, !dbg !5173
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !5174

if.then44:                                        ; preds = %land.lhs.true41
  %36 = load ptr, ptr %file.addr, align 8, !dbg !5175
  %call45 = call i64 @generic_file_llseek(ptr noundef %36, i64 noundef 0, i32 noundef 2) #11, !dbg !5176
  br label %if.end46, !dbg !5176

if.end46:                                         ; preds = %if.then44, %land.lhs.true41, %land.lhs.true38, %if.end34
  %37 = load ptr, ptr %fid, align 8, !dbg !5177
  %38 = load ptr, ptr %file.addr, align 8, !dbg !5178
  %private_data47 = getelementptr inbounds %struct.file, ptr %38, i32 0, i32 15, !dbg !5179
  store ptr %37, ptr %private_data47, align 8, !dbg !5180
  br label %if.end48, !dbg !5181

if.end48:                                         ; preds = %if.end46, %if.end
  %39 = load ptr, ptr %fid, align 8, !dbg !5182
  %40 = load ptr, ptr %v9ses, align 8, !dbg !5183
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %40, i32 0, i32 0, !dbg !5184
  %41 = load i32, ptr %flags, align 8, !dbg !5184
  %42 = load ptr, ptr %v9ses, align 8, !dbg !5185
  %cache49 = getelementptr inbounds %struct.v9fs_session_info, ptr %42, i32 0, i32 4, !dbg !5186
  %43 = load i32, ptr %cache49, align 4, !dbg !5186
  %44 = load ptr, ptr %file.addr, align 8, !dbg !5187
  %f_flags50 = getelementptr inbounds %struct.file, ptr %44, i32 0, i32 6, !dbg !5188
  %45 = load i32, ptr %f_flags50, align 8, !dbg !5188
  call void @v9fs_fid_add_modes(ptr noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #11, !dbg !5189
  %46 = load ptr, ptr %inode.addr, align 8, !dbg !5190
  call void @v9fs_open_fid_add(ptr noundef %46, ptr noundef %fid) #11, !dbg !5191
  store i32 0, ptr %retval, align 4, !dbg !5192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5192

cleanup:                                          ; preds = %if.end48, %if.then32, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %omode) #10, !dbg !5193
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #10, !dbg !5193
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #10, !dbg !5193
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !5193
  %47 = load i32, ptr %retval, align 4, !dbg !5193
  ret i32 %47, !dbg !5193
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_inode2v9ses(ptr noundef %inode) #3 align 16 !dbg !5194 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5198, metadata !DIExpression()), !dbg !5199
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5200
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5201
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5201
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !5202
  %2 = load ptr, ptr %s_fs_info, align 32, !dbg !5202
  ret ptr %2, !dbg !5203
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_proto_dotl(ptr noundef %v9ses) #3 align 16 !dbg !5204 {
entry:
  %v9ses.addr = alloca ptr, align 8
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !5210
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 0, !dbg !5211
  %1 = load i32, ptr %flags, align 8, !dbg !5211
  %and = and i32 %1, 2, !dbg !5212
  ret i32 %and, !dbg !5213
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5214 dso_local i32 @v9fs_open_to_dotl_flags(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5216 dso_local i32 @v9fs_uflags2omode(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_proto_dotu(ptr noundef %v9ses) #3 align 16 !dbg !5219 {
entry:
  %v9ses.addr = alloca ptr, align 8
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !5223
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 0, !dbg !5224
  %1 = load i32, ptr %flags, align 8, !dbg !5224
  %and = and i32 %1, 1, !dbg !5225
  ret i32 %and, !dbg !5226
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_fid_clone(ptr noundef %dentry) #3 align 16 !dbg !5227 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %nfid = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5232, metadata !DIExpression()), !dbg !5235
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #10, !dbg !5236
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5233, metadata !DIExpression()), !dbg !5237
  call void @llvm.lifetime.start.p0(i64 8, ptr %nfid) #10, !dbg !5236
  call void @llvm.dbg.declare(metadata ptr %nfid, metadata !5234, metadata !DIExpression()), !dbg !5238
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5239
  %call = call ptr @v9fs_fid_lookup(ptr noundef %0) #11, !dbg !5240
  store ptr %call, ptr %fid, align 8, !dbg !5241
  %1 = load ptr, ptr %fid, align 8, !dbg !5242
  %tobool = icmp ne ptr %1, null, !dbg !5242
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5244

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %fid, align 8, !dbg !5245
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #11, !dbg !5246
  br i1 %call1, label %if.then, label %if.end, !dbg !5247

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %fid, align 8, !dbg !5248
  store ptr %3, ptr %retval, align 8, !dbg !5249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5249

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %fid, align 8, !dbg !5250
  %call2 = call ptr @clone_fid(ptr noundef %4) #11, !dbg !5251
  store ptr %call2, ptr %nfid, align 8, !dbg !5252
  %5 = load ptr, ptr %fid, align 8, !dbg !5253
  %call3 = call i32 @p9_fid_put(ptr noundef %5) #11, !dbg !5254
  %6 = load ptr, ptr %nfid, align 8, !dbg !5255
  store ptr %6, ptr %retval, align 8, !dbg !5256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5256

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nfid) #10, !dbg !5257
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #10, !dbg !5257
  %7 = load ptr, ptr %retval, align 8, !dbg !5257
  ret ptr %7, !dbg !5257
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_dentry(ptr noundef %file) #3 align 16 !dbg !5258 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5266
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10, !dbg !5267
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !5268
  %1 = load ptr, ptr %dentry, align 8, !dbg !5268
  %2 = load ptr, ptr %file.addr, align 8, !dbg !5269
  %call = call ptr @file_inode(ptr noundef %2) #11, !dbg !5270
  %call1 = call ptr @d_real(ptr noundef %1, ptr noundef %call) #11, !dbg !5271
  ret ptr %call1, !dbg !5272
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5273 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5280
  %1 = ptrtoint ptr %0 to i64, !dbg !5280
  %2 = inttoptr i64 %1 to ptr, !dbg !5280
  %3 = ptrtoint ptr %2 to i64, !dbg !5280
  %cmp = icmp uge i64 %3, -4095, !dbg !5280
  %lnot = xor i1 %cmp, true, !dbg !5280
  %lnot1 = xor i1 %lnot, true, !dbg !5280
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5280
  %conv = sext i32 %lnot.ext to i64, !dbg !5280
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5280
  %tobool = icmp ne i64 %expval, 0, !dbg !5280
  ret i1 %tobool, !dbg !5281
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !5282 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5288
  %1 = ptrtoint ptr %0 to i64, !dbg !5289
  ret i64 %1, !dbg !5290
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5291 dso_local i32 @p9_client_open(ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p9_fid_put(ptr noundef %fid) #3 align 16 !dbg !5294 {
entry:
  %retval = alloca i32, align 4
  %fid.addr = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5298, metadata !DIExpression()), !dbg !5299
  %0 = load ptr, ptr %fid.addr, align 8, !dbg !5300
  %tobool = icmp ne ptr %0, null, !dbg !5300
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5302

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !5303
  %call = call zeroext i1 @IS_ERR(ptr noundef %1) #11, !dbg !5304
  br i1 %call, label %if.then, label %if.end, !dbg !5305

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5306
  br label %return, !dbg !5306

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_fid_ref, i32 0, i32 1)) #11, !dbg !5307
  br i1 %call1, label %if.then2, label %if.end3, !dbg !5309

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %fid.addr, align 8, !dbg !5310
  call void @do_trace_9p_fid_put(ptr noundef %2) #11, !dbg !5311
  br label %if.end3, !dbg !5311

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %fid.addr, align 8, !dbg !5312
  %count = getelementptr inbounds %struct.p9_fid, ptr %3, i32 0, i32 2, !dbg !5314
  %call4 = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #11, !dbg !5315
  br i1 %call4, label %if.end6, label %if.then5, !dbg !5316

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !5317
  br label %return, !dbg !5317

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %fid.addr, align 8, !dbg !5318
  %call7 = call i32 @p9_client_clunk(ptr noundef %4) #11, !dbg !5319
  store i32 %call7, ptr %retval, align 4, !dbg !5320
  br label %return, !dbg !5320

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5321
  ret i32 %5, !dbg !5321
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5322 dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_fid_add_modes(ptr noundef %fid, i32 noundef %s_flags, i32 noundef %s_cache, i32 noundef %f_flags) #3 align 16 !dbg !5323 {
entry:
  %fid.addr = alloca ptr, align 8
  %s_flags.addr = alloca i32, align 4
  %s_cache.addr = alloca i32, align 4
  %f_flags.addr = alloca i32, align 4
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5327, metadata !DIExpression()), !dbg !5331
  store i32 %s_flags, ptr %s_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s_flags.addr, metadata !5328, metadata !DIExpression()), !dbg !5332
  store i32 %s_cache, ptr %s_cache.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s_cache.addr, metadata !5329, metadata !DIExpression()), !dbg !5333
  store i32 %f_flags, ptr %f_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %f_flags.addr, metadata !5330, metadata !DIExpression()), !dbg !5334
  %0 = load i32, ptr %s_cache.addr, align 4, !dbg !5335
  %tobool = icmp ne i32 %0, 0, !dbg !5335
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5337

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !5338
  %qid = getelementptr inbounds %struct.p9_fid, ptr %1, i32 0, i32 4, !dbg !5339
  %version = getelementptr inbounds %struct.p9_qid, ptr %qid, i32 0, i32 1, !dbg !5340
  %2 = load i32, ptr %version, align 4, !dbg !5340
  %cmp = icmp eq i32 %2, 0, !dbg !5341
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false2, !dbg !5342

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, ptr %s_flags.addr, align 4, !dbg !5343
  %and = and i32 %3, 128, !dbg !5344
  %tobool1 = icmp ne i32 %and, 0, !dbg !5344
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !5345

lor.lhs.false2:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %4 = load i32, ptr %s_flags.addr, align 4, !dbg !5346
  %and3 = and i32 %4, 256, !dbg !5347
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5347
  br i1 %tobool4, label %if.then, label %lor.lhs.false5, !dbg !5348

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %5 = load i32, ptr %f_flags.addr, align 4, !dbg !5349
  %and6 = and i32 %5, 16384, !dbg !5350
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5350
  br i1 %tobool7, label %if.then, label %if.else, !dbg !5351

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %land.lhs.true, %entry
  %6 = load ptr, ptr %fid.addr, align 8, !dbg !5352
  %mode = getelementptr inbounds %struct.p9_fid, ptr %6, i32 0, i32 3, !dbg !5354
  %7 = load i32, ptr %mode, align 8, !dbg !5355
  %or = or i32 %7, 8192, !dbg !5355
  store i32 %or, ptr %mode, align 8, !dbg !5355
  br label %if.end19, !dbg !5356

if.else:                                          ; preds = %lor.lhs.false5
  %8 = load i32, ptr %s_cache.addr, align 4, !dbg !5357
  %and8 = and i32 %8, 4, !dbg !5359
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5359
  br i1 %tobool9, label %lor.lhs.false10, label %if.then16, !dbg !5360

lor.lhs.false10:                                  ; preds = %if.else
  %9 = load i32, ptr %f_flags.addr, align 4, !dbg !5361
  %and11 = and i32 %9, 4096, !dbg !5362
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5362
  br i1 %tobool12, label %if.then16, label %lor.lhs.false13, !dbg !5363

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %10 = load i32, ptr %s_flags.addr, align 4, !dbg !5364
  %and14 = and i32 %10, 512, !dbg !5365
  %tobool15 = icmp ne i32 %and14, 0, !dbg !5365
  br i1 %tobool15, label %if.then16, label %if.end, !dbg !5366

if.then16:                                        ; preds = %lor.lhs.false13, %lor.lhs.false10, %if.else
  %11 = load ptr, ptr %fid.addr, align 8, !dbg !5367
  %mode17 = getelementptr inbounds %struct.p9_fid, ptr %11, i32 0, i32 3, !dbg !5369
  %12 = load i32, ptr %mode17, align 8, !dbg !5370
  %or18 = or i32 %12, 16384, !dbg !5370
  store i32 %or18, ptr %mode17, align 8, !dbg !5370
  br label %if.end, !dbg !5371

if.end:                                           ; preds = %if.then16, %lor.lhs.false13
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  ret void, !dbg !5372
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5373 dso_local void @v9fs_open_fid_add(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @v9fs_file_fsync_dotl(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 16 !dbg !5377 {
entry:
  %retval = alloca i32, align 4
  %filp.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %datasync.addr = alloca i32, align 4
  %fid = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5379, metadata !DIExpression()), !dbg !5386
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5380, metadata !DIExpression()), !dbg !5387
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5381, metadata !DIExpression()), !dbg !5388
  store i32 %datasync, ptr %datasync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %datasync.addr, metadata !5382, metadata !DIExpression()), !dbg !5389
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #10, !dbg !5390
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5383, metadata !DIExpression()), !dbg !5391
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !5392
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5384, metadata !DIExpression()), !dbg !5393
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5394
  %f_mapping = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17, !dbg !5395
  %1 = load ptr, ptr %f_mapping, align 8, !dbg !5395
  %host = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 0, !dbg !5396
  %2 = load ptr, ptr %host, align 8, !dbg !5396
  store ptr %2, ptr %inode, align 8, !dbg !5393
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5385, metadata !DIExpression()), !dbg !5398
  %3 = load ptr, ptr %filp.addr, align 8, !dbg !5399
  %4 = load i64, ptr %start.addr, align 8, !dbg !5400
  %5 = load i64, ptr %end.addr, align 8, !dbg !5401
  %call = call i32 @file_write_and_wait_range(ptr noundef %3, i64 noundef %4, i64 noundef %5) #11, !dbg !5402
  store i32 %call, ptr %retval1, align 4, !dbg !5403
  %6 = load i32, ptr %retval1, align 4, !dbg !5404
  %tobool = icmp ne i32 %6, 0, !dbg !5404
  br i1 %tobool, label %if.then, label %if.end, !dbg !5406

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %retval1, align 4, !dbg !5407
  store i32 %7, ptr %retval, align 4, !dbg !5408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5408

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %inode, align 8, !dbg !5409
  call void @inode_lock(ptr noundef %8) #11, !dbg !5410
  store i32 0, ptr %tmp, align 4, !dbg !5411
  %9 = load i32, ptr %tmp, align 4, !dbg !5414
  %10 = load ptr, ptr %filp.addr, align 8, !dbg !5415
  %private_data = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 15, !dbg !5416
  %11 = load ptr, ptr %private_data, align 8, !dbg !5416
  store ptr %11, ptr %fid, align 8, !dbg !5417
  %12 = load ptr, ptr %fid, align 8, !dbg !5418
  %13 = load i32, ptr %datasync.addr, align 4, !dbg !5419
  %call2 = call i32 @p9_client_fsync(ptr noundef %12, i32 noundef %13) #11, !dbg !5420
  store i32 %call2, ptr %retval1, align 4, !dbg !5421
  %14 = load ptr, ptr %inode, align 8, !dbg !5422
  call void @inode_unlock(ptr noundef %14) #11, !dbg !5423
  %15 = load i32, ptr %retval1, align 4, !dbg !5424
  store i32 %15, ptr %retval, align 4, !dbg !5425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5425

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !5426
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !5426
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #10, !dbg !5426
  %16 = load i32, ptr %retval, align 4, !dbg !5426
  ret i32 %16, !dbg !5426
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5427 dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock(ptr noundef %inode) #3 align 16 !dbg !5430 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5432, metadata !DIExpression()), !dbg !5433
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5434
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !5435
  call void @down_write(ptr noundef %i_rwsem) #11, !dbg !5436
  ret void, !dbg !5437
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5438 dso_local i32 @p9_client_fsync(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_unlock(ptr noundef %inode) #3 align 16 !dbg !5439 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5443
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !5444
  call void @up_write(ptr noundef %i_rwsem) #11, !dbg !5445
  ret void, !dbg !5446
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @v9fs_file_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 16 !dbg !5447 {
entry:
  %retval = alloca i64, align 8
  %iocb.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %ret = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iocb, ptr %iocb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iocb.addr, metadata !5449, metadata !DIExpression()), !dbg !5454
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5450, metadata !DIExpression()), !dbg !5455
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #10, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5451, metadata !DIExpression()), !dbg !5457
  %0 = load ptr, ptr %iocb.addr, align 8, !dbg !5458
  %ki_filp = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 0, !dbg !5459
  %1 = load ptr, ptr %ki_filp, align 8, !dbg !5459
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15, !dbg !5460
  %2 = load ptr, ptr %private_data, align 8, !dbg !5460
  store ptr %2, ptr %fid, align 8, !dbg !5457
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5461
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5452, metadata !DIExpression()), !dbg !5462
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !5461
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5453, metadata !DIExpression()), !dbg !5463
  store i32 0, ptr %err, align 4, !dbg !5463
  store i32 0, ptr %tmp, align 4, !dbg !5464
  %3 = load i32, ptr %tmp, align 4, !dbg !5467
  %4 = load ptr, ptr %fid, align 8, !dbg !5468
  %mode = getelementptr inbounds %struct.p9_fid, ptr %4, i32 0, i32 3, !dbg !5470
  %5 = load i32, ptr %mode, align 8, !dbg !5470
  %and = and i32 %5, 8192, !dbg !5471
  %tobool = icmp ne i32 %and, 0, !dbg !5471
  br i1 %tobool, label %if.end, label %if.then, !dbg !5472

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp1, align 4, !dbg !5473
  %6 = load i32, ptr %tmp1, align 4, !dbg !5477
  %7 = load ptr, ptr %iocb.addr, align 8, !dbg !5478
  %8 = load ptr, ptr %to.addr, align 8, !dbg !5479
  %call = call i64 @generic_file_read_iter(ptr noundef %7, ptr noundef %8) #11, !dbg !5480
  store i64 %call, ptr %retval, align 8, !dbg !5481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5481

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %iocb.addr, align 8, !dbg !5482
  %ki_filp2 = getelementptr inbounds %struct.kiocb, ptr %9, i32 0, i32 0, !dbg !5484
  %10 = load ptr, ptr %ki_filp2, align 8, !dbg !5484
  %f_flags = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 6, !dbg !5485
  %11 = load i32, ptr %f_flags, align 8, !dbg !5485
  %and3 = and i32 %11, 2048, !dbg !5486
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5486
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5487

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %fid, align 8, !dbg !5488
  %13 = load ptr, ptr %iocb.addr, align 8, !dbg !5489
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %13, i32 0, i32 1, !dbg !5490
  %14 = load i64, ptr %ki_pos, align 8, !dbg !5490
  %15 = load ptr, ptr %to.addr, align 8, !dbg !5491
  %call6 = call i32 @p9_client_read_once(ptr noundef %12, i64 noundef %14, ptr noundef %15, ptr noundef %err) #11, !dbg !5492
  store i32 %call6, ptr %ret, align 4, !dbg !5493
  br label %if.end9, !dbg !5494

if.else:                                          ; preds = %if.end
  %16 = load ptr, ptr %fid, align 8, !dbg !5495
  %17 = load ptr, ptr %iocb.addr, align 8, !dbg !5496
  %ki_pos7 = getelementptr inbounds %struct.kiocb, ptr %17, i32 0, i32 1, !dbg !5497
  %18 = load i64, ptr %ki_pos7, align 8, !dbg !5497
  %19 = load ptr, ptr %to.addr, align 8, !dbg !5498
  %call8 = call i32 @p9_client_read(ptr noundef %16, i64 noundef %18, ptr noundef %19, ptr noundef %err) #11, !dbg !5499
  store i32 %call8, ptr %ret, align 4, !dbg !5500
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %20 = load i32, ptr %ret, align 4, !dbg !5501
  %tobool10 = icmp ne i32 %20, 0, !dbg !5501
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5503

if.then11:                                        ; preds = %if.end9
  %21 = load i32, ptr %err, align 4, !dbg !5504
  %conv = sext i32 %21 to i64, !dbg !5504
  store i64 %conv, ptr %retval, align 8, !dbg !5505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5505

if.end12:                                         ; preds = %if.end9
  %22 = load i32, ptr %ret, align 4, !dbg !5506
  %conv13 = sext i32 %22 to i64, !dbg !5506
  %23 = load ptr, ptr %iocb.addr, align 8, !dbg !5507
  %ki_pos14 = getelementptr inbounds %struct.kiocb, ptr %23, i32 0, i32 1, !dbg !5508
  %24 = load i64, ptr %ki_pos14, align 8, !dbg !5509
  %add = add i64 %24, %conv13, !dbg !5509
  store i64 %add, ptr %ki_pos14, align 8, !dbg !5509
  %25 = load i32, ptr %ret, align 4, !dbg !5510
  %conv15 = sext i32 %25 to i64, !dbg !5510
  store i64 %conv15, ptr %retval, align 8, !dbg !5511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5511

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !5512
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5512
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #10, !dbg !5512
  %26 = load i64, ptr %retval, align 8, !dbg !5512
  ret i64 %26, !dbg !5512
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @v9fs_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 16 !dbg !5513 {
entry:
  %retval = alloca i64, align 8
  %iocb.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %retval1 = alloca i64, align 8
  %origin = alloca i64, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %inode = alloca ptr, align 8
  %i_size = alloca i64, align 8
  %pg_start = alloca i64, align 8
  %pg_end = alloca i64, align 8
  store ptr %iocb, ptr %iocb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iocb.addr, metadata !5515, metadata !DIExpression()), !dbg !5528
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5516, metadata !DIExpression()), !dbg !5529
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #10, !dbg !5530
  call void @llvm.dbg.declare(metadata ptr %file, metadata !5517, metadata !DIExpression()), !dbg !5531
  %0 = load ptr, ptr %iocb.addr, align 8, !dbg !5532
  %ki_filp = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 0, !dbg !5533
  %1 = load ptr, ptr %ki_filp, align 8, !dbg !5533
  store ptr %1, ptr %file, align 8, !dbg !5531
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #10, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5518, metadata !DIExpression()), !dbg !5535
  %2 = load ptr, ptr %file, align 8, !dbg !5536
  %private_data = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15, !dbg !5537
  %3 = load ptr, ptr %private_data, align 8, !dbg !5537
  store ptr %3, ptr %fid, align 8, !dbg !5535
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #10, !dbg !5538
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5519, metadata !DIExpression()), !dbg !5539
  call void @llvm.lifetime.start.p0(i64 8, ptr %origin) #10, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %origin, metadata !5520, metadata !DIExpression()), !dbg !5541
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5521, metadata !DIExpression()), !dbg !5543
  store i32 0, ptr %err, align 4, !dbg !5543
  store i32 0, ptr %tmp, align 4, !dbg !5544
  %4 = load i32, ptr %tmp, align 4, !dbg !5547
  %5 = load ptr, ptr %fid, align 8, !dbg !5548
  %mode = getelementptr inbounds %struct.p9_fid, ptr %5, i32 0, i32 3, !dbg !5550
  %6 = load i32, ptr %mode, align 8, !dbg !5550
  %and = and i32 %6, 24576, !dbg !5551
  %tobool = icmp ne i32 %and, 0, !dbg !5551
  br i1 %tobool, label %if.end, label %if.then, !dbg !5552

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp2, align 4, !dbg !5553
  %7 = load i32, ptr %tmp2, align 4, !dbg !5557
  %8 = load ptr, ptr %iocb.addr, align 8, !dbg !5558
  %9 = load ptr, ptr %from.addr, align 8, !dbg !5559
  %call = call i64 @generic_file_write_iter(ptr noundef %8, ptr noundef %9) #11, !dbg !5560
  store i64 %call, ptr %retval, align 8, !dbg !5561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5561

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %iocb.addr, align 8, !dbg !5562
  %11 = load ptr, ptr %from.addr, align 8, !dbg !5563
  %call3 = call i64 @generic_write_checks(ptr noundef %10, ptr noundef %11) #11, !dbg !5564
  store i64 %call3, ptr %retval1, align 8, !dbg !5565
  %12 = load i64, ptr %retval1, align 8, !dbg !5566
  %cmp = icmp sle i64 %12, 0, !dbg !5568
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5569

if.then4:                                         ; preds = %if.end
  %13 = load i64, ptr %retval1, align 8, !dbg !5570
  store i64 %13, ptr %retval, align 8, !dbg !5571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5571

if.end5:                                          ; preds = %if.end
  %14 = load ptr, ptr %iocb.addr, align 8, !dbg !5572
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %14, i32 0, i32 1, !dbg !5573
  %15 = load i64, ptr %ki_pos, align 8, !dbg !5573
  store i64 %15, ptr %origin, align 8, !dbg !5574
  %16 = load ptr, ptr %file, align 8, !dbg !5575
  %private_data6 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 15, !dbg !5576
  %17 = load ptr, ptr %private_data6, align 8, !dbg !5576
  %18 = load ptr, ptr %iocb.addr, align 8, !dbg !5577
  %ki_pos7 = getelementptr inbounds %struct.kiocb, ptr %18, i32 0, i32 1, !dbg !5578
  %19 = load i64, ptr %ki_pos7, align 8, !dbg !5578
  %20 = load ptr, ptr %from.addr, align 8, !dbg !5579
  %call8 = call i32 @p9_client_write(ptr noundef %17, i64 noundef %19, ptr noundef %20, ptr noundef %err) #11, !dbg !5580
  %conv = sext i32 %call8 to i64, !dbg !5580
  store i64 %conv, ptr %retval1, align 8, !dbg !5581
  %21 = load i64, ptr %retval1, align 8, !dbg !5582
  %cmp9 = icmp sgt i64 %21, 0, !dbg !5583
  br i1 %cmp9, label %if.then11, label %if.end32, !dbg !5584

if.then11:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5522, metadata !DIExpression()), !dbg !5586
  %22 = load ptr, ptr %file, align 8, !dbg !5587
  %call12 = call ptr @file_inode(ptr noundef %22) #11, !dbg !5588
  store ptr %call12, ptr %inode, align 8, !dbg !5586
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_size) #10, !dbg !5589
  call void @llvm.dbg.declare(metadata ptr %i_size, metadata !5525, metadata !DIExpression()), !dbg !5590
  call void @llvm.lifetime.start.p0(i64 8, ptr %pg_start) #10, !dbg !5591
  call void @llvm.dbg.declare(metadata ptr %pg_start, metadata !5526, metadata !DIExpression()), !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %pg_end) #10, !dbg !5591
  call void @llvm.dbg.declare(metadata ptr %pg_end, metadata !5527, metadata !DIExpression()), !dbg !5593
  %23 = load i64, ptr %origin, align 8, !dbg !5594
  %shr = ashr i64 %23, 12, !dbg !5595
  store i64 %shr, ptr %pg_start, align 8, !dbg !5596
  %24 = load i64, ptr %origin, align 8, !dbg !5597
  %25 = load i64, ptr %retval1, align 8, !dbg !5598
  %add = add i64 %24, %25, !dbg !5599
  %sub = sub i64 %add, 1, !dbg !5600
  %shr13 = ashr i64 %sub, 12, !dbg !5601
  store i64 %shr13, ptr %pg_end, align 8, !dbg !5602
  %26 = load ptr, ptr %inode, align 8, !dbg !5603
  %i_mapping = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 10, !dbg !5605
  %27 = load ptr, ptr %i_mapping, align 8, !dbg !5605
  %tobool14 = icmp ne ptr %27, null, !dbg !5603
  br i1 %tobool14, label %land.lhs.true, label %if.end20, !dbg !5606

land.lhs.true:                                    ; preds = %if.then11
  %28 = load ptr, ptr %inode, align 8, !dbg !5607
  %i_mapping15 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 10, !dbg !5608
  %29 = load ptr, ptr %i_mapping15, align 8, !dbg !5608
  %nrpages = getelementptr inbounds %struct.address_space, ptr %29, i32 0, i32 6, !dbg !5609
  %30 = load i64, ptr %nrpages, align 8, !dbg !5609
  %tobool16 = icmp ne i64 %30, 0, !dbg !5607
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !5610

if.then17:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %inode, align 8, !dbg !5611
  %i_mapping18 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 10, !dbg !5612
  %32 = load ptr, ptr %i_mapping18, align 8, !dbg !5612
  %33 = load i64, ptr %pg_start, align 8, !dbg !5613
  %34 = load i64, ptr %pg_end, align 8, !dbg !5614
  %call19 = call i32 @invalidate_inode_pages2_range(ptr noundef %32, i64 noundef %33, i64 noundef %34) #11, !dbg !5615
  br label %if.end20, !dbg !5615

if.end20:                                         ; preds = %if.then17, %land.lhs.true, %if.then11
  %35 = load i64, ptr %retval1, align 8, !dbg !5616
  %36 = load ptr, ptr %iocb.addr, align 8, !dbg !5617
  %ki_pos21 = getelementptr inbounds %struct.kiocb, ptr %36, i32 0, i32 1, !dbg !5618
  %37 = load i64, ptr %ki_pos21, align 8, !dbg !5619
  %add22 = add i64 %37, %35, !dbg !5619
  store i64 %add22, ptr %ki_pos21, align 8, !dbg !5619
  %38 = load ptr, ptr %inode, align 8, !dbg !5620
  %call23 = call i64 @i_size_read(ptr noundef %38) #11, !dbg !5621
  store i64 %call23, ptr %i_size, align 8, !dbg !5622
  %39 = load ptr, ptr %iocb.addr, align 8, !dbg !5623
  %ki_pos24 = getelementptr inbounds %struct.kiocb, ptr %39, i32 0, i32 1, !dbg !5625
  %40 = load i64, ptr %ki_pos24, align 8, !dbg !5625
  %41 = load i64, ptr %i_size, align 8, !dbg !5626
  %cmp25 = icmp sgt i64 %40, %41, !dbg !5627
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !5628

if.then27:                                        ; preds = %if.end20
  %42 = load ptr, ptr %inode, align 8, !dbg !5629
  %43 = load ptr, ptr %iocb.addr, align 8, !dbg !5631
  %ki_pos28 = getelementptr inbounds %struct.kiocb, ptr %43, i32 0, i32 1, !dbg !5632
  %44 = load i64, ptr %ki_pos28, align 8, !dbg !5632
  %45 = load i64, ptr %i_size, align 8, !dbg !5633
  %sub29 = sub i64 %44, %45, !dbg !5634
  call void @inode_add_bytes(ptr noundef %42, i64 noundef %sub29) #11, !dbg !5635
  %46 = load ptr, ptr %inode, align 8, !dbg !5636
  %47 = load ptr, ptr %iocb.addr, align 8, !dbg !5637
  %ki_pos30 = getelementptr inbounds %struct.kiocb, ptr %47, i32 0, i32 1, !dbg !5638
  %48 = load i64, ptr %ki_pos30, align 8, !dbg !5638
  call void @v9fs_i_size_write(ptr noundef %46, i64 noundef %48) #11, !dbg !5639
  br label %if.end31, !dbg !5640

if.end31:                                         ; preds = %if.then27, %if.end20
  %49 = load i64, ptr %retval1, align 8, !dbg !5641
  store i64 %49, ptr %retval, align 8, !dbg !5642
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pg_end) #10, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %pg_start) #10, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_size) #10, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !5643
  br label %cleanup

if.end32:                                         ; preds = %if.end5
  %50 = load i32, ptr %err, align 4, !dbg !5644
  %conv33 = sext i32 %50 to i64, !dbg !5644
  store i64 %conv33, ptr %retval, align 8, !dbg !5645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5645

cleanup:                                          ; preds = %if.end32, %if.end31, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %origin) #10, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #10, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #10, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #10, !dbg !5646
  %51 = load i64, ptr %retval, align 8, !dbg !5646
  ret i64 %51, !dbg !5646
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5647 dso_local i32 @generic_file_readonly_mmap(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @v9fs_dir_release(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_file_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 16 !dbg !5648 {
entry:
  %retval = alloca i32, align 4
  %filp.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %datasync.addr = alloca i32, align 4
  %fid = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %wstat = alloca %struct.p9_wstat, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5650, metadata !DIExpression()), !dbg !5676
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5651, metadata !DIExpression()), !dbg !5677
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5652, metadata !DIExpression()), !dbg !5678
  store i32 %datasync, ptr %datasync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %datasync.addr, metadata !5653, metadata !DIExpression()), !dbg !5679
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #10, !dbg !5680
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5654, metadata !DIExpression()), !dbg !5681
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !5682
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5655, metadata !DIExpression()), !dbg !5683
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5684
  %f_mapping = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17, !dbg !5685
  %1 = load ptr, ptr %f_mapping, align 8, !dbg !5685
  %host = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 0, !dbg !5686
  %2 = load ptr, ptr %host, align 8, !dbg !5686
  store ptr %2, ptr %inode, align 8, !dbg !5683
  call void @llvm.lifetime.start.p0(i64 104, ptr %wstat) #10, !dbg !5687
  call void @llvm.dbg.declare(metadata ptr %wstat, metadata !5656, metadata !DIExpression()), !dbg !5688
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !5689
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5675, metadata !DIExpression()), !dbg !5690
  %3 = load ptr, ptr %filp.addr, align 8, !dbg !5691
  %4 = load i64, ptr %start.addr, align 8, !dbg !5692
  %5 = load i64, ptr %end.addr, align 8, !dbg !5693
  %call = call i32 @file_write_and_wait_range(ptr noundef %3, i64 noundef %4, i64 noundef %5) #11, !dbg !5694
  store i32 %call, ptr %retval1, align 4, !dbg !5695
  %6 = load i32, ptr %retval1, align 4, !dbg !5696
  %tobool = icmp ne i32 %6, 0, !dbg !5696
  br i1 %tobool, label %if.then, label %if.end, !dbg !5698

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %retval1, align 4, !dbg !5699
  store i32 %7, ptr %retval, align 4, !dbg !5700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5700

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %inode, align 8, !dbg !5701
  call void @inode_lock(ptr noundef %8) #11, !dbg !5702
  store i32 0, ptr %tmp, align 4, !dbg !5703
  %9 = load i32, ptr %tmp, align 4, !dbg !5706
  %10 = load ptr, ptr %filp.addr, align 8, !dbg !5707
  %private_data = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 15, !dbg !5708
  %11 = load ptr, ptr %private_data, align 8, !dbg !5708
  store ptr %11, ptr %fid, align 8, !dbg !5709
  call void @v9fs_blank_wstat(ptr noundef %wstat) #11, !dbg !5710
  %12 = load ptr, ptr %fid, align 8, !dbg !5711
  %call2 = call i32 @p9_client_wstat(ptr noundef %12, ptr noundef %wstat) #11, !dbg !5712
  store i32 %call2, ptr %retval1, align 4, !dbg !5713
  %13 = load ptr, ptr %inode, align 8, !dbg !5714
  call void @inode_unlock(ptr noundef %13) #11, !dbg !5715
  %14 = load i32, ptr %retval1, align 4, !dbg !5716
  store i32 %14, ptr %retval, align 4, !dbg !5717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5717

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !5718
  call void @llvm.lifetime.end.p0(i64 104, ptr %wstat) #10, !dbg !5718
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !5718
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #10, !dbg !5718
  %15 = load i32, ptr %retval, align 4, !dbg !5718
  ret i32 %15, !dbg !5718
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_file_lock(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 16 !dbg !5719 {
entry:
  %filp.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %fl.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5721, metadata !DIExpression()), !dbg !5725
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5722, metadata !DIExpression()), !dbg !5726
  store ptr %fl, ptr %fl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fl.addr, metadata !5723, metadata !DIExpression()), !dbg !5727
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5724, metadata !DIExpression()), !dbg !5729
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5730
  %call = call ptr @file_inode(ptr noundef %0) #11, !dbg !5731
  store ptr %call, ptr %inode, align 8, !dbg !5729
  store i32 0, ptr %tmp, align 4, !dbg !5732
  %1 = load i32, ptr %tmp, align 4, !dbg !5735
  %2 = load i32, ptr %cmd.addr, align 4, !dbg !5736
  %cmp = icmp eq i32 %2, 6, !dbg !5736
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !5738

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %cmd.addr, align 4, !dbg !5739
  %cmp1 = icmp eq i32 %3, 7, !dbg !5739
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !5740

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %fl.addr, align 8, !dbg !5741
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 7, !dbg !5742
  %5 = load i8, ptr %fl_type, align 4, !dbg !5742
  %conv = zext i8 %5 to i32, !dbg !5741
  %cmp2 = icmp ne i32 %conv, 2, !dbg !5743
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5744

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %inode, align 8, !dbg !5745
  %i_mapping = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10, !dbg !5747
  %7 = load ptr, ptr %i_mapping, align 8, !dbg !5747
  %call4 = call i32 @filemap_write_and_wait(ptr noundef %7) #11, !dbg !5748
  %8 = load ptr, ptr %inode, align 8, !dbg !5749
  %i_data = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 41, !dbg !5750
  %call5 = call i64 @invalidate_mapping_pages(ptr noundef %i_data, i64 noundef 0, i64 noundef -1) #11, !dbg !5751
  br label %if.end, !dbg !5752

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !5753
  ret i32 0, !dbg !5754
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @v9fs_file_splice_read(ptr noundef %in, ptr noundef %ppos, ptr noundef %pipe, i64 noundef %len, i32 noundef %flags) #0 align 16 !dbg !5755 {
entry:
  %retval = alloca i64, align 8
  %in.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %pipe.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %fid = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !5757, metadata !DIExpression()), !dbg !5763
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5758, metadata !DIExpression()), !dbg !5764
  store ptr %pipe, ptr %pipe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pipe.addr, metadata !5759, metadata !DIExpression()), !dbg !5765
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5760, metadata !DIExpression()), !dbg !5766
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5761, metadata !DIExpression()), !dbg !5767
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #10, !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5762, metadata !DIExpression()), !dbg !5769
  %0 = load ptr, ptr %in.addr, align 8, !dbg !5770
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5771
  %1 = load ptr, ptr %private_data, align 8, !dbg !5771
  store ptr %1, ptr %fid, align 8, !dbg !5769
  store i32 0, ptr %tmp, align 4, !dbg !5772
  %2 = load i32, ptr %tmp, align 4, !dbg !5775
  %3 = load ptr, ptr %fid, align 8, !dbg !5776
  %mode = getelementptr inbounds %struct.p9_fid, ptr %3, i32 0, i32 3, !dbg !5778
  %4 = load i32, ptr %mode, align 8, !dbg !5778
  %and = and i32 %4, 8192, !dbg !5779
  %tobool = icmp ne i32 %and, 0, !dbg !5779
  br i1 %tobool, label %if.then, label %if.end, !dbg !5780

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %in.addr, align 8, !dbg !5781
  %6 = load ptr, ptr %ppos.addr, align 8, !dbg !5782
  %7 = load ptr, ptr %pipe.addr, align 8, !dbg !5783
  %8 = load i64, ptr %len.addr, align 8, !dbg !5784
  %9 = load i32, ptr %flags.addr, align 4, !dbg !5785
  %call = call i64 @copy_splice_read(ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) #11, !dbg !5786
  store i64 %call, ptr %retval, align 8, !dbg !5787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5787

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %in.addr, align 8, !dbg !5788
  %11 = load ptr, ptr %ppos.addr, align 8, !dbg !5789
  %12 = load ptr, ptr %pipe.addr, align 8, !dbg !5790
  %13 = load i64, ptr %len.addr, align 8, !dbg !5791
  %14 = load i32, ptr %flags.addr, align 4, !dbg !5792
  %call1 = call i64 @filemap_splice_read(ptr noundef %10, ptr noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %14) #11, !dbg !5793
  store i64 %call1, ptr %retval, align 8, !dbg !5794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5794

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #10, !dbg !5795
  %15 = load i64, ptr %retval, align 8, !dbg !5795
  ret i64 %15, !dbg !5795
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_nosetlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_file_mmap(ptr noundef %filp, ptr noundef %vma) #0 align 16 !dbg !5796 {
entry:
  %retval = alloca i32, align 4
  %filp.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %inode = alloca ptr, align 8
  %v9ses = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5798, metadata !DIExpression()), !dbg !5803
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5799, metadata !DIExpression()), !dbg !5804
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5800, metadata !DIExpression()), !dbg !5806
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5801, metadata !DIExpression()), !dbg !5808
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5809
  %call = call ptr @file_inode(ptr noundef %0) #11, !dbg !5810
  store ptr %call, ptr %inode, align 8, !dbg !5808
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #10, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !5802, metadata !DIExpression()), !dbg !5812
  %1 = load ptr, ptr %inode, align 8, !dbg !5813
  %call2 = call ptr @v9fs_inode2v9ses(ptr noundef %1) #11, !dbg !5814
  store ptr %call2, ptr %v9ses, align 8, !dbg !5812
  store i32 0, ptr %tmp, align 4, !dbg !5815
  %2 = load i32, ptr %tmp, align 4, !dbg !5818
  %3 = load ptr, ptr %v9ses, align 8, !dbg !5819
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 4, !dbg !5821
  %4 = load i32, ptr %cache, align 4, !dbg !5821
  %and = and i32 %4, 4, !dbg !5822
  %tobool = icmp ne i32 %and, 0, !dbg !5822
  br i1 %tobool, label %if.end, label %if.then, !dbg !5823

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp3, align 4, !dbg !5824
  %5 = load i32, ptr %tmp3, align 4, !dbg !5828
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !5829
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !5830
  %call4 = call i32 @generic_file_readonly_mmap(ptr noundef %6, ptr noundef %7) #11, !dbg !5831
  store i32 %call4, ptr %retval, align 4, !dbg !5832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5832

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %filp.addr, align 8, !dbg !5833
  %9 = load ptr, ptr %vma.addr, align 8, !dbg !5834
  %call5 = call i32 @generic_file_mmap(ptr noundef %8, ptr noundef %9) #11, !dbg !5835
  store i32 %call5, ptr %retval1, align 4, !dbg !5836
  %10 = load i32, ptr %retval1, align 4, !dbg !5837
  %tobool6 = icmp ne i32 %10, 0, !dbg !5837
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5839

if.then7:                                         ; preds = %if.end
  %11 = load ptr, ptr %vma.addr, align 8, !dbg !5840
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 10, !dbg !5841
  store ptr @v9fs_mmap_file_vm_ops, ptr %vm_ops, align 8, !dbg !5842
  br label %if.end8, !dbg !5840

if.end8:                                          ; preds = %if.then7, %if.end
  %12 = load i32, ptr %retval1, align 4, !dbg !5843
  store i32 %12, ptr %retval, align 4, !dbg !5844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5844

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #10, !dbg !5845
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !5845
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !5845
  %13 = load i32, ptr %retval, align 4, !dbg !5845
  ret i32 %13, !dbg !5845
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_file_lock_dotl(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 16 !dbg !5846 {
entry:
  %filp.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %fl.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5848, metadata !DIExpression()), !dbg !5853
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5849, metadata !DIExpression()), !dbg !5854
  store ptr %fl, ptr %fl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fl.addr, metadata !5850, metadata !DIExpression()), !dbg !5855
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !5856
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5851, metadata !DIExpression()), !dbg !5857
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5858
  %call = call ptr @file_inode(ptr noundef %0) #11, !dbg !5859
  store ptr %call, ptr %inode, align 8, !dbg !5857
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5852, metadata !DIExpression()), !dbg !5861
  store i32 -37, ptr %ret, align 4, !dbg !5861
  store i32 0, ptr %tmp, align 4, !dbg !5862
  %1 = load i32, ptr %tmp, align 4, !dbg !5865
  %2 = load i32, ptr %cmd.addr, align 4, !dbg !5866
  %cmp = icmp eq i32 %2, 6, !dbg !5866
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !5868

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %cmd.addr, align 4, !dbg !5869
  %cmp1 = icmp eq i32 %3, 7, !dbg !5869
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !5870

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %fl.addr, align 8, !dbg !5871
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 7, !dbg !5872
  %5 = load i8, ptr %fl_type, align 4, !dbg !5872
  %conv = zext i8 %5 to i32, !dbg !5871
  %cmp2 = icmp ne i32 %conv, 2, !dbg !5873
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5874

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %inode, align 8, !dbg !5875
  %i_mapping = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10, !dbg !5877
  %7 = load ptr, ptr %i_mapping, align 8, !dbg !5877
  %call4 = call i32 @filemap_write_and_wait(ptr noundef %7) #11, !dbg !5878
  %8 = load ptr, ptr %inode, align 8, !dbg !5879
  %i_data = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 41, !dbg !5880
  %call5 = call i64 @invalidate_mapping_pages(ptr noundef %i_data, i64 noundef 0, i64 noundef -1) #11, !dbg !5881
  br label %if.end, !dbg !5882

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %9 = load i32, ptr %cmd.addr, align 4, !dbg !5883
  %cmp6 = icmp eq i32 %9, 6, !dbg !5883
  br i1 %cmp6, label %if.then11, label %lor.lhs.false8, !dbg !5885

lor.lhs.false8:                                   ; preds = %if.end
  %10 = load i32, ptr %cmd.addr, align 4, !dbg !5886
  %cmp9 = icmp eq i32 %10, 7, !dbg !5886
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !5887

if.then11:                                        ; preds = %lor.lhs.false8, %if.end
  %11 = load ptr, ptr %filp.addr, align 8, !dbg !5888
  %12 = load i32, ptr %cmd.addr, align 4, !dbg !5889
  %13 = load ptr, ptr %fl.addr, align 8, !dbg !5890
  %call12 = call i32 @v9fs_file_do_lock(ptr noundef %11, i32 noundef %12, ptr noundef %13) #11, !dbg !5891
  store i32 %call12, ptr %ret, align 4, !dbg !5892
  br label %if.end19, !dbg !5893

if.else:                                          ; preds = %lor.lhs.false8
  %14 = load i32, ptr %cmd.addr, align 4, !dbg !5894
  %cmp13 = icmp eq i32 %14, 5, !dbg !5894
  br i1 %cmp13, label %if.then15, label %if.else17, !dbg !5896

if.then15:                                        ; preds = %if.else
  %15 = load ptr, ptr %filp.addr, align 8, !dbg !5897
  %16 = load ptr, ptr %fl.addr, align 8, !dbg !5898
  %call16 = call i32 @v9fs_file_getlock(ptr noundef %15, ptr noundef %16) #11, !dbg !5899
  store i32 %call16, ptr %ret, align 4, !dbg !5900
  br label %if.end18, !dbg !5901

if.else17:                                        ; preds = %if.else
  store i32 -22, ptr %ret, align 4, !dbg !5902
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then11
  %17 = load i32, ptr %ret, align 4, !dbg !5903
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5904
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !5904
  ret i32 %17, !dbg !5905
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_file_flock_dotl(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 16 !dbg !5906 {
entry:
  %filp.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %fl.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5908, metadata !DIExpression()), !dbg !5914
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5909, metadata !DIExpression()), !dbg !5915
  store ptr %fl, ptr %fl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fl.addr, metadata !5910, metadata !DIExpression()), !dbg !5916
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !5917
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5911, metadata !DIExpression()), !dbg !5918
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5919
  %call = call ptr @file_inode(ptr noundef %0) #11, !dbg !5920
  store ptr %call, ptr %inode, align 8, !dbg !5918
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5921
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5912, metadata !DIExpression()), !dbg !5922
  store i32 -37, ptr %ret, align 4, !dbg !5922
  store i32 0, ptr %tmp, align 4, !dbg !5923
  %1 = load i32, ptr %tmp, align 4, !dbg !5926
  %2 = load ptr, ptr %fl.addr, align 8, !dbg !5927
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6, !dbg !5929
  %3 = load i32, ptr %fl_flags, align 8, !dbg !5929
  %and = and i32 %3, 2, !dbg !5930
  %tobool = icmp ne i32 %and, 0, !dbg !5930
  br i1 %tobool, label %if.end, label %if.then, !dbg !5931

if.then:                                          ; preds = %entry
  br label %out_err, !dbg !5932

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %cmd.addr, align 4, !dbg !5933
  %cmp = icmp eq i32 %4, 6, !dbg !5933
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !5935

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, ptr %cmd.addr, align 4, !dbg !5936
  %cmp1 = icmp eq i32 %5, 7, !dbg !5936
  br i1 %cmp1, label %land.lhs.true, label %if.end7, !dbg !5937

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr %fl.addr, align 8, !dbg !5938
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 7, !dbg !5939
  %7 = load i8, ptr %fl_type, align 4, !dbg !5939
  %conv = zext i8 %7 to i32, !dbg !5938
  %cmp2 = icmp ne i32 %conv, 2, !dbg !5940
  br i1 %cmp2, label %if.then4, label %if.end7, !dbg !5941

if.then4:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %inode, align 8, !dbg !5942
  %i_mapping = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 10, !dbg !5944
  %9 = load ptr, ptr %i_mapping, align 8, !dbg !5944
  %call5 = call i32 @filemap_write_and_wait(ptr noundef %9) #11, !dbg !5945
  %10 = load ptr, ptr %inode, align 8, !dbg !5946
  %i_data = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 41, !dbg !5947
  %call6 = call i64 @invalidate_mapping_pages(ptr noundef %i_data, i64 noundef 0, i64 noundef -1) #11, !dbg !5948
  br label %if.end7, !dbg !5949

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %lor.lhs.false
  %11 = load ptr, ptr %fl.addr, align 8, !dbg !5950
  %fl_flags8 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 6, !dbg !5951
  %12 = load i32, ptr %fl_flags8, align 8, !dbg !5952
  %or = or i32 %12, 1, !dbg !5952
  store i32 %or, ptr %fl_flags8, align 8, !dbg !5952
  %13 = load ptr, ptr %fl.addr, align 8, !dbg !5953
  %fl_flags9 = getelementptr inbounds %struct.file_lock, ptr %13, i32 0, i32 6, !dbg !5954
  %14 = load i32, ptr %fl_flags9, align 8, !dbg !5955
  %xor = xor i32 %14, 2, !dbg !5955
  store i32 %xor, ptr %fl_flags9, align 8, !dbg !5955
  %15 = load i32, ptr %cmd.addr, align 4, !dbg !5956
  %cmp10 = icmp eq i32 %15, 6, !dbg !5956
  %lor.ext = zext i1 %cmp10 to i32, !dbg !5956
  %16 = load i32, ptr %cmd.addr, align 4, !dbg !5958
  %cmp12 = icmp eq i32 %16, 7, !dbg !5958
  %lor.ext14 = zext i1 %cmp12 to i32, !dbg !5958
  %or15 = or i32 %lor.ext, %lor.ext14, !dbg !5959
  %tobool16 = icmp ne i32 %or15, 0, !dbg !5959
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !5960

if.then17:                                        ; preds = %if.end7
  %17 = load ptr, ptr %filp.addr, align 8, !dbg !5961
  %18 = load i32, ptr %cmd.addr, align 4, !dbg !5962
  %19 = load ptr, ptr %fl.addr, align 8, !dbg !5963
  %call18 = call i32 @v9fs_file_do_lock(ptr noundef %17, i32 noundef %18, ptr noundef %19) #11, !dbg !5964
  store i32 %call18, ptr %ret, align 4, !dbg !5965
  br label %if.end19, !dbg !5966

if.else:                                          ; preds = %if.end7
  store i32 -22, ptr %ret, align 4, !dbg !5967
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  br label %out_err, !dbg !5958

out_err:                                          ; preds = %if.end19, %if.then
  call void @llvm.dbg.label(metadata !5913), !dbg !5968
  %20 = load i32, ptr %ret, align 4, !dbg !5969
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5970
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !5970
  ret i32 %20, !dbg !5971
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5972 dso_local ptr @v9fs_fid_lookup(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @clone_fid(ptr noundef %fid) #3 align 16 !dbg !5973 {
entry:
  %fid.addr = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5977, metadata !DIExpression()), !dbg !5978
  %0 = load ptr, ptr %fid.addr, align 8, !dbg !5979
  %call = call zeroext i1 @IS_ERR(ptr noundef %0) #11, !dbg !5980
  br i1 %call, label %cond.true, label %cond.false, !dbg !5980

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !5981
  br label %cond.end, !dbg !5980

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %fid.addr, align 8, !dbg !5982
  %call1 = call ptr @p9_client_walk(ptr noundef %2, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #11, !dbg !5983
  br label %cond.end, !dbg !5980

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %call1, %cond.false ], !dbg !5980
  ret ptr %cond, !dbg !5984
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5985 dso_local ptr @p9_client_walk(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_real(ptr noundef %dentry, ptr noundef %inode) #3 align 16 !dbg !5991 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5993, metadata !DIExpression()), !dbg !5995
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5994, metadata !DIExpression()), !dbg !5996
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5997
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !5997
  %1 = load i32, ptr %d_flags, align 8, !dbg !5997
  %and = and i32 %1, 67108864, !dbg !5997
  %tobool = icmp ne i32 %and, 0, !dbg !5997
  %lnot = xor i1 %tobool, true, !dbg !5997
  %lnot1 = xor i1 %lnot, true, !dbg !5997
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5997
  %conv = sext i32 %lnot.ext to i64, !dbg !5997
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5997
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5997
  br i1 %tobool2, label %if.then, label %if.else, !dbg !5999

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !6000
  %d_op = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 8, !dbg !6001
  %3 = load ptr, ptr %d_op, align 8, !dbg !6001
  %d_real = getelementptr inbounds %struct.dentry_operations, ptr %3, i32 0, i32 12, !dbg !6002
  %4 = load ptr, ptr %d_real, align 32, !dbg !6002
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !6003
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !6004
  %call = call ptr %4(ptr noundef %5, ptr noundef %6) #11, !dbg !6000
  store ptr %call, ptr %retval, align 8, !dbg !6005
  br label %return, !dbg !6005

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !6006
  store ptr %7, ptr %retval, align 8, !dbg !6007
  br label %return, !dbg !6007

return:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %retval, align 8, !dbg !6008
  ret ptr %8, !dbg !6008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !6009 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6015
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6016
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6016
  ret ptr %1, !dbg !6017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !6018 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6034, metadata !DIExpression()), !dbg !6035
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6036
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #11, !dbg !6037
  ret i1 %call, !dbg !6038
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6039 dso_local void @do_trace_9p_fid_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !6042 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6047, metadata !DIExpression()), !dbg !6048
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6049
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #11, !dbg !6050
  ret i1 %call, !dbg !6051
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6052 dso_local i32 @p9_client_clunk(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !6053 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6058, metadata !DIExpression()), !dbg !6061
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6059, metadata !DIExpression()), !dbg !6062
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6063
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6064, !range !6065, !noundef !1282
  %tobool = trunc i8 %1 to i1, !dbg !6064
  %conv = zext i1 %tobool to i32, !dbg !6064
  %or = or i32 2, %conv, !dbg !6066
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #10
          to label %asm.fallthrough [label %l_yes], !dbg !6067, !srcloc !6068

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6069
  br label %return, !dbg !6069

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6060), !dbg !6070
  store i1 true, ptr %retval, align 1, !dbg !6071
  br label %return, !dbg !6071

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6072
  ret i1 %2, !dbg !6072
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6073 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6077, metadata !DIExpression()), !dbg !6079
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6078, metadata !DIExpression()), !dbg !6080
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6081
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6082
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !6083
  ret i1 %call, !dbg !6084
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6085 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6089, metadata !DIExpression()), !dbg !6093
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6090, metadata !DIExpression()), !dbg !6094
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6091, metadata !DIExpression()), !dbg !6095
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !6096
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6092, metadata !DIExpression()), !dbg !6097
  %0 = load i32, ptr %i.addr, align 4, !dbg !6098
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6099
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6100
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #11, !dbg !6101
  store i32 %call, ptr %old, align 4, !dbg !6097
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6102
  %tobool = icmp ne ptr %2, null, !dbg !6102
  br i1 %tobool, label %if.then, label %if.end, !dbg !6104

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6105
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6106
  store i32 %3, ptr %4, align 4, !dbg !6107
  br label %if.end, !dbg !6108

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6109
  %6 = load i32, ptr %i.addr, align 4, !dbg !6111
  %cmp = icmp eq i32 %5, %6, !dbg !6112
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6113

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6114

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6116

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6118

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6118

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6116

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6120

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6122

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6122

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6120, !srcloc !6124
  br label %do.cond7, !dbg !6120

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6120

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6116

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6116

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6125

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6126
  %cmp12 = icmp slt i32 %7, 0, !dbg !6126
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6126

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6126
  %9 = load i32, ptr %i.addr, align 4, !dbg !6126
  %sub = sub i32 %8, %9, !dbg !6126
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6126
  br label %lor.end, !dbg !6126

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6126
  %lnot14 = xor i1 %lnot, true, !dbg !6126
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6126
  %conv = sext i32 %lnot.ext to i64, !dbg !6126
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6126
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6126
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6128

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6129
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #11, !dbg !6130
  br label %if.end17, !dbg !6130

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6131

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !6132
  %12 = load i1, ptr %retval, align 1, !dbg !6132
  ret i1 %12, !dbg !6132
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6133 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6139, metadata !DIExpression()), !dbg !6141
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6140, metadata !DIExpression()), !dbg !6142
  br label %do.body, !dbg !6143

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6144

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6146
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6147
  %1 = load i32, ptr %i.addr, align 4, !dbg !6148
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6149
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #11, !dbg !6150
  ret i32 %call, !dbg !6151
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6152 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6155 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6163, metadata !DIExpression()), !dbg !6165
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6164, metadata !DIExpression()), !dbg !6166
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6167
  %1 = load i64, ptr %size.addr, align 8, !dbg !6168
  %conv = trunc i64 %1 to i32, !dbg !6168
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6169
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6170
  %3 = load i64, ptr %size.addr, align 8, !dbg !6170
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !6170
  ret void, !dbg !6171
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6172 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6175, metadata !DIExpression()), !dbg !6177
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6176, metadata !DIExpression()), !dbg !6178
  %0 = load i32, ptr %i.addr, align 4, !dbg !6179
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6180
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #11, !dbg !6181
  ret i32 %call, !dbg !6182
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6183 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6188, metadata !DIExpression()), !dbg !6190
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6189, metadata !DIExpression()), !dbg !6191
  ret i1 true, !dbg !6192
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6193 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6198, metadata !DIExpression()), !dbg !6201
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6199, metadata !DIExpression()), !dbg !6202
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6200, metadata !DIExpression()), !dbg !6203
  ret void, !dbg !6204
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6205 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6208, metadata !DIExpression()), !dbg !6212
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6209, metadata !DIExpression()), !dbg !6213
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !6214
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6210, metadata !DIExpression()), !dbg !6214
  %0 = load i32, ptr %i.addr, align 4, !dbg !6214
  %sub = sub i32 0, %0, !dbg !6214
  store i32 %sub, ptr %__ret, align 4, !dbg !6214
  %1 = load i32, ptr %__ret, align 4, !dbg !6214
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6214
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6214
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #10, !dbg !6214, !srcloc !6215
  store i32 %3, ptr %__ret, align 4, !dbg !6214
  %4 = load i32, ptr %__ret, align 4, !dbg !6214
  store i32 %4, ptr %tmp, align 4, !dbg !6214
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !6216
  %5 = load i32, ptr %tmp, align 4, !dbg !6214
  ret i32 %5, !dbg !6217
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6218 dso_local void @down_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6222 dso_local void @up_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6223 dso_local i64 @generic_file_read_iter(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6224 dso_local i32 @p9_client_read_once(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6227 dso_local i32 @p9_client_read(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6228 dso_local i64 @generic_file_write_iter(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6229 dso_local i64 @generic_write_checks(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6230 dso_local i32 @p9_client_write(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6231 dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @i_size_read(ptr noundef %inode) #3 align 16 !dbg !6234 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6238, metadata !DIExpression()), !dbg !6239
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6240
  %i_size = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, !dbg !6241
  %1 = load i64, ptr %i_size, align 8, !dbg !6241
  ret i64 %1, !dbg !6242
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6243 dso_local void @inode_add_bytes(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_i_size_write(ptr noundef %inode, i64 noundef %i_size) #3 align 16 !dbg !6246 {
entry:
  %inode.addr = alloca ptr, align 8
  %i_size.addr = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6248, metadata !DIExpression()), !dbg !6250
  store i64 %i_size, ptr %i_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i_size.addr, metadata !6249, metadata !DIExpression()), !dbg !6251
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6252
  %1 = load i64, ptr %i_size.addr, align 8, !dbg !6253
  call void @i_size_write(ptr noundef %0, i64 noundef %1) #11, !dbg !6254
  ret void, !dbg !6255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_size_write(ptr noundef %inode, i64 noundef %i_size) #3 align 16 !dbg !6256 {
entry:
  %inode.addr = alloca ptr, align 8
  %i_size.addr = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6258, metadata !DIExpression()), !dbg !6260
  store i64 %i_size, ptr %i_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i_size.addr, metadata !6259, metadata !DIExpression()), !dbg !6261
  %0 = load i64, ptr %i_size.addr, align 8, !dbg !6262
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6263
  %i_size1 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15, !dbg !6264
  store i64 %0, ptr %i_size1, align 8, !dbg !6265
  ret void, !dbg !6266
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6267 dso_local void @v9fs_blank_wstat(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6271 dso_local i32 @p9_client_wstat(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @filemap_write_and_wait(ptr noundef %mapping) #3 align 16 !dbg !6274 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !6278, metadata !DIExpression()), !dbg !6279
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !6280
  %call = call i32 @filemap_write_and_wait_range(ptr noundef %0, i64 noundef 0, i64 noundef 9223372036854775807) #11, !dbg !6281
  ret i32 %call, !dbg !6282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6283 dso_local i64 @invalidate_mapping_pages(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6286 dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6289 dso_local i64 @copy_splice_read(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6290 dso_local i64 @filemap_splice_read(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6291 dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_mmap_vm_close(ptr noundef %vma) #0 align 16 !dbg !6292 {
entry:
  %vma.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %wbc = alloca %struct.writeback_control, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6294, metadata !DIExpression()), !dbg !6297
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !6298
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6295, metadata !DIExpression()), !dbg !6299
  call void @llvm.lifetime.start.p0(i64 48, ptr %wbc) #10, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %wbc, metadata !6296, metadata !DIExpression()), !dbg !6301
  %nr_to_write = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 0, !dbg !6302
  store i64 9223372036854775807, ptr %nr_to_write, align 8, !dbg !6302
  %pages_skipped = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 1, !dbg !6302
  store i64 0, ptr %pages_skipped, align 8, !dbg !6302
  %range_start = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 2, !dbg !6302
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6303
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11, !dbg !6304
  %1 = load i64, ptr %vm_pgoff, align 8, !dbg !6304
  %mul = mul i64 %1, 4096, !dbg !6305
  store i64 %mul, ptr %range_start, align 8, !dbg !6302
  %range_end = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 3, !dbg !6302
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !6306
  %vm_pgoff1 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 11, !dbg !6307
  %3 = load i64, ptr %vm_pgoff1, align 8, !dbg !6307
  %mul2 = mul i64 %3, 4096, !dbg !6308
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !6309
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 0, !dbg !6310
  %vm_end = getelementptr inbounds %struct.anon.32, ptr %5, i32 0, i32 1, !dbg !6310
  %6 = load i64, ptr %vm_end, align 8, !dbg !6310
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !6311
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 0, !dbg !6312
  %vm_start = getelementptr inbounds %struct.anon.32, ptr %8, i32 0, i32 0, !dbg !6312
  %9 = load i64, ptr %vm_start, align 8, !dbg !6312
  %sub = sub i64 %6, %9, !dbg !6313
  %sub3 = sub i64 %sub, 1, !dbg !6314
  %add = add i64 %mul2, %sub3, !dbg !6315
  store i64 %add, ptr %range_end, align 8, !dbg !6302
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4, !dbg !6302
  store i32 1, ptr %sync_mode, align 8, !dbg !6302
  %for_kupdate = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5, !dbg !6302
  %bf.load = load i8, ptr %for_kupdate, align 4, !dbg !6302
  %bf.clear = and i8 %bf.load, -2, !dbg !6302
  %bf.set = or i8 %bf.clear, 0, !dbg !6302
  store i8 %bf.set, ptr %for_kupdate, align 4, !dbg !6302
  %for_background = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5, !dbg !6302
  %bf.load4 = load i8, ptr %for_background, align 4, !dbg !6302
  %bf.clear5 = and i8 %bf.load4, -3, !dbg !6302
  %bf.set6 = or i8 %bf.clear5, 0, !dbg !6302
  store i8 %bf.set6, ptr %for_background, align 4, !dbg !6302
  %tagged_writepages = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5, !dbg !6302
  %bf.load7 = load i8, ptr %tagged_writepages, align 4, !dbg !6302
  %bf.clear8 = and i8 %bf.load7, -5, !dbg !6302
  %bf.set9 = or i8 %bf.clear8, 0, !dbg !6302
  store i8 %bf.set9, ptr %tagged_writepages, align 4, !dbg !6302
  %for_reclaim = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5, !dbg !6302
  %bf.load10 = load i8, ptr %for_reclaim, align 4, !dbg !6302
  %bf.clear11 = and i8 %bf.load10, -9, !dbg !6302
  %bf.set12 = or i8 %bf.clear11, 0, !dbg !6302
  store i8 %bf.set12, ptr %for_reclaim, align 4, !dbg !6302
  %range_cyclic = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5, !dbg !6302
  %bf.load13 = load i8, ptr %range_cyclic, align 4, !dbg !6302
  %bf.clear14 = and i8 %bf.load13, -17, !dbg !6302
  %bf.set15 = or i8 %bf.clear14, 0, !dbg !6302
  store i8 %bf.set15, ptr %range_cyclic, align 4, !dbg !6302
  %for_sync = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5, !dbg !6302
  %bf.load16 = load i8, ptr %for_sync, align 4, !dbg !6302
  %bf.clear17 = and i8 %bf.load16, -33, !dbg !6302
  %bf.set18 = or i8 %bf.clear17, 0, !dbg !6302
  store i8 %bf.set18, ptr %for_sync, align 4, !dbg !6302
  %unpinned_fscache_wb = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5, !dbg !6302
  %bf.load19 = load i8, ptr %unpinned_fscache_wb, align 4, !dbg !6302
  %bf.clear20 = and i8 %bf.load19, -65, !dbg !6302
  %bf.set21 = or i8 %bf.clear20, 0, !dbg !6302
  store i8 %bf.set21, ptr %unpinned_fscache_wb, align 4, !dbg !6302
  %no_cgroup_owner = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5, !dbg !6302
  %bf.load22 = load i8, ptr %no_cgroup_owner, align 4, !dbg !6302
  %bf.clear23 = and i8 %bf.load22, 127, !dbg !6302
  %bf.set24 = or i8 %bf.clear23, 0, !dbg !6302
  store i8 %bf.set24, ptr %no_cgroup_owner, align 4, !dbg !6302
  %swap_plug = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 6, !dbg !6302
  store ptr null, ptr %swap_plug, align 8, !dbg !6302
  %10 = load ptr, ptr %vma.addr, align 8, !dbg !6316
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 3, !dbg !6318
  %12 = load i64, ptr %11, align 8, !dbg !6318
  %and = and i64 %12, 8, !dbg !6319
  %tobool = icmp ne i64 %and, 0, !dbg !6319
  br i1 %tobool, label %if.end, label %if.then, !dbg !6320

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6321

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !6322
  %13 = load i32, ptr %tmp, align 4, !dbg !6325
  %14 = load ptr, ptr %vma.addr, align 8, !dbg !6326
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %14, i32 0, i32 12, !dbg !6327
  %15 = load ptr, ptr %vm_file, align 8, !dbg !6327
  %call = call ptr @file_inode(ptr noundef %15) #11, !dbg !6328
  store ptr %call, ptr %inode, align 8, !dbg !6329
  %16 = load ptr, ptr %inode, align 8, !dbg !6330
  %i_mapping = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 10, !dbg !6331
  %17 = load ptr, ptr %i_mapping, align 8, !dbg !6331
  %call25 = call i32 @filemap_fdatawrite_wbc(ptr noundef %17, ptr noundef %wbc) #11, !dbg !6332
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6333
  br label %cleanup, !dbg !6333

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %wbc) #10, !dbg !6333
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !6333
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6333

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_vm_page_mkwrite(ptr noundef %vmf) #0 align 16 !dbg !6334 {
entry:
  %retval = alloca i32, align 4
  %vmf.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %filp = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !6336, metadata !DIExpression()), !dbg !6341
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #10, !dbg !6342
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !6337, metadata !DIExpression()), !dbg !6343
  %0 = load ptr, ptr %vmf.addr, align 8, !dbg !6344
  %page = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6, !dbg !6344
  %1 = load ptr, ptr %page, align 8, !dbg !6344
  %call = call i64 @_compound_head(ptr noundef %1) #11, !dbg !6344
  %2 = inttoptr i64 %call to ptr, !dbg !6344
  store ptr %2, ptr %folio, align 8, !dbg !6343
  call void @llvm.lifetime.start.p0(i64 8, ptr %filp) #10, !dbg !6345
  call void @llvm.dbg.declare(metadata ptr %filp, metadata !6338, metadata !DIExpression()), !dbg !6346
  %3 = load ptr, ptr %vmf.addr, align 8, !dbg !6347
  %4 = getelementptr inbounds %struct.vm_fault, ptr %3, i32 0, i32 0, !dbg !6348
  %vma = getelementptr inbounds %struct.anon.35, ptr %4, i32 0, i32 0, !dbg !6348
  %5 = load ptr, ptr %vma, align 8, !dbg !6348
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 12, !dbg !6349
  %6 = load ptr, ptr %vm_file, align 8, !dbg !6349
  store ptr %6, ptr %filp, align 8, !dbg !6346
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6339, metadata !DIExpression()), !dbg !6351
  %7 = load ptr, ptr %filp, align 8, !dbg !6352
  %call1 = call ptr @file_inode(ptr noundef %7) #11, !dbg !6353
  store ptr %call1, ptr %inode, align 8, !dbg !6351
  store i32 0, ptr %tmp, align 4, !dbg !6354
  %8 = load i32, ptr %tmp, align 4, !dbg !6357
  %9 = load ptr, ptr %filp, align 8, !dbg !6358
  %call2 = call i32 @file_update_time(ptr noundef %9) #11, !dbg !6359
  %10 = load ptr, ptr %folio, align 8, !dbg !6360
  %call3 = call i32 @folio_lock_killable(ptr noundef %10) #11, !dbg !6362
  %cmp = icmp slt i32 %call3, 0, !dbg !6363
  br i1 %cmp, label %if.then, label %if.end, !dbg !6364

if.then:                                          ; preds = %entry
  store i32 1024, ptr %retval, align 4, !dbg !6365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6365

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %folio, align 8, !dbg !6366
  %call4 = call ptr @folio_mapping(ptr noundef %11) #11, !dbg !6368
  %12 = load ptr, ptr %inode, align 8, !dbg !6369
  %i_mapping = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10, !dbg !6370
  %13 = load ptr, ptr %i_mapping, align 8, !dbg !6370
  %cmp5 = icmp ne ptr %call4, %13, !dbg !6371
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !6372

if.then6:                                         ; preds = %if.end
  br label %out_unlock, !dbg !6373

if.end7:                                          ; preds = %if.end
  %14 = load ptr, ptr %folio, align 8, !dbg !6374
  call void @folio_wait_stable(ptr noundef %14) #11, !dbg !6375
  store i32 512, ptr %retval, align 4, !dbg !6376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6376

out_unlock:                                       ; preds = %if.then6
  call void @llvm.dbg.label(metadata !6340), !dbg !6377
  %15 = load ptr, ptr %folio, align 8, !dbg !6378
  call void @folio_unlock(ptr noundef %15) #11, !dbg !6379
  store i32 256, ptr %retval, align 4, !dbg !6380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6380

cleanup:                                          ; preds = %out_unlock, %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !6381
  call void @llvm.lifetime.end.p0(i64 8, ptr %filp) #10, !dbg !6381
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #10, !dbg !6381
  %16 = load i32, ptr %retval, align 4, !dbg !6381
  ret i32 %16, !dbg !6381
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6382 dso_local i32 @filemap_fdatawrite_wbc(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #3 align 16 !dbg !6383 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6387, metadata !DIExpression()), !dbg !6389
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #10, !dbg !6390
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6388, metadata !DIExpression()), !dbg !6391
  br label %do.body, !dbg !6392

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6394

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6394

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6392
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !6392
  %compound_head = getelementptr inbounds %struct.anon.44, ptr %1, i32 0, i32 0, !dbg !6392
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !6392
  store i64 %2, ptr %tmp, align 8, !dbg !6394
  %3 = load i64, ptr %tmp, align 8, !dbg !6392
  store i64 %3, ptr %head, align 8, !dbg !6391
  %4 = load i64, ptr %head, align 8, !dbg !6396
  %and = and i64 %4, 1, !dbg !6396
  %tobool = icmp ne i64 %and, 0, !dbg !6396
  %lnot = xor i1 %tobool, true, !dbg !6396
  %lnot1 = xor i1 %lnot, true, !dbg !6396
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6396
  %conv = sext i32 %lnot.ext to i64, !dbg !6396
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6396
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6396
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6398

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !6399
  %sub = sub i64 %5, 1, !dbg !6400
  store i64 %sub, ptr %retval, align 8, !dbg !6401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6401

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !6402
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #11, !dbg !6403
  %7 = ptrtoint ptr %call to i64, !dbg !6404
  store i64 %7, ptr %retval, align 8, !dbg !6405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6405

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #10, !dbg !6406
  %8 = load i64, ptr %retval, align 8, !dbg !6406
  ret i64 %8, !dbg !6406
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6407 dso_local i32 @file_update_time(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_lock_killable(ptr noundef %folio) #3 align 16 !dbg !6410 {
entry:
  %retval = alloca i32, align 4
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6412, metadata !DIExpression()), !dbg !6413
  br label %do.body, !dbg !6414

do.body:                                          ; preds = %entry
  call void @might_resched() #11, !dbg !6415
  br label %do.end, !dbg !6415

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6417
  %call = call zeroext i1 @folio_trylock(ptr noundef %0) #11, !dbg !6419
  br i1 %call, label %if.end, label %if.then, !dbg !6420

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6421
  %call1 = call i32 @__folio_lock_killable(ptr noundef %1) #11, !dbg !6422
  store i32 %call1, ptr %retval, align 4, !dbg !6423
  br label %return, !dbg !6423

if.end:                                           ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !6424
  br label %return, !dbg !6424

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6425
  ret i32 %2, !dbg !6425
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6426 dso_local ptr @folio_mapping(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6429 dso_local void @folio_wait_stable(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6430 dso_local void @folio_unlock(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #6 align 16 !dbg !6431 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6435, metadata !DIExpression()), !dbg !6442
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #10, !dbg !6443
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !6436, metadata !DIExpression()), !dbg !6443
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #11, !dbg !6444
  %frombool = zext i1 %call to i8, !dbg !6444
  store i8 %frombool, ptr %branch, align 1, !dbg !6444
  %0 = load i8, ptr %branch, align 1, !dbg !6443, !range !6065, !noundef !1282
  %tobool = trunc i8 %0 to i1, !dbg !6443
  %lnot = xor i1 %tobool, true, !dbg !6443
  %lnot1 = xor i1 %lnot, true, !dbg !6443
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6443
  %conv = sext i32 %lnot.ext to i64, !dbg !6443
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6443
  store i64 %expval, ptr %tmp, align 8, !dbg !6447
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #10, !dbg !6448
  %1 = load i64, ptr %tmp, align 8, !dbg !6443
  %tobool2 = icmp ne i64 %1, 0, !dbg !6448
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6449

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !6450
  store ptr %2, ptr %retval, align 8, !dbg !6451
  br label %return, !dbg !6451

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !6452
  %4 = ptrtoint ptr %3 to i64, !dbg !6452
  %and = and i64 %4, 4095, !dbg !6452
  %cmp = icmp eq i64 %and, 0, !dbg !6452
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !6453

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !6454
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !6454
  %6 = ptrtoint ptr %flags to i64, !dbg !6454
  %cmp4 = icmp ne i64 %6, 0, !dbg !6454
  %conv5 = zext i1 %cmp4 to i32, !dbg !6454
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !6454
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !6454

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !6454
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !6454
  %9 = ptrtoint ptr %flags7 to i64, !dbg !6454
  %cmp8 = icmp ne i64 %9, 0, !dbg !6454
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !6454

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !6454
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !6454
  %11 = load i64, ptr %flags11, align 16, !dbg !6454
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6454
  br i1 %12, label %cond.true, label %cond.false, !dbg !6455

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !6454
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !6454
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #11, !dbg !6454
  br i1 %call13, label %if.then18, label %if.end31, !dbg !6454

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !6454
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !6454
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #11, !dbg !6454
  br i1 %call16, label %if.then18, label %if.end31, !dbg !6455

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #10, !dbg !6456
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6439, metadata !DIExpression()), !dbg !6457
  br label %do.body, !dbg !6458

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !6460

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6460

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !6458
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !6458
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !6458
  %compound_head = getelementptr inbounds %struct.anon.44, ptr %16, i32 0, i32 0, !dbg !6458
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !6458
  store i64 %17, ptr %tmp19, align 8, !dbg !6460
  %18 = load i64, ptr %tmp19, align 8, !dbg !6458
  store i64 %18, ptr %head, align 8, !dbg !6457
  %19 = load i64, ptr %head, align 8, !dbg !6462
  %and20 = and i64 %19, 1, !dbg !6462
  %tobool21 = icmp ne i64 %and20, 0, !dbg !6462
  %lnot22 = xor i1 %tobool21, true, !dbg !6462
  %lnot24 = xor i1 %lnot22, true, !dbg !6462
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6462
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6462
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !6462
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !6462
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6464

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !6465
  %sub = sub i64 %20, 1, !dbg !6466
  %21 = inttoptr i64 %sub to ptr, !dbg !6467
  store ptr %21, ptr %retval, align 8, !dbg !6468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6468

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6469
  br label %cleanup, !dbg !6469

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #10, !dbg !6469
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !6470

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !6471
  store ptr %22, ptr %retval, align 8, !dbg !6472
  br label %return, !dbg !6472

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !6473
  ret ptr %23, !dbg !6473

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6474 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6479, metadata !DIExpression()), !dbg !6484
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6480, metadata !DIExpression()), !dbg !6485
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !6486
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6481, metadata !DIExpression()), !dbg !6487
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6488
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6489
  %div = udiv i64 %1, 64, !dbg !6489
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6490
  store ptr %add.ptr, ptr %p, align 8, !dbg !6487
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !6491
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6482, metadata !DIExpression()), !dbg !6492
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6493
  %rem = urem i64 %2, 64, !dbg !6493
  %shl = shl i64 1, %rem, !dbg !6493
  store i64 %shl, ptr %mask, align 8, !dbg !6492
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !6494
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6483, metadata !DIExpression()), !dbg !6495
  %3 = load ptr, ptr %p, align 8, !dbg !6496
  %4 = load i64, ptr %3, align 8, !dbg !6497
  store i64 %4, ptr %val, align 8, !dbg !6495
  %5 = load i64, ptr %val, align 8, !dbg !6498
  %6 = load i64, ptr %mask, align 8, !dbg !6499
  %and = and i64 %5, %6, !dbg !6500
  %tobool = icmp ne i64 %and, 0, !dbg !6501
  %lnot = xor i1 %tobool, true, !dbg !6501
  %lnot1 = xor i1 %lnot, true, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6503
  ret i1 %lnot1, !dbg !6504
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6505 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6508, metadata !DIExpression()), !dbg !6510
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6509, metadata !DIExpression()), !dbg !6511
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6512
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6513
  %div = udiv i64 %1, 64, !dbg !6513
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6514
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6515
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6516
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6517
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6518
  ret i1 %call, !dbg !6519
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6520 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6522, metadata !DIExpression()), !dbg !6524
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6523, metadata !DIExpression()), !dbg !6525
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6526
  %1 = load i64, ptr %size.addr, align 8, !dbg !6527
  %conv = trunc i64 %1 to i32, !dbg !6527
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !6528
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6529
  %3 = load i64, ptr %size.addr, align 8, !dbg !6529
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !6529
  ret void, !dbg !6530
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6531 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6534, metadata !DIExpression()), !dbg !6536
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6535, metadata !DIExpression()), !dbg !6537
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6538
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6539
  br i1 %1, label %cond.true, label %cond.false, !dbg !6539

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6540
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6541
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6542
  %conv = zext i1 %call to i32, !dbg !6542
  br label %cond.end, !dbg !6539

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6543
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6544
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !6545
  %conv2 = zext i1 %call1 to i32, !dbg !6545
  br label %cond.end, !dbg !6539

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6539
  %tobool = icmp ne i32 %cond, 0, !dbg !6539
  ret i1 %tobool, !dbg !6546
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6547 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6549, metadata !DIExpression()), !dbg !6551
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6550, metadata !DIExpression()), !dbg !6552
  ret i1 true, !dbg !6553
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6554 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6558, metadata !DIExpression()), !dbg !6560
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6559, metadata !DIExpression()), !dbg !6561
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6562
  %and = and i64 %0, 63, !dbg !6563
  %shl = shl i64 1, %and, !dbg !6564
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6565
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6566
  %shr = ashr i64 %2, 6, !dbg !6567
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6565
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6565
  %and1 = and i64 %shl, %3, !dbg !6568
  %cmp = icmp ne i64 %and1, 0, !dbg !6569
  ret i1 %cmp, !dbg !6570
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6571 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6573, metadata !DIExpression()), !dbg !6576
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6574, metadata !DIExpression()), !dbg !6577
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6575, metadata !DIExpression()), !dbg !6579
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6580
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6581
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !6582, !srcloc !6583
  %3 = icmp ult i8 %2, 2, !dbg !6582
  call void @llvm.assume(i1 %3), !dbg !6582
  store i8 %2, ptr %oldbit, align 1, !dbg !6582
  %4 = load i8, ptr %oldbit, align 1, !dbg !6584, !range !6065, !noundef !1282
  %tobool = trunc i8 %4 to i1, !dbg !6584
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !6585
  ret i1 %tobool, !dbg !6586
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !4919 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6587
  %0 = load ptr, ptr %tmp, align 8, !dbg !6587
  %call = call i32 %0() #11, !dbg !6589
  ret void, !dbg !6590
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_trylock(ptr noundef %folio) #3 align 16 !dbg !6591 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6595, metadata !DIExpression()), !dbg !6596
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6597
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #11, !dbg !6597
  %call1 = call zeroext i1 @test_and_set_bit_lock(i64 noundef 0, ptr noundef %call) #11, !dbg !6597
  %lnot = xor i1 %call1, true, !dbg !6597
  %lnot2 = xor i1 %lnot, true, !dbg !6597
  %lnot3 = xor i1 %lnot2, true, !dbg !6597
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6597
  %conv = sext i32 %lnot.ext to i64, !dbg !6597
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6597
  %tobool = icmp ne i64 %expval, 0, !dbg !6597
  ret i1 %tobool, !dbg !6598
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6599 dso_local i32 @__folio_lock_killable(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit_lock(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6600 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6606, metadata !DIExpression()), !dbg !6608
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6607, metadata !DIExpression()), !dbg !6609
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6610
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6611
  %div = sdiv i64 %1, 64, !dbg !6611
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6612
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6613
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6614
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6615
  %call = call zeroext i1 @arch_test_and_set_bit_lock(i64 noundef %2, ptr noundef %3) #11, !dbg !6616
  ret i1 %call, !dbg !6617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !6618 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6622, metadata !DIExpression()), !dbg !6625
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6623, metadata !DIExpression()), !dbg !6626
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #10, !dbg !6627
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6624, metadata !DIExpression()), !dbg !6628
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6629
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6630
  store ptr %1, ptr %page, align 8, !dbg !6628
  %2 = load ptr, ptr %page, align 8, !dbg !6631
  %3 = load i32, ptr %n.addr, align 4, !dbg !6632
  %idxprom = zext i32 %3 to i64, !dbg !6631
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !6631
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !6633
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #10, !dbg !6634
  ret ptr %flags, !dbg !6635
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit_lock(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6636 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6638, metadata !DIExpression()), !dbg !6640
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6639, metadata !DIExpression()), !dbg !6641
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6642
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6643
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %0, ptr noundef %1) #11, !dbg !6644
  ret i1 %call, !dbg !6645
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6646 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6648, metadata !DIExpression()), !dbg !6652
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6649, metadata !DIExpression()), !dbg !6653
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10, !dbg !6654
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6650, metadata !DIExpression()), !dbg !6654
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6654
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6654
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #10, !dbg !6654, !srcloc !6655
  %3 = icmp ult i8 %2, 2, !dbg !6654
  call void @llvm.assume(i1 %3), !dbg !6654
  store i8 %2, ptr %c, align 1, !dbg !6654
  %4 = load i8, ptr %c, align 1, !dbg !6654, !range !6065, !noundef !1282
  %tobool = trunc i8 %4 to i1, !dbg !6654
  %frombool = zext i1 %tobool to i8, !dbg !6654
  store i8 %frombool, ptr %tmp, align 1, !dbg !6654
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10, !dbg !6656
  %5 = load i8, ptr %tmp, align 1, !dbg !6654, !range !6065, !noundef !1282
  %tobool1 = trunc i8 %5 to i1, !dbg !6654
  ret i1 %tobool1, !dbg !6657
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_file_do_lock(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 16 !dbg !4928 {
entry:
  %filp.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %fl.addr = alloca ptr, align 8
  %flock = alloca %struct.p9_flock, align 8
  %fid = alloca ptr, align 8
  %status = alloca i8, align 1
  %res = alloca i32, align 4
  %fl_type = alloca i8, align 1
  %v9ses = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp155 = alloca i64, align 8
  %tmp164 = alloca i64, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4930, metadata !DIExpression()), !dbg !6658
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4931, metadata !DIExpression()), !dbg !6659
  store ptr %fl, ptr %fl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fl.addr, metadata !4932, metadata !DIExpression()), !dbg !6660
  call void @llvm.lifetime.start.p0(i64 40, ptr %flock) #10, !dbg !6661
  call void @llvm.dbg.declare(metadata ptr %flock, metadata !4933, metadata !DIExpression()), !dbg !6662
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #10, !dbg !6663
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !4942, metadata !DIExpression()), !dbg !6664
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !6665
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4998, metadata !DIExpression()), !dbg !6666
  store i8 2, ptr %status, align 1, !dbg !6666
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10, !dbg !6667
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5000, metadata !DIExpression()), !dbg !6668
  store i32 0, ptr %res, align 4, !dbg !6668
  call void @llvm.lifetime.start.p0(i64 1, ptr %fl_type) #10, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %fl_type, metadata !5001, metadata !DIExpression()), !dbg !6670
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #10, !dbg !6671
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !5002, metadata !DIExpression()), !dbg !6672
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !6673
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6674
  %1 = load ptr, ptr %private_data, align 8, !dbg !6674
  store ptr %1, ptr %fid, align 8, !dbg !6675
  br label %do.body, !dbg !6676

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %fid, align 8, !dbg !6677
  %cmp = icmp eq ptr %2, null, !dbg !6677
  %lnot = xor i1 %cmp, true, !dbg !6677
  %lnot1 = xor i1 %lnot, true, !dbg !6677
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6677
  %conv = sext i32 %lnot.ext to i64, !dbg !6677
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6677
  %tobool = icmp ne i64 %expval, 0, !dbg !6677
  br i1 %tobool, label %if.then, label %if.end, !dbg !6680

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !6677

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !6681

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !6683

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6683

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !6681

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 128, i32 0, i64 12) #10, !dbg !6685, !srcloc !6687
  br label %do.cond5, !dbg !6685

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6685

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !6681

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !6681

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !6681

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !6680

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !6680

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6688

do.body11:                                        ; preds = %do.end10
  %3 = load ptr, ptr %fl.addr, align 8, !dbg !6689
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 6, !dbg !6689
  %4 = load i32, ptr %fl_flags, align 8, !dbg !6689
  %and = and i32 %4, 1, !dbg !6689
  %cmp12 = icmp ne i32 %and, 1, !dbg !6689
  %lnot14 = xor i1 %cmp12, true, !dbg !6689
  %lnot16 = xor i1 %lnot14, true, !dbg !6689
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6689
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6689
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !6689
  %tobool20 = icmp ne i64 %expval19, 0, !dbg !6689
  br i1 %tobool20, label %if.then21, label %if.end31, !dbg !6692

if.then21:                                        ; preds = %do.body11
  br label %do.body22, !dbg !6689

do.body22:                                        ; preds = %if.then21
  br label %do.body23, !dbg !6693

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !6695

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6695

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !6693

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 130, i32 0, i64 12) #10, !dbg !6697, !srcloc !6699
  br label %do.cond27, !dbg !6697

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6697

do.end28:                                         ; preds = %do.cond27
  unreachable, !dbg !6693

do.cond29:                                        ; No predecessors!
  br label %do.end30, !dbg !6693

do.end30:                                         ; preds = %do.cond29
  br label %if.end31, !dbg !6693

if.end31:                                         ; preds = %do.end30, %do.body11
  br label %do.cond32, !dbg !6692

do.cond32:                                        ; preds = %if.end31
  br label %do.end33, !dbg !6692

do.end33:                                         ; preds = %do.cond32
  %5 = load ptr, ptr %filp.addr, align 8, !dbg !6700
  %6 = load ptr, ptr %fl.addr, align 8, !dbg !6701
  %call = call i32 @locks_lock_file_wait(ptr noundef %5, ptr noundef %6) #11, !dbg !6702
  store i32 %call, ptr %res, align 4, !dbg !6703
  %7 = load i32, ptr %res, align 4, !dbg !6704
  %cmp34 = icmp slt i32 %7, 0, !dbg !6706
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !6707

if.then36:                                        ; preds = %do.end33
  br label %out, !dbg !6708

if.end37:                                         ; preds = %do.end33
  call void @llvm.memset.p0.i64(ptr align 8 %flock, i8 0, i64 40, i1 false), !dbg !6709
  %8 = load ptr, ptr %fl.addr, align 8, !dbg !6710
  %fl_type38 = getelementptr inbounds %struct.file_lock, ptr %8, i32 0, i32 7, !dbg !6711
  %9 = load i8, ptr %fl_type38, align 4, !dbg !6711
  %conv39 = zext i8 %9 to i32, !dbg !6710
  switch i32 %conv39, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb40
    i32 2, label %sw.bb42
  ], !dbg !6712

sw.bb:                                            ; preds = %if.end37
  %type = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 0, !dbg !6713
  store i8 0, ptr %type, align 8, !dbg !6715
  br label %sw.epilog, !dbg !6716

sw.bb40:                                          ; preds = %if.end37
  %type41 = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 0, !dbg !6717
  store i8 1, ptr %type41, align 8, !dbg !6718
  br label %sw.epilog, !dbg !6719

sw.bb42:                                          ; preds = %if.end37
  %type43 = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 0, !dbg !6720
  store i8 2, ptr %type43, align 8, !dbg !6721
  br label %sw.epilog, !dbg !6722

sw.epilog:                                        ; preds = %if.end37, %sw.bb42, %sw.bb40, %sw.bb
  %10 = load ptr, ptr %fl.addr, align 8, !dbg !6723
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %10, i32 0, i32 12, !dbg !6724
  %11 = load i64, ptr %fl_start, align 8, !dbg !6724
  %start = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 2, !dbg !6725
  store i64 %11, ptr %start, align 8, !dbg !6726
  %12 = load ptr, ptr %fl.addr, align 8, !dbg !6727
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %12, i32 0, i32 13, !dbg !6729
  %13 = load i64, ptr %fl_end, align 8, !dbg !6729
  %cmp44 = icmp eq i64 %13, 9223372036854775807, !dbg !6730
  br i1 %cmp44, label %if.then46, label %if.else, !dbg !6731

if.then46:                                        ; preds = %sw.epilog
  %length = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 3, !dbg !6732
  store i64 0, ptr %length, align 8, !dbg !6733
  br label %if.end50, !dbg !6734

if.else:                                          ; preds = %sw.epilog
  %14 = load ptr, ptr %fl.addr, align 8, !dbg !6735
  %fl_end47 = getelementptr inbounds %struct.file_lock, ptr %14, i32 0, i32 13, !dbg !6736
  %15 = load i64, ptr %fl_end47, align 8, !dbg !6736
  %16 = load ptr, ptr %fl.addr, align 8, !dbg !6737
  %fl_start48 = getelementptr inbounds %struct.file_lock, ptr %16, i32 0, i32 12, !dbg !6738
  %17 = load i64, ptr %fl_start48, align 8, !dbg !6738
  %sub = sub i64 %15, %17, !dbg !6739
  %add = add i64 %sub, 1, !dbg !6740
  %length49 = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 3, !dbg !6741
  store i64 %add, ptr %length49, align 8, !dbg !6742
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then46
  %18 = load ptr, ptr %fl.addr, align 8, !dbg !6743
  %fl_pid = getelementptr inbounds %struct.file_lock, ptr %18, i32 0, i32 8, !dbg !6744
  %19 = load i32, ptr %fl_pid, align 8, !dbg !6744
  %proc_id = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 4, !dbg !6745
  store i32 %19, ptr %proc_id, align 8, !dbg !6746
  %20 = load ptr, ptr %fid, align 8, !dbg !6747
  %clnt = getelementptr inbounds %struct.p9_fid, ptr %20, i32 0, i32 0, !dbg !6748
  %21 = load ptr, ptr %clnt, align 8, !dbg !6748
  %name = getelementptr inbounds %struct.p9_client, ptr %21, i32 0, i32 10, !dbg !6749
  %arraydecay = getelementptr inbounds [65 x i8], ptr %name, i64 0, i64 0, !dbg !6747
  %client_id = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 5, !dbg !6750
  store ptr %arraydecay, ptr %client_id, align 8, !dbg !6751
  %22 = load i32, ptr %cmd.addr, align 4, !dbg !6752
  %cmp51 = icmp eq i32 %22, 7, !dbg !6752
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !6754

if.then53:                                        ; preds = %if.end50
  %flags = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 1, !dbg !6755
  store i32 1, ptr %flags, align 4, !dbg !6756
  br label %if.end54, !dbg !6757

if.end54:                                         ; preds = %if.then53, %if.end50
  %23 = load ptr, ptr %filp.addr, align 8, !dbg !6758
  %call55 = call ptr @file_inode(ptr noundef %23) #11, !dbg !6759
  %call56 = call ptr @v9fs_inode2v9ses(ptr noundef %call55) #11, !dbg !6760
  store ptr %call56, ptr %v9ses, align 8, !dbg !6761
  br label %for.cond, !dbg !6762

for.cond:                                         ; preds = %if.end91, %if.end54
  %24 = load ptr, ptr %fid, align 8, !dbg !6763
  %call57 = call i32 @p9_client_lock_dotl(ptr noundef %24, ptr noundef %flock, ptr noundef %status) #11, !dbg !6767
  store i32 %call57, ptr %res, align 4, !dbg !6768
  %25 = load i32, ptr %res, align 4, !dbg !6769
  %cmp58 = icmp slt i32 %25, 0, !dbg !6771
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !6772

if.then60:                                        ; preds = %for.cond
  br label %out_unlock, !dbg !6773

if.end61:                                         ; preds = %for.cond
  %26 = load i8, ptr %status, align 1, !dbg !6774
  %conv62 = zext i8 %26 to i32, !dbg !6774
  %cmp63 = icmp ne i32 %conv62, 1, !dbg !6776
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !6777

if.then65:                                        ; preds = %if.end61
  br label %for.end, !dbg !6778

if.end66:                                         ; preds = %if.end61
  %27 = load i8, ptr %status, align 1, !dbg !6779
  %conv67 = zext i8 %27 to i32, !dbg !6779
  %cmp68 = icmp eq i32 %conv67, 1, !dbg !6781
  br i1 %cmp68, label %land.lhs.true, label %if.end73, !dbg !6782

land.lhs.true:                                    ; preds = %if.end66
  %28 = load i32, ptr %cmd.addr, align 4, !dbg !6783
  %cmp70 = icmp eq i32 %28, 7, !dbg !6783
  br i1 %cmp70, label %if.end73, label %if.then72, !dbg !6784

if.then72:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !6785

if.end73:                                         ; preds = %land.lhs.true, %if.end66
  %29 = load ptr, ptr %v9ses, align 8, !dbg !6786
  %session_lock_timeout = getelementptr inbounds %struct.v9fs_session_info, ptr %29, i32 0, i32 14, !dbg !6788
  %30 = load i64, ptr %session_lock_timeout, align 8, !dbg !6788
  %call74 = call i64 @schedule_timeout_interruptible(i64 noundef %30) #11, !dbg !6789
  %cmp75 = icmp ne i64 %call74, 0, !dbg !6790
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !6791

if.then77:                                        ; preds = %if.end73
  br label %for.end, !dbg !6792

if.end78:                                         ; preds = %if.end73
  %client_id79 = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 5, !dbg !6793
  %31 = load ptr, ptr %client_id79, align 8, !dbg !6793
  %32 = load ptr, ptr %fid, align 8, !dbg !6795
  %clnt80 = getelementptr inbounds %struct.p9_fid, ptr %32, i32 0, i32 0, !dbg !6796
  %33 = load ptr, ptr %clnt80, align 8, !dbg !6796
  %name81 = getelementptr inbounds %struct.p9_client, ptr %33, i32 0, i32 10, !dbg !6797
  %arraydecay82 = getelementptr inbounds [65 x i8], ptr %name81, i64 0, i64 0, !dbg !6795
  %cmp83 = icmp ne ptr %31, %arraydecay82, !dbg !6798
  br i1 %cmp83, label %if.then85, label %if.end91, !dbg !6799

if.then85:                                        ; preds = %if.end78
  %client_id86 = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 5, !dbg !6800
  %34 = load ptr, ptr %client_id86, align 8, !dbg !6800
  call void @kfree(ptr noundef %34) #11, !dbg !6802
  %35 = load ptr, ptr %fid, align 8, !dbg !6803
  %clnt87 = getelementptr inbounds %struct.p9_fid, ptr %35, i32 0, i32 0, !dbg !6804
  %36 = load ptr, ptr %clnt87, align 8, !dbg !6804
  %name88 = getelementptr inbounds %struct.p9_client, ptr %36, i32 0, i32 10, !dbg !6805
  %arraydecay89 = getelementptr inbounds [65 x i8], ptr %name88, i64 0, i64 0, !dbg !6803
  %client_id90 = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 5, !dbg !6806
  store ptr %arraydecay89, ptr %client_id90, align 8, !dbg !6807
  br label %if.end91, !dbg !6808

if.end91:                                         ; preds = %if.then85, %if.end78
  br label %for.cond, !dbg !6809, !llvm.loop !6810

for.end:                                          ; preds = %if.then77, %if.then72, %if.then65
  %37 = load i8, ptr %status, align 1, !dbg !6814
  %conv92 = zext i8 %37 to i32, !dbg !6814
  switch i32 %conv92, label %sw.default [
    i32 0, label %sw.bb93
    i32 1, label %sw.bb94
    i32 2, label %sw.bb172
    i32 3, label %sw.bb172
  ], !dbg !6815

sw.bb93:                                          ; preds = %for.end
  store i32 0, ptr %res, align 4, !dbg !6816
  br label %sw.epilog173, !dbg !6817

sw.bb94:                                          ; preds = %for.end
  store i32 -11, ptr %res, align 4, !dbg !6818
  br label %sw.epilog173, !dbg !6819

sw.default:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #10, !dbg !6820
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5021, metadata !DIExpression()), !dbg !6820
  store i8 1, ptr %__ret_do_once, align 1, !dbg !6820
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #10, !dbg !6821
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5024, metadata !DIExpression()), !dbg !6821
  %38 = load i8, ptr %__ret_do_once, align 1, !dbg !6821, !range !6065, !noundef !1282
  %tobool95 = trunc i8 %38 to i1, !dbg !6821
  %lnot96 = xor i1 %tobool95, true, !dbg !6821
  %lnot98 = xor i1 %lnot96, true, !dbg !6821
  %frombool = zext i1 %lnot98 to i8, !dbg !6821
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !6821
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #10, !dbg !6821
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5027, metadata !DIExpression()), !dbg !6821
  store i8 0, ptr %__ret_once, align 1, !dbg !6821
  %39 = load i8, ptr %__ret_cond, align 1, !dbg !6822, !range !6065, !noundef !1282
  %tobool100 = trunc i8 %39 to i1, !dbg !6822
  br i1 %tobool100, label %land.rhs, label %land.end, !dbg !6822

land.rhs:                                         ; preds = %sw.default
  %40 = load i8, ptr @v9fs_file_do_lock.__already_done, align 1, !dbg !6822, !range !6065, !noundef !1282
  %tobool102 = trunc i8 %40 to i1, !dbg !6822
  %lnot103 = xor i1 %tobool102, true, !dbg !6822
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.default
  %41 = phi i1 [ false, %sw.default ], [ %lnot103, %land.rhs ], !dbg !6824
  %lnot105 = xor i1 %41, true, !dbg !6822
  %lnot107 = xor i1 %lnot105, true, !dbg !6822
  %lnot.ext108 = zext i1 %lnot107 to i32, !dbg !6822
  %conv109 = sext i32 %lnot.ext108 to i64, !dbg !6822
  %expval110 = call i64 @llvm.expect.i64(i64 %conv109, i64 0), !dbg !6822
  %tobool111 = icmp ne i64 %expval110, 0, !dbg !6822
  br i1 %tobool111, label %if.then112, label %if.end113, !dbg !6821

if.then112:                                       ; preds = %land.end
  store i8 1, ptr @v9fs_file_do_lock.__already_done, align 1, !dbg !6825
  store i8 1, ptr %__ret_once, align 1, !dbg !6825
  br label %if.end113, !dbg !6825

if.end113:                                        ; preds = %if.then112, %land.end
  %42 = load i8, ptr %__ret_once, align 1, !dbg !6821, !range !6065, !noundef !1282
  %tobool114 = trunc i8 %42 to i1, !dbg !6821
  %lnot115 = xor i1 %tobool114, true, !dbg !6821
  %lnot117 = xor i1 %lnot115, true, !dbg !6821
  %lnot.ext118 = zext i1 %lnot117 to i32, !dbg !6821
  %conv119 = sext i32 %lnot.ext118 to i64, !dbg !6821
  %expval120 = call i64 @llvm.expect.i64(i64 %conv119, i64 0), !dbg !6821
  store i64 %expval120, ptr %tmp, align 8, !dbg !6822
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #10, !dbg !6827
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #10, !dbg !6827
  %43 = load i64, ptr %tmp, align 8, !dbg !6821
  %tobool121 = icmp ne i64 %43, 0, !dbg !6827
  br i1 %tobool121, label %if.then122, label %if.end163, !dbg !6820

if.then122:                                       ; preds = %if.end113
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6828
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5028, metadata !DIExpression()), !dbg !6828
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6828
  %44 = load i32, ptr %__ret_warn_on, align 4, !dbg !6829
  %tobool123 = icmp ne i32 %44, 0, !dbg !6829
  %lnot124 = xor i1 %tobool123, true, !dbg !6829
  %lnot126 = xor i1 %lnot124, true, !dbg !6829
  %lnot.ext127 = zext i1 %lnot126 to i32, !dbg !6829
  %conv128 = sext i32 %lnot.ext127 to i64, !dbg !6829
  %expval129 = call i64 @llvm.expect.i64(i64 %conv128, i64 0), !dbg !6829
  %tobool130 = icmp ne i64 %expval129, 0, !dbg !6829
  br i1 %tobool130, label %if.then131, label %if.end154, !dbg !6828

if.then131:                                       ; preds = %if.then122
  br label %do.body132, !dbg !6829

do.body132:                                       ; preds = %if.then131
  br label %do.body133, !dbg !6830

do.body133:                                       ; preds = %do.body132
  br label %do.cond134, !dbg !6831

do.cond134:                                       ; preds = %do.body133
  br label %do.end135, !dbg !6831

do.end135:                                        ; preds = %do.cond134
  %45 = load i8, ptr %status, align 1, !dbg !6830
  %conv136 = zext i8 %45 to i32, !dbg !6830
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, i32 noundef %conv136) #11, !dbg !6830
  br label %do.body137, !dbg !6830

do.body137:                                       ; preds = %do.end135
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6833
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5030, metadata !DIExpression()), !dbg !6833
  store i32 2313, ptr %__flags, align 4, !dbg !6833
  br label %do.body138, !dbg !6833

do.body138:                                       ; preds = %do.body137
  br label %do.cond139, !dbg !6834

do.cond139:                                       ; preds = %do.body138
  br label %do.end140, !dbg !6834

do.end140:                                        ; preds = %do.cond139
  br label %do.body141, !dbg !6833

do.body141:                                       ; preds = %do.end140
  %46 = load i32, ptr %__flags, align 4, !dbg !6836
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 197, i32 %46, i64 12) #10, !dbg !6836, !srcloc !6838
  br label %do.cond142, !dbg !6836

do.cond142:                                       ; preds = %do.body141
  br label %do.end143, !dbg !6836

do.end143:                                        ; preds = %do.cond142
  br label %do.body144, !dbg !6833

do.body144:                                       ; preds = %do.end143
  br label %do.cond145, !dbg !6839

do.cond145:                                       ; preds = %do.body144
  br label %do.end146, !dbg !6839

do.end146:                                        ; preds = %do.cond145
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6830
  br label %do.cond147, !dbg !6833

do.cond147:                                       ; preds = %do.end146
  br label %do.end148, !dbg !6833

do.end148:                                        ; preds = %do.cond147
  br label %do.body149, !dbg !6830

do.body149:                                       ; preds = %do.end148
  br label %do.cond150, !dbg !6841

do.cond150:                                       ; preds = %do.body149
  br label %do.end151, !dbg !6841

do.end151:                                        ; preds = %do.cond150
  br label %do.cond152, !dbg !6830

do.cond152:                                       ; preds = %do.end151
  br label %do.end153, !dbg !6830

do.end153:                                        ; preds = %do.cond152
  br label %if.end154, !dbg !6830

if.end154:                                        ; preds = %do.end153, %if.then122
  %47 = load i32, ptr %__ret_warn_on, align 4, !dbg !6828
  %tobool156 = icmp ne i32 %47, 0, !dbg !6828
  %lnot157 = xor i1 %tobool156, true, !dbg !6828
  %lnot159 = xor i1 %lnot157, true, !dbg !6828
  %lnot.ext160 = zext i1 %lnot159 to i32, !dbg !6828
  %conv161 = sext i32 %lnot.ext160 to i64, !dbg !6828
  %expval162 = call i64 @llvm.expect.i64(i64 %conv161, i64 0), !dbg !6828
  store i64 %expval162, ptr %tmp155, align 8, !dbg !6829
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6827
  %48 = load i64, ptr %tmp155, align 8, !dbg !6828
  br label %if.end163, !dbg !6827

if.end163:                                        ; preds = %if.end154, %if.end113
  %49 = load i8, ptr %__ret_do_once, align 1, !dbg !6820, !range !6065, !noundef !1282
  %tobool165 = trunc i8 %49 to i1, !dbg !6820
  %lnot166 = xor i1 %tobool165, true, !dbg !6820
  %lnot168 = xor i1 %lnot166, true, !dbg !6820
  %lnot.ext169 = zext i1 %lnot168 to i32, !dbg !6820
  %conv170 = sext i32 %lnot.ext169 to i64, !dbg !6820
  %expval171 = call i64 @llvm.expect.i64(i64 %conv170, i64 0), !dbg !6820
  store i64 %expval171, ptr %tmp164, align 8, !dbg !6827
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #10, !dbg !6843
  %50 = load i64, ptr %tmp164, align 8, !dbg !6820
  br label %sw.bb172, !dbg !6843

sw.bb172:                                         ; preds = %for.end, %for.end, %if.end163
  store i32 -37, ptr %res, align 4, !dbg !6844
  br label %sw.epilog173, !dbg !6845

sw.epilog173:                                     ; preds = %sw.bb172, %sw.bb94, %sw.bb93
  br label %out_unlock, !dbg !6846

out_unlock:                                       ; preds = %sw.epilog173, %if.then60
  call void @llvm.dbg.label(metadata !5034), !dbg !6847
  %51 = load i32, ptr %res, align 4, !dbg !6848
  %cmp174 = icmp slt i32 %51, 0, !dbg !6850
  br i1 %cmp174, label %land.lhs.true176, label %if.end186, !dbg !6851

land.lhs.true176:                                 ; preds = %out_unlock
  %52 = load ptr, ptr %fl.addr, align 8, !dbg !6852
  %fl_type177 = getelementptr inbounds %struct.file_lock, ptr %52, i32 0, i32 7, !dbg !6853
  %53 = load i8, ptr %fl_type177, align 4, !dbg !6853
  %conv178 = zext i8 %53 to i32, !dbg !6852
  %cmp179 = icmp ne i32 %conv178, 2, !dbg !6854
  br i1 %cmp179, label %if.then181, label %if.end186, !dbg !6855

if.then181:                                       ; preds = %land.lhs.true176
  %54 = load ptr, ptr %fl.addr, align 8, !dbg !6856
  %fl_type182 = getelementptr inbounds %struct.file_lock, ptr %54, i32 0, i32 7, !dbg !6858
  %55 = load i8, ptr %fl_type182, align 4, !dbg !6858
  store i8 %55, ptr %fl_type, align 1, !dbg !6859
  %56 = load ptr, ptr %fl.addr, align 8, !dbg !6860
  %fl_type183 = getelementptr inbounds %struct.file_lock, ptr %56, i32 0, i32 7, !dbg !6861
  store i8 2, ptr %fl_type183, align 4, !dbg !6862
  %57 = load ptr, ptr %filp.addr, align 8, !dbg !6863
  %58 = load ptr, ptr %fl.addr, align 8, !dbg !6864
  %call184 = call i32 @locks_lock_file_wait(ptr noundef %57, ptr noundef %58) #11, !dbg !6865
  %59 = load i8, ptr %fl_type, align 1, !dbg !6866
  %60 = load ptr, ptr %fl.addr, align 8, !dbg !6867
  %fl_type185 = getelementptr inbounds %struct.file_lock, ptr %60, i32 0, i32 7, !dbg !6868
  store i8 %59, ptr %fl_type185, align 4, !dbg !6869
  br label %if.end186, !dbg !6870

if.end186:                                        ; preds = %if.then181, %land.lhs.true176, %out_unlock
  %client_id187 = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 5, !dbg !6871
  %61 = load ptr, ptr %client_id187, align 8, !dbg !6871
  %62 = load ptr, ptr %fid, align 8, !dbg !6873
  %clnt188 = getelementptr inbounds %struct.p9_fid, ptr %62, i32 0, i32 0, !dbg !6874
  %63 = load ptr, ptr %clnt188, align 8, !dbg !6874
  %name189 = getelementptr inbounds %struct.p9_client, ptr %63, i32 0, i32 10, !dbg !6875
  %arraydecay190 = getelementptr inbounds [65 x i8], ptr %name189, i64 0, i64 0, !dbg !6873
  %cmp191 = icmp ne ptr %61, %arraydecay190, !dbg !6876
  br i1 %cmp191, label %if.then193, label %if.end195, !dbg !6877

if.then193:                                       ; preds = %if.end186
  %client_id194 = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 5, !dbg !6878
  %64 = load ptr, ptr %client_id194, align 8, !dbg !6878
  call void @kfree(ptr noundef %64) #11, !dbg !6879
  br label %if.end195, !dbg !6879

if.end195:                                        ; preds = %if.then193, %if.end186
  br label %out, !dbg !6875

out:                                              ; preds = %if.end195, %if.then36
  call void @llvm.dbg.label(metadata !5035), !dbg !6880
  %65 = load i32, ptr %res, align 4, !dbg !6881
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #10, !dbg !6882
  call void @llvm.lifetime.end.p0(i64 1, ptr %fl_type) #10, !dbg !6882
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10, !dbg !6882
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !6882
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #10, !dbg !6882
  call void @llvm.lifetime.end.p0(i64 40, ptr %flock) #10, !dbg !6882
  ret i32 %65, !dbg !6883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_file_getlock(ptr noundef %filp, ptr noundef %fl) #0 align 16 !dbg !6884 {
entry:
  %retval = alloca i32, align 4
  %filp.addr = alloca ptr, align 8
  %fl.addr = alloca ptr, align 8
  %glock = alloca %struct.p9_getlock, align 8
  %fid = alloca ptr, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !6888, metadata !DIExpression()), !dbg !6901
  store ptr %fl, ptr %fl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fl.addr, metadata !6889, metadata !DIExpression()), !dbg !6902
  call void @llvm.lifetime.start.p0(i64 40, ptr %glock) #10, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %glock, metadata !6890, metadata !DIExpression()), !dbg !6904
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #10, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !6898, metadata !DIExpression()), !dbg !6906
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10, !dbg !6907
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6899, metadata !DIExpression()), !dbg !6908
  store i32 0, ptr %res, align 4, !dbg !6908
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !6909
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6910
  %1 = load ptr, ptr %private_data, align 8, !dbg !6910
  store ptr %1, ptr %fid, align 8, !dbg !6911
  br label %do.body, !dbg !6912

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %fid, align 8, !dbg !6913
  %cmp = icmp eq ptr %2, null, !dbg !6913
  %lnot = xor i1 %cmp, true, !dbg !6913
  %lnot1 = xor i1 %lnot, true, !dbg !6913
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6913
  %conv = sext i32 %lnot.ext to i64, !dbg !6913
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6913
  %tobool = icmp ne i64 %expval, 0, !dbg !6913
  br i1 %tobool, label %if.then, label %if.end, !dbg !6916

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !6913

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !6917

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !6919

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6919

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !6917

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 230, i32 0, i64 12) #10, !dbg !6921, !srcloc !6923
  br label %do.cond5, !dbg !6921

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6921

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !6917

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !6917

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !6917

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !6916

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !6916

do.end10:                                         ; preds = %do.cond9
  %3 = load ptr, ptr %filp.addr, align 8, !dbg !6924
  %4 = load ptr, ptr %fl.addr, align 8, !dbg !6925
  call void @posix_test_lock(ptr noundef %3, ptr noundef %4) #11, !dbg !6926
  %5 = load ptr, ptr %fl.addr, align 8, !dbg !6927
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 7, !dbg !6929
  %6 = load i8, ptr %fl_type, align 4, !dbg !6929
  %conv11 = zext i8 %6 to i32, !dbg !6927
  %cmp12 = icmp ne i32 %conv11, 2, !dbg !6930
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6931

if.then14:                                        ; preds = %do.end10
  %7 = load i32, ptr %res, align 4, !dbg !6932
  store i32 %7, ptr %retval, align 4, !dbg !6933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6933

if.end15:                                         ; preds = %do.end10
  call void @llvm.memset.p0.i64(ptr align 8 %glock, i8 0, i64 40, i1 false), !dbg !6934
  %type = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 0, !dbg !6935
  store i8 2, ptr %type, align 8, !dbg !6936
  %8 = load ptr, ptr %fl.addr, align 8, !dbg !6937
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %8, i32 0, i32 12, !dbg !6938
  %9 = load i64, ptr %fl_start, align 8, !dbg !6938
  %start = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 1, !dbg !6939
  store i64 %9, ptr %start, align 8, !dbg !6940
  %10 = load ptr, ptr %fl.addr, align 8, !dbg !6941
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %10, i32 0, i32 13, !dbg !6943
  %11 = load i64, ptr %fl_end, align 8, !dbg !6943
  %cmp16 = icmp eq i64 %11, 9223372036854775807, !dbg !6944
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !6945

if.then18:                                        ; preds = %if.end15
  %length = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 2, !dbg !6946
  store i64 0, ptr %length, align 8, !dbg !6947
  br label %if.end22, !dbg !6948

if.else:                                          ; preds = %if.end15
  %12 = load ptr, ptr %fl.addr, align 8, !dbg !6949
  %fl_end19 = getelementptr inbounds %struct.file_lock, ptr %12, i32 0, i32 13, !dbg !6950
  %13 = load i64, ptr %fl_end19, align 8, !dbg !6950
  %14 = load ptr, ptr %fl.addr, align 8, !dbg !6951
  %fl_start20 = getelementptr inbounds %struct.file_lock, ptr %14, i32 0, i32 12, !dbg !6952
  %15 = load i64, ptr %fl_start20, align 8, !dbg !6952
  %sub = sub i64 %13, %15, !dbg !6953
  %add = add i64 %sub, 1, !dbg !6954
  %length21 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 2, !dbg !6955
  store i64 %add, ptr %length21, align 8, !dbg !6956
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  %16 = load ptr, ptr %fl.addr, align 8, !dbg !6957
  %fl_pid = getelementptr inbounds %struct.file_lock, ptr %16, i32 0, i32 8, !dbg !6958
  %17 = load i32, ptr %fl_pid, align 8, !dbg !6958
  %proc_id = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 3, !dbg !6959
  store i32 %17, ptr %proc_id, align 8, !dbg !6960
  %18 = load ptr, ptr %fid, align 8, !dbg !6961
  %clnt = getelementptr inbounds %struct.p9_fid, ptr %18, i32 0, i32 0, !dbg !6962
  %19 = load ptr, ptr %clnt, align 8, !dbg !6962
  %name = getelementptr inbounds %struct.p9_client, ptr %19, i32 0, i32 10, !dbg !6963
  %arraydecay = getelementptr inbounds [65 x i8], ptr %name, i64 0, i64 0, !dbg !6961
  %client_id = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 4, !dbg !6964
  store ptr %arraydecay, ptr %client_id, align 8, !dbg !6965
  %20 = load ptr, ptr %fid, align 8, !dbg !6966
  %call = call i32 @p9_client_getlock_dotl(ptr noundef %20, ptr noundef %glock) #11, !dbg !6967
  store i32 %call, ptr %res, align 4, !dbg !6968
  %21 = load i32, ptr %res, align 4, !dbg !6969
  %cmp23 = icmp slt i32 %21, 0, !dbg !6971
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !6972

if.then25:                                        ; preds = %if.end22
  br label %out, !dbg !6973

if.end26:                                         ; preds = %if.end22
  %type27 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 0, !dbg !6974
  %22 = load i8, ptr %type27, align 8, !dbg !6974
  %conv28 = zext i8 %22 to i32, !dbg !6975
  switch i32 %conv28, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb32
  ], !dbg !6976

sw.bb:                                            ; preds = %if.end26
  %23 = load ptr, ptr %fl.addr, align 8, !dbg !6977
  %fl_type29 = getelementptr inbounds %struct.file_lock, ptr %23, i32 0, i32 7, !dbg !6979
  store i8 0, ptr %fl_type29, align 4, !dbg !6980
  br label %sw.epilog, !dbg !6981

sw.bb30:                                          ; preds = %if.end26
  %24 = load ptr, ptr %fl.addr, align 8, !dbg !6982
  %fl_type31 = getelementptr inbounds %struct.file_lock, ptr %24, i32 0, i32 7, !dbg !6983
  store i8 1, ptr %fl_type31, align 4, !dbg !6984
  br label %sw.epilog, !dbg !6985

sw.bb32:                                          ; preds = %if.end26
  %25 = load ptr, ptr %fl.addr, align 8, !dbg !6986
  %fl_type33 = getelementptr inbounds %struct.file_lock, ptr %25, i32 0, i32 7, !dbg !6987
  store i8 2, ptr %fl_type33, align 4, !dbg !6988
  br label %sw.epilog, !dbg !6989

sw.epilog:                                        ; preds = %if.end26, %sw.bb32, %sw.bb30, %sw.bb
  %type34 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 0, !dbg !6990
  %26 = load i8, ptr %type34, align 8, !dbg !6990
  %conv35 = zext i8 %26 to i32, !dbg !6992
  %cmp36 = icmp ne i32 %conv35, 2, !dbg !6993
  br i1 %cmp36, label %if.then38, label %if.end56, !dbg !6994

if.then38:                                        ; preds = %sw.epilog
  %start39 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 1, !dbg !6995
  %27 = load i64, ptr %start39, align 8, !dbg !6995
  %28 = load ptr, ptr %fl.addr, align 8, !dbg !6997
  %fl_start40 = getelementptr inbounds %struct.file_lock, ptr %28, i32 0, i32 12, !dbg !6998
  store i64 %27, ptr %fl_start40, align 8, !dbg !6999
  %length41 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 2, !dbg !7000
  %29 = load i64, ptr %length41, align 8, !dbg !7000
  %cmp42 = icmp eq i64 %29, 0, !dbg !7002
  br i1 %cmp42, label %if.then44, label %if.else46, !dbg !7003

if.then44:                                        ; preds = %if.then38
  %30 = load ptr, ptr %fl.addr, align 8, !dbg !7004
  %fl_end45 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 13, !dbg !7005
  store i64 9223372036854775807, ptr %fl_end45, align 8, !dbg !7006
  br label %if.end52, !dbg !7004

if.else46:                                        ; preds = %if.then38
  %start47 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 1, !dbg !7007
  %31 = load i64, ptr %start47, align 8, !dbg !7007
  %length48 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 2, !dbg !7008
  %32 = load i64, ptr %length48, align 8, !dbg !7008
  %add49 = add i64 %31, %32, !dbg !7009
  %sub50 = sub i64 %add49, 1, !dbg !7010
  %33 = load ptr, ptr %fl.addr, align 8, !dbg !7011
  %fl_end51 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 13, !dbg !7012
  store i64 %sub50, ptr %fl_end51, align 8, !dbg !7013
  br label %if.end52

if.end52:                                         ; preds = %if.else46, %if.then44
  %proc_id53 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 3, !dbg !7014
  %34 = load i32, ptr %proc_id53, align 8, !dbg !7014
  %sub54 = sub i32 0, %34, !dbg !7015
  %35 = load ptr, ptr %fl.addr, align 8, !dbg !7016
  %fl_pid55 = getelementptr inbounds %struct.file_lock, ptr %35, i32 0, i32 8, !dbg !7017
  store i32 %sub54, ptr %fl_pid55, align 8, !dbg !7018
  br label %if.end56, !dbg !7019

if.end56:                                         ; preds = %if.end52, %sw.epilog
  br label %out, !dbg !7020

out:                                              ; preds = %if.end56, %if.then25
  call void @llvm.dbg.label(metadata !6900), !dbg !7021
  %client_id57 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 4, !dbg !7022
  %36 = load ptr, ptr %client_id57, align 8, !dbg !7022
  %37 = load ptr, ptr %fid, align 8, !dbg !7024
  %clnt58 = getelementptr inbounds %struct.p9_fid, ptr %37, i32 0, i32 0, !dbg !7025
  %38 = load ptr, ptr %clnt58, align 8, !dbg !7025
  %name59 = getelementptr inbounds %struct.p9_client, ptr %38, i32 0, i32 10, !dbg !7026
  %arraydecay60 = getelementptr inbounds [65 x i8], ptr %name59, i64 0, i64 0, !dbg !7024
  %cmp61 = icmp ne ptr %36, %arraydecay60, !dbg !7027
  br i1 %cmp61, label %if.then63, label %if.end65, !dbg !7028

if.then63:                                        ; preds = %out
  %client_id64 = getelementptr inbounds %struct.p9_getlock, ptr %glock, i32 0, i32 4, !dbg !7029
  %39 = load ptr, ptr %client_id64, align 8, !dbg !7029
  call void @kfree(ptr noundef %39) #11, !dbg !7030
  br label %if.end65, !dbg !7030

if.end65:                                         ; preds = %if.then63, %out
  %40 = load i32, ptr %res, align 4, !dbg !7031
  store i32 %40, ptr %retval, align 4, !dbg !7032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7032

cleanup:                                          ; preds = %if.end65, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10, !dbg !7033
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #10, !dbg !7033
  call void @llvm.lifetime.end.p0(i64 40, ptr %glock) #10, !dbg !7033
  %41 = load i32, ptr %retval, align 4, !dbg !7033
  ret i32 %41, !dbg !7033
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @locks_lock_file_wait(ptr noundef %filp, ptr noundef %fl) #3 align 16 !dbg !7034 {
entry:
  %filp.addr = alloca ptr, align 8
  %fl.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !7036, metadata !DIExpression()), !dbg !7038
  store ptr %fl, ptr %fl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fl.addr, metadata !7037, metadata !DIExpression()), !dbg !7039
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !7040
  %call = call ptr @file_inode(ptr noundef %0) #11, !dbg !7041
  %1 = load ptr, ptr %fl.addr, align 8, !dbg !7042
  %call1 = call i32 @locks_lock_inode_wait(ptr noundef %call, ptr noundef %1) #11, !dbg !7043
  ret i32 %call1, !dbg !7044
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7045 dso_local i32 @p9_client_lock_dotl(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7050 dso_local i64 @schedule_timeout_interruptible(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7053 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7057 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7060 dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7063 dso_local void @posix_test_lock(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7066 dso_local i32 @p9_client_getlock_dotl(ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048}
!llvm.ident = !{!5049}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "v9fs_file_operations", scope: !2, file: !3, line: 583, type: !1022, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/9p/.vfs_file.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/9p/9p\22 -D KBUILD_BASENAME=\22vfs_file\22 -D KBUILD_MODNAME=\229p\22 -D __KBUILD_MODNAME=kmod_9p -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/9p/vfs_file.ll fs/9p/vfs_file.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !271, globals: !4912, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/9p/vfs_file.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38cb812d6da755773e458e060cafa5a1")
!4 = !{!5, !13, !21, !29, !45, !50, !57, !63, !68, !74, !80, !87, !92, !100, !108, !117, !122, !127, !133, !145, !151, !158, !165, !174, !190, !202, !207, !215, !231}
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
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_trans_status", file: !159, line: 42, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/net/9p/client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7a55fe24c3aa1cf602d2a8511dd3702")
!160 = !{!161, !162, !163, !164}
!161 = !DIEnumerator(name: "Connected", value: 0)
!162 = !DIEnumerator(name: "BeginDisconnect", value: 1)
!163 = !DIEnumerator(name: "Disconnected", value: 2)
!164 = !DIEnumerator(name: "Hung", value: 3)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_cache_bits", file: !166, line: 75, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "fs/9p/v9fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "949eddcef83527ffb4cb04cde5bb993a")
!167 = !{!168, !169, !170, !171, !172, !173}
!168 = !DIEnumerator(name: "CACHE_NONE", value: 0)
!169 = !DIEnumerator(name: "CACHE_FILE", value: 1)
!170 = !DIEnumerator(name: "CACHE_META", value: 2)
!171 = !DIEnumerator(name: "CACHE_WRITEBACK", value: 4)
!172 = !DIEnumerator(name: "CACHE_LOOSE", value: 8)
!173 = !DIEnumerator(name: "CACHE_FSCACHE", value: 128)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_open_mode_t", file: !175, line: 208, baseType: !7, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/net/9p/9p.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8be44a6cf5e6d0f53abc0540cde0ebd0")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!177 = !DIEnumerator(name: "P9_OREAD", value: 0)
!178 = !DIEnumerator(name: "P9_OWRITE", value: 1)
!179 = !DIEnumerator(name: "P9_ORDWR", value: 2)
!180 = !DIEnumerator(name: "P9_OEXEC", value: 3)
!181 = !DIEnumerator(name: "P9_OTRUNC", value: 16)
!182 = !DIEnumerator(name: "P9_OREXEC", value: 32)
!183 = !DIEnumerator(name: "P9_ORCLOSE", value: 64)
!184 = !DIEnumerator(name: "P9_OAPPEND", value: 128)
!185 = !DIEnumerator(name: "P9_OEXCL", value: 4096)
!186 = !DIEnumerator(name: "P9L_MODE_MASK", value: 8191)
!187 = !DIEnumerator(name: "P9L_DIRECT", value: 8192)
!188 = !DIEnumerator(name: "P9L_NOWRITECACHE", value: 16384)
!189 = !DIEnumerator(name: "P9L_LOOSE", value: 32768)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_session_flags", file: !166, line: 33, baseType: !7, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201}
!192 = !DIEnumerator(name: "V9FS_PROTO_2000U", value: 1)
!193 = !DIEnumerator(name: "V9FS_PROTO_2000L", value: 2)
!194 = !DIEnumerator(name: "V9FS_ACCESS_SINGLE", value: 4)
!195 = !DIEnumerator(name: "V9FS_ACCESS_USER", value: 8)
!196 = !DIEnumerator(name: "V9FS_ACCESS_CLIENT", value: 16)
!197 = !DIEnumerator(name: "V9FS_POSIX_ACL", value: 32)
!198 = !DIEnumerator(name: "V9FS_NO_XATTR", value: 64)
!199 = !DIEnumerator(name: "V9FS_IGNORE_QV", value: 128)
!200 = !DIEnumerator(name: "V9FS_DIRECT_IO", value: 256)
!201 = !DIEnumerator(name: "V9FS_SYNC", value: 512)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !203, line: 10, baseType: !7, size: 32, elements: !204)
!203 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!204 = !{!205, !206}
!205 = !DIEnumerator(name: "false", value: 0)
!206 = !DIEnumerator(name: "true", value: 1)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !208, line: 119, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!209 = !{!210, !211, !212, !213, !214}
!210 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!211 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!212 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!213 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!214 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vm_fault_reason", file: !30, line: 1211, baseType: !7, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!217 = !DIEnumerator(name: "VM_FAULT_OOM", value: 1)
!218 = !DIEnumerator(name: "VM_FAULT_SIGBUS", value: 2)
!219 = !DIEnumerator(name: "VM_FAULT_MAJOR", value: 4)
!220 = !DIEnumerator(name: "VM_FAULT_HWPOISON", value: 16)
!221 = !DIEnumerator(name: "VM_FAULT_HWPOISON_LARGE", value: 32)
!222 = !DIEnumerator(name: "VM_FAULT_SIGSEGV", value: 64)
!223 = !DIEnumerator(name: "VM_FAULT_NOPAGE", value: 256)
!224 = !DIEnumerator(name: "VM_FAULT_LOCKED", value: 512)
!225 = !DIEnumerator(name: "VM_FAULT_RETRY", value: 1024)
!226 = !DIEnumerator(name: "VM_FAULT_FALLBACK", value: 2048)
!227 = !DIEnumerator(name: "VM_FAULT_DONE_COW", value: 4096)
!228 = !DIEnumerator(name: "VM_FAULT_NEEDDSYNC", value: 8192)
!229 = !DIEnumerator(name: "VM_FAULT_COMPLETED", value: 16384)
!230 = !DIEnumerator(name: "VM_FAULT_HINDEX_MASK", value: 983040)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !232, line: 100, baseType: !7, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!234 = !DIEnumerator(name: "PG_locked", value: 0)
!235 = !DIEnumerator(name: "PG_writeback", value: 1)
!236 = !DIEnumerator(name: "PG_referenced", value: 2)
!237 = !DIEnumerator(name: "PG_uptodate", value: 3)
!238 = !DIEnumerator(name: "PG_dirty", value: 4)
!239 = !DIEnumerator(name: "PG_lru", value: 5)
!240 = !DIEnumerator(name: "PG_head", value: 6)
!241 = !DIEnumerator(name: "PG_waiters", value: 7)
!242 = !DIEnumerator(name: "PG_active", value: 8)
!243 = !DIEnumerator(name: "PG_workingset", value: 9)
!244 = !DIEnumerator(name: "PG_error", value: 10)
!245 = !DIEnumerator(name: "PG_slab", value: 11)
!246 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!247 = !DIEnumerator(name: "PG_arch_1", value: 13)
!248 = !DIEnumerator(name: "PG_reserved", value: 14)
!249 = !DIEnumerator(name: "PG_private", value: 15)
!250 = !DIEnumerator(name: "PG_private_2", value: 16)
!251 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!252 = !DIEnumerator(name: "PG_reclaim", value: 18)
!253 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!254 = !DIEnumerator(name: "PG_unevictable", value: 20)
!255 = !DIEnumerator(name: "PG_mlocked", value: 21)
!256 = !DIEnumerator(name: "PG_uncached", value: 22)
!257 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!258 = !DIEnumerator(name: "PG_readahead", value: 18)
!259 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!260 = !DIEnumerator(name: "PG_checked", value: 12)
!261 = !DIEnumerator(name: "PG_swapcache", value: 12)
!262 = !DIEnumerator(name: "PG_fscache", value: 16)
!263 = !DIEnumerator(name: "PG_pinned", value: 12)
!264 = !DIEnumerator(name: "PG_savepinned", value: 4)
!265 = !DIEnumerator(name: "PG_foreign", value: 12)
!266 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!267 = !DIEnumerator(name: "PG_isolated", value: 18)
!268 = !DIEnumerator(name: "PG_reported", value: 3)
!269 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!270 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!271 = !{!272, !273, !274, !275, !276, !280, !4905, !4908, !4909, !4910, !2343}
!272 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!274 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!275 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !277, line: 52, baseType: !278)
!277 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !279, line: 88, baseType: !275)
!279 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !282)
!282 = !{!283, !4872, !4886}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !30, line: 295, baseType: !284, size: 512)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !30, line: 295, size: 512, elements: !285)
!285 = !{!286, !4871}
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !30, line: 296, baseType: !287, size: 448)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !30, line: 296, size: 448, elements: !288)
!288 = !{!289, !290, !304, !4859, !4860, !4869, !4870}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !30, line: 298, baseType: !272, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !30, line: 299, baseType: !291, size: 128, offset: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !30, line: 299, size: 128, elements: !292)
!292 = !{!293, !299}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !291, file: !30, line: 300, baseType: !294, size: 128)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !277, line: 190, size: 128, elements: !295)
!295 = !{!296, !298}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !277, line: 191, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !294, file: !277, line: 191, baseType: !297, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !30, line: 302, baseType: !300, size: 128)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !30, line: 302, size: 128, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !300, file: !30, line: 303, baseType: !273, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !300, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !287, file: !30, line: 310, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !307)
!307 = !{!308, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4853, !4854, !4855, !4856, !4857, !4858}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !306, file: !64, line: 473, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !311)
!311 = !{!312, !315, !316, !324, !325, !332, !333, !336, !337, !4683, !4684, !4685, !4686, !4687, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4727, !4735, !4736, !4737, !4746, !4747, !4748, !4749}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !310, file: !64, line: 642, baseType: !313, size: 16)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !277, line: 24, baseType: !314)
!314 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !310, file: !64, line: 643, baseType: !314, size: 16, offset: 16)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !310, file: !64, line: 644, baseType: !317, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !318, line: 23, baseType: !319)
!318 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 21, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !319, file: !318, line: 22, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !277, line: 37, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !279, line: 49, baseType: !7)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !310, file: !64, line: 645, baseType: !294, size: 128, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !310, file: !64, line: 646, baseType: !326, size: 32, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !318, line: 28, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 26, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !327, file: !318, line: 27, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !277, line: 38, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !279, line: 50, baseType: !7)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !310, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !310, file: !64, line: 650, baseType: !334, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !310, file: !64, line: 651, baseType: !334, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !310, file: !64, line: 654, baseType: !338, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !341)
!341 = !{!342, !4517, !4527, !4531, !4535, !4539, !4543, !4547, !4551, !4555, !4559, !4560, !4564, !4568, !4605, !4634, !4638, !4644, !4648, !4652, !4656, !4660, !4664, !4670, !4674}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !340, file: !64, line: 1967, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !309, !346, !7}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !348, line: 82, size: 1536, elements: !349)
!348 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!349 = !{!350, !351, !361, !369, !370, !393, !394, !398, !449, !4500, !4501, !4502, !4503, !4509, !4510, !4511}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !347, file: !348, line: 84, baseType: !7, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !347, file: !348, line: 85, baseType: !352, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !353, line: 275, baseType: !354)
!353 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !353, line: 275, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !354, file: !353, line: 275, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !353, line: 69, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !353, line: 64, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !358, file: !353, line: 65, baseType: !7, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !347, file: !348, line: 86, baseType: !362, size: 128, offset: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !363, line: 38, size: 128, elements: !364)
!363 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!364 = !{!365, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !363, line: 39, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !362, file: !363, line: 39, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !347, file: !348, line: 87, baseType: !346, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !347, file: !348, line: 88, baseType: !371, size: 128, offset: 256)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !348, line: 49, size: 128, elements: !372)
!372 = !{!373, !389}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !348, line: 50, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !348, line: 50, size: 64, elements: !375)
!375 = !{!376, !385}
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !348, line: 51, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !348, line: 51, size: 64, elements: !378)
!378 = !{!379, !384}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !377, file: !348, line: 52, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !381, line: 21, baseType: !382)
!381 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !383, line: 27, baseType: !7)
!383 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!384 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !377, file: !348, line: 52, baseType: !380, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !374, file: !348, line: 54, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !381, line: 23, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !383, line: 31, baseType: !388)
!388 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !348, line: 56, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !347, file: !348, line: 89, baseType: !309, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !347, file: !348, line: 91, baseType: !395, size: 256, offset: 448)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 256, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !347, file: !348, line: 94, baseType: !399, size: 64, offset: 704)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !400, line: 25, size: 64, elements: !401)
!400 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !400, line: 26, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !400, line: 26, size: 64, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !403, file: !400, line: 28, baseType: !387, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !400, line: 30, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !403, file: !400, line: 30, size: 64, elements: !408)
!408 = !{!409, !448}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !407, file: !400, line: 31, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !411, line: 29, baseType: !412)
!411 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !411, line: 17, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !411, line: 18, baseType: !415, size: 32)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !411, line: 18, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !415, file: !411, line: 19, baseType: !418, size: 32)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !419, line: 14, size: 32, elements: !420)
!419 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !418, file: !419, line: 15, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !423, line: 44, baseType: !424)
!423 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !423, line: 14, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !423, line: 15, baseType: !427, size: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !423, line: 15, size: 32, elements: !428)
!428 = !{!429, !434, !441}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !427, file: !423, line: 16, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !277, line: 174, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 172, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !431, file: !277, line: 173, baseType: !101, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !423, line: 24, baseType: !435, size: 16)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !423, line: 24, size: 16, elements: !436)
!436 = !{!437, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !435, file: !423, line: 25, baseType: !438, size: 8)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !381, line: 17, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !383, line: 21, baseType: !392)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !435, file: !423, line: 26, baseType: !438, size: 8, offset: 8)
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !423, line: 28, baseType: !442, size: 32)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !423, line: 28, size: 32, elements: !443)
!443 = !{!444, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !442, file: !423, line: 29, baseType: !445, size: 16)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !381, line: 19, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !383, line: 24, baseType: !314)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !442, file: !423, line: 30, baseType: !445, size: 16, offset: 16)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !407, file: !400, line: 32, baseType: !101, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !347, file: !348, line: 95, baseType: !450, size: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !348, line: 128, size: 1024, align: 512, elements: !453)
!453 = !{!454, !458, !459, !466, !475, !479, !483, !487, !488, !492, !497, !4490, !4494}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !452, file: !348, line: 129, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!101, !346, !7}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !452, file: !348, line: 130, baseType: !455, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !452, file: !348, line: 131, baseType: !460, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!101, !463, !465}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !452, file: !348, line: 132, baseType: !467, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!101, !463, !7, !470, !473}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !452, file: !348, line: 134, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!101, !463}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !452, file: !348, line: 135, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!101, !346}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !452, file: !348, line: 136, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !346}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !452, file: !348, line: 137, baseType: !484, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !452, file: !348, line: 138, baseType: !489, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !346, !309}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !452, file: !348, line: 139, baseType: !493, size: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!496, !346, !496, !101}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !452, file: !348, line: 140, baseType: !498, size: 64, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !4489}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !503, line: 70, size: 256, elements: !504)
!503 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!504 = !{!505, !506, !4485, !4486}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !502, file: !503, line: 71, baseType: !346, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !502, file: !503, line: 72, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !509)
!509 = !{!510, !511, !514, !515, !516, !517, !2369, !2521, !2561, !2646, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2663, !2667, !2668, !3133, !3136, !3194, !3197, !3198, !3199, !3240, !4418, !4419, !4420, !4421, !4422, !4423, !4426, !4428, !4435, !4436, !4437, !4438, !4439, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !508, file: !64, line: 1191, baseType: !294, size: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !508, file: !64, line: 1192, baseType: !512, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !277, line: 21, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !277, line: 18, baseType: !380)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !508, file: !64, line: 1193, baseType: !392, size: 8, offset: 160)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !508, file: !64, line: 1194, baseType: !272, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !508, file: !64, line: 1195, baseType: !276, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !508, file: !64, line: 1196, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !520)
!520 = !{!521, !522, !523, !530, !534, !538, !542, !2357, !2358, !2359, !2361, !2362, !2363, !2365, !2366, !2367, !2368}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !519, file: !64, line: 2367, baseType: !470, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !519, file: !64, line: 2368, baseType: !101, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !519, file: !64, line: 2376, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!101, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !529, line: 32, flags: DIFlagFwdDecl)
!529 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!530 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !519, file: !64, line: 2377, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !519, file: !64, line: 2378, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!346, !518, !101, !470, !273}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !519, file: !64, line: 2380, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !507}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !519, file: !64, line: 2381, baseType: !543, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !545)
!545 = !{!546, !547, !548, !552, !2016, !2042, !2043, !2044, !2045, !2049, !2052, !2053, !2054, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2122, !2126, !2146, !2164, !2165, !2166, !2167, !2176, !2199, !2200, !2203, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2217, !2218, !2318, !2326, !2327, !2328, !2330, !2334, !2335, !2339, !2340, !2341, !2342, !2344, !2345, !2346, !2353, !2354, !2355, !2356}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !544, file: !6, line: 403, baseType: !5, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !544, file: !6, line: 406, baseType: !294, size: 128, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !6, line: 409, baseType: !549, size: 448, offset: 192)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 448, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 56)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !544, file: !6, line: 417, baseType: !553, size: 768, offset: 640)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !554)
!554 = !{!555, !2009, !2010, !2011, !2014}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !553, file: !6, line: 46, baseType: !556, size: 512)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !557, line: 64, size: 512, elements: !558)
!557 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!558 = !{!559, !560, !561, !563, !609, !1893, !1999, !2004, !2005, !2006, !2007, !2008}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !556, file: !557, line: 65, baseType: !470, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !556, file: !557, line: 66, baseType: !294, size: 128, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !556, file: !557, line: 67, baseType: !562, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !556, file: !557, line: 68, baseType: !564, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !557, line: 168, size: 768, elements: !566)
!566 = !{!567, !568, !569, !570}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !565, file: !557, line: 169, baseType: !294, size: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !565, file: !557, line: 170, baseType: !410, size: 32, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !565, file: !557, line: 171, baseType: !556, size: 512, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !565, file: !557, line: 172, baseType: !571, size: 64, offset: 704)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !557, line: 133, size: 192, elements: !574)
!574 = !{!575, !582, !587}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !573, file: !557, line: 134, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!101, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !573, file: !557, line: 135, baseType: !583, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!470, !580}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !573, file: !557, line: 136, baseType: !588, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!101, !580, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !557, line: 125, size: 20736, elements: !594)
!594 = !{!595, !599, !603, !604, !608}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !593, file: !557, line: 126, baseType: !596, size: 192)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 192, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 3)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !593, file: !557, line: 127, baseType: !600, size: 4096, offset: 192)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 4096, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !593, file: !557, line: 128, baseType: !101, size: 32, offset: 4288)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !593, file: !557, line: 129, baseType: !605, size: 16384, offset: 4320)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 16384, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 2048)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !593, file: !557, line: 130, baseType: !101, size: 32, offset: 20704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !556, file: !557, line: 69, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !557, line: 116, size: 384, elements: !613)
!613 = !{!614, !618, !643, !1852, !1883, !1887}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !612, file: !557, line: 117, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !562}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !612, file: !557, line: 118, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !622, line: 254, size: 128, elements: !623)
!622 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!623 = !{!624, !636}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !621, file: !622, line: 255, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!628, !562, !631, !496}
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !277, line: 66, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !279, line: 73, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !279, line: 15, baseType: !274)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !622, line: 30, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !622, line: 31, baseType: !470, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !632, file: !622, line: 32, baseType: !313, size: 16, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !621, file: !622, line: 256, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!628, !562, !631, !470, !640}
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !277, line: 61, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !279, line: 72, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !279, line: 16, baseType: !272)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !612, file: !557, line: 119, baseType: !644, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !622, line: 84, size: 320, elements: !648)
!648 = !{!649, !650, !654, !1848, !1850}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !622, line: 85, baseType: !470, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !647, file: !622, line: 86, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!313, !562, !631, !101}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !647, file: !622, line: 88, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!313, !562, !658, !101}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !622, line: 175, size: 512, elements: !660)
!660 = !{!661, !662, !663, !664, !668, !1843, !1844}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !659, file: !622, line: 176, baseType: !632, size: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !659, file: !622, line: 177, baseType: !640, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !659, file: !622, line: 178, baseType: !273, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !659, file: !622, line: 179, baseType: !665, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!305}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !659, file: !622, line: 180, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!628, !672, !562, !658, !496, !276, !640}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !674)
!674 = !{!675, !694, !695, !697, !706, !719, !720, !721, !792, !1004, !1013, !1019, !1020, !1833, !1834, !1835, !1836, !1838, !1839, !1842}
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !64, line: 995, baseType: !676, size: 128)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !64, line: 995, size: 128, elements: !677)
!677 = !{!678, !684, !693}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !676, file: !64, line: 996, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !680, line: 60, size: 64, elements: !681)
!680 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !680, line: 61, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !676, file: !64, line: 997, baseType: !685, size: 128, align: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !277, line: 232, size: 128, align: 64, elements: !686)
!686 = !{!687, !689}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !277, line: 233, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !685, file: !277, line: 234, baseType: !690, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !688}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !676, file: !64, line: 998, baseType: !7, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !673, file: !64, line: 1005, baseType: !410, size: 32, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !673, file: !64, line: 1006, baseType: !696, size: 32, offset: 160)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !277, line: 156, baseType: !7)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !673, file: !64, line: 1007, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !699, line: 13, baseType: !700)
!699 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !277, line: 181, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 179, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !701, file: !277, line: 180, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !381, line: 22, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !383, line: 30, baseType: !275)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !673, file: !64, line: 1008, baseType: !707, size: 256, offset: 256)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !708, line: 66, size: 256, elements: !709)
!708 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!709 = !{!710, !711, !713, !718}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !707, file: !708, line: 67, baseType: !698, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !707, file: !708, line: 68, baseType: !712, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !419, line: 23, baseType: !418)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !707, file: !708, line: 70, baseType: !714, size: 32, offset: 96)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !715, line: 15, size: 32, elements: !716)
!715 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !714, file: !715, line: 20, baseType: !430, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !707, file: !708, line: 72, baseType: !294, size: 128, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !673, file: !64, line: 1009, baseType: !276, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !673, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !673, file: !64, line: 1011, baseType: !722, size: 256, offset: 640)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !723)
!723 = !{!724, !745, !788, !789, !790, !791}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !64, line: 949, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !726, line: 34, baseType: !727)
!726 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 25, size: 64, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !727, file: !726, line: 26, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !731, line: 27, baseType: !732)
!731 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !731, line: 13, size: 64, elements: !733)
!733 = !{!734, !744}
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !731, line: 14, baseType: !735, size: 32)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !731, line: 14, size: 32, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !735, file: !731, line: 15, baseType: !430, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !731, line: 16, baseType: !739, size: 32)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !731, line: 16, size: 32, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !739, file: !731, line: 18, baseType: !438, size: 8)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !739, file: !731, line: 19, baseType: !743, size: 24, offset: 8)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 24, elements: !597)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !732, file: !731, line: 26, baseType: !422, size: 32, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !722, file: !64, line: 950, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !22, line: 59, size: 768, elements: !748)
!748 = !{!749, !754, !755, !756, !769, !770, !777, !778}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !747, file: !22, line: 61, baseType: !750, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !208, line: 113, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !208, line: 111, size: 32, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !751, file: !208, line: 112, baseType: !430, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !747, file: !22, line: 62, baseType: !7, size: 32, offset: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !747, file: !22, line: 63, baseType: !410, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !747, file: !22, line: 65, baseType: !757, size: 256, offset: 128)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 256, elements: !767)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !277, line: 194, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !758, file: !277, line: 195, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !277, line: 198, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !762, file: !277, line: 199, baseType: !761, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !762, file: !277, line: 199, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!767 = !{!768}
!768 = !DISubrange(count: 4)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !747, file: !22, line: 66, baseType: !758, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !747, file: !22, line: 68, baseType: !771, size: 192, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !772, line: 41, baseType: !773)
!772 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !772, line: 37, size: 192, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !773, file: !772, line: 38, baseType: !410, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !773, file: !772, line: 39, baseType: !294, size: 128, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !747, file: !22, line: 69, baseType: !685, size: 128, align: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !747, file: !22, line: 70, baseType: !779, offset: 768)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, elements: !786)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !22, line: 54, size: 128, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !780, file: !22, line: 55, baseType: !101, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !780, file: !22, line: 56, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !22, line: 56, flags: DIFlagFwdDecl)
!786 = !{!787}
!787 = !DISubrange(count: -1)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !722, file: !64, line: 951, baseType: !21, size: 32, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !722, file: !64, line: 952, baseType: !317, size: 32, offset: 160)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !722, file: !64, line: 952, baseType: !317, size: 32, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !722, file: !64, line: 953, baseType: !101, size: 32, offset: 224)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !673, file: !64, line: 1012, baseType: !793, size: 64, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !796, line: 110, size: 1472, elements: !797)
!796 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !814, !815, !816, !817, !818, !819, !949, !950, !951, !952, !953, !984, !987, !991, !999}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !795, file: !796, line: 111, baseType: !698, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !795, file: !796, line: 112, baseType: !317, size: 32, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !795, file: !796, line: 113, baseType: !326, size: 32, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !795, file: !796, line: 114, baseType: !317, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !795, file: !796, line: 115, baseType: !326, size: 32, offset: 160)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !795, file: !796, line: 116, baseType: !317, size: 32, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !795, file: !796, line: 117, baseType: !326, size: 32, offset: 224)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !795, file: !796, line: 118, baseType: !317, size: 32, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !795, file: !796, line: 119, baseType: !326, size: 32, offset: 288)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !795, file: !796, line: 120, baseType: !7, size: 32, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !795, file: !796, line: 121, baseType: !809, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !810, line: 24, baseType: !811)
!810 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !810, line: 24, size: 64, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !811, file: !810, line: 24, baseType: !386, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !795, file: !796, line: 122, baseType: !809, size: 64, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !795, file: !796, line: 123, baseType: !809, size: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !795, file: !796, line: 124, baseType: !809, size: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !795, file: !796, line: 125, baseType: !809, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !795, file: !796, line: 127, baseType: !392, size: 8, offset: 704)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !795, file: !796, line: 129, baseType: !820, size: 64, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !822, line: 195, size: 1728, elements: !823)
!822 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!823 = !{!824, !825, !830, !842, !851, !854, !855, !862, !863, !864, !865, !868, !869, !870, !872, !873, !913, !934}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !821, file: !822, line: 196, baseType: !750, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !821, file: !822, line: 197, baseType: !826, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !822, line: 28, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !277, line: 104, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !381, line: 20, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !383, line: 26, baseType: !101)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !822, line: 198, baseType: !831, size: 192, offset: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !822, line: 198, size: 192, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !831, file: !822, line: 199, baseType: !294, size: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !831, file: !822, line: 200, baseType: !835, size: 192, align: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !836, line: 5, size: 192, align: 64, elements: !837)
!836 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!837 = !{!838, !839, !841}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !835, file: !836, line: 6, baseType: !272, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !835, file: !836, line: 7, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !835, file: !836, line: 8, baseType: !840, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !821, file: !822, line: 205, baseType: !843, size: 320, offset: 256)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !844, line: 48, size: 320, elements: !845)
!844 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!845 = !{!846, !847, !848, !849, !850}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !843, file: !844, line: 49, baseType: !698, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !843, file: !844, line: 55, baseType: !698, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !843, file: !844, line: 57, baseType: !714, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !843, file: !844, line: 59, baseType: !712, size: 32, offset: 160)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !843, file: !844, line: 60, baseType: !294, size: 128, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !821, file: !822, line: 206, baseType: !852, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !822, line: 206, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !821, file: !822, line: 207, baseType: !273, size: 64, offset: 640)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !822, line: 208, baseType: !856, size: 64, offset: 704)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !822, line: 208, size: 64, elements: !857)
!857 = !{!858, !861}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !856, file: !822, line: 209, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !860, line: 8, baseType: !705)
!860 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!861 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !856, file: !822, line: 210, baseType: !859, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !821, file: !822, line: 212, baseType: !859, size: 64, offset: 768)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !821, file: !822, line: 213, baseType: !317, size: 32, offset: 832)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !821, file: !822, line: 214, baseType: !326, size: 32, offset: 864)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !821, file: !822, line: 215, baseType: !866, size: 32, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !822, line: 31, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !277, line: 110, baseType: !380)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !821, file: !822, line: 216, baseType: !314, size: 16, offset: 928)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !821, file: !822, line: 217, baseType: !314, size: 16, offset: 944)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !821, file: !822, line: 221, baseType: !871, size: 16, offset: 960)
!871 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !822, line: 228, baseType: !272, size: 64, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !822, line: 245, baseType: !874, size: 320, offset: 1088)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !822, line: 245, size: 320, elements: !875)
!875 = !{!876, !905}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !874, file: !822, line: 246, baseType: !877, size: 320)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !822, line: 114, size: 320, elements: !878)
!878 = !{!879, !880, !892, !895, !904}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !877, file: !822, line: 116, baseType: !272, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !822, line: 117, baseType: !881, size: 64, offset: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !822, line: 117, size: 64, elements: !882)
!882 = !{!883, !891}
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !822, line: 118, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !822, line: 118, size: 64, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !884, file: !822, line: 120, baseType: !445, size: 16)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !884, file: !822, line: 121, baseType: !888, size: 48, offset: 16)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 48, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 6)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !881, file: !822, line: 127, baseType: !272, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !877, file: !822, line: 129, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !822, line: 102, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !877, file: !822, line: 130, baseType: !896, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !822, line: 108, size: 192, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !897, file: !822, line: 109, baseType: !685, size: 128, align: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !897, file: !822, line: 110, baseType: !750, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !897, file: !822, line: 111, baseType: !902, size: 8, offset: 160)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !277, line: 35, baseType: !903)
!903 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !877, file: !822, line: 131, baseType: !470, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !822, line: 247, baseType: !906, size: 320)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !822, line: 247, size: 320, elements: !907)
!907 = !{!908, !909, !910, !911, !912}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !906, file: !822, line: 248, baseType: !272, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !906, file: !822, line: 249, baseType: !272, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !906, file: !822, line: 250, baseType: !893, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !906, file: !822, line: 251, baseType: !896, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !906, file: !822, line: 252, baseType: !496, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !822, line: 260, baseType: !914, size: 256, offset: 1408)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !822, line: 260, size: 256, elements: !915)
!915 = !{!916, !922}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !914, file: !822, line: 261, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !822, line: 134, size: 256, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !917, file: !822, line: 135, baseType: !273, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !917, file: !822, line: 136, baseType: !921, size: 256)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 256, elements: !767)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !822, line: 262, baseType: !923, size: 256)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !822, line: 262, size: 256, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !923, file: !822, line: 264, baseType: !294, size: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !923, file: !822, line: 265, baseType: !927, size: 128, offset: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !928, line: 22, size: 128, elements: !929)
!928 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!929 = !{!930, !933}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !927, file: !928, line: 23, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !928, line: 23, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !927, file: !928, line: 24, baseType: !272, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !821, file: !822, line: 280, baseType: !935, size: 64, offset: 1664)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !822, line: 176, size: 192, elements: !937)
!937 = !{!938, !947, !948}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !936, file: !822, line: 177, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !822, line: 171, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!101, !820, !943, !945, !820}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !936, file: !822, line: 178, baseType: !820, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !936, file: !822, line: 179, baseType: !893, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !795, file: !796, line: 130, baseType: !820, size: 64, offset: 832)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !795, file: !796, line: 131, baseType: !820, size: 64, offset: 896)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !795, file: !796, line: 132, baseType: !820, size: 64, offset: 960)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !795, file: !796, line: 135, baseType: !273, size: 64, offset: 1024)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !795, file: !796, line: 137, baseType: !954, size: 64, offset: 1088)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !956, line: 14, size: 1088, elements: !957)
!956 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!957 = !{!958, !959, !968, !969, !970, !971, !972, !973}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !955, file: !956, line: 15, baseType: !750, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !955, file: !956, line: 17, baseType: !960, size: 320, offset: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !961, line: 22, size: 320, elements: !962)
!961 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!962 = !{!963, !964, !965, !966}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !960, file: !961, line: 23, baseType: !712, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !960, file: !961, line: 24, baseType: !704, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !960, file: !961, line: 26, baseType: !294, size: 128, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !960, file: !961, line: 28, baseType: !967, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !955, file: !956, line: 19, baseType: !272, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !955, file: !956, line: 20, baseType: !698, size: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !955, file: !956, line: 23, baseType: !762, size: 128, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !955, file: !956, line: 24, baseType: !317, size: 32, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !955, file: !956, line: 29, baseType: !698, size: 64, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !955, file: !956, line: 36, baseType: !974, size: 320, offset: 768)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !975, line: 15, size: 320, elements: !976)
!975 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!976 = !{!977, !978, !979, !980, !981, !982, !983}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !974, file: !975, line: 16, baseType: !712, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !974, file: !975, line: 18, baseType: !101, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !974, file: !975, line: 19, baseType: !101, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !974, file: !975, line: 20, baseType: !101, size: 32, offset: 96)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !974, file: !975, line: 21, baseType: !101, size: 32, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !974, file: !975, line: 22, baseType: !272, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !975, line: 23, baseType: !272, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !795, file: !796, line: 138, baseType: !985, size: 64, offset: 1152)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !318, line: 18, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !795, file: !796, line: 139, baseType: !988, size: 64, offset: 1216)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !990, line: 16, flags: DIFlagFwdDecl)
!990 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!991 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !795, file: !796, line: 140, baseType: !992, size: 64, offset: 1280)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !796, line: 25, size: 64, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !993, file: !796, line: 26, baseType: !430, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !993, file: !796, line: 27, baseType: !101, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !993, file: !796, line: 28, baseType: !998, offset: 64)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, elements: !786)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !796, line: 142, baseType: !1000, size: 128, offset: 1344)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !796, line: 142, size: 128, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1000, file: !796, line: 143, baseType: !101, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1000, file: !796, line: 144, baseType: !685, size: 128, align: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !673, file: !64, line: 1013, baseType: !1005, size: 256, offset: 960)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1005, file: !64, line: 971, baseType: !272, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1005, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1005, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1005, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1005, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1005, file: !64, line: 976, baseType: !276, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !673, file: !64, line: 1014, baseType: !1014, size: 128, offset: 1216)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1015, line: 8, size: 128, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1014, file: !1015, line: 9, baseType: !501, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1014, file: !1015, line: 10, baseType: !346, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !673, file: !64, line: 1015, baseType: !309, size: 64, offset: 1344)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !673, file: !64, line: 1016, baseType: !1021, size: 64, offset: 1408)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !1024)
!1024 = !{!1025, !1026, !1030, !1035, !1039, !1609, !1610, !1616, !1629, !1637, !1641, !1642, !1646, !1647, !1651, !1656, !1657, !1661, !1665, !1778, !1779, !1783, !1784, !1791, !1795, !1799, !1804, !1808, !1814, !1818, !1822, !1823, !1829}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1023, file: !64, line: 1915, baseType: !543, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1023, file: !64, line: 1916, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!276, !672, !276, !101}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1023, file: !64, line: 1917, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!628, !672, !496, !640, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1023, file: !64, line: 1918, baseType: !1036, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!628, !672, !470, !640, !1034}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1023, file: !64, line: 1919, baseType: !1040, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!628, !1043, !1082}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1052, !1053, !1054, !1055}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1044, file: !64, line: 374, baseType: !672, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1044, file: !64, line: 375, baseType: !276, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1044, file: !64, line: 376, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !1043, !274}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1044, file: !64, line: 377, baseType: !273, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1044, file: !64, line: 378, baseType: !101, size: 32, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1044, file: !64, line: 379, baseType: !445, size: 16, offset: 288)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !64, line: 380, baseType: !1056, size: 64, offset: 320)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !64, line: 380, size: 64, elements: !1057)
!1057 = !{!1058, !1078}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1056, file: !64, line: 386, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1061, line: 998, size: 448, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1060, file: !1061, line: 999, baseType: !280, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1060, file: !1061, line: 1000, baseType: !101, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1060, file: !1061, line: 1001, baseType: !1066, size: 320, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !772, line: 14, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !772, line: 30, size: 320, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1077}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1067, file: !772, line: 31, baseType: !7, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1067, file: !772, line: 32, baseType: !273, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1067, file: !772, line: 33, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !772, line: 16, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!101, !1076, !7, !101, !273}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1067, file: !772, line: 34, baseType: !294, size: 128, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1056, file: !64, line: 395, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!628, !273}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1084, line: 41, size: 320, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1085 = !{!1086, !1087, !1088, !1089, !1090, !1091, !1096, !1604}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1083, file: !1084, line: 42, baseType: !438, size: 8)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1083, file: !1084, line: 43, baseType: !902, size: 8, offset: 8)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1083, file: !1084, line: 44, baseType: !902, size: 8, offset: 16)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1083, file: !1084, line: 45, baseType: !902, size: 8, offset: 24)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1083, file: !1084, line: 46, baseType: !902, size: 8, offset: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !1084, line: 47, baseType: !1092, size: 64, offset: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1083, file: !1084, line: 47, size: 64, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1092, file: !1084, line: 48, baseType: !640, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1092, file: !1084, line: 49, baseType: !101, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !1084, line: 61, baseType: !1097, size: 128, offset: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1083, file: !1084, line: 61, size: 128, elements: !1098)
!1098 = !{!1099, !1105}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1097, file: !1084, line: 67, baseType: !1100, size: 128)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1101, line: 17, size: 128, elements: !1102)
!1101 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1100, file: !1101, line: 19, baseType: !273, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1100, file: !1101, line: 20, baseType: !641, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1097, file: !1084, line: 68, baseType: !1106, size: 128)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1097, file: !1084, line: 68, size: 128, elements: !1107)
!1107 = !{!1108, !1603}
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !1084, line: 69, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1084, line: 69, size: 64, elements: !1110)
!1110 = !{!1111, !1114, !1121, !1594, !1602}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1109, file: !1084, line: 71, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1109, file: !1084, line: 72, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1084, line: 17, size: 128, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1117, file: !1084, line: 18, baseType: !273, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1117, file: !1084, line: 19, baseType: !640, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1109, file: !1084, line: 73, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1125, line: 31, size: 128, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1126 = !{!1127, !1592, !1593}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1124, file: !1125, line: 32, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !1130)
!1130 = !{!1131, !1132, !1586, !1591}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !30, line: 75, baseType: !272, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !30, line: 83, baseType: !1133, size: 320, offset: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !30, line: 83, size: 320, elements: !1134)
!1134 = !{!1135, !1156, !1170, !1174, !1585}
!1135 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !30, line: 84, baseType: !1136, size: 320)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !30, line: 84, size: 320, elements: !1137)
!1137 = !{!1138, !1149, !1150, !1155}
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !30, line: 90, baseType: !1139, size: 128)
!1139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1136, file: !30, line: 90, size: 128, elements: !1140)
!1140 = !{!1141, !1142, !1147, !1148}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1139, file: !30, line: 91, baseType: !294, size: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !30, line: 94, baseType: !1143, size: 128)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1139, file: !30, line: 94, size: 128, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1143, file: !30, line: 96, baseType: !273, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1143, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1139, file: !30, line: 102, baseType: !294, size: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1139, file: !30, line: 103, baseType: !294, size: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1136, file: !30, line: 106, baseType: !305, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !30, line: 107, baseType: !1151, size: 64, offset: 192)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1136, file: !30, line: 107, size: 64, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1151, file: !30, line: 108, baseType: !272, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1151, file: !30, line: 109, baseType: !272, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1136, file: !30, line: 117, baseType: !272, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !30, line: 119, baseType: !1157, size: 320)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !30, line: 119, size: 320, elements: !1158)
!1158 = !{!1159, !1160, !1163, !1164, !1165}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1157, file: !30, line: 124, baseType: !272, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1157, file: !30, line: 125, baseType: !1161, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1157, file: !30, line: 126, baseType: !272, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1157, file: !30, line: 127, baseType: !272, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !30, line: 128, baseType: !1166, size: 64, offset: 256)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !30, line: 128, size: 64, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1166, file: !30, line: 133, baseType: !272, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1166, file: !30, line: 138, baseType: !698, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !30, line: 141, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !30, line: 141, size: 64, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1171, file: !30, line: 142, baseType: !272, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !30, line: 144, baseType: !1175, size: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !30, line: 144, size: 128, elements: !1176)
!1176 = !{!1177, !1584}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1175, file: !30, line: 146, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !1180)
!1180 = !{!1181, !1191, !1212, !1223, !1224, !1225, !1226, !1566, !1567, !1568}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1179, file: !14, line: 127, baseType: !1182, size: 384)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !1183)
!1183 = !{!1184, !1185, !1187, !1188, !1189, !1190}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1182, file: !14, line: 22, baseType: !272, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1182, file: !14, line: 23, baseType: !1186, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1182, file: !14, line: 24, baseType: !1186, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1182, file: !14, line: 25, baseType: !272, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1182, file: !14, line: 26, baseType: !272, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1182, file: !14, line: 27, baseType: !272, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1179, file: !14, line: 128, baseType: !1192, size: 128, offset: 384)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1193, line: 105, size: 128, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1192, file: !1193, line: 110, baseType: !272, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1192, file: !1193, line: 118, baseType: !1197, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1193, line: 95, size: 448, elements: !1199)
!1199 = !{!1200, !1201, !1207, !1208, !1209, !1210, !1211}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1198, file: !1193, line: 96, baseType: !698, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1198, file: !1193, line: 97, baseType: !1202, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1193, line: 60, baseType: !1204)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1198, file: !1193, line: 98, baseType: !1202, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1198, file: !1193, line: 99, baseType: !902, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1198, file: !1193, line: 100, baseType: !902, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1198, file: !1193, line: 101, baseType: !685, size: 128, align: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1198, file: !1193, line: 102, baseType: !1206, size: 64, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1179, file: !14, line: 129, baseType: !1213, size: 256, offset: 512)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1214, line: 26, size: 256, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1213, file: !1214, line: 27, baseType: !7, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1213, file: !1214, line: 28, baseType: !1218, size: 192, offset: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1219, line: 43, size: 192, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1218, file: !1219, line: 44, baseType: !712, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1218, file: !1219, line: 45, baseType: !294, size: 128, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1179, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1179, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1179, file: !14, line: 132, baseType: !272, size: 64, offset: 832)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1179, file: !14, line: 133, baseType: !1227, size: 64, offset: 896)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !1230)
!1230 = !{!1231, !1235, !1562}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1229, file: !14, line: 83, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !1128}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1229, file: !14, line: 89, baseType: !1236, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1242, line: 512, size: 896, elements: !1243)
!1242 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1243 = !{!1244, !1529, !1530, !1537, !1544, !1554, !1555, !1556, !1558, !1560}
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !1242, line: 513, baseType: !1245, size: 320)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1241, file: !1242, line: 513, size: 320, elements: !1246)
!1246 = !{!1247, !1524, !1526, !1527, !1528}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1245, file: !1242, line: 514, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !1250)
!1250 = !{!1251, !1260, !1429, !1435, !1442, !1443, !1448, !1449, !1454, !1455, !1458, !1517, !1518, !1519, !1520, !1521, !1522}
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !30, line: 628, baseType: !1252, size: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !30, line: 628, size: 128, elements: !1253)
!1253 = !{!1254, !1259}
!1254 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !30, line: 629, baseType: !1255, size: 128)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !30, line: 629, size: 128, elements: !1256)
!1256 = !{!1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1255, file: !30, line: 631, baseType: !272, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1255, file: !30, line: 632, baseType: !272, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1252, file: !30, line: 635, baseType: !685, size: 128, align: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1249, file: !30, line: 639, baseType: !1261, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !1263)
!1263 = !{!1264, !1427}
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !30, line: 734, baseType: !1265, size: 10240)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1262, file: !30, line: 734, size: 10240, elements: !1266)
!1266 = !{!1267, !1271, !1285, !1289, !1290, !1291, !1292, !1293, !1294, !1303, !1304, !1305, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1344, !1346, !1349, !1396, !1397, !1398, !1401, !1402, !1403, !1406, !1407, !1408, !1414, !1415}
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !30, line: 739, baseType: !1268, size: 512, align: 512)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !30, line: 739, size: 512, align: 512, elements: !1269)
!1269 = !{!1270}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1268, file: !30, line: 747, baseType: !430, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1265, file: !30, line: 750, baseType: !1272, size: 128, offset: 512)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1273, line: 218, size: 128, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1274 = !{!1275, !1283, !1284}
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !1273, line: 219, baseType: !1276, size: 32)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1272, file: !1273, line: 219, size: 32, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1276, file: !1273, line: 220, baseType: !410, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1276, file: !1273, line: 221, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1273, line: 197, baseType: !1281)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1273, line: 197, elements: !1282)
!1282 = !{}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1272, file: !1273, line: 223, baseType: !7, size: 32, offset: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1272, file: !1273, line: 224, baseType: !273, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1265, file: !30, line: 752, baseType: !1286, size: 64, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!272, !672, !272, !272, !272, !272}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1265, file: !30, line: 756, baseType: !272, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1265, file: !30, line: 757, baseType: !272, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1265, file: !30, line: 760, baseType: !272, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1265, file: !30, line: 761, baseType: !272, size: 64, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1265, file: !30, line: 763, baseType: !272, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1265, file: !30, line: 764, baseType: !1295, size: 64, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1297, line: 299, baseType: !1298)
!1297 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1297, line: 299, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1298, file: !1297, line: 299, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1302, line: 18, baseType: !272)
!1302 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1265, file: !30, line: 773, baseType: !430, size: 32, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1265, file: !30, line: 785, baseType: !430, size: 32, offset: 1120)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1265, file: !30, line: 795, baseType: !1306, size: 64, offset: 1152)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1307, file: !30, line: 727, baseType: !386, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1307, file: !30, line: 728, baseType: !101, size: 32, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1265, file: !30, line: 801, baseType: !272, size: 64, offset: 1216)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1265, file: !30, line: 804, baseType: !698, size: 64, offset: 1280)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1265, file: !30, line: 806, baseType: !101, size: 32, offset: 1344)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1265, file: !30, line: 808, baseType: !410, size: 32, offset: 1376)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1265, file: !30, line: 823, baseType: !843, size: 320, offset: 1408)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1265, file: !30, line: 825, baseType: !294, size: 128, offset: 1728)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1265, file: !30, line: 845, baseType: !101, size: 32, offset: 1856)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1265, file: !30, line: 849, baseType: !272, size: 64, offset: 1920)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1265, file: !30, line: 850, baseType: !272, size: 64, offset: 1984)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1265, file: !30, line: 852, baseType: !272, size: 64, offset: 2048)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1265, file: !30, line: 853, baseType: !272, size: 64, offset: 2112)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1265, file: !30, line: 854, baseType: !700, size: 64, offset: 2176)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1265, file: !30, line: 855, baseType: !272, size: 64, offset: 2240)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1265, file: !30, line: 856, baseType: !272, size: 64, offset: 2304)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1265, file: !30, line: 857, baseType: !272, size: 64, offset: 2368)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1265, file: !30, line: 858, baseType: !272, size: 64, offset: 2432)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1265, file: !30, line: 865, baseType: !357, size: 32, offset: 2496)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1265, file: !30, line: 867, baseType: !410, size: 32, offset: 2528)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1265, file: !30, line: 869, baseType: !272, size: 64, offset: 2560)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1265, file: !30, line: 869, baseType: !272, size: 64, offset: 2624)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1265, file: !30, line: 869, baseType: !272, size: 64, offset: 2688)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1265, file: !30, line: 869, baseType: !272, size: 64, offset: 2752)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1265, file: !30, line: 870, baseType: !272, size: 64, offset: 2816)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1265, file: !30, line: 870, baseType: !272, size: 64, offset: 2880)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1265, file: !30, line: 870, baseType: !272, size: 64, offset: 2944)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1265, file: !30, line: 871, baseType: !272, size: 64, offset: 3008)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1265, file: !30, line: 871, baseType: !272, size: 64, offset: 3072)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1265, file: !30, line: 871, baseType: !272, size: 64, offset: 3136)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1265, file: !30, line: 871, baseType: !272, size: 64, offset: 3200)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1265, file: !30, line: 873, baseType: !1341, size: 3328, offset: 3264)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 3328, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 52)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1265, file: !30, line: 875, baseType: !1345, size: 1280, offset: 6592)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 1280, elements: !767)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1265, file: !30, line: 877, baseType: !1347, size: 64, offset: 7872)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1265, file: !30, line: 880, baseType: !1350, size: 1088, offset: 7936)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1351, line: 72, baseType: !1352)
!1351 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1351, line: 23, size: 1088, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1361, !1362, !1363, !1364, !1391, !1392, !1393}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1352, file: !1351, line: 28, baseType: !386, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1352, file: !1351, line: 38, baseType: !700, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1352, file: !1351, line: 40, baseType: !272, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1352, file: !1351, line: 43, baseType: !843, size: 320, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1352, file: !1351, line: 44, baseType: !1359, size: 64, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1351, line: 44, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1352, file: !1351, line: 48, baseType: !272, size: 64, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !1351, line: 59, baseType: !707, size: 256, offset: 640)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1352, file: !1351, line: 60, baseType: !273, size: 64, offset: 896)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1352, file: !1351, line: 61, baseType: !1365, size: 64, offset: 960)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1368, line: 13, size: 1216, elements: !1369)
!1368 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1367, file: !1368, line: 14, baseType: !273, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1367, file: !1368, line: 15, baseType: !272, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1367, file: !1368, line: 17, baseType: !272, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1367, file: !1368, line: 17, baseType: !272, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1367, file: !1368, line: 18, baseType: !272, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1367, file: !1368, line: 18, baseType: !272, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1367, file: !1368, line: 19, baseType: !1377, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1367, file: !1368, line: 21, baseType: !274, size: 64, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1367, file: !1368, line: 23, baseType: !274, size: 64, offset: 512)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1367, file: !1368, line: 24, baseType: !274, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1367, file: !1368, line: 25, baseType: !274, size: 64, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1367, file: !1368, line: 26, baseType: !274, size: 64, offset: 704)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1367, file: !1368, line: 27, baseType: !274, size: 64, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1367, file: !1368, line: 28, baseType: !274, size: 64, offset: 832)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1367, file: !1368, line: 29, baseType: !274, size: 64, offset: 896)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1367, file: !1368, line: 30, baseType: !274, size: 64, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1367, file: !1368, line: 31, baseType: !274, size: 64, offset: 1024)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1367, file: !1368, line: 32, baseType: !274, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1367, file: !1368, line: 33, baseType: !274, size: 64, offset: 1152)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1352, file: !1351, line: 63, baseType: !430, size: 32, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1352, file: !1351, line: 69, baseType: !445, size: 16, offset: 1056)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1352, file: !1351, line: 70, baseType: !1394, size: 16, offset: 1072)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !381, line: 18, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !383, line: 23, baseType: !871)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !30, line: 882, baseType: !272, size: 64, offset: 9024)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1265, file: !30, line: 885, baseType: !410, size: 32, offset: 9088)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1265, file: !30, line: 886, baseType: !1399, size: 64, offset: 9152)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1265, file: !30, line: 901, baseType: !985, size: 64, offset: 9216)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1265, file: !30, line: 904, baseType: !672, size: 64, offset: 9280)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1265, file: !30, line: 906, baseType: !1404, size: 64, offset: 9344)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1265, file: !30, line: 930, baseType: !430, size: 32, offset: 9408)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1265, file: !30, line: 933, baseType: !430, size: 32, offset: 9440)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1265, file: !30, line: 935, baseType: !1409, size: 64, offset: 9472)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !152, line: 103, size: 64, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1409, file: !152, line: 104, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !152, line: 101, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1265, file: !30, line: 940, baseType: !698, size: 64, offset: 9536)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1265, file: !30, line: 942, baseType: !1416, size: 256, offset: 9600)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1417, line: 98, size: 256, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1416, file: !1417, line: 99, baseType: !698, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1416, file: !1417, line: 100, baseType: !294, size: 128, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1416, file: !1417, line: 101, baseType: !1422, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1417, line: 21, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1262, file: !30, line: 986, baseType: !1428, offset: 10240)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, elements: !786)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1249, file: !30, line: 640, baseType: !1430, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1297, line: 297, baseType: !1431)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1297, line: 297, size: 64, elements: !1432)
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1431, file: !1297, line: 297, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1302, line: 19, baseType: !272)
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !30, line: 646, baseType: !1436, size: 64, offset: 256)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !30, line: 646, size: 64, elements: !1437)
!1437 = !{!1438, !1441}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1436, file: !30, line: 647, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !272)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1436, file: !30, line: 648, baseType: !1440, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1249, file: !30, line: 666, baseType: !101, size: 32, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1249, file: !30, line: 667, baseType: !1444, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1445, file: !30, line: 580, baseType: !843, size: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1249, file: !30, line: 670, baseType: !902, size: 8, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1249, file: !30, line: 681, baseType: !1450, size: 256, offset: 512)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1249, file: !30, line: 678, size: 256, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1450, file: !30, line: 679, baseType: !835, size: 192, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1450, file: !30, line: 680, baseType: !272, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1249, file: !30, line: 689, baseType: !294, size: 128, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1249, file: !30, line: 691, baseType: !1456, size: 64, offset: 896)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1249, file: !30, line: 694, baseType: !1459, size: 64, offset: 960)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1242, line: 563, size: 1024, elements: !1462)
!1462 = !{!1463, !1467, !1468, !1472, !1476, !1480, !1481, !1485, !1489, !1493, !1494, !1495, !1499, !1503, !1509, !1513}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1461, file: !1242, line: 564, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !1248}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1461, file: !1242, line: 569, baseType: !1464, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1461, file: !1242, line: 571, baseType: !1469, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!101, !1248, !272}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1461, file: !1242, line: 572, baseType: !1473, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!101, !1248}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1461, file: !1242, line: 578, baseType: !1477, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!101, !1248, !272, !272, !272}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1461, file: !1242, line: 580, baseType: !1236, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1461, file: !1242, line: 581, baseType: !1482, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!1239, !1240, !7}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1461, file: !1242, line: 582, baseType: !1486, size: 64, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!1239, !1240, !272, !272}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1461, file: !1242, line: 584, baseType: !1490, size: 64, offset: 512)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!272, !1248}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1461, file: !1242, line: 588, baseType: !1236, size: 64, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1461, file: !1242, line: 591, baseType: !1236, size: 64, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1461, file: !1242, line: 597, baseType: !1496, size: 64, offset: 704)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!101, !1248, !272, !273, !101, !101}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1461, file: !1242, line: 603, baseType: !1500, size: 64, offset: 768)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!470, !1248}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1461, file: !1242, line: 613, baseType: !1504, size: 64, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!101, !1248, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !30, line: 717, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1461, file: !1242, line: 625, baseType: !1510, size: 64, offset: 896)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1507, !1248, !272}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1461, file: !1242, line: 633, baseType: !1514, size: 64, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1128, !1248, !272}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1249, file: !30, line: 697, baseType: !272, size: 64, offset: 1024)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1249, file: !30, line: 699, baseType: !672, size: 64, offset: 1088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1249, file: !30, line: 700, baseType: !273, size: 64, offset: 1152)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1249, file: !30, line: 711, baseType: !698, size: 64, offset: 1216)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1249, file: !30, line: 717, baseType: !1507, size: 64, offset: 1280)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1249, file: !30, line: 722, baseType: !1523, offset: 1344)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !1282)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1245, file: !1242, line: 515, baseType: !1525, size: 32, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !277, line: 154, baseType: !7)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1245, file: !1242, line: 516, baseType: !272, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1245, file: !1242, line: 517, baseType: !272, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1245, file: !1242, line: 518, baseType: !272, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !1242, line: 520, baseType: !29, size: 32, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1241, file: !1242, line: 522, baseType: !1531, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1302, line: 22, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1302, line: 22, size: 64, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1533, file: !1302, line: 22, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1302, line: 15, baseType: !272)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1241, file: !1242, line: 524, baseType: !1538, size: 64, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1297, line: 372, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1297, line: 372, size: 64, elements: !1541)
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1540, file: !1297, line: 372, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1302, line: 16, baseType: !272)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !1242, line: 527, baseType: !1545, size: 64, offset: 512)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1241, file: !1242, line: 527, size: 64, elements: !1546)
!1546 = !{!1547, !1553}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1545, file: !1242, line: 528, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1302, line: 21, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1302, line: 21, size: 64, elements: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1549, file: !1302, line: 21, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1302, line: 14, baseType: !272)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1545, file: !1242, line: 529, baseType: !1532, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1241, file: !1242, line: 534, baseType: !1128, size: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1241, file: !1242, line: 535, baseType: !1128, size: 64, offset: 640)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1241, file: !1242, line: 541, baseType: !1557, size: 64, offset: 704)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1241, file: !1242, line: 545, baseType: !1559, size: 64, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1241, file: !1242, line: 549, baseType: !1561, size: 64, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1297, line: 520, baseType: !1128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1229, file: !14, line: 100, baseType: !1563, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!101, !1178, !272, !272, !101}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1179, file: !14, line: 134, baseType: !273, size: 64, offset: 960)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1179, file: !14, line: 135, baseType: !101, size: 32, offset: 1024)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !14, line: 136, baseType: !1569, size: 128, offset: 1088)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !14, line: 136, size: 128, elements: !1570)
!1570 = !{!1571, !1577}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1569, file: !14, line: 137, baseType: !1572, size: 128)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1573, line: 6, size: 128, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1572, file: !1573, line: 7, baseType: !386, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1572, file: !1573, line: 8, baseType: !386, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !14, line: 138, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !14, line: 138, elements: !1579)
!1579 = !{!1580, !1582}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1578, file: !14, line: 138, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !14, line: 138, elements: !1282)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1578, file: !14, line: 138, baseType: !1583)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1572, elements: !786)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1175, file: !30, line: 147, baseType: !273, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1133, file: !30, line: 161, baseType: !685, size: 128, align: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !30, line: 164, baseType: !1587, size: 32, offset: 384)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !30, line: 164, size: 32, elements: !1588)
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1587, file: !30, line: 169, baseType: !430, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1587, file: !30, line: 177, baseType: !7, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1129, file: !30, line: 181, baseType: !430, size: 32, offset: 416)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1124, file: !1125, line: 33, baseType: !7, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1124, file: !1125, line: 34, baseType: !7, size: 32, offset: 96)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1109, file: !1084, line: 74, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1597, line: 296, size: 128, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1598 = !{!1599, !1600, !1601}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1596, file: !1597, line: 297, baseType: !410, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1596, file: !1597, line: 299, baseType: !1525, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1596, file: !1597, line: 300, baseType: !273, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1109, file: !1084, line: 75, baseType: !273, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1106, file: !1084, line: 77, baseType: !640, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !1084, line: 80, baseType: !1605, size: 64, offset: 256)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1083, file: !1084, line: 80, size: 64, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1605, file: !1084, line: 81, baseType: !272, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1605, file: !1084, line: 82, baseType: !276, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1023, file: !64, line: 1920, baseType: !1040, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1023, file: !64, line: 1921, baseType: !1611, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!101, !1043, !1614, !7}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !64, line: 53, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1023, file: !64, line: 1923, baseType: !1617, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!101, !672, !1620}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !1622)
!1622 = !{!1623, !1628}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1621, file: !64, line: 1859, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!902, !1620, !470, !101, !276, !386, !7}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1621, file: !64, line: 1860, baseType: !276, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1023, file: !64, line: 1924, baseType: !1630, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1633, !672, !1635}
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1634, line: 59, baseType: !7)
!1634 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !529, line: 31, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1023, file: !64, line: 1925, baseType: !1638, size: 64, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!274, !672, !7, !272}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1023, file: !64, line: 1926, baseType: !1638, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1023, file: !64, line: 1927, baseType: !1643, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!101, !672, !1248}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1023, file: !64, line: 1928, baseType: !272, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1023, file: !64, line: 1929, baseType: !1648, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!101, !309, !672}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1023, file: !64, line: 1930, baseType: !1652, size: 64, offset: 896)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!101, !672, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !273)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1023, file: !64, line: 1931, baseType: !1648, size: 64, offset: 960)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1023, file: !64, line: 1932, baseType: !1658, size: 64, offset: 1024)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!101, !672, !276, !276, !101}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1023, file: !64, line: 1933, baseType: !1662, size: 64, offset: 1088)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!101, !101, !672, !101}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1023, file: !64, line: 1934, baseType: !1666, size: 64, offset: 1152)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!101, !672, !101, !1669}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !1671, line: 88, size: 1728, elements: !1672)
!1671 = !DIFile(filename: "./include/linux/filelock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "341396167365df38f75a901b3ed01a3d")
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1697, !1698, !1699, !1712, !1750}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1670, file: !1671, line: 89, baseType: !1669, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1670, file: !1671, line: 90, baseType: !294, size: 128, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1670, file: !1671, line: 91, baseType: !762, size: 128, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1670, file: !1671, line: 92, baseType: !294, size: 128, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1670, file: !1671, line: 95, baseType: !294, size: 128, offset: 448)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1670, file: !1671, line: 98, baseType: !1655, size: 64, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1670, file: !1671, line: 99, baseType: !7, size: 32, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1670, file: !1671, line: 100, baseType: !392, size: 8, offset: 672)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1670, file: !1671, line: 101, baseType: !7, size: 32, offset: 704)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1670, file: !1671, line: 102, baseType: !101, size: 32, offset: 736)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1670, file: !1671, line: 103, baseType: !771, size: 192, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1670, file: !1671, line: 104, baseType: !672, size: 64, offset: 960)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1670, file: !1671, line: 105, baseType: !276, size: 64, offset: 1024)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1670, file: !1671, line: 106, baseType: !276, size: 64, offset: 1088)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1670, file: !1671, line: 108, baseType: !1688, size: 64, offset: 1152)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !64, line: 1083, size: 384, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1689, file: !64, line: 1084, baseType: !725, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1689, file: !64, line: 1085, baseType: !101, size: 32, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1689, file: !64, line: 1086, baseType: !101, size: 32, offset: 96)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1689, file: !64, line: 1087, baseType: !1688, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1689, file: !64, line: 1088, baseType: !672, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1689, file: !64, line: 1089, baseType: !685, size: 128, align: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1670, file: !1671, line: 110, baseType: !272, size: 64, offset: 1216)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1670, file: !1671, line: 111, baseType: !272, size: 64, offset: 1280)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1670, file: !1671, line: 113, baseType: !1700, size: 64, offset: 1344)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !1671, line: 31, size: 128, elements: !1703)
!1703 = !{!1704, !1708}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1702, file: !1671, line: 32, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1669, !1669}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1702, file: !1671, line: 33, baseType: !1709, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !1669}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1670, file: !1671, line: 114, baseType: !1713, size: 64, offset: 1408)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !1671, line: 36, size: 704, elements: !1716)
!1716 = !{!1717, !1718, !1722, !1726, !1727, !1731, !1735, !1739, !1744, !1745, !1746}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lm_mod_owner", scope: !1715, file: !1671, line: 37, baseType: !273, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1715, file: !1671, line: 38, baseType: !1719, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!1655, !1655}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1715, file: !1671, line: 39, baseType: !1723, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1655}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1715, file: !1671, line: 40, baseType: !1709, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1715, file: !1671, line: 41, baseType: !1728, size: 64, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!101, !1669, !101}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1715, file: !1671, line: 42, baseType: !1732, size: 64, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!902, !1669}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1715, file: !1671, line: 43, baseType: !1736, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!101, !1669, !101, !297}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1715, file: !1671, line: 44, baseType: !1740, size: 64, offset: 448)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !1669, !1743}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1715, file: !1671, line: 45, baseType: !1732, size: 64, offset: 512)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lm_lock_expirable", scope: !1715, file: !1671, line: 46, baseType: !1732, size: 64, offset: 576)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lm_expire_lock", scope: !1715, file: !1671, line: 47, baseType: !1747, size: 64, offset: 640)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1670, file: !1671, line: 126, baseType: !1751, size: 256, offset: 1472)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !1671, line: 115, size: 256, elements: !1752)
!1752 = !{!1753, !1762, !1768, !1774}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1751, file: !1671, line: 116, baseType: !1754, size: 256)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1755, line: 10, size: 256, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c146eb6cc450a23c1b61e3c824cbd799")
!1756 = !{!1757, !1758, !1761}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1754, file: !1755, line: 11, baseType: !380, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1754, file: !1755, line: 12, baseType: !1759, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1755, line: 5, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1754, file: !1755, line: 13, baseType: !294, size: 128, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1751, file: !1671, line: 117, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1755, line: 17, size: 64, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1763, file: !1755, line: 18, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1755, line: 16, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1751, file: !1671, line: 122, baseType: !1769, size: 192)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !1671, line: 118, size: 192, elements: !1770)
!1770 = !{!1771, !1772, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1769, file: !1671, line: 119, baseType: !294, size: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1769, file: !1671, line: 120, baseType: !101, size: 32, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1769, file: !1671, line: 121, baseType: !7, size: 32, offset: 160)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ceph", scope: !1751, file: !1671, line: 125, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !1671, line: 123, size: 64, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !1775, file: !1671, line: 124, baseType: !309, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1023, file: !64, line: 1935, baseType: !1286, size: 64, offset: 1216)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1023, file: !64, line: 1936, baseType: !1780, size: 64, offset: 1280)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!101, !101}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1023, file: !64, line: 1937, baseType: !1666, size: 64, offset: 1344)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1023, file: !64, line: 1938, baseType: !1785, size: 64, offset: 1408)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!628, !1788, !672, !1034, !640, !7}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1790, line: 59, flags: DIFlagFwdDecl)
!1790 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1023, file: !64, line: 1939, baseType: !1792, size: 64, offset: 1472)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!628, !672, !1034, !1788, !640, !7}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1023, file: !64, line: 1940, baseType: !1796, size: 64, offset: 1536)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !672}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1023, file: !64, line: 1941, baseType: !1800, size: 64, offset: 1600)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!101, !672, !101, !1803, !1743}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1023, file: !64, line: 1942, baseType: !1805, size: 64, offset: 1664)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!274, !672, !101, !276, !276}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1023, file: !64, line: 1944, baseType: !1809, size: 64, offset: 1728)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1812, !672}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1790, line: 66, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1023, file: !64, line: 1948, baseType: !1815, size: 64, offset: 1792)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!628, !672, !276, !672, !276, !640, !7}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1023, file: !64, line: 1950, baseType: !1819, size: 64, offset: 1856)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!276, !672, !276, !672, !276, !276, !7}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1023, file: !64, line: 1953, baseType: !1658, size: 64, offset: 1920)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1023, file: !64, line: 1954, baseType: !1824, size: 64, offset: 1984)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!101, !1827, !7}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1023, file: !64, line: 1955, baseType: !1830, size: 64, offset: 2048)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!101, !1827, !1614, !7}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !673, file: !64, line: 1018, baseType: !386, size: 64, offset: 1472)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !673, file: !64, line: 1020, baseType: !273, size: 64, offset: 1536)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !673, file: !64, line: 1023, baseType: !273, size: 64, offset: 1600)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !673, file: !64, line: 1027, baseType: !1837, size: 64, offset: 1664)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !673, file: !64, line: 1029, baseType: !305, size: 64, offset: 1728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !673, file: !64, line: 1030, baseType: !1840, size: 32, offset: 1792)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1841, line: 8, baseType: !380)
!1841 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !673, file: !64, line: 1031, baseType: !1840, size: 32, offset: 1824)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !659, file: !622, line: 182, baseType: !669, size: 64, offset: 384)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !659, file: !622, line: 184, baseType: !1845, size: 64, offset: 448)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!101, !672, !562, !658, !1248}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !647, file: !622, line: 90, baseType: !1849, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !647, file: !622, line: 91, baseType: !1851, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !612, file: !557, line: 120, baseType: !1853, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1856, !580}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1858)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !1859)
!1859 = !{!1860, !1861, !1865, !1869, !1875, !1879}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1858, file: !58, line: 40, baseType: !57, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1858, file: !58, line: 41, baseType: !1862, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!902}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1858, file: !58, line: 42, baseType: !1866, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!273}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1858, file: !58, line: 43, baseType: !1870, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!1377, !1873}
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1858, file: !58, line: 44, baseType: !1876, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1377}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1858, file: !58, line: 45, baseType: !1880, size: 64, offset: 320)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !273}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !612, file: !557, line: 121, baseType: !1884, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!1377, !580}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !612, file: !557, line: 122, baseType: !1888, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !580, !1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !556, file: !557, line: 70, baseType: !1894, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !529, line: 190, size: 1152, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1991, !1992, !1993, !1994, !1995, !1998}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1895, file: !529, line: 191, baseType: !430, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1895, file: !529, line: 192, baseType: !430, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1895, file: !529, line: 202, baseType: !1894, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1895, file: !529, line: 203, baseType: !470, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1895, file: !529, line: 205, baseType: !835, size: 192, align: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1895, file: !529, line: 207, baseType: !1377, size: 64, offset: 384)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1895, file: !529, line: 208, baseType: !7, size: 32, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !529, line: 209, baseType: !1905, size: 256, offset: 512)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1895, file: !529, line: 209, size: 256, elements: !1906)
!1906 = !{!1907, !1919, !1923}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1905, file: !529, line: 210, baseType: !1908, size: 256)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !529, line: 153, size: 256, elements: !1909)
!1909 = !{!1910, !1911, !1915, !1918}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1908, file: !529, line: 154, baseType: !272, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1908, file: !529, line: 156, baseType: !1912, size: 64, offset: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !836, line: 12, size: 64, elements: !1913)
!1913 = !{!1914}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1912, file: !836, line: 13, baseType: !840, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1908, file: !529, line: 162, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !529, line: 162, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1908, file: !529, line: 167, baseType: !272, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1905, file: !529, line: 211, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !529, line: 170, size: 64, elements: !1921)
!1921 = !{!1922}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1920, file: !529, line: 171, baseType: !1894, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1905, file: !529, line: 212, baseType: !1924, size: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !529, line: 174, size: 256, elements: !1925)
!1925 = !{!1926, !1986, !1989, !1990}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1924, file: !529, line: 175, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !529, line: 271, size: 768, elements: !1930)
!1930 = !{!1931, !1951, !1955, !1959, !1963, !1967, !1971, !1975, !1976, !1977, !1978, !1982}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1929, file: !529, line: 276, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!101, !1935}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !529, line: 251, size: 1216, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1936, file: !529, line: 253, baseType: !1894, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1936, file: !529, line: 254, baseType: !672, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1936, file: !529, line: 255, baseType: !1812, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1936, file: !529, line: 256, baseType: !273, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1936, file: !529, line: 259, baseType: !707, size: 256, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1936, file: !529, line: 260, baseType: !707, size: 256, offset: 512)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1936, file: !529, line: 261, baseType: !101, size: 32, offset: 768)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1936, file: !529, line: 262, baseType: !294, size: 128, offset: 832)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1936, file: !529, line: 263, baseType: !496, size: 64, offset: 960)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1936, file: !529, line: 265, baseType: !640, size: 64, offset: 1024)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1936, file: !529, line: 266, baseType: !902, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1936, file: !529, line: 267, baseType: !902, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1936, file: !529, line: 268, baseType: !1459, size: 64, offset: 1152)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1929, file: !529, line: 277, baseType: !1952, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !1935}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1929, file: !529, line: 290, baseType: !1956, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!101, !1812, !273}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1929, file: !529, line: 292, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!273, !1812, !1034}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1929, file: !529, line: 293, baseType: !1964, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!273, !1812, !273, !1034}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1929, file: !529, line: 294, baseType: !1968, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1812, !273}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1929, file: !529, line: 296, baseType: !1972, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!628, !1935, !496, !640, !276}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1929, file: !529, line: 306, baseType: !640, size: 64, offset: 448)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1929, file: !529, line: 313, baseType: !902, size: 8, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1929, file: !529, line: 314, baseType: !1972, size: 64, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1929, file: !529, line: 317, baseType: !1979, size: 64, offset: 640)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1633, !1935, !1635}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1929, file: !529, line: 320, baseType: !1983, size: 64, offset: 704)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!101, !1935, !1248}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1924, file: !529, line: 176, baseType: !1987, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !529, line: 35, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1924, file: !529, line: 177, baseType: !276, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1924, file: !529, line: 178, baseType: !1894, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1895, file: !529, line: 215, baseType: !273, size: 64, offset: 768)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1895, file: !529, line: 221, baseType: !386, size: 64, offset: 832)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1895, file: !529, line: 223, baseType: !314, size: 16, offset: 896)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1895, file: !529, line: 224, baseType: !313, size: 16, offset: 912)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1895, file: !529, line: 225, baseType: !1996, size: 64, offset: 960)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !529, line: 36, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1895, file: !529, line: 227, baseType: !685, size: 128, align: 64, offset: 1024)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !556, file: !557, line: 71, baseType: !2000, size: 32, offset: 448)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2001, line: 19, size: 32, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2002 = !{!2003}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2000, file: !2001, line: 20, baseType: !750, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !556, file: !557, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !556, file: !557, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !556, file: !557, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !556, file: !557, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !556, file: !557, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !553, file: !6, line: 47, baseType: !543, size: 64, offset: 512)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !553, file: !6, line: 48, baseType: !562, size: 64, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !553, file: !6, line: 49, baseType: !2012, size: 64, offset: 640)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !553, file: !6, line: 50, baseType: !2015, size: 64, offset: 704)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !544, file: !6, line: 418, baseType: !2017, size: 64, offset: 1408)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2019)
!2019 = !{!2020, !2021, !2026, !2030, !2034, !2038}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2018, file: !6, line: 54, baseType: !632, size: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2018, file: !6, line: 55, baseType: !2022, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!628, !2017, !2025, !496}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2018, file: !6, line: 57, baseType: !2027, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!628, !2017, !2025, !470, !640}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2018, file: !6, line: 59, baseType: !2031, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !543, !470}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2018, file: !6, line: 60, baseType: !2035, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!101, !543}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2018, file: !6, line: 61, baseType: !2039, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{null, !543}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !544, file: !6, line: 419, baseType: !470, size: 64, offset: 1472)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !544, file: !6, line: 420, baseType: !470, size: 64, offset: 1536)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !544, file: !6, line: 421, baseType: !562, size: 64, offset: 1600)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !544, file: !6, line: 424, baseType: !2046, size: 64, offset: 1664)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !544, file: !6, line: 425, baseType: !2050, size: 64, offset: 1728)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !544, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !544, file: !6, line: 435, baseType: !707, size: 256, offset: 1856)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !544, file: !6, line: 437, baseType: !2055, size: 64, offset: 2112)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2057, line: 69, size: 320, elements: !2058)
!2057 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2058 = !{!2059, !2060, !2061, !2078, !2080, !2084, !2085}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2056, file: !2057, line: 70, baseType: !470, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2056, file: !2057, line: 71, baseType: !543, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2056, file: !2057, line: 72, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2064)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2057, line: 47, size: 256, elements: !2065)
!2065 = !{!2066, !2067, !2073, !2077}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !2057, line: 49, baseType: !7, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2064, file: !2057, line: 51, baseType: !2068, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!101, !470, !2071}
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2056)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2064, file: !2057, line: 53, baseType: !2074, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!101, !496, !2071}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2064, file: !2057, line: 55, baseType: !1880, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2056, file: !2057, line: 73, baseType: !2079, size: 16, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2056, file: !2057, line: 74, baseType: !2081, size: 8, offset: 208)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !381, line: 16, baseType: !2082)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !383, line: 20, baseType: !2083)
!2083 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2056, file: !2057, line: 75, baseType: !438, size: 8, offset: 216)
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2056, file: !2057, line: 76, baseType: !2086, size: 64, offset: 256)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2056, file: !2057, line: 76, size: 64, elements: !2087)
!2087 = !{!2088, !2089, !2096}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2086, file: !2057, line: 77, baseType: !273, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2086, file: !2057, line: 78, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2057, line: 86, size: 128, elements: !2093)
!2093 = !{!2094, !2095}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2092, file: !2057, line: 87, baseType: !7, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2092, file: !2057, line: 88, baseType: !496, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2086, file: !2057, line: 79, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2057, line: 92, size: 256, elements: !2100)
!2100 = !{!2101, !2102, !2103, !2105, !2106}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2099, file: !2057, line: 94, baseType: !7, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2099, file: !2057, line: 95, baseType: !7, size: 32, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2099, file: !2057, line: 96, baseType: !2104, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2099, file: !2057, line: 97, baseType: !2062, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2099, file: !2057, line: 98, baseType: !273, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !544, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !544, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !544, file: !6, line: 442, baseType: !2046, size: 64, offset: 2240)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !544, file: !6, line: 443, baseType: !2050, size: 64, offset: 2304)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !544, file: !6, line: 444, baseType: !902, size: 8, offset: 2368)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !544, file: !6, line: 451, baseType: !902, size: 8, offset: 2376)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !544, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !544, file: !6, line: 455, baseType: !2115, size: 64, offset: 2432)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2117, line: 23, size: 96, elements: !2118)
!2117 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2118 = !{!2119, !2120, !2121}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2116, file: !2117, line: 24, baseType: !101, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2116, file: !2117, line: 24, baseType: !101, size: 32, offset: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2116, file: !2117, line: 24, baseType: !101, size: 32, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !544, file: !6, line: 458, baseType: !2123, size: 64, offset: 2496)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!101}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !544, file: !6, line: 460, baseType: !2127, size: 4032, align: 512, offset: 2560)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2128, size: 4032, elements: !2144)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2129)
!2129 = !{!2130, !2131, !2132}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2128, file: !6, line: 363, baseType: !273, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2128, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2128, file: !6, line: 367, baseType: !2133, size: 448, offset: 128)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2133, file: !6, line: 320, baseType: !543, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2133, file: !6, line: 321, baseType: !2137, size: 384, offset: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2138, line: 40, size: 384, elements: !2139)
!2138 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2139 = !{!2140}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2137, file: !2138, line: 41, baseType: !2141, size: 384, align: 64)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 384, align: 64, elements: !2142)
!2142 = !{!2143}
!2143 = !DISubrange(count: 2)
!2144 = !{!2145}
!2145 = !DISubrange(count: 7)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !544, file: !6, line: 463, baseType: !2147, size: 192, offset: 6592)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2148, line: 8, size: 192, elements: !2149)
!2148 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2149 = !{!2150, !2151, !2153}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2147, file: !2148, line: 10, baseType: !7, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2147, file: !2148, line: 11, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2147, file: !2148, line: 12, baseType: !2154, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2156, line: 59, size: 48, elements: !2157)
!2156 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2155, file: !2156, line: 60, baseType: !1394, size: 16)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2155, file: !2156, line: 61, baseType: !1394, size: 16, offset: 16)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2155, file: !2156, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2155, file: !2156, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2155, file: !2156, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2155, file: !2156, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !544, file: !6, line: 465, baseType: !272, size: 64, offset: 6784)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !544, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !544, file: !6, line: 470, baseType: !294, size: 128, offset: 6912)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !544, file: !6, line: 471, baseType: !2168, size: 64, offset: 7040)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2170, line: 33, size: 96, elements: !2171)
!2170 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2171 = !{!2172, !2173, !2174, !2175}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2169, file: !2170, line: 37, baseType: !101, size: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2169, file: !2170, line: 43, baseType: !101, size: 32, offset: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2169, file: !2170, line: 45, baseType: !314, size: 16, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2169, file: !2170, line: 47, baseType: !314, size: 16, offset: 80)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !544, file: !6, line: 476, baseType: !2177, size: 64, offset: 7104)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2179)
!2179 = !{!2180, !2196, !2197, !2198}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2178, file: !6, line: 379, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2183, line: 204, baseType: !2184)
!2183 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2183, line: 197, size: 192, elements: !2185)
!2185 = !{!2186, !2188, !2189, !2190, !2192, !2194}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2184, file: !2183, line: 198, baseType: !2187, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2183, line: 21, baseType: !382)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2184, file: !2183, line: 199, baseType: !392, size: 8, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2184, file: !2183, line: 200, baseType: !392, size: 8, offset: 40)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2184, file: !2183, line: 201, baseType: !2191, size: 16, offset: 48)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2183, line: 17, baseType: !446)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2184, file: !2183, line: 202, baseType: !2193, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2183, line: 16, baseType: !387)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2184, file: !2183, line: 203, baseType: !2195, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2183, line: 22, baseType: !387)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2178, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2178, file: !6, line: 381, baseType: !496, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2178, file: !6, line: 382, baseType: !496, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !544, file: !6, line: 477, baseType: !2178, size: 256, offset: 7168)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !544, file: !6, line: 480, baseType: !2201, size: 64, offset: 7424)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !544, file: !6, line: 483, baseType: !2204, size: 64, offset: 7488)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !544, file: !6, line: 488, baseType: !496, size: 64, offset: 7552)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !544, file: !6, line: 492, baseType: !273, size: 64, offset: 7616)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !544, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !544, file: !6, line: 495, baseType: !273, size: 64, offset: 7744)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !544, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !544, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !544, file: !6, line: 500, baseType: !2213, size: 64, offset: 7872)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2215, line: 45, baseType: !2216)
!2215 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !544, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !544, file: !6, line: 504, baseType: !2219, size: 64, offset: 8000)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2222, line: 96, size: 192, elements: !2223)
!2222 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2223 = !{!2224, !2225, !2279, !2282}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2221, file: !2222, line: 97, baseType: !7, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2221, file: !2222, line: 98, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2222, line: 24, size: 3072, elements: !2228)
!2228 = !{!2229, !2231, !2232, !2233, !2234, !2248, !2249, !2250, !2251, !2263, !2264, !2265, !2276, !2277, !2278}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2227, file: !2222, line: 26, baseType: !2230, size: 128)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 128, elements: !2142)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2227, file: !2222, line: 27, baseType: !2230, size: 128, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2227, file: !2222, line: 28, baseType: !101, size: 32, offset: 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2227, file: !2222, line: 31, baseType: !410, size: 32, align: 512, offset: 512)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2227, file: !2222, line: 32, baseType: !2235, size: 960, offset: 576)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2236, line: 206, size: 960, elements: !2237)
!2236 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2237 = !{!2238, !2239, !2242, !2244, !2245, !2247}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2235, file: !2236, line: 207, baseType: !688, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2235, file: !2236, line: 208, baseType: !2240, size: 256, offset: 64)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2241, size: 256, elements: !767)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2235, file: !2236, line: 209, baseType: !2243, size: 256, offset: 320)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !767)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2235, file: !2236, line: 213, baseType: !274, size: 64, offset: 576)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2235, file: !2236, line: 215, baseType: !2246, size: 256, offset: 640)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 256, elements: !767)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2235, file: !2236, line: 216, baseType: !438, size: 8, offset: 896)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2227, file: !2222, line: 33, baseType: !272, size: 64, offset: 1536)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2227, file: !2222, line: 34, baseType: !272, size: 64, offset: 1600)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2227, file: !2222, line: 35, baseType: !902, size: 8, offset: 1664)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2227, file: !2222, line: 36, baseType: !2252, size: 320, offset: 1728)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2253, line: 11, size: 320, elements: !2254)
!2253 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2254 = !{!2255, !2256, !2257, !2262}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2252, file: !2253, line: 16, baseType: !762, size: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2252, file: !2253, line: 17, baseType: !272, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2252, file: !2253, line: 18, baseType: !2258, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !2261}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2252, file: !2253, line: 19, baseType: !380, size: 32, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2227, file: !2222, line: 37, baseType: !1416, size: 256, offset: 2048)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2227, file: !2222, line: 38, baseType: !685, size: 128, align: 64, offset: 2304)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2227, file: !2222, line: 39, baseType: !2266, size: 64, offset: 2432)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2222, line: 49, size: 768, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2267, file: !2222, line: 50, baseType: !410, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2267, file: !2222, line: 51, baseType: !2243, size: 256, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2267, file: !2222, line: 53, baseType: !2243, size: 256, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2267, file: !2222, line: 54, baseType: !272, size: 64, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2267, file: !2222, line: 55, baseType: !2266, size: 64, offset: 640)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2267, file: !2222, line: 56, baseType: !101, size: 32, offset: 704)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2267, file: !2222, line: 57, baseType: !101, size: 32, offset: 736)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2227, file: !2222, line: 40, baseType: !272, size: 64, offset: 2496)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2227, file: !2222, line: 42, baseType: !101, size: 32, offset: 2560)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2227, file: !2222, line: 43, baseType: !2220, size: 64, offset: 2624)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2221, file: !2222, line: 99, baseType: !2280, offset: 128)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2281, line: 211, elements: !1282)
!2281 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2221, file: !2222, line: 100, baseType: !2283, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2222, line: 63, size: 3008, elements: !2285)
!2285 = !{!2286, !2287, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2317}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2284, file: !2222, line: 64, baseType: !2266, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2284, file: !2222, line: 65, baseType: !2288, size: 192, offset: 64)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2266, size: 192, elements: !597)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2284, file: !2222, line: 67, baseType: !101, size: 32, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2284, file: !2222, line: 68, baseType: !707, size: 256, offset: 320)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2284, file: !2222, line: 69, baseType: !410, size: 32, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2284, file: !2222, line: 70, baseType: !707, size: 256, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2284, file: !2222, line: 71, baseType: !272, size: 64, offset: 896)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2284, file: !2222, line: 72, baseType: !272, size: 64, offset: 960)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2284, file: !2222, line: 73, baseType: !272, size: 64, offset: 1024)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2284, file: !2222, line: 74, baseType: !272, size: 64, offset: 1088)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2284, file: !2222, line: 75, baseType: !272, size: 64, offset: 1152)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2284, file: !2222, line: 76, baseType: !272, size: 64, offset: 1216)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2284, file: !2222, line: 77, baseType: !272, size: 64, offset: 1280)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2284, file: !2222, line: 78, baseType: !272, size: 64, offset: 1344)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2284, file: !2222, line: 79, baseType: !902, size: 8, offset: 1408)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2284, file: !2222, line: 80, baseType: !272, size: 64, offset: 1472)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2284, file: !2222, line: 81, baseType: !707, size: 256, offset: 1536)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2284, file: !2222, line: 82, baseType: !1213, size: 256, offset: 1792)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2284, file: !2222, line: 84, baseType: !430, size: 32, offset: 2048)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2284, file: !2222, line: 87, baseType: !272, size: 64, offset: 2112)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2284, file: !2222, line: 88, baseType: !272, size: 64, offset: 2176)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2284, file: !2222, line: 89, baseType: !2309, size: 704, offset: 2240)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1417, line: 111, size: 704, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2316}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2309, file: !1417, line: 112, baseType: !1416, size: 256)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2309, file: !1417, line: 113, baseType: !2252, size: 320, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2309, file: !1417, line: 116, baseType: !2314, size: 64, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1417, line: 18, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2309, file: !1417, line: 117, baseType: !101, size: 32, offset: 640)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2284, file: !2222, line: 90, baseType: !2220, size: 64, offset: 2944)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !544, file: !6, line: 515, baseType: !2319, size: 64, offset: 8064)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2321, line: 117, size: 128, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2322 = !{!2323, !2324, !2325}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2320, file: !2321, line: 118, baseType: !828, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2320, file: !2321, line: 119, baseType: !828, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2320, file: !2321, line: 120, baseType: !274, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !544, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !544, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !544, file: !6, line: 520, baseType: !2329, size: 64, offset: 8192)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !544, file: !6, line: 523, baseType: !2331, size: 64, offset: 8256)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !544, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !544, file: !6, line: 525, baseType: !2336, size: 64, offset: 8384)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !544, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !544, file: !6, line: 533, baseType: !273, size: 64, offset: 8512)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !544, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !544, file: !6, line: 535, baseType: !2343, size: 64, offset: 8640)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !544, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !544, file: !6, line: 539, baseType: !101, size: 32, offset: 8736)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !544, file: !6, line: 540, baseType: !2347, size: 64, offset: 8768)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2349, line: 32, size: 64, elements: !2350)
!2349 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2348, file: !2349, line: 33, baseType: !828, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2348, file: !2349, line: 34, baseType: !828, size: 32, offset: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !544, file: !6, line: 563, baseType: !294, size: 128, offset: 8832)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !544, file: !6, line: 565, baseType: !294, size: 128, offset: 8960)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !544, file: !6, line: 568, baseType: !1747, size: 64, offset: 9088)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !544, file: !6, line: 570, baseType: !430, size: 32, offset: 9152)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !64, line: 2382, baseType: !518, size: 64, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !519, file: !64, line: 2383, baseType: !758, size: 64, offset: 512)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !519, file: !64, line: 2385, baseType: !2360, offset: 576)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2281, line: 206, elements: !1282)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !519, file: !64, line: 2386, baseType: !2360, offset: 576)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !519, file: !64, line: 2387, baseType: !2360, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !519, file: !64, line: 2388, baseType: !2364, offset: 576)
!2364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2360, elements: !597)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !519, file: !64, line: 2390, baseType: !2360, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !519, file: !64, line: 2391, baseType: !2360, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !519, file: !64, line: 2392, baseType: !2360, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !519, file: !64, line: 2393, baseType: !2360, offset: 576)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !508, file: !64, line: 1197, baseType: !2370, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2372)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !2373)
!2373 = !{!2374, !2378, !2382, !2383, !2387, !2411, !2415, !2416, !2417, !2421, !2425, !2429, !2430, !2431, !2437, !2441, !2442, !2446, !2447, !2448, !2449, !2453, !2457, !2504, !2519, !2520}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2372, file: !64, line: 2058, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!309, !507}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2372, file: !64, line: 2059, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !309}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2372, file: !64, line: 2060, baseType: !2379, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2372, file: !64, line: 2062, baseType: !2384, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !309, !101}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2372, file: !64, line: 2063, baseType: !2388, size: 64, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!101, !309, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !46, line: 42, size: 384, elements: !2393)
!2393 = !{!2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2392, file: !46, line: 43, baseType: !274, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2392, file: !46, line: 45, baseType: !274, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2392, file: !46, line: 52, baseType: !276, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2392, file: !46, line: 53, baseType: !276, size: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2392, file: !46, line: 55, baseType: !45, size: 32, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2392, file: !46, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2392, file: !46, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2392, file: !46, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2392, file: !46, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2392, file: !46, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2392, file: !46, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2392, file: !46, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2392, file: !46, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2392, file: !46, line: 78, baseType: !2408, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !46, line: 78, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2372, file: !64, line: 2064, baseType: !2412, size: 64, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!101, !309}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2372, file: !64, line: 2065, baseType: !2379, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2372, file: !64, line: 2066, baseType: !539, size: 64, offset: 448)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2372, file: !64, line: 2067, baseType: !2418, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!101, !507, !101}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2372, file: !64, line: 2068, baseType: !2422, size: 64, offset: 576)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!101, !507, !63}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2372, file: !64, line: 2069, baseType: !2426, size: 64, offset: 640)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!101, !507}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2372, file: !64, line: 2070, baseType: !2422, size: 64, offset: 704)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2372, file: !64, line: 2071, baseType: !2426, size: 64, offset: 768)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2372, file: !64, line: 2072, baseType: !2432, size: 64, offset: 832)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!101, !346, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2372, file: !64, line: 2073, baseType: !2438, size: 64, offset: 896)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!101, !507, !2152, !496}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2372, file: !64, line: 2074, baseType: !539, size: 64, offset: 960)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2372, file: !64, line: 2076, baseType: !2443, size: 64, offset: 1024)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!101, !1812, !346}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2372, file: !64, line: 2077, baseType: !2443, size: 64, offset: 1088)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2372, file: !64, line: 2078, baseType: !2443, size: 64, offset: 1152)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2372, file: !64, line: 2079, baseType: !2443, size: 64, offset: 1216)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2372, file: !64, line: 2081, baseType: !2450, size: 64, offset: 1280)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!628, !507, !101, !496, !640, !276}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2372, file: !64, line: 2082, baseType: !2454, size: 64, offset: 1344)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!628, !507, !101, !470, !640, !276}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2372, file: !64, line: 2083, baseType: !2458, size: 64, offset: 1408)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!2461, !309}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2489, !2490, !2491}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2463, file: !69, line: 297, baseType: !762, size: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2463, file: !69, line: 298, baseType: !294, size: 128, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2463, file: !69, line: 299, baseType: !294, size: 128, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2463, file: !69, line: 300, baseType: !294, size: 128, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2463, file: !69, line: 301, baseType: !707, size: 256, offset: 512)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2463, file: !69, line: 302, baseType: !410, size: 32, offset: 768)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2463, file: !69, line: 303, baseType: !430, size: 32, offset: 800)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2463, file: !69, line: 304, baseType: !507, size: 64, offset: 832)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2463, file: !69, line: 305, baseType: !2474, size: 64, offset: 896)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2475)
!2475 = !{!2476, !2488}
!2476 = !DIDerivedType(tag: DW_TAG_member, scope: !2474, file: !69, line: 69, baseType: !2477, size: 32)
!2477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2474, file: !69, line: 69, size: 32, elements: !2478)
!2478 = !{!2479, !2480, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2477, file: !69, line: 70, baseType: !317, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2477, file: !69, line: 71, baseType: !326, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2477, file: !69, line: 72, baseType: !2482, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2483, line: 24, baseType: !2484)
!2483 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2483, line: 22, size: 32, elements: !2485)
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2484, file: !2483, line: 23, baseType: !2487, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2483, line: 20, baseType: !323)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2474, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2463, file: !69, line: 306, baseType: !276, size: 64, offset: 960)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2463, file: !69, line: 307, baseType: !272, size: 64, offset: 1024)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2463, file: !69, line: 308, baseType: !2492, size: 576, offset: 1088)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2493)
!2493 = !{!2494, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2492, file: !69, line: 206, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !275)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2492, file: !69, line: 207, baseType: !2495, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2492, file: !69, line: 208, baseType: !2495, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2492, file: !69, line: 209, baseType: !2495, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2492, file: !69, line: 210, baseType: !2495, size: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2492, file: !69, line: 211, baseType: !2495, size: 64, offset: 320)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2492, file: !69, line: 212, baseType: !2495, size: 64, offset: 384)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2492, file: !69, line: 213, baseType: !859, size: 64, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2492, file: !69, line: 214, baseType: !859, size: 64, offset: 512)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2372, file: !64, line: 2085, baseType: !2505, size: 64, offset: 1472)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!274, !507, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2510, line: 15, size: 256, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2511 = !{!2512, !2513, !2514, !2515, !2516}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2509, file: !2510, line: 16, baseType: !1525, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2509, file: !2510, line: 19, baseType: !101, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2509, file: !2510, line: 26, baseType: !272, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2509, file: !2510, line: 33, baseType: !272, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2509, file: !2510, line: 36, baseType: !2517, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !30, line: 33, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2372, file: !64, line: 2087, baseType: !2505, size: 64, offset: 1536)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2372, file: !64, line: 2089, baseType: !539, size: 64, offset: 1600)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !508, file: !64, line: 1198, baseType: !2522, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2524)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2525)
!2525 = !{!2526, !2530, !2534, !2538, !2539, !2540, !2541, !2542, !2547, !2552, !2556}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2524, file: !69, line: 325, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!101, !2462}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2524, file: !69, line: 326, baseType: !2531, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2462, !507, !101}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2524, file: !69, line: 327, baseType: !2535, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2462}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2524, file: !69, line: 328, baseType: !2527, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2524, file: !69, line: 329, baseType: !2527, size: 64, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2524, file: !69, line: 330, baseType: !2527, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2524, file: !69, line: 331, baseType: !2418, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2524, file: !69, line: 334, baseType: !2543, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!2546, !309}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2524, file: !69, line: 335, baseType: !2548, size: 64, offset: 512)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!101, !309, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2524, file: !69, line: 337, baseType: !2553, size: 64, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!101, !309, !2546}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2524, file: !69, line: 339, baseType: !2557, size: 64, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!101, !507, !2560}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !508, file: !64, line: 1199, baseType: !2562, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2565)
!2565 = !{!2566, !2572, !2573, !2577, !2578, !2579, !2594, !2617, !2621, !2622, !2645}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2564, file: !69, line: 431, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!101, !507, !101, !101, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2564, file: !69, line: 432, baseType: !2418, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2564, file: !69, line: 433, baseType: !2574, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!101, !507, !7}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2564, file: !69, line: 434, baseType: !2574, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2564, file: !69, line: 435, baseType: !2418, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2564, file: !69, line: 436, baseType: !2580, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!101, !507, !101, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2584, file: !69, line: 418, baseType: !101, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2584, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2584, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2584, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2584, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2584, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2584, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2584, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2564, file: !69, line: 437, baseType: !2595, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!101, !507, !2474, !2598}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2599, file: !69, line: 346, baseType: !101, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2599, file: !69, line: 347, baseType: !386, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2599, file: !69, line: 348, baseType: !386, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2599, file: !69, line: 349, baseType: !386, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2599, file: !69, line: 350, baseType: !386, size: 64, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2599, file: !69, line: 351, baseType: !386, size: 64, offset: 320)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2599, file: !69, line: 352, baseType: !386, size: 64, offset: 384)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2599, file: !69, line: 353, baseType: !704, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2599, file: !69, line: 355, baseType: !704, size: 64, offset: 512)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2599, file: !69, line: 356, baseType: !101, size: 32, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2599, file: !69, line: 357, baseType: !101, size: 32, offset: 608)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2599, file: !69, line: 358, baseType: !386, size: 64, offset: 640)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2599, file: !69, line: 359, baseType: !386, size: 64, offset: 704)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2599, file: !69, line: 360, baseType: !386, size: 64, offset: 768)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2599, file: !69, line: 361, baseType: !704, size: 64, offset: 832)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2599, file: !69, line: 362, baseType: !101, size: 32, offset: 896)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2564, file: !69, line: 438, baseType: !2618, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!101, !507, !2560, !2598}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2564, file: !69, line: 440, baseType: !2595, size: 64, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2564, file: !69, line: 441, baseType: !2623, size: 64, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!101, !507, !2626}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2627, file: !69, line: 412, baseType: !7, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2627, file: !69, line: 413, baseType: !2631, size: 1344, offset: 64)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2632, size: 1344, elements: !597)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2644}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2632, file: !69, line: 398, baseType: !7, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2632, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2632, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2632, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2632, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2632, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2632, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2632, file: !69, line: 406, baseType: !388, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2632, file: !69, line: 407, baseType: !2643, size: 64, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !277, line: 132, baseType: !386)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2632, file: !69, line: 408, baseType: !2643, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2564, file: !69, line: 442, baseType: !2574, size: 64, offset: 640)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !508, file: !64, line: 1200, baseType: !2647, size: 64, offset: 576)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2649)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !508, file: !64, line: 1201, baseType: !272, size: 64, offset: 640)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !508, file: !64, line: 1202, baseType: !272, size: 64, offset: 704)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !508, file: !64, line: 1203, baseType: !272, size: 64, offset: 768)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !508, file: !64, line: 1204, baseType: !346, size: 64, offset: 832)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !508, file: !64, line: 1205, baseType: !843, size: 320, offset: 896)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !508, file: !64, line: 1206, baseType: !101, size: 32, offset: 1216)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !508, file: !64, line: 1207, baseType: !430, size: 32, offset: 1248)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !508, file: !64, line: 1209, baseType: !273, size: 64, offset: 1280)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !508, file: !64, line: 1211, baseType: !2659, size: 64, offset: 1344)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2662)
!2662 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !508, file: !64, line: 1223, baseType: !2664, size: 64, offset: 1408)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !363, line: 34, size: 64, elements: !2665)
!2665 = !{!2666}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2664, file: !363, line: 35, baseType: !366, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !508, file: !64, line: 1224, baseType: !294, size: 128, offset: 1472)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !508, file: !64, line: 1225, baseType: !2669, size: 64, offset: 1600)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2671, line: 40, size: 7424, elements: !2672)
!2671 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2672 = !{!2673, !2675, !2676, !2679, !2683, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2710, !2711}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2670, file: !2671, line: 41, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !277, line: 131, baseType: !386)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2670, file: !2671, line: 42, baseType: !2674, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2670, file: !2671, line: 43, baseType: !2677, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1790, line: 1453, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2670, file: !2671, line: 44, baseType: !2680, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2682, line: 74, flags: DIFlagFwdDecl)
!2682 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2670, file: !2671, line: 45, baseType: !2684, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2671, line: 45, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2670, file: !2671, line: 46, baseType: !272, size: 64, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2670, file: !2671, line: 47, baseType: !902, size: 8, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2670, file: !2671, line: 48, baseType: !438, size: 8, offset: 392)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2670, file: !2671, line: 49, baseType: !902, size: 8, offset: 400)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2670, file: !2671, line: 50, baseType: !902, size: 8, offset: 408)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2670, file: !2671, line: 51, baseType: !512, size: 32, offset: 416)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2670, file: !2671, line: 52, baseType: !430, size: 32, offset: 448)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2670, file: !2671, line: 53, baseType: !410, size: 32, offset: 480)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2670, file: !2671, line: 54, baseType: !309, size: 64, offset: 512)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2670, file: !2671, line: 55, baseType: !273, size: 64, offset: 576)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2670, file: !2671, line: 56, baseType: !273, size: 64, offset: 640)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2670, file: !2671, line: 57, baseType: !2698, size: 64, offset: 704)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2700)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2671, line: 57, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2670, file: !2671, line: 58, baseType: !707, size: 256, offset: 768)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2670, file: !2671, line: 60, baseType: !101, size: 32, offset: 1024)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2670, file: !2671, line: 61, baseType: !101, size: 32, offset: 1056)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2670, file: !2671, line: 62, baseType: !562, size: 64, offset: 1088)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2670, file: !2671, line: 65, baseType: !707, size: 256, offset: 1152)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2670, file: !2671, line: 66, baseType: !507, size: 64, offset: 1408)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2670, file: !2671, line: 68, baseType: !2708, size: 64, offset: 1472)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2671, line: 68, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2670, file: !2671, line: 72, baseType: !902, size: 8, offset: 1536)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2670, file: !2671, line: 77, baseType: !2712, size: 5824, offset: 1600)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !81, line: 705, size: 5824, elements: !2713)
!2713 = !{!2714, !2715, !2717, !2720, !2721, !2774, !2844, !2845, !2846, !2847, !2848, !2855, !3019, !3032, !3042, !3046, !3048, !3049, !3050, !3054, !3061, !3062, !3065, !3068, !3072, !3075, !3076, !3077, !3078, !3079, !3080, !3110, !3111, !3112, !3115, !3118, !3127, !3128, !3129, !3130, !3131, !3132}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2712, file: !81, line: 706, baseType: !556, size: 512)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2712, file: !81, line: 707, baseType: !2716, size: 64, offset: 512)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2712, file: !81, line: 709, baseType: !2718, size: 64, offset: 576)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !81, line: 37, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2712, file: !81, line: 711, baseType: !470, size: 64, offset: 640)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2712, file: !81, line: 712, baseType: !2722, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !81, line: 89, size: 384, elements: !2725)
!2725 = !{!2726, !2727, !2728, !2734, !2739, !2743}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2724, file: !81, line: 90, baseType: !470, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2724, file: !81, line: 91, baseType: !644, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2724, file: !81, line: 92, baseType: !2729, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!101, !2732, !592}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2712)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2724, file: !81, line: 93, baseType: !2735, size: 64, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!496, !2732, !2738, !1891, !1892}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2724, file: !81, line: 95, baseType: !2740, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{null, !2716}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2724, file: !81, line: 97, baseType: !2744, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2746)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !93, line: 286, size: 1472, elements: !2747)
!2747 = !{!2748, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2746, file: !93, line: 287, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!101, !2716}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2746, file: !93, line: 288, baseType: !2740, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2746, file: !93, line: 289, baseType: !2749, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2746, file: !93, line: 290, baseType: !2749, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2746, file: !93, line: 291, baseType: !2749, size: 64, offset: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2746, file: !93, line: 292, baseType: !2749, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2746, file: !93, line: 293, baseType: !2749, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2746, file: !93, line: 294, baseType: !2749, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2746, file: !93, line: 295, baseType: !2749, size: 64, offset: 512)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2746, file: !93, line: 296, baseType: !2749, size: 64, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2746, file: !93, line: 297, baseType: !2749, size: 64, offset: 640)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2746, file: !93, line: 298, baseType: !2749, size: 64, offset: 704)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2746, file: !93, line: 299, baseType: !2749, size: 64, offset: 768)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2746, file: !93, line: 300, baseType: !2749, size: 64, offset: 832)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2746, file: !93, line: 301, baseType: !2749, size: 64, offset: 896)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2746, file: !93, line: 302, baseType: !2749, size: 64, offset: 960)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2746, file: !93, line: 303, baseType: !2749, size: 64, offset: 1024)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2746, file: !93, line: 304, baseType: !2749, size: 64, offset: 1088)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2746, file: !93, line: 305, baseType: !2749, size: 64, offset: 1152)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2746, file: !93, line: 306, baseType: !2749, size: 64, offset: 1216)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2746, file: !93, line: 307, baseType: !2749, size: 64, offset: 1280)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2746, file: !93, line: 308, baseType: !2749, size: 64, offset: 1344)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2746, file: !93, line: 309, baseType: !2749, size: 64, offset: 1408)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2712, file: !81, line: 714, baseType: !2775, size: 64, offset: 768)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2777)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2778, line: 80, size: 1344, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2843}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2777, file: !2778, line: 81, baseType: !470, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2777, file: !2778, line: 82, baseType: !470, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2777, file: !2778, line: 83, baseType: !644, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2777, file: !2778, line: 84, baseType: !644, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2777, file: !2778, line: 85, baseType: !644, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2777, file: !2778, line: 87, baseType: !2786, size: 64, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!101, !2716, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !75, line: 96, size: 1152, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2802, !2806, !2807, !2808, !2809, !2810, !2818, !2819, !2820, !2821, !2822, !2823}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2790, file: !75, line: 97, baseType: !470, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2790, file: !75, line: 98, baseType: !2775, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2790, file: !75, line: 100, baseType: !543, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2790, file: !75, line: 101, baseType: !470, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2790, file: !75, line: 103, baseType: !902, size: 8, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2790, file: !75, line: 104, baseType: !74, size: 32, offset: 288)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2790, file: !75, line: 106, baseType: !2799, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !75, line: 106, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2790, file: !75, line: 107, baseType: !2803, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2805)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !75, line: 107, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2790, file: !75, line: 109, baseType: !2749, size: 64, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2790, file: !75, line: 110, baseType: !2740, size: 64, offset: 512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2790, file: !75, line: 111, baseType: !2749, size: 64, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2790, file: !75, line: 112, baseType: !2740, size: 64, offset: 640)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2790, file: !75, line: 113, baseType: !2811, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!101, !2716, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !93, line: 60, baseType: !2815)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !93, line: 58, size: 32, elements: !2816)
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2815, file: !93, line: 59, baseType: !101, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2790, file: !75, line: 114, baseType: !2749, size: 64, offset: 768)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2790, file: !75, line: 115, baseType: !644, size: 64, offset: 832)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2790, file: !75, line: 116, baseType: !644, size: 64, offset: 896)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2790, file: !75, line: 118, baseType: !2744, size: 64, offset: 960)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2790, file: !75, line: 119, baseType: !2740, size: 64, offset: 1024)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2790, file: !75, line: 121, baseType: !2824, size: 64, offset: 1088)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !75, line: 121, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2777, file: !2778, line: 88, baseType: !2729, size: 64, offset: 384)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2777, file: !2778, line: 89, baseType: !2749, size: 64, offset: 448)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2777, file: !2778, line: 90, baseType: !2740, size: 64, offset: 512)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2777, file: !2778, line: 91, baseType: !2740, size: 64, offset: 576)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2777, file: !2778, line: 92, baseType: !2740, size: 64, offset: 640)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2777, file: !2778, line: 94, baseType: !2749, size: 64, offset: 704)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2777, file: !2778, line: 95, baseType: !2749, size: 64, offset: 768)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2777, file: !2778, line: 97, baseType: !2811, size: 64, offset: 832)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2777, file: !2778, line: 98, baseType: !2749, size: 64, offset: 896)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2777, file: !2778, line: 100, baseType: !2749, size: 64, offset: 960)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2777, file: !2778, line: 102, baseType: !2749, size: 64, offset: 1024)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2777, file: !2778, line: 103, baseType: !2740, size: 64, offset: 1088)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2777, file: !2778, line: 105, baseType: !2744, size: 64, offset: 1152)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2777, file: !2778, line: 107, baseType: !2840, size: 64, offset: 1216)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2842)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2778, line: 107, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2777, file: !2778, line: 109, baseType: !902, size: 8, offset: 1280)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2712, file: !81, line: 715, baseType: !2789, size: 64, offset: 832)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2712, file: !81, line: 717, baseType: !273, size: 64, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2712, file: !81, line: 719, baseType: !273, size: 64, offset: 960)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2712, file: !81, line: 721, baseType: !707, size: 256, offset: 1024)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2712, file: !81, line: 725, baseType: !2849, size: 448, offset: 1280)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !81, line: 517, size: 448, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2854}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2849, file: !81, line: 518, baseType: !294, size: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2849, file: !81, line: 519, baseType: !294, size: 128, offset: 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2849, file: !81, line: 520, baseType: !294, size: 128, offset: 256)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2849, file: !81, line: 521, baseType: !80, size: 32, offset: 384)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2712, file: !81, line: 726, baseType: !2856, size: 2496, offset: 1728)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !93, line: 663, size: 2496, elements: !2857)
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2902, !2903, !2904, !2905, !2906, !2907, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3012, !3016}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2856, file: !93, line: 664, baseType: !2814, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2856, file: !93, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2856, file: !93, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2856, file: !93, line: 667, baseType: !902, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2856, file: !93, line: 668, baseType: !902, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2856, file: !93, line: 669, baseType: !902, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2856, file: !93, line: 670, baseType: !902, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2856, file: !93, line: 671, baseType: !902, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2856, file: !93, line: 672, baseType: !902, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2856, file: !93, line: 673, baseType: !902, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2856, file: !93, line: 674, baseType: !902, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2856, file: !93, line: 675, baseType: !380, size: 32, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2856, file: !93, line: 676, baseType: !410, size: 32, offset: 96)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2856, file: !93, line: 678, baseType: !294, size: 128, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2856, file: !93, line: 679, baseType: !1213, size: 256, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2856, file: !93, line: 680, baseType: !2874, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2876, line: 43, size: 1536, elements: !2877)
!2876 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2885, !2886, !2887, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2875, file: !2876, line: 44, baseType: !470, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2875, file: !2876, line: 45, baseType: !101, size: 32, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2875, file: !2876, line: 46, baseType: !294, size: 128, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2875, file: !2876, line: 47, baseType: !410, size: 32, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2875, file: !2876, line: 48, baseType: !2883, size: 64, offset: 320)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !93, line: 629, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2875, file: !2876, line: 49, baseType: !2252, size: 320, offset: 384)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2875, file: !2876, line: 50, baseType: !272, size: 64, offset: 704)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2875, file: !2876, line: 51, baseType: !2888, size: 64, offset: 768)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2889, line: 29, baseType: !704)
!2889 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2875, file: !2876, line: 52, baseType: !2888, size: 64, offset: 832)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2875, file: !2876, line: 53, baseType: !2888, size: 64, offset: 896)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2875, file: !2876, line: 54, baseType: !2888, size: 64, offset: 960)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2875, file: !2876, line: 55, baseType: !2888, size: 64, offset: 1024)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2875, file: !2876, line: 56, baseType: !272, size: 64, offset: 1088)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2875, file: !2876, line: 57, baseType: !272, size: 64, offset: 1152)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2875, file: !2876, line: 58, baseType: !272, size: 64, offset: 1216)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2875, file: !2876, line: 59, baseType: !272, size: 64, offset: 1280)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2875, file: !2876, line: 60, baseType: !272, size: 64, offset: 1344)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2875, file: !2876, line: 61, baseType: !2716, size: 64, offset: 1408)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2875, file: !2876, line: 62, baseType: !902, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2875, file: !2876, line: 63, baseType: !902, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2856, file: !93, line: 681, baseType: !902, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2856, file: !93, line: 682, baseType: !902, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2856, file: !93, line: 683, baseType: !902, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2856, file: !93, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2856, file: !93, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2856, file: !93, line: 690, baseType: !2908, size: 512, offset: 640)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !88, line: 118, size: 512, elements: !2909)
!2909 = !{!2910, !2916, !2917, !2922, !2974, !2975, !2976, !2977}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2908, file: !88, line: 119, baseType: !2911, size: 256)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2912, line: 9, size: 256, elements: !2913)
!2912 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2911, file: !2912, line: 10, baseType: !835, size: 192, align: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2911, file: !2912, line: 11, baseType: !2888, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2908, file: !88, line: 120, baseType: !2888, size: 64, offset: 256)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2908, file: !88, line: 121, baseType: !2918, size: 64, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!87, !2921}
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2908, file: !88, line: 122, baseType: !2923, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !88, line: 159, size: 512, align: 512, elements: !2925)
!2925 = !{!2926, !2951, !2952, !2955, !2960, !2961, !2969, !2973}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2924, file: !88, line: 160, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !88, line: 215, size: 4608, align: 512, elements: !2929)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2928, file: !88, line: 216, baseType: !712, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2928, file: !88, line: 217, baseType: !7, size: 32, offset: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2928, file: !88, line: 218, baseType: !7, size: 32, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2928, file: !88, line: 219, baseType: !7, size: 32, offset: 96)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2928, file: !88, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2928, file: !88, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2928, file: !88, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2928, file: !88, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2928, file: !88, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2928, file: !88, line: 226, baseType: !7, size: 32, offset: 160)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2928, file: !88, line: 227, baseType: !314, size: 16, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2928, file: !88, line: 228, baseType: !314, size: 16, offset: 208)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2928, file: !88, line: 229, baseType: !7, size: 32, offset: 224)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2928, file: !88, line: 235, baseType: !2888, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2928, file: !88, line: 236, baseType: !2921, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2928, file: !88, line: 237, baseType: !2888, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2928, file: !88, line: 238, baseType: !2921, size: 64, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2928, file: !88, line: 239, baseType: !2948, size: 4096, align: 512, offset: 512)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2924, size: 4096, align: 512, elements: !2949)
!2949 = !{!2950}
!2950 = !DISubrange(count: 8)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2924, file: !88, line: 161, baseType: !7, size: 32, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2924, file: !88, line: 162, baseType: !2953, size: 32, offset: 96)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !277, line: 32, baseType: !2954)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !279, line: 96, baseType: !101)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2924, file: !88, line: 163, baseType: !2956, size: 32, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !353, line: 274, baseType: !2957)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !353, line: 274, size: 32, elements: !2958)
!2958 = !{!2959}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2957, file: !353, line: 274, baseType: !357, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2924, file: !88, line: 164, baseType: !2921, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2924, file: !88, line: 165, baseType: !2962, size: 128, offset: 256)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2912, line: 14, size: 128, elements: !2963)
!2963 = !{!2964}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2962, file: !2912, line: 15, baseType: !2965, size: 128)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !836, line: 26, size: 128, elements: !2966)
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2965, file: !836, line: 27, baseType: !1912, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2965, file: !836, line: 28, baseType: !840, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2924, file: !88, line: 166, baseType: !2970, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!2888}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2924, file: !88, line: 167, baseType: !2888, size: 64, offset: 448)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2908, file: !88, line: 123, baseType: !438, size: 8, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2908, file: !88, line: 124, baseType: !438, size: 8, offset: 456)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2908, file: !88, line: 125, baseType: !438, size: 8, offset: 464)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2908, file: !88, line: 126, baseType: !438, size: 8, offset: 472)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2856, file: !93, line: 691, baseType: !386, size: 64, offset: 1152)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2856, file: !93, line: 692, baseType: !1416, size: 256, offset: 1216)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2856, file: !93, line: 693, baseType: !771, size: 192, offset: 1472)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2856, file: !93, line: 694, baseType: !2883, size: 64, offset: 1664)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2856, file: !93, line: 695, baseType: !430, size: 32, offset: 1728)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2856, file: !93, line: 696, baseType: !430, size: 32, offset: 1760)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2856, file: !93, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2856, file: !93, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2856, file: !93, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2856, file: !93, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2856, file: !93, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2856, file: !93, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2856, file: !93, line: 703, baseType: !902, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2856, file: !93, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2856, file: !93, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2856, file: !93, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2856, file: !93, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2856, file: !93, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2856, file: !93, line: 709, baseType: !7, size: 32, offset: 1824)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2856, file: !93, line: 710, baseType: !92, size: 32, offset: 1856)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2856, file: !93, line: 711, baseType: !100, size: 32, offset: 1888)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2856, file: !93, line: 712, baseType: !100, size: 32, offset: 1920)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2856, file: !93, line: 713, baseType: !101, size: 32, offset: 1952)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2856, file: !93, line: 714, baseType: !101, size: 32, offset: 1984)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2856, file: !93, line: 715, baseType: !386, size: 64, offset: 2048)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2856, file: !93, line: 716, baseType: !386, size: 64, offset: 2112)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2856, file: !93, line: 717, baseType: !386, size: 64, offset: 2176)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2856, file: !93, line: 718, baseType: !386, size: 64, offset: 2240)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2856, file: !93, line: 720, baseType: !3007, size: 64, offset: 2304)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !93, line: 632, size: 64, elements: !3009)
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3008, file: !93, line: 633, baseType: !410, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3008, file: !93, line: 634, baseType: !7, size: 32, offset: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2856, file: !93, line: 721, baseType: !3013, size: 64, offset: 2368)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !2716, !828}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2856, file: !93, line: 722, baseType: !3017, size: 64, offset: 2432)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !93, line: 722, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2712, file: !81, line: 727, baseType: !3020, size: 64, offset: 4224)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !93, line: 742, size: 1792, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3029, !3030, !3031}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3021, file: !93, line: 743, baseType: !2746, size: 1472)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3021, file: !93, line: 744, baseType: !2749, size: 64, offset: 1472)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3021, file: !93, line: 745, baseType: !3026, size: 64, offset: 1536)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !2716, !902}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3021, file: !93, line: 746, baseType: !2749, size: 64, offset: 1600)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3021, file: !93, line: 747, baseType: !2740, size: 64, offset: 1664)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3021, file: !93, line: 748, baseType: !2740, size: 64, offset: 1728)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2712, file: !81, line: 736, baseType: !3033, size: 128, offset: 4288)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !81, line: 529, size: 128, elements: !3034)
!3034 = !{!3035, !3039}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3033, file: !81, line: 531, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3038, line: 13, flags: DIFlagFwdDecl)
!3038 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3033, file: !81, line: 532, baseType: !3040, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !81, line: 49, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2712, file: !81, line: 738, baseType: !3043, size: 64, offset: 4416)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3045)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !81, line: 738, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2712, file: !81, line: 740, baseType: !3047, size: 64, offset: 4480)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2712, file: !81, line: 741, baseType: !386, size: 64, offset: 4544)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2712, file: !81, line: 746, baseType: !386, size: 64, offset: 4608)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2712, file: !81, line: 747, baseType: !3051, size: 64, offset: 4672)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3053)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !81, line: 747, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2712, file: !81, line: 749, baseType: !3055, size: 64, offset: 4736)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !81, line: 428, size: 128, elements: !3057)
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3056, file: !81, line: 433, baseType: !7, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3056, file: !81, line: 434, baseType: !7, size: 32, offset: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3056, file: !81, line: 435, baseType: !272, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2712, file: !81, line: 751, baseType: !294, size: 128, offset: 4800)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2712, file: !81, line: 762, baseType: !3063, size: 64, offset: 4928)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !81, line: 762, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2712, file: !81, line: 770, baseType: !3066, offset: 4992)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3067, line: 5, elements: !1282)
!3067 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2712, file: !81, line: 772, baseType: !3069, size: 64, offset: 4992)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3071, line: 18, flags: DIFlagFwdDecl)
!3071 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2712, file: !81, line: 773, baseType: !3073, size: 64, offset: 5056)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2778, line: 22, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2712, file: !81, line: 776, baseType: !101, size: 32, offset: 5120)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2712, file: !81, line: 778, baseType: !512, size: 32, offset: 5152)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2712, file: !81, line: 779, baseType: !380, size: 32, offset: 5184)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2712, file: !81, line: 781, baseType: !410, size: 32, offset: 5216)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2712, file: !81, line: 782, baseType: !294, size: 128, offset: 5248)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2712, file: !81, line: 784, baseType: !3081, size: 64, offset: 5376)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3083)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3084, line: 52, size: 768, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3094, !3098, !3099, !3100, !3101, !3105, !3109}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3083, file: !3084, line: 53, baseType: !470, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3083, file: !3084, line: 55, baseType: !644, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3083, file: !3084, line: 56, baseType: !644, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3083, file: !3084, line: 58, baseType: !2729, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3083, file: !3084, line: 59, baseType: !3091, size: 64, offset: 256)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!496, !2732, !2738}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3083, file: !3084, line: 61, baseType: !3095, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !3081}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3083, file: !3084, line: 62, baseType: !2740, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3083, file: !3084, line: 64, baseType: !2749, size: 64, offset: 448)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3083, file: !3084, line: 66, baseType: !1856, size: 64, offset: 512)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3083, file: !3084, line: 67, baseType: !3102, size: 64, offset: 576)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!1377, !2732}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3083, file: !3084, line: 69, baseType: !3106, size: 64, offset: 640)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !2732, !1891, !1892}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3083, file: !3084, line: 71, baseType: !2744, size: 64, offset: 704)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2712, file: !81, line: 785, baseType: !644, size: 64, offset: 5440)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2712, file: !81, line: 787, baseType: !2740, size: 64, offset: 5504)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2712, file: !81, line: 788, baseType: !3113, size: 64, offset: 5568)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !81, line: 46, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2712, file: !81, line: 789, baseType: !3116, size: 64, offset: 5632)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !81, line: 48, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2712, file: !81, line: 791, baseType: !3119, size: 64, offset: 5696)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !81, line: 597, size: 128, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3120, file: !81, line: 598, baseType: !108, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3120, file: !81, line: 599, baseType: !117, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3120, file: !81, line: 600, baseType: !122, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3120, file: !81, line: 601, baseType: !902, size: 8, offset: 96)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3120, file: !81, line: 602, baseType: !902, size: 8, offset: 104)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2712, file: !81, line: 793, baseType: !127, size: 32, offset: 5760)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2712, file: !81, line: 795, baseType: !902, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2712, file: !81, line: 796, baseType: !902, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2712, file: !81, line: 797, baseType: !902, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2712, file: !81, line: 798, baseType: !902, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2712, file: !81, line: 799, baseType: !902, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !508, file: !64, line: 1226, baseType: !3134, size: 64, offset: 1664)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !64, line: 1226, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !508, file: !64, line: 1227, baseType: !3137, size: 64, offset: 1728)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !134, line: 163, size: 6848, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3186, !3187, !3188, !3189, !3191, !3192, !3193}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3138, file: !134, line: 164, baseType: !386, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3138, file: !134, line: 165, baseType: !835, size: 192, align: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3138, file: !134, line: 166, baseType: !294, size: 128, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3138, file: !134, line: 167, baseType: !272, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3138, file: !134, line: 168, baseType: !272, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3138, file: !134, line: 170, baseType: !2000, size: 32, offset: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3138, file: !134, line: 171, baseType: !7, size: 32, offset: 544)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3138, file: !134, line: 172, baseType: !7, size: 32, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3138, file: !134, line: 173, baseType: !7, size: 32, offset: 608)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3138, file: !134, line: 173, baseType: !7, size: 32, offset: 640)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3138, file: !134, line: 179, baseType: !698, size: 64, offset: 704)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3138, file: !134, line: 184, baseType: !272, size: 64, offset: 768)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3138, file: !134, line: 186, baseType: !3153, size: 4672, offset: 832)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !134, line: 105, size: 4672, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3179, !3180, !3181, !3182, !3183, !3184, !3185}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3153, file: !134, line: 106, baseType: !3137, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3153, file: !134, line: 108, baseType: !272, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3153, file: !134, line: 109, baseType: !272, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3153, file: !134, line: 111, baseType: !294, size: 128, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3153, file: !134, line: 112, baseType: !294, size: 128, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3153, file: !134, line: 113, baseType: !294, size: 128, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3153, file: !134, line: 114, baseType: !294, size: 128, offset: 576)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3153, file: !134, line: 115, baseType: !410, size: 32, offset: 704)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3153, file: !134, line: 117, baseType: !430, size: 32, offset: 736)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3153, file: !134, line: 118, baseType: !1345, size: 1280, offset: 768)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3153, file: !134, line: 120, baseType: !272, size: 64, offset: 2048)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3153, file: !134, line: 121, baseType: !272, size: 64, offset: 2112)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3153, file: !134, line: 122, baseType: !272, size: 64, offset: 2176)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3153, file: !134, line: 123, baseType: !272, size: 64, offset: 2240)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3153, file: !134, line: 124, baseType: !272, size: 64, offset: 2304)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3153, file: !134, line: 132, baseType: !272, size: 64, offset: 2368)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3153, file: !134, line: 133, baseType: !272, size: 64, offset: 2432)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3153, file: !134, line: 135, baseType: !3173, size: 384, offset: 2496)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3174, line: 76, size: 384, elements: !3175)
!3174 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3173, file: !3174, line: 78, baseType: !960, size: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3173, file: !3174, line: 80, baseType: !7, size: 32, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3173, file: !3174, line: 81, baseType: !712, size: 32, offset: 352)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3153, file: !134, line: 136, baseType: !101, size: 32, offset: 2880)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3153, file: !134, line: 137, baseType: !133, size: 32, offset: 2912)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3153, file: !134, line: 139, baseType: !410, size: 32, offset: 2944)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3153, file: !134, line: 140, baseType: !294, size: 128, offset: 3008)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3153, file: !134, line: 141, baseType: !2309, size: 704, offset: 3136)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3153, file: !134, line: 142, baseType: !2309, size: 704, offset: 3840)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3153, file: !134, line: 144, baseType: !294, size: 128, offset: 4544)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3138, file: !134, line: 187, baseType: !294, size: 128, offset: 5504)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3138, file: !134, line: 193, baseType: !771, size: 192, offset: 5632)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3138, file: !134, line: 195, baseType: !2716, size: 64, offset: 5824)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3138, file: !134, line: 196, baseType: !3190, size: 512, offset: 5888)
!3190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 512, elements: !601)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3138, file: !134, line: 197, baseType: !2716, size: 64, offset: 6400)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3138, file: !134, line: 199, baseType: !2252, size: 320, offset: 6464)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3138, file: !134, line: 202, baseType: !346, size: 64, offset: 6784)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !508, file: !64, line: 1228, baseType: !3195, size: 64, offset: 1792)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !508, file: !64, line: 1229, baseType: !762, size: 128, offset: 1856)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !508, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !508, file: !64, line: 1231, baseType: !3200, size: 2496, offset: 2048)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3206, !3238}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3200, file: !69, line: 522, baseType: !7, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3200, file: !69, line: 523, baseType: !843, size: 320, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3200, file: !69, line: 524, baseType: !3205, size: 192, offset: 384)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 192, elements: !597)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3200, file: !69, line: 525, baseType: !3207, size: 1728, offset: 576)
!3207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3208, size: 1728, elements: !597)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !3209)
!3209 = !{!3210, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3208, file: !69, line: 223, baseType: !3211, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !3213)
!3213 = !{!3214, !3215, !3228, !3229}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3212, file: !69, line: 446, baseType: !101, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3212, file: !69, line: 447, baseType: !3216, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3218)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3218, file: !69, line: 313, baseType: !2418, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3218, file: !69, line: 314, baseType: !2418, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3218, file: !69, line: 315, baseType: !2418, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3218, file: !69, line: 316, baseType: !2418, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3218, file: !69, line: 317, baseType: !2527, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3218, file: !69, line: 318, baseType: !2527, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3218, file: !69, line: 319, baseType: !2527, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3218, file: !69, line: 320, baseType: !2557, size: 64, offset: 448)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3212, file: !69, line: 448, baseType: !543, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3212, file: !69, line: 449, baseType: !3211, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3208, file: !69, line: 224, baseType: !101, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3208, file: !69, line: 226, baseType: !294, size: 128, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3208, file: !69, line: 227, baseType: !272, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3208, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3208, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3208, file: !69, line: 230, baseType: !2495, size: 64, offset: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3208, file: !69, line: 231, baseType: !2495, size: 64, offset: 448)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3208, file: !69, line: 232, baseType: !273, size: 64, offset: 512)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3200, file: !69, line: 526, baseType: !3239, size: 192, offset: 2304)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3216, size: 192, elements: !597)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !508, file: !64, line: 1233, baseType: !3241, size: 2368, offset: 4544)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3241, file: !64, line: 1185, baseType: !314, size: 16)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3241, file: !64, line: 1186, baseType: !314, size: 16, offset: 16)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3241, file: !64, line: 1187, baseType: !3246, size: 2304, offset: 64)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3247, size: 2304, elements: !597)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3248, line: 12, size: 768, elements: !3249)
!3248 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3249 = !{!3250, !3258, !3259, !4416, !4417}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3247, file: !3248, line: 13, baseType: !3251, size: 384)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3252, line: 17, size: 384, elements: !3253)
!3252 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3253 = !{!3254, !3255, !3256, !3257}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3251, file: !3252, line: 18, baseType: !101, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3251, file: !3252, line: 19, baseType: !101, size: 32, offset: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3251, file: !3252, line: 20, baseType: !771, size: 192, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3251, file: !3252, line: 22, baseType: !685, size: 128, align: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3247, file: !3248, line: 14, baseType: !2104, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3247, file: !3248, line: 15, baseType: !3260, size: 64, offset: 448)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3261, line: 16, size: 64, elements: !3262)
!3261 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3262 = !{!3263}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3260, file: !3261, line: 17, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1790, line: 746, size: 58368, elements: !3266)
!3266 = !{!3267, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3347, !3358, !3378, !3382, !3385, !3416, !3417, !3418, !3419, !3430, !3432, !3433, !3434, !3435, !3436, !3437, !3448, !3449, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3466, !3467, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3555, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3603, !3609, !3610, !3611, !3612, !3613, !3617, !3620, !3627, !3632, !3635, !3638, !3641, !3695, !3833, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3871, !3872, !3873, !3882, !3890, !3891, !3892, !3893, !3894, !3899, !3900, !3901, !3904, !3905, !3908, !3911, !3914, !3921, !3924, !3925, !4011, !4012, !4013, !4014, !4015, !4021, !4022, !4023, !4024, !4027, !4028, !4031, !4034, !4035, !4038, !4039, !4040, !4043, !4044, !4045, !4046, !4047, !4048, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4080, !4081, !4087, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4169, !4171, !4172, !4173, !4174, !4175, !4176, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4193, !4194, !4195}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3265, file: !1790, line: 752, baseType: !3268, size: 192)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3269, line: 56, size: 192, elements: !3270)
!3269 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3270 = !{!3271, !3272, !3273, !3274}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3268, file: !3269, line: 57, baseType: !272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3268, file: !3269, line: 58, baseType: !272, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3268, file: !3269, line: 59, baseType: !380, size: 32, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3268, file: !3269, line: 61, baseType: !380, size: 32, offset: 160)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3265, file: !1790, line: 754, baseType: !7, size: 32, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3265, file: !1790, line: 767, baseType: !273, size: 64, offset: 256)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3265, file: !1790, line: 768, baseType: !750, size: 32, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3265, file: !1790, line: 770, baseType: !7, size: 32, offset: 352)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3265, file: !1790, line: 771, baseType: !7, size: 32, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3265, file: !1790, line: 774, baseType: !101, size: 32, offset: 416)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3265, file: !1790, line: 775, baseType: !3282, size: 128, offset: 448)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3283, line: 58, size: 128, elements: !3284)
!3283 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3284 = !{!3285, !3286, !3291, !3292}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3282, file: !3283, line: 59, baseType: !679, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3282, file: !3283, line: 60, baseType: !3287, size: 32, offset: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3282, file: !3283, line: 60, size: 32, elements: !3288)
!3288 = !{!3289, !3290}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3287, file: !3283, line: 61, baseType: !7, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3287, file: !3283, line: 62, baseType: !430, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3282, file: !3283, line: 65, baseType: !445, size: 16, offset: 96)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3282, file: !3283, line: 65, baseType: !445, size: 16, offset: 112)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3265, file: !1790, line: 776, baseType: !7, size: 32, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3265, file: !1790, line: 777, baseType: !272, size: 64, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3265, file: !1790, line: 778, baseType: !3264, size: 64, offset: 704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3265, file: !1790, line: 787, baseType: !101, size: 32, offset: 768)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3265, file: !1790, line: 788, baseType: !101, size: 32, offset: 800)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3265, file: !1790, line: 790, baseType: !101, size: 32, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3265, file: !1790, line: 792, baseType: !101, size: 32, offset: 864)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3265, file: !1790, line: 793, baseType: !101, size: 32, offset: 896)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3265, file: !1790, line: 794, baseType: !101, size: 32, offset: 928)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3265, file: !1790, line: 795, baseType: !7, size: 32, offset: 960)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3265, file: !1790, line: 797, baseType: !3304, size: 2048, offset: 1024)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1790, line: 551, size: 2048, elements: !3305)
!3305 = !{!3306, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3326, !3329, !3330, !3331}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3304, file: !1790, line: 553, baseType: !3307, size: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1790, line: 411, size: 128, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3307, file: !1790, line: 412, baseType: !272, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3307, file: !1790, line: 413, baseType: !380, size: 32, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3304, file: !1790, line: 554, baseType: !835, size: 192, align: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3304, file: !1790, line: 555, baseType: !386, size: 64, offset: 320)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3304, file: !1790, line: 556, baseType: !386, size: 64, offset: 384)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3304, file: !1790, line: 558, baseType: !294, size: 128, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3304, file: !1790, line: 559, baseType: !7, size: 32, offset: 576)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3304, file: !1790, line: 561, baseType: !386, size: 64, offset: 640)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3304, file: !1790, line: 562, baseType: !386, size: 64, offset: 704)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3304, file: !1790, line: 563, baseType: !386, size: 64, offset: 768)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3304, file: !1790, line: 564, baseType: !386, size: 64, offset: 832)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3304, file: !1790, line: 565, baseType: !704, size: 64, offset: 896)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3304, file: !1790, line: 566, baseType: !386, size: 64, offset: 960)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3304, file: !1790, line: 568, baseType: !386, size: 64, offset: 1024)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3304, file: !1790, line: 571, baseType: !101, size: 32, offset: 1088)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3304, file: !1790, line: 572, baseType: !3325, size: 64, offset: 1152)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3304, file: !1790, line: 574, baseType: !3327, size: 64, offset: 1216)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1790, line: 49, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3304, file: !1790, line: 576, baseType: !3327, size: 64, offset: 1280)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3304, file: !1790, line: 578, baseType: !272, size: 64, offset: 1344)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3304, file: !1790, line: 588, baseType: !3332, size: 512, align: 512, offset: 1536)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1790, line: 497, size: 512, align: 512, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3332, file: !1790, line: 498, baseType: !386, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3332, file: !1790, line: 499, baseType: !386, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3332, file: !1790, line: 500, baseType: !386, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3332, file: !1790, line: 501, baseType: !380, size: 32, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3332, file: !1790, line: 502, baseType: !380, size: 32, offset: 224)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3332, file: !1790, line: 503, baseType: !272, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3332, file: !1790, line: 504, baseType: !272, size: 64, offset: 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3332, file: !1790, line: 505, baseType: !272, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3332, file: !1790, line: 506, baseType: !3343, size: 64, align: 64, offset: 448)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1790, line: 445, size: 64, align: 64, elements: !3344)
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3343, file: !1790, line: 446, baseType: !7, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3343, file: !1790, line: 447, baseType: !7, size: 32, offset: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3265, file: !1790, line: 798, baseType: !3348, size: 384, offset: 3072)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1790, line: 592, size: 384, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3348, file: !1790, line: 593, baseType: !294, size: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3348, file: !1790, line: 594, baseType: !272, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3348, file: !1790, line: 595, baseType: !272, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3348, file: !1790, line: 596, baseType: !7, size: 32, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3348, file: !1790, line: 597, baseType: !314, size: 16, offset: 288)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3348, file: !1790, line: 598, baseType: !314, size: 16, offset: 304)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3348, file: !1790, line: 600, baseType: !3357, size: 64, offset: 320)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3265, file: !1790, line: 799, baseType: !3359, size: 1792, offset: 3456)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1790, line: 610, size: 1792, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3359, file: !1790, line: 611, baseType: !835, size: 192, align: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3359, file: !1790, line: 618, baseType: !386, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3359, file: !1790, line: 619, baseType: !386, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3359, file: !1790, line: 620, baseType: !386, size: 64, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3359, file: !1790, line: 621, baseType: !386, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3359, file: !1790, line: 622, baseType: !386, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3359, file: !1790, line: 629, baseType: !704, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3359, file: !1790, line: 630, baseType: !386, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3359, file: !1790, line: 631, baseType: !7, size: 32, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3359, file: !1790, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3359, file: !1790, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3359, file: !1790, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3359, file: !1790, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3359, file: !1790, line: 662, baseType: !2908, size: 512, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3359, file: !1790, line: 671, baseType: !2908, size: 512, offset: 1216)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3359, file: !1790, line: 679, baseType: !3377, size: 64, offset: 1728)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3265, file: !1790, line: 800, baseType: !3379, size: 64, offset: 5248)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3381)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1790, line: 800, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3265, file: !1790, line: 809, baseType: !3383, size: 64, offset: 5312)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1790, line: 70, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3265, file: !1790, line: 825, baseType: !3386, size: 2048, align: 512, offset: 5632)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1790, line: 509, size: 2048, align: 512, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3386, file: !1790, line: 511, baseType: !386, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3386, file: !1790, line: 512, baseType: !386, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3386, file: !1790, line: 513, baseType: !386, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3386, file: !1790, line: 514, baseType: !386, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3386, file: !1790, line: 515, baseType: !386, size: 64, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3386, file: !1790, line: 516, baseType: !386, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3386, file: !1790, line: 518, baseType: !386, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3386, file: !1790, line: 519, baseType: !386, size: 64, offset: 448)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3386, file: !1790, line: 520, baseType: !704, size: 64, offset: 512)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3386, file: !1790, line: 522, baseType: !386, size: 64, offset: 576)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3386, file: !1790, line: 523, baseType: !386, size: 64, offset: 640)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3386, file: !1790, line: 524, baseType: !704, size: 64, offset: 704)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3386, file: !1790, line: 526, baseType: !704, size: 64, offset: 768)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3386, file: !1790, line: 527, baseType: !386, size: 64, offset: 832)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3386, file: !1790, line: 529, baseType: !386, size: 64, offset: 896)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3386, file: !1790, line: 530, baseType: !386, size: 64, offset: 960)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3386, file: !1790, line: 531, baseType: !386, size: 64, offset: 1024)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3386, file: !1790, line: 532, baseType: !386, size: 64, offset: 1088)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3386, file: !1790, line: 533, baseType: !386, size: 64, offset: 1152)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3386, file: !1790, line: 535, baseType: !386, size: 64, offset: 1216)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3386, file: !1790, line: 536, baseType: !386, size: 64, offset: 1280)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3386, file: !1790, line: 537, baseType: !386, size: 64, offset: 1344)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3386, file: !1790, line: 538, baseType: !386, size: 64, offset: 1408)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3386, file: !1790, line: 539, baseType: !386, size: 64, offset: 1472)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3386, file: !1790, line: 540, baseType: !386, size: 64, offset: 1536)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3386, file: !1790, line: 541, baseType: !386, size: 64, offset: 1600)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3386, file: !1790, line: 542, baseType: !386, size: 64, offset: 1664)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3386, file: !1790, line: 543, baseType: !386, size: 64, offset: 1728)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3265, file: !1790, line: 833, baseType: !7, size: 32, offset: 7680)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3265, file: !1790, line: 836, baseType: !7, size: 32, offset: 7712)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3265, file: !1790, line: 837, baseType: !101, size: 32, offset: 7744)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3265, file: !1790, line: 838, baseType: !3420, size: 64, offset: 7808)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3422)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3423, line: 19, baseType: !3424)
!3423 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3423, line: 19, size: 64, elements: !3425)
!3425 = !{!3426}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3424, file: !3423, line: 19, baseType: !3427, size: 64)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 64, elements: !3428)
!3428 = !{!3429}
!3429 = !DISubrange(count: 1)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3265, file: !1790, line: 839, baseType: !3431, size: 64, offset: 7872)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3265, file: !1790, line: 840, baseType: !3422, size: 64, offset: 7936)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3265, file: !1790, line: 841, baseType: !273, size: 64, offset: 8000)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3265, file: !1790, line: 843, baseType: !314, size: 16, offset: 8064)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3265, file: !1790, line: 845, baseType: !314, size: 16, offset: 8080)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3265, file: !1790, line: 848, baseType: !101, size: 32, offset: 8096)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3265, file: !1790, line: 849, baseType: !3438, size: 32, offset: 8128)
!3438 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1790, line: 718, size: 32, elements: !3439)
!3439 = !{!3440, !3447}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3438, file: !1790, line: 724, baseType: !3441, size: 32)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !1790, line: 719, size: 32, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3441, file: !1790, line: 720, baseType: !438, size: 8)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3441, file: !1790, line: 721, baseType: !438, size: 8, offset: 8)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3441, file: !1790, line: 722, baseType: !438, size: 8, offset: 16)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3441, file: !1790, line: 723, baseType: !438, size: 8, offset: 24)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3438, file: !1790, line: 725, baseType: !380, size: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3265, file: !1790, line: 850, baseType: !294, size: 128, offset: 8192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3265, file: !1790, line: 851, baseType: !3450, size: 64, offset: 8320)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1790, line: 60, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3265, file: !1790, line: 855, baseType: !272, size: 64, offset: 8384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3265, file: !1790, line: 856, baseType: !438, size: 8, offset: 8448)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3265, file: !1790, line: 857, baseType: !438, size: 8, offset: 8456)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3265, file: !1790, line: 858, baseType: !101, size: 32, offset: 8480)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3265, file: !1790, line: 859, baseType: !294, size: 128, offset: 8512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3265, file: !1790, line: 860, baseType: !101, size: 32, offset: 8640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3265, file: !1790, line: 861, baseType: !294, size: 128, offset: 8704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3265, file: !1790, line: 873, baseType: !3460, size: 256, offset: 8832)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1790, line: 376, size: 256, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3460, file: !1790, line: 381, baseType: !272, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3460, file: !1790, line: 384, baseType: !388, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3460, file: !1790, line: 389, baseType: !388, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3460, file: !1790, line: 392, baseType: !388, size: 64, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3265, file: !1790, line: 875, baseType: !294, size: 128, offset: 9088)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3265, file: !1790, line: 877, baseType: !3468, size: 320, offset: 9216)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3469, line: 86, size: 320, elements: !3470)
!3469 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3470 = !{!3471, !3472, !3473}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3468, file: !3469, line: 87, baseType: !101, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3468, file: !3469, line: 88, baseType: !294, size: 128, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3468, file: !3469, line: 89, baseType: !294, size: 128, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3265, file: !1790, line: 878, baseType: !835, size: 192, align: 64, offset: 9536)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3265, file: !1790, line: 881, baseType: !1261, size: 64, offset: 9728)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3265, file: !1790, line: 882, baseType: !1261, size: 64, offset: 9792)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3265, file: !1790, line: 884, baseType: !101, size: 32, offset: 9856)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3265, file: !1790, line: 885, baseType: !101, size: 32, offset: 9888)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3265, file: !1790, line: 886, baseType: !101, size: 32, offset: 9920)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3265, file: !1790, line: 888, baseType: !101, size: 32, offset: 9952)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3265, file: !1790, line: 890, baseType: !272, size: 64, offset: 9984)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3265, file: !1790, line: 893, baseType: !7, size: 32, offset: 10048)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3265, file: !1790, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3265, file: !1790, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3265, file: !1790, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3265, file: !1790, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3265, file: !1790, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3265, file: !1790, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3265, file: !1790, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3265, file: !1790, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3265, file: !1790, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3265, file: !1790, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3265, file: !1790, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3265, file: !1790, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3265, file: !1790, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3265, file: !1790, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3265, file: !1790, line: 969, baseType: !272, size: 64, offset: 10176)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3265, file: !1790, line: 971, baseType: !3499, size: 448, offset: 10240)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !146, line: 25, size: 448, elements: !3500)
!3500 = !{!3501, !3502, !3507}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3499, file: !146, line: 26, baseType: !272, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3499, file: !146, line: 27, baseType: !3503, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!274, !3506}
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !146, line: 28, baseType: !3508, size: 320, offset: 128)
!3508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3499, file: !146, line: 28, size: 320, elements: !3509)
!3509 = !{!3510, !3520, !3545}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3508, file: !146, line: 37, baseType: !3511, size: 320)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !146, line: 30, size: 320, elements: !3512)
!3512 = !{!3513, !3515, !3516, !3517, !3518, !3519}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3511, file: !146, line: 31, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3511, file: !146, line: 32, baseType: !380, size: 32, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3511, file: !146, line: 33, baseType: !380, size: 32, offset: 96)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3511, file: !146, line: 34, baseType: !380, size: 32, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3511, file: !146, line: 35, baseType: !386, size: 64, offset: 192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3511, file: !146, line: 36, baseType: !3514, size: 64, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3508, file: !146, line: 47, baseType: !3521, size: 192)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !146, line: 39, size: 192, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3544}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3521, file: !146, line: 40, baseType: !2953, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3521, file: !146, line: 41, baseType: !145, size: 32, offset: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !146, line: 42, baseType: !3526, size: 64, offset: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !146, line: 42, size: 64, elements: !3527)
!3527 = !{!3528, !3536}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3526, file: !146, line: 43, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3531, line: 7, size: 128, elements: !3532)
!3531 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3532 = !{!3533, !3535}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3530, file: !3531, line: 8, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !279, line: 93, baseType: !275)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3530, file: !3531, line: 9, baseType: !275, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3526, file: !146, line: 44, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3539, line: 7, size: 64, elements: !3540)
!3539 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3540 = !{!3541, !3543}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3538, file: !3539, line: 8, baseType: !3542, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3539, line: 5, baseType: !828)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3538, file: !3539, line: 9, baseType: !828, size: 32, offset: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3521, file: !146, line: 46, baseType: !386, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3508, file: !146, line: 55, baseType: !3546, size: 256)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !146, line: 49, size: 256, elements: !3547)
!3547 = !{!3548, !3551, !3552, !3553, !3554}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3546, file: !146, line: 50, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !146, line: 14, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3546, file: !146, line: 51, baseType: !101, size: 32, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3546, file: !146, line: 52, baseType: !101, size: 32, offset: 96)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3546, file: !146, line: 53, baseType: !272, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3546, file: !146, line: 54, baseType: !272, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3265, file: !1790, line: 973, baseType: !3556, size: 32, offset: 10688)
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !277, line: 27, baseType: !3557)
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !279, line: 28, baseType: !101)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3265, file: !1790, line: 974, baseType: !3556, size: 32, offset: 10720)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3265, file: !1790, line: 978, baseType: !272, size: 64, offset: 10752)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3265, file: !1790, line: 987, baseType: !3264, size: 64, offset: 10816)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3265, file: !1790, line: 990, baseType: !3264, size: 64, offset: 10880)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3265, file: !1790, line: 995, baseType: !294, size: 128, offset: 10944)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3265, file: !1790, line: 996, baseType: !294, size: 128, offset: 11072)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3265, file: !1790, line: 997, baseType: !3264, size: 64, offset: 11200)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3265, file: !1790, line: 1005, baseType: !294, size: 128, offset: 11264)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3265, file: !1790, line: 1006, baseType: !294, size: 128, offset: 11392)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3265, file: !1790, line: 1009, baseType: !746, size: 64, offset: 11520)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3265, file: !1790, line: 1010, baseType: !3569, size: 512, offset: 11584)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 512, elements: !767)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3265, file: !1790, line: 1011, baseType: !294, size: 128, offset: 12096)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3265, file: !1790, line: 1012, baseType: !294, size: 128, offset: 12224)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3265, file: !1790, line: 1014, baseType: !2015, size: 64, offset: 12352)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3265, file: !1790, line: 1017, baseType: !2152, size: 64, offset: 12416)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3265, file: !1790, line: 1020, baseType: !2152, size: 64, offset: 12480)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3265, file: !1790, line: 1023, baseType: !273, size: 64, offset: 12544)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3265, file: !1790, line: 1025, baseType: !386, size: 64, offset: 12608)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3265, file: !1790, line: 1026, baseType: !386, size: 64, offset: 12672)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3265, file: !1790, line: 1031, baseType: !386, size: 64, offset: 12736)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3265, file: !1790, line: 1032, baseType: !3580, size: 192, offset: 12800)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1790, line: 324, size: 192, elements: !3581)
!3581 = !{!3582, !3583, !3584}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3580, file: !1790, line: 326, baseType: !386, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3580, file: !1790, line: 327, baseType: !386, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3580, file: !1790, line: 328, baseType: !712, size: 32, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3265, file: !1790, line: 1041, baseType: !272, size: 64, offset: 12992)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3265, file: !1790, line: 1042, baseType: !272, size: 64, offset: 13056)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3265, file: !1790, line: 1045, baseType: !386, size: 64, offset: 13120)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3265, file: !1790, line: 1048, baseType: !386, size: 64, offset: 13184)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3265, file: !1790, line: 1051, baseType: !272, size: 64, offset: 13248)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3265, file: !1790, line: 1052, baseType: !272, size: 64, offset: 13312)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3265, file: !1790, line: 1055, baseType: !3592, size: 640, offset: 13376)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3593, line: 132, size: 640, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3594 = !{!3595, !3601, !3602}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3592, file: !3593, line: 133, baseType: !3596, size: 576)
!3596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3597, size: 576, elements: !597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3593, line: 117, size: 192, elements: !3598)
!3598 = !{!3599, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3597, file: !3593, line: 118, baseType: !386, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3597, file: !3593, line: 119, baseType: !2962, size: 128, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3592, file: !3593, line: 134, baseType: !7, size: 32, offset: 576)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3592, file: !3593, line: 135, baseType: !7, size: 32, offset: 608)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3265, file: !1790, line: 1058, baseType: !3604, size: 448, offset: 14016)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3593, line: 144, size: 448, elements: !3605)
!3605 = !{!3606, !3607, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3604, file: !3593, line: 145, baseType: !685, size: 128, align: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3604, file: !3593, line: 146, baseType: !707, size: 256, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3604, file: !3593, line: 147, baseType: !7, size: 32, offset: 384)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3265, file: !1790, line: 1064, baseType: !793, size: 64, offset: 14464)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3265, file: !1790, line: 1067, baseType: !793, size: 64, offset: 14528)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3265, file: !1790, line: 1070, baseType: !793, size: 64, offset: 14592)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3265, file: !1790, line: 1074, baseType: !820, size: 64, offset: 14656)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3265, file: !1790, line: 1084, baseType: !3614, size: 128, offset: 14720)
!3614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 128, elements: !3615)
!3615 = !{!3616}
!3616 = !DISubrange(count: 16)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3265, file: !1790, line: 1086, baseType: !3618, size: 64, offset: 14848)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1790, line: 55, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3265, file: !1790, line: 1089, baseType: !3621, size: 64, offset: 14912)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3622, line: 12, size: 64, elements: !3623)
!3622 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3623 = !{!3624}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3621, file: !3622, line: 13, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3622, line: 8, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3265, file: !1790, line: 1090, baseType: !3628, size: 128, offset: 14976)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3629, line: 13, size: 128, elements: !3630)
!3629 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3630 = !{!3631}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3628, file: !3629, line: 14, baseType: !294, size: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3265, file: !1790, line: 1097, baseType: !3633, size: 64, offset: 15104)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1790, line: 50, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3265, file: !1790, line: 1100, baseType: !3636, size: 64, offset: 15168)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1790, line: 1100, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3265, file: !1790, line: 1103, baseType: !3639, size: 64, offset: 15232)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1790, line: 53, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3265, file: !1790, line: 1107, baseType: !3642, size: 64, offset: 15296)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3644, line: 31, size: 576, elements: !3645)
!3644 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3645 = !{!3646, !3647, !3678, !3681, !3684, !3685, !3688, !3691, !3692}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3643, file: !3644, line: 32, baseType: !750, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3643, file: !3644, line: 33, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3650, line: 24, size: 3456, elements: !3651)
!3650 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!3651 = !{!3652, !3665, !3666, !3667}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3649, file: !3650, line: 25, baseType: !3653, size: 3120)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !3654, line: 25, size: 3120, elements: !3655)
!3654 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!3655 = !{!3656, !3660, !3661, !3662, !3663, !3664}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !3653, file: !3654, line: 26, baseType: !3657, size: 520)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 520, elements: !3658)
!3658 = !{!3659}
!3659 = !DISubrange(count: 65)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3653, file: !3654, line: 27, baseType: !3657, size: 520, offset: 520)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3653, file: !3654, line: 28, baseType: !3657, size: 520, offset: 1040)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3653, file: !3654, line: 29, baseType: !3657, size: 520, offset: 1560)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !3653, file: !3654, line: 30, baseType: !3657, size: 520, offset: 2080)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !3653, file: !3654, line: 31, baseType: !3657, size: 520, offset: 2600)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3649, file: !3650, line: 26, baseType: !985, size: 64, offset: 3136)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3649, file: !3650, line: 27, baseType: !988, size: 64, offset: 3200)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3649, file: !3650, line: 28, baseType: !3668, size: 192, offset: 3264)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3669, line: 9, size: 192, elements: !3670)
!3669 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3670 = !{!3671, !3672, !3676, !3677}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3668, file: !3669, line: 10, baseType: !698, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3668, file: !3669, line: 11, baseType: !3673, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3675)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3669, line: 7, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3668, file: !3669, line: 12, baseType: !7, size: 32, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3668, file: !3669, line: 13, baseType: !750, size: 32, offset: 160)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3643, file: !3644, line: 34, baseType: !3679, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3644, line: 10, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3643, file: !3644, line: 35, baseType: !3682, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3644, line: 8, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3643, file: !3644, line: 36, baseType: !784, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3643, file: !3644, line: 37, baseType: !3686, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !822, line: 34, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3643, file: !3644, line: 38, baseType: !3689, size: 64, offset: 384)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3644, line: 38, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3643, file: !3644, line: 39, baseType: !3689, size: 64, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3643, file: !3644, line: 40, baseType: !3693, size: 64, offset: 512)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3644, line: 12, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3265, file: !1790, line: 1110, baseType: !3696, size: 64, offset: 15360)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3698, line: 93, size: 8768, elements: !3699)
!3698 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3747, !3756, !3757, !3759, !3760, !3761, !3764, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3802, !3803, !3810, !3820, !3823, !3824, !3827, !3828, !3829, !3830, !3831, !3832}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3697, file: !3698, line: 94, baseType: !750, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3697, file: !3698, line: 95, baseType: !430, size: 32, offset: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3697, file: !3698, line: 96, baseType: !101, size: 32, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3697, file: !3698, line: 97, baseType: !101, size: 32, offset: 96)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3697, file: !3698, line: 98, baseType: !294, size: 128, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3697, file: !3698, line: 100, baseType: !771, size: 192, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3697, file: !3698, line: 103, baseType: !3264, size: 64, offset: 448)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3697, file: !3698, line: 106, baseType: !3708, size: 192, offset: 512)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !990, line: 32, size: 192, elements: !3709)
!3709 = !{!3710, !3711}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3708, file: !990, line: 33, baseType: !294, size: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3708, file: !990, line: 34, baseType: !3712, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3713, line: 25, baseType: !3714)
!3713 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3713, line: 23, size: 64, elements: !3715)
!3715 = !{!3716}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3714, file: !3713, line: 24, baseType: !3427, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3697, file: !3698, line: 109, baseType: !758, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3697, file: !3698, line: 112, baseType: !101, size: 32, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3697, file: !3698, line: 114, baseType: !101, size: 32, offset: 800)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3697, file: !3698, line: 115, baseType: !3264, size: 64, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3697, file: !3698, line: 118, baseType: !101, size: 32, offset: 896)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3697, file: !3698, line: 119, baseType: !7, size: 32, offset: 928)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3697, file: !3698, line: 121, baseType: !3724, size: 64, offset: 960)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3698, line: 80, size: 448, elements: !3726)
!3726 = !{!3727, !3728, !3734}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3725, file: !3698, line: 81, baseType: !430, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3725, file: !3698, line: 82, baseType: !3729, size: 128, offset: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3698, line: 75, size: 128, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3729, file: !3698, line: 76, baseType: !3264, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3729, file: !3698, line: 77, baseType: !3733, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3725, file: !3698, line: 83, baseType: !1213, size: 256, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3697, file: !3698, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3697, file: !3698, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3697, file: !3698, line: 138, baseType: !7, size: 32, offset: 1056)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3697, file: !3698, line: 139, baseType: !294, size: 128, offset: 1088)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3697, file: !3698, line: 142, baseType: !2908, size: 512, offset: 1216)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3697, file: !3698, line: 143, baseType: !2888, size: 64, offset: 1728)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3697, file: !3698, line: 150, baseType: !3742, size: 256, offset: 1792)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3743, size: 256, elements: !2142)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3698, line: 38, size: 128, elements: !3744)
!3744 = !{!3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3743, file: !3698, line: 39, baseType: !386, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3743, file: !3698, line: 40, baseType: !386, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3697, file: !3698, line: 156, baseType: !3748, size: 192, offset: 2048)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3698, line: 66, size: 192, elements: !3749)
!3749 = !{!3750}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3748, file: !3698, line: 67, baseType: !3751, size: 192)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3698, line: 47, size: 192, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3751, file: !3698, line: 48, baseType: !700, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3751, file: !3698, line: 49, baseType: !700, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3751, file: !3698, line: 50, baseType: !700, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3697, file: !3698, line: 160, baseType: !3592, size: 640, offset: 2240)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3697, file: !3698, line: 163, baseType: !3758, size: 256, offset: 2880)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 256, elements: !767)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3697, file: !3698, line: 169, baseType: !746, size: 64, offset: 3136)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3697, file: !3698, line: 172, baseType: !101, size: 32, offset: 3200)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3697, file: !3698, line: 174, baseType: !3762, size: 64, offset: 3264)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3698, line: 174, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3697, file: !3698, line: 185, baseType: !3765, size: 64, offset: 3328)
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !353, line: 860, baseType: !3766)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 853, size: 64, elements: !3767)
!3767 = !{!3768, !3769}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3766, file: !353, line: 858, baseType: !352, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3766, file: !353, line: 859, baseType: !410, size: 32, offset: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3697, file: !3698, line: 186, baseType: !386, size: 64, offset: 3392)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3697, file: !3698, line: 186, baseType: !386, size: 64, offset: 3456)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3697, file: !3698, line: 186, baseType: !386, size: 64, offset: 3520)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3697, file: !3698, line: 186, baseType: !386, size: 64, offset: 3584)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3697, file: !3698, line: 187, baseType: !386, size: 64, offset: 3648)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3697, file: !3698, line: 188, baseType: !386, size: 64, offset: 3712)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3697, file: !3698, line: 189, baseType: !3580, size: 192, offset: 3776)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3697, file: !3698, line: 190, baseType: !272, size: 64, offset: 3968)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3697, file: !3698, line: 190, baseType: !272, size: 64, offset: 4032)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3697, file: !3698, line: 190, baseType: !272, size: 64, offset: 4096)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3697, file: !3698, line: 190, baseType: !272, size: 64, offset: 4160)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3697, file: !3698, line: 191, baseType: !272, size: 64, offset: 4224)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3697, file: !3698, line: 191, baseType: !272, size: 64, offset: 4288)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3697, file: !3698, line: 191, baseType: !272, size: 64, offset: 4352)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3697, file: !3698, line: 191, baseType: !272, size: 64, offset: 4416)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3697, file: !3698, line: 192, baseType: !272, size: 64, offset: 4480)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3697, file: !3698, line: 192, baseType: !272, size: 64, offset: 4544)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3697, file: !3698, line: 192, baseType: !272, size: 64, offset: 4608)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3697, file: !3698, line: 192, baseType: !272, size: 64, offset: 4672)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3697, file: !3698, line: 193, baseType: !272, size: 64, offset: 4736)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3697, file: !3698, line: 193, baseType: !272, size: 64, offset: 4800)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3697, file: !3698, line: 194, baseType: !3792, size: 448, offset: 4864)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3793, line: 12, size: 448, elements: !3794)
!3793 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3792, file: !3793, line: 15, baseType: !386, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3792, file: !3793, line: 17, baseType: !386, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3792, file: !3793, line: 19, baseType: !386, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3792, file: !3793, line: 21, baseType: !386, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3792, file: !3793, line: 29, baseType: !386, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3792, file: !3793, line: 35, baseType: !386, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3792, file: !3793, line: 44, baseType: !386, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3697, file: !3698, line: 202, baseType: !388, size: 64, offset: 5312)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3697, file: !3698, line: 213, baseType: !3804, size: 2048, offset: 5376)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3805, size: 2048, elements: !3615)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3806, line: 43, size: 128, elements: !3807)
!3806 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3805, file: !3806, line: 44, baseType: !642, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3805, file: !3806, line: 45, baseType: !642, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3697, file: !3698, line: 216, baseType: !3811, size: 448, offset: 7424)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3698, line: 30, size: 448, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3816, !3817, !3818, !3819}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3811, file: !3698, line: 31, baseType: !101, size: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3811, file: !3698, line: 32, baseType: !274, size: 64, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3811, file: !3698, line: 33, baseType: !272, size: 64, offset: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3811, file: !3698, line: 34, baseType: !386, size: 64, offset: 192)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3811, file: !3698, line: 34, baseType: !386, size: 64, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3811, file: !3698, line: 35, baseType: !272, size: 64, offset: 320)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3811, file: !3698, line: 35, baseType: !272, size: 64, offset: 384)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3697, file: !3698, line: 219, baseType: !3821, size: 64, offset: 7872)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3698, line: 219, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3697, file: !3698, line: 222, baseType: !7, size: 32, offset: 7936)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3697, file: !3698, line: 223, baseType: !3825, size: 64, offset: 8000)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3698, line: 223, flags: DIFlagFwdDecl)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3697, file: !3698, line: 230, baseType: !902, size: 8, offset: 8064)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3697, file: !3698, line: 231, baseType: !871, size: 16, offset: 8080)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3697, file: !3698, line: 232, baseType: !871, size: 16, offset: 8096)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3697, file: !3698, line: 234, baseType: !1261, size: 64, offset: 8128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3697, file: !3698, line: 237, baseType: !707, size: 256, offset: 8192)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3697, file: !3698, line: 243, baseType: !843, size: 320, offset: 8448)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3265, file: !1790, line: 1111, baseType: !3834, size: 64, offset: 15424)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3698, line: 20, size: 16640, elements: !3836)
!3836 = !{!3837, !3838, !3839, !3840}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3835, file: !3698, line: 21, baseType: !410, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3835, file: !3698, line: 22, baseType: !750, size: 32, offset: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3835, file: !3698, line: 23, baseType: !771, size: 192, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3835, file: !3698, line: 24, baseType: !3841, size: 16384, offset: 256)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3842, size: 16384, elements: !601)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !990, line: 51, size: 256, elements: !3843)
!3843 = !{!3844}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3842, file: !990, line: 52, baseType: !3845, size: 256)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !990, line: 37, size: 256, elements: !3846)
!3846 = !{!3847, !3854, !3855, !3859}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3845, file: !990, line: 39, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3849, line: 83, baseType: !3850)
!3849 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3849, line: 82, baseType: !3852)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !101}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3845, file: !990, line: 40, baseType: !272, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3845, file: !990, line: 46, baseType: !3856, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3849, line: 86, baseType: !3857)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3849, line: 85, baseType: !1748)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3845, file: !990, line: 48, baseType: !3712, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3265, file: !1790, line: 1112, baseType: !3712, size: 64, offset: 15488)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3265, file: !1790, line: 1113, baseType: !3712, size: 64, offset: 15552)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3265, file: !1790, line: 1115, baseType: !3712, size: 64, offset: 15616)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3265, file: !1790, line: 1116, baseType: !3708, size: 192, offset: 15680)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3265, file: !1790, line: 1117, baseType: !272, size: 64, offset: 15872)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3265, file: !1790, line: 1118, baseType: !640, size: 64, offset: 15936)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3265, file: !1790, line: 1119, baseType: !7, size: 32, offset: 16000)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3265, file: !1790, line: 1121, baseType: !688, size: 64, offset: 16064)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3265, file: !1790, line: 1125, baseType: !3869, size: 64, offset: 16128)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1790, line: 43, flags: DIFlagFwdDecl)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3265, file: !1790, line: 1127, baseType: !317, size: 32, offset: 16192)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3265, file: !1790, line: 1128, baseType: !7, size: 32, offset: 16224)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3265, file: !1790, line: 1130, baseType: !3874, size: 128, offset: 16256)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3875, line: 37, size: 128, elements: !3876)
!3875 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3876 = !{!3877, !3878, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3874, file: !3875, line: 38, baseType: !101, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3874, file: !3875, line: 39, baseType: !430, size: 32, offset: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3874, file: !3875, line: 40, baseType: !3880, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3875, line: 24, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3265, file: !1790, line: 1131, baseType: !3883, size: 256, offset: 16384)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3884, line: 12, size: 256, elements: !3885)
!3884 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3885 = !{!3886, !3887, !3888, !3889}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3883, file: !3884, line: 13, baseType: !496, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3883, file: !3884, line: 14, baseType: !272, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3883, file: !3884, line: 15, baseType: !272, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3883, file: !3884, line: 16, baseType: !902, size: 8, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3265, file: !1790, line: 1134, baseType: !386, size: 64, offset: 16640)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3265, file: !1790, line: 1135, baseType: !386, size: 64, offset: 16704)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3265, file: !1790, line: 1138, baseType: !410, size: 32, offset: 16768)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3265, file: !1790, line: 1141, baseType: !712, size: 32, offset: 16800)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3265, file: !1790, line: 1143, baseType: !3895, size: 64, offset: 16832)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1790, line: 735, size: 64, elements: !3896)
!3896 = !{!3897}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3895, file: !1790, line: 736, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3265, file: !1790, line: 1147, baseType: !2965, size: 128, offset: 16896)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3265, file: !1790, line: 1149, baseType: !3264, size: 64, offset: 17024)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3265, file: !1790, line: 1151, baseType: !3902, size: 64, offset: 17088)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1790, line: 1151, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3265, file: !1790, line: 1188, baseType: !273, size: 64, offset: 17152)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3265, file: !1790, line: 1191, baseType: !3906, size: 64, offset: 17216)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1790, line: 44, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3265, file: !1790, line: 1194, baseType: !3909, size: 64, offset: 17280)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1790, line: 45, flags: DIFlagFwdDecl)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3265, file: !1790, line: 1197, baseType: !3912, size: 64, offset: 17344)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1790, line: 61, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3265, file: !1790, line: 1199, baseType: !3915, size: 64, offset: 17408)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2682, line: 99, size: 128, elements: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3916, file: !2682, line: 100, baseType: !698, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3916, file: !2682, line: 101, baseType: !430, size: 32, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3916, file: !2682, line: 103, baseType: !314, size: 16, offset: 96)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3265, file: !1790, line: 1202, baseType: !3922, size: 64, offset: 17472)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1790, line: 48, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3265, file: !1790, line: 1205, baseType: !272, size: 64, offset: 17536)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3265, file: !1790, line: 1206, baseType: !3926, size: 64, offset: 17600)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !990, line: 14, baseType: !3928)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !990, line: 12, size: 384, elements: !3929)
!3929 = !{!3930}
!3930 = !DIDerivedType(tag: DW_TAG_member, scope: !3928, file: !990, line: 13, baseType: !3931, size: 384)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3928, file: !990, line: 13, size: 384, elements: !3932)
!3932 = !{!3933, !3934, !3935, !3936}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3931, file: !990, line: 13, baseType: !101, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3931, file: !990, line: 13, baseType: !101, size: 32, offset: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3931, file: !990, line: 13, baseType: !101, size: 32, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3931, file: !990, line: 13, baseType: !3937, size: 256, offset: 128)
!3937 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3938, line: 37, size: 256, elements: !3939)
!3938 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3939 = !{!3940, !3945, !3958, !3964, !3973, !4000, !4005}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3937, file: !3938, line: 42, baseType: !3941, size: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3937, file: !3938, line: 39, size: 64, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3941, file: !3938, line: 40, baseType: !3557, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3941, file: !3938, line: 41, baseType: !323, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3937, file: !3938, line: 50, baseType: !3946, size: 192)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3937, file: !3938, line: 45, size: 192, elements: !3947)
!3947 = !{!3948, !3950, !3951, !3957}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3946, file: !3938, line: 46, baseType: !3949, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !279, line: 95, baseType: !101)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3946, file: !3938, line: 47, baseType: !101, size: 32, offset: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3946, file: !3938, line: 48, baseType: !3952, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3938, line: 11, baseType: !3953)
!3953 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3938, line: 8, size: 64, elements: !3954)
!3954 = !{!3955, !3956}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3953, file: !3938, line: 9, baseType: !101, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3953, file: !3938, line: 10, baseType: !273, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3946, file: !3938, line: 49, baseType: !101, size: 32, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3937, file: !3938, line: 57, baseType: !3959, size: 128)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3937, file: !3938, line: 53, size: 128, elements: !3960)
!3960 = !{!3961, !3962, !3963}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3959, file: !3938, line: 54, baseType: !3557, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3959, file: !3938, line: 55, baseType: !323, size: 32, offset: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3959, file: !3938, line: 56, baseType: !3952, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3937, file: !3938, line: 66, baseType: !3965, size: 256)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3937, file: !3938, line: 60, size: 256, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3972}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3965, file: !3938, line: 61, baseType: !3557, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3965, file: !3938, line: 62, baseType: !323, size: 32, offset: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3965, file: !3938, line: 63, baseType: !101, size: 32, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3965, file: !3938, line: 64, baseType: !3971, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !279, line: 94, baseType: !630)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3965, file: !3938, line: 65, baseType: !3971, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3937, file: !3938, line: 105, baseType: !3974, size: 256)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3937, file: !3938, line: 69, size: 256, elements: !3975)
!3975 = !{!3976, !3977}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3974, file: !3938, line: 70, baseType: !273, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, scope: !3974, file: !3938, line: 79, baseType: !3978, size: 192, offset: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3974, file: !3938, line: 79, size: 192, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3989, !3994}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3978, file: !3938, line: 81, baseType: !101, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3978, file: !3938, line: 86, baseType: !871, size: 16)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3978, file: !3938, line: 92, baseType: !3983, size: 192)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !3938, line: 88, size: 192, elements: !3984)
!3984 = !{!3985, !3987, !3988}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3983, file: !3938, line: 89, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 64, elements: !2949)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3983, file: !3938, line: 90, baseType: !273, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3983, file: !3938, line: 91, baseType: !273, size: 64, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3978, file: !3938, line: 97, baseType: !3990, size: 96)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !3938, line: 94, size: 96, elements: !3991)
!3991 = !{!3992, !3993}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3990, file: !3938, line: 95, baseType: !3986, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3990, file: !3938, line: 96, baseType: !382, size: 32, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3978, file: !3938, line: 103, baseType: !3995, size: 128)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !3938, line: 99, size: 128, elements: !3996)
!3996 = !{!3997, !3998, !3999}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3995, file: !3938, line: 100, baseType: !272, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3995, file: !3938, line: 101, baseType: !382, size: 32, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3995, file: !3938, line: 102, baseType: !382, size: 32, offset: 96)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3937, file: !3938, line: 111, baseType: !4001, size: 128)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3937, file: !3938, line: 108, size: 128, elements: !4002)
!4002 = !{!4003, !4004}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4001, file: !3938, line: 109, baseType: !274, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4001, file: !3938, line: 110, baseType: !101, size: 32, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3937, file: !3938, line: 118, baseType: !4006, size: 128)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3937, file: !3938, line: 114, size: 128, elements: !4007)
!4007 = !{!4008, !4009, !4010}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4006, file: !3938, line: 115, baseType: !273, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4006, file: !3938, line: 116, baseType: !101, size: 32, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4006, file: !3938, line: 117, baseType: !7, size: 32, offset: 96)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3265, file: !1790, line: 1208, baseType: !3792, size: 448, offset: 17664)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3265, file: !1790, line: 1215, baseType: !386, size: 64, offset: 18112)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3265, file: !1790, line: 1217, baseType: !386, size: 64, offset: 18176)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3265, file: !1790, line: 1219, baseType: !386, size: 64, offset: 18240)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3265, file: !1790, line: 1223, baseType: !4016, size: 64, offset: 18304)
!4016 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4017, line: 99, baseType: !4018)
!4017 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4017, line: 99, size: 64, elements: !4019)
!4019 = !{!4020}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4018, file: !4017, line: 99, baseType: !3427, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3265, file: !1790, line: 1225, baseType: !352, size: 32, offset: 18368)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3265, file: !1790, line: 1226, baseType: !101, size: 32, offset: 18400)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3265, file: !1790, line: 1227, baseType: !101, size: 32, offset: 18432)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3265, file: !1790, line: 1231, baseType: !4025, size: 64, offset: 18496)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1790, line: 1231, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3265, file: !1790, line: 1233, baseType: !294, size: 128, offset: 18560)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3265, file: !1790, line: 1240, baseType: !4029, size: 64, offset: 18688)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1790, line: 62, flags: DIFlagFwdDecl)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3265, file: !1790, line: 1242, baseType: !4032, size: 64, offset: 18752)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1790, line: 1242, flags: DIFlagFwdDecl)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3265, file: !1790, line: 1244, baseType: !294, size: 128, offset: 18816)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3265, file: !1790, line: 1245, baseType: !4036, size: 64, offset: 18944)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1790, line: 51, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3265, file: !1790, line: 1246, baseType: !707, size: 256, offset: 19008)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3265, file: !1790, line: 1247, baseType: !7, size: 32, offset: 19264)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3265, file: !1790, line: 1250, baseType: !4041, size: 64, offset: 19328)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1790, line: 57, flags: DIFlagFwdDecl)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3265, file: !1790, line: 1251, baseType: !707, size: 256, offset: 19392)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3265, file: !1790, line: 1252, baseType: !294, size: 128, offset: 19648)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3265, file: !1790, line: 1259, baseType: !1507, size: 64, offset: 19776)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3265, file: !1790, line: 1260, baseType: !871, size: 16, offset: 19840)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3265, file: !1790, line: 1261, baseType: !871, size: 16, offset: 19856)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3265, file: !1790, line: 1314, baseType: !4049, size: 64, offset: 19904)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4051, line: 62, size: 256, align: 256, elements: !4052)
!4051 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4052 = !{!4053, !4054, !4055, !4056, !4057, !4058, !4059}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4050, file: !4051, line: 75, baseType: !382, size: 32)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4050, file: !4051, line: 90, baseType: !382, size: 32, offset: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4050, file: !4051, line: 112, baseType: !387, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4050, file: !4051, line: 132, baseType: !382, size: 32, offset: 128)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4050, file: !4051, line: 140, baseType: !382, size: 32, offset: 160)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4050, file: !4051, line: 149, baseType: !382, size: 32, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4050, file: !4051, line: 154, baseType: !4060, offset: 224)
!4060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, elements: !786)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3265, file: !1790, line: 1315, baseType: !380, size: 32, offset: 19968)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3265, file: !1790, line: 1316, baseType: !380, size: 32, offset: 20000)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3265, file: !1790, line: 1321, baseType: !272, size: 64, offset: 20032)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3265, file: !1790, line: 1325, baseType: !101, size: 32, offset: 20096)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3265, file: !1790, line: 1326, baseType: !101, size: 32, offset: 20128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3265, file: !1790, line: 1327, baseType: !101, size: 32, offset: 20160)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3265, file: !1790, line: 1328, baseType: !101, size: 32, offset: 20192)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3265, file: !1790, line: 1329, baseType: !685, size: 128, align: 64, offset: 20224)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3265, file: !1790, line: 1332, baseType: !4070, size: 128, offset: 20352)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4071, line: 51, size: 128, elements: !4072)
!4071 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4072 = !{!4073, !4078, !4079}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4070, file: !4071, line: 60, baseType: !4074, size: 64)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4075, line: 7, size: 64, elements: !4076)
!4075 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4076 = !{!4077}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4074, file: !4075, line: 12, baseType: !3424, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4070, file: !4071, line: 63, baseType: !902, size: 8, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4070, file: !4071, line: 70, baseType: !902, size: 8, offset: 72)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3265, file: !1790, line: 1335, baseType: !1788, size: 64, offset: 20480)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3265, file: !1790, line: 1337, baseType: !4082, size: 128, offset: 20544)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4071, line: 39, size: 128, elements: !4083)
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4082, file: !4071, line: 40, baseType: !1128, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4082, file: !4071, line: 42, baseType: !382, size: 32, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4082, file: !4071, line: 43, baseType: !382, size: 32, offset: 96)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3265, file: !1790, line: 1340, baseType: !4088, size: 64, offset: 20672)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1790, line: 69, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3265, file: !1790, line: 1351, baseType: !101, size: 32, offset: 20736)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3265, file: !1790, line: 1352, baseType: !101, size: 32, offset: 20768)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3265, file: !1790, line: 1354, baseType: !272, size: 64, offset: 20800)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3265, file: !1790, line: 1364, baseType: !386, size: 64, offset: 20864)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3265, file: !1790, line: 1365, baseType: !386, size: 64, offset: 20928)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3265, file: !1790, line: 1412, baseType: !272, size: 64, offset: 20992)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3265, file: !1790, line: 1453, baseType: !2677, size: 64, offset: 21056)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3265, file: !1790, line: 1457, baseType: !4098, size: 64, offset: 21120)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !152, line: 61, size: 576, elements: !4100)
!4100 = !{!4101, !4102, !4121, !4124, !4125, !4158, !4168}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4099, file: !152, line: 62, baseType: !151, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, scope: !4099, file: !152, line: 64, baseType: !4103, size: 192, offset: 64)
!4103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4099, file: !152, line: 64, size: 192, elements: !4104)
!4104 = !{!4105, !4116}
!4105 = !DIDerivedType(tag: DW_TAG_member, scope: !4103, file: !152, line: 65, baseType: !4106, size: 192)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4103, file: !152, line: 65, size: 192, elements: !4107)
!4107 = !{!4108, !4115}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4106, file: !152, line: 66, baseType: !4109, size: 128)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4110, line: 50, size: 128, elements: !4111)
!4110 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4111 = !{!4112, !4113, !4114}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4109, file: !4110, line: 52, baseType: !272, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4109, file: !4110, line: 54, baseType: !7, size: 32, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4109, file: !4110, line: 55, baseType: !7, size: 32, offset: 96)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4106, file: !152, line: 67, baseType: !272, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, scope: !4103, file: !152, line: 70, baseType: !4117, size: 192)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4103, file: !152, line: 70, size: 192, elements: !4118)
!4118 = !{!4119, !4120}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4117, file: !152, line: 71, baseType: !685, size: 128, align: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4117, file: !152, line: 72, baseType: !272, size: 64, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4099, file: !152, line: 76, baseType: !4122, size: 64, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !152, line: 76, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4099, file: !152, line: 77, baseType: !272, size: 64, offset: 320)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4099, file: !152, line: 79, baseType: !4126, size: 64, offset: 384)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4110, line: 25, size: 256, elements: !4128)
!4128 = !{!4129, !4135, !4139}
!4129 = !DIDerivedType(tag: DW_TAG_member, scope: !4127, file: !4110, line: 26, baseType: !4130, size: 128)
!4130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4127, file: !4110, line: 26, size: 128, elements: !4131)
!4131 = !{!4132, !4134}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4130, file: !4110, line: 27, baseType: !4133, size: 128)
!4133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 128, elements: !3615)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4130, file: !4110, line: 28, baseType: !4133, size: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4127, file: !4110, line: 31, baseType: !4136, size: 64, offset: 128)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4138)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4110, line: 23, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, scope: !4127, file: !4110, line: 33, baseType: !4140, size: 64, offset: 192)
!4140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4127, file: !4110, line: 33, size: 64, elements: !4141)
!4141 = !{!4142, !4148, !4153}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4140, file: !4110, line: 38, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4140, file: !4110, line: 34, size: 64, elements: !4144)
!4144 = !{!4145, !4146, !4147}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4143, file: !4110, line: 35, baseType: !828, size: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4143, file: !4110, line: 36, baseType: !438, size: 8, offset: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4143, file: !4110, line: 37, baseType: !438, size: 8, offset: 40)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4140, file: !4110, line: 42, baseType: !4149, size: 16)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4140, file: !4110, line: 39, size: 16, elements: !4150)
!4150 = !{!4151, !4152}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4149, file: !4110, line: 40, baseType: !438, size: 8)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4149, file: !4110, line: 41, baseType: !438, size: 8, offset: 8)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4140, file: !4110, line: 46, baseType: !4154, size: 16)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4140, file: !4110, line: 43, size: 16, elements: !4155)
!4155 = !{!4156, !4157}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4154, file: !4110, line: 44, baseType: !438, size: 8)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4154, file: !4110, line: 45, baseType: !438, size: 8, offset: 8)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4099, file: !152, line: 81, baseType: !4159, size: 64, offset: 448)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !152, line: 85, size: 384, elements: !4161)
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4167}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4160, file: !152, line: 86, baseType: !4122, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4160, file: !152, line: 87, baseType: !272, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4160, file: !152, line: 88, baseType: !272, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4160, file: !152, line: 89, baseType: !272, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4160, file: !152, line: 90, baseType: !902, size: 8, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4160, file: !152, line: 92, baseType: !4159, size: 64, offset: 320)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4099, file: !152, line: 82, baseType: !7, size: 32, offset: 512)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3265, file: !1790, line: 1463, baseType: !4170, offset: 21184)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1790, line: 739, elements: !1282)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3265, file: !1790, line: 1470, baseType: !685, size: 128, align: 64, offset: 21184)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3265, file: !1790, line: 1471, baseType: !750, size: 32, offset: 21312)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3265, file: !1790, line: 1472, baseType: !101, size: 32, offset: 21344)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3265, file: !1790, line: 1474, baseType: !3264, size: 64, offset: 21376)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3265, file: !1790, line: 1475, baseType: !2252, size: 320, offset: 21440)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3265, file: !1790, line: 1478, baseType: !4177, size: 64, offset: 21760)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1790, line: 1478, flags: DIFlagFwdDecl)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3265, file: !1790, line: 1482, baseType: !750, size: 32, offset: 21824)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3265, file: !1790, line: 1489, baseType: !273, size: 64, offset: 21888)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3265, file: !1790, line: 1504, baseType: !273, size: 64, offset: 21952)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3265, file: !1790, line: 1505, baseType: !387, size: 64, offset: 22016)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3265, file: !1790, line: 1506, baseType: !386, size: 64, offset: 22080)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3265, file: !1790, line: 1507, baseType: !387, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3265, file: !1790, line: 1508, baseType: !387, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3265, file: !1790, line: 1509, baseType: !387, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3265, file: !1790, line: 1510, baseType: !685, size: 128, align: 64, offset: 22208)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3265, file: !1790, line: 1511, baseType: !101, size: 32, offset: 22336)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3265, file: !1790, line: 1515, baseType: !4190, size: 64, offset: 22400)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !680, line: 56, size: 64, elements: !4191)
!4191 = !{!4192}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4190, file: !680, line: 57, baseType: !683, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3265, file: !1790, line: 1518, baseType: !4190, size: 64, offset: 22464)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3265, file: !1790, line: 1528, baseType: !685, size: 128, align: 64, offset: 22528)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3265, file: !1790, line: 1552, baseType: !4196, size: 35328, offset: 23040)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4197, line: 430, size: 35328, elements: !4198)
!4197 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4198 = !{!4199, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4228, !4229, !4230, !4231, !4232, !4233, !4236, !4237, !4238, !4239}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4196, file: !4197, line: 432, baseType: !4200, size: 192)
!4200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4201, size: 192, elements: !597)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4202, line: 16, size: 64, elements: !4203)
!4202 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4203 = !{!4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4201, file: !4202, line: 17, baseType: !445, size: 16)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4201, file: !4202, line: 18, baseType: !445, size: 16, offset: 16)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4201, file: !4202, line: 19, baseType: !445, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4201, file: !4202, line: 19, baseType: !445, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4201, file: !4202, line: 19, baseType: !445, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4201, file: !4202, line: 19, baseType: !445, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4201, file: !4202, line: 19, baseType: !445, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4201, file: !4202, line: 20, baseType: !445, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4201, file: !4202, line: 20, baseType: !445, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4201, file: !4202, line: 20, baseType: !445, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4201, file: !4202, line: 20, baseType: !445, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4201, file: !4202, line: 20, baseType: !445, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4201, file: !4202, line: 20, baseType: !445, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4196, file: !4197, line: 436, baseType: !272, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4196, file: !4197, line: 440, baseType: !314, size: 16, offset: 256)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4196, file: !4197, line: 441, baseType: !314, size: 16, offset: 272)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4196, file: !4197, line: 442, baseType: !314, size: 16, offset: 288)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4196, file: !4197, line: 443, baseType: !314, size: 16, offset: 304)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4196, file: !4197, line: 447, baseType: !272, size: 64, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4196, file: !4197, line: 448, baseType: !272, size: 64, offset: 384)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4196, file: !4197, line: 459, baseType: !4225, size: 256, offset: 448)
!4225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4226, size: 256, elements: !767)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4197, line: 428, flags: DIFlagFwdDecl)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4196, file: !4197, line: 461, baseType: !272, size: 64, offset: 704)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4196, file: !4197, line: 463, baseType: !272, size: 64, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4196, file: !4197, line: 465, baseType: !272, size: 64, offset: 832)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4196, file: !4197, line: 466, baseType: !272, size: 64, offset: 896)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4196, file: !4197, line: 467, baseType: !272, size: 64, offset: 960)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4196, file: !4197, line: 473, baseType: !4234, size: 64, offset: 1024)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4197, line: 10, flags: DIFlagFwdDecl)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4196, file: !4197, line: 480, baseType: !272, size: 64, offset: 1088)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4196, file: !4197, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4196, file: !4197, line: 491, baseType: !380, size: 32, offset: 1184)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4196, file: !4197, line: 501, baseType: !4240, size: 33792, offset: 1536)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4241, line: 448, size: 33792, elements: !4242)
!4241 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4242 = !{!4243, !4244, !4245, !4407, !4408, !4414, !4415}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4240, file: !4241, line: 461, baseType: !7, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4240, file: !4241, line: 468, baseType: !272, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4240, file: !4241, line: 476, baseType: !4246, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4241, line: 356, size: 33280, align: 512, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4247, file: !4241, line: 358, baseType: !7, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4247, file: !4241, line: 361, baseType: !7, size: 32, offset: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4247, file: !4241, line: 364, baseType: !386, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4247, file: !4241, line: 367, baseType: !386, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4247, file: !4241, line: 370, baseType: !386, size: 64, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4247, file: !4241, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4247, file: !4241, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4247, file: !4241, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4247, file: !4241, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4247, file: !4241, line: 397, baseType: !4259, size: 32768, offset: 512)
!4259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4241, line: 348, size: 32768, elements: !4260)
!4260 = !{!4261, !4276, !4313, !4390, !4403}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4259, file: !4241, line: 349, baseType: !4262, size: 896)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4241, line: 12, size: 896, elements: !4263)
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4275}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4262, file: !4241, line: 13, baseType: !380, size: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4262, file: !4241, line: 14, baseType: !380, size: 32, offset: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4262, file: !4241, line: 15, baseType: !380, size: 32, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4262, file: !4241, line: 16, baseType: !380, size: 32, offset: 96)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4262, file: !4241, line: 17, baseType: !380, size: 32, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4262, file: !4241, line: 18, baseType: !380, size: 32, offset: 160)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4262, file: !4241, line: 19, baseType: !380, size: 32, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4262, file: !4241, line: 22, baseType: !4272, size: 640, offset: 224)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 640, elements: !4273)
!4273 = !{!4274}
!4274 = !DISubrange(count: 20)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4262, file: !4241, line: 25, baseType: !380, size: 32, offset: 864)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4259, file: !4241, line: 350, baseType: !4277, size: 4096, align: 128)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4241, line: 34, size: 4096, align: 128, elements: !4278)
!4278 = !{!4279, !4280, !4281, !4282, !4283, !4298, !4299, !4300, !4302, !4304, !4308}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4277, file: !4241, line: 35, baseType: !445, size: 16)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4277, file: !4241, line: 36, baseType: !445, size: 16, offset: 16)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4277, file: !4241, line: 37, baseType: !445, size: 16, offset: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4277, file: !4241, line: 38, baseType: !445, size: 16, offset: 48)
!4283 = !DIDerivedType(tag: DW_TAG_member, scope: !4277, file: !4241, line: 39, baseType: !4284, size: 128, offset: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4277, file: !4241, line: 39, size: 128, elements: !4285)
!4285 = !{!4286, !4291}
!4286 = !DIDerivedType(tag: DW_TAG_member, scope: !4284, file: !4241, line: 40, baseType: !4287, size: 128)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4284, file: !4241, line: 40, size: 128, elements: !4288)
!4288 = !{!4289, !4290}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4287, file: !4241, line: 41, baseType: !386, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4287, file: !4241, line: 42, baseType: !386, size: 64, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, scope: !4284, file: !4241, line: 44, baseType: !4292, size: 128)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4284, file: !4241, line: 44, size: 128, elements: !4293)
!4293 = !{!4294, !4295, !4296, !4297}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4292, file: !4241, line: 45, baseType: !380, size: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4292, file: !4241, line: 46, baseType: !380, size: 32, offset: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4292, file: !4241, line: 47, baseType: !380, size: 32, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4292, file: !4241, line: 48, baseType: !380, size: 32, offset: 96)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4277, file: !4241, line: 51, baseType: !380, size: 32, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4277, file: !4241, line: 52, baseType: !380, size: 32, offset: 224)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4277, file: !4241, line: 55, baseType: !4301, size: 1024, offset: 256)
!4301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 1024, elements: !396)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4277, file: !4241, line: 58, baseType: !4303, size: 2048, offset: 1280)
!4303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 2048, elements: !601)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4277, file: !4241, line: 60, baseType: !4305, size: 384, offset: 3328)
!4305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 384, elements: !4306)
!4306 = !{!4307}
!4307 = !DISubrange(count: 12)
!4308 = !DIDerivedType(tag: DW_TAG_member, scope: !4277, file: !4241, line: 62, baseType: !4309, size: 384, offset: 3712)
!4309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4277, file: !4241, line: 62, size: 384, elements: !4310)
!4310 = !{!4311, !4312}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4309, file: !4241, line: 63, baseType: !4305, size: 384)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4309, file: !4241, line: 64, baseType: !4305, size: 384)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4259, file: !4241, line: 351, baseType: !4314, size: 1088)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4241, line: 79, size: 1088, elements: !4315)
!4315 = !{!4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4389}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4314, file: !4241, line: 80, baseType: !380, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4314, file: !4241, line: 81, baseType: !380, size: 32, offset: 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4314, file: !4241, line: 82, baseType: !380, size: 32, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4314, file: !4241, line: 83, baseType: !380, size: 32, offset: 96)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4314, file: !4241, line: 84, baseType: !380, size: 32, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4314, file: !4241, line: 85, baseType: !380, size: 32, offset: 160)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4314, file: !4241, line: 86, baseType: !380, size: 32, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4314, file: !4241, line: 88, baseType: !4272, size: 640, offset: 224)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4314, file: !4241, line: 89, baseType: !438, size: 8, offset: 864)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4314, file: !4241, line: 90, baseType: !438, size: 8, offset: 872)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4314, file: !4241, line: 91, baseType: !438, size: 8, offset: 880)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4314, file: !4241, line: 92, baseType: !438, size: 8, offset: 888)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4314, file: !4241, line: 93, baseType: !438, size: 8, offset: 896)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4314, file: !4241, line: 94, baseType: !438, size: 8, offset: 904)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4314, file: !4241, line: 95, baseType: !4331, size: 64, offset: 960)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4333, line: 11, size: 128, elements: !4334)
!4333 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4334 = !{!4335, !4336}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4332, file: !4333, line: 12, baseType: !274, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4332, file: !4333, line: 13, baseType: !4337, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4339, line: 103, size: 1344, elements: !4340)
!4339 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4369, !4370, !4371}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4338, file: !4339, line: 109, baseType: !272, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4338, file: !4339, line: 110, baseType: !272, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4338, file: !4339, line: 111, baseType: !272, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4338, file: !4339, line: 112, baseType: !272, size: 64, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4338, file: !4339, line: 113, baseType: !272, size: 64, offset: 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4338, file: !4339, line: 114, baseType: !272, size: 64, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4338, file: !4339, line: 117, baseType: !272, size: 64, offset: 384)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4338, file: !4339, line: 118, baseType: !272, size: 64, offset: 448)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4338, file: !4339, line: 119, baseType: !272, size: 64, offset: 512)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4338, file: !4339, line: 120, baseType: !272, size: 64, offset: 576)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4338, file: !4339, line: 121, baseType: !272, size: 64, offset: 640)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4338, file: !4339, line: 122, baseType: !272, size: 64, offset: 704)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4338, file: !4339, line: 123, baseType: !272, size: 64, offset: 768)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4338, file: !4339, line: 124, baseType: !272, size: 64, offset: 832)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4338, file: !4339, line: 125, baseType: !272, size: 64, offset: 896)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4338, file: !4339, line: 139, baseType: !272, size: 64, offset: 960)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4338, file: !4339, line: 142, baseType: !272, size: 64, offset: 1024)
!4358 = !DIDerivedType(tag: DW_TAG_member, scope: !4338, file: !4339, line: 144, baseType: !4359, size: 64, offset: 1088)
!4359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4338, file: !4339, line: 144, size: 64, elements: !4360)
!4360 = !{!4361, !4362, !4363}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4359, file: !4339, line: 146, baseType: !445, size: 16)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4359, file: !4339, line: 148, baseType: !386, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4359, file: !4339, line: 150, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4339, line: 59, size: 64, elements: !4365)
!4365 = !{!4366, !4367, !4368}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4364, file: !4339, line: 61, baseType: !386, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4364, file: !4339, line: 63, baseType: !386, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4364, file: !4339, line: 65, baseType: !386, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4338, file: !4339, line: 153, baseType: !272, size: 64, offset: 1152)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4338, file: !4339, line: 154, baseType: !272, size: 64, offset: 1216)
!4371 = !DIDerivedType(tag: DW_TAG_member, scope: !4338, file: !4339, line: 156, baseType: !4372, size: 64, offset: 1280)
!4372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4338, file: !4339, line: 156, size: 64, elements: !4373)
!4373 = !{!4374, !4375, !4376}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4372, file: !4339, line: 158, baseType: !445, size: 16)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4372, file: !4339, line: 160, baseType: !386, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4372, file: !4339, line: 162, baseType: !4377, size: 64)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4339, line: 69, size: 64, elements: !4378)
!4378 = !{!4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4377, file: !4339, line: 71, baseType: !386, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4377, file: !4339, line: 73, baseType: !386, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4377, file: !4339, line: 75, baseType: !386, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4377, file: !4339, line: 77, baseType: !386, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4377, file: !4339, line: 80, baseType: !386, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4377, file: !4339, line: 83, baseType: !386, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4377, file: !4339, line: 86, baseType: !386, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4377, file: !4339, line: 88, baseType: !386, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4377, file: !4339, line: 93, baseType: !386, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4377, file: !4339, line: 100, baseType: !386, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4314, file: !4241, line: 96, baseType: !380, size: 32, offset: 1024)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4259, file: !4241, line: 352, baseType: !4391, size: 4608, align: 512)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4241, line: 333, size: 4608, align: 512, elements: !4392)
!4392 = !{!4393, !4394, !4401}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4391, file: !4241, line: 334, baseType: !4277, size: 4096, align: 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4391, file: !4241, line: 335, baseType: !4395, size: 512, offset: 4096)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4241, line: 312, size: 512, elements: !4396)
!4396 = !{!4397, !4398, !4399}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4395, file: !4241, line: 313, baseType: !386, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4395, file: !4241, line: 314, baseType: !386, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4395, file: !4241, line: 315, baseType: !4400, size: 384, offset: 128)
!4400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 384, elements: !889)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4391, file: !4241, line: 336, baseType: !4402, offset: 4608)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, elements: !786)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4259, file: !4241, line: 353, baseType: !4404, size: 32768)
!4404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 32768, elements: !4405)
!4405 = !{!4406}
!4406 = !DISubrange(count: 4096)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4240, file: !4241, line: 484, baseType: !4246, size: 64, offset: 192)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4240, file: !4241, line: 491, baseType: !4409, size: 128, offset: 256)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4241, line: 404, size: 128, elements: !4410)
!4410 = !{!4411, !4412, !4413}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4409, file: !4241, line: 424, baseType: !386, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4409, file: !4241, line: 432, baseType: !7, size: 32, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4409, file: !4241, line: 440, baseType: !7, size: 32, offset: 96)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4240, file: !4241, line: 498, baseType: !4409, size: 128, offset: 384)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4240, file: !4241, line: 508, baseType: !4247, size: 33280, align: 512, offset: 512)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3247, file: !3248, line: 16, baseType: !771, size: 192, offset: 512)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3247, file: !3248, line: 17, baseType: !430, size: 32, offset: 704)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !508, file: !64, line: 1240, baseType: !273, size: 64, offset: 6912)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !508, file: !64, line: 1243, baseType: !380, size: 32, offset: 6976)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !508, file: !64, line: 1245, baseType: !859, size: 64, offset: 7040)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !508, file: !64, line: 1246, baseType: !859, size: 64, offset: 7104)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !508, file: !64, line: 1248, baseType: !382, size: 32, offset: 7168)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !508, file: !64, line: 1249, baseType: !4424, size: 64, offset: 7232)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !508, file: !64, line: 1252, baseType: !4427, size: 256, offset: 7296)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 256, elements: !396)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !508, file: !64, line: 1253, baseType: !4429, size: 128, offset: 7552)
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4430, line: 21, baseType: !4431)
!4430 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4430, line: 19, size: 128, elements: !4432)
!4432 = !{!4433}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4431, file: !4430, line: 20, baseType: !4434, size: 128)
!4434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 128, elements: !3615)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !508, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !508, file: !64, line: 1261, baseType: !707, size: 256, offset: 7744)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !508, file: !64, line: 1267, baseType: !470, size: 64, offset: 8000)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !508, file: !64, line: 1269, baseType: !450, size: 64, offset: 8064)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !508, file: !64, line: 1271, baseType: !4440, size: 448, offset: 8128)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2510, line: 63, size: 448, elements: !4441)
!4441 = !{!4442, !4447, !4448, !4449, !4450, !4451, !4452}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4440, file: !2510, line: 64, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!272, !4446, !2508}
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4440, file: !2510, line: 66, baseType: !4443, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4440, file: !2510, line: 69, baseType: !274, size: 64, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4440, file: !2510, line: 70, baseType: !101, size: 32, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4440, file: !2510, line: 71, baseType: !7, size: 32, offset: 224)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4440, file: !2510, line: 74, baseType: !294, size: 128, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4440, file: !2510, line: 85, baseType: !4453, size: 64, offset: 384)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !508, file: !64, line: 1274, baseType: !698, size: 64, offset: 8576)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !508, file: !64, line: 1280, baseType: !698, size: 64, offset: 8640)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !508, file: !64, line: 1283, baseType: !101, size: 32, offset: 8704)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !508, file: !64, line: 1286, baseType: !1840, size: 32, offset: 8736)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !508, file: !64, line: 1289, baseType: !2314, size: 64, offset: 8768)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !508, file: !64, line: 1290, baseType: !758, size: 64, offset: 8832)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !508, file: !64, line: 1297, baseType: !985, size: 64, offset: 8896)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !508, file: !64, line: 1304, baseType: !4462, size: 64, offset: 8960)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4463, line: 49, size: 64, elements: !4464)
!4463 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4464 = !{!4465}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4462, file: !4463, line: 50, baseType: !4466, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4463, line: 41, size: 512, align: 512, elements: !4468)
!4468 = !{!4469, !4470, !4475}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4467, file: !4463, line: 43, baseType: !410, size: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4467, file: !4463, line: 45, baseType: !4471, size: 192, offset: 64)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4463, line: 29, size: 192, elements: !4472)
!4472 = !{!4473, !4474}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4471, file: !4463, line: 30, baseType: !294, size: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4471, file: !4463, line: 32, baseType: !274, size: 64, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4467, file: !4463, line: 46, baseType: !274, size: 64, offset: 256)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !508, file: !64, line: 1305, baseType: !4462, size: 64, offset: 9024)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !508, file: !64, line: 1306, baseType: !685, size: 128, align: 64, offset: 9088)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !508, file: !64, line: 1307, baseType: !1416, size: 256, offset: 9216)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !508, file: !64, line: 1309, baseType: !707, size: 256, offset: 9472)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !508, file: !64, line: 1314, baseType: !101, size: 32, offset: 9728)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !508, file: !64, line: 1317, baseType: !410, size: 32, align: 512, offset: 10240)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !508, file: !64, line: 1318, baseType: !294, size: 128, offset: 10304)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !508, file: !64, line: 1320, baseType: !410, size: 32, offset: 10432)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !508, file: !64, line: 1321, baseType: !294, size: 128, offset: 10496)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !502, file: !503, line: 73, baseType: !101, size: 32, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !502, file: !503, line: 74, baseType: !4487, size: 64, offset: 192)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !810, line: 42, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !452, file: !348, line: 141, baseType: !4491, size: 64, offset: 704)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!101, !2570, !902}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !452, file: !348, line: 142, baseType: !4495, size: 64, offset: 768)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!346, !346, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !347, file: !348, line: 96, baseType: !507, size: 64, offset: 832)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !347, file: !348, line: 97, baseType: !272, size: 64, offset: 896)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !347, file: !348, line: 98, baseType: !273, size: 64, offset: 960)
!4503 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !348, line: 100, baseType: !4504, size: 128, offset: 1024)
!4504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !348, line: 100, size: 128, elements: !4505)
!4505 = !{!4506, !4507}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4504, file: !348, line: 101, baseType: !294, size: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4504, file: !348, line: 102, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !347, file: !348, line: 104, baseType: !294, size: 128, offset: 1152)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !347, file: !348, line: 105, baseType: !294, size: 128, offset: 1280)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !347, file: !348, line: 113, baseType: !4512, size: 128, offset: 1408)
!4512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !348, line: 109, size: 128, elements: !4513)
!4513 = !{!4514, !4515, !4516}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4512, file: !348, line: 110, baseType: !762, size: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4512, file: !348, line: 111, baseType: !362, size: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4512, file: !348, line: 112, baseType: !685, size: 128, align: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !340, file: !64, line: 1968, baseType: !4518, size: 64, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!470, !346, !309, !4521}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4523, line: 10, size: 128, elements: !4524)
!4523 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4524 = !{!4525, !4526}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4522, file: !4523, line: 11, baseType: !1880, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4522, file: !4523, line: 12, baseType: !273, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !340, file: !64, line: 1969, baseType: !4528, size: 64, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!101, !4487, !309, !101}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !340, file: !64, line: 1970, baseType: !4532, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!334, !309, !101, !902}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !340, file: !64, line: 1972, baseType: !4536, size: 64, offset: 256)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!101, !346, !496, !101}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !340, file: !64, line: 1974, baseType: !4540, size: 64, offset: 320)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!101, !4487, !309, !346, !313, !902}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !340, file: !64, line: 1976, baseType: !4544, size: 64, offset: 384)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!101, !346, !309, !346}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !340, file: !64, line: 1977, baseType: !4548, size: 64, offset: 448)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!101, !309, !346}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !340, file: !64, line: 1978, baseType: !4552, size: 64, offset: 512)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!101, !4487, !309, !346, !470}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !340, file: !64, line: 1980, baseType: !4556, size: 64, offset: 576)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!101, !4487, !309, !346, !313}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !340, file: !64, line: 1982, baseType: !4548, size: 64, offset: 640)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !340, file: !64, line: 1983, baseType: !4561, size: 64, offset: 704)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!101, !4487, !309, !346, !313, !512}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !340, file: !64, line: 1985, baseType: !4565, size: 64, offset: 768)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!101, !4487, !309, !346, !309, !346, !7}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !340, file: !64, line: 1987, baseType: !4569, size: 64, offset: 832)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!101, !4487, !346, !4572}
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !4574)
!4574 = !{!4575, !4576, !4577, !4587, !4596, !4597, !4602, !4603, !4604}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4573, file: !64, line: 227, baseType: !7, size: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4573, file: !64, line: 228, baseType: !313, size: 16, offset: 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, scope: !4573, file: !64, line: 241, baseType: !4578, size: 32, offset: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4573, file: !64, line: 241, size: 32, elements: !4579)
!4579 = !{!4580, !4581}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4578, file: !64, line: 242, baseType: !317, size: 32)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4578, file: !64, line: 243, baseType: !4582, size: 32)
!4582 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4583, line: 16, baseType: !4584)
!4583 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4583, line: 14, size: 32, elements: !4585)
!4585 = !{!4586}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4584, file: !4583, line: 15, baseType: !322, size: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, scope: !4573, file: !64, line: 245, baseType: !4588, size: 32, offset: 96)
!4588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4573, file: !64, line: 245, size: 32, elements: !4589)
!4589 = !{!4590, !4591}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4588, file: !64, line: 246, baseType: !326, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4588, file: !64, line: 247, baseType: !4592, size: 32)
!4592 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4583, line: 20, baseType: !4593)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4583, line: 18, size: 32, elements: !4594)
!4594 = !{!4595}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4593, file: !4583, line: 19, baseType: !330, size: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4573, file: !64, line: 249, baseType: !276, size: 64, offset: 128)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4573, file: !64, line: 250, baseType: !4598, size: 128, offset: 192)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !860, line: 13, size: 128, elements: !4599)
!4599 = !{!4600, !4601}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4598, file: !860, line: 14, baseType: !859, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4598, file: !860, line: 15, baseType: !274, size: 64, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4573, file: !64, line: 251, baseType: !4598, size: 128, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4573, file: !64, line: 252, baseType: !4598, size: 128, offset: 448)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4573, file: !64, line: 259, baseType: !672, size: 64, offset: 576)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !340, file: !64, line: 1988, baseType: !4606, size: 64, offset: 896)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!101, !4487, !2570, !4609, !380, !7}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4611, line: 22, size: 1280, elements: !4612)
!4611 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4612 = !{!4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4610, file: !4611, line: 23, baseType: !380, size: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4610, file: !4611, line: 24, baseType: !313, size: 16, offset: 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4610, file: !4611, line: 25, baseType: !7, size: 32, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4610, file: !4611, line: 26, baseType: !867, size: 32, offset: 96)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4610, file: !4611, line: 27, baseType: !386, size: 64, offset: 128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4610, file: !4611, line: 28, baseType: !386, size: 64, offset: 192)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4610, file: !4611, line: 41, baseType: !386, size: 64, offset: 256)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4610, file: !4611, line: 42, baseType: !512, size: 32, offset: 320)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4610, file: !4611, line: 43, baseType: !512, size: 32, offset: 352)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4610, file: !4611, line: 44, baseType: !317, size: 32, offset: 384)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4610, file: !4611, line: 45, baseType: !326, size: 32, offset: 416)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4610, file: !4611, line: 46, baseType: !276, size: 64, offset: 448)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4610, file: !4611, line: 47, baseType: !4598, size: 128, offset: 512)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4610, file: !4611, line: 48, baseType: !4598, size: 128, offset: 640)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4610, file: !4611, line: 49, baseType: !4598, size: 128, offset: 768)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4610, file: !4611, line: 50, baseType: !4598, size: 128, offset: 896)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4610, file: !4611, line: 51, baseType: !386, size: 64, offset: 1024)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4610, file: !4611, line: 52, baseType: !386, size: 64, offset: 1088)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4610, file: !4611, line: 53, baseType: !380, size: 32, offset: 1152)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4610, file: !4611, line: 54, baseType: !380, size: 32, offset: 1184)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4610, file: !4611, line: 55, baseType: !386, size: 64, offset: 1216)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !340, file: !64, line: 1990, baseType: !4635, size: 64, offset: 960)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!628, !346, !496, !640}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !340, file: !64, line: 1991, baseType: !4639, size: 64, offset: 1024)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!101, !309, !4642, !386, !386}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !340, file: !64, line: 1993, baseType: !4645, size: 64, offset: 1088)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!101, !309, !101}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !340, file: !64, line: 1994, baseType: !4649, size: 64, offset: 1152)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!101, !309, !346, !672, !7, !313}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !340, file: !64, line: 1997, baseType: !4653, size: 64, offset: 1216)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!101, !4487, !309, !672, !313}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !340, file: !64, line: 1999, baseType: !4657, size: 64, offset: 1280)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!334, !4487, !346, !101}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !340, file: !64, line: 2001, baseType: !4661, size: 64, offset: 1344)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!101, !4487, !346, !334, !101}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !340, file: !64, line: 2003, baseType: !4665, size: 64, offset: 1408)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!101, !4487, !346, !4668}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !340, file: !64, line: 2005, baseType: !4671, size: 64, offset: 1472)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!101, !346, !4668}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !340, file: !64, line: 2006, baseType: !4675, size: 64, offset: 1536)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!4678, !309}
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !4680)
!4680 = !{!4681, !4682}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4679, file: !64, line: 3193, baseType: !1596, size: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4679, file: !64, line: 3194, baseType: !380, size: 32, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !310, file: !64, line: 655, baseType: !507, size: 64, offset: 448)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !310, file: !64, line: 656, baseType: !305, size: 64, offset: 512)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !310, file: !64, line: 659, baseType: !273, size: 64, offset: 576)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !310, file: !64, line: 663, baseType: !272, size: 64, offset: 640)
!4687 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !64, line: 671, baseType: !4688, size: 32, offset: 704)
!4688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !64, line: 671, size: 32, elements: !4689)
!4689 = !{!4690, !4692}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4688, file: !64, line: 672, baseType: !4691, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4688, file: !64, line: 673, baseType: !7, size: 32)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !310, file: !64, line: 675, baseType: !512, size: 32, offset: 736)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !310, file: !64, line: 676, baseType: !276, size: 64, offset: 768)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !310, file: !64, line: 677, baseType: !4598, size: 128, offset: 832)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !310, file: !64, line: 678, baseType: !4598, size: 128, offset: 960)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !310, file: !64, line: 679, baseType: !4598, size: 128, offset: 1088)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !310, file: !64, line: 680, baseType: !410, size: 32, offset: 1216)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !310, file: !64, line: 681, baseType: !314, size: 16, offset: 1248)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !310, file: !64, line: 682, baseType: !438, size: 8, offset: 1264)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !310, file: !64, line: 683, baseType: !438, size: 8, offset: 1272)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !310, file: !64, line: 684, baseType: !2643, size: 64, offset: 1280)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !310, file: !64, line: 691, baseType: !272, size: 64, offset: 1344)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !310, file: !64, line: 692, baseType: !843, size: 320, offset: 1408)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !310, file: !64, line: 694, baseType: !272, size: 64, offset: 1728)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !310, file: !64, line: 695, baseType: !272, size: 64, offset: 1792)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !310, file: !64, line: 697, baseType: !762, size: 128, offset: 1856)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !310, file: !64, line: 698, baseType: !294, size: 128, offset: 1984)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !310, file: !64, line: 707, baseType: !294, size: 128, offset: 2112)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !310, file: !64, line: 708, baseType: !294, size: 128, offset: 2240)
!4711 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !64, line: 709, baseType: !4712, size: 128, offset: 2368)
!4712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !64, line: 709, size: 128, elements: !4713)
!4713 = !{!4714, !4715}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4712, file: !64, line: 710, baseType: !758, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4712, file: !64, line: 711, baseType: !685, size: 128, align: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !310, file: !64, line: 713, baseType: !700, size: 64, offset: 2496)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !310, file: !64, line: 714, baseType: !700, size: 64, offset: 2560)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !310, file: !64, line: 715, baseType: !430, size: 32, offset: 2624)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !310, file: !64, line: 716, baseType: !430, size: 32, offset: 2656)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !310, file: !64, line: 717, baseType: !430, size: 32, offset: 2688)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !310, file: !64, line: 719, baseType: !430, size: 32, offset: 2720)
!4722 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !64, line: 721, baseType: !4723, size: 64, offset: 2752)
!4723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !64, line: 721, size: 64, elements: !4724)
!4724 = !{!4725, !4726}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4723, file: !64, line: 722, baseType: !1021, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4723, file: !64, line: 723, baseType: !2379, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !310, file: !64, line: 725, baseType: !4728, size: 64, offset: 2816)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !1671, line: 129, size: 448, elements: !4730)
!4730 = !{!4731, !4732, !4733, !4734}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4729, file: !1671, line: 130, baseType: !410, size: 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4729, file: !1671, line: 131, baseType: !294, size: 128, offset: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4729, file: !1671, line: 132, baseType: !294, size: 128, offset: 192)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4729, file: !1671, line: 133, baseType: !294, size: 128, offset: 320)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !310, file: !64, line: 726, baseType: !306, size: 1536, align: 64, offset: 2880)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !310, file: !64, line: 727, baseType: !294, size: 128, offset: 4416)
!4737 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !64, line: 728, baseType: !4738, size: 64, offset: 4544)
!4738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !64, line: 728, size: 64, elements: !4739)
!4739 = !{!4740, !4741, !4744, !4745}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4738, file: !64, line: 729, baseType: !1788, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4738, file: !64, line: 730, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 730, flags: DIFlagFwdDecl)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4738, file: !64, line: 731, baseType: !496, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4738, file: !64, line: 732, baseType: !7, size: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !310, file: !64, line: 735, baseType: !382, size: 32, offset: 4608)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !310, file: !64, line: 738, baseType: !382, size: 32, offset: 4640)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !310, file: !64, line: 739, baseType: !4424, size: 64, offset: 4672)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !310, file: !64, line: 750, baseType: !273, size: 64, offset: 4736)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !306, file: !64, line: 474, baseType: !1596, size: 128, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !306, file: !64, line: 475, baseType: !843, size: 320, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !306, file: !64, line: 476, baseType: !1525, size: 32, offset: 512)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !306, file: !64, line: 477, baseType: !430, size: 32, offset: 544)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !306, file: !64, line: 482, baseType: !2965, size: 128, offset: 576)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !306, file: !64, line: 483, baseType: !272, size: 64, offset: 704)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !306, file: !64, line: 484, baseType: !272, size: 64, offset: 768)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !306, file: !64, line: 485, baseType: !4758, size: 64, offset: 832)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4760)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !4761)
!4761 = !{!4762, !4766, !4770, !4774, !4778, !4794, !4799, !4803, !4807, !4811, !4815, !4819, !4820, !4824, !4828, !4832, !4837, !4841, !4848, !4849}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4760, file: !64, line: 405, baseType: !4763, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!101, !1128, !2391}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4760, file: !64, line: 406, baseType: !4767, size: 64, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!101, !672, !280}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4760, file: !64, line: 409, baseType: !4771, size: 64, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!101, !305, !2391}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4760, file: !64, line: 412, baseType: !4775, size: 64, offset: 192)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!902, !305, !280}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4760, file: !64, line: 414, baseType: !4779, size: 64, offset: 256)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !4782}
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1061, line: 1276, size: 448, elements: !4784)
!4784 = !{!4785, !4786, !4787, !4789, !4790, !4791, !4792, !4793}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4783, file: !1061, line: 1277, baseType: !672, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4783, file: !1061, line: 1278, baseType: !305, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4783, file: !1061, line: 1279, baseType: !4788, size: 64, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4783, file: !1061, line: 1281, baseType: !272, size: 64, offset: 192)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4783, file: !1061, line: 1282, baseType: !7, size: 32, offset: 256)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4783, file: !1061, line: 1283, baseType: !7, size: 32, offset: 288)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4783, file: !1061, line: 1284, baseType: !902, size: 8, offset: 320)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4783, file: !1061, line: 1285, baseType: !272, size: 64, offset: 384)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4760, file: !64, line: 416, baseType: !4795, size: 64, offset: 320)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!101, !672, !305, !276, !7, !4798, !1743}
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4760, file: !64, line: 419, baseType: !4800, size: 64, offset: 384)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!101, !672, !305, !276, !7, !7, !1128, !273}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4760, file: !64, line: 424, baseType: !4804, size: 64, offset: 448)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!2674, !305, !2674}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4760, file: !64, line: 425, baseType: !4808, size: 64, offset: 512)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{null, !280, !640, !640}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4760, file: !64, line: 426, baseType: !4812, size: 64, offset: 576)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!902, !280, !1525}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4760, file: !64, line: 427, baseType: !4816, size: 64, offset: 640)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{null, !280}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4760, file: !64, line: 428, baseType: !1040, size: 64, offset: 704)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4760, file: !64, line: 433, baseType: !4821, size: 64, offset: 768)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!101, !305, !280, !280, !50}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4760, file: !64, line: 435, baseType: !4825, size: 64, offset: 832)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!101, !280}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4760, file: !64, line: 436, baseType: !4829, size: 64, offset: 896)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!902, !280, !640, !640}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4760, file: !64, line: 438, baseType: !4833, size: 64, offset: 960)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{null, !280, !4836, !4836}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4760, file: !64, line: 439, baseType: !4838, size: 64, offset: 1024)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!101, !305, !1128}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4760, file: !64, line: 442, baseType: !4842, size: 64, offset: 1088)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!101, !4845, !672, !4847}
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4760, file: !64, line: 444, baseType: !1796, size: 64, offset: 1152)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4760, file: !64, line: 445, baseType: !4850, size: 64, offset: 1216)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!101, !1043, !1082}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !64, line: 486, baseType: !272, size: 64, offset: 896)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !306, file: !64, line: 487, baseType: !843, size: 320, offset: 960)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !306, file: !64, line: 488, baseType: !1840, size: 32, offset: 1280)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !306, file: !64, line: 489, baseType: !410, size: 32, offset: 1312)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !306, file: !64, line: 490, baseType: !294, size: 128, offset: 1344)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !306, file: !64, line: 491, baseType: !273, size: 64, offset: 1472)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !287, file: !30, line: 311, baseType: !272, size: 64, offset: 256)
!4860 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !30, line: 312, baseType: !4861, size: 64, offset: 320)
!4861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !30, line: 312, size: 64, elements: !4862)
!4862 = !{!4863, !4864}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4861, file: !30, line: 313, baseType: !273, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4861, file: !30, line: 314, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !4866)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !4867)
!4867 = !{!4868}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4866, file: !30, line: 256, baseType: !272, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !287, file: !30, line: 316, baseType: !430, size: 32, offset: 384)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !287, file: !30, line: 317, baseType: !430, size: 32, offset: 416)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !284, file: !30, line: 323, baseType: !1129, size: 512, align: 128)
!4872 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !30, line: 325, baseType: !4873, size: 512, offset: 512)
!4873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !30, line: 325, size: 512, elements: !4874)
!4874 = !{!4875, !4885}
!4875 = !DIDerivedType(tag: DW_TAG_member, scope: !4873, file: !30, line: 326, baseType: !4876, size: 320)
!4876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4873, file: !30, line: 326, size: 320, elements: !4877)
!4877 = !{!4878, !4879, !4880, !4881, !4882, !4883, !4884}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4876, file: !30, line: 327, baseType: !272, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4876, file: !30, line: 328, baseType: !272, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4876, file: !30, line: 329, baseType: !272, size: 64, offset: 128)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4876, file: !30, line: 331, baseType: !430, size: 32, offset: 192)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4876, file: !30, line: 332, baseType: !430, size: 32, offset: 224)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4876, file: !30, line: 333, baseType: !430, size: 32, offset: 256)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4876, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4873, file: !30, line: 339, baseType: !1129, size: 512, align: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !30, line: 341, baseType: !4887, size: 512, offset: 1024)
!4887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !30, line: 341, size: 512, elements: !4888)
!4888 = !{!4889, !4898, !4904}
!4889 = !DIDerivedType(tag: DW_TAG_member, scope: !4887, file: !30, line: 342, baseType: !4890, size: 384)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4887, file: !30, line: 342, size: 384, elements: !4891)
!4891 = !{!4892, !4893, !4894, !4895, !4896, !4897}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4890, file: !30, line: 343, baseType: !272, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4890, file: !30, line: 344, baseType: !272, size: 64, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4890, file: !30, line: 346, baseType: !273, size: 64, offset: 128)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4890, file: !30, line: 347, baseType: !273, size: 64, offset: 192)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4890, file: !30, line: 348, baseType: !273, size: 64, offset: 256)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4890, file: !30, line: 349, baseType: !273, size: 64, offset: 320)
!4898 = !DIDerivedType(tag: DW_TAG_member, scope: !4887, file: !30, line: 352, baseType: !4899, size: 256)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4887, file: !30, line: 352, size: 256, elements: !4900)
!4900 = !{!4901, !4902, !4903}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4899, file: !30, line: 353, baseType: !272, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4899, file: !30, line: 354, baseType: !272, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4899, file: !30, line: 356, baseType: !294, size: 128, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4887, file: !30, line: 359, baseType: !1129, size: 512, align: 128)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4907)
!4907 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !272)
!4908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !277, line: 42, baseType: !272)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!4912 = !{!0, !4913, !4915, !4917, !4921, !4926, !5036}
!4913 = !DIGlobalVariableExpression(var: !4914, expr: !DIExpression())
!4914 = distinct !DIGlobalVariable(name: "v9fs_file_operations_dotl", scope: !2, file: !3, line: 597, type: !1022, isLocal: false, isDefinition: true)
!4915 = !DIGlobalVariableExpression(var: !4916, expr: !DIExpression())
!4916 = distinct !DIGlobalVariable(name: "v9fs_mmap_file_vm_ops", scope: !2, file: !3, line: 576, type: !1460, isLocal: true, isDefinition: true)
!4917 = !DIGlobalVariableExpression(var: !4918, expr: !DIExpression())
!4918 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !4919, file: !4920, line: 112, type: !273, isLocal: true, isDefinition: true)
!4919 = distinct !DISubprogram(name: "might_resched", scope: !4920, file: !4920, line: 110, type: !1748, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4920 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4921 = !DIGlobalVariableExpression(var: !4922, expr: !DIExpression())
!4922 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !4923, isLocal: true, isDefinition: true)
!4923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 136, elements: !4924)
!4924 = !{!4925}
!4925 = !DISubrange(count: 17)
!4926 = !DIGlobalVariableExpression(var: !4927, expr: !DIExpression())
!4927 = distinct !DIGlobalVariable(name: "__already_done", scope: !4928, file: !3, line: 197, type: !902, isLocal: true, isDefinition: true)
!4928 = distinct !DISubprogram(name: "v9fs_file_do_lock", scope: !3, file: !3, line: 118, type: !1667, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4929)
!4929 = !{!4930, !4931, !4932, !4933, !4942, !4998, !5000, !5001, !5002, !5021, !5024, !5027, !5028, !5030, !5034, !5035}
!4930 = !DILocalVariable(name: "filp", arg: 1, scope: !4928, file: !3, line: 118, type: !672)
!4931 = !DILocalVariable(name: "cmd", arg: 2, scope: !4928, file: !3, line: 118, type: !101)
!4932 = !DILocalVariable(name: "fl", arg: 3, scope: !4928, file: !3, line: 118, type: !1669)
!4933 = !DILocalVariable(name: "flock", scope: !4928, file: !3, line: 120, type: !4934)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_flock", file: !175, line: 495, size: 320, elements: !4935)
!4935 = !{!4936, !4937, !4938, !4939, !4940, !4941}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4934, file: !175, line: 496, baseType: !438, size: 8)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4934, file: !175, line: 497, baseType: !380, size: 32, offset: 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4934, file: !175, line: 498, baseType: !386, size: 64, offset: 64)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4934, file: !175, line: 499, baseType: !386, size: 64, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4934, file: !175, line: 500, baseType: !380, size: 32, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !4934, file: !175, line: 501, baseType: !496, size: 64, offset: 256)
!4942 = !DILocalVariable(name: "fid", scope: !4928, file: !3, line: 121, type: !4943)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_fid", file: !159, line: 148, size: 704, elements: !4945)
!4945 = !{!4946, !4984, !4985, !4986, !4987, !4993, !4994, !4995, !4996, !4997}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !4944, file: !159, line: 149, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_client", file: !159, line: 102, size: 1408, elements: !4949)
!4949 = !{!4950, !4951, !4952, !4953, !4956, !4957, !4958, !4962, !4975, !4982, !4983}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4948, file: !159, line: 103, baseType: !410, size: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "msize", scope: !4948, file: !159, line: 104, baseType: !7, size: 32, offset: 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !4948, file: !159, line: 105, baseType: !392, size: 8, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "trans_mod", scope: !4948, file: !159, line: 106, baseType: !4954, size: 64, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DICompositeType(tag: DW_TAG_structure_type, name: "p9_trans_module", file: !159, line: 106, flags: DIFlagFwdDecl)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4948, file: !159, line: 107, baseType: !158, size: 32, offset: 192)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "trans", scope: !4948, file: !159, line: 108, baseType: !273, size: 64, offset: 256)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "fcall_cache", scope: !4948, file: !159, line: 109, baseType: !4959, size: 64, offset: 320)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4961, line: 325, flags: DIFlagFwdDecl)
!4961 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "trans_opts", scope: !4948, file: !159, line: 121, baseType: !4963, size: 64, offset: 384)
!4963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4948, file: !159, line: 111, size: 64, elements: !4964)
!4964 = !{!4965, !4970}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4963, file: !159, line: 115, baseType: !4966, size: 64)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4963, file: !159, line: 112, size: 64, elements: !4967)
!4967 = !{!4968, !4969}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "rfd", scope: !4966, file: !159, line: 113, baseType: !101, size: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !4966, file: !159, line: 114, baseType: !101, size: 32, offset: 32)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !4963, file: !159, line: 120, baseType: !4971, size: 32)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4963, file: !159, line: 116, size: 32, elements: !4972)
!4972 = !{!4973, !4974}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4971, file: !159, line: 117, baseType: !445, size: 16)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "privport", scope: !4971, file: !159, line: 118, baseType: !902, size: 8, offset: 16)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "fids", scope: !4948, file: !159, line: 123, baseType: !4976, size: 192, offset: 448)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4977, line: 19, size: 192, elements: !4978)
!4977 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4978 = !{!4979, !4980, !4981}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4976, file: !4977, line: 20, baseType: !1596, size: 128)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4976, file: !4977, line: 21, baseType: !7, size: 32, offset: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4976, file: !4977, line: 22, baseType: !7, size: 32, offset: 160)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !4948, file: !159, line: 124, baseType: !4976, size: 192, offset: 640)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4948, file: !159, line: 126, baseType: !3657, size: 520, offset: 832)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !4944, file: !159, line: 150, baseType: !380, size: 32, offset: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4944, file: !159, line: 151, baseType: !750, size: 32, offset: 96)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4944, file: !159, line: 152, baseType: !101, size: 32, offset: 128)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !4944, file: !159, line: 153, baseType: !4988, size: 128, offset: 192)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_qid", file: !175, line: 363, size: 128, elements: !4989)
!4989 = !{!4990, !4991, !4992}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4988, file: !175, line: 364, baseType: !438, size: 8)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4988, file: !175, line: 365, baseType: !380, size: 32, offset: 32)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !4988, file: !175, line: 366, baseType: !386, size: 64, offset: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "iounit", scope: !4944, file: !159, line: 154, baseType: !380, size: 32, offset: 320)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4944, file: !159, line: 155, baseType: !317, size: 32, offset: 352)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "rdir", scope: !4944, file: !159, line: 157, baseType: !273, size: 64, offset: 384)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "dlist", scope: !4944, file: !159, line: 159, baseType: !762, size: 128, offset: 448)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "ilist", scope: !4944, file: !159, line: 160, baseType: !762, size: 128, offset: 576)
!4998 = !DILocalVariable(name: "status", scope: !4928, file: !3, line: 122, type: !4999)
!4999 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !277, line: 108, baseType: !438)
!5000 = !DILocalVariable(name: "res", scope: !4928, file: !3, line: 123, type: !101)
!5001 = !DILocalVariable(name: "fl_type", scope: !4928, file: !3, line: 124, type: !392)
!5002 = !DILocalVariable(name: "v9ses", scope: !4928, file: !3, line: 125, type: !5003)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v9fs_session_info", file: !166, line: 109, size: 960, elements: !5005)
!5005 = !{!5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5004, file: !166, line: 111, baseType: !7, size: 32)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "nodev", scope: !5004, file: !166, line: 112, baseType: !392, size: 8, offset: 32)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !5004, file: !166, line: 113, baseType: !314, size: 16, offset: 48)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "afid", scope: !5004, file: !166, line: 114, baseType: !7, size: 32, offset: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !5004, file: !166, line: 115, baseType: !7, size: 32, offset: 96)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !5004, file: !166, line: 121, baseType: !496, size: 64, offset: 128)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !5004, file: !166, line: 122, baseType: !496, size: 64, offset: 192)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !5004, file: !166, line: 123, baseType: !7, size: 32, offset: 256)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "dfltuid", scope: !5004, file: !166, line: 124, baseType: !317, size: 32, offset: 288)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "dfltgid", scope: !5004, file: !166, line: 125, baseType: !326, size: 32, offset: 320)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5004, file: !166, line: 126, baseType: !317, size: 32, offset: 352)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !5004, file: !166, line: 127, baseType: !4947, size: 64, offset: 384)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "slist", scope: !5004, file: !166, line: 128, baseType: !294, size: 128, offset: 448)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "rename_sem", scope: !5004, file: !166, line: 129, baseType: !843, size: 320, offset: 576)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "session_lock_timeout", scope: !5004, file: !166, line: 130, baseType: !274, size: 64, offset: 896)
!5021 = !DILocalVariable(name: "__ret_do_once", scope: !5022, file: !3, line: 197, type: !902)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 197, column: 3)
!5023 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 189, column: 18)
!5024 = !DILocalVariable(name: "__ret_cond", scope: !5025, file: !3, line: 197, type: !902)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 197, column: 3)
!5026 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 197, column: 3)
!5027 = !DILocalVariable(name: "__ret_once", scope: !5025, file: !3, line: 197, type: !902)
!5028 = !DILocalVariable(name: "__ret_warn_on", scope: !5029, file: !3, line: 197, type: !101)
!5029 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 197, column: 3)
!5030 = !DILocalVariable(name: "__flags", scope: !5031, file: !3, line: 197, type: !101)
!5031 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 197, column: 3)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 197, column: 3)
!5033 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 197, column: 3)
!5034 = !DILabel(scope: !4928, name: "out_unlock", file: !3, line: 205)
!5035 = !DILabel(scope: !4928, name: "out", file: !3, line: 219)
!5036 = !DIGlobalVariableExpression(var: !5037, expr: !DIExpression())
!5037 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !5038, isLocal: true, isDefinition: true)
!5038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 240, elements: !5039)
!5039 = !{!5040}
!5040 = !DISubrange(count: 30)
!5041 = !{i32 7, !"Dwarf Version", i32 5}
!5042 = !{i32 2, !"Debug Info Version", i32 3}
!5043 = !{i32 1, !"wchar_size", i32 2}
!5044 = !{i32 8, !"cf-protection-branch", i32 1}
!5045 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5046 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5047 = !{i32 1, !"Code Model", i32 2}
!5048 = !{i32 1, !"override-stack-alignment", i32 8}
!5049 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5050 = distinct !DISubprogram(name: "v9fs_file_open", scope: !3, file: !3, line: 40, type: !1649, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5051)
!5051 = !{!5052, !5053, !5054, !5055, !5056, !5057, !5058}
!5052 = !DILocalVariable(name: "inode", arg: 1, scope: !5050, file: !3, line: 40, type: !309)
!5053 = !DILocalVariable(name: "file", arg: 2, scope: !5050, file: !3, line: 40, type: !672)
!5054 = !DILocalVariable(name: "err", scope: !5050, file: !3, line: 42, type: !101)
!5055 = !DILocalVariable(name: "v9ses", scope: !5050, file: !3, line: 43, type: !5003)
!5056 = !DILocalVariable(name: "fid", scope: !5050, file: !3, line: 44, type: !4943)
!5057 = !DILocalVariable(name: "omode", scope: !5050, file: !3, line: 45, type: !101)
!5058 = !DILocalVariable(name: "writeback_omode", scope: !5059, file: !3, line: 61, type: !101)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 60, column: 64)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 60, column: 7)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 55, column: 12)
!5062 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 55, column: 6)
!5063 = !DILocation(line: 40, column: 34, scope: !5050)
!5064 = !DILocation(line: 40, column: 54, scope: !5050)
!5065 = !DILocation(line: 42, column: 2, scope: !5050)
!5066 = !DILocation(line: 42, column: 6, scope: !5050)
!5067 = !DILocation(line: 43, column: 2, scope: !5050)
!5068 = !DILocation(line: 43, column: 28, scope: !5050)
!5069 = !DILocation(line: 44, column: 2, scope: !5050)
!5070 = !DILocation(line: 44, column: 17, scope: !5050)
!5071 = !DILocation(line: 45, column: 2, scope: !5050)
!5072 = !DILocation(line: 45, column: 6, scope: !5050)
!5073 = !DILocation(line: 47, column: 2, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 47, column: 2)
!5075 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 47, column: 2)
!5076 = !DILocation(line: 47, column: 2, scope: !5075)
!5077 = !DILocation(line: 48, column: 27, scope: !5050)
!5078 = !DILocation(line: 48, column: 10, scope: !5050)
!5079 = !DILocation(line: 48, column: 8, scope: !5050)
!5080 = !DILocation(line: 49, column: 22, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 49, column: 6)
!5082 = !DILocation(line: 49, column: 6, scope: !5081)
!5083 = !DILocation(line: 49, column: 6, scope: !5050)
!5084 = !DILocation(line: 50, column: 35, scope: !5081)
!5085 = !DILocation(line: 50, column: 41, scope: !5081)
!5086 = !DILocation(line: 50, column: 11, scope: !5081)
!5087 = !DILocation(line: 50, column: 9, scope: !5081)
!5088 = !DILocation(line: 50, column: 3, scope: !5081)
!5089 = !DILocation(line: 52, column: 29, scope: !5081)
!5090 = !DILocation(line: 52, column: 35, scope: !5081)
!5091 = !DILocation(line: 53, column: 22, scope: !5081)
!5092 = !DILocation(line: 53, column: 6, scope: !5081)
!5093 = !DILocation(line: 52, column: 11, scope: !5081)
!5094 = !DILocation(line: 52, column: 9, scope: !5081)
!5095 = !DILocation(line: 54, column: 8, scope: !5050)
!5096 = !DILocation(line: 54, column: 14, scope: !5050)
!5097 = !DILocation(line: 54, column: 6, scope: !5050)
!5098 = !DILocation(line: 55, column: 7, scope: !5062)
!5099 = !DILocation(line: 55, column: 6, scope: !5050)
!5100 = !DILocation(line: 56, column: 36, scope: !5061)
!5101 = !DILocation(line: 56, column: 24, scope: !5061)
!5102 = !DILocation(line: 56, column: 9, scope: !5061)
!5103 = !DILocation(line: 56, column: 7, scope: !5061)
!5104 = !DILocation(line: 57, column: 14, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 57, column: 7)
!5106 = !DILocation(line: 57, column: 7, scope: !5105)
!5107 = !DILocation(line: 57, column: 7, scope: !5061)
!5108 = !DILocation(line: 58, column: 19, scope: !5105)
!5109 = !DILocation(line: 58, column: 11, scope: !5105)
!5110 = !DILocation(line: 58, column: 4, scope: !5105)
!5111 = !DILocation(line: 60, column: 8, scope: !5060)
!5112 = !DILocation(line: 60, column: 15, scope: !5060)
!5113 = !DILocation(line: 60, column: 21, scope: !5060)
!5114 = !DILocation(line: 60, column: 40, scope: !5060)
!5115 = !DILocation(line: 60, column: 44, scope: !5060)
!5116 = !DILocation(line: 60, column: 50, scope: !5060)
!5117 = !DILocation(line: 60, column: 7, scope: !5061)
!5118 = !DILocation(line: 61, column: 4, scope: !5059)
!5119 = !DILocation(line: 61, column: 8, scope: !5059)
!5120 = !DILocation(line: 61, column: 27, scope: !5059)
!5121 = !DILocation(line: 61, column: 33, scope: !5059)
!5122 = !DILocation(line: 61, column: 47, scope: !5059)
!5123 = !DILocation(line: 63, column: 4, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 63, column: 4)
!5125 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 63, column: 4)
!5126 = !DILocation(line: 63, column: 4, scope: !5125)
!5127 = !DILocation(line: 64, column: 25, scope: !5059)
!5128 = !DILocation(line: 64, column: 30, scope: !5059)
!5129 = !DILocation(line: 64, column: 10, scope: !5059)
!5130 = !DILocation(line: 64, column: 8, scope: !5059)
!5131 = !DILocation(line: 65, column: 8, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 65, column: 8)
!5133 = !DILocation(line: 65, column: 12, scope: !5132)
!5134 = !DILocation(line: 65, column: 8, scope: !5059)
!5135 = !DILocation(line: 66, column: 5, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 66, column: 5)
!5137 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 66, column: 5)
!5138 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 65, column: 17)
!5139 = !DILocation(line: 66, column: 5, scope: !5137)
!5140 = !DILocation(line: 67, column: 26, scope: !5138)
!5141 = !DILocation(line: 67, column: 31, scope: !5138)
!5142 = !DILocation(line: 67, column: 11, scope: !5138)
!5143 = !DILocation(line: 67, column: 9, scope: !5138)
!5144 = !DILocation(line: 68, column: 5, scope: !5138)
!5145 = !DILocation(line: 68, column: 10, scope: !5138)
!5146 = !DILocation(line: 68, column: 15, scope: !5138)
!5147 = !DILocation(line: 69, column: 4, scope: !5138)
!5148 = !DILocation(line: 70, column: 3, scope: !5060)
!5149 = !DILocation(line: 70, column: 3, scope: !5059)
!5150 = !DILocation(line: 71, column: 25, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 70, column: 10)
!5152 = !DILocation(line: 71, column: 30, scope: !5151)
!5153 = !DILocation(line: 71, column: 10, scope: !5151)
!5154 = !DILocation(line: 71, column: 8, scope: !5151)
!5155 = !DILocation(line: 73, column: 7, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 73, column: 7)
!5157 = !DILocation(line: 73, column: 11, scope: !5156)
!5158 = !DILocation(line: 73, column: 7, scope: !5061)
!5159 = !DILocation(line: 74, column: 15, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 73, column: 16)
!5161 = !DILocation(line: 74, column: 4, scope: !5160)
!5162 = !DILocation(line: 75, column: 11, scope: !5160)
!5163 = !DILocation(line: 75, column: 4, scope: !5160)
!5164 = !DILocation(line: 77, column: 8, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 77, column: 7)
!5166 = !DILocation(line: 77, column: 14, scope: !5165)
!5167 = !DILocation(line: 77, column: 22, scope: !5165)
!5168 = !DILocation(line: 77, column: 34, scope: !5165)
!5169 = !DILocation(line: 78, column: 22, scope: !5165)
!5170 = !DILocation(line: 78, column: 6, scope: !5165)
!5171 = !DILocation(line: 78, column: 29, scope: !5165)
!5172 = !DILocation(line: 78, column: 49, scope: !5165)
!5173 = !DILocation(line: 78, column: 33, scope: !5165)
!5174 = !DILocation(line: 77, column: 7, scope: !5061)
!5175 = !DILocation(line: 79, column: 24, scope: !5165)
!5176 = !DILocation(line: 79, column: 4, scope: !5165)
!5177 = !DILocation(line: 81, column: 24, scope: !5061)
!5178 = !DILocation(line: 81, column: 3, scope: !5061)
!5179 = !DILocation(line: 81, column: 9, scope: !5061)
!5180 = !DILocation(line: 81, column: 22, scope: !5061)
!5181 = !DILocation(line: 82, column: 2, scope: !5061)
!5182 = !DILocation(line: 89, column: 21, scope: !5050)
!5183 = !DILocation(line: 89, column: 26, scope: !5050)
!5184 = !DILocation(line: 89, column: 33, scope: !5050)
!5185 = !DILocation(line: 89, column: 40, scope: !5050)
!5186 = !DILocation(line: 89, column: 47, scope: !5050)
!5187 = !DILocation(line: 89, column: 54, scope: !5050)
!5188 = !DILocation(line: 89, column: 60, scope: !5050)
!5189 = !DILocation(line: 89, column: 2, scope: !5050)
!5190 = !DILocation(line: 90, column: 20, scope: !5050)
!5191 = !DILocation(line: 90, column: 2, scope: !5050)
!5192 = !DILocation(line: 91, column: 2, scope: !5050)
!5193 = !DILocation(line: 92, column: 1, scope: !5050)
!5194 = distinct !DISubprogram(name: "v9fs_inode2v9ses", scope: !166, file: !166, line: 200, type: !5195, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5197)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!5003, !309}
!5197 = !{!5198}
!5198 = !DILocalVariable(name: "inode", arg: 1, scope: !5194, file: !166, line: 200, type: !309)
!5199 = !DILocation(line: 200, column: 72, scope: !5194)
!5200 = !DILocation(line: 202, column: 9, scope: !5194)
!5201 = !DILocation(line: 202, column: 16, scope: !5194)
!5202 = !DILocation(line: 202, column: 22, scope: !5194)
!5203 = !DILocation(line: 202, column: 2, scope: !5194)
!5204 = distinct !DISubprogram(name: "v9fs_proto_dotl", scope: !166, file: !166, line: 215, type: !5205, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5207)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!101, !5003}
!5207 = !{!5208}
!5208 = !DILocalVariable(name: "v9ses", arg: 1, scope: !5204, file: !166, line: 215, type: !5003)
!5209 = !DILocation(line: 215, column: 61, scope: !5204)
!5210 = !DILocation(line: 217, column: 9, scope: !5204)
!5211 = !DILocation(line: 217, column: 16, scope: !5204)
!5212 = !DILocation(line: 217, column: 22, scope: !5204)
!5213 = !DILocation(line: 217, column: 2, scope: !5204)
!5214 = !DISubprogram(name: "v9fs_open_to_dotl_flags", scope: !5215, file: !5215, line: 74, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5215 = !DIFile(filename: "fs/9p/v9fs_vfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bbf97b2e768068e259cd64f8af0c9d7b")
!5216 = !DISubprogram(name: "v9fs_uflags2omode", scope: !5215, file: !5215, line: 57, type: !5217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!101, !101, !101}
!5219 = distinct !DISubprogram(name: "v9fs_proto_dotu", scope: !166, file: !166, line: 210, type: !5205, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5220)
!5220 = !{!5221}
!5221 = !DILocalVariable(name: "v9ses", arg: 1, scope: !5219, file: !166, line: 210, type: !5003)
!5222 = !DILocation(line: 210, column: 61, scope: !5219)
!5223 = !DILocation(line: 212, column: 9, scope: !5219)
!5224 = !DILocation(line: 212, column: 16, scope: !5219)
!5225 = !DILocation(line: 212, column: 22, scope: !5219)
!5226 = !DILocation(line: 212, column: 2, scope: !5219)
!5227 = distinct !DISubprogram(name: "v9fs_fid_clone", scope: !5228, file: !5228, line: 25, type: !5229, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5231)
!5228 = !DIFile(filename: "fs/9p/fid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f18f8acac323ff9afd8e62a50848073")
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!4943, !346}
!5231 = !{!5232, !5233, !5234}
!5232 = !DILocalVariable(name: "dentry", arg: 1, scope: !5227, file: !5228, line: 25, type: !346)
!5233 = !DILocalVariable(name: "fid", scope: !5227, file: !5228, line: 27, type: !4943)
!5234 = !DILocalVariable(name: "nfid", scope: !5227, file: !5228, line: 27, type: !4943)
!5235 = !DILocation(line: 25, column: 60, scope: !5227)
!5236 = !DILocation(line: 27, column: 2, scope: !5227)
!5237 = !DILocation(line: 27, column: 17, scope: !5227)
!5238 = !DILocation(line: 27, column: 23, scope: !5227)
!5239 = !DILocation(line: 29, column: 24, scope: !5227)
!5240 = !DILocation(line: 29, column: 8, scope: !5227)
!5241 = !DILocation(line: 29, column: 6, scope: !5227)
!5242 = !DILocation(line: 30, column: 7, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5227, file: !5228, line: 30, column: 6)
!5244 = !DILocation(line: 30, column: 11, scope: !5243)
!5245 = !DILocation(line: 30, column: 21, scope: !5243)
!5246 = !DILocation(line: 30, column: 14, scope: !5243)
!5247 = !DILocation(line: 30, column: 6, scope: !5227)
!5248 = !DILocation(line: 31, column: 10, scope: !5243)
!5249 = !DILocation(line: 31, column: 3, scope: !5243)
!5250 = !DILocation(line: 33, column: 19, scope: !5227)
!5251 = !DILocation(line: 33, column: 9, scope: !5227)
!5252 = !DILocation(line: 33, column: 7, scope: !5227)
!5253 = !DILocation(line: 34, column: 13, scope: !5227)
!5254 = !DILocation(line: 34, column: 2, scope: !5227)
!5255 = !DILocation(line: 35, column: 9, scope: !5227)
!5256 = !DILocation(line: 35, column: 2, scope: !5227)
!5257 = !DILocation(line: 36, column: 1, scope: !5227)
!5258 = distinct !DISubprogram(name: "file_dentry", scope: !64, file: !64, line: 1078, type: !5259, scopeLine: 1079, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5263)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!346, !5261}
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!5263 = !{!5264}
!5264 = !DILocalVariable(name: "file", arg: 1, scope: !5258, file: !64, line: 1078, type: !5261)
!5265 = !DILocation(line: 1078, column: 61, scope: !5258)
!5266 = !DILocation(line: 1080, column: 16, scope: !5258)
!5267 = !DILocation(line: 1080, column: 22, scope: !5258)
!5268 = !DILocation(line: 1080, column: 29, scope: !5258)
!5269 = !DILocation(line: 1080, column: 48, scope: !5258)
!5270 = !DILocation(line: 1080, column: 37, scope: !5258)
!5271 = !DILocation(line: 1080, column: 9, scope: !5258)
!5272 = !DILocation(line: 1080, column: 2, scope: !5258)
!5273 = distinct !DISubprogram(name: "IS_ERR", scope: !5274, file: !5274, line: 59, type: !5275, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5277)
!5274 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!902, !1377}
!5277 = !{!5278}
!5278 = !DILocalVariable(name: "ptr", arg: 1, scope: !5273, file: !5274, line: 59, type: !1377)
!5279 = !DILocation(line: 59, column: 60, scope: !5273)
!5280 = !DILocation(line: 61, column: 9, scope: !5273)
!5281 = !DILocation(line: 61, column: 2, scope: !5273)
!5282 = distinct !DISubprogram(name: "PTR_ERR", scope: !5274, file: !5274, line: 49, type: !5283, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5285)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!274, !1377}
!5285 = !{!5286}
!5286 = !DILocalVariable(name: "ptr", arg: 1, scope: !5282, file: !5274, line: 49, type: !1377)
!5287 = !DILocation(line: 49, column: 61, scope: !5282)
!5288 = !DILocation(line: 51, column: 16, scope: !5282)
!5289 = !DILocation(line: 51, column: 9, scope: !5282)
!5290 = !DILocation(line: 51, column: 2, scope: !5282)
!5291 = !DISubprogram(name: "p9_client_open", scope: !159, file: !159, line: 194, type: !5292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{!101, !4943, !101}
!5294 = distinct !DISubprogram(name: "p9_fid_put", scope: !159, file: !159, line: 267, type: !5295, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5297)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!101, !4943}
!5297 = !{!5298}
!5298 = !DILocalVariable(name: "fid", arg: 1, scope: !5294, file: !159, line: 267, type: !4943)
!5299 = !DILocation(line: 267, column: 45, scope: !5294)
!5300 = !DILocation(line: 269, column: 7, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5294, file: !159, line: 269, column: 6)
!5302 = !DILocation(line: 269, column: 11, scope: !5301)
!5303 = !DILocation(line: 269, column: 21, scope: !5301)
!5304 = !DILocation(line: 269, column: 14, scope: !5301)
!5305 = !DILocation(line: 269, column: 6, scope: !5294)
!5306 = !DILocation(line: 270, column: 3, scope: !5301)
!5307 = !DILocation(line: 272, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5294, file: !159, line: 272, column: 6)
!5309 = !DILocation(line: 272, column: 6, scope: !5294)
!5310 = !DILocation(line: 273, column: 23, scope: !5308)
!5311 = !DILocation(line: 273, column: 3, scope: !5308)
!5312 = !DILocation(line: 275, column: 30, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5294, file: !159, line: 275, column: 6)
!5314 = !DILocation(line: 275, column: 35, scope: !5313)
!5315 = !DILocation(line: 275, column: 7, scope: !5313)
!5316 = !DILocation(line: 275, column: 6, scope: !5294)
!5317 = !DILocation(line: 276, column: 3, scope: !5313)
!5318 = !DILocation(line: 278, column: 25, scope: !5294)
!5319 = !DILocation(line: 278, column: 9, scope: !5294)
!5320 = !DILocation(line: 278, column: 2, scope: !5294)
!5321 = !DILocation(line: 279, column: 1, scope: !5294)
!5322 = !DISubprogram(name: "generic_file_llseek", scope: !64, file: !64, line: 3012, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5323 = distinct !DISubprogram(name: "v9fs_fid_add_modes", scope: !5228, file: !5228, line: 49, type: !5324, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5326)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{null, !4943, !7, !7, !7}
!5326 = !{!5327, !5328, !5329, !5330}
!5327 = !DILocalVariable(name: "fid", arg: 1, scope: !5323, file: !5228, line: 49, type: !4943)
!5328 = !DILocalVariable(name: "s_flags", arg: 2, scope: !5323, file: !5228, line: 49, type: !7)
!5329 = !DILocalVariable(name: "s_cache", arg: 3, scope: !5323, file: !5228, line: 50, type: !7)
!5330 = !DILocalVariable(name: "f_flags", arg: 4, scope: !5323, file: !5228, line: 50, type: !7)
!5331 = !DILocation(line: 49, column: 54, scope: !5323)
!5332 = !DILocation(line: 49, column: 72, scope: !5323)
!5333 = !DILocation(line: 50, column: 15, scope: !5323)
!5334 = !DILocation(line: 50, column: 37, scope: !5323)
!5335 = !DILocation(line: 52, column: 8, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5323, file: !5228, line: 52, column: 6)
!5337 = !DILocation(line: 52, column: 17, scope: !5336)
!5338 = !DILocation(line: 53, column: 7, scope: !5336)
!5339 = !DILocation(line: 53, column: 12, scope: !5336)
!5340 = !DILocation(line: 53, column: 16, scope: !5336)
!5341 = !DILocation(line: 53, column: 24, scope: !5336)
!5342 = !DILocation(line: 53, column: 30, scope: !5336)
!5343 = !DILocation(line: 53, column: 35, scope: !5336)
!5344 = !DILocation(line: 53, column: 43, scope: !5336)
!5345 = !DILocation(line: 53, column: 62, scope: !5336)
!5346 = !DILocation(line: 54, column: 6, scope: !5336)
!5347 = !DILocation(line: 54, column: 14, scope: !5336)
!5348 = !DILocation(line: 54, column: 32, scope: !5336)
!5349 = !DILocation(line: 54, column: 36, scope: !5336)
!5350 = !DILocation(line: 54, column: 44, scope: !5336)
!5351 = !DILocation(line: 52, column: 6, scope: !5323)
!5352 = !DILocation(line: 55, column: 3, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5336, file: !5228, line: 54, column: 57)
!5354 = !DILocation(line: 55, column: 8, scope: !5353)
!5355 = !DILocation(line: 55, column: 13, scope: !5353)
!5356 = !DILocation(line: 56, column: 2, scope: !5353)
!5357 = !DILocation(line: 56, column: 16, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5336, file: !5228, line: 56, column: 13)
!5359 = !DILocation(line: 56, column: 24, scope: !5358)
!5360 = !DILocation(line: 56, column: 44, scope: !5358)
!5361 = !DILocation(line: 57, column: 6, scope: !5358)
!5362 = !DILocation(line: 57, column: 14, scope: !5358)
!5363 = !DILocation(line: 57, column: 25, scope: !5358)
!5364 = !DILocation(line: 57, column: 29, scope: !5358)
!5365 = !DILocation(line: 57, column: 37, scope: !5358)
!5366 = !DILocation(line: 56, column: 13, scope: !5336)
!5367 = !DILocation(line: 58, column: 3, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5358, file: !5228, line: 57, column: 51)
!5369 = !DILocation(line: 58, column: 8, scope: !5368)
!5370 = !DILocation(line: 58, column: 13, scope: !5368)
!5371 = !DILocation(line: 59, column: 2, scope: !5368)
!5372 = !DILocation(line: 60, column: 1, scope: !5323)
!5373 = !DISubprogram(name: "v9fs_open_fid_add", scope: !5228, file: !5228, line: 20, type: !5374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{null, !309, !5376}
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!5377 = distinct !DISubprogram(name: "v9fs_file_fsync_dotl", scope: !3, file: !3, line: 476, type: !1659, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5378)
!5378 = !{!5379, !5380, !5381, !5382, !5383, !5384, !5385}
!5379 = !DILocalVariable(name: "filp", arg: 1, scope: !5377, file: !3, line: 476, type: !672)
!5380 = !DILocalVariable(name: "start", arg: 2, scope: !5377, file: !3, line: 476, type: !276)
!5381 = !DILocalVariable(name: "end", arg: 3, scope: !5377, file: !3, line: 476, type: !276)
!5382 = !DILocalVariable(name: "datasync", arg: 4, scope: !5377, file: !3, line: 477, type: !101)
!5383 = !DILocalVariable(name: "fid", scope: !5377, file: !3, line: 479, type: !4943)
!5384 = !DILocalVariable(name: "inode", scope: !5377, file: !3, line: 480, type: !309)
!5385 = !DILocalVariable(name: "retval", scope: !5377, file: !3, line: 481, type: !101)
!5386 = !DILocation(line: 476, column: 39, scope: !5377)
!5387 = !DILocation(line: 476, column: 52, scope: !5377)
!5388 = !DILocation(line: 476, column: 66, scope: !5377)
!5389 = !DILocation(line: 477, column: 9, scope: !5377)
!5390 = !DILocation(line: 479, column: 2, scope: !5377)
!5391 = !DILocation(line: 479, column: 17, scope: !5377)
!5392 = !DILocation(line: 480, column: 2, scope: !5377)
!5393 = !DILocation(line: 480, column: 16, scope: !5377)
!5394 = !DILocation(line: 480, column: 24, scope: !5377)
!5395 = !DILocation(line: 480, column: 30, scope: !5377)
!5396 = !DILocation(line: 480, column: 41, scope: !5377)
!5397 = !DILocation(line: 481, column: 2, scope: !5377)
!5398 = !DILocation(line: 481, column: 6, scope: !5377)
!5399 = !DILocation(line: 483, column: 37, scope: !5377)
!5400 = !DILocation(line: 483, column: 43, scope: !5377)
!5401 = !DILocation(line: 483, column: 50, scope: !5377)
!5402 = !DILocation(line: 483, column: 11, scope: !5377)
!5403 = !DILocation(line: 483, column: 9, scope: !5377)
!5404 = !DILocation(line: 484, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 484, column: 6)
!5406 = !DILocation(line: 484, column: 6, scope: !5377)
!5407 = !DILocation(line: 485, column: 10, scope: !5405)
!5408 = !DILocation(line: 485, column: 3, scope: !5405)
!5409 = !DILocation(line: 487, column: 13, scope: !5377)
!5410 = !DILocation(line: 487, column: 2, scope: !5377)
!5411 = !DILocation(line: 488, column: 2, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 488, column: 2)
!5413 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 488, column: 2)
!5414 = !DILocation(line: 488, column: 2, scope: !5413)
!5415 = !DILocation(line: 490, column: 8, scope: !5377)
!5416 = !DILocation(line: 490, column: 14, scope: !5377)
!5417 = !DILocation(line: 490, column: 6, scope: !5377)
!5418 = !DILocation(line: 492, column: 27, scope: !5377)
!5419 = !DILocation(line: 492, column: 32, scope: !5377)
!5420 = !DILocation(line: 492, column: 11, scope: !5377)
!5421 = !DILocation(line: 492, column: 9, scope: !5377)
!5422 = !DILocation(line: 493, column: 15, scope: !5377)
!5423 = !DILocation(line: 493, column: 2, scope: !5377)
!5424 = !DILocation(line: 495, column: 9, scope: !5377)
!5425 = !DILocation(line: 495, column: 2, scope: !5377)
!5426 = !DILocation(line: 496, column: 1, scope: !5377)
!5427 = !DISubprogram(name: "file_write_and_wait_range", scope: !64, file: !64, line: 2622, type: !5428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{!101, !672, !276, !276}
!5430 = distinct !DISubprogram(name: "inode_lock", scope: !64, file: !64, line: 802, type: !2380, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5431)
!5431 = !{!5432}
!5432 = !DILocalVariable(name: "inode", arg: 1, scope: !5430, file: !64, line: 802, type: !309)
!5433 = !DILocation(line: 802, column: 45, scope: !5430)
!5434 = !DILocation(line: 804, column: 14, scope: !5430)
!5435 = !DILocation(line: 804, column: 21, scope: !5430)
!5436 = !DILocation(line: 804, column: 2, scope: !5430)
!5437 = !DILocation(line: 805, column: 1, scope: !5430)
!5438 = !DISubprogram(name: "p9_client_fsync", scope: !159, file: !159, line: 203, type: !5292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5439 = distinct !DISubprogram(name: "inode_unlock", scope: !64, file: !64, line: 807, type: !2380, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5440)
!5440 = !{!5441}
!5441 = !DILocalVariable(name: "inode", arg: 1, scope: !5439, file: !64, line: 807, type: !309)
!5442 = !DILocation(line: 807, column: 47, scope: !5439)
!5443 = !DILocation(line: 809, column: 12, scope: !5439)
!5444 = !DILocation(line: 809, column: 19, scope: !5439)
!5445 = !DILocation(line: 809, column: 2, scope: !5439)
!5446 = !DILocation(line: 810, column: 1, scope: !5439)
!5447 = distinct !DISubprogram(name: "v9fs_file_read_iter", scope: !3, file: !3, line: 353, type: !1041, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5448)
!5448 = !{!5449, !5450, !5451, !5452, !5453}
!5449 = !DILocalVariable(name: "iocb", arg: 1, scope: !5447, file: !3, line: 353, type: !1043)
!5450 = !DILocalVariable(name: "to", arg: 2, scope: !5447, file: !3, line: 353, type: !1082)
!5451 = !DILocalVariable(name: "fid", scope: !5447, file: !3, line: 355, type: !4943)
!5452 = !DILocalVariable(name: "ret", scope: !5447, file: !3, line: 356, type: !101)
!5453 = !DILocalVariable(name: "err", scope: !5447, file: !3, line: 356, type: !101)
!5454 = !DILocation(line: 353, column: 35, scope: !5447)
!5455 = !DILocation(line: 353, column: 58, scope: !5447)
!5456 = !DILocation(line: 355, column: 2, scope: !5447)
!5457 = !DILocation(line: 355, column: 17, scope: !5447)
!5458 = !DILocation(line: 355, column: 23, scope: !5447)
!5459 = !DILocation(line: 355, column: 29, scope: !5447)
!5460 = !DILocation(line: 355, column: 38, scope: !5447)
!5461 = !DILocation(line: 356, column: 2, scope: !5447)
!5462 = !DILocation(line: 356, column: 6, scope: !5447)
!5463 = !DILocation(line: 356, column: 11, scope: !5447)
!5464 = !DILocation(line: 358, column: 2, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 358, column: 2)
!5466 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 358, column: 2)
!5467 = !DILocation(line: 358, column: 2, scope: !5466)
!5468 = !DILocation(line: 361, column: 8, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 361, column: 6)
!5470 = !DILocation(line: 361, column: 13, scope: !5469)
!5471 = !DILocation(line: 361, column: 18, scope: !5469)
!5472 = !DILocation(line: 361, column: 6, scope: !5447)
!5473 = !DILocation(line: 362, column: 3, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 362, column: 3)
!5475 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 362, column: 3)
!5476 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 361, column: 33)
!5477 = !DILocation(line: 362, column: 3, scope: !5475)
!5478 = !DILocation(line: 363, column: 33, scope: !5476)
!5479 = !DILocation(line: 363, column: 39, scope: !5476)
!5480 = !DILocation(line: 363, column: 10, scope: !5476)
!5481 = !DILocation(line: 363, column: 3, scope: !5476)
!5482 = !DILocation(line: 366, column: 6, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 366, column: 6)
!5484 = !DILocation(line: 366, column: 12, scope: !5483)
!5485 = !DILocation(line: 366, column: 21, scope: !5483)
!5486 = !DILocation(line: 366, column: 29, scope: !5483)
!5487 = !DILocation(line: 366, column: 6, scope: !5447)
!5488 = !DILocation(line: 367, column: 29, scope: !5483)
!5489 = !DILocation(line: 367, column: 34, scope: !5483)
!5490 = !DILocation(line: 367, column: 40, scope: !5483)
!5491 = !DILocation(line: 367, column: 48, scope: !5483)
!5492 = !DILocation(line: 367, column: 9, scope: !5483)
!5493 = !DILocation(line: 367, column: 7, scope: !5483)
!5494 = !DILocation(line: 367, column: 3, scope: !5483)
!5495 = !DILocation(line: 369, column: 24, scope: !5483)
!5496 = !DILocation(line: 369, column: 29, scope: !5483)
!5497 = !DILocation(line: 369, column: 35, scope: !5483)
!5498 = !DILocation(line: 369, column: 43, scope: !5483)
!5499 = !DILocation(line: 369, column: 9, scope: !5483)
!5500 = !DILocation(line: 369, column: 7, scope: !5483)
!5501 = !DILocation(line: 370, column: 7, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 370, column: 6)
!5503 = !DILocation(line: 370, column: 6, scope: !5447)
!5504 = !DILocation(line: 371, column: 10, scope: !5502)
!5505 = !DILocation(line: 371, column: 3, scope: !5502)
!5506 = !DILocation(line: 373, column: 18, scope: !5447)
!5507 = !DILocation(line: 373, column: 2, scope: !5447)
!5508 = !DILocation(line: 373, column: 8, scope: !5447)
!5509 = !DILocation(line: 373, column: 15, scope: !5447)
!5510 = !DILocation(line: 374, column: 9, scope: !5447)
!5511 = !DILocation(line: 374, column: 2, scope: !5447)
!5512 = !DILocation(line: 375, column: 1, scope: !5447)
!5513 = distinct !DISubprogram(name: "v9fs_file_write_iter", scope: !3, file: !3, line: 406, type: !1041, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5514)
!5514 = !{!5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5525, !5526, !5527}
!5515 = !DILocalVariable(name: "iocb", arg: 1, scope: !5513, file: !3, line: 406, type: !1043)
!5516 = !DILocalVariable(name: "from", arg: 2, scope: !5513, file: !3, line: 406, type: !1082)
!5517 = !DILocalVariable(name: "file", scope: !5513, file: !3, line: 408, type: !672)
!5518 = !DILocalVariable(name: "fid", scope: !5513, file: !3, line: 409, type: !4943)
!5519 = !DILocalVariable(name: "retval", scope: !5513, file: !3, line: 410, type: !628)
!5520 = !DILocalVariable(name: "origin", scope: !5513, file: !3, line: 411, type: !276)
!5521 = !DILocalVariable(name: "err", scope: !5513, file: !3, line: 412, type: !101)
!5522 = !DILocalVariable(name: "inode", scope: !5523, file: !3, line: 428, type: !309)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 427, column: 18)
!5524 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 427, column: 6)
!5525 = !DILocalVariable(name: "i_size", scope: !5523, file: !3, line: 429, type: !276)
!5526 = !DILocalVariable(name: "pg_start", scope: !5523, file: !3, line: 430, type: !272)
!5527 = !DILocalVariable(name: "pg_end", scope: !5523, file: !3, line: 430, type: !272)
!5528 = !DILocation(line: 406, column: 36, scope: !5513)
!5529 = !DILocation(line: 406, column: 59, scope: !5513)
!5530 = !DILocation(line: 408, column: 2, scope: !5513)
!5531 = !DILocation(line: 408, column: 15, scope: !5513)
!5532 = !DILocation(line: 408, column: 22, scope: !5513)
!5533 = !DILocation(line: 408, column: 28, scope: !5513)
!5534 = !DILocation(line: 409, column: 2, scope: !5513)
!5535 = !DILocation(line: 409, column: 17, scope: !5513)
!5536 = !DILocation(line: 409, column: 23, scope: !5513)
!5537 = !DILocation(line: 409, column: 29, scope: !5513)
!5538 = !DILocation(line: 410, column: 2, scope: !5513)
!5539 = !DILocation(line: 410, column: 10, scope: !5513)
!5540 = !DILocation(line: 411, column: 2, scope: !5513)
!5541 = !DILocation(line: 411, column: 9, scope: !5513)
!5542 = !DILocation(line: 412, column: 2, scope: !5513)
!5543 = !DILocation(line: 412, column: 6, scope: !5513)
!5544 = !DILocation(line: 414, column: 2, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 414, column: 2)
!5546 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 414, column: 2)
!5547 = !DILocation(line: 414, column: 2, scope: !5546)
!5548 = !DILocation(line: 416, column: 8, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 416, column: 6)
!5550 = !DILocation(line: 416, column: 13, scope: !5549)
!5551 = !DILocation(line: 416, column: 18, scope: !5549)
!5552 = !DILocation(line: 416, column: 6, scope: !5513)
!5553 = !DILocation(line: 417, column: 3, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 417, column: 3)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 417, column: 3)
!5556 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 416, column: 54)
!5557 = !DILocation(line: 417, column: 3, scope: !5555)
!5558 = !DILocation(line: 418, column: 34, scope: !5556)
!5559 = !DILocation(line: 418, column: 40, scope: !5556)
!5560 = !DILocation(line: 418, column: 10, scope: !5556)
!5561 = !DILocation(line: 418, column: 3, scope: !5556)
!5562 = !DILocation(line: 421, column: 32, scope: !5513)
!5563 = !DILocation(line: 421, column: 38, scope: !5513)
!5564 = !DILocation(line: 421, column: 11, scope: !5513)
!5565 = !DILocation(line: 421, column: 9, scope: !5513)
!5566 = !DILocation(line: 422, column: 6, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 422, column: 6)
!5568 = !DILocation(line: 422, column: 13, scope: !5567)
!5569 = !DILocation(line: 422, column: 6, scope: !5513)
!5570 = !DILocation(line: 423, column: 10, scope: !5567)
!5571 = !DILocation(line: 423, column: 3, scope: !5567)
!5572 = !DILocation(line: 425, column: 11, scope: !5513)
!5573 = !DILocation(line: 425, column: 17, scope: !5513)
!5574 = !DILocation(line: 425, column: 9, scope: !5513)
!5575 = !DILocation(line: 426, column: 27, scope: !5513)
!5576 = !DILocation(line: 426, column: 33, scope: !5513)
!5577 = !DILocation(line: 426, column: 47, scope: !5513)
!5578 = !DILocation(line: 426, column: 53, scope: !5513)
!5579 = !DILocation(line: 426, column: 61, scope: !5513)
!5580 = !DILocation(line: 426, column: 11, scope: !5513)
!5581 = !DILocation(line: 426, column: 9, scope: !5513)
!5582 = !DILocation(line: 427, column: 6, scope: !5524)
!5583 = !DILocation(line: 427, column: 13, scope: !5524)
!5584 = !DILocation(line: 427, column: 6, scope: !5513)
!5585 = !DILocation(line: 428, column: 3, scope: !5523)
!5586 = !DILocation(line: 428, column: 17, scope: !5523)
!5587 = !DILocation(line: 428, column: 36, scope: !5523)
!5588 = !DILocation(line: 428, column: 25, scope: !5523)
!5589 = !DILocation(line: 429, column: 3, scope: !5523)
!5590 = !DILocation(line: 429, column: 10, scope: !5523)
!5591 = !DILocation(line: 430, column: 3, scope: !5523)
!5592 = !DILocation(line: 430, column: 17, scope: !5523)
!5593 = !DILocation(line: 430, column: 27, scope: !5523)
!5594 = !DILocation(line: 432, column: 14, scope: !5523)
!5595 = !DILocation(line: 432, column: 21, scope: !5523)
!5596 = !DILocation(line: 432, column: 12, scope: !5523)
!5597 = !DILocation(line: 433, column: 13, scope: !5523)
!5598 = !DILocation(line: 433, column: 22, scope: !5523)
!5599 = !DILocation(line: 433, column: 20, scope: !5523)
!5600 = !DILocation(line: 433, column: 29, scope: !5523)
!5601 = !DILocation(line: 433, column: 34, scope: !5523)
!5602 = !DILocation(line: 433, column: 10, scope: !5523)
!5603 = !DILocation(line: 434, column: 7, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 434, column: 7)
!5605 = !DILocation(line: 434, column: 14, scope: !5604)
!5606 = !DILocation(line: 434, column: 24, scope: !5604)
!5607 = !DILocation(line: 434, column: 27, scope: !5604)
!5608 = !DILocation(line: 434, column: 34, scope: !5604)
!5609 = !DILocation(line: 434, column: 45, scope: !5604)
!5610 = !DILocation(line: 434, column: 7, scope: !5523)
!5611 = !DILocation(line: 435, column: 34, scope: !5604)
!5612 = !DILocation(line: 435, column: 41, scope: !5604)
!5613 = !DILocation(line: 436, column: 13, scope: !5604)
!5614 = !DILocation(line: 436, column: 23, scope: !5604)
!5615 = !DILocation(line: 435, column: 4, scope: !5604)
!5616 = !DILocation(line: 437, column: 19, scope: !5523)
!5617 = !DILocation(line: 437, column: 3, scope: !5523)
!5618 = !DILocation(line: 437, column: 9, scope: !5523)
!5619 = !DILocation(line: 437, column: 16, scope: !5523)
!5620 = !DILocation(line: 438, column: 24, scope: !5523)
!5621 = !DILocation(line: 438, column: 12, scope: !5523)
!5622 = !DILocation(line: 438, column: 10, scope: !5523)
!5623 = !DILocation(line: 439, column: 7, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 439, column: 7)
!5625 = !DILocation(line: 439, column: 13, scope: !5624)
!5626 = !DILocation(line: 439, column: 22, scope: !5624)
!5627 = !DILocation(line: 439, column: 20, scope: !5624)
!5628 = !DILocation(line: 439, column: 7, scope: !5523)
!5629 = !DILocation(line: 440, column: 20, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 439, column: 30)
!5631 = !DILocation(line: 440, column: 27, scope: !5630)
!5632 = !DILocation(line: 440, column: 33, scope: !5630)
!5633 = !DILocation(line: 440, column: 42, scope: !5630)
!5634 = !DILocation(line: 440, column: 40, scope: !5630)
!5635 = !DILocation(line: 440, column: 4, scope: !5630)
!5636 = !DILocation(line: 445, column: 22, scope: !5630)
!5637 = !DILocation(line: 445, column: 29, scope: !5630)
!5638 = !DILocation(line: 445, column: 35, scope: !5630)
!5639 = !DILocation(line: 445, column: 4, scope: !5630)
!5640 = !DILocation(line: 446, column: 3, scope: !5630)
!5641 = !DILocation(line: 447, column: 10, scope: !5523)
!5642 = !DILocation(line: 447, column: 3, scope: !5523)
!5643 = !DILocation(line: 448, column: 2, scope: !5524)
!5644 = !DILocation(line: 449, column: 9, scope: !5513)
!5645 = !DILocation(line: 449, column: 2, scope: !5513)
!5646 = !DILocation(line: 450, column: 1, scope: !5513)
!5647 = !DISubprogram(name: "generic_file_readonly_mmap", scope: !64, file: !64, line: 2969, type: !1644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5648 = distinct !DISubprogram(name: "v9fs_file_fsync", scope: !3, file: !3, line: 452, type: !1659, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5649 = !{!5650, !5651, !5652, !5653, !5654, !5655, !5656, !5675}
!5650 = !DILocalVariable(name: "filp", arg: 1, scope: !5648, file: !3, line: 452, type: !672)
!5651 = !DILocalVariable(name: "start", arg: 2, scope: !5648, file: !3, line: 452, type: !276)
!5652 = !DILocalVariable(name: "end", arg: 3, scope: !5648, file: !3, line: 452, type: !276)
!5653 = !DILocalVariable(name: "datasync", arg: 4, scope: !5648, file: !3, line: 453, type: !101)
!5654 = !DILocalVariable(name: "fid", scope: !5648, file: !3, line: 455, type: !4943)
!5655 = !DILocalVariable(name: "inode", scope: !5648, file: !3, line: 456, type: !309)
!5656 = !DILocalVariable(name: "wstat", scope: !5648, file: !3, line: 457, type: !5657)
!5657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_wstat", file: !175, line: 391, size: 832, elements: !5658)
!5658 = !{!5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674}
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5657, file: !175, line: 392, baseType: !445, size: 16)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5657, file: !175, line: 393, baseType: !445, size: 16, offset: 16)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5657, file: !175, line: 394, baseType: !380, size: 32, offset: 32)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !5657, file: !175, line: 395, baseType: !4988, size: 128, offset: 64)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5657, file: !175, line: 396, baseType: !380, size: 32, offset: 192)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5657, file: !175, line: 397, baseType: !380, size: 32, offset: 224)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5657, file: !175, line: 398, baseType: !380, size: 32, offset: 256)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5657, file: !175, line: 399, baseType: !386, size: 64, offset: 320)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5657, file: !175, line: 400, baseType: !470, size: 64, offset: 384)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5657, file: !175, line: 401, baseType: !470, size: 64, offset: 448)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5657, file: !175, line: 402, baseType: !470, size: 64, offset: 512)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "muid", scope: !5657, file: !175, line: 403, baseType: !470, size: 64, offset: 576)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !5657, file: !175, line: 404, baseType: !496, size: 64, offset: 640)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "n_uid", scope: !5657, file: !175, line: 405, baseType: !317, size: 32, offset: 704)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "n_gid", scope: !5657, file: !175, line: 406, baseType: !326, size: 32, offset: 736)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "n_muid", scope: !5657, file: !175, line: 407, baseType: !317, size: 32, offset: 768)
!5675 = !DILocalVariable(name: "retval", scope: !5648, file: !3, line: 458, type: !101)
!5676 = !DILocation(line: 452, column: 41, scope: !5648)
!5677 = !DILocation(line: 452, column: 54, scope: !5648)
!5678 = !DILocation(line: 452, column: 68, scope: !5648)
!5679 = !DILocation(line: 453, column: 11, scope: !5648)
!5680 = !DILocation(line: 455, column: 2, scope: !5648)
!5681 = !DILocation(line: 455, column: 17, scope: !5648)
!5682 = !DILocation(line: 456, column: 2, scope: !5648)
!5683 = !DILocation(line: 456, column: 16, scope: !5648)
!5684 = !DILocation(line: 456, column: 24, scope: !5648)
!5685 = !DILocation(line: 456, column: 30, scope: !5648)
!5686 = !DILocation(line: 456, column: 41, scope: !5648)
!5687 = !DILocation(line: 457, column: 2, scope: !5648)
!5688 = !DILocation(line: 457, column: 18, scope: !5648)
!5689 = !DILocation(line: 458, column: 2, scope: !5648)
!5690 = !DILocation(line: 458, column: 6, scope: !5648)
!5691 = !DILocation(line: 460, column: 37, scope: !5648)
!5692 = !DILocation(line: 460, column: 43, scope: !5648)
!5693 = !DILocation(line: 460, column: 50, scope: !5648)
!5694 = !DILocation(line: 460, column: 11, scope: !5648)
!5695 = !DILocation(line: 460, column: 9, scope: !5648)
!5696 = !DILocation(line: 461, column: 6, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 461, column: 6)
!5698 = !DILocation(line: 461, column: 6, scope: !5648)
!5699 = !DILocation(line: 462, column: 10, scope: !5697)
!5700 = !DILocation(line: 462, column: 3, scope: !5697)
!5701 = !DILocation(line: 464, column: 13, scope: !5648)
!5702 = !DILocation(line: 464, column: 2, scope: !5648)
!5703 = !DILocation(line: 465, column: 2, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 465, column: 2)
!5705 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 465, column: 2)
!5706 = !DILocation(line: 465, column: 2, scope: !5705)
!5707 = !DILocation(line: 467, column: 8, scope: !5648)
!5708 = !DILocation(line: 467, column: 14, scope: !5648)
!5709 = !DILocation(line: 467, column: 6, scope: !5648)
!5710 = !DILocation(line: 468, column: 2, scope: !5648)
!5711 = !DILocation(line: 470, column: 27, scope: !5648)
!5712 = !DILocation(line: 470, column: 11, scope: !5648)
!5713 = !DILocation(line: 470, column: 9, scope: !5648)
!5714 = !DILocation(line: 471, column: 15, scope: !5648)
!5715 = !DILocation(line: 471, column: 2, scope: !5648)
!5716 = !DILocation(line: 473, column: 9, scope: !5648)
!5717 = !DILocation(line: 473, column: 2, scope: !5648)
!5718 = !DILocation(line: 474, column: 1, scope: !5648)
!5719 = distinct !DISubprogram(name: "v9fs_file_lock", scope: !3, file: !3, line: 104, type: !1667, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5720)
!5720 = !{!5721, !5722, !5723, !5724}
!5721 = !DILocalVariable(name: "filp", arg: 1, scope: !5719, file: !3, line: 104, type: !672)
!5722 = !DILocalVariable(name: "cmd", arg: 2, scope: !5719, file: !3, line: 104, type: !101)
!5723 = !DILocalVariable(name: "fl", arg: 3, scope: !5719, file: !3, line: 104, type: !1669)
!5724 = !DILocalVariable(name: "inode", scope: !5719, file: !3, line: 106, type: !309)
!5725 = !DILocation(line: 104, column: 40, scope: !5719)
!5726 = !DILocation(line: 104, column: 50, scope: !5719)
!5727 = !DILocation(line: 104, column: 73, scope: !5719)
!5728 = !DILocation(line: 106, column: 2, scope: !5719)
!5729 = !DILocation(line: 106, column: 16, scope: !5719)
!5730 = !DILocation(line: 106, column: 35, scope: !5719)
!5731 = !DILocation(line: 106, column: 24, scope: !5719)
!5732 = !DILocation(line: 108, column: 2, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 108, column: 2)
!5734 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 108, column: 2)
!5735 = !DILocation(line: 108, column: 2, scope: !5734)
!5736 = !DILocation(line: 110, column: 7, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 110, column: 6)
!5738 = !DILocation(line: 110, column: 21, scope: !5737)
!5739 = !DILocation(line: 110, column: 24, scope: !5737)
!5740 = !DILocation(line: 110, column: 40, scope: !5737)
!5741 = !DILocation(line: 110, column: 43, scope: !5737)
!5742 = !DILocation(line: 110, column: 47, scope: !5737)
!5743 = !DILocation(line: 110, column: 55, scope: !5737)
!5744 = !DILocation(line: 110, column: 6, scope: !5719)
!5745 = !DILocation(line: 111, column: 26, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 110, column: 67)
!5747 = !DILocation(line: 111, column: 33, scope: !5746)
!5748 = !DILocation(line: 111, column: 3, scope: !5746)
!5749 = !DILocation(line: 112, column: 29, scope: !5746)
!5750 = !DILocation(line: 112, column: 36, scope: !5746)
!5751 = !DILocation(line: 112, column: 3, scope: !5746)
!5752 = !DILocation(line: 113, column: 2, scope: !5746)
!5753 = !DILocation(line: 116, column: 1, scope: !5719)
!5754 = !DILocation(line: 115, column: 2, scope: !5719)
!5755 = distinct !DISubprogram(name: "v9fs_file_splice_read", scope: !3, file: !3, line: 385, type: !1793, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5756)
!5756 = !{!5757, !5758, !5759, !5760, !5761, !5762}
!5757 = !DILocalVariable(name: "in", arg: 1, scope: !5755, file: !3, line: 385, type: !672)
!5758 = !DILocalVariable(name: "ppos", arg: 2, scope: !5755, file: !3, line: 385, type: !1034)
!5759 = !DILocalVariable(name: "pipe", arg: 3, scope: !5755, file: !3, line: 386, type: !1788)
!5760 = !DILocalVariable(name: "len", arg: 4, scope: !5755, file: !3, line: 387, type: !640)
!5761 = !DILocalVariable(name: "flags", arg: 5, scope: !5755, file: !3, line: 387, type: !7)
!5762 = !DILocalVariable(name: "fid", scope: !5755, file: !3, line: 389, type: !4943)
!5763 = !DILocation(line: 385, column: 51, scope: !5755)
!5764 = !DILocation(line: 385, column: 63, scope: !5755)
!5765 = !DILocation(line: 386, column: 34, scope: !5755)
!5766 = !DILocation(line: 387, column: 17, scope: !5755)
!5767 = !DILocation(line: 387, column: 35, scope: !5755)
!5768 = !DILocation(line: 389, column: 2, scope: !5755)
!5769 = !DILocation(line: 389, column: 17, scope: !5755)
!5770 = !DILocation(line: 389, column: 23, scope: !5755)
!5771 = !DILocation(line: 389, column: 27, scope: !5755)
!5772 = !DILocation(line: 391, column: 2, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 391, column: 2)
!5774 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 391, column: 2)
!5775 = !DILocation(line: 391, column: 2, scope: !5774)
!5776 = !DILocation(line: 394, column: 6, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 394, column: 6)
!5778 = !DILocation(line: 394, column: 11, scope: !5777)
!5779 = !DILocation(line: 394, column: 16, scope: !5777)
!5780 = !DILocation(line: 394, column: 6, scope: !5755)
!5781 = !DILocation(line: 395, column: 27, scope: !5777)
!5782 = !DILocation(line: 395, column: 31, scope: !5777)
!5783 = !DILocation(line: 395, column: 37, scope: !5777)
!5784 = !DILocation(line: 395, column: 43, scope: !5777)
!5785 = !DILocation(line: 395, column: 48, scope: !5777)
!5786 = !DILocation(line: 395, column: 10, scope: !5777)
!5787 = !DILocation(line: 395, column: 3, scope: !5777)
!5788 = !DILocation(line: 396, column: 29, scope: !5755)
!5789 = !DILocation(line: 396, column: 33, scope: !5755)
!5790 = !DILocation(line: 396, column: 39, scope: !5755)
!5791 = !DILocation(line: 396, column: 45, scope: !5755)
!5792 = !DILocation(line: 396, column: 50, scope: !5755)
!5793 = !DILocation(line: 396, column: 9, scope: !5755)
!5794 = !DILocation(line: 396, column: 2, scope: !5755)
!5795 = !DILocation(line: 397, column: 1, scope: !5755)
!5796 = distinct !DISubprogram(name: "v9fs_file_mmap", scope: !3, file: !3, line: 499, type: !1644, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5797)
!5797 = !{!5798, !5799, !5800, !5801, !5802}
!5798 = !DILocalVariable(name: "filp", arg: 1, scope: !5796, file: !3, line: 499, type: !672)
!5799 = !DILocalVariable(name: "vma", arg: 2, scope: !5796, file: !3, line: 499, type: !1248)
!5800 = !DILocalVariable(name: "retval", scope: !5796, file: !3, line: 501, type: !101)
!5801 = !DILocalVariable(name: "inode", scope: !5796, file: !3, line: 502, type: !309)
!5802 = !DILocalVariable(name: "v9ses", scope: !5796, file: !3, line: 503, type: !5003)
!5803 = !DILocation(line: 499, column: 29, scope: !5796)
!5804 = !DILocation(line: 499, column: 58, scope: !5796)
!5805 = !DILocation(line: 501, column: 2, scope: !5796)
!5806 = !DILocation(line: 501, column: 6, scope: !5796)
!5807 = !DILocation(line: 502, column: 2, scope: !5796)
!5808 = !DILocation(line: 502, column: 16, scope: !5796)
!5809 = !DILocation(line: 502, column: 35, scope: !5796)
!5810 = !DILocation(line: 502, column: 24, scope: !5796)
!5811 = !DILocation(line: 503, column: 2, scope: !5796)
!5812 = !DILocation(line: 503, column: 28, scope: !5796)
!5813 = !DILocation(line: 503, column: 53, scope: !5796)
!5814 = !DILocation(line: 503, column: 36, scope: !5796)
!5815 = !DILocation(line: 505, column: 2, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 505, column: 2)
!5817 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 505, column: 2)
!5818 = !DILocation(line: 505, column: 2, scope: !5817)
!5819 = !DILocation(line: 507, column: 8, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 507, column: 6)
!5821 = !DILocation(line: 507, column: 15, scope: !5820)
!5822 = !DILocation(line: 507, column: 21, scope: !5820)
!5823 = !DILocation(line: 507, column: 6, scope: !5796)
!5824 = !DILocation(line: 508, column: 3, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 508, column: 3)
!5826 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 508, column: 3)
!5827 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 507, column: 41)
!5828 = !DILocation(line: 508, column: 3, scope: !5826)
!5829 = !DILocation(line: 509, column: 37, scope: !5827)
!5830 = !DILocation(line: 509, column: 43, scope: !5827)
!5831 = !DILocation(line: 509, column: 10, scope: !5827)
!5832 = !DILocation(line: 509, column: 3, scope: !5827)
!5833 = !DILocation(line: 512, column: 29, scope: !5796)
!5834 = !DILocation(line: 512, column: 35, scope: !5796)
!5835 = !DILocation(line: 512, column: 11, scope: !5796)
!5836 = !DILocation(line: 512, column: 9, scope: !5796)
!5837 = !DILocation(line: 513, column: 7, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 513, column: 6)
!5839 = !DILocation(line: 513, column: 6, scope: !5796)
!5840 = !DILocation(line: 514, column: 3, scope: !5838)
!5841 = !DILocation(line: 514, column: 8, scope: !5838)
!5842 = !DILocation(line: 514, column: 15, scope: !5838)
!5843 = !DILocation(line: 516, column: 9, scope: !5796)
!5844 = !DILocation(line: 516, column: 2, scope: !5796)
!5845 = !DILocation(line: 517, column: 1, scope: !5796)
!5846 = distinct !DISubprogram(name: "v9fs_file_lock_dotl", scope: !3, file: !3, line: 288, type: !1667, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5847)
!5847 = !{!5848, !5849, !5850, !5851, !5852}
!5848 = !DILocalVariable(name: "filp", arg: 1, scope: !5846, file: !3, line: 288, type: !672)
!5849 = !DILocalVariable(name: "cmd", arg: 2, scope: !5846, file: !3, line: 288, type: !101)
!5850 = !DILocalVariable(name: "fl", arg: 3, scope: !5846, file: !3, line: 288, type: !1669)
!5851 = !DILocalVariable(name: "inode", scope: !5846, file: !3, line: 290, type: !309)
!5852 = !DILocalVariable(name: "ret", scope: !5846, file: !3, line: 291, type: !101)
!5853 = !DILocation(line: 288, column: 45, scope: !5846)
!5854 = !DILocation(line: 288, column: 55, scope: !5846)
!5855 = !DILocation(line: 288, column: 78, scope: !5846)
!5856 = !DILocation(line: 290, column: 2, scope: !5846)
!5857 = !DILocation(line: 290, column: 16, scope: !5846)
!5858 = !DILocation(line: 290, column: 35, scope: !5846)
!5859 = !DILocation(line: 290, column: 24, scope: !5846)
!5860 = !DILocation(line: 291, column: 2, scope: !5846)
!5861 = !DILocation(line: 291, column: 6, scope: !5846)
!5862 = !DILocation(line: 293, column: 2, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 293, column: 2)
!5864 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 293, column: 2)
!5865 = !DILocation(line: 293, column: 2, scope: !5864)
!5866 = !DILocation(line: 296, column: 7, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 296, column: 6)
!5868 = !DILocation(line: 296, column: 21, scope: !5867)
!5869 = !DILocation(line: 296, column: 24, scope: !5867)
!5870 = !DILocation(line: 296, column: 40, scope: !5867)
!5871 = !DILocation(line: 296, column: 43, scope: !5867)
!5872 = !DILocation(line: 296, column: 47, scope: !5867)
!5873 = !DILocation(line: 296, column: 55, scope: !5867)
!5874 = !DILocation(line: 296, column: 6, scope: !5846)
!5875 = !DILocation(line: 297, column: 26, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 296, column: 67)
!5877 = !DILocation(line: 297, column: 33, scope: !5876)
!5878 = !DILocation(line: 297, column: 3, scope: !5876)
!5879 = !DILocation(line: 298, column: 29, scope: !5876)
!5880 = !DILocation(line: 298, column: 36, scope: !5876)
!5881 = !DILocation(line: 298, column: 3, scope: !5876)
!5882 = !DILocation(line: 299, column: 2, scope: !5876)
!5883 = !DILocation(line: 301, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 301, column: 6)
!5885 = !DILocation(line: 301, column: 20, scope: !5884)
!5886 = !DILocation(line: 301, column: 23, scope: !5884)
!5887 = !DILocation(line: 301, column: 6, scope: !5846)
!5888 = !DILocation(line: 302, column: 27, scope: !5884)
!5889 = !DILocation(line: 302, column: 33, scope: !5884)
!5890 = !DILocation(line: 302, column: 38, scope: !5884)
!5891 = !DILocation(line: 302, column: 9, scope: !5884)
!5892 = !DILocation(line: 302, column: 7, scope: !5884)
!5893 = !DILocation(line: 302, column: 3, scope: !5884)
!5894 = !DILocation(line: 303, column: 11, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 303, column: 11)
!5896 = !DILocation(line: 303, column: 11, scope: !5884)
!5897 = !DILocation(line: 304, column: 27, scope: !5895)
!5898 = !DILocation(line: 304, column: 33, scope: !5895)
!5899 = !DILocation(line: 304, column: 9, scope: !5895)
!5900 = !DILocation(line: 304, column: 7, scope: !5895)
!5901 = !DILocation(line: 304, column: 3, scope: !5895)
!5902 = !DILocation(line: 306, column: 7, scope: !5895)
!5903 = !DILocation(line: 307, column: 9, scope: !5846)
!5904 = !DILocation(line: 308, column: 1, scope: !5846)
!5905 = !DILocation(line: 307, column: 2, scope: !5846)
!5906 = distinct !DISubprogram(name: "v9fs_file_flock_dotl", scope: !3, file: !3, line: 318, type: !1667, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5907)
!5907 = !{!5908, !5909, !5910, !5911, !5912, !5913}
!5908 = !DILocalVariable(name: "filp", arg: 1, scope: !5906, file: !3, line: 318, type: !672)
!5909 = !DILocalVariable(name: "cmd", arg: 2, scope: !5906, file: !3, line: 318, type: !101)
!5910 = !DILocalVariable(name: "fl", arg: 3, scope: !5906, file: !3, line: 319, type: !1669)
!5911 = !DILocalVariable(name: "inode", scope: !5906, file: !3, line: 321, type: !309)
!5912 = !DILocalVariable(name: "ret", scope: !5906, file: !3, line: 322, type: !101)
!5913 = !DILabel(scope: !5906, name: "out_err", file: !3, line: 342)
!5914 = !DILocation(line: 318, column: 46, scope: !5906)
!5915 = !DILocation(line: 318, column: 56, scope: !5906)
!5916 = !DILocation(line: 319, column: 20, scope: !5906)
!5917 = !DILocation(line: 321, column: 2, scope: !5906)
!5918 = !DILocation(line: 321, column: 16, scope: !5906)
!5919 = !DILocation(line: 321, column: 35, scope: !5906)
!5920 = !DILocation(line: 321, column: 24, scope: !5906)
!5921 = !DILocation(line: 322, column: 2, scope: !5906)
!5922 = !DILocation(line: 322, column: 6, scope: !5906)
!5923 = !DILocation(line: 324, column: 2, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 324, column: 2)
!5925 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 324, column: 2)
!5926 = !DILocation(line: 324, column: 2, scope: !5925)
!5927 = !DILocation(line: 327, column: 8, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 327, column: 6)
!5929 = !DILocation(line: 327, column: 12, scope: !5928)
!5930 = !DILocation(line: 327, column: 21, scope: !5928)
!5931 = !DILocation(line: 327, column: 6, scope: !5906)
!5932 = !DILocation(line: 328, column: 3, scope: !5928)
!5933 = !DILocation(line: 330, column: 7, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 330, column: 6)
!5935 = !DILocation(line: 330, column: 21, scope: !5934)
!5936 = !DILocation(line: 330, column: 24, scope: !5934)
!5937 = !DILocation(line: 330, column: 40, scope: !5934)
!5938 = !DILocation(line: 330, column: 43, scope: !5934)
!5939 = !DILocation(line: 330, column: 47, scope: !5934)
!5940 = !DILocation(line: 330, column: 55, scope: !5934)
!5941 = !DILocation(line: 330, column: 6, scope: !5906)
!5942 = !DILocation(line: 331, column: 26, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5934, file: !3, line: 330, column: 67)
!5944 = !DILocation(line: 331, column: 33, scope: !5943)
!5945 = !DILocation(line: 331, column: 3, scope: !5943)
!5946 = !DILocation(line: 332, column: 29, scope: !5943)
!5947 = !DILocation(line: 332, column: 36, scope: !5943)
!5948 = !DILocation(line: 332, column: 3, scope: !5943)
!5949 = !DILocation(line: 333, column: 2, scope: !5943)
!5950 = !DILocation(line: 335, column: 2, scope: !5906)
!5951 = !DILocation(line: 335, column: 6, scope: !5906)
!5952 = !DILocation(line: 335, column: 15, scope: !5906)
!5953 = !DILocation(line: 336, column: 2, scope: !5906)
!5954 = !DILocation(line: 336, column: 6, scope: !5906)
!5955 = !DILocation(line: 336, column: 15, scope: !5906)
!5956 = !DILocation(line: 338, column: 6, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 338, column: 6)
!5958 = !DILocation(line: 338, column: 22, scope: !5957)
!5959 = !DILocation(line: 338, column: 20, scope: !5957)
!5960 = !DILocation(line: 338, column: 6, scope: !5906)
!5961 = !DILocation(line: 339, column: 27, scope: !5957)
!5962 = !DILocation(line: 339, column: 33, scope: !5957)
!5963 = !DILocation(line: 339, column: 38, scope: !5957)
!5964 = !DILocation(line: 339, column: 9, scope: !5957)
!5965 = !DILocation(line: 339, column: 7, scope: !5957)
!5966 = !DILocation(line: 339, column: 3, scope: !5957)
!5967 = !DILocation(line: 341, column: 7, scope: !5957)
!5968 = !DILocation(line: 342, column: 1, scope: !5906)
!5969 = !DILocation(line: 343, column: 9, scope: !5906)
!5970 = !DILocation(line: 344, column: 1, scope: !5906)
!5971 = !DILocation(line: 343, column: 2, scope: !5906)
!5972 = !DISubprogram(name: "v9fs_fid_lookup", scope: !5228, file: !5228, line: 14, type: !5229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5973 = distinct !DISubprogram(name: "clone_fid", scope: !5228, file: !5228, line: 21, type: !5974, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5976)
!5974 = !DISubroutineType(types: !5975)
!5975 = !{!4943, !4943}
!5976 = !{!5977}
!5977 = !DILocalVariable(name: "fid", arg: 1, scope: !5973, file: !5228, line: 21, type: !4943)
!5978 = !DILocation(line: 21, column: 55, scope: !5973)
!5979 = !DILocation(line: 23, column: 16, scope: !5973)
!5980 = !DILocation(line: 23, column: 9, scope: !5973)
!5981 = !DILocation(line: 23, column: 23, scope: !5973)
!5982 = !DILocation(line: 23, column: 45, scope: !5973)
!5983 = !DILocation(line: 23, column: 30, scope: !5973)
!5984 = !DILocation(line: 23, column: 2, scope: !5973)
!5985 = !DISubprogram(name: "p9_client_walk", scope: !159, file: !159, line: 192, type: !5986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!4943, !4943, !5988, !5989, !101}
!5988 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !277, line: 109, baseType: !445)
!5989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5990, size: 64)
!5990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!5991 = distinct !DISubprogram(name: "d_real", scope: !348, file: !348, line: 573, type: !4496, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5992)
!5992 = !{!5993, !5994}
!5993 = !DILocalVariable(name: "dentry", arg: 1, scope: !5991, file: !348, line: 573, type: !346)
!5994 = !DILocalVariable(name: "inode", arg: 2, scope: !5991, file: !348, line: 574, type: !4498)
!5995 = !DILocation(line: 573, column: 52, scope: !5991)
!5996 = !DILocation(line: 574, column: 29, scope: !5991)
!5997 = !DILocation(line: 576, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5991, file: !348, line: 576, column: 6)
!5999 = !DILocation(line: 576, column: 6, scope: !5991)
!6000 = !DILocation(line: 577, column: 10, scope: !5998)
!6001 = !DILocation(line: 577, column: 18, scope: !5998)
!6002 = !DILocation(line: 577, column: 24, scope: !5998)
!6003 = !DILocation(line: 577, column: 31, scope: !5998)
!6004 = !DILocation(line: 577, column: 39, scope: !5998)
!6005 = !DILocation(line: 577, column: 3, scope: !5998)
!6006 = !DILocation(line: 579, column: 10, scope: !5998)
!6007 = !DILocation(line: 579, column: 3, scope: !5998)
!6008 = !DILocation(line: 580, column: 1, scope: !5991)
!6009 = distinct !DISubprogram(name: "file_inode", scope: !64, file: !64, line: 1073, type: !6010, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6012)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!309, !5261}
!6012 = !{!6013}
!6013 = !DILocalVariable(name: "f", arg: 1, scope: !6009, file: !64, line: 1073, type: !5261)
!6014 = !DILocation(line: 1073, column: 59, scope: !6009)
!6015 = !DILocation(line: 1075, column: 9, scope: !6009)
!6016 = !DILocation(line: 1075, column: 12, scope: !6009)
!6017 = !DILocation(line: 1075, column: 2, scope: !6009)
!6018 = distinct !DISubprogram(name: "static_key_false", scope: !2321, file: !2321, line: 205, type: !6019, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6033)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{!902, !6021}
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6022, size: 64)
!6022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2321, line: 85, size: 128, elements: !6023)
!6023 = !{!6024, !6025}
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6022, file: !2321, line: 86, baseType: !430, size: 32)
!6025 = !DIDerivedType(tag: DW_TAG_member, scope: !6022, file: !2321, line: 101, baseType: !6026, size: 64, offset: 64)
!6026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6022, file: !2321, line: 101, size: 64, elements: !6027)
!6027 = !{!6028, !6029, !6030}
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6026, file: !2321, line: 102, baseType: !272, size: 64)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6026, file: !2321, line: 103, baseType: !2319, size: 64)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6026, file: !2321, line: 104, baseType: !6031, size: 64)
!6031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6032, size: 64)
!6032 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2321, line: 104, flags: DIFlagFwdDecl)
!6033 = !{!6034}
!6034 = !DILocalVariable(name: "key", arg: 1, scope: !6018, file: !2321, line: 205, type: !6021)
!6035 = !DILocation(line: 205, column: 65, scope: !6018)
!6036 = !DILocation(line: 207, column: 28, scope: !6018)
!6037 = !DILocation(line: 207, column: 9, scope: !6018)
!6038 = !DILocation(line: 207, column: 2, scope: !6018)
!6039 = !DISubprogram(name: "do_trace_9p_fid_put", scope: !159, file: !159, line: 245, type: !6040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6040 = !DISubroutineType(types: !6041)
!6041 = !{null, !4943}
!6042 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !208, file: !208, line: 331, type: !6043, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6046)
!6043 = !DISubroutineType(types: !6044)
!6044 = !{!902, !6045}
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!6046 = !{!6047}
!6047 = !DILocalVariable(name: "r", arg: 1, scope: !6042, file: !208, line: 331, type: !6045)
!6048 = !DILocation(line: 331, column: 67, scope: !6042)
!6049 = !DILocation(line: 333, column: 33, scope: !6042)
!6050 = !DILocation(line: 333, column: 9, scope: !6042)
!6051 = !DILocation(line: 333, column: 2, scope: !6042)
!6052 = !DISubprogram(name: "p9_client_clunk", scope: !159, file: !159, line: 202, type: !5295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6053 = distinct !DISubprogram(name: "arch_static_branch", scope: !6054, file: !6054, line: 25, type: !6055, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6057)
!6054 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6055 = !DISubroutineType(types: !6056)
!6056 = !{!902, !6021, !902}
!6057 = !{!6058, !6059, !6060}
!6058 = !DILocalVariable(name: "key", arg: 1, scope: !6053, file: !6054, line: 25, type: !6021)
!6059 = !DILocalVariable(name: "branch", arg: 2, scope: !6053, file: !6054, line: 25, type: !902)
!6060 = !DILabel(scope: !6053, name: "l_yes", file: !6054, line: 33)
!6061 = !DILocation(line: 25, column: 67, scope: !6053)
!6062 = !DILocation(line: 25, column: 77, scope: !6053)
!6063 = !DILocation(line: 30, column: 13, scope: !6053)
!6064 = !DILocation(line: 30, column: 28, scope: !6053)
!6065 = !{i8 0, i8 2}
!6066 = !DILocation(line: 30, column: 26, scope: !6053)
!6067 = !DILocation(line: 27, column: 2, scope: !6053)
!6068 = !{i64 653271, i64 653315, i64 2148137998, i64 2148138019, i64 2148138045, i64 2148138078, i64 2148138112, i64 2148138136}
!6069 = !DILocation(line: 32, column: 2, scope: !6053)
!6070 = !DILocation(line: 33, column: 1, scope: !6053)
!6071 = !DILocation(line: 34, column: 2, scope: !6053)
!6072 = !DILocation(line: 35, column: 1, scope: !6053)
!6073 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !208, file: !208, line: 313, type: !6074, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6076)
!6074 = !DISubroutineType(types: !6075)
!6075 = !{!902, !6045, !2152}
!6076 = !{!6077, !6078}
!6077 = !DILocalVariable(name: "r", arg: 1, scope: !6073, file: !208, line: 313, type: !6045)
!6078 = !DILocalVariable(name: "oldp", arg: 2, scope: !6073, file: !208, line: 313, type: !2152)
!6079 = !DILocation(line: 313, column: 69, scope: !6073)
!6080 = !DILocation(line: 313, column: 77, scope: !6073)
!6081 = !DILocation(line: 315, column: 36, scope: !6073)
!6082 = !DILocation(line: 315, column: 39, scope: !6073)
!6083 = !DILocation(line: 315, column: 9, scope: !6073)
!6084 = !DILocation(line: 315, column: 2, scope: !6073)
!6085 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !208, file: !208, line: 270, type: !6086, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6088)
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!902, !101, !6045, !2152}
!6088 = !{!6089, !6090, !6091, !6092}
!6089 = !DILocalVariable(name: "i", arg: 1, scope: !6085, file: !208, line: 270, type: !101)
!6090 = !DILocalVariable(name: "r", arg: 2, scope: !6085, file: !208, line: 270, type: !6045)
!6091 = !DILocalVariable(name: "oldp", arg: 3, scope: !6085, file: !208, line: 270, type: !2152)
!6092 = !DILocalVariable(name: "old", scope: !6085, file: !208, line: 272, type: !101)
!6093 = !DILocation(line: 270, column: 61, scope: !6085)
!6094 = !DILocation(line: 270, column: 76, scope: !6085)
!6095 = !DILocation(line: 270, column: 84, scope: !6085)
!6096 = !DILocation(line: 272, column: 2, scope: !6085)
!6097 = !DILocation(line: 272, column: 6, scope: !6085)
!6098 = !DILocation(line: 272, column: 37, scope: !6085)
!6099 = !DILocation(line: 272, column: 41, scope: !6085)
!6100 = !DILocation(line: 272, column: 44, scope: !6085)
!6101 = !DILocation(line: 272, column: 12, scope: !6085)
!6102 = !DILocation(line: 274, column: 6, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6085, file: !208, line: 274, column: 6)
!6104 = !DILocation(line: 274, column: 6, scope: !6085)
!6105 = !DILocation(line: 275, column: 11, scope: !6103)
!6106 = !DILocation(line: 275, column: 4, scope: !6103)
!6107 = !DILocation(line: 275, column: 9, scope: !6103)
!6108 = !DILocation(line: 275, column: 3, scope: !6103)
!6109 = !DILocation(line: 277, column: 6, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6085, file: !208, line: 277, column: 6)
!6111 = !DILocation(line: 277, column: 13, scope: !6110)
!6112 = !DILocation(line: 277, column: 10, scope: !6110)
!6113 = !DILocation(line: 277, column: 6, scope: !6085)
!6114 = !DILocation(line: 278, column: 3, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6110, file: !208, line: 277, column: 16)
!6116 = !DILocation(line: 278, column: 3, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6115, file: !208, line: 278, column: 3)
!6118 = !DILocation(line: 278, column: 3, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6117, file: !208, line: 278, column: 3)
!6120 = !DILocation(line: 278, column: 3, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6117, file: !208, line: 278, column: 3)
!6122 = !DILocation(line: 278, column: 3, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6121, file: !208, line: 278, column: 3)
!6124 = !{i64 2149930763}
!6125 = !DILocation(line: 279, column: 3, scope: !6115)
!6126 = !DILocation(line: 282, column: 6, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6085, file: !208, line: 282, column: 6)
!6128 = !DILocation(line: 282, column: 6, scope: !6085)
!6129 = !DILocation(line: 283, column: 26, scope: !6127)
!6130 = !DILocation(line: 283, column: 3, scope: !6127)
!6131 = !DILocation(line: 285, column: 2, scope: !6085)
!6132 = !DILocation(line: 286, column: 1, scope: !6085)
!6133 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6134, file: !6134, line: 397, type: !6135, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6138)
!6134 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6135 = !DISubroutineType(types: !6136)
!6136 = !{!101, !101, !6137}
!6137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!6138 = !{!6139, !6140}
!6139 = !DILocalVariable(name: "i", arg: 1, scope: !6133, file: !6134, line: 397, type: !101)
!6140 = !DILocalVariable(name: "v", arg: 2, scope: !6133, file: !6134, line: 397, type: !6137)
!6141 = !DILocation(line: 397, column: 30, scope: !6133)
!6142 = !DILocation(line: 397, column: 43, scope: !6133)
!6143 = !DILocation(line: 399, column: 2, scope: !6133)
!6144 = !DILocation(line: 399, column: 2, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6133, file: !6134, line: 399, column: 2)
!6146 = !DILocation(line: 400, column: 31, scope: !6133)
!6147 = !DILocation(line: 400, column: 2, scope: !6133)
!6148 = !DILocation(line: 401, column: 38, scope: !6133)
!6149 = !DILocation(line: 401, column: 41, scope: !6133)
!6150 = !DILocation(line: 401, column: 9, scope: !6133)
!6151 = !DILocation(line: 401, column: 2, scope: !6133)
!6152 = !DISubprogram(name: "refcount_warn_saturate", scope: !208, file: !208, line: 127, type: !6153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6153 = !DISubroutineType(types: !6154)
!6154 = !{null, !6045, !207}
!6155 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6156, file: !6156, line: 94, type: !6157, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6162)
!6156 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6157 = !DISubroutineType(types: !6158)
!6158 = !{null, !6159, !640}
!6159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6160, size: 64)
!6160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6161)
!6161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6162 = !{!6163, !6164}
!6163 = !DILocalVariable(name: "v", arg: 1, scope: !6155, file: !6156, line: 94, type: !6159)
!6164 = !DILocalVariable(name: "size", arg: 2, scope: !6155, file: !6156, line: 94, type: !640)
!6165 = !DILocation(line: 94, column: 79, scope: !6155)
!6166 = !DILocation(line: 94, column: 89, scope: !6155)
!6167 = !DILocation(line: 96, column: 20, scope: !6155)
!6168 = !DILocation(line: 96, column: 23, scope: !6155)
!6169 = !DILocation(line: 96, column: 2, scope: !6155)
!6170 = !DILocation(line: 97, column: 2, scope: !6155)
!6171 = !DILocation(line: 98, column: 1, scope: !6155)
!6172 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6173, file: !6173, line: 928, type: !6135, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6174)
!6173 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6174 = !{!6175, !6176}
!6175 = !DILocalVariable(name: "i", arg: 1, scope: !6172, file: !6173, line: 928, type: !101)
!6176 = !DILocalVariable(name: "v", arg: 2, scope: !6172, file: !6173, line: 928, type: !6137)
!6177 = !DILocation(line: 928, column: 34, scope: !6172)
!6178 = !DILocation(line: 928, column: 47, scope: !6172)
!6179 = !DILocation(line: 936, column: 31, scope: !6172)
!6180 = !DILocation(line: 936, column: 34, scope: !6172)
!6181 = !DILocation(line: 936, column: 9, scope: !6172)
!6182 = !DILocation(line: 936, column: 2, scope: !6172)
!6183 = distinct !DISubprogram(name: "kasan_check_write", scope: !6184, file: !6184, line: 44, type: !6185, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6187)
!6184 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6185 = !DISubroutineType(types: !6186)
!6186 = !{!902, !6159, !7}
!6187 = !{!6188, !6189}
!6188 = !DILocalVariable(name: "p", arg: 1, scope: !6183, file: !6184, line: 44, type: !6159)
!6189 = !DILocalVariable(name: "size", arg: 2, scope: !6183, file: !6184, line: 44, type: !7)
!6190 = !DILocation(line: 44, column: 59, scope: !6183)
!6191 = !DILocation(line: 44, column: 75, scope: !6183)
!6192 = !DILocation(line: 46, column: 2, scope: !6183)
!6193 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6194, file: !6194, line: 229, type: !6195, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6197)
!6194 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6195 = !DISubroutineType(types: !6196)
!6196 = !{null, !6159, !640, !101}
!6197 = !{!6198, !6199, !6200}
!6198 = !DILocalVariable(name: "ptr", arg: 1, scope: !6193, file: !6194, line: 229, type: !6159)
!6199 = !DILocalVariable(name: "size", arg: 2, scope: !6193, file: !6194, line: 229, type: !640)
!6200 = !DILocalVariable(name: "type", arg: 3, scope: !6193, file: !6194, line: 230, type: !101)
!6201 = !DILocation(line: 229, column: 60, scope: !6193)
!6202 = !DILocation(line: 229, column: 72, scope: !6193)
!6203 = !DILocation(line: 230, column: 15, scope: !6193)
!6204 = !DILocation(line: 230, column: 23, scope: !6193)
!6205 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6206, file: !6206, line: 101, type: !6135, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6207)
!6206 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6207 = !{!6208, !6209, !6210}
!6208 = !DILocalVariable(name: "i", arg: 1, scope: !6205, file: !6206, line: 101, type: !101)
!6209 = !DILocalVariable(name: "v", arg: 2, scope: !6205, file: !6206, line: 101, type: !6137)
!6210 = !DILocalVariable(name: "__ret", scope: !6211, file: !6206, line: 103, type: !101)
!6211 = distinct !DILexicalBlock(scope: !6205, file: !6206, line: 103, column: 9)
!6212 = !DILocation(line: 101, column: 54, scope: !6205)
!6213 = !DILocation(line: 101, column: 67, scope: !6205)
!6214 = !DILocation(line: 103, column: 9, scope: !6211)
!6215 = !{i64 2148807685, i64 2148807724, i64 2148807745, i64 2148807782, i64 2148807805, i64 2148807814}
!6216 = !DILocation(line: 103, column: 9, scope: !6205)
!6217 = !DILocation(line: 103, column: 2, scope: !6205)
!6218 = !DISubprogram(name: "down_write", scope: !844, file: !844, line: 187, type: !6219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6219 = !DISubroutineType(types: !6220)
!6220 = !{null, !6221}
!6221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!6222 = !DISubprogram(name: "up_write", scope: !844, file: !844, line: 203, type: !6219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6223 = !DISubprogram(name: "generic_file_read_iter", scope: !64, file: !64, line: 2977, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6224 = !DISubprogram(name: "p9_client_read_once", scope: !159, file: !159, line: 207, type: !6225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{!101, !4943, !386, !1082, !2152}
!6227 = !DISubprogram(name: "p9_client_read", scope: !159, file: !159, line: 206, type: !6225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6228 = !DISubprogram(name: "generic_file_write_iter", scope: !64, file: !64, line: 2979, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6229 = !DISubprogram(name: "generic_write_checks", scope: !64, file: !64, line: 2970, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6230 = !DISubprogram(name: "p9_client_write", scope: !159, file: !159, line: 209, type: !6225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6231 = !DISubprogram(name: "invalidate_inode_pages2_range", scope: !1061, file: !1061, line: 31, type: !6232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6232 = !DISubroutineType(types: !6233)
!6233 = !{!101, !305, !272, !272}
!6234 = distinct !DISubprogram(name: "i_size_read", scope: !64, file: !64, line: 893, type: !6235, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6237)
!6235 = !DISubroutineType(types: !6236)
!6236 = !{!276, !4498}
!6237 = !{!6238}
!6238 = !DILocalVariable(name: "inode", arg: 1, scope: !6234, file: !64, line: 893, type: !4498)
!6239 = !DILocation(line: 893, column: 54, scope: !6234)
!6240 = !DILocation(line: 912, column: 9, scope: !6234)
!6241 = !DILocation(line: 912, column: 16, scope: !6234)
!6242 = !DILocation(line: 912, column: 2, scope: !6234)
!6243 = !DISubprogram(name: "inode_add_bytes", scope: !64, file: !64, line: 3099, type: !6244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6244 = !DISubroutineType(types: !6245)
!6245 = !{null, !309, !276}
!6246 = distinct !DISubprogram(name: "v9fs_i_size_write", scope: !5215, file: !5215, line: 76, type: !6244, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6247)
!6247 = !{!6248, !6249}
!6248 = !DILocalVariable(name: "inode", arg: 1, scope: !6246, file: !5215, line: 76, type: !309)
!6249 = !DILocalVariable(name: "i_size", arg: 2, scope: !6246, file: !5215, line: 76, type: !276)
!6250 = !DILocation(line: 76, column: 52, scope: !6246)
!6251 = !DILocation(line: 76, column: 66, scope: !6246)
!6252 = !DILocation(line: 85, column: 15, scope: !6246)
!6253 = !DILocation(line: 85, column: 22, scope: !6246)
!6254 = !DILocation(line: 85, column: 2, scope: !6246)
!6255 = !DILocation(line: 88, column: 1, scope: !6246)
!6256 = distinct !DISubprogram(name: "i_size_write", scope: !64, file: !64, line: 921, type: !6244, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6257 = !{!6258, !6259}
!6258 = !DILocalVariable(name: "inode", arg: 1, scope: !6256, file: !64, line: 921, type: !309)
!6259 = !DILocalVariable(name: "i_size", arg: 2, scope: !6256, file: !64, line: 921, type: !276)
!6260 = !DILocation(line: 921, column: 47, scope: !6256)
!6261 = !DILocation(line: 921, column: 61, scope: !6256)
!6262 = !DILocation(line: 934, column: 18, scope: !6256)
!6263 = !DILocation(line: 934, column: 2, scope: !6256)
!6264 = !DILocation(line: 934, column: 9, scope: !6256)
!6265 = !DILocation(line: 934, column: 16, scope: !6256)
!6266 = !DILocation(line: 936, column: 1, scope: !6256)
!6267 = !DISubprogram(name: "v9fs_blank_wstat", scope: !5215, file: !5215, line: 59, type: !6268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6268 = !DISubroutineType(types: !6269)
!6269 = !{null, !6270}
!6270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!6271 = !DISubprogram(name: "p9_client_wstat", scope: !159, file: !159, line: 214, type: !6272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!101, !4943, !6270}
!6274 = distinct !DISubprogram(name: "filemap_write_and_wait", scope: !1061, file: !1061, line: 62, type: !6275, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6275 = !DISubroutineType(types: !6276)
!6276 = !{!101, !305}
!6277 = !{!6278}
!6278 = !DILocalVariable(name: "mapping", arg: 1, scope: !6274, file: !1061, line: 62, type: !305)
!6279 = !DILocation(line: 62, column: 64, scope: !6274)
!6280 = !DILocation(line: 64, column: 38, scope: !6274)
!6281 = !DILocation(line: 64, column: 9, scope: !6274)
!6282 = !DILocation(line: 64, column: 2, scope: !6274)
!6283 = !DISubprogram(name: "invalidate_mapping_pages", scope: !1061, file: !1061, line: 21, type: !6284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{!272, !305, !272, !272}
!6286 = !DISubprogram(name: "filemap_write_and_wait_range", scope: !1061, file: !1061, line: 50, type: !6287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6287 = !DISubroutineType(types: !6288)
!6288 = !{!101, !305, !276, !276}
!6289 = !DISubprogram(name: "copy_splice_read", scope: !64, file: !64, line: 2998, type: !1793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6290 = !DISubprogram(name: "filemap_splice_read", scope: !64, file: !64, line: 2995, type: !1793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6291 = !DISubprogram(name: "generic_file_mmap", scope: !64, file: !64, line: 2968, type: !1644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6292 = distinct !DISubprogram(name: "v9fs_mmap_vm_close", scope: !3, file: !3, line: 554, type: !1465, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6293)
!6293 = !{!6294, !6295, !6296}
!6294 = !DILocalVariable(name: "vma", arg: 1, scope: !6292, file: !3, line: 554, type: !1248)
!6295 = !DILocalVariable(name: "inode", scope: !6292, file: !3, line: 556, type: !309)
!6296 = !DILocalVariable(name: "wbc", scope: !6292, file: !3, line: 558, type: !2392)
!6297 = !DILocation(line: 554, column: 55, scope: !6292)
!6298 = !DILocation(line: 556, column: 2, scope: !6292)
!6299 = !DILocation(line: 556, column: 16, scope: !6292)
!6300 = !DILocation(line: 558, column: 2, scope: !6292)
!6301 = !DILocation(line: 558, column: 27, scope: !6292)
!6302 = !DILocation(line: 558, column: 33, scope: !6292)
!6303 = !DILocation(line: 561, column: 26, scope: !6292)
!6304 = !DILocation(line: 561, column: 31, scope: !6292)
!6305 = !DILocation(line: 561, column: 40, scope: !6292)
!6306 = !DILocation(line: 563, column: 24, scope: !6292)
!6307 = !DILocation(line: 563, column: 29, scope: !6292)
!6308 = !DILocation(line: 563, column: 38, scope: !6292)
!6309 = !DILocation(line: 564, column: 5, scope: !6292)
!6310 = !DILocation(line: 564, column: 10, scope: !6292)
!6311 = !DILocation(line: 564, column: 19, scope: !6292)
!6312 = !DILocation(line: 564, column: 24, scope: !6292)
!6313 = !DILocation(line: 564, column: 17, scope: !6292)
!6314 = !DILocation(line: 564, column: 33, scope: !6292)
!6315 = !DILocation(line: 563, column: 50, scope: !6292)
!6316 = !DILocation(line: 567, column: 8, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 567, column: 6)
!6318 = !DILocation(line: 567, column: 13, scope: !6317)
!6319 = !DILocation(line: 567, column: 22, scope: !6317)
!6320 = !DILocation(line: 567, column: 6, scope: !6292)
!6321 = !DILocation(line: 568, column: 3, scope: !6317)
!6322 = !DILocation(line: 570, column: 2, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 570, column: 2)
!6324 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 570, column: 2)
!6325 = !DILocation(line: 570, column: 2, scope: !6324)
!6326 = !DILocation(line: 572, column: 21, scope: !6292)
!6327 = !DILocation(line: 572, column: 26, scope: !6292)
!6328 = !DILocation(line: 572, column: 10, scope: !6292)
!6329 = !DILocation(line: 572, column: 8, scope: !6292)
!6330 = !DILocation(line: 573, column: 25, scope: !6292)
!6331 = !DILocation(line: 573, column: 32, scope: !6292)
!6332 = !DILocation(line: 573, column: 2, scope: !6292)
!6333 = !DILocation(line: 574, column: 1, scope: !6292)
!6334 = distinct !DISubprogram(name: "v9fs_vm_page_mkwrite", scope: !3, file: !3, line: 520, type: !1237, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6335)
!6335 = !{!6336, !6337, !6338, !6339, !6340}
!6336 = !DILocalVariable(name: "vmf", arg: 1, scope: !6334, file: !3, line: 520, type: !1240)
!6337 = !DILocalVariable(name: "folio", scope: !6334, file: !3, line: 522, type: !280)
!6338 = !DILocalVariable(name: "filp", scope: !6334, file: !3, line: 523, type: !672)
!6339 = !DILocalVariable(name: "inode", scope: !6334, file: !3, line: 524, type: !309)
!6340 = !DILabel(scope: !6334, name: "out_unlock", file: !3, line: 549)
!6341 = !DILocation(line: 520, column: 39, scope: !6334)
!6342 = !DILocation(line: 522, column: 2, scope: !6334)
!6343 = !DILocation(line: 522, column: 16, scope: !6334)
!6344 = !DILocation(line: 522, column: 24, scope: !6334)
!6345 = !DILocation(line: 523, column: 2, scope: !6334)
!6346 = !DILocation(line: 523, column: 15, scope: !6334)
!6347 = !DILocation(line: 523, column: 22, scope: !6334)
!6348 = !DILocation(line: 523, column: 27, scope: !6334)
!6349 = !DILocation(line: 523, column: 32, scope: !6334)
!6350 = !DILocation(line: 524, column: 2, scope: !6334)
!6351 = !DILocation(line: 524, column: 16, scope: !6334)
!6352 = !DILocation(line: 524, column: 35, scope: !6334)
!6353 = !DILocation(line: 524, column: 24, scope: !6334)
!6354 = !DILocation(line: 527, column: 2, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6356, file: !3, line: 527, column: 2)
!6356 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 527, column: 2)
!6357 = !DILocation(line: 527, column: 2, scope: !6356)
!6358 = !DILocation(line: 540, column: 19, scope: !6334)
!6359 = !DILocation(line: 540, column: 2, scope: !6334)
!6360 = !DILocation(line: 542, column: 26, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 542, column: 6)
!6362 = !DILocation(line: 542, column: 6, scope: !6361)
!6363 = !DILocation(line: 542, column: 33, scope: !6361)
!6364 = !DILocation(line: 542, column: 6, scope: !6334)
!6365 = !DILocation(line: 543, column: 3, scope: !6361)
!6366 = !DILocation(line: 544, column: 20, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 544, column: 6)
!6368 = !DILocation(line: 544, column: 6, scope: !6367)
!6369 = !DILocation(line: 544, column: 30, scope: !6367)
!6370 = !DILocation(line: 544, column: 37, scope: !6367)
!6371 = !DILocation(line: 544, column: 27, scope: !6367)
!6372 = !DILocation(line: 544, column: 6, scope: !6334)
!6373 = !DILocation(line: 545, column: 3, scope: !6367)
!6374 = !DILocation(line: 546, column: 20, scope: !6334)
!6375 = !DILocation(line: 546, column: 2, scope: !6334)
!6376 = !DILocation(line: 548, column: 2, scope: !6334)
!6377 = !DILocation(line: 549, column: 1, scope: !6334)
!6378 = !DILocation(line: 550, column: 15, scope: !6334)
!6379 = !DILocation(line: 550, column: 2, scope: !6334)
!6380 = !DILocation(line: 551, column: 2, scope: !6334)
!6381 = !DILocation(line: 552, column: 1, scope: !6334)
!6382 = !DISubprogram(name: "filemap_fdatawrite_wbc", scope: !1061, file: !1061, line: 58, type: !4772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6383 = distinct !DISubprogram(name: "_compound_head", scope: !232, file: !232, line: 244, type: !6384, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6386)
!6384 = !DISubroutineType(types: !6385)
!6385 = !{!272, !4910}
!6386 = !{!6387, !6388}
!6387 = !DILocalVariable(name: "page", arg: 1, scope: !6383, file: !232, line: 244, type: !4910)
!6388 = !DILocalVariable(name: "head", scope: !6383, file: !232, line: 246, type: !272)
!6389 = !DILocation(line: 244, column: 63, scope: !6383)
!6390 = !DILocation(line: 246, column: 2, scope: !6383)
!6391 = !DILocation(line: 246, column: 16, scope: !6383)
!6392 = !DILocation(line: 246, column: 23, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6383, file: !232, line: 246, column: 23)
!6394 = !DILocation(line: 246, column: 23, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6393, file: !232, line: 246, column: 23)
!6396 = !DILocation(line: 248, column: 6, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6383, file: !232, line: 248, column: 6)
!6398 = !DILocation(line: 248, column: 6, scope: !6383)
!6399 = !DILocation(line: 249, column: 10, scope: !6397)
!6400 = !DILocation(line: 249, column: 15, scope: !6397)
!6401 = !DILocation(line: 249, column: 3, scope: !6397)
!6402 = !DILocation(line: 250, column: 45, scope: !6383)
!6403 = !DILocation(line: 250, column: 24, scope: !6383)
!6404 = !DILocation(line: 250, column: 9, scope: !6383)
!6405 = !DILocation(line: 250, column: 2, scope: !6383)
!6406 = !DILocation(line: 251, column: 1, scope: !6383)
!6407 = !DISubprogram(name: "file_update_time", scope: !64, file: !64, line: 3233, type: !6408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6408 = !DISubroutineType(types: !6409)
!6409 = !{!101, !672}
!6410 = distinct !DISubprogram(name: "folio_lock_killable", scope: !1061, file: !1061, line: 1108, type: !4826, scopeLine: 1109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6411)
!6411 = !{!6412}
!6412 = !DILocalVariable(name: "folio", arg: 1, scope: !6410, file: !1061, line: 1108, type: !280)
!6413 = !DILocation(line: 1108, column: 53, scope: !6410)
!6414 = !DILocation(line: 1110, column: 2, scope: !6410)
!6415 = !DILocation(line: 1110, column: 2, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6410, file: !1061, line: 1110, column: 2)
!6417 = !DILocation(line: 1111, column: 21, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6410, file: !1061, line: 1111, column: 6)
!6419 = !DILocation(line: 1111, column: 7, scope: !6418)
!6420 = !DILocation(line: 1111, column: 6, scope: !6410)
!6421 = !DILocation(line: 1112, column: 32, scope: !6418)
!6422 = !DILocation(line: 1112, column: 10, scope: !6418)
!6423 = !DILocation(line: 1112, column: 3, scope: !6418)
!6424 = !DILocation(line: 1113, column: 2, scope: !6410)
!6425 = !DILocation(line: 1114, column: 1, scope: !6410)
!6426 = !DISubprogram(name: "folio_mapping", scope: !1061, file: !1061, line: 414, type: !6427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6427 = !DISubroutineType(types: !6428)
!6428 = !{!305, !280}
!6429 = !DISubprogram(name: "folio_wait_stable", scope: !1061, file: !1061, line: 1170, type: !4817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6430 = !DISubprogram(name: "folio_unlock", scope: !1061, file: !1061, line: 1021, type: !4817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6431 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !232, file: !232, line: 207, type: !6432, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6434)
!6432 = !DISubroutineType(types: !6433)
!6433 = !{!4910, !4910}
!6434 = !{!6435, !6436, !6439}
!6435 = !DILocalVariable(name: "page", arg: 1, scope: !6431, file: !232, line: 207, type: !4910)
!6436 = !DILocalVariable(name: "branch", scope: !6437, file: !232, line: 209, type: !902)
!6437 = distinct !DILexicalBlock(scope: !6438, file: !232, line: 209, column: 7)
!6438 = distinct !DILexicalBlock(scope: !6431, file: !232, line: 209, column: 6)
!6439 = !DILocalVariable(name: "head", scope: !6440, file: !232, line: 225, type: !272)
!6440 = distinct !DILexicalBlock(scope: !6441, file: !232, line: 219, column: 39)
!6441 = distinct !DILexicalBlock(scope: !6431, file: !232, line: 218, column: 6)
!6442 = !DILocation(line: 207, column: 83, scope: !6431)
!6443 = !DILocation(line: 209, column: 7, scope: !6437)
!6444 = !DILocation(line: 209, column: 7, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !232, line: 209, column: 7)
!6446 = distinct !DILexicalBlock(scope: !6437, file: !232, line: 209, column: 7)
!6447 = !DILocation(line: 209, column: 7, scope: !6446)
!6448 = !DILocation(line: 209, column: 7, scope: !6438)
!6449 = !DILocation(line: 209, column: 6, scope: !6431)
!6450 = !DILocation(line: 210, column: 10, scope: !6438)
!6451 = !DILocation(line: 210, column: 3, scope: !6438)
!6452 = !DILocation(line: 218, column: 6, scope: !6441)
!6453 = !DILocation(line: 218, column: 49, scope: !6441)
!6454 = !DILocation(line: 219, column: 6, scope: !6441)
!6455 = !DILocation(line: 218, column: 6, scope: !6431)
!6456 = !DILocation(line: 225, column: 3, scope: !6440)
!6457 = !DILocation(line: 225, column: 17, scope: !6440)
!6458 = !DILocation(line: 225, column: 24, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6440, file: !232, line: 225, column: 24)
!6460 = !DILocation(line: 225, column: 24, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6459, file: !232, line: 225, column: 24)
!6462 = !DILocation(line: 227, column: 7, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6440, file: !232, line: 227, column: 7)
!6464 = !DILocation(line: 227, column: 7, scope: !6440)
!6465 = !DILocation(line: 228, column: 33, scope: !6463)
!6466 = !DILocation(line: 228, column: 38, scope: !6463)
!6467 = !DILocation(line: 228, column: 11, scope: !6463)
!6468 = !DILocation(line: 228, column: 4, scope: !6463)
!6469 = !DILocation(line: 229, column: 2, scope: !6441)
!6470 = !DILocation(line: 229, column: 2, scope: !6440)
!6471 = !DILocation(line: 230, column: 9, scope: !6431)
!6472 = !DILocation(line: 230, column: 2, scope: !6431)
!6473 = !DILocation(line: 231, column: 1, scope: !6431)
!6474 = distinct !DISubprogram(name: "const_test_bit", scope: !6475, file: !6475, line: 166, type: !6476, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6478)
!6475 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6476 = !DISubroutineType(types: !6477)
!6477 = !{!902, !272, !4905}
!6478 = !{!6479, !6480, !6481, !6482, !6483}
!6479 = !DILocalVariable(name: "nr", arg: 1, scope: !6474, file: !6475, line: 166, type: !272)
!6480 = !DILocalVariable(name: "addr", arg: 2, scope: !6474, file: !6475, line: 166, type: !4905)
!6481 = !DILocalVariable(name: "p", scope: !6474, file: !6475, line: 168, type: !4909)
!6482 = !DILocalVariable(name: "mask", scope: !6474, file: !6475, line: 169, type: !272)
!6483 = !DILocalVariable(name: "val", scope: !6474, file: !6475, line: 170, type: !272)
!6484 = !DILocation(line: 166, column: 30, scope: !6474)
!6485 = !DILocation(line: 166, column: 64, scope: !6474)
!6486 = !DILocation(line: 168, column: 2, scope: !6474)
!6487 = !DILocation(line: 168, column: 23, scope: !6474)
!6488 = !DILocation(line: 168, column: 50, scope: !6474)
!6489 = !DILocation(line: 168, column: 57, scope: !6474)
!6490 = !DILocation(line: 168, column: 55, scope: !6474)
!6491 = !DILocation(line: 169, column: 2, scope: !6474)
!6492 = !DILocation(line: 169, column: 16, scope: !6474)
!6493 = !DILocation(line: 169, column: 23, scope: !6474)
!6494 = !DILocation(line: 170, column: 2, scope: !6474)
!6495 = !DILocation(line: 170, column: 16, scope: !6474)
!6496 = !DILocation(line: 170, column: 23, scope: !6474)
!6497 = !DILocation(line: 170, column: 22, scope: !6474)
!6498 = !DILocation(line: 172, column: 12, scope: !6474)
!6499 = !DILocation(line: 172, column: 18, scope: !6474)
!6500 = !DILocation(line: 172, column: 16, scope: !6474)
!6501 = !DILocation(line: 172, column: 10, scope: !6474)
!6502 = !DILocation(line: 172, column: 9, scope: !6474)
!6503 = !DILocation(line: 173, column: 1, scope: !6474)
!6504 = !DILocation(line: 172, column: 2, scope: !6474)
!6505 = distinct !DISubprogram(name: "_test_bit", scope: !6506, file: !6506, line: 139, type: !6476, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6507)
!6506 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6507 = !{!6508, !6509}
!6508 = !DILocalVariable(name: "nr", arg: 1, scope: !6505, file: !6506, line: 139, type: !272)
!6509 = !DILocalVariable(name: "addr", arg: 2, scope: !6505, file: !6506, line: 139, type: !4905)
!6510 = !DILocation(line: 139, column: 25, scope: !6505)
!6511 = !DILocation(line: 139, column: 59, scope: !6505)
!6512 = !DILocation(line: 141, column: 25, scope: !6505)
!6513 = !DILocation(line: 141, column: 32, scope: !6505)
!6514 = !DILocation(line: 141, column: 30, scope: !6505)
!6515 = !DILocation(line: 141, column: 2, scope: !6505)
!6516 = !DILocation(line: 142, column: 23, scope: !6505)
!6517 = !DILocation(line: 142, column: 27, scope: !6505)
!6518 = !DILocation(line: 142, column: 9, scope: !6505)
!6519 = !DILocation(line: 142, column: 2, scope: !6505)
!6520 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6156, file: !6156, line: 66, type: !6157, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6521)
!6521 = !{!6522, !6523}
!6522 = !DILocalVariable(name: "v", arg: 1, scope: !6520, file: !6156, line: 66, type: !6159)
!6523 = !DILocalVariable(name: "size", arg: 2, scope: !6520, file: !6156, line: 66, type: !640)
!6524 = !DILocation(line: 66, column: 73, scope: !6520)
!6525 = !DILocation(line: 66, column: 83, scope: !6520)
!6526 = !DILocation(line: 68, column: 19, scope: !6520)
!6527 = !DILocation(line: 68, column: 22, scope: !6520)
!6528 = !DILocation(line: 68, column: 2, scope: !6520)
!6529 = !DILocation(line: 69, column: 2, scope: !6520)
!6530 = !DILocation(line: 70, column: 1, scope: !6520)
!6531 = distinct !DISubprogram(name: "arch_test_bit", scope: !6532, file: !6532, line: 237, type: !6476, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6533)
!6532 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6533 = !{!6534, !6535}
!6534 = !DILocalVariable(name: "nr", arg: 1, scope: !6531, file: !6532, line: 237, type: !272)
!6535 = !DILocalVariable(name: "addr", arg: 2, scope: !6531, file: !6532, line: 237, type: !4905)
!6536 = !DILocation(line: 237, column: 29, scope: !6531)
!6537 = !DILocation(line: 237, column: 63, scope: !6531)
!6538 = !DILocation(line: 239, column: 30, scope: !6531)
!6539 = !DILocation(line: 239, column: 9, scope: !6531)
!6540 = !DILocation(line: 239, column: 54, scope: !6531)
!6541 = !DILocation(line: 239, column: 58, scope: !6531)
!6542 = !DILocation(line: 239, column: 36, scope: !6531)
!6543 = !DILocation(line: 240, column: 26, scope: !6531)
!6544 = !DILocation(line: 240, column: 30, scope: !6531)
!6545 = !DILocation(line: 240, column: 8, scope: !6531)
!6546 = !DILocation(line: 239, column: 2, scope: !6531)
!6547 = distinct !DISubprogram(name: "kasan_check_read", scope: !6184, file: !6184, line: 40, type: !6185, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6548)
!6548 = !{!6549, !6550}
!6549 = !DILocalVariable(name: "p", arg: 1, scope: !6547, file: !6184, line: 40, type: !6159)
!6550 = !DILocalVariable(name: "size", arg: 2, scope: !6547, file: !6184, line: 40, type: !7)
!6551 = !DILocation(line: 40, column: 58, scope: !6547)
!6552 = !DILocation(line: 40, column: 74, scope: !6547)
!6553 = !DILocation(line: 42, column: 2, scope: !6547)
!6554 = distinct !DISubprogram(name: "constant_test_bit", scope: !6532, file: !6532, line: 204, type: !6555, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6557)
!6555 = !DISubroutineType(types: !6556)
!6556 = !{!902, !274, !4905}
!6557 = !{!6558, !6559}
!6558 = !DILocalVariable(name: "nr", arg: 1, scope: !6554, file: !6532, line: 204, type: !274)
!6559 = !DILocalVariable(name: "addr", arg: 2, scope: !6554, file: !6532, line: 204, type: !4905)
!6560 = !DILocation(line: 204, column: 52, scope: !6554)
!6561 = !DILocation(line: 204, column: 86, scope: !6554)
!6562 = !DILocation(line: 206, column: 19, scope: !6554)
!6563 = !DILocation(line: 206, column: 22, scope: !6554)
!6564 = !DILocation(line: 206, column: 15, scope: !6554)
!6565 = !DILocation(line: 207, column: 4, scope: !6554)
!6566 = !DILocation(line: 207, column: 9, scope: !6554)
!6567 = !DILocation(line: 207, column: 12, scope: !6554)
!6568 = !DILocation(line: 206, column: 44, scope: !6554)
!6569 = !DILocation(line: 207, column: 37, scope: !6554)
!6570 = !DILocation(line: 206, column: 2, scope: !6554)
!6571 = distinct !DISubprogram(name: "variable_test_bit", scope: !6532, file: !6532, line: 224, type: !6555, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6572)
!6572 = !{!6573, !6574, !6575}
!6573 = !DILocalVariable(name: "nr", arg: 1, scope: !6571, file: !6532, line: 224, type: !274)
!6574 = !DILocalVariable(name: "addr", arg: 2, scope: !6571, file: !6532, line: 224, type: !4905)
!6575 = !DILocalVariable(name: "oldbit", scope: !6571, file: !6532, line: 226, type: !902)
!6576 = !DILocation(line: 224, column: 52, scope: !6571)
!6577 = !DILocation(line: 224, column: 86, scope: !6571)
!6578 = !DILocation(line: 226, column: 2, scope: !6571)
!6579 = !DILocation(line: 226, column: 7, scope: !6571)
!6580 = !DILocation(line: 231, column: 33, scope: !6571)
!6581 = !DILocation(line: 231, column: 46, scope: !6571)
!6582 = !DILocation(line: 228, column: 2, scope: !6571)
!6583 = !{i64 2148355294, i64 2148355368}
!6584 = !DILocation(line: 233, column: 9, scope: !6571)
!6585 = !DILocation(line: 234, column: 1, scope: !6571)
!6586 = !DILocation(line: 233, column: 2, scope: !6571)
!6587 = !DILocation(line: 112, column: 2, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !4919, file: !4920, line: 112, column: 2)
!6589 = !DILocation(line: 112, column: 2, scope: !4919)
!6590 = !DILocation(line: 113, column: 1, scope: !4919)
!6591 = distinct !DISubprogram(name: "folio_trylock", scope: !1061, file: !1061, line: 1035, type: !6592, scopeLine: 1036, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6594)
!6592 = !DISubroutineType(types: !6593)
!6593 = !{!902, !280}
!6594 = !{!6595}
!6595 = !DILocalVariable(name: "folio", arg: 1, scope: !6591, file: !1061, line: 1035, type: !280)
!6596 = !DILocation(line: 1035, column: 48, scope: !6591)
!6597 = !DILocation(line: 1037, column: 9, scope: !6591)
!6598 = !DILocation(line: 1037, column: 2, scope: !6591)
!6599 = !DISubprogram(name: "__folio_lock_killable", scope: !1061, file: !1061, line: 1018, type: !4826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6600 = distinct !DISubprogram(name: "test_and_set_bit_lock", scope: !6601, file: !6601, line: 55, type: !6602, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6605)
!6601 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3803e7a2bd2f2f2af55c89b50b84591")
!6602 = !DISubroutineType(types: !6603)
!6603 = !{!902, !274, !6604}
!6604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!6605 = !{!6606, !6607}
!6606 = !DILocalVariable(name: "nr", arg: 1, scope: !6600, file: !6601, line: 55, type: !274)
!6607 = !DILocalVariable(name: "addr", arg: 2, scope: !6600, file: !6601, line: 55, type: !6604)
!6608 = !DILocation(line: 55, column: 47, scope: !6600)
!6609 = !DILocation(line: 55, column: 75, scope: !6600)
!6610 = !DILocation(line: 57, column: 31, scope: !6600)
!6611 = !DILocation(line: 57, column: 38, scope: !6600)
!6612 = !DILocation(line: 57, column: 36, scope: !6600)
!6613 = !DILocation(line: 57, column: 2, scope: !6600)
!6614 = !DILocation(line: 58, column: 36, scope: !6600)
!6615 = !DILocation(line: 58, column: 40, scope: !6600)
!6616 = !DILocation(line: 58, column: 9, scope: !6600)
!6617 = !DILocation(line: 58, column: 2, scope: !6600)
!6618 = distinct !DISubprogram(name: "folio_flags", scope: !232, file: !232, line: 308, type: !6619, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6621)
!6619 = !DISubroutineType(types: !6620)
!6620 = !{!2343, !280, !7}
!6621 = !{!6622, !6623, !6624}
!6622 = !DILocalVariable(name: "folio", arg: 1, scope: !6618, file: !232, line: 308, type: !280)
!6623 = !DILocalVariable(name: "n", arg: 2, scope: !6618, file: !232, line: 308, type: !7)
!6624 = !DILocalVariable(name: "page", scope: !6618, file: !232, line: 310, type: !1128)
!6625 = !DILocation(line: 308, column: 49, scope: !6618)
!6626 = !DILocation(line: 308, column: 65, scope: !6618)
!6627 = !DILocation(line: 310, column: 2, scope: !6618)
!6628 = !DILocation(line: 310, column: 15, scope: !6618)
!6629 = !DILocation(line: 310, column: 23, scope: !6618)
!6630 = !DILocation(line: 310, column: 30, scope: !6618)
!6631 = !DILocation(line: 314, column: 10, scope: !6618)
!6632 = !DILocation(line: 314, column: 15, scope: !6618)
!6633 = !DILocation(line: 314, column: 18, scope: !6618)
!6634 = !DILocation(line: 315, column: 1, scope: !6618)
!6635 = !DILocation(line: 314, column: 2, scope: !6618)
!6636 = distinct !DISubprogram(name: "arch_test_and_set_bit_lock", scope: !6532, file: !6532, line: 142, type: !6602, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6637)
!6637 = !{!6638, !6639}
!6638 = !DILocalVariable(name: "nr", arg: 1, scope: !6636, file: !6532, line: 142, type: !274)
!6639 = !DILocalVariable(name: "addr", arg: 2, scope: !6636, file: !6532, line: 142, type: !6604)
!6640 = !DILocation(line: 142, column: 33, scope: !6636)
!6641 = !DILocation(line: 142, column: 61, scope: !6636)
!6642 = !DILocation(line: 144, column: 31, scope: !6636)
!6643 = !DILocation(line: 144, column: 35, scope: !6636)
!6644 = !DILocation(line: 144, column: 9, scope: !6636)
!6645 = !DILocation(line: 144, column: 2, scope: !6636)
!6646 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !6532, file: !6532, line: 136, type: !6602, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6647)
!6647 = !{!6648, !6649, !6650}
!6648 = !DILocalVariable(name: "nr", arg: 1, scope: !6646, file: !6532, line: 136, type: !274)
!6649 = !DILocalVariable(name: "addr", arg: 2, scope: !6646, file: !6532, line: 136, type: !6604)
!6650 = !DILocalVariable(name: "c", scope: !6651, file: !6532, line: 138, type: !902)
!6651 = distinct !DILexicalBlock(scope: !6646, file: !6532, line: 138, column: 9)
!6652 = !DILocation(line: 136, column: 28, scope: !6646)
!6653 = !DILocation(line: 136, column: 56, scope: !6646)
!6654 = !DILocation(line: 138, column: 9, scope: !6651)
!6655 = !{i64 2148348133, i64 2148348172, i64 2148348193, i64 2148348230, i64 2148348253, i64 2148348262, i64 2148348365}
!6656 = !DILocation(line: 138, column: 9, scope: !6646)
!6657 = !DILocation(line: 138, column: 2, scope: !6646)
!6658 = !DILocation(line: 118, column: 43, scope: !4928)
!6659 = !DILocation(line: 118, column: 53, scope: !4928)
!6660 = !DILocation(line: 118, column: 76, scope: !4928)
!6661 = !DILocation(line: 120, column: 2, scope: !4928)
!6662 = !DILocation(line: 120, column: 18, scope: !4928)
!6663 = !DILocation(line: 121, column: 2, scope: !4928)
!6664 = !DILocation(line: 121, column: 17, scope: !4928)
!6665 = !DILocation(line: 122, column: 2, scope: !4928)
!6666 = !DILocation(line: 122, column: 10, scope: !4928)
!6667 = !DILocation(line: 123, column: 2, scope: !4928)
!6668 = !DILocation(line: 123, column: 6, scope: !4928)
!6669 = !DILocation(line: 124, column: 2, scope: !4928)
!6670 = !DILocation(line: 124, column: 16, scope: !4928)
!6671 = !DILocation(line: 125, column: 2, scope: !4928)
!6672 = !DILocation(line: 125, column: 28, scope: !4928)
!6673 = !DILocation(line: 127, column: 8, scope: !4928)
!6674 = !DILocation(line: 127, column: 14, scope: !4928)
!6675 = !DILocation(line: 127, column: 6, scope: !4928)
!6676 = !DILocation(line: 128, column: 2, scope: !4928)
!6677 = !DILocation(line: 128, column: 2, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6679, file: !3, line: 128, column: 2)
!6679 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 128, column: 2)
!6680 = !DILocation(line: 128, column: 2, scope: !6679)
!6681 = !DILocation(line: 128, column: 2, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6678, file: !3, line: 128, column: 2)
!6683 = !DILocation(line: 128, column: 2, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 128, column: 2)
!6685 = !DILocation(line: 128, column: 2, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 128, column: 2)
!6687 = !{i64 2154822430, i64 2154822459, i64 2154822505, i64 2154822563, i64 2154822617, i64 2154822671, i64 2154822726, i64 2154822757}
!6688 = !DILocation(line: 130, column: 2, scope: !4928)
!6689 = !DILocation(line: 130, column: 2, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 130, column: 2)
!6691 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 130, column: 2)
!6692 = !DILocation(line: 130, column: 2, scope: !6691)
!6693 = !DILocation(line: 130, column: 2, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 130, column: 2)
!6695 = !DILocation(line: 130, column: 2, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 130, column: 2)
!6697 = !DILocation(line: 130, column: 2, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 130, column: 2)
!6699 = !{i64 2154823437, i64 2154823466, i64 2154823512, i64 2154823570, i64 2154823624, i64 2154823678, i64 2154823733, i64 2154823764}
!6700 = !DILocation(line: 132, column: 29, scope: !4928)
!6701 = !DILocation(line: 132, column: 35, scope: !4928)
!6702 = !DILocation(line: 132, column: 8, scope: !4928)
!6703 = !DILocation(line: 132, column: 6, scope: !4928)
!6704 = !DILocation(line: 133, column: 6, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 133, column: 6)
!6706 = !DILocation(line: 133, column: 10, scope: !6705)
!6707 = !DILocation(line: 133, column: 6, scope: !4928)
!6708 = !DILocation(line: 134, column: 3, scope: !6705)
!6709 = !DILocation(line: 137, column: 2, scope: !4928)
!6710 = !DILocation(line: 139, column: 10, scope: !4928)
!6711 = !DILocation(line: 139, column: 14, scope: !4928)
!6712 = !DILocation(line: 139, column: 2, scope: !4928)
!6713 = !DILocation(line: 141, column: 9, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 139, column: 23)
!6715 = !DILocation(line: 141, column: 14, scope: !6714)
!6716 = !DILocation(line: 142, column: 3, scope: !6714)
!6717 = !DILocation(line: 144, column: 9, scope: !6714)
!6718 = !DILocation(line: 144, column: 14, scope: !6714)
!6719 = !DILocation(line: 145, column: 3, scope: !6714)
!6720 = !DILocation(line: 147, column: 9, scope: !6714)
!6721 = !DILocation(line: 147, column: 14, scope: !6714)
!6722 = !DILocation(line: 148, column: 3, scope: !6714)
!6723 = !DILocation(line: 150, column: 16, scope: !4928)
!6724 = !DILocation(line: 150, column: 20, scope: !4928)
!6725 = !DILocation(line: 150, column: 8, scope: !4928)
!6726 = !DILocation(line: 150, column: 14, scope: !4928)
!6727 = !DILocation(line: 151, column: 6, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 151, column: 6)
!6729 = !DILocation(line: 151, column: 10, scope: !6728)
!6730 = !DILocation(line: 151, column: 17, scope: !6728)
!6731 = !DILocation(line: 151, column: 6, scope: !4928)
!6732 = !DILocation(line: 152, column: 9, scope: !6728)
!6733 = !DILocation(line: 152, column: 16, scope: !6728)
!6734 = !DILocation(line: 152, column: 3, scope: !6728)
!6735 = !DILocation(line: 154, column: 18, scope: !6728)
!6736 = !DILocation(line: 154, column: 22, scope: !6728)
!6737 = !DILocation(line: 154, column: 31, scope: !6728)
!6738 = !DILocation(line: 154, column: 35, scope: !6728)
!6739 = !DILocation(line: 154, column: 29, scope: !6728)
!6740 = !DILocation(line: 154, column: 44, scope: !6728)
!6741 = !DILocation(line: 154, column: 9, scope: !6728)
!6742 = !DILocation(line: 154, column: 16, scope: !6728)
!6743 = !DILocation(line: 155, column: 18, scope: !4928)
!6744 = !DILocation(line: 155, column: 22, scope: !4928)
!6745 = !DILocation(line: 155, column: 8, scope: !4928)
!6746 = !DILocation(line: 155, column: 16, scope: !4928)
!6747 = !DILocation(line: 156, column: 20, scope: !4928)
!6748 = !DILocation(line: 156, column: 25, scope: !4928)
!6749 = !DILocation(line: 156, column: 31, scope: !4928)
!6750 = !DILocation(line: 156, column: 8, scope: !4928)
!6751 = !DILocation(line: 156, column: 18, scope: !4928)
!6752 = !DILocation(line: 157, column: 6, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 157, column: 6)
!6754 = !DILocation(line: 157, column: 6, scope: !4928)
!6755 = !DILocation(line: 158, column: 9, scope: !6753)
!6756 = !DILocation(line: 158, column: 15, scope: !6753)
!6757 = !DILocation(line: 158, column: 3, scope: !6753)
!6758 = !DILocation(line: 160, column: 38, scope: !4928)
!6759 = !DILocation(line: 160, column: 27, scope: !4928)
!6760 = !DILocation(line: 160, column: 10, scope: !4928)
!6761 = !DILocation(line: 160, column: 8, scope: !4928)
!6762 = !DILocation(line: 166, column: 2, scope: !4928)
!6763 = !DILocation(line: 167, column: 29, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6765, file: !3, line: 166, column: 11)
!6765 = distinct !DILexicalBlock(scope: !6766, file: !3, line: 166, column: 2)
!6766 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 166, column: 2)
!6767 = !DILocation(line: 167, column: 9, scope: !6764)
!6768 = !DILocation(line: 167, column: 7, scope: !6764)
!6769 = !DILocation(line: 168, column: 7, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6764, file: !3, line: 168, column: 7)
!6771 = !DILocation(line: 168, column: 11, scope: !6770)
!6772 = !DILocation(line: 168, column: 7, scope: !6764)
!6773 = !DILocation(line: 169, column: 4, scope: !6770)
!6774 = !DILocation(line: 171, column: 7, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6764, file: !3, line: 171, column: 7)
!6776 = !DILocation(line: 171, column: 14, scope: !6775)
!6777 = !DILocation(line: 171, column: 7, scope: !6764)
!6778 = !DILocation(line: 172, column: 4, scope: !6775)
!6779 = !DILocation(line: 173, column: 7, scope: !6780)
!6780 = distinct !DILexicalBlock(scope: !6764, file: !3, line: 173, column: 7)
!6781 = !DILocation(line: 173, column: 14, scope: !6780)
!6782 = !DILocation(line: 173, column: 33, scope: !6780)
!6783 = !DILocation(line: 173, column: 37, scope: !6780)
!6784 = !DILocation(line: 173, column: 7, scope: !6764)
!6785 = !DILocation(line: 174, column: 4, scope: !6780)
!6786 = !DILocation(line: 175, column: 38, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6764, file: !3, line: 175, column: 7)
!6788 = !DILocation(line: 175, column: 45, scope: !6787)
!6789 = !DILocation(line: 175, column: 7, scope: !6787)
!6790 = !DILocation(line: 176, column: 5, scope: !6787)
!6791 = !DILocation(line: 175, column: 7, scope: !6764)
!6792 = !DILocation(line: 177, column: 4, scope: !6787)
!6793 = !DILocation(line: 182, column: 13, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6764, file: !3, line: 182, column: 7)
!6795 = !DILocation(line: 182, column: 26, scope: !6794)
!6796 = !DILocation(line: 182, column: 31, scope: !6794)
!6797 = !DILocation(line: 182, column: 37, scope: !6794)
!6798 = !DILocation(line: 182, column: 23, scope: !6794)
!6799 = !DILocation(line: 182, column: 7, scope: !6764)
!6800 = !DILocation(line: 183, column: 16, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 182, column: 43)
!6802 = !DILocation(line: 183, column: 4, scope: !6801)
!6803 = !DILocation(line: 184, column: 22, scope: !6801)
!6804 = !DILocation(line: 184, column: 27, scope: !6801)
!6805 = !DILocation(line: 184, column: 33, scope: !6801)
!6806 = !DILocation(line: 184, column: 10, scope: !6801)
!6807 = !DILocation(line: 184, column: 20, scope: !6801)
!6808 = !DILocation(line: 185, column: 3, scope: !6801)
!6809 = !DILocation(line: 166, column: 2, scope: !6765)
!6810 = distinct !{!6810, !6811, !6812, !6813}
!6811 = !DILocation(line: 166, column: 2, scope: !6766)
!6812 = !DILocation(line: 186, column: 2, scope: !6766)
!6813 = !{!"llvm.loop.unroll.disable"}
!6814 = !DILocation(line: 189, column: 10, scope: !4928)
!6815 = !DILocation(line: 189, column: 2, scope: !4928)
!6816 = !DILocation(line: 191, column: 7, scope: !5023)
!6817 = !DILocation(line: 192, column: 3, scope: !5023)
!6818 = !DILocation(line: 194, column: 7, scope: !5023)
!6819 = !DILocation(line: 195, column: 3, scope: !5023)
!6820 = !DILocation(line: 197, column: 3, scope: !5022)
!6821 = !DILocation(line: 197, column: 3, scope: !5025)
!6822 = !DILocation(line: 197, column: 3, scope: !6823)
!6823 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 197, column: 3)
!6824 = !DILocation(line: 0, scope: !6823)
!6825 = !DILocation(line: 197, column: 3, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 197, column: 3)
!6827 = !DILocation(line: 197, column: 3, scope: !5026)
!6828 = !DILocation(line: 197, column: 3, scope: !5029)
!6829 = !DILocation(line: 197, column: 3, scope: !5033)
!6830 = !DILocation(line: 197, column: 3, scope: !5032)
!6831 = !DILocation(line: 197, column: 3, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 197, column: 3)
!6833 = !DILocation(line: 197, column: 3, scope: !5031)
!6834 = !DILocation(line: 197, column: 3, scope: !6835)
!6835 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 197, column: 3)
!6836 = !DILocation(line: 197, column: 3, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 197, column: 3)
!6838 = !{i64 2154826385, i64 2154826414, i64 2154826460, i64 2154826518, i64 2154826572, i64 2154826626, i64 2154826681, i64 2154826712, i64 2154827020, i64 2154827026, i64 2154827073, i64 2154827096, i64 2154827122}
!6839 = !DILocation(line: 197, column: 3, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 197, column: 3)
!6841 = !DILocation(line: 197, column: 3, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 197, column: 3)
!6843 = !DILocation(line: 197, column: 3, scope: !5023)
!6844 = !DILocation(line: 201, column: 7, scope: !5023)
!6845 = !DILocation(line: 202, column: 3, scope: !5023)
!6846 = !DILocation(line: 203, column: 2, scope: !5023)
!6847 = !DILocation(line: 205, column: 1, scope: !4928)
!6848 = !DILocation(line: 210, column: 6, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 210, column: 6)
!6850 = !DILocation(line: 210, column: 10, scope: !6849)
!6851 = !DILocation(line: 210, column: 14, scope: !6849)
!6852 = !DILocation(line: 210, column: 17, scope: !6849)
!6853 = !DILocation(line: 210, column: 21, scope: !6849)
!6854 = !DILocation(line: 210, column: 29, scope: !6849)
!6855 = !DILocation(line: 210, column: 6, scope: !4928)
!6856 = !DILocation(line: 211, column: 13, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6849, file: !3, line: 210, column: 41)
!6858 = !DILocation(line: 211, column: 17, scope: !6857)
!6859 = !DILocation(line: 211, column: 11, scope: !6857)
!6860 = !DILocation(line: 212, column: 3, scope: !6857)
!6861 = !DILocation(line: 212, column: 7, scope: !6857)
!6862 = !DILocation(line: 212, column: 15, scope: !6857)
!6863 = !DILocation(line: 214, column: 24, scope: !6857)
!6864 = !DILocation(line: 214, column: 30, scope: !6857)
!6865 = !DILocation(line: 214, column: 3, scope: !6857)
!6866 = !DILocation(line: 215, column: 17, scope: !6857)
!6867 = !DILocation(line: 215, column: 3, scope: !6857)
!6868 = !DILocation(line: 215, column: 7, scope: !6857)
!6869 = !DILocation(line: 215, column: 15, scope: !6857)
!6870 = !DILocation(line: 216, column: 2, scope: !6857)
!6871 = !DILocation(line: 217, column: 12, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 217, column: 6)
!6873 = !DILocation(line: 217, column: 25, scope: !6872)
!6874 = !DILocation(line: 217, column: 30, scope: !6872)
!6875 = !DILocation(line: 217, column: 36, scope: !6872)
!6876 = !DILocation(line: 217, column: 22, scope: !6872)
!6877 = !DILocation(line: 217, column: 6, scope: !4928)
!6878 = !DILocation(line: 218, column: 15, scope: !6872)
!6879 = !DILocation(line: 218, column: 3, scope: !6872)
!6880 = !DILocation(line: 219, column: 1, scope: !4928)
!6881 = !DILocation(line: 220, column: 9, scope: !4928)
!6882 = !DILocation(line: 221, column: 1, scope: !4928)
!6883 = !DILocation(line: 220, column: 2, scope: !4928)
!6884 = distinct !DISubprogram(name: "v9fs_file_getlock", scope: !3, file: !3, line: 223, type: !6885, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6887)
!6885 = !DISubroutineType(types: !6886)
!6886 = !{!101, !672, !1669}
!6887 = !{!6888, !6889, !6890, !6898, !6899, !6900}
!6888 = !DILocalVariable(name: "filp", arg: 1, scope: !6884, file: !3, line: 223, type: !672)
!6889 = !DILocalVariable(name: "fl", arg: 2, scope: !6884, file: !3, line: 223, type: !1669)
!6890 = !DILocalVariable(name: "glock", scope: !6884, file: !3, line: 225, type: !6891)
!6891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_getlock", file: !175, line: 512, size: 320, elements: !6892)
!6892 = !{!6893, !6894, !6895, !6896, !6897}
!6893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6891, file: !175, line: 513, baseType: !438, size: 8)
!6894 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6891, file: !175, line: 514, baseType: !386, size: 64, offset: 64)
!6895 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6891, file: !175, line: 515, baseType: !386, size: 64, offset: 128)
!6896 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !6891, file: !175, line: 516, baseType: !380, size: 32, offset: 192)
!6897 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !6891, file: !175, line: 517, baseType: !496, size: 64, offset: 256)
!6898 = !DILocalVariable(name: "fid", scope: !6884, file: !3, line: 226, type: !4943)
!6899 = !DILocalVariable(name: "res", scope: !6884, file: !3, line: 227, type: !101)
!6900 = !DILabel(scope: !6884, name: "out", file: !3, line: 274)
!6901 = !DILocation(line: 223, column: 43, scope: !6884)
!6902 = !DILocation(line: 223, column: 67, scope: !6884)
!6903 = !DILocation(line: 225, column: 2, scope: !6884)
!6904 = !DILocation(line: 225, column: 20, scope: !6884)
!6905 = !DILocation(line: 226, column: 2, scope: !6884)
!6906 = !DILocation(line: 226, column: 17, scope: !6884)
!6907 = !DILocation(line: 227, column: 2, scope: !6884)
!6908 = !DILocation(line: 227, column: 6, scope: !6884)
!6909 = !DILocation(line: 229, column: 8, scope: !6884)
!6910 = !DILocation(line: 229, column: 14, scope: !6884)
!6911 = !DILocation(line: 229, column: 6, scope: !6884)
!6912 = !DILocation(line: 230, column: 2, scope: !6884)
!6913 = !DILocation(line: 230, column: 2, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6915, file: !3, line: 230, column: 2)
!6915 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 230, column: 2)
!6916 = !DILocation(line: 230, column: 2, scope: !6915)
!6917 = !DILocation(line: 230, column: 2, scope: !6918)
!6918 = distinct !DILexicalBlock(scope: !6914, file: !3, line: 230, column: 2)
!6919 = !DILocation(line: 230, column: 2, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6918, file: !3, line: 230, column: 2)
!6921 = !DILocation(line: 230, column: 2, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6918, file: !3, line: 230, column: 2)
!6923 = !{i64 2154827763, i64 2154827792, i64 2154827838, i64 2154827896, i64 2154827950, i64 2154828004, i64 2154828059, i64 2154828090}
!6924 = !DILocation(line: 232, column: 18, scope: !6884)
!6925 = !DILocation(line: 232, column: 24, scope: !6884)
!6926 = !DILocation(line: 232, column: 2, scope: !6884)
!6927 = !DILocation(line: 237, column: 6, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 237, column: 6)
!6929 = !DILocation(line: 237, column: 10, scope: !6928)
!6930 = !DILocation(line: 237, column: 18, scope: !6928)
!6931 = !DILocation(line: 237, column: 6, scope: !6884)
!6932 = !DILocation(line: 238, column: 10, scope: !6928)
!6933 = !DILocation(line: 238, column: 3, scope: !6928)
!6934 = !DILocation(line: 241, column: 2, scope: !6884)
!6935 = !DILocation(line: 242, column: 8, scope: !6884)
!6936 = !DILocation(line: 242, column: 14, scope: !6884)
!6937 = !DILocation(line: 243, column: 16, scope: !6884)
!6938 = !DILocation(line: 243, column: 20, scope: !6884)
!6939 = !DILocation(line: 243, column: 8, scope: !6884)
!6940 = !DILocation(line: 243, column: 14, scope: !6884)
!6941 = !DILocation(line: 244, column: 6, scope: !6942)
!6942 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 244, column: 6)
!6943 = !DILocation(line: 244, column: 10, scope: !6942)
!6944 = !DILocation(line: 244, column: 17, scope: !6942)
!6945 = !DILocation(line: 244, column: 6, scope: !6884)
!6946 = !DILocation(line: 245, column: 9, scope: !6942)
!6947 = !DILocation(line: 245, column: 16, scope: !6942)
!6948 = !DILocation(line: 245, column: 3, scope: !6942)
!6949 = !DILocation(line: 247, column: 18, scope: !6942)
!6950 = !DILocation(line: 247, column: 22, scope: !6942)
!6951 = !DILocation(line: 247, column: 31, scope: !6942)
!6952 = !DILocation(line: 247, column: 35, scope: !6942)
!6953 = !DILocation(line: 247, column: 29, scope: !6942)
!6954 = !DILocation(line: 247, column: 44, scope: !6942)
!6955 = !DILocation(line: 247, column: 9, scope: !6942)
!6956 = !DILocation(line: 247, column: 16, scope: !6942)
!6957 = !DILocation(line: 248, column: 18, scope: !6884)
!6958 = !DILocation(line: 248, column: 22, scope: !6884)
!6959 = !DILocation(line: 248, column: 8, scope: !6884)
!6960 = !DILocation(line: 248, column: 16, scope: !6884)
!6961 = !DILocation(line: 249, column: 20, scope: !6884)
!6962 = !DILocation(line: 249, column: 25, scope: !6884)
!6963 = !DILocation(line: 249, column: 31, scope: !6884)
!6964 = !DILocation(line: 249, column: 8, scope: !6884)
!6965 = !DILocation(line: 249, column: 18, scope: !6884)
!6966 = !DILocation(line: 251, column: 31, scope: !6884)
!6967 = !DILocation(line: 251, column: 8, scope: !6884)
!6968 = !DILocation(line: 251, column: 6, scope: !6884)
!6969 = !DILocation(line: 252, column: 6, scope: !6970)
!6970 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 252, column: 6)
!6971 = !DILocation(line: 252, column: 10, scope: !6970)
!6972 = !DILocation(line: 252, column: 6, scope: !6884)
!6973 = !DILocation(line: 253, column: 3, scope: !6970)
!6974 = !DILocation(line: 255, column: 16, scope: !6884)
!6975 = !DILocation(line: 255, column: 10, scope: !6884)
!6976 = !DILocation(line: 255, column: 2, scope: !6884)
!6977 = !DILocation(line: 257, column: 3, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 255, column: 22)
!6979 = !DILocation(line: 257, column: 7, scope: !6978)
!6980 = !DILocation(line: 257, column: 15, scope: !6978)
!6981 = !DILocation(line: 258, column: 3, scope: !6978)
!6982 = !DILocation(line: 260, column: 3, scope: !6978)
!6983 = !DILocation(line: 260, column: 7, scope: !6978)
!6984 = !DILocation(line: 260, column: 15, scope: !6978)
!6985 = !DILocation(line: 261, column: 3, scope: !6978)
!6986 = !DILocation(line: 263, column: 3, scope: !6978)
!6987 = !DILocation(line: 263, column: 7, scope: !6978)
!6988 = !DILocation(line: 263, column: 15, scope: !6978)
!6989 = !DILocation(line: 264, column: 3, scope: !6978)
!6990 = !DILocation(line: 266, column: 12, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 266, column: 6)
!6992 = !DILocation(line: 266, column: 6, scope: !6991)
!6993 = !DILocation(line: 266, column: 17, scope: !6991)
!6994 = !DILocation(line: 266, column: 6, scope: !6884)
!6995 = !DILocation(line: 267, column: 24, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !6991, file: !3, line: 266, column: 40)
!6997 = !DILocation(line: 267, column: 3, scope: !6996)
!6998 = !DILocation(line: 267, column: 7, scope: !6996)
!6999 = !DILocation(line: 267, column: 16, scope: !6996)
!7000 = !DILocation(line: 268, column: 13, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6996, file: !3, line: 268, column: 7)
!7002 = !DILocation(line: 268, column: 20, scope: !7001)
!7003 = !DILocation(line: 268, column: 7, scope: !6996)
!7004 = !DILocation(line: 269, column: 4, scope: !7001)
!7005 = !DILocation(line: 269, column: 8, scope: !7001)
!7006 = !DILocation(line: 269, column: 15, scope: !7001)
!7007 = !DILocation(line: 271, column: 23, scope: !7001)
!7008 = !DILocation(line: 271, column: 37, scope: !7001)
!7009 = !DILocation(line: 271, column: 29, scope: !7001)
!7010 = !DILocation(line: 271, column: 44, scope: !7001)
!7011 = !DILocation(line: 271, column: 4, scope: !7001)
!7012 = !DILocation(line: 271, column: 8, scope: !7001)
!7013 = !DILocation(line: 271, column: 15, scope: !7001)
!7014 = !DILocation(line: 272, column: 23, scope: !6996)
!7015 = !DILocation(line: 272, column: 16, scope: !6996)
!7016 = !DILocation(line: 272, column: 3, scope: !6996)
!7017 = !DILocation(line: 272, column: 7, scope: !6996)
!7018 = !DILocation(line: 272, column: 14, scope: !6996)
!7019 = !DILocation(line: 273, column: 2, scope: !6996)
!7020 = !DILocation(line: 266, column: 20, scope: !6991)
!7021 = !DILocation(line: 274, column: 1, scope: !6884)
!7022 = !DILocation(line: 275, column: 12, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 275, column: 6)
!7024 = !DILocation(line: 275, column: 25, scope: !7023)
!7025 = !DILocation(line: 275, column: 30, scope: !7023)
!7026 = !DILocation(line: 275, column: 36, scope: !7023)
!7027 = !DILocation(line: 275, column: 22, scope: !7023)
!7028 = !DILocation(line: 275, column: 6, scope: !6884)
!7029 = !DILocation(line: 276, column: 15, scope: !7023)
!7030 = !DILocation(line: 276, column: 3, scope: !7023)
!7031 = !DILocation(line: 277, column: 9, scope: !6884)
!7032 = !DILocation(line: 277, column: 2, scope: !6884)
!7033 = !DILocation(line: 278, column: 1, scope: !6884)
!7034 = distinct !DISubprogram(name: "locks_lock_file_wait", scope: !1671, file: !1671, line: 344, type: !6885, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7035)
!7035 = !{!7036, !7037}
!7036 = !DILocalVariable(name: "filp", arg: 1, scope: !7034, file: !1671, line: 344, type: !672)
!7037 = !DILocalVariable(name: "fl", arg: 2, scope: !7034, file: !1671, line: 344, type: !1669)
!7038 = !DILocation(line: 344, column: 53, scope: !7034)
!7039 = !DILocation(line: 344, column: 77, scope: !7034)
!7040 = !DILocation(line: 346, column: 42, scope: !7034)
!7041 = !DILocation(line: 346, column: 31, scope: !7034)
!7042 = !DILocation(line: 346, column: 49, scope: !7034)
!7043 = !DILocation(line: 346, column: 9, scope: !7034)
!7044 = !DILocation(line: 346, column: 2, scope: !7034)
!7045 = !DISubprogram(name: "p9_client_lock_dotl", scope: !159, file: !159, line: 224, type: !7046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7046 = !DISubroutineType(types: !7047)
!7047 = !{!101, !4943, !7048, !7049}
!7048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!7049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!7050 = !DISubprogram(name: "schedule_timeout_interruptible", scope: !1790, file: !1790, line: 299, type: !7051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7051 = !DISubroutineType(types: !7052)
!7052 = !{!274, !274}
!7053 = !DISubprogram(name: "kfree", scope: !7054, file: !7054, line: 227, type: !7055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7054 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!7055 = !DISubroutineType(types: !7056)
!7056 = !{null, !1377}
!7057 = !DISubprogram(name: "__warn_printk", scope: !2170, file: !2170, line: 93, type: !7058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7058 = !DISubroutineType(types: !7059)
!7059 = !{null, !470, null}
!7060 = !DISubprogram(name: "locks_lock_inode_wait", scope: !1671, file: !1671, line: 167, type: !7061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7061 = !DISubroutineType(types: !7062)
!7062 = !{!101, !309, !1669}
!7063 = !DISubprogram(name: "posix_test_lock", scope: !1671, file: !1671, line: 160, type: !7064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7064 = !DISubroutineType(types: !7065)
!7065 = !{null, !672, !1669}
!7066 = !DISubprogram(name: "p9_client_getlock_dotl", scope: !159, file: !159, line: 225, type: !7067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7067 = !DISubroutineType(types: !7068)
!7068 = !{!101, !4943, !7069}
!7069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6891, size: 64)
