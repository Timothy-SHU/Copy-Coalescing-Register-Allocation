; ModuleID = 'fs/9p/vfs_addr.c'
source_filename = "fs/9p/vfs_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_request_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%struct.atomic_t = type { i32 }
%union.anon.16 = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.netfs_io_request = type { %struct.work_struct, ptr, ptr, %struct.netfs_cache_resources, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i8, i64, i64, i64, %struct.refcount_struct, i64, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.p9_qid = type { i8, i32, i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i8, i8, %union.anon.17, %union.anon.18, %union.anon.21 }
%union.anon.17 = type { i64 }
%union.anon.18 = type { %struct.iovec }
%struct.iovec = type { ptr, i64 }
%union.anon.21 = type { i64 }
%struct.netfs_io_subrequest = type { ptr, %struct.list_head, i64, i64, i64, %struct.refcount_struct, i16, i16, i8, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.v9fs_inode = type { %struct.netfs_inode, %struct.p9_qid, i32, %struct.mutex }
%struct.netfs_inode = type { %struct.inode, ptr, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.32, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.33, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.34, ptr, %struct.address_space, %struct.list_head, %union.anon.35, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.32 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.33 = type { %struct.callback_head }
%union.anon.34 = type { ptr }
%union.anon.35 = type { ptr }
%struct.folio = type { %union.anon.36, %union.anon.41, %union.anon.43 }
%union.anon.36 = type { %struct.page }
%struct.page = type { i64, %union.anon.22, %union.anon.31, %struct.atomic_t, [8 x i8] }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %union.anon.24, ptr, %union.anon.26, i64 }
%union.anon.24 = type { %struct.list_head }
%union.anon.26 = type { i64 }
%union.anon.31 = type { %struct.atomic_t }
%union.anon.41 = type { %struct.page }
%union.anon.43 = type { %struct.page }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, %union.anon.46 }
%union.anon.46 = type { ptr }
%struct.anon.29 = type { i64 }
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
%struct.anon.37 = type { i64, %union.anon.38, ptr, i64, %union.anon.40, %struct.atomic_t, %struct.atomic_t }
%union.anon.38 = type { %struct.list_head }
%union.anon.40 = type { ptr }
%struct.anon.42 = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32 }

@v9fs_req_ops = hidden constant %struct.netfs_request_ops { ptr @v9fs_init_request, ptr @v9fs_free_request, ptr @v9fs_begin_cache_operation, ptr null, ptr null, ptr @v9fs_issue_read, ptr null, ptr null, ptr null }, align 8, !dbg !0
@v9fs_addr_operations = hidden constant %struct.address_space_operations { ptr @v9fs_vfs_writepage, ptr @netfs_read_folio, ptr null, ptr @filemap_dirty_folio, ptr @netfs_readahead, ptr @v9fs_write_begin, ptr @v9fs_write_end, ptr null, ptr @v9fs_invalidate_folio, ptr @v9fs_release_folio, ptr null, ptr @v9fs_direct_IO, ptr null, ptr @v9fs_launder_folio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5467
@.str = private unnamed_addr constant [17 x i8] c"fs/9p/vfs_addr.c\00", align 1, !dbg !5469
@__tracepoint_9p_fid_ref = external dso_local global %struct.tracepoint, align 8
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8
@v9fs_vfs_write_folio_locked.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5474
@.str.1 = private unnamed_addr constant [48 x i8] c"folio expected an open fid inode->i_private=%p\0A\00", align 1, !dbg !5551

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_init_request(ptr noundef %rreq, ptr noundef %file) #0 align 16 !dbg !5565 {
entry:
  %rreq.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %rreq, ptr %rreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rreq.addr, metadata !5567, metadata !DIExpression()), !dbg !5575
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5568, metadata !DIExpression()), !dbg !5576
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #9, !dbg !5577
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5569, metadata !DIExpression()), !dbg !5578
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5579
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5580
  %1 = load ptr, ptr %private_data, align 8, !dbg !5580
  store ptr %1, ptr %fid, align 8, !dbg !5578
  br label %do.body, !dbg !5581

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %fid, align 8, !dbg !5582
  %tobool = icmp ne ptr %2, null, !dbg !5582
  %lnot = xor i1 %tobool, true, !dbg !5582
  %lnot1 = xor i1 %lnot, true, !dbg !5582
  %lnot2 = xor i1 %lnot1, true, !dbg !5582
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5582
  %conv = sext i32 %lnot.ext to i64, !dbg !5582
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5582
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5582
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5585

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !5582

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !5586

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5588

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5588

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5586

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 61, i32 0, i64 12) #9, !dbg !5590, !srcloc !5592
  br label %do.cond7, !dbg !5590

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5590

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !5586

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !5586

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !5586

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !5585

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !5585

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5593
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5570, metadata !DIExpression()), !dbg !5593
  %3 = load ptr, ptr %rreq.addr, align 8, !dbg !5593
  %origin = getelementptr inbounds %struct.netfs_io_request, ptr %3, i32 0, i32 12, !dbg !5593
  %4 = load i8, ptr %origin, align 2, !dbg !5593
  %conv13 = sext i8 %4 to i32, !dbg !5593
  %cmp = icmp eq i32 %conv13, 2, !dbg !5593
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5593

land.rhs:                                         ; preds = %do.end12
  %5 = load ptr, ptr %fid, align 8, !dbg !5593
  %mode = getelementptr inbounds %struct.p9_fid, ptr %5, i32 0, i32 3, !dbg !5593
  %6 = load i32, ptr %mode, align 8, !dbg !5593
  %and = and i32 %6, 2, !dbg !5593
  %tobool15 = icmp ne i32 %and, 0, !dbg !5593
  %lnot16 = xor i1 %tobool15, true, !dbg !5593
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end12
  %7 = phi i1 [ false, %do.end12 ], [ %lnot16, %land.rhs ], !dbg !5594
  %lnot18 = xor i1 %7, true, !dbg !5593
  %lnot20 = xor i1 %lnot18, true, !dbg !5593
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5593
  store i32 %lnot.ext21, ptr %__ret_warn_on, align 4, !dbg !5593
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5595
  %tobool22 = icmp ne i32 %8, 0, !dbg !5595
  %lnot23 = xor i1 %tobool22, true, !dbg !5595
  %lnot25 = xor i1 %lnot23, true, !dbg !5595
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !5595
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !5595
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !5595
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !5595
  br i1 %tobool29, label %if.then30, label %if.end43, !dbg !5593

if.then30:                                        ; preds = %land.end
  br label %do.body31, !dbg !5595

do.body31:                                        ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !5596
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5572, metadata !DIExpression()), !dbg !5596
  store i32 2305, ptr %__flags, align 4, !dbg !5596
  br label %do.body32, !dbg !5596

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !5597

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5597

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !5596

do.body35:                                        ; preds = %do.end34
  %9 = load i32, ptr %__flags, align 4, !dbg !5599
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 67, i32 %9, i64 12) #9, !dbg !5599, !srcloc !5601
  br label %do.cond36, !dbg !5599

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !5599

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !5596

do.body38:                                        ; preds = %do.end37
  br label %do.cond39, !dbg !5602

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5602

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !5595
  br label %do.cond41, !dbg !5596

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !5596

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !5596

if.end43:                                         ; preds = %do.end42, %land.end
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !5593
  %tobool44 = icmp ne i32 %10, 0, !dbg !5593
  %lnot45 = xor i1 %tobool44, true, !dbg !5593
  %lnot47 = xor i1 %lnot45, true, !dbg !5593
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !5593
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !5593
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !5593
  store i64 %expval50, ptr %tmp, align 8, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5604
  %11 = load i64, ptr %tmp, align 8, !dbg !5593
  %12 = load ptr, ptr %fid, align 8, !dbg !5605
  %call = call ptr @p9_fid_get(ptr noundef %12) #10, !dbg !5606
  %13 = load ptr, ptr %fid, align 8, !dbg !5607
  %14 = load ptr, ptr %rreq.addr, align 8, !dbg !5608
  %netfs_priv = getelementptr inbounds %struct.netfs_io_request, ptr %14, i32 0, i32 5, !dbg !5609
  store ptr %13, ptr %netfs_priv, align 8, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #9, !dbg !5611
  ret i32 0, !dbg !5612
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_free_request(ptr noundef %rreq) #0 align 16 !dbg !5613 {
entry:
  %rreq.addr = alloca ptr, align 8
  %fid = alloca ptr, align 8
  store ptr %rreq, ptr %rreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rreq.addr, metadata !5615, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #9, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5616, metadata !DIExpression()), !dbg !5619
  %0 = load ptr, ptr %rreq.addr, align 8, !dbg !5620
  %netfs_priv = getelementptr inbounds %struct.netfs_io_request, ptr %0, i32 0, i32 5, !dbg !5621
  %1 = load ptr, ptr %netfs_priv, align 8, !dbg !5621
  store ptr %1, ptr %fid, align 8, !dbg !5619
  %2 = load ptr, ptr %fid, align 8, !dbg !5622
  %call = call i32 @p9_fid_put(ptr noundef %2) #10, !dbg !5623
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #9, !dbg !5624
  ret void, !dbg !5624
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_begin_cache_operation(ptr noundef %rreq) #0 align 16 !dbg !5625 {
entry:
  %rreq.addr = alloca ptr, align 8
  store ptr %rreq, ptr %rreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rreq.addr, metadata !5627, metadata !DIExpression()), !dbg !5628
  ret i32 -105, !dbg !5629
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_issue_read(ptr noundef %subreq) #0 align 16 !dbg !5630 {
entry:
  %subreq.addr = alloca ptr, align 8
  %rreq = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %to = alloca %struct.iov_iter, align 8
  %pos = alloca i64, align 8
  %len = alloca i64, align 8
  %total = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %subreq, ptr %subreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subreq.addr, metadata !5632, metadata !DIExpression()), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 8, ptr %rreq) #9, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %rreq, metadata !5633, metadata !DIExpression()), !dbg !5642
  %0 = load ptr, ptr %subreq.addr, align 8, !dbg !5643
  %rreq1 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %0, i32 0, i32 0, !dbg !5644
  %1 = load ptr, ptr %rreq1, align 8, !dbg !5644
  store ptr %1, ptr %rreq, align 8, !dbg !5642
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #9, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5634, metadata !DIExpression()), !dbg !5646
  %2 = load ptr, ptr %rreq, align 8, !dbg !5647
  %netfs_priv = getelementptr inbounds %struct.netfs_io_request, ptr %2, i32 0, i32 5, !dbg !5648
  %3 = load ptr, ptr %netfs_priv, align 8, !dbg !5648
  store ptr %3, ptr %fid, align 8, !dbg !5646
  call void @llvm.lifetime.start.p0(i64 40, ptr %to) #9, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %to, metadata !5635, metadata !DIExpression()), !dbg !5650
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #9, !dbg !5651
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5636, metadata !DIExpression()), !dbg !5652
  %4 = load ptr, ptr %subreq.addr, align 8, !dbg !5653
  %start = getelementptr inbounds %struct.netfs_io_subrequest, ptr %4, i32 0, i32 2, !dbg !5654
  %5 = load i64, ptr %start, align 8, !dbg !5654
  %6 = load ptr, ptr %subreq.addr, align 8, !dbg !5655
  %transferred = getelementptr inbounds %struct.netfs_io_subrequest, ptr %6, i32 0, i32 4, !dbg !5656
  %7 = load i64, ptr %transferred, align 8, !dbg !5656
  %add = add i64 %5, %7, !dbg !5657
  store i64 %add, ptr %pos, align 8, !dbg !5652
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #9, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5637, metadata !DIExpression()), !dbg !5659
  %8 = load ptr, ptr %subreq.addr, align 8, !dbg !5660
  %len2 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %8, i32 0, i32 3, !dbg !5661
  %9 = load i64, ptr %len2, align 8, !dbg !5661
  %10 = load ptr, ptr %subreq.addr, align 8, !dbg !5662
  %transferred3 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %10, i32 0, i32 4, !dbg !5663
  %11 = load i64, ptr %transferred3, align 8, !dbg !5663
  %sub = sub i64 %9, %11, !dbg !5664
  store i64 %sub, ptr %len, align 8, !dbg !5659
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #9, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %total, metadata !5638, metadata !DIExpression()), !dbg !5666
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5639, metadata !DIExpression()), !dbg !5667
  %12 = load ptr, ptr %rreq, align 8, !dbg !5668
  %mapping = getelementptr inbounds %struct.netfs_io_request, ptr %12, i32 0, i32 2, !dbg !5669
  %13 = load ptr, ptr %mapping, align 8, !dbg !5669
  %i_pages = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 1, !dbg !5670
  %14 = load i64, ptr %pos, align 8, !dbg !5671
  %15 = load i64, ptr %len, align 8, !dbg !5672
  call void @iov_iter_xarray(ptr noundef %to, i32 noundef 0, ptr noundef %i_pages, i64 noundef %14, i64 noundef %15) #10, !dbg !5673
  %16 = load ptr, ptr %fid, align 8, !dbg !5674
  %17 = load i64, ptr %pos, align 8, !dbg !5675
  %call = call i32 @p9_client_read(ptr noundef %16, i64 noundef %17, ptr noundef %to, ptr noundef %err) #10, !dbg !5676
  store i32 %call, ptr %total, align 4, !dbg !5677
  %18 = load ptr, ptr %subreq.addr, align 8, !dbg !5678
  %flags = getelementptr inbounds %struct.netfs_io_subrequest, ptr %18, i32 0, i32 9, !dbg !5678
  %19 = ptrtoint ptr %flags to i64, !dbg !5678
  %cmp = icmp ne i64 %19, 0, !dbg !5678
  %conv = zext i1 %cmp to i32, !dbg !5678
  %20 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5678
  br i1 %20, label %land.lhs.true, label %cond.false, !dbg !5678

land.lhs.true:                                    ; preds = %entry
  %21 = load ptr, ptr %subreq.addr, align 8, !dbg !5678
  %flags4 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %21, i32 0, i32 9, !dbg !5678
  %22 = ptrtoint ptr %flags4 to i64, !dbg !5678
  %cmp5 = icmp ne i64 %22, 0, !dbg !5678
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !5678

land.lhs.true7:                                   ; preds = %land.lhs.true
  %23 = load ptr, ptr %subreq.addr, align 8, !dbg !5678
  %flags8 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %23, i32 0, i32 9, !dbg !5678
  %24 = load i64, ptr %flags8, align 8, !dbg !5678
  %25 = call i1 @llvm.is.constant.i64(i64 %24), !dbg !5678
  br i1 %25, label %cond.true, label %cond.false, !dbg !5678

cond.true:                                        ; preds = %land.lhs.true7
  %26 = load ptr, ptr %subreq.addr, align 8, !dbg !5678
  %flags9 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %26, i32 0, i32 9, !dbg !5678
  call void @generic___set_bit(i64 noundef 1, ptr noundef %flags9) #10, !dbg !5678
  br label %cond.end, !dbg !5678

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true, %entry
  %27 = load ptr, ptr %subreq.addr, align 8, !dbg !5678
  %flags10 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %27, i32 0, i32 9, !dbg !5678
  call void @___set_bit(i64 noundef 1, ptr noundef %flags10) #10, !dbg !5678
  br label %cond.end, !dbg !5678

cond.end:                                         ; preds = %cond.false, %cond.true
  %28 = load ptr, ptr %subreq.addr, align 8, !dbg !5679
  %29 = load i32, ptr %err, align 4, !dbg !5680
  %tobool = icmp ne i32 %29, 0, !dbg !5680
  br i1 %tobool, label %cond.true11, label %cond.false12, !dbg !5680

cond.true11:                                      ; preds = %cond.end
  br label %cond.end13, !dbg !5680

cond.false12:                                     ; preds = %cond.end
  %30 = load i32, ptr %total, align 4, !dbg !5681
  br label %cond.end13, !dbg !5680

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond = phi i32 [ %29, %cond.true11 ], [ %30, %cond.false12 ], !dbg !5680
  %conv14 = sext i32 %cond to i64, !dbg !5680
  call void @netfs_subreq_terminated(ptr noundef %28, i64 noundef %conv14, i1 noundef zeroext false) #10, !dbg !5682
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !5683
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #9, !dbg !5683
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #9, !dbg !5683
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #9, !dbg !5683
  call void @llvm.lifetime.end.p0(i64 40, ptr %to) #9, !dbg !5683
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #9, !dbg !5683
  call void @llvm.lifetime.end.p0(i64 8, ptr %rreq) #9, !dbg !5683
  ret void, !dbg !5683
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_vfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 16 !dbg !5684 {
entry:
  %page.addr = alloca ptr, align 8
  %wbc.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5686, metadata !DIExpression()), !dbg !5690
  store ptr %wbc, ptr %wbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wbc.addr, metadata !5687, metadata !DIExpression()), !dbg !5691
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #9, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !5688, metadata !DIExpression()), !dbg !5693
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5694
  %call = call i64 @_compound_head(ptr noundef %0) #10, !dbg !5694
  %1 = inttoptr i64 %call to ptr, !dbg !5694
  store ptr %1, ptr %folio, align 8, !dbg !5693
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #9, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5689, metadata !DIExpression()), !dbg !5696
  store i32 0, ptr %tmp, align 4, !dbg !5697
  %2 = load i32, ptr %tmp, align 4, !dbg !5700
  %3 = load ptr, ptr %folio, align 8, !dbg !5701
  %call2 = call i32 @v9fs_vfs_write_folio_locked(ptr noundef %3) #10, !dbg !5702
  store i32 %call2, ptr %retval1, align 4, !dbg !5703
  %4 = load i32, ptr %retval1, align 4, !dbg !5704
  %cmp = icmp slt i32 %4, 0, !dbg !5706
  br i1 %cmp, label %if.then, label %if.else7, !dbg !5707

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %retval1, align 4, !dbg !5708
  %cmp3 = icmp eq i32 %5, -11, !dbg !5711
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !5712

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %wbc.addr, align 8, !dbg !5713
  %7 = load ptr, ptr %folio, align 8, !dbg !5715
  %call5 = call zeroext i1 @folio_redirty_for_writepage(ptr noundef %6, ptr noundef %7) #10, !dbg !5716
  store i32 0, ptr %retval1, align 4, !dbg !5717
  br label %if.end, !dbg !5718

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %folio, align 8, !dbg !5719
  %call6 = call ptr @folio_mapping(ptr noundef %8) #10, !dbg !5721
  %9 = load i32, ptr %retval1, align 4, !dbg !5722
  call void @mapping_set_error(ptr noundef %call6, i32 noundef %9) #10, !dbg !5723
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end8, !dbg !5724

if.else7:                                         ; preds = %entry
  store i32 0, ptr %retval1, align 4, !dbg !5725
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.end
  %10 = load ptr, ptr %folio, align 8, !dbg !5726
  call void @folio_unlock(ptr noundef %10) #10, !dbg !5727
  %11 = load i32, ptr %retval1, align 4, !dbg !5728
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #9, !dbg !5729
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #9, !dbg !5729
  ret i32 %11, !dbg !5730
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @netfs_read_folio(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @filemap_dirty_folio(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netfs_readahead(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_write_begin(ptr noundef %filp, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, ptr noundef %subpagep, ptr noundef %fsdata) #0 align 16 !dbg !5731 {
entry:
  %retval = alloca i32, align 4
  %filp.addr = alloca ptr, align 8
  %mapping.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %len.addr = alloca i32, align 4
  %subpagep.addr = alloca ptr, align 8
  %fsdata.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %folio = alloca ptr, align 8
  %v9inode = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5733, metadata !DIExpression()), !dbg !5742
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !5734, metadata !DIExpression()), !dbg !5743
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5735, metadata !DIExpression()), !dbg !5744
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5736, metadata !DIExpression()), !dbg !5745
  store ptr %subpagep, ptr %subpagep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subpagep.addr, metadata !5737, metadata !DIExpression()), !dbg !5746
  store ptr %fsdata, ptr %fsdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsdata.addr, metadata !5738, metadata !DIExpression()), !dbg !5747
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #9, !dbg !5748
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5739, metadata !DIExpression()), !dbg !5749
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #9, !dbg !5750
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !5740, metadata !DIExpression()), !dbg !5751
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9inode) #9, !dbg !5752
  call void @llvm.dbg.declare(metadata ptr %v9inode, metadata !5741, metadata !DIExpression()), !dbg !5753
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !5754
  %host = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 0, !dbg !5755
  %1 = load ptr, ptr %host, align 8, !dbg !5755
  %call = call ptr @V9FS_I(ptr noundef %1) #10, !dbg !5756
  store ptr %call, ptr %v9inode, align 8, !dbg !5753
  store i32 0, ptr %tmp, align 4, !dbg !5757
  %2 = load i32, ptr %tmp, align 4, !dbg !5760
  %3 = load ptr, ptr %v9inode, align 8, !dbg !5761
  %netfs = getelementptr inbounds %struct.v9fs_inode, ptr %3, i32 0, i32 0, !dbg !5762
  %4 = load ptr, ptr %filp.addr, align 8, !dbg !5763
  %5 = load ptr, ptr %mapping.addr, align 8, !dbg !5764
  %6 = load i64, ptr %pos.addr, align 8, !dbg !5765
  %7 = load i32, ptr %len.addr, align 4, !dbg !5766
  %8 = load ptr, ptr %fsdata.addr, align 8, !dbg !5767
  %call2 = call i32 @netfs_write_begin(ptr noundef %netfs, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, ptr noundef %folio, ptr noundef %8) #10, !dbg !5768
  store i32 %call2, ptr %retval1, align 4, !dbg !5769
  %9 = load i32, ptr %retval1, align 4, !dbg !5770
  %cmp = icmp slt i32 %9, 0, !dbg !5772
  br i1 %cmp, label %if.then, label %if.end, !dbg !5773

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %retval1, align 4, !dbg !5774
  store i32 %10, ptr %retval, align 4, !dbg !5775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5775

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %folio, align 8, !dbg !5776
  %12 = getelementptr inbounds %struct.folio, ptr %11, i32 0, i32 0, !dbg !5777
  %13 = load ptr, ptr %subpagep.addr, align 8, !dbg !5778
  store ptr %12, ptr %13, align 8, !dbg !5779
  %14 = load i32, ptr %retval1, align 4, !dbg !5780
  store i32 %14, ptr %retval, align 4, !dbg !5781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5781

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9inode) #9, !dbg !5782
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #9, !dbg !5782
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #9, !dbg !5782
  %15 = load i32, ptr %retval, align 4, !dbg !5782
  ret i32 %15, !dbg !5782
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_write_end(ptr noundef %filp, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %subpage, ptr noundef %fsdata) #0 align 16 !dbg !5783 {
entry:
  %filp.addr = alloca ptr, align 8
  %mapping.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %len.addr = alloca i32, align 4
  %copied.addr = alloca i32, align 4
  %subpage.addr = alloca ptr, align 8
  %fsdata.addr = alloca ptr, align 8
  %last_pos = alloca i64, align 8
  %folio = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5785, metadata !DIExpression()), !dbg !5796
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !5786, metadata !DIExpression()), !dbg !5797
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5787, metadata !DIExpression()), !dbg !5798
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5788, metadata !DIExpression()), !dbg !5799
  store i32 %copied, ptr %copied.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %copied.addr, metadata !5789, metadata !DIExpression()), !dbg !5800
  store ptr %subpage, ptr %subpage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subpage.addr, metadata !5790, metadata !DIExpression()), !dbg !5801
  store ptr %fsdata, ptr %fsdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsdata.addr, metadata !5791, metadata !DIExpression()), !dbg !5802
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_pos) #9, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %last_pos, metadata !5792, metadata !DIExpression()), !dbg !5804
  %0 = load i64, ptr %pos.addr, align 8, !dbg !5805
  %1 = load i32, ptr %copied.addr, align 4, !dbg !5806
  %conv = zext i32 %1 to i64, !dbg !5806
  %add = add i64 %0, %conv, !dbg !5807
  store i64 %add, ptr %last_pos, align 8, !dbg !5804
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #9, !dbg !5808
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !5793, metadata !DIExpression()), !dbg !5809
  %2 = load ptr, ptr %subpage.addr, align 8, !dbg !5810
  %call = call i64 @_compound_head(ptr noundef %2) #10, !dbg !5810
  %3 = inttoptr i64 %call to ptr, !dbg !5810
  store ptr %3, ptr %folio, align 8, !dbg !5809
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5794, metadata !DIExpression()), !dbg !5812
  %4 = load ptr, ptr %mapping.addr, align 8, !dbg !5813
  %host = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 0, !dbg !5814
  %5 = load ptr, ptr %host, align 8, !dbg !5814
  store ptr %5, ptr %inode, align 8, !dbg !5812
  store i32 0, ptr %tmp, align 4, !dbg !5815
  %6 = load i32, ptr %tmp, align 4, !dbg !5818
  %7 = load ptr, ptr %folio, align 8, !dbg !5819
  %call1 = call zeroext i1 @folio_test_uptodate(ptr noundef %7) #10, !dbg !5821
  br i1 %call1, label %if.end6, label %if.then, !dbg !5822

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %copied.addr, align 4, !dbg !5823
  %9 = load i32, ptr %len.addr, align 4, !dbg !5823
  %cmp = icmp ult i32 %8, %9, !dbg !5823
  %lnot = xor i1 %cmp, true, !dbg !5823
  %lnot3 = xor i1 %lnot, true, !dbg !5823
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5823
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5823
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !5823
  %tobool = icmp ne i64 %expval, 0, !dbg !5823
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5826

if.then5:                                         ; preds = %if.then
  store i32 0, ptr %copied.addr, align 4, !dbg !5827
  br label %out, !dbg !5829

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %folio, align 8, !dbg !5830
  call void @folio_mark_uptodate(ptr noundef %10) #10, !dbg !5831
  br label %if.end6, !dbg !5832

if.end6:                                          ; preds = %if.end, %entry
  %11 = load i64, ptr %last_pos, align 8, !dbg !5833
  %12 = load ptr, ptr %inode, align 8, !dbg !5835
  %i_size = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 15, !dbg !5836
  %13 = load i64, ptr %i_size, align 8, !dbg !5836
  %cmp7 = icmp sgt i64 %11, %13, !dbg !5837
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !5838

if.then9:                                         ; preds = %if.end6
  %14 = load ptr, ptr %inode, align 8, !dbg !5839
  %15 = load i64, ptr %last_pos, align 8, !dbg !5841
  %16 = load ptr, ptr %inode, align 8, !dbg !5842
  %i_size10 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 15, !dbg !5843
  %17 = load i64, ptr %i_size10, align 8, !dbg !5843
  %sub = sub i64 %15, %17, !dbg !5844
  call void @inode_add_bytes(ptr noundef %14, i64 noundef %sub) #10, !dbg !5845
  %18 = load ptr, ptr %inode, align 8, !dbg !5846
  %19 = load i64, ptr %last_pos, align 8, !dbg !5847
  call void @i_size_write(ptr noundef %18, i64 noundef %19) #10, !dbg !5848
  br label %if.end11, !dbg !5849

if.end11:                                         ; preds = %if.then9, %if.end6
  %20 = load ptr, ptr %folio, align 8, !dbg !5850
  %call12 = call zeroext i1 @folio_mark_dirty(ptr noundef %20) #10, !dbg !5851
  br label %out, !dbg !5851

out:                                              ; preds = %if.end11, %if.then5
  call void @llvm.dbg.label(metadata !5795), !dbg !5852
  %21 = load ptr, ptr %folio, align 8, !dbg !5853
  call void @folio_unlock(ptr noundef %21) #10, !dbg !5854
  %22 = load ptr, ptr %folio, align 8, !dbg !5855
  call void @folio_put(ptr noundef %22) #10, !dbg !5856
  %23 = load i32, ptr %copied.addr, align 4, !dbg !5857
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !5858
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #9, !dbg !5858
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_pos) #9, !dbg !5858
  ret i32 %23, !dbg !5859
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_invalidate_folio(ptr noundef %folio, i64 noundef %offset, i64 noundef %length) #0 align 16 !dbg !5860 {
entry:
  %folio.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5862, metadata !DIExpression()), !dbg !5865
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5863, metadata !DIExpression()), !dbg !5866
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !5864, metadata !DIExpression()), !dbg !5867
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5868
  call void @folio_wait_fscache(ptr noundef %0) #10, !dbg !5869
  ret void, !dbg !5870
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @v9fs_release_folio(ptr noundef %folio, i32 noundef %gfp) #0 align 16 !dbg !5871 {
entry:
  %retval = alloca i1, align 1
  %folio.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5873, metadata !DIExpression()), !dbg !5875
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5874, metadata !DIExpression()), !dbg !5876
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5877
  %call = call zeroext i1 @folio_test_private(ptr noundef %0) #10, !dbg !5879
  br i1 %call, label %if.then, label %if.end, !dbg !5880

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5881
  br label %return, !dbg !5881

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5882
  br label %return, !dbg !5882

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !5883
  ret i1 %1, !dbg !5883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @v9fs_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 16 !dbg !5884 {
entry:
  %iocb.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %pos = alloca i64, align 8
  %n = alloca i64, align 8
  %err = alloca i32, align 4
  %inode = alloca ptr, align 8
  %i_size = alloca i64, align 8
  store ptr %iocb, ptr %iocb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iocb.addr, metadata !5886, metadata !DIExpression()), !dbg !5898
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5887, metadata !DIExpression()), !dbg !5899
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #9, !dbg !5900
  call void @llvm.dbg.declare(metadata ptr %file, metadata !5888, metadata !DIExpression()), !dbg !5901
  %0 = load ptr, ptr %iocb.addr, align 8, !dbg !5902
  %ki_filp = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 0, !dbg !5903
  %1 = load ptr, ptr %ki_filp, align 8, !dbg !5903
  store ptr %1, ptr %file, align 8, !dbg !5901
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #9, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5889, metadata !DIExpression()), !dbg !5905
  %2 = load ptr, ptr %iocb.addr, align 8, !dbg !5906
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %2, i32 0, i32 1, !dbg !5907
  %3 = load i64, ptr %ki_pos, align 8, !dbg !5907
  store i64 %3, ptr %pos, align 8, !dbg !5905
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #9, !dbg !5908
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5890, metadata !DIExpression()), !dbg !5909
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !5910
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5891, metadata !DIExpression()), !dbg !5911
  store i32 0, ptr %err, align 4, !dbg !5911
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !5912
  %call = call zeroext i8 @iov_iter_rw(ptr noundef %4) #10, !dbg !5913
  %conv = zext i8 %call to i32, !dbg !5913
  %cmp = icmp eq i32 %conv, 1, !dbg !5914
  br i1 %cmp, label %if.then, label %if.else, !dbg !5915

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %file, align 8, !dbg !5916
  %private_data = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15, !dbg !5917
  %6 = load ptr, ptr %private_data, align 8, !dbg !5917
  %7 = load i64, ptr %pos, align 8, !dbg !5918
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !5919
  %call2 = call i32 @p9_client_write(ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %err) #10, !dbg !5920
  %conv3 = sext i32 %call2 to i64, !dbg !5920
  store i64 %conv3, ptr %n, align 8, !dbg !5921
  %9 = load i64, ptr %n, align 8, !dbg !5922
  %tobool = icmp ne i64 %9, 0, !dbg !5922
  br i1 %tobool, label %if.then4, label %if.end11, !dbg !5923

if.then4:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !5924
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5892, metadata !DIExpression()), !dbg !5925
  %10 = load ptr, ptr %file, align 8, !dbg !5926
  %call5 = call ptr @file_inode(ptr noundef %10) #10, !dbg !5927
  store ptr %call5, ptr %inode, align 8, !dbg !5925
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_size) #9, !dbg !5928
  call void @llvm.dbg.declare(metadata ptr %i_size, metadata !5897, metadata !DIExpression()), !dbg !5929
  %11 = load ptr, ptr %inode, align 8, !dbg !5930
  %call6 = call i64 @i_size_read(ptr noundef %11) #10, !dbg !5931
  store i64 %call6, ptr %i_size, align 8, !dbg !5929
  %12 = load i64, ptr %pos, align 8, !dbg !5932
  %13 = load i64, ptr %n, align 8, !dbg !5934
  %add = add i64 %12, %13, !dbg !5935
  %14 = load i64, ptr %i_size, align 8, !dbg !5936
  %cmp7 = icmp sgt i64 %add, %14, !dbg !5937
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !5938

if.then9:                                         ; preds = %if.then4
  %15 = load ptr, ptr %inode, align 8, !dbg !5939
  %16 = load i64, ptr %pos, align 8, !dbg !5940
  %17 = load i64, ptr %n, align 8, !dbg !5941
  %add10 = add i64 %16, %17, !dbg !5942
  %18 = load i64, ptr %i_size, align 8, !dbg !5943
  %sub = sub i64 %add10, %18, !dbg !5944
  call void @inode_add_bytes(ptr noundef %15, i64 noundef %sub) #10, !dbg !5945
  br label %if.end, !dbg !5945

if.end:                                           ; preds = %if.then9, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_size) #9, !dbg !5946
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !5946
  br label %if.end11, !dbg !5947

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end15, !dbg !5948

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %file, align 8, !dbg !5949
  %private_data12 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 15, !dbg !5951
  %20 = load ptr, ptr %private_data12, align 8, !dbg !5951
  %21 = load i64, ptr %pos, align 8, !dbg !5952
  %22 = load ptr, ptr %iter.addr, align 8, !dbg !5953
  %call13 = call i32 @p9_client_read(ptr noundef %20, i64 noundef %21, ptr noundef %22, ptr noundef %err) #10, !dbg !5954
  %conv14 = sext i32 %call13 to i64, !dbg !5954
  store i64 %conv14, ptr %n, align 8, !dbg !5955
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end11
  %23 = load i64, ptr %n, align 8, !dbg !5956
  %tobool16 = icmp ne i64 %23, 0, !dbg !5956
  br i1 %tobool16, label %cond.true, label %cond.false, !dbg !5956

cond.true:                                        ; preds = %if.end15
  %24 = load i64, ptr %n, align 8, !dbg !5957
  br label %cond.end, !dbg !5956

cond.false:                                       ; preds = %if.end15
  %25 = load i32, ptr %err, align 4, !dbg !5958
  %conv17 = sext i32 %25 to i64, !dbg !5958
  br label %cond.end, !dbg !5956

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %24, %cond.true ], [ %conv17, %cond.false ], !dbg !5956
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !5959
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #9, !dbg !5959
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #9, !dbg !5959
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #9, !dbg !5959
  ret i64 %cond, !dbg !5960
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_launder_folio(ptr noundef %folio) #0 align 16 !dbg !5961 {
entry:
  %retval = alloca i32, align 4
  %folio.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5963, metadata !DIExpression()), !dbg !5965
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #9, !dbg !5966
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5964, metadata !DIExpression()), !dbg !5967
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5968
  %call = call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %0) #10, !dbg !5970
  br i1 %call, label %if.then, label %if.end4, !dbg !5971

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !5972
  %call2 = call i32 @v9fs_vfs_write_folio_locked(ptr noundef %1) #10, !dbg !5974
  store i32 %call2, ptr %retval1, align 4, !dbg !5975
  %2 = load i32, ptr %retval1, align 4, !dbg !5976
  %tobool = icmp ne i32 %2, 0, !dbg !5976
  br i1 %tobool, label %if.then3, label %if.end, !dbg !5978

if.then3:                                         ; preds = %if.then
  %3 = load i32, ptr %retval1, align 4, !dbg !5979
  store i32 %3, ptr %retval, align 4, !dbg !5980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5980

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !5981

if.end4:                                          ; preds = %if.end, %entry
  %4 = load ptr, ptr %folio.addr, align 8, !dbg !5982
  call void @folio_wait_fscache(ptr noundef %4) #10, !dbg !5983
  store i32 0, ptr %retval, align 4, !dbg !5984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5984

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #9, !dbg !5985
  %5 = load i32, ptr %retval, align 4, !dbg !5985
  ret i32 %5, !dbg !5985
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p9_fid_get(ptr noundef %fid) #5 align 16 !dbg !5986 {
entry:
  %fid.addr = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5990, metadata !DIExpression()), !dbg !5991
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_fid_ref, i32 0, i32 1)) #10, !dbg !5992
  br i1 %call, label %if.then, label %if.end, !dbg !5994

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %fid.addr, align 8, !dbg !5995
  call void @do_trace_9p_fid_get(ptr noundef %0) #10, !dbg !5996
  br label %if.end, !dbg !5996

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !5997
  %count = getelementptr inbounds %struct.p9_fid, ptr %1, i32 0, i32 2, !dbg !5998
  call void @refcount_inc(ptr noundef %count) #10, !dbg !5999
  %2 = load ptr, ptr %fid.addr, align 8, !dbg !6000
  ret ptr %2, !dbg !6001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !6002 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6020
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #10, !dbg !6021
  ret i1 %call, !dbg !6022
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6023 dso_local void @do_trace_9p_fid_get(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #5 align 16 !dbg !6026 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6031, metadata !DIExpression()), !dbg !6032
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6033
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #10, !dbg !6034
  ret void, !dbg !6035
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !6036 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6041, metadata !DIExpression()), !dbg !6044
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6042, metadata !DIExpression()), !dbg !6045
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6046
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6047, !range !6048, !noundef !1443
  %tobool = trunc i8 %1 to i1, !dbg !6047
  %conv = zext i1 %tobool to i32, !dbg !6047
  %or = or i32 2, %conv, !dbg !6049
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #9
          to label %asm.fallthrough [label %l_yes], !dbg !6050, !srcloc !6051

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6052
  br label %return, !dbg !6052

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6043), !dbg !6053
  store i1 true, ptr %retval, align 1, !dbg !6054
  br label %return, !dbg !6054

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6055
  ret i1 %2, !dbg !6055
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6056 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6060, metadata !DIExpression()), !dbg !6062
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6061, metadata !DIExpression()), !dbg !6063
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6064
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6065
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #10, !dbg !6066
  ret void, !dbg !6067
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6068 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6072, metadata !DIExpression()), !dbg !6076
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6073, metadata !DIExpression()), !dbg !6077
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6074, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #9, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6075, metadata !DIExpression()), !dbg !6080
  %0 = load i32, ptr %i.addr, align 4, !dbg !6081
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6082
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6083
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #10, !dbg !6084
  store i32 %call, ptr %old, align 4, !dbg !6080
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6085
  %tobool = icmp ne ptr %2, null, !dbg !6085
  br i1 %tobool, label %if.then, label %if.end, !dbg !6087

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6088
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6089
  store i32 %3, ptr %4, align 4, !dbg !6090
  br label %if.end, !dbg !6091

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6092
  %tobool1 = icmp ne i32 %5, 0, !dbg !6092
  %lnot = xor i1 %tobool1, true, !dbg !6092
  %lnot2 = xor i1 %lnot, true, !dbg !6092
  %lnot3 = xor i1 %lnot2, true, !dbg !6092
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6092
  %conv = sext i32 %lnot.ext to i64, !dbg !6092
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6092
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6092
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6094

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6095
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #10, !dbg !6096
  br label %if.end18, !dbg !6096

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6097
  %cmp = icmp slt i32 %7, 0, !dbg !6097
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6097

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6097
  %9 = load i32, ptr %i.addr, align 4, !dbg !6097
  %add = add i32 %8, %9, !dbg !6097
  %cmp7 = icmp slt i32 %add, 0, !dbg !6097
  br label %lor.end, !dbg !6097

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6097
  %lnot11 = xor i1 %lnot9, true, !dbg !6097
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6097
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6097
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6097
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6097
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6099

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6100
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #10, !dbg !6101
  br label %if.end17, !dbg !6101

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #9, !dbg !6102
  ret void, !dbg !6102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6103 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6109, metadata !DIExpression()), !dbg !6111
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6110, metadata !DIExpression()), !dbg !6112
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6113
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !6114
  %1 = load i32, ptr %i.addr, align 4, !dbg !6115
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6116
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #10, !dbg !6117
  ret i32 %call, !dbg !6118
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6119 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6122 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6130, metadata !DIExpression()), !dbg !6132
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6131, metadata !DIExpression()), !dbg !6133
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6134
  %1 = load i64, ptr %size.addr, align 8, !dbg !6135
  %conv = trunc i64 %1 to i32, !dbg !6135
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !6136
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6137
  %3 = load i64, ptr %size.addr, align 8, !dbg !6137
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !6137
  ret void, !dbg !6138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6139 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6142, metadata !DIExpression()), !dbg !6144
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6143, metadata !DIExpression()), !dbg !6145
  %0 = load i32, ptr %i.addr, align 4, !dbg !6146
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6147
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #10, !dbg !6148
  ret i32 %call, !dbg !6149
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6150 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6155, metadata !DIExpression()), !dbg !6157
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6156, metadata !DIExpression()), !dbg !6158
  ret i1 true, !dbg !6159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6160 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6165, metadata !DIExpression()), !dbg !6168
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6166, metadata !DIExpression()), !dbg !6169
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6167, metadata !DIExpression()), !dbg !6170
  ret void, !dbg !6171
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6172 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6175, metadata !DIExpression()), !dbg !6179
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6176, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #9, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6177, metadata !DIExpression()), !dbg !6181
  %0 = load i32, ptr %i.addr, align 4, !dbg !6181
  store i32 %0, ptr %__ret, align 4, !dbg !6181
  %1 = load i32, ptr %__ret, align 4, !dbg !6181
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6181
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6181
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #9, !dbg !6181, !srcloc !6182
  store i32 %3, ptr %__ret, align 4, !dbg !6181
  %4 = load i32, ptr %__ret, align 4, !dbg !6181
  store i32 %4, ptr %tmp, align 4, !dbg !6181
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #9, !dbg !6183
  %5 = load i32, ptr %tmp, align 4, !dbg !6181
  ret i32 %5, !dbg !6184
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p9_fid_put(ptr noundef %fid) #5 align 16 !dbg !6185 {
entry:
  %retval = alloca i32, align 4
  %fid.addr = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !6189, metadata !DIExpression()), !dbg !6190
  %0 = load ptr, ptr %fid.addr, align 8, !dbg !6191
  %tobool = icmp ne ptr %0, null, !dbg !6191
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6193

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !6194
  %call = call zeroext i1 @IS_ERR(ptr noundef %1) #10, !dbg !6195
  br i1 %call, label %if.then, label %if.end, !dbg !6196

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !6197
  br label %return, !dbg !6197

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_fid_ref, i32 0, i32 1)) #10, !dbg !6198
  br i1 %call1, label %if.then2, label %if.end3, !dbg !6200

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %fid.addr, align 8, !dbg !6201
  call void @do_trace_9p_fid_put(ptr noundef %2) #10, !dbg !6202
  br label %if.end3, !dbg !6202

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %fid.addr, align 8, !dbg !6203
  %count = getelementptr inbounds %struct.p9_fid, ptr %3, i32 0, i32 2, !dbg !6205
  %call4 = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #10, !dbg !6206
  br i1 %call4, label %if.end6, label %if.then5, !dbg !6207

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !6208
  br label %return, !dbg !6208

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %fid.addr, align 8, !dbg !6209
  %call7 = call i32 @p9_client_clunk(ptr noundef %4) #10, !dbg !6210
  store i32 %call7, ptr %retval, align 4, !dbg !6211
  br label %return, !dbg !6211

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6212
  ret i32 %5, !dbg !6212
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !6213 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6218, metadata !DIExpression()), !dbg !6219
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6220
  %1 = ptrtoint ptr %0 to i64, !dbg !6220
  %2 = inttoptr i64 %1 to ptr, !dbg !6220
  %3 = ptrtoint ptr %2 to i64, !dbg !6220
  %cmp = icmp uge i64 %3, -4095, !dbg !6220
  %lnot = xor i1 %cmp, true, !dbg !6220
  %lnot1 = xor i1 %lnot, true, !dbg !6220
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6220
  %conv = sext i32 %lnot.ext to i64, !dbg !6220
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6220
  %tobool = icmp ne i64 %expval, 0, !dbg !6220
  ret i1 %tobool, !dbg !6221
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6222 dso_local void @do_trace_9p_fid_put(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !6223 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6227, metadata !DIExpression()), !dbg !6228
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6229
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #10, !dbg !6230
  ret i1 %call, !dbg !6231
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6232 dso_local i32 @p9_client_clunk(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6233 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6237, metadata !DIExpression()), !dbg !6239
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6238, metadata !DIExpression()), !dbg !6240
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6241
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6242
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #10, !dbg !6243
  ret i1 %call, !dbg !6244
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6245 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6249, metadata !DIExpression()), !dbg !6253
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6250, metadata !DIExpression()), !dbg !6254
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6251, metadata !DIExpression()), !dbg !6255
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #9, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6252, metadata !DIExpression()), !dbg !6257
  %0 = load i32, ptr %i.addr, align 4, !dbg !6258
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6259
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6260
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #10, !dbg !6261
  store i32 %call, ptr %old, align 4, !dbg !6257
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6262
  %tobool = icmp ne ptr %2, null, !dbg !6262
  br i1 %tobool, label %if.then, label %if.end, !dbg !6264

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6265
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6266
  store i32 %3, ptr %4, align 4, !dbg !6267
  br label %if.end, !dbg !6268

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6269
  %6 = load i32, ptr %i.addr, align 4, !dbg !6271
  %cmp = icmp eq i32 %5, %6, !dbg !6272
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6273

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6274

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6276

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6278

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6278

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6276

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6280

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6282

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6282

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !6280, !srcloc !6284
  br label %do.cond7, !dbg !6280

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6280

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6276

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6276

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6285

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6286
  %cmp12 = icmp slt i32 %7, 0, !dbg !6286
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6286

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6286
  %9 = load i32, ptr %i.addr, align 4, !dbg !6286
  %sub = sub i32 %8, %9, !dbg !6286
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6286
  br label %lor.end, !dbg !6286

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6286
  %lnot14 = xor i1 %lnot, true, !dbg !6286
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6286
  %conv = sext i32 %lnot.ext to i64, !dbg !6286
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6286
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6286
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6288

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6289
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #10, !dbg !6290
  br label %if.end17, !dbg !6290

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6291

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #9, !dbg !6292
  %12 = load i1, ptr %retval, align 1, !dbg !6292
  ret i1 %12, !dbg !6292
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6293 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6295, metadata !DIExpression()), !dbg !6297
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6296, metadata !DIExpression()), !dbg !6298
  br label %do.body, !dbg !6299

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6300

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6302
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !6303
  %1 = load i32, ptr %i.addr, align 4, !dbg !6304
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6305
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #10, !dbg !6306
  ret i32 %call, !dbg !6307
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6308 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6310, metadata !DIExpression()), !dbg !6312
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6311, metadata !DIExpression()), !dbg !6313
  %0 = load i32, ptr %i.addr, align 4, !dbg !6314
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6315
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #10, !dbg !6316
  ret i32 %call, !dbg !6317
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6318 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6320, metadata !DIExpression()), !dbg !6324
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6321, metadata !DIExpression()), !dbg !6325
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #9, !dbg !6326
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6322, metadata !DIExpression()), !dbg !6326
  %0 = load i32, ptr %i.addr, align 4, !dbg !6326
  %sub = sub i32 0, %0, !dbg !6326
  store i32 %sub, ptr %__ret, align 4, !dbg !6326
  %1 = load i32, ptr %__ret, align 4, !dbg !6326
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6326
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6326
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #9, !dbg !6326, !srcloc !6327
  store i32 %3, ptr %__ret, align 4, !dbg !6326
  %4 = load i32, ptr %__ret, align 4, !dbg !6326
  store i32 %4, ptr %tmp, align 4, !dbg !6326
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #9, !dbg !6328
  %5 = load i32, ptr %tmp, align 4, !dbg !6326
  ret i32 %5, !dbg !6329
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6330 dso_local void @iov_iter_xarray(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6333 dso_local i32 @p9_client_read(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6336 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6342, metadata !DIExpression()), !dbg !6346
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6343, metadata !DIExpression()), !dbg !6347
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6344, metadata !DIExpression()), !dbg !6349
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6350
  %rem = urem i64 %0, 64, !dbg !6350
  %shl = shl i64 1, %rem, !dbg !6350
  store i64 %shl, ptr %mask, align 8, !dbg !6349
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !6351
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6345, metadata !DIExpression()), !dbg !6352
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6353
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6354
  %div = udiv i64 %2, 64, !dbg !6354
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !6355
  store ptr %add.ptr, ptr %p, align 8, !dbg !6352
  %3 = load i64, ptr %mask, align 8, !dbg !6356
  %4 = load ptr, ptr %p, align 8, !dbg !6357
  %5 = load i64, ptr %4, align 8, !dbg !6358
  %or = or i64 %5, %3, !dbg !6358
  store i64 %or, ptr %4, align 8, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !6359
  ret void, !dbg !6359
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6360 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6363, metadata !DIExpression()), !dbg !6365
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6364, metadata !DIExpression()), !dbg !6366
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6367
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6368
  %div = udiv i64 %1, 64, !dbg !6368
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6369
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !6370
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6371
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6372
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !6373
  ret void, !dbg !6374
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6375 dso_local void @netfs_subreq_terminated(ptr noundef, i64 noundef, i1 noundef zeroext) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6378 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6380, metadata !DIExpression()), !dbg !6382
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6381, metadata !DIExpression()), !dbg !6383
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6384
  %1 = load i64, ptr %size.addr, align 8, !dbg !6385
  %conv = trunc i64 %1 to i32, !dbg !6385
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !6386
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6387
  %3 = load i64, ptr %size.addr, align 8, !dbg !6387
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #10, !dbg !6387
  ret void, !dbg !6388
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6389 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6392, metadata !DIExpression()), !dbg !6394
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6393, metadata !DIExpression()), !dbg !6395
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6396
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6397
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !6398, !srcloc !6399
  ret void, !dbg !6400
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #5 align 16 !dbg !6401 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6405, metadata !DIExpression()), !dbg !6407
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #9, !dbg !6408
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6406, metadata !DIExpression()), !dbg !6409
  br label %do.body, !dbg !6410

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6412

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6412

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6410
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !6410
  %compound_head = getelementptr inbounds %struct.anon.29, ptr %1, i32 0, i32 0, !dbg !6410
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !6410
  store i64 %2, ptr %tmp, align 8, !dbg !6412
  %3 = load i64, ptr %tmp, align 8, !dbg !6410
  store i64 %3, ptr %head, align 8, !dbg !6409
  %4 = load i64, ptr %head, align 8, !dbg !6414
  %and = and i64 %4, 1, !dbg !6414
  %tobool = icmp ne i64 %and, 0, !dbg !6414
  %lnot = xor i1 %tobool, true, !dbg !6414
  %lnot1 = xor i1 %lnot, true, !dbg !6414
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6414
  %conv = sext i32 %lnot.ext to i64, !dbg !6414
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6414
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6414
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6416

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !6417
  %sub = sub i64 %5, 1, !dbg !6418
  store i64 %sub, ptr %retval, align 8, !dbg !6419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6419

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !6420
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #10, !dbg !6421
  %7 = ptrtoint ptr %call to i64, !dbg !6422
  store i64 %7, ptr %retval, align 8, !dbg !6423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6423

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #9, !dbg !6424
  %8 = load i64, ptr %retval, align 8, !dbg !6424
  ret i64 %8, !dbg !6424
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_vfs_write_folio_locked(ptr noundef %folio) #0 align 16 !dbg !5476 {
entry:
  %retval = alloca i32, align 4
  %folio.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %start = alloca i64, align 8
  %i_size = alloca i64, align 8
  %from = alloca %struct.iov_iter, align 8
  %len = alloca i64, align 8
  %writeback_fid = alloca ptr, align 8
  %err = alloca i32, align 4
  %v9inode = alloca ptr, align 8
  %cookie = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x333 = alloca i64, align 8
  %__UNIQUE_ID___y334 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp20 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp58 = alloca i64, align 8
  %tmp67 = alloca i64, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5478, metadata !DIExpression()), !dbg !6425
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5479, metadata !DIExpression()), !dbg !6427
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6428
  %call = call ptr @folio_inode(ptr noundef %0) #10, !dbg !6429
  store ptr %call, ptr %inode, align 8, !dbg !6427
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #9, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5480, metadata !DIExpression()), !dbg !6431
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6432
  %call1 = call i64 @folio_pos(ptr noundef %1) #10, !dbg !6433
  store i64 %call1, ptr %start, align 8, !dbg !6431
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_size) #9, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %i_size, metadata !5481, metadata !DIExpression()), !dbg !6435
  %2 = load ptr, ptr %inode, align 8, !dbg !6436
  %call2 = call i64 @i_size_read(ptr noundef %2) #10, !dbg !6437
  store i64 %call2, ptr %i_size, align 8, !dbg !6435
  call void @llvm.lifetime.start.p0(i64 40, ptr %from) #9, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %from, metadata !5482, metadata !DIExpression()), !dbg !6439
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #9, !dbg !6440
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5483, metadata !DIExpression()), !dbg !6441
  %3 = load ptr, ptr %folio.addr, align 8, !dbg !6442
  %call3 = call i64 @folio_size(ptr noundef %3) #10, !dbg !6443
  store i64 %call3, ptr %len, align 8, !dbg !6441
  call void @llvm.lifetime.start.p0(i64 8, ptr %writeback_fid) #9, !dbg !6444
  call void @llvm.dbg.declare(metadata ptr %writeback_fid, metadata !5484, metadata !DIExpression()), !dbg !6445
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !6446
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5529, metadata !DIExpression()), !dbg !6447
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9inode) #9, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %v9inode, metadata !5530, metadata !DIExpression()), !dbg !6449
  %4 = load ptr, ptr %inode, align 8, !dbg !6450
  %call4 = call ptr @V9FS_I(ptr noundef %4) #10, !dbg !6451
  store ptr %call4, ptr %v9inode, align 8, !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %cookie) #9, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %cookie, metadata !5531, metadata !DIExpression()), !dbg !6453
  %5 = load ptr, ptr %v9inode, align 8, !dbg !6454
  %call5 = call ptr @v9fs_inode_cookie(ptr noundef %5) #10, !dbg !6455
  store ptr %call5, ptr %cookie, align 8, !dbg !6453
  %6 = load i64, ptr %start, align 8, !dbg !6456
  %7 = load i64, ptr %i_size, align 8, !dbg !6458
  %cmp = icmp sge i64 %6, %7, !dbg !6459
  br i1 %cmp, label %if.then, label %if.end, !dbg !6460

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6461

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x333) #9, !dbg !6462
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x333, metadata !5534, metadata !DIExpression()), !dbg !6462
  %8 = load i64, ptr %i_size, align 8, !dbg !6462
  %9 = load i64, ptr %start, align 8, !dbg !6462
  %sub = sub i64 %8, %9, !dbg !6462
  store i64 %sub, ptr %__UNIQUE_ID___x333, align 8, !dbg !6462
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y334) #9, !dbg !6462
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y334, metadata !5536, metadata !DIExpression()), !dbg !6462
  %10 = load i64, ptr %len, align 8, !dbg !6462
  store i64 %10, ptr %__UNIQUE_ID___y334, align 8, !dbg !6462
  %11 = load i64, ptr %__UNIQUE_ID___x333, align 8, !dbg !6462
  %12 = load i64, ptr %__UNIQUE_ID___y334, align 8, !dbg !6462
  %cmp6 = icmp slt i64 %11, %12, !dbg !6462
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !6462

cond.true:                                        ; preds = %if.end
  %13 = load i64, ptr %__UNIQUE_ID___x333, align 8, !dbg !6462
  br label %cond.end, !dbg !6462

cond.false:                                       ; preds = %if.end
  %14 = load i64, ptr %__UNIQUE_ID___y334, align 8, !dbg !6462
  br label %cond.end, !dbg !6462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !6462
  store i64 %cond, ptr %tmp, align 8, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y334) #9, !dbg !6463
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x333) #9, !dbg !6463
  %15 = load i64, ptr %tmp, align 8, !dbg !6462
  store i64 %15, ptr %len, align 8, !dbg !6464
  %16 = load ptr, ptr %folio.addr, align 8, !dbg !6465
  %call7 = call ptr @folio_mapping(ptr noundef %16) #10, !dbg !6466
  %i_pages = getelementptr inbounds %struct.address_space, ptr %call7, i32 0, i32 1, !dbg !6467
  %17 = load i64, ptr %start, align 8, !dbg !6468
  %18 = load i64, ptr %len, align 8, !dbg !6469
  call void @iov_iter_xarray(ptr noundef %from, i32 noundef 1, ptr noundef %i_pages, i64 noundef %17, i64 noundef %18) #10, !dbg !6470
  %19 = load ptr, ptr %inode, align 8, !dbg !6471
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6472
  store i32 -1, ptr %val, align 4, !dbg !6472
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6473
  %20 = load i32, ptr %coerce.dive, align 4, !dbg !6473
  %call8 = call ptr @v9fs_fid_find_inode(ptr noundef %19, i1 noundef zeroext true, i32 %20, i1 noundef zeroext true) #10, !dbg !6473
  store ptr %call8, ptr %writeback_fid, align 8, !dbg !6474
  %21 = load ptr, ptr %writeback_fid, align 8, !dbg !6475
  %tobool = icmp ne ptr %21, null, !dbg !6475
  br i1 %tobool, label %if.end75, label %if.then9, !dbg !6476

if.then9:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #9, !dbg !6477
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5537, metadata !DIExpression()), !dbg !6477
  store i8 1, ptr %__ret_do_once, align 1, !dbg !6477
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #9, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5541, metadata !DIExpression()), !dbg !6478
  %22 = load i8, ptr %__ret_do_once, align 1, !dbg !6478, !range !6048, !noundef !1443
  %tobool10 = trunc i8 %22 to i1, !dbg !6478
  %lnot = xor i1 %tobool10, true, !dbg !6478
  %lnot11 = xor i1 %lnot, true, !dbg !6478
  %frombool = zext i1 %lnot11 to i8, !dbg !6478
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !6478
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #9, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5544, metadata !DIExpression()), !dbg !6478
  store i8 0, ptr %__ret_once, align 1, !dbg !6478
  %23 = load i8, ptr %__ret_cond, align 1, !dbg !6479, !range !6048, !noundef !1443
  %tobool12 = trunc i8 %23 to i1, !dbg !6479
  br i1 %tobool12, label %land.rhs, label %land.end, !dbg !6479

land.rhs:                                         ; preds = %if.then9
  %24 = load i8, ptr @v9fs_vfs_write_folio_locked.__already_done, align 1, !dbg !6479, !range !6048, !noundef !1443
  %tobool13 = trunc i8 %24 to i1, !dbg !6479
  %lnot14 = xor i1 %tobool13, true, !dbg !6479
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then9
  %25 = phi i1 [ false, %if.then9 ], [ %lnot14, %land.rhs ], !dbg !6481
  %lnot15 = xor i1 %25, true, !dbg !6479
  %lnot16 = xor i1 %lnot15, true, !dbg !6479
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !6479
  %conv = sext i32 %lnot.ext to i64, !dbg !6479
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6479
  %tobool17 = icmp ne i64 %expval, 0, !dbg !6479
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6478

if.then18:                                        ; preds = %land.end
  store i8 1, ptr @v9fs_vfs_write_folio_locked.__already_done, align 1, !dbg !6482
  store i8 1, ptr %__ret_once, align 1, !dbg !6482
  br label %if.end19, !dbg !6482

if.end19:                                         ; preds = %if.then18, %land.end
  %26 = load i8, ptr %__ret_once, align 1, !dbg !6478, !range !6048, !noundef !1443
  %tobool21 = trunc i8 %26 to i1, !dbg !6478
  %lnot22 = xor i1 %tobool21, true, !dbg !6478
  %lnot24 = xor i1 %lnot22, true, !dbg !6478
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6478
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6478
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !6478
  store i64 %expval27, ptr %tmp20, align 8, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #9, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #9, !dbg !6484
  %27 = load i64, ptr %tmp20, align 8, !dbg !6478
  %tobool28 = icmp ne i64 %27, 0, !dbg !6484
  br i1 %tobool28, label %if.then29, label %if.end66, !dbg !6477

if.then29:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6485
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5545, metadata !DIExpression()), !dbg !6485
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6485
  %28 = load i32, ptr %__ret_warn_on, align 4, !dbg !6486
  %tobool30 = icmp ne i32 %28, 0, !dbg !6486
  %lnot31 = xor i1 %tobool30, true, !dbg !6486
  %lnot33 = xor i1 %lnot31, true, !dbg !6486
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !6486
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !6486
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !6486
  %tobool37 = icmp ne i64 %expval36, 0, !dbg !6486
  br i1 %tobool37, label %if.then38, label %if.end57, !dbg !6485

if.then38:                                        ; preds = %if.then29
  br label %do.body, !dbg !6486

do.body:                                          ; preds = %if.then38
  br label %do.body39, !dbg !6487

do.body39:                                        ; preds = %do.body
  br label %do.cond, !dbg !6488

do.cond:                                          ; preds = %do.body39
  br label %do.end, !dbg !6488

do.end:                                           ; preds = %do.cond
  %29 = load ptr, ptr %inode, align 8, !dbg !6487
  %i_private = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 47, !dbg !6487
  %30 = load ptr, ptr %i_private, align 8, !dbg !6487
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, ptr noundef %30) #10, !dbg !6487
  br label %do.body40, !dbg !6487

do.body40:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !6490
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5547, metadata !DIExpression()), !dbg !6490
  store i32 2313, ptr %__flags, align 4, !dbg !6490
  br label %do.body41, !dbg !6490

do.body41:                                        ; preds = %do.body40
  br label %do.cond42, !dbg !6491

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !6491

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !6490

do.body44:                                        ; preds = %do.end43
  %31 = load i32, ptr %__flags, align 4, !dbg !6493
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 174, i32 %31, i64 12) #9, !dbg !6493, !srcloc !6495
  br label %do.cond45, !dbg !6493

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !6493

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !6490

do.body47:                                        ; preds = %do.end46
  br label %do.cond48, !dbg !6496

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !6496

do.end49:                                         ; preds = %do.cond48
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !6487
  br label %do.cond50, !dbg !6490

do.cond50:                                        ; preds = %do.end49
  br label %do.end51, !dbg !6490

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !6487

do.body52:                                        ; preds = %do.end51
  br label %do.cond53, !dbg !6498

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !6498

do.end54:                                         ; preds = %do.cond53
  br label %do.cond55, !dbg !6487

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !6487

do.end56:                                         ; preds = %do.cond55
  br label %if.end57, !dbg !6487

if.end57:                                         ; preds = %do.end56, %if.then29
  %32 = load i32, ptr %__ret_warn_on, align 4, !dbg !6485
  %tobool59 = icmp ne i32 %32, 0, !dbg !6485
  %lnot60 = xor i1 %tobool59, true, !dbg !6485
  %lnot62 = xor i1 %lnot60, true, !dbg !6485
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !6485
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !6485
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !6485
  store i64 %expval65, ptr %tmp58, align 8, !dbg !6486
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6484
  %33 = load i64, ptr %tmp58, align 8, !dbg !6485
  br label %if.end66, !dbg !6484

if.end66:                                         ; preds = %if.end57, %if.end19
  %34 = load i8, ptr %__ret_do_once, align 1, !dbg !6477, !range !6048, !noundef !1443
  %tobool68 = trunc i8 %34 to i1, !dbg !6477
  %lnot69 = xor i1 %tobool68, true, !dbg !6477
  %lnot71 = xor i1 %lnot69, true, !dbg !6477
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !6477
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !6477
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !6477
  store i64 %expval74, ptr %tmp67, align 8, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #9, !dbg !6500
  %35 = load i64, ptr %tmp67, align 8, !dbg !6477
  store i32 -22, ptr %retval, align 4, !dbg !6501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6501

if.end75:                                         ; preds = %cond.end
  %36 = load ptr, ptr %folio.addr, align 8, !dbg !6502
  call void @folio_wait_fscache(ptr noundef %36) #10, !dbg !6503
  %37 = load ptr, ptr %folio.addr, align 8, !dbg !6504
  %call76 = call zeroext i1 @__folio_start_writeback(ptr noundef %37, i1 noundef zeroext false) #10, !dbg !6504
  %38 = load ptr, ptr %writeback_fid, align 8, !dbg !6505
  %39 = load i64, ptr %start, align 8, !dbg !6506
  %call77 = call i32 @p9_client_write(ptr noundef %38, i64 noundef %39, ptr noundef %from, ptr noundef %err) #10, !dbg !6507
  %40 = load ptr, ptr %folio.addr, align 8, !dbg !6508
  call void @folio_end_writeback(ptr noundef %40) #10, !dbg !6509
  %41 = load ptr, ptr %writeback_fid, align 8, !dbg !6510
  %call78 = call i32 @p9_fid_put(ptr noundef %41) #10, !dbg !6511
  %42 = load i32, ptr %err, align 4, !dbg !6512
  store i32 %42, ptr %retval, align 4, !dbg !6513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6513

cleanup:                                          ; preds = %if.end75, %if.end66, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cookie) #9, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9inode) #9, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 8, ptr %writeback_fid) #9, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #9, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 40, ptr %from) #9, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_size) #9, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #9, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !6514
  %43 = load i32, ptr %retval, align 4, !dbg !6514
  ret i32 %43, !dbg !6514
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6515 dso_local zeroext i1 @folio_redirty_for_writepage(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mapping_set_error(ptr noundef %mapping, i32 noundef %error) #5 align 16 !dbg !6518 {
entry:
  %mapping.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !6522, metadata !DIExpression()), !dbg !6524
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6523, metadata !DIExpression()), !dbg !6525
  %0 = load i32, ptr %error.addr, align 4, !dbg !6526
  %tobool = icmp ne i32 %0, 0, !dbg !6526
  %lnot = xor i1 %tobool, true, !dbg !6526
  %lnot1 = xor i1 %lnot, true, !dbg !6526
  %lnot2 = xor i1 %lnot1, true, !dbg !6526
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6526
  %conv = sext i32 %lnot.ext to i64, !dbg !6526
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6526
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6526
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6528

if.then:                                          ; preds = %entry
  br label %if.end11, !dbg !6529

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mapping.addr, align 8, !dbg !6530
  %2 = load i32, ptr %error.addr, align 4, !dbg !6531
  call void @__filemap_set_wb_err(ptr noundef %1, i32 noundef %2) #10, !dbg !6532
  %3 = load ptr, ptr %mapping.addr, align 8, !dbg !6533
  %host = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 0, !dbg !6535
  %4 = load ptr, ptr %host, align 8, !dbg !6535
  %tobool4 = icmp ne ptr %4, null, !dbg !6533
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6536

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %mapping.addr, align 8, !dbg !6537
  %host6 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 0, !dbg !6538
  %6 = load ptr, ptr %host6, align 8, !dbg !6538
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9, !dbg !6539
  %7 = load ptr, ptr %i_sb, align 8, !dbg !6539
  %s_wb_err = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 45, !dbg !6540
  %8 = load i32, ptr %error.addr, align 4, !dbg !6541
  %call = call i32 @errseq_set(ptr noundef %s_wb_err, i32 noundef %8) #10, !dbg !6542
  br label %if.end7, !dbg !6542

if.end7:                                          ; preds = %if.then5, %if.end
  %9 = load i32, ptr %error.addr, align 4, !dbg !6543
  %cmp = icmp eq i32 %9, -28, !dbg !6545
  br i1 %cmp, label %if.then9, label %if.else, !dbg !6546

if.then9:                                         ; preds = %if.end7
  %10 = load ptr, ptr %mapping.addr, align 8, !dbg !6547
  %flags = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 9, !dbg !6548
  call void @set_bit(i64 noundef 1, ptr noundef %flags) #10, !dbg !6549
  br label %if.end11, !dbg !6549

if.else:                                          ; preds = %if.end7
  %11 = load ptr, ptr %mapping.addr, align 8, !dbg !6550
  %flags10 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 9, !dbg !6551
  call void @set_bit(i64 noundef 0, ptr noundef %flags10) #10, !dbg !6552
  br label %if.end11

if.end11:                                         ; preds = %if.then, %if.else, %if.then9
  ret void, !dbg !6553
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6554 dso_local ptr @folio_mapping(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6557 dso_local void @folio_unlock(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #6 align 16 !dbg !6558 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6562, metadata !DIExpression()), !dbg !6569
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #9, !dbg !6570
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !6563, metadata !DIExpression()), !dbg !6570
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #10, !dbg !6571
  %frombool = zext i1 %call to i8, !dbg !6571
  store i8 %frombool, ptr %branch, align 1, !dbg !6571
  %0 = load i8, ptr %branch, align 1, !dbg !6570, !range !6048, !noundef !1443
  %tobool = trunc i8 %0 to i1, !dbg !6570
  %lnot = xor i1 %tobool, true, !dbg !6570
  %lnot1 = xor i1 %lnot, true, !dbg !6570
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6570
  %conv = sext i32 %lnot.ext to i64, !dbg !6570
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6570
  store i64 %expval, ptr %tmp, align 8, !dbg !6574
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #9, !dbg !6575
  %1 = load i64, ptr %tmp, align 8, !dbg !6570
  %tobool2 = icmp ne i64 %1, 0, !dbg !6575
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6576

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !6577
  store ptr %2, ptr %retval, align 8, !dbg !6578
  br label %return, !dbg !6578

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !6579
  %4 = ptrtoint ptr %3 to i64, !dbg !6579
  %and = and i64 %4, 4095, !dbg !6579
  %cmp = icmp eq i64 %and, 0, !dbg !6579
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !6580

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !6581
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !6581
  %6 = ptrtoint ptr %flags to i64, !dbg !6581
  %cmp4 = icmp ne i64 %6, 0, !dbg !6581
  %conv5 = zext i1 %cmp4 to i32, !dbg !6581
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !6581
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !6581

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !6581
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !6581
  %9 = ptrtoint ptr %flags7 to i64, !dbg !6581
  %cmp8 = icmp ne i64 %9, 0, !dbg !6581
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !6581

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !6581
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !6581
  %11 = load i64, ptr %flags11, align 16, !dbg !6581
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6581
  br i1 %12, label %cond.true, label %cond.false, !dbg !6582

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !6581
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !6581
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #10, !dbg !6581
  br i1 %call13, label %if.then18, label %if.end31, !dbg !6581

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !6581
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !6581
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #10, !dbg !6581
  br i1 %call16, label %if.then18, label %if.end31, !dbg !6582

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #9, !dbg !6583
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6566, metadata !DIExpression()), !dbg !6584
  br label %do.body, !dbg !6585

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !6587

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6587

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !6585
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !6585
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !6585
  %compound_head = getelementptr inbounds %struct.anon.29, ptr %16, i32 0, i32 0, !dbg !6585
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !6585
  store i64 %17, ptr %tmp19, align 8, !dbg !6587
  %18 = load i64, ptr %tmp19, align 8, !dbg !6585
  store i64 %18, ptr %head, align 8, !dbg !6584
  %19 = load i64, ptr %head, align 8, !dbg !6589
  %and20 = and i64 %19, 1, !dbg !6589
  %tobool21 = icmp ne i64 %and20, 0, !dbg !6589
  %lnot22 = xor i1 %tobool21, true, !dbg !6589
  %lnot24 = xor i1 %lnot22, true, !dbg !6589
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6589
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6589
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !6589
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !6589
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6591

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !6592
  %sub = sub i64 %20, 1, !dbg !6593
  %21 = inttoptr i64 %sub to ptr, !dbg !6594
  store ptr %21, ptr %retval, align 8, !dbg !6595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6595

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6596
  br label %cleanup, !dbg !6596

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #9, !dbg !6596
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !6597

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !6598
  store ptr %22, ptr %retval, align 8, !dbg !6599
  br label %return, !dbg !6599

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !6600
  ret ptr %23, !dbg !6600

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6601 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6605, metadata !DIExpression()), !dbg !6610
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6606, metadata !DIExpression()), !dbg !6611
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !6612
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6607, metadata !DIExpression()), !dbg !6613
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6614
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6615
  %div = udiv i64 %1, 64, !dbg !6615
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6616
  store ptr %add.ptr, ptr %p, align 8, !dbg !6613
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !6617
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6608, metadata !DIExpression()), !dbg !6618
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6619
  %rem = urem i64 %2, 64, !dbg !6619
  %shl = shl i64 1, %rem, !dbg !6619
  store i64 %shl, ptr %mask, align 8, !dbg !6618
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6609, metadata !DIExpression()), !dbg !6621
  %3 = load ptr, ptr %p, align 8, !dbg !6622
  %4 = load i64, ptr %3, align 8, !dbg !6623
  store i64 %4, ptr %val, align 8, !dbg !6621
  %5 = load i64, ptr %val, align 8, !dbg !6624
  %6 = load i64, ptr %mask, align 8, !dbg !6625
  %and = and i64 %5, %6, !dbg !6626
  %tobool = icmp ne i64 %and, 0, !dbg !6627
  %lnot = xor i1 %tobool, true, !dbg !6627
  %lnot1 = xor i1 %lnot, true, !dbg !6628
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !6629
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !6629
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !6629
  ret i1 %lnot1, !dbg !6630
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6631 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6633, metadata !DIExpression()), !dbg !6635
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6634, metadata !DIExpression()), !dbg !6636
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6637
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6638
  %div = udiv i64 %1, 64, !dbg !6638
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6639
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !6640
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6641
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6642
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !6643
  ret i1 %call, !dbg !6644
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6645 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6648, metadata !DIExpression()), !dbg !6650
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6651
  %1 = load i64, ptr %size.addr, align 8, !dbg !6652
  %conv = trunc i64 %1 to i32, !dbg !6652
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !6653
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6654
  %3 = load i64, ptr %size.addr, align 8, !dbg !6654
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !6654
  ret void, !dbg !6655
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6656 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6658, metadata !DIExpression()), !dbg !6660
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6659, metadata !DIExpression()), !dbg !6661
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6662
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6663
  br i1 %1, label %cond.true, label %cond.false, !dbg !6663

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6664
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6665
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !6666
  %conv = zext i1 %call to i32, !dbg !6666
  br label %cond.end, !dbg !6663

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6667
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6668
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !6669
  %conv2 = zext i1 %call1 to i32, !dbg !6669
  br label %cond.end, !dbg !6663

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6663
  %tobool = icmp ne i32 %cond, 0, !dbg !6663
  ret i1 %tobool, !dbg !6670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6671 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6673, metadata !DIExpression()), !dbg !6675
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6674, metadata !DIExpression()), !dbg !6676
  ret i1 true, !dbg !6677
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6678 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6682, metadata !DIExpression()), !dbg !6684
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6683, metadata !DIExpression()), !dbg !6685
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6686
  %and = and i64 %0, 63, !dbg !6687
  %shl = shl i64 1, %and, !dbg !6688
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6689
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6690
  %shr = ashr i64 %2, 6, !dbg !6691
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6689
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6689
  %and1 = and i64 %shl, %3, !dbg !6692
  %cmp = icmp ne i64 %and1, 0, !dbg !6693
  ret i1 %cmp, !dbg !6694
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6695 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6697, metadata !DIExpression()), !dbg !6700
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6698, metadata !DIExpression()), !dbg !6701
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !6702
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6699, metadata !DIExpression()), !dbg !6703
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6704
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6705
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !6706, !srcloc !6707
  %3 = icmp ult i8 %2, 2, !dbg !6706
  call void @llvm.assume(i1 %3), !dbg !6706
  store i8 %2, ptr %oldbit, align 1, !dbg !6706
  %4 = load i8, ptr %oldbit, align 1, !dbg !6708, !range !6048, !noundef !1443
  %tobool = trunc i8 %4 to i1, !dbg !6708
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !6709
  ret i1 %tobool, !dbg !6710
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_inode(ptr noundef %folio) #5 align 16 !dbg !6711 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6715, metadata !DIExpression()), !dbg !6716
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6717
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6718
  %mapping = getelementptr inbounds %struct.anon.37, ptr %1, i32 0, i32 2, !dbg !6718
  %2 = load ptr, ptr %mapping, align 8, !dbg !6718
  %host = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 0, !dbg !6719
  %3 = load ptr, ptr %host, align 8, !dbg !6719
  ret ptr %3, !dbg !6720
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @folio_pos(ptr noundef %folio) #5 align 16 !dbg !6721 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6725, metadata !DIExpression()), !dbg !6726
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6727
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6728
  %call = call i64 @page_offset(ptr noundef %1) #10, !dbg !6729
  ret i64 %call, !dbg !6730
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @i_size_read(ptr noundef %inode) #5 align 16 !dbg !6731 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6735, metadata !DIExpression()), !dbg !6736
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6737
  %i_size = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, !dbg !6738
  %1 = load i64, ptr %i_size, align 8, !dbg !6738
  ret i64 %1, !dbg !6739
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @folio_size(ptr noundef %folio) #5 align 16 !dbg !6740 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6744, metadata !DIExpression()), !dbg !6745
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6746
  %call = call i32 @folio_order(ptr noundef %0) #10, !dbg !6747
  %sh_prom = zext i32 %call to i64, !dbg !6748
  %shl = shl i64 4096, %sh_prom, !dbg !6748
  ret i64 %shl, !dbg !6749
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @V9FS_I(ptr noundef %inode) #5 align 16 !dbg !6750 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6754, metadata !DIExpression()), !dbg !6757
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !6758
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6755, metadata !DIExpression()), !dbg !6758
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6758
  store ptr %0, ptr %__mptr, align 8, !dbg !6758
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6758
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6758
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6758
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !6759
  %2 = load ptr, ptr %tmp, align 8, !dbg !6758
  ret ptr %2, !dbg !6760
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_inode_cookie(ptr noundef %v9inode) #5 align 16 !dbg !6761 {
entry:
  %v9inode.addr = alloca ptr, align 8
  store ptr %v9inode, ptr %v9inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9inode.addr, metadata !6765, metadata !DIExpression()), !dbg !6766
  ret ptr null, !dbg !6767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6768 dso_local ptr @v9fs_fid_find_inode(ptr noundef, i1 noundef zeroext, i32, i1 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6772 dso_local void @__warn_printk(ptr noundef, ...) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_wait_fscache(ptr noundef %folio) #5 align 16 !dbg !6775 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6777, metadata !DIExpression()), !dbg !6778
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6779
  call void @folio_wait_private_2(ptr noundef %0) #10, !dbg !6780
  ret void, !dbg !6781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6782 dso_local zeroext i1 @__folio_start_writeback(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6785 dso_local i32 @p9_client_write(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6786 dso_local void @folio_end_writeback(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @page_offset(ptr noundef %page) #5 align 16 !dbg !6787 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6791, metadata !DIExpression()), !dbg !6792
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6793
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !6794
  %2 = getelementptr inbounds %struct.anon.23, ptr %1, i32 0, i32 2, !dbg !6794
  %3 = load i64, ptr %2, align 8, !dbg !6794
  %shl = shl i64 %3, 12, !dbg !6795
  ret i64 %shl, !dbg !6796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_order(ptr noundef %folio) #5 align 16 !dbg !6797 {
entry:
  %retval = alloca i32, align 4
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6801, metadata !DIExpression()), !dbg !6802
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6803
  %call = call zeroext i1 @folio_test_large(ptr noundef %0) #10, !dbg !6805
  br i1 %call, label %if.end, label %if.then, !dbg !6806

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6807
  br label %return, !dbg !6807

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6808
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 1, !dbg !6809
  %_flags_1 = getelementptr inbounds %struct.anon.42, ptr %2, i32 0, i32 0, !dbg !6809
  %3 = load i64, ptr %_flags_1, align 16, !dbg !6809
  %and = and i64 %3, 255, !dbg !6810
  %conv = trunc i64 %and to i32, !dbg !6808
  store i32 %conv, ptr %retval, align 4, !dbg !6811
  br label %return, !dbg !6811

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !6812
  ret i32 %4, !dbg !6812
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_large(ptr noundef %folio) #5 align 16 !dbg !6813 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6817, metadata !DIExpression()), !dbg !6818
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6819
  %call = call zeroext i1 @folio_test_head(ptr noundef %0) #10, !dbg !6820
  ret i1 %call, !dbg !6821
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_head(ptr noundef %folio) #6 align 16 !dbg !6822 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6824, metadata !DIExpression()), !dbg !6825
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6826
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #10, !dbg !6826
  %call1 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %call) #10, !dbg !6826
  ret i1 %call1, !dbg !6827
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !6828 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6832, metadata !DIExpression()), !dbg !6835
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6833, metadata !DIExpression()), !dbg !6836
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #9, !dbg !6837
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6834, metadata !DIExpression()), !dbg !6838
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6839
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6840
  store ptr %1, ptr %page, align 8, !dbg !6838
  %2 = load ptr, ptr %page, align 8, !dbg !6841
  %3 = load i32, ptr %n.addr, align 4, !dbg !6842
  %idxprom = zext i32 %3 to i64, !dbg !6841
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !6841
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !6843
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #9, !dbg !6844
  ret ptr %flags, !dbg !6845
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6846 dso_local void @folio_wait_private_2(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6847 dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6848 dso_local i32 @errseq_set(ptr noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6852 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6857, metadata !DIExpression()), !dbg !6859
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6858, metadata !DIExpression()), !dbg !6860
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6861
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6862
  %div = sdiv i64 %1, 64, !dbg !6862
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6863
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !6864
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6865
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6866
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !6867
  ret void, !dbg !6868
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6869 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6871, metadata !DIExpression()), !dbg !6873
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6872, metadata !DIExpression()), !dbg !6874
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6875
  %1 = load i64, ptr %size.addr, align 8, !dbg !6876
  %conv = trunc i64 %1 to i32, !dbg !6876
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !6877
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6878
  %3 = load i64, ptr %size.addr, align 8, !dbg !6878
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #10, !dbg !6878
  ret void, !dbg !6879
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6880 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6882, metadata !DIExpression()), !dbg !6884
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6883, metadata !DIExpression()), !dbg !6885
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6886
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6888
  br i1 %1, label %if.then, label %if.else, !dbg !6889

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6890
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6890
  %shr = ashr i64 %3, 3, !dbg !6890
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6890
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6892
  %and = and i64 %4, 7, !dbg !6892
  %sh_prom = trunc i64 %and to i32, !dbg !6892
  %shl = shl i32 1, %sh_prom, !dbg !6892
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #9, !dbg !6893, !srcloc !6894
  br label %if.end, !dbg !6895

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6896
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6898
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !6899, !srcloc !6900
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6901
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6902 dso_local i32 @netfs_write_begin(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_uptodate(ptr noundef %folio) #5 align 16 !dbg !6906 {
entry:
  %folio.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6908, metadata !DIExpression()), !dbg !6910
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #9, !dbg !6911
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6909, metadata !DIExpression()), !dbg !6912
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6913
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #10, !dbg !6913
  %call1 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %call) #10, !dbg !6913
  %frombool = zext i1 %call1 to i8, !dbg !6912
  store i8 %frombool, ptr %ret, align 1, !dbg !6912
  %1 = load i8, ptr %ret, align 1, !dbg !6914, !range !6048, !noundef !1443
  %tobool = trunc i8 %1 to i1, !dbg !6914
  br i1 %tobool, label %if.then, label %if.end, !dbg !6916

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6917

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !6918

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6920

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6920

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6918

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6922

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6924

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6924

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !6922, !srcloc !6926
  br label %do.cond7, !dbg !6922

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6922

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6918

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6918

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !6918

if.end:                                           ; preds = %do.end10, %entry
  %2 = load i8, ptr %ret, align 1, !dbg !6927, !range !6048, !noundef !1443
  %tobool11 = trunc i8 %2 to i1, !dbg !6927
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #9, !dbg !6928
  ret i1 %tobool11, !dbg !6929
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_mark_uptodate(ptr noundef %folio) #6 align 16 !dbg !6930 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6932, metadata !DIExpression()), !dbg !6933
  br label %do.body, !dbg !6934

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6935

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6937

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !6935, !srcloc !6939
  br label %do.end2, !dbg !6935

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6940
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #10, !dbg !6941
  call void @set_bit(i64 noundef 3, ptr noundef %call) #10, !dbg !6942
  ret void, !dbg !6943
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6944 dso_local void @inode_add_bytes(ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_size_write(ptr noundef %inode, i64 noundef %i_size) #5 align 16 !dbg !6947 {
entry:
  %inode.addr = alloca ptr, align 8
  %i_size.addr = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6949, metadata !DIExpression()), !dbg !6951
  store i64 %i_size, ptr %i_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i_size.addr, metadata !6950, metadata !DIExpression()), !dbg !6952
  %0 = load i64, ptr %i_size.addr, align 8, !dbg !6953
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6954
  %i_size1 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15, !dbg !6955
  store i64 %0, ptr %i_size1, align 8, !dbg !6956
  ret void, !dbg !6957
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6958 dso_local zeroext i1 @folio_mark_dirty(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_put(ptr noundef %folio) #5 align 16 !dbg !6959 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6961, metadata !DIExpression()), !dbg !6962
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6963
  %call = call i32 @folio_put_testzero(ptr noundef %0) #10, !dbg !6965
  %tobool = icmp ne i32 %call, 0, !dbg !6965
  br i1 %tobool, label %if.then, label %if.end, !dbg !6966

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6967
  call void @__folio_put(ptr noundef %1) #10, !dbg !6968
  br label %if.end, !dbg !6968

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6969
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_put_testzero(ptr noundef %folio) #5 align 16 !dbg !6970 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6972, metadata !DIExpression()), !dbg !6973
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6974
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6975
  %call = call i32 @put_page_testzero(ptr noundef %1) #10, !dbg !6976
  ret i32 %call, !dbg !6977
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6978 dso_local void @__folio_put(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_page_testzero(ptr noundef %page) #5 align 16 !dbg !6979 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6983, metadata !DIExpression()), !dbg !6984
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6985
  %call = call i32 @page_ref_dec_and_test(ptr noundef %0) #10, !dbg !6986
  ret i32 %call, !dbg !6987
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_dec_and_test(ptr noundef %page) #5 align 16 !dbg !6988 {
entry:
  %page.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6991, metadata !DIExpression()), !dbg !6993
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6994
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6992, metadata !DIExpression()), !dbg !6995
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6996
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !6997
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %_refcount) #10, !dbg !6998
  %conv = zext i1 %call to i32, !dbg !6998
  store i32 %conv, ptr %ret, align 4, !dbg !6995
  %1 = load i32, ptr %ret, align 4, !dbg !6999
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !7000
  ret i32 %1, !dbg !7001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !7002 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7006, metadata !DIExpression()), !dbg !7007
  br label %do.body, !dbg !7008

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7009

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7011
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !7012
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7013
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #10, !dbg !7014
  ret i1 %call, !dbg !7015
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !7016 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7018, metadata !DIExpression()), !dbg !7019
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7020
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #10, !dbg !7021
  ret i1 %call, !dbg !7022
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !7023 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7025, metadata !DIExpression()), !dbg !7028
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #9, !dbg !7029
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7026, metadata !DIExpression()), !dbg !7029
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7029
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7029
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #9, !dbg !7029, !srcloc !7030
  %2 = icmp ult i8 %1, 2, !dbg !7029
  call void @llvm.assume(i1 %2), !dbg !7029
  store i8 %1, ptr %c, align 1, !dbg !7029
  %3 = load i8, ptr %c, align 1, !dbg !7029, !range !6048, !noundef !1443
  %tobool = trunc i8 %3 to i1, !dbg !7029
  %frombool = zext i1 %tobool to i8, !dbg !7029
  store i8 %frombool, ptr %tmp, align 1, !dbg !7029
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #9, !dbg !7031
  %4 = load i8, ptr %tmp, align 1, !dbg !7029, !range !6048, !noundef !1443
  %tobool1 = trunc i8 %4 to i1, !dbg !7029
  ret i1 %tobool1, !dbg !7032
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_private(ptr noundef %folio) #6 align 16 !dbg !7033 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7035, metadata !DIExpression()), !dbg !7036
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7036
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #10, !dbg !7036
  %call1 = call zeroext i1 @_test_bit(i64 noundef 15, ptr noundef %call) #10, !dbg !7036
  ret i1 %call1, !dbg !7036
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @iov_iter_rw(ptr noundef %i) #5 align 16 !dbg !7037 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7043, metadata !DIExpression()), !dbg !7044
  %0 = load ptr, ptr %i.addr, align 8, !dbg !7045
  %data_source = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3, !dbg !7046
  %1 = load i8, ptr %data_source, align 1, !dbg !7046, !range !6048, !noundef !1443
  %tobool = trunc i8 %1 to i1, !dbg !7046
  %2 = zext i1 %tobool to i64, !dbg !7045
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !7045
  %conv = trunc i32 %cond to i8, !dbg !7045
  ret i8 %conv, !dbg !7047
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #5 align 16 !dbg !7048 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !7052, metadata !DIExpression()), !dbg !7053
  %0 = load ptr, ptr %f.addr, align 8, !dbg !7054
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !7055
  %1 = load ptr, ptr %f_inode, align 8, !dbg !7055
  ret ptr %1, !dbg !7056
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7057 dso_local zeroext i1 @folio_clear_dirty_for_io(ptr noundef) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563}
!llvm.ident = !{!5564}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "v9fs_req_ops", scope: !2, file: !3, line: 100, type: !5337, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/9p/.vfs_addr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/9p/9p\22 -D KBUILD_BASENAME=\22vfs_addr\22 -D KBUILD_MODNAME=\229p\22 -D __KBUILD_MODNAME=kmod_9p -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/9p/vfs_addr.ll fs/9p/vfs_addr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !359, globals: !5466, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/9p/vfs_addr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a746166f1d59e1c59c667e33217b90b")
!4 = !{!5, !13, !21, !29, !125, !141, !146, !153, !159, !166, !171, !179, !186, !192, !201, !206, !211, !217, !222, !228, !240, !246, !253, !259, !266, !271, !278, !294, !299, !307, !347}
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !31, file: !30, line: 147, baseType: !7, size: 32, elements: !122)
!30 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !30, line: 135, size: 512, elements: !32)
!32 = !{!33, !37, !39, !41, !45, !46, !62, !120, !121}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !31, file: !30, line: 136, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !30, line: 137, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !31, file: !30, line: 138, baseType: !40, size: 32, offset: 128)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !31, file: !30, line: 139, baseType: !42, size: 16, offset: 160)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !43, line: 24, baseType: !44)
!43 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !31, file: !30, line: 150, baseType: !29, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !31, file: !30, line: 151, baseType: !47, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !30, line: 64, baseType: !49)
!49 = !DISubroutineType(types: !50)
!50 = !{!40, !51, !40, !38, !52, !58}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 61, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !55, line: 72, baseType: !56)
!55 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !55, line: 16, baseType: !57)
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !43, line: 52, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !55, line: 88, baseType: !61)
!61 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !31, file: !30, line: 152, baseType: !63, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !30, line: 117, size: 256, elements: !65)
!65 = !{!66, !71}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !64, file: !30, line: 118, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !43, line: 174, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 172, size: 32, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !68, file: !43, line: 173, baseType: !40, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !64, file: !30, line: 119, baseType: !72, size: 192, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !73, line: 41, baseType: !74)
!73 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !73, line: 37, size: 192, elements: !75)
!75 = !{!76, !114}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !74, file: !73, line: 38, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !78, line: 29, baseType: !79)
!78 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !78, line: 17, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !78, line: 18, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !78, line: 18, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !82, file: !78, line: 19, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !86, line: 14, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !85, file: !86, line: 15, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !90, line: 44, baseType: !91)
!90 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !90, line: 14, size: 32, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !90, line: 15, baseType: !94, size: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !90, line: 15, size: 32, elements: !95)
!95 = !{!96, !97, !107}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !94, file: !90, line: 16, baseType: !67, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !90, line: 24, baseType: !98, size: 16)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !90, line: 24, size: 16, elements: !99)
!99 = !{!100, !106}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !98, file: !90, line: 25, baseType: !101, size: 8)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !102, line: 17, baseType: !103)
!102 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !104, line: 21, baseType: !105)
!104 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !98, file: !90, line: 26, baseType: !101, size: 8, offset: 8)
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !90, line: 28, baseType: !108, size: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !90, line: 28, size: 32, elements: !109)
!109 = !{!110, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !108, file: !90, line: 29, baseType: !111, size: 16)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !102, line: 19, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !104, line: 24, baseType: !44)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !108, file: !90, line: 30, baseType: !111, size: 16, offset: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !74, file: !73, line: 39, baseType: !115, size: 128, offset: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !43, line: 190, size: 128, elements: !116)
!116 = !{!117, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !43, line: 191, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !115, file: !43, line: 191, baseType: !118, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !31, file: !30, line: 153, baseType: !38, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !31, file: !30, line: 154, baseType: !38, size: 64, offset: 448)
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!124 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !126, line: 1325, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!128 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!129 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!130 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!131 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!132 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!133 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!134 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!135 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!136 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!137 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!138 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!139 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!140 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !142, line: 32, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!145 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !147, line: 15, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!151 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!152 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !154, line: 45, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!157 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!158 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !160, line: 487, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!163 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!164 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!165 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !167, line: 65, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!168 = !{!169, !170}
!169 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!170 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !172, line: 620, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!173 = !{!174, !175, !176, !177, !178}
!174 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!175 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!176 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!177 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!178 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !172, line: 597, baseType: !40, size: 32, elements: !180)
!180 = !{!181, !182, !183, !184, !185}
!181 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!182 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!183 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!184 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!185 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !187, line: 26, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!190 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!191 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !160, line: 547, baseType: !7, size: 32, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200}
!194 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!195 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!196 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!197 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!198 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!199 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!200 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !160, line: 564, baseType: !7, size: 32, elements: !202)
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!204 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!205 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !160, line: 577, baseType: !7, size: 32, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!209 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!210 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !160, line: 503, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!214 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!215 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!216 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !218, line: 2052, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!219 = !{!220, !221}
!220 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!221 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !223, line: 54, baseType: !7, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!224 = !{!225, !226, !227}
!225 = !DIEnumerator(name: "USRQUOTA", value: 0)
!226 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!227 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !229, line: 44, baseType: !7, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239}
!231 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!232 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!233 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!234 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!235 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!236 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!237 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!238 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!239 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !241, line: 16, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!242 = !{!243, !244, !245}
!243 = !DIEnumerator(name: "TT_NONE", value: 0)
!244 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!245 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !247, line: 51, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!248 = !{!249, !250, !251, !252}
!249 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!250 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!251 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!252 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_read_from_hole", file: !254, line: 225, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/netfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f990c1c7c591a5358345b001c6d554e")
!255 = !{!256, !257, !258}
!256 = !DIEnumerator(name: "NETFS_READ_HOLE_IGNORE", value: 0)
!257 = !DIEnumerator(name: "NETFS_READ_HOLE_CLEAR", value: 1)
!258 = !DIEnumerator(name: "NETFS_READ_HOLE_FAIL", value: 2)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_source", file: !254, line: 112, baseType: !260, size: 8, elements: !261)
!260 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!261 = !{!262, !263, !264, !265}
!262 = !DIEnumerator(name: "NETFS_FILL_WITH_ZEROES", value: 0)
!263 = !DIEnumerator(name: "NETFS_DOWNLOAD_FROM_SERVER", value: 1)
!264 = !DIEnumerator(name: "NETFS_READ_FROM_CACHE", value: 2)
!265 = !DIEnumerator(name: "NETFS_INVALID_READ", value: 3)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_origin", file: !254, line: 167, baseType: !260, size: 8, elements: !267)
!267 = !{!268, !269, !270}
!268 = !DIEnumerator(name: "NETFS_READAHEAD", value: 0)
!269 = !DIEnumerator(name: "NETFS_READPAGE", value: 1)
!270 = !DIEnumerator(name: "NETFS_READ_FOR_WRITE", value: 2)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_trans_status", file: !272, line: 42, baseType: !7, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/net/9p/client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7a55fe24c3aa1cf602d2a8511dd3702")
!273 = !{!274, !275, !276, !277}
!274 = !DIEnumerator(name: "Connected", value: 0)
!275 = !DIEnumerator(name: "BeginDisconnect", value: 1)
!276 = !DIEnumerator(name: "Disconnected", value: 2)
!277 = !DIEnumerator(name: "Hung", value: 3)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_open_mode_t", file: !279, line: 208, baseType: !7, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/net/9p/9p.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8be44a6cf5e6d0f53abc0540cde0ebd0")
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!281 = !DIEnumerator(name: "P9_OREAD", value: 0)
!282 = !DIEnumerator(name: "P9_OWRITE", value: 1)
!283 = !DIEnumerator(name: "P9_ORDWR", value: 2)
!284 = !DIEnumerator(name: "P9_OEXEC", value: 3)
!285 = !DIEnumerator(name: "P9_OTRUNC", value: 16)
!286 = !DIEnumerator(name: "P9_OREXEC", value: 32)
!287 = !DIEnumerator(name: "P9_ORCLOSE", value: 64)
!288 = !DIEnumerator(name: "P9_OAPPEND", value: 128)
!289 = !DIEnumerator(name: "P9_OEXCL", value: 4096)
!290 = !DIEnumerator(name: "P9L_MODE_MASK", value: 8191)
!291 = !DIEnumerator(name: "P9L_DIRECT", value: 8192)
!292 = !DIEnumerator(name: "P9L_NOWRITECACHE", value: 16384)
!293 = !DIEnumerator(name: "P9L_LOOSE", value: 32768)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 10, baseType: !7, size: 32, elements: !296)
!295 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!296 = !{!297, !298}
!297 = !DIEnumerator(name: "false", value: 0)
!298 = !DIEnumerator(name: "true", value: 1)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !300, line: 119, baseType: !7, size: 32, elements: !301)
!300 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!301 = !{!302, !303, !304, !305, !306}
!302 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!303 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!304 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!305 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!306 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !308, line: 100, baseType: !7, size: 32, elements: !309)
!308 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!310 = !DIEnumerator(name: "PG_locked", value: 0)
!311 = !DIEnumerator(name: "PG_writeback", value: 1)
!312 = !DIEnumerator(name: "PG_referenced", value: 2)
!313 = !DIEnumerator(name: "PG_uptodate", value: 3)
!314 = !DIEnumerator(name: "PG_dirty", value: 4)
!315 = !DIEnumerator(name: "PG_lru", value: 5)
!316 = !DIEnumerator(name: "PG_head", value: 6)
!317 = !DIEnumerator(name: "PG_waiters", value: 7)
!318 = !DIEnumerator(name: "PG_active", value: 8)
!319 = !DIEnumerator(name: "PG_workingset", value: 9)
!320 = !DIEnumerator(name: "PG_error", value: 10)
!321 = !DIEnumerator(name: "PG_slab", value: 11)
!322 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!323 = !DIEnumerator(name: "PG_arch_1", value: 13)
!324 = !DIEnumerator(name: "PG_reserved", value: 14)
!325 = !DIEnumerator(name: "PG_private", value: 15)
!326 = !DIEnumerator(name: "PG_private_2", value: 16)
!327 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!328 = !DIEnumerator(name: "PG_reclaim", value: 18)
!329 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!330 = !DIEnumerator(name: "PG_unevictable", value: 20)
!331 = !DIEnumerator(name: "PG_mlocked", value: 21)
!332 = !DIEnumerator(name: "PG_uncached", value: 22)
!333 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!334 = !DIEnumerator(name: "PG_readahead", value: 18)
!335 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!336 = !DIEnumerator(name: "PG_checked", value: 12)
!337 = !DIEnumerator(name: "PG_swapcache", value: 12)
!338 = !DIEnumerator(name: "PG_fscache", value: 16)
!339 = !DIEnumerator(name: "PG_pinned", value: 12)
!340 = !DIEnumerator(name: "PG_savepinned", value: 4)
!341 = !DIEnumerator(name: "PG_foreign", value: 12)
!342 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!343 = !DIEnumerator(name: "PG_isolated", value: 18)
!344 = !DIEnumerator(name: "PG_reported", value: 3)
!345 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!346 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!347 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mapping_flags", file: !348, line: 197, baseType: !7, size: 32, elements: !349)
!348 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358}
!350 = !DIEnumerator(name: "AS_EIO", value: 0)
!351 = !DIEnumerator(name: "AS_ENOSPC", value: 1)
!352 = !DIEnumerator(name: "AS_MM_ALL_LOCKS", value: 2)
!353 = !DIEnumerator(name: "AS_UNEVICTABLE", value: 3)
!354 = !DIEnumerator(name: "AS_EXITING", value: 4)
!355 = !DIEnumerator(name: "AS_NO_WRITEBACK_TAGS", value: 5)
!356 = !DIEnumerator(name: "AS_LARGE_FOLIO_SUPPORT", value: 6)
!357 = !DIEnumerator(name: "AS_RELEASE_ALWAYS", value: 7)
!358 = !DIEnumerator(name: "AS_STABLE_WRITES", value: 8)
!359 = !{!57, !38, !360, !361, !363, !364, !367, !5322, !5325, !59, !5327, !5464}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !43, line: 42, baseType: !57)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !366)
!366 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !126, line: 293, size: 1536, elements: !369)
!369 = !{!370, !5289, !5303}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !126, line: 295, baseType: !371, size: 512)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !126, line: 295, size: 512, elements: !372)
!372 = !{!373, !5288}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !126, line: 296, baseType: !374, size: 448)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !126, line: 296, size: 448, elements: !375)
!375 = !{!376, !377, !386, !5276, !5277, !5286, !5287}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !126, line: 298, baseType: !57, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !126, line: 299, baseType: !378, size: 128, offset: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !126, line: 299, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !378, file: !126, line: 300, baseType: !115, size: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !126, line: 302, baseType: !382, size: 128)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !126, line: 302, size: 128, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !382, file: !126, line: 303, baseType: !38, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !382, file: !126, line: 305, baseType: !7, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !374, file: !126, line: 310, baseType: !387, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !218, line: 472, size: 1536, align: 64, elements: !389)
!389 = !{!390, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5270, !5271, !5272, !5273, !5274, !5275}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !388, file: !218, line: 473, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !218, line: 641, size: 4800, elements: !393)
!393 = !{!394, !395, !396, !404, !405, !412, !413, !416, !417, !5060, !5061, !5062, !5063, !5064, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5104, !5107, !5108, !5109, !5118, !5119, !5120, !5121}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !392, file: !218, line: 642, baseType: !42, size: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !392, file: !218, line: 643, baseType: !44, size: 16, offset: 16)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !392, file: !218, line: 644, baseType: !397, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !398, line: 23, baseType: !399)
!398 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 21, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !399, file: !398, line: 22, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !43, line: 37, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !55, line: 49, baseType: !7)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !392, file: !218, line: 645, baseType: !115, size: 128, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !392, file: !218, line: 646, baseType: !406, size: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !398, line: 28, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 26, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !407, file: !398, line: 27, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !43, line: 38, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !55, line: 50, baseType: !7)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !392, file: !218, line: 647, baseType: !7, size: 32, offset: 224)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !392, file: !218, line: 650, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !218, line: 607, flags: DIFlagFwdDecl)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !392, file: !218, line: 651, baseType: !414, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !392, file: !218, line: 654, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !218, line: 1966, size: 2048, align: 512, elements: !421)
!421 = !{!422, !4894, !4904, !4908, !4912, !4916, !4920, !4924, !4928, !4932, !4936, !4937, !4941, !4945, !4982, !5011, !5015, !5021, !5025, !5029, !5033, !5037, !5041, !5047, !5051}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !420, file: !218, line: 1967, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!426, !391, !426, !7}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !428, line: 82, size: 1536, elements: !429)
!428 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!429 = !{!430, !431, !441, !449, !450, !470, !471, !475, !488, !4877, !4878, !4879, !4880, !4886, !4887, !4888}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !427, file: !428, line: 84, baseType: !7, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !427, file: !428, line: 85, baseType: !432, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !433, line: 275, baseType: !434)
!433 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !433, line: 275, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !434, file: !433, line: 275, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !433, line: 69, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !433, line: 64, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !438, file: !433, line: 65, baseType: !7, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !427, file: !428, line: 86, baseType: !442, size: 128, offset: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !443, line: 38, size: 128, elements: !444)
!443 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!444 = !{!445, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !443, line: 39, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !442, file: !443, line: 39, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !427, file: !428, line: 87, baseType: !426, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !427, file: !428, line: 88, baseType: !451, size: 128, offset: 256)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !428, line: 49, size: 128, elements: !452)
!452 = !{!453, !467}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !428, line: 50, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !451, file: !428, line: 50, size: 64, elements: !455)
!455 = !{!456, !463}
!456 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !428, line: 51, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !428, line: 51, size: 64, elements: !458)
!458 = !{!459, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !457, file: !428, line: 52, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !102, line: 21, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !104, line: 27, baseType: !7)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !457, file: !428, line: 52, baseType: !460, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !454, file: !428, line: 54, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !102, line: 23, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !104, line: 31, baseType: !466)
!466 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !451, file: !428, line: 56, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !427, file: !428, line: 89, baseType: !391, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !427, file: !428, line: 91, baseType: !472, size: 256, offset: 448)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !427, file: !428, line: 94, baseType: !476, size: 64, offset: 704)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !477, line: 25, size: 64, elements: !478)
!477 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !477, line: 26, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !477, line: 26, size: 64, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !480, file: !477, line: 28, baseType: !465, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !477, line: 30, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !480, file: !477, line: 30, size: 64, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !484, file: !477, line: 31, baseType: !77, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !484, file: !477, line: 32, baseType: !40, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !427, file: !428, line: 95, baseType: !489, size: 64, offset: 768)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !428, line: 128, size: 1024, align: 512, elements: !492)
!492 = !{!493, !497, !498, !505, !511, !515, !519, !523, !524, !528, !533, !4867, !4871}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !491, file: !428, line: 129, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!40, !426, !7}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !491, file: !428, line: 130, baseType: !494, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !491, file: !428, line: 131, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!40, !502, !504}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !491, file: !428, line: 132, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!40, !502, !7, !34, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !491, file: !428, line: 134, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!40, !502}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !491, file: !428, line: 135, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!40, !426}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !491, file: !428, line: 136, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !426}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !491, file: !428, line: 137, baseType: !520, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !491, file: !428, line: 138, baseType: !525, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !426, !391}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !491, file: !428, line: 139, baseType: !529, size: 64, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !426, !532, !40}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !491, file: !428, line: 140, baseType: !534, size: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!537, !4866}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !539, line: 70, size: 256, elements: !540)
!539 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!540 = !{!541, !542, !4862, !4863}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !538, file: !539, line: 71, baseType: !426, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !538, file: !539, line: 72, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !218, line: 1190, size: 10752, elements: !545)
!545 = !{!546, !547, !550, !551, !552, !553, !2431, !2583, !2623, !2708, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2725, !2729, !2730, !3195, !3198, !3256, !3259, !3260, !3261, !3302, !4796, !4797, !4798, !4799, !4800, !4801, !4804, !4805, !4812, !4813, !4814, !4815, !4816, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !544, file: !218, line: 1191, baseType: !115, size: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !544, file: !218, line: 1192, baseType: !548, size: 32, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !43, line: 21, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !43, line: 18, baseType: !460)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !544, file: !218, line: 1193, baseType: !105, size: 8, offset: 160)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !544, file: !218, line: 1194, baseType: !57, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !544, file: !218, line: 1195, baseType: !59, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !544, file: !218, line: 1196, baseType: !554, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !218, line: 2366, size: 576, elements: !556)
!556 = !{!557, !558, !559, !566, !570, !574, !578, !2419, !2420, !2421, !2423, !2424, !2425, !2427, !2428, !2429, !2430}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !218, line: 2367, baseType: !34, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !555, file: !218, line: 2368, baseType: !40, size: 32, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !555, file: !218, line: 2376, baseType: !560, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!40, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !565, line: 32, flags: DIFlagFwdDecl)
!565 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!566 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !555, file: !218, line: 2377, baseType: !567, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !218, line: 75, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !555, file: !218, line: 2378, baseType: !571, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!426, !554, !40, !34, !38}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !555, file: !218, line: 2380, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !543}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !555, file: !218, line: 2381, baseType: !579, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !581)
!581 = !{!582, !583, !584, !588, !2078, !2104, !2105, !2106, !2107, !2111, !2114, !2115, !2116, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2183, !2187, !2207, !2225, !2226, !2227, !2228, !2237, !2260, !2261, !2264, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2278, !2279, !2378, !2386, !2387, !2388, !2390, !2394, !2395, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2412, !2413, !2414, !2418}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !580, file: !6, line: 403, baseType: !5, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !580, file: !6, line: 406, baseType: !115, size: 128, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !580, file: !6, line: 409, baseType: !585, size: 448, offset: 192)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 448, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 56)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !580, file: !6, line: 417, baseType: !589, size: 768, offset: 640)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !590)
!590 = !{!591, !2072, !2073, !2074, !2077}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !589, file: !6, line: 46, baseType: !592, size: 512)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !593, line: 64, size: 512, elements: !594)
!593 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!594 = !{!595, !596, !597, !599, !645, !1971, !2062, !2067, !2068, !2069, !2070, !2071}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !592, file: !593, line: 65, baseType: !34, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !592, file: !593, line: 66, baseType: !115, size: 128, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !592, file: !593, line: 67, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !592, file: !593, line: 68, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !593, line: 168, size: 768, elements: !602)
!602 = !{!603, !604, !605, !606}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !601, file: !593, line: 169, baseType: !115, size: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !601, file: !593, line: 170, baseType: !77, size: 32, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !601, file: !593, line: 171, baseType: !592, size: 512, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !601, file: !593, line: 172, baseType: !607, size: 64, offset: 704)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !593, line: 133, size: 192, elements: !610)
!610 = !{!611, !618, !623}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !609, file: !593, line: 134, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!40, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !609, file: !593, line: 135, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!34, !616}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !609, file: !593, line: 136, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!40, !616, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !593, line: 125, size: 20736, elements: !630)
!630 = !{!631, !635, !639, !640, !644}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !629, file: !593, line: 126, baseType: !632, size: 192)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 192, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 3)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !629, file: !593, line: 127, baseType: !636, size: 4096, offset: 192)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 4096, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !629, file: !593, line: 128, baseType: !40, size: 32, offset: 4288)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !629, file: !593, line: 129, baseType: !641, size: 16384, offset: 4320)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 16384, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 2048)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !629, file: !593, line: 130, baseType: !40, size: 32, offset: 20704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !592, file: !593, line: 69, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !593, line: 116, size: 384, elements: !649)
!649 = !{!650, !654, !676, !1932, !1963, !1967}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !648, file: !593, line: 117, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !598}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !648, file: !593, line: 118, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !658, line: 254, size: 128, elements: !659)
!658 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!659 = !{!660, !672}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !657, file: !658, line: 255, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!664, !598, !667, !532}
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !43, line: 66, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !55, line: 73, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !55, line: 15, baseType: !366)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !658, line: 30, size: 128, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !668, file: !658, line: 31, baseType: !34, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !668, file: !658, line: 32, baseType: !42, size: 16, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !657, file: !658, line: 256, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!664, !598, !667, !34, !53}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !648, file: !593, line: 119, baseType: !677, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !658, line: 84, size: 320, elements: !681)
!681 = !{!682, !683, !687, !1928, !1930}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !680, file: !658, line: 85, baseType: !34, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !680, file: !658, line: 86, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!42, !598, !667, !40}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !680, file: !658, line: 88, baseType: !688, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!42, !598, !691, !40}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !658, line: 175, size: 512, elements: !693)
!693 = !{!694, !695, !696, !697, !701, !1923, !1924}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !692, file: !658, line: 176, baseType: !668, size: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !692, file: !658, line: 177, baseType: !53, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !692, file: !658, line: 178, baseType: !38, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !692, file: !658, line: 179, baseType: !698, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!387}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !692, file: !658, line: 180, baseType: !702, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!664, !705, !598, !691, !532, !59, !53}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !218, line: 994, size: 1856, align: 64, elements: !707)
!707 = !{!708, !727, !728, !730, !739, !752, !753, !754, !819, !1178, !1187, !1193, !1194, !1913, !1914, !1915, !1916, !1918, !1919, !1922}
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !218, line: 995, baseType: !709, size: 128)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !218, line: 995, size: 128, elements: !710)
!710 = !{!711, !717, !726}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !709, file: !218, line: 996, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !713, line: 60, size: 64, elements: !714)
!713 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !713, line: 61, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !709, file: !218, line: 997, baseType: !718, size: 128, align: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !43, line: 232, size: 128, align: 64, elements: !719)
!719 = !{!720, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !43, line: 233, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !718, file: !43, line: 234, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !721}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !709, file: !218, line: 998, baseType: !7, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !706, file: !218, line: 1005, baseType: !77, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !706, file: !218, line: 1006, baseType: !729, size: 32, offset: 160)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !43, line: 156, baseType: !7)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !706, file: !218, line: 1007, baseType: !731, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !732, line: 13, baseType: !733)
!732 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !43, line: 181, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 179, size: 64, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !734, file: !43, line: 180, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !102, line: 22, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !104, line: 30, baseType: !61)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !706, file: !218, line: 1008, baseType: !740, size: 256, offset: 256)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !741, line: 66, size: 256, elements: !742)
!741 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!742 = !{!743, !744, !746, !751}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !740, file: !741, line: 67, baseType: !731, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !740, file: !741, line: 68, baseType: !745, size: 32, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !86, line: 23, baseType: !85)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !740, file: !741, line: 70, baseType: !747, size: 32, offset: 96)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !748, line: 15, size: 32, elements: !749)
!748 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !747, file: !748, line: 20, baseType: !67, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !740, file: !741, line: 72, baseType: !115, size: 128, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !706, file: !218, line: 1009, baseType: !59, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !706, file: !218, line: 1010, baseType: !7, size: 32, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !706, file: !218, line: 1011, baseType: !755, size: 256, offset: 640)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !218, line: 948, size: 256, elements: !756)
!756 = !{!757, !778, !815, !816, !817, !818}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !755, file: !218, line: 949, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !759, line: 34, baseType: !760)
!759 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 25, size: 64, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !760, file: !759, line: 26, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !764, line: 27, baseType: !765)
!764 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !764, line: 13, size: 64, elements: !766)
!766 = !{!767, !777}
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !764, line: 14, baseType: !768, size: 32)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !764, line: 14, size: 32, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !768, file: !764, line: 15, baseType: !67, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !764, line: 16, baseType: !772, size: 32)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !768, file: !764, line: 16, size: 32, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !772, file: !764, line: 18, baseType: !101, size: 8)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !772, file: !764, line: 19, baseType: !776, size: 24, offset: 8)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 24, elements: !633)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !765, file: !764, line: 26, baseType: !89, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !755, file: !218, line: 950, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !22, line: 59, size: 768, elements: !781)
!781 = !{!782, !787, !788, !789, !802, !803, !804, !805}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !780, file: !22, line: 61, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !300, line: 113, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !300, line: 111, size: 32, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !784, file: !300, line: 112, baseType: !67, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !780, file: !22, line: 62, baseType: !7, size: 32, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !780, file: !22, line: 63, baseType: !77, size: 32, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !780, file: !22, line: 65, baseType: !790, size: 256, offset: 128)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 256, elements: !800)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !43, line: 194, size: 64, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !791, file: !43, line: 195, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !43, line: 198, size: 128, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !795, file: !43, line: 199, baseType: !794, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !795, file: !43, line: 199, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!800 = !{!801}
!801 = !DISubrange(count: 4)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !780, file: !22, line: 66, baseType: !791, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !780, file: !22, line: 68, baseType: !72, size: 192, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !780, file: !22, line: 69, baseType: !718, size: 128, align: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !780, file: !22, line: 70, baseType: !806, offset: 768)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, elements: !813)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !22, line: 54, size: 128, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !807, file: !22, line: 55, baseType: !40, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !807, file: !22, line: 56, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !22, line: 56, flags: DIFlagFwdDecl)
!813 = !{!814}
!814 = !DISubrange(count: -1)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !755, file: !218, line: 951, baseType: !21, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !755, file: !218, line: 952, baseType: !397, size: 32, offset: 160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !755, file: !218, line: 952, baseType: !397, size: 32, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !755, file: !218, line: 953, baseType: !40, size: 32, offset: 224)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !706, file: !218, line: 1012, baseType: !820, size: 64, offset: 896)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !823, line: 110, size: 1472, elements: !824)
!823 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!824 = !{!825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !841, !842, !843, !844, !845, !846, !976, !977, !978, !979, !980, !1011, !1164, !1165, !1173}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !822, file: !823, line: 111, baseType: !731, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !822, file: !823, line: 112, baseType: !397, size: 32, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !822, file: !823, line: 113, baseType: !406, size: 32, offset: 96)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !822, file: !823, line: 114, baseType: !397, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !822, file: !823, line: 115, baseType: !406, size: 32, offset: 160)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !822, file: !823, line: 116, baseType: !397, size: 32, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !822, file: !823, line: 117, baseType: !406, size: 32, offset: 224)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !822, file: !823, line: 118, baseType: !397, size: 32, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !822, file: !823, line: 119, baseType: !406, size: 32, offset: 288)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !822, file: !823, line: 120, baseType: !7, size: 32, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !822, file: !823, line: 121, baseType: !836, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !837, line: 24, baseType: !838)
!837 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !837, line: 24, size: 64, elements: !839)
!839 = !{!840}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !838, file: !837, line: 24, baseType: !464, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !822, file: !823, line: 122, baseType: !836, size: 64, offset: 448)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !822, file: !823, line: 123, baseType: !836, size: 64, offset: 512)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !822, file: !823, line: 124, baseType: !836, size: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !822, file: !823, line: 125, baseType: !836, size: 64, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !822, file: !823, line: 127, baseType: !105, size: 8, offset: 704)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !822, file: !823, line: 129, baseType: !847, size: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !849, line: 195, size: 1728, elements: !850)
!849 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!850 = !{!851, !852, !857, !869, !878, !881, !882, !889, !890, !891, !892, !895, !896, !897, !899, !900, !940, !961}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !848, file: !849, line: 196, baseType: !783, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !848, file: !849, line: 197, baseType: !853, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !849, line: 28, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !43, line: 104, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !102, line: 20, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !104, line: 26, baseType: !40)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !849, line: 198, baseType: !858, size: 192, offset: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !849, line: 198, size: 192, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !858, file: !849, line: 199, baseType: !115, size: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !858, file: !849, line: 200, baseType: !862, size: 192, align: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !863, line: 5, size: 192, align: 64, elements: !864)
!863 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!864 = !{!865, !866, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !862, file: !863, line: 6, baseType: !57, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !862, file: !863, line: 7, baseType: !867, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !862, file: !863, line: 8, baseType: !867, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !848, file: !849, line: 205, baseType: !870, size: 320, offset: 256)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !871, line: 48, size: 320, elements: !872)
!871 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!872 = !{!873, !874, !875, !876, !877}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !870, file: !871, line: 49, baseType: !731, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !870, file: !871, line: 55, baseType: !731, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !870, file: !871, line: 57, baseType: !747, size: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !870, file: !871, line: 59, baseType: !745, size: 32, offset: 160)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !870, file: !871, line: 60, baseType: !115, size: 128, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !848, file: !849, line: 206, baseType: !879, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !849, line: 206, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !848, file: !849, line: 207, baseType: !38, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !849, line: 208, baseType: !883, size: 64, offset: 704)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !849, line: 208, size: 64, elements: !884)
!884 = !{!885, !888}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !883, file: !849, line: 209, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !887, line: 8, baseType: !738)
!887 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!888 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !883, file: !849, line: 210, baseType: !886, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !848, file: !849, line: 212, baseType: !886, size: 64, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !848, file: !849, line: 213, baseType: !397, size: 32, offset: 832)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !848, file: !849, line: 214, baseType: !406, size: 32, offset: 864)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !848, file: !849, line: 215, baseType: !893, size: 32, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !849, line: 31, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !43, line: 110, baseType: !460)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !848, file: !849, line: 216, baseType: !44, size: 16, offset: 928)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !848, file: !849, line: 217, baseType: !44, size: 16, offset: 944)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !848, file: !849, line: 221, baseType: !898, size: 16, offset: 960)
!898 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !849, line: 228, baseType: !57, size: 64, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !849, line: 245, baseType: !901, size: 320, offset: 1088)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !849, line: 245, size: 320, elements: !902)
!902 = !{!903, !932}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !901, file: !849, line: 246, baseType: !904, size: 320)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !849, line: 114, size: 320, elements: !905)
!905 = !{!906, !907, !919, !922, !931}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !904, file: !849, line: 116, baseType: !57, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !849, line: 117, baseType: !908, size: 64, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !849, line: 117, size: 64, elements: !909)
!909 = !{!910, !918}
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !849, line: 118, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !849, line: 118, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !911, file: !849, line: 120, baseType: !111, size: 16)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !911, file: !849, line: 121, baseType: !915, size: 48, offset: 16)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 48, elements: !916)
!916 = !{!917}
!917 = !DISubrange(count: 6)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !908, file: !849, line: 127, baseType: !57, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !904, file: !849, line: 129, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !849, line: 102, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !904, file: !849, line: 130, baseType: !923, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !849, line: 108, size: 192, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !924, file: !849, line: 109, baseType: !718, size: 128, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !924, file: !849, line: 110, baseType: !783, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !924, file: !849, line: 111, baseType: !929, size: 8, offset: 160)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !43, line: 35, baseType: !930)
!930 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !904, file: !849, line: 131, baseType: !34, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !849, line: 247, baseType: !933, size: 320)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !901, file: !849, line: 247, size: 320, elements: !934)
!934 = !{!935, !936, !937, !938, !939}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !933, file: !849, line: 248, baseType: !57, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !933, file: !849, line: 249, baseType: !57, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !933, file: !849, line: 250, baseType: !920, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !933, file: !849, line: 251, baseType: !923, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !933, file: !849, line: 252, baseType: !532, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !849, line: 260, baseType: !941, size: 256, offset: 1408)
!941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !849, line: 260, size: 256, elements: !942)
!942 = !{!943, !949}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !941, file: !849, line: 261, baseType: !944, size: 256)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !849, line: 134, size: 256, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !944, file: !849, line: 135, baseType: !38, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !944, file: !849, line: 136, baseType: !948, size: 256)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !800)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !849, line: 262, baseType: !950, size: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !941, file: !849, line: 262, size: 256, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !950, file: !849, line: 264, baseType: !115, size: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !950, file: !849, line: 265, baseType: !954, size: 128, offset: 128)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !955, line: 22, size: 128, elements: !956)
!955 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!956 = !{!957, !960}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !954, file: !955, line: 23, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !955, line: 23, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !954, file: !955, line: 24, baseType: !57, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !848, file: !849, line: 280, baseType: !962, size: 64, offset: 1664)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !849, line: 176, size: 192, elements: !964)
!964 = !{!965, !974, !975}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !963, file: !849, line: 177, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !849, line: 171, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!40, !847, !970, !972, !847}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !963, file: !849, line: 178, baseType: !847, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !963, file: !849, line: 179, baseType: !920, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !822, file: !823, line: 130, baseType: !847, size: 64, offset: 832)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !822, file: !823, line: 131, baseType: !847, size: 64, offset: 896)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !822, file: !823, line: 132, baseType: !847, size: 64, offset: 960)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !822, file: !823, line: 135, baseType: !38, size: 64, offset: 1024)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !822, file: !823, line: 137, baseType: !981, size: 64, offset: 1088)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !983, line: 14, size: 1088, elements: !984)
!983 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!984 = !{!985, !986, !995, !996, !997, !998, !999, !1000}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !982, file: !983, line: 15, baseType: !783, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !982, file: !983, line: 17, baseType: !987, size: 320, offset: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !988, line: 22, size: 320, elements: !989)
!988 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!989 = !{!990, !991, !992, !993}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !987, file: !988, line: 23, baseType: !745, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !987, file: !988, line: 24, baseType: !737, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !987, file: !988, line: 26, baseType: !115, size: 128, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !987, file: !988, line: 28, baseType: !994, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !982, file: !983, line: 19, baseType: !57, size: 64, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !982, file: !983, line: 20, baseType: !731, size: 64, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !982, file: !983, line: 23, baseType: !795, size: 128, offset: 512)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !982, file: !983, line: 24, baseType: !397, size: 32, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !982, file: !983, line: 29, baseType: !731, size: 64, offset: 704)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !982, file: !983, line: 36, baseType: !1001, size: 320, offset: 768)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1002, line: 15, size: 320, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1010}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1001, file: !1002, line: 16, baseType: !745, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1001, file: !1002, line: 18, baseType: !40, size: 32, offset: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1001, file: !1002, line: 19, baseType: !40, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1001, file: !1002, line: 20, baseType: !40, size: 32, offset: 96)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1001, file: !1002, line: 21, baseType: !40, size: 32, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1001, file: !1002, line: 22, baseType: !57, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !1002, line: 23, baseType: !57, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !822, file: !823, line: 138, baseType: !1012, size: 64, offset: 1152)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1014, line: 68, size: 4800, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1015 = !{!1016, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1055, !1056, !1057, !1058, !1059, !1060, !1072, !1145, !1146, !1160, !1162}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1013, file: !1014, line: 69, baseType: !1017, size: 576)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1014, line: 23, size: 576, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1017, file: !1014, line: 24, baseType: !460, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !1014, line: 25, baseType: !1021, size: 512, offset: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !1014, line: 25, size: 512, elements: !1022)
!1022 = !{!1023, !1032}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1021, file: !1014, line: 26, baseType: !1024, size: 480)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 480, elements: !1030)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1014, line: 17, size: 96, elements: !1026)
!1026 = !{!1027, !1028, !1029}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1025, file: !1014, line: 18, baseType: !460, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1025, file: !1014, line: 19, baseType: !460, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1025, file: !1014, line: 20, baseType: !460, size: 32, offset: 64)
!1030 = !{!1031}
!1031 = !DISubrange(count: 5)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !1014, line: 27, baseType: !1033, size: 128)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1021, file: !1014, line: 27, size: 128, elements: !1034)
!1034 = !{!1035, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1033, file: !1014, line: 28, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1033, file: !1014, line: 29, baseType: !1036, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1013, file: !1014, line: 70, baseType: !1017, size: 576, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1013, file: !1014, line: 71, baseType: !1017, size: 576, offset: 1152)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1013, file: !1014, line: 72, baseType: !1012, size: 64, offset: 1728)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1013, file: !1014, line: 73, baseType: !40, size: 32, offset: 1792)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1013, file: !1014, line: 74, baseType: !397, size: 32, offset: 1824)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1013, file: !1014, line: 75, baseType: !406, size: 32, offset: 1856)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1013, file: !1014, line: 76, baseType: !1045, size: 192, offset: 1920)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1046, line: 9, size: 192, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1047 = !{!1048, !1049, !1053, !1054}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1045, file: !1046, line: 10, baseType: !731, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1045, file: !1046, line: 11, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1046, line: 7, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1045, file: !1046, line: 12, baseType: !7, size: 32, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1045, file: !1046, line: 13, baseType: !783, size: 32, offset: 160)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1013, file: !1014, line: 77, baseType: !57, size: 64, offset: 2112)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1013, file: !1014, line: 80, baseType: !929, size: 8, offset: 2176)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1013, file: !1014, line: 88, baseType: !115, size: 128, offset: 2240)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1013, file: !1014, line: 89, baseType: !847, size: 64, offset: 2368)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1013, file: !1014, line: 90, baseType: !870, size: 320, offset: 2432)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1013, file: !1014, line: 97, baseType: !1061, size: 256, offset: 2752)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1062, line: 98, size: 256, elements: !1063)
!1062 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1063 = !{!1064, !1065, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1061, file: !1062, line: 99, baseType: !731, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1061, file: !1062, line: 100, baseType: !115, size: 128, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1061, file: !1062, line: 101, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1062, line: 21, baseType: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1013, file: !1014, line: 99, baseType: !1073, size: 768, offset: 3008)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !30, line: 199, size: 768, elements: !1074)
!1074 = !{!1075, !1080}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1073, file: !30, line: 200, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!40, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1073, file: !30, line: 201, baseType: !1081, size: 704, offset: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !30, line: 193, size: 704, elements: !1082)
!1082 = !{!1083, !1141}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1081, file: !30, line: 195, baseType: !1084, size: 640)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !30, line: 173, size: 640, elements: !1085)
!1085 = !{!1086, !1098, !1110, !1111, !1131, !1132, !1134, !1140}
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !30, line: 174, baseType: !1087, size: 192)
!1087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !30, line: 174, size: 192, elements: !1088)
!1088 = !{!1089, !1097}
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !30, line: 175, baseType: !1090, size: 192)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !30, line: 175, size: 192, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1090, file: !30, line: 176, baseType: !51, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1090, file: !30, line: 177, baseType: !40, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1090, file: !30, line: 178, baseType: !40, size: 32, offset: 96)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1090, file: !30, line: 179, baseType: !40, size: 32, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1090, file: !30, line: 180, baseType: !40, size: 32, offset: 160)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1087, file: !30, line: 182, baseType: !718, size: 128, align: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1084, file: !30, line: 184, baseType: !1099, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1101, line: 26, size: 256, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1100, file: !1101, line: 27, baseType: !7, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1100, file: !1101, line: 28, baseType: !1105, size: 192, offset: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1106, line: 43, size: 192, elements: !1107)
!1106 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1105, file: !1106, line: 44, baseType: !745, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1105, file: !1106, line: 45, baseType: !115, size: 128, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1084, file: !30, line: 185, baseType: !51, size: 64, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1084, file: !30, line: 186, baseType: !1112, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !30, line: 204, size: 960, elements: !1114)
!1114 = !{!1115, !1116, !1120, !1127}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1113, file: !30, line: 205, baseType: !1073, size: 768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1113, file: !30, line: 206, baseType: !1117, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!1079, !1112}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1113, file: !30, line: 207, baseType: !1121, size: 64, offset: 832)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1113, file: !30, line: 209, baseType: !1128, size: 64, offset: 896)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!40, !1124, !51}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1084, file: !30, line: 187, baseType: !1079, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1084, file: !30, line: 188, baseType: !1133, size: 64, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1084, file: !30, line: 189, baseType: !1135, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !30, line: 157, size: 256, elements: !1137)
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1136, file: !30, line: 158, baseType: !862, size: 192, align: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1136, file: !30, line: 159, baseType: !1124, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1084, file: !30, line: 190, baseType: !791, size: 64, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1081, file: !30, line: 196, baseType: !1142, size: 64, offset: 640)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !863, line: 12, size: 64, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1142, file: !863, line: 13, baseType: !867, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1013, file: !1014, line: 100, baseType: !1124, size: 64, offset: 3776)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1013, file: !1014, line: 102, baseType: !1147, size: 64, offset: 3840)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1014, line: 107, size: 1152, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1158}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1148, file: !1014, line: 108, baseType: !795, size: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1148, file: !1014, line: 109, baseType: !1012, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1148, file: !1014, line: 110, baseType: !397, size: 32, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1148, file: !1014, line: 111, baseType: !67, size: 32, offset: 224)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1148, file: !1014, line: 112, baseType: !1155, size: 640, offset: 256)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 640, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 10)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1148, file: !1014, line: 113, baseType: !1159, size: 256, offset: 896)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 256, elements: !800)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1013, file: !1014, line: 103, baseType: !1161, size: 640, offset: 3904)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 640, elements: !1156)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1013, file: !1014, line: 104, baseType: !1163, size: 256, offset: 4544)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !800)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !822, file: !823, line: 139, baseType: !1147, size: 64, offset: 1216)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !822, file: !823, line: 140, baseType: !1166, size: 64, offset: 1280)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !823, line: 25, size: 64, elements: !1168)
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1167, file: !823, line: 26, baseType: !67, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1167, file: !823, line: 27, baseType: !40, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1167, file: !823, line: 28, baseType: !1172, offset: 64)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, elements: !813)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !823, line: 142, baseType: !1174, size: 128, offset: 1344)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !823, line: 142, size: 128, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1174, file: !823, line: 143, baseType: !40, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1174, file: !823, line: 144, baseType: !718, size: 128, align: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !706, file: !218, line: 1013, baseType: !1179, size: 256, offset: 960)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !218, line: 970, size: 256, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1179, file: !218, line: 971, baseType: !57, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1179, file: !218, line: 972, baseType: !7, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1179, file: !218, line: 973, baseType: !7, size: 32, offset: 96)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1179, file: !218, line: 974, baseType: !7, size: 32, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1179, file: !218, line: 975, baseType: !7, size: 32, offset: 160)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1179, file: !218, line: 976, baseType: !59, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !706, file: !218, line: 1014, baseType: !1188, size: 128, offset: 1216)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1189, line: 8, size: 128, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1188, file: !1189, line: 9, baseType: !537, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1188, file: !1189, line: 10, baseType: !426, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !706, file: !218, line: 1015, baseType: !391, size: 64, offset: 1344)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !706, file: !218, line: 1016, baseType: !1195, size: 64, offset: 1408)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !218, line: 1914, size: 2112, elements: !1198)
!1198 = !{!1199, !1200, !1204, !1208, !1212, !1759, !1760, !1766, !1779, !1787, !1791, !1792, !1796, !1797, !1801, !1806, !1807, !1811, !1815, !1821, !1822, !1826, !1827, !1834, !1838, !1842, !1848, !1852, !1894, !1898, !1902, !1903, !1909}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1197, file: !218, line: 1915, baseType: !579, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1197, file: !218, line: 1916, baseType: !1201, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!59, !705, !59, !40}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1197, file: !218, line: 1917, baseType: !1205, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!664, !705, !532, !53, !58}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1197, file: !218, line: 1918, baseType: !1209, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!664, !705, !34, !53, !58}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1197, file: !218, line: 1919, baseType: !1213, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!664, !1216, !1254}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !218, line: 373, size: 384, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1225, !1226, !1227, !1228}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1217, file: !218, line: 374, baseType: !705, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1217, file: !218, line: 375, baseType: !59, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1217, file: !218, line: 376, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1216, !366}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1217, file: !218, line: 377, baseType: !38, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1217, file: !218, line: 378, baseType: !40, size: 32, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1217, file: !218, line: 379, baseType: !111, size: 16, offset: 288)
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !218, line: 380, baseType: !1229, size: 64, offset: 320)
!1229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !218, line: 380, size: 64, elements: !1230)
!1230 = !{!1231, !1250}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1229, file: !218, line: 386, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !348, line: 998, size: 448, elements: !1234)
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1233, file: !348, line: 999, baseType: !367, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1233, file: !348, line: 1000, baseType: !40, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1233, file: !348, line: 1001, baseType: !1238, size: 320, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !73, line: 14, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !73, line: 30, size: 320, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1249}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !73, line: 31, baseType: !7, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1239, file: !73, line: 32, baseType: !38, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1239, file: !73, line: 33, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !73, line: 16, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!40, !1248, !7, !40, !38}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1239, file: !73, line: 34, baseType: !115, size: 128, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1229, file: !218, line: 395, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!664, !38}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1256, line: 41, size: 320, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1268, !1754}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1255, file: !1256, line: 42, baseType: !101, size: 8)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1255, file: !1256, line: 43, baseType: !929, size: 8, offset: 8)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1255, file: !1256, line: 44, baseType: !929, size: 8, offset: 16)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1255, file: !1256, line: 45, baseType: !929, size: 8, offset: 24)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1255, file: !1256, line: 46, baseType: !929, size: 8, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 47, baseType: !1264, size: 64, offset: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 47, size: 64, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1264, file: !1256, line: 48, baseType: !53, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1264, file: !1256, line: 49, baseType: !40, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 61, baseType: !1269, size: 128, offset: 128)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 61, size: 128, elements: !1270)
!1270 = !{!1271, !1277}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1269, file: !1256, line: 67, baseType: !1272, size: 128)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1273, line: 17, size: 128, elements: !1274)
!1273 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1272, file: !1273, line: 19, baseType: !38, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1272, file: !1273, line: 20, baseType: !54, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !1256, line: 68, baseType: !1278, size: 128)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1256, line: 68, size: 128, elements: !1279)
!1279 = !{!1280, !1753}
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1256, line: 69, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1256, line: 69, size: 64, elements: !1282)
!1282 = !{!1283, !1286, !1293, !1744, !1752}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1281, file: !1256, line: 71, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1281, file: !1256, line: 72, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1256, line: 17, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1289, file: !1256, line: 18, baseType: !38, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1289, file: !1256, line: 19, baseType: !53, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1281, file: !1256, line: 73, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1297, line: 31, size: 128, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1298 = !{!1299, !1742, !1743}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1296, file: !1297, line: 32, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !126, line: 74, size: 512, align: 128, elements: !1302)
!1302 = !{!1303, !1304, !1736, !1741}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1301, file: !126, line: 75, baseType: !57, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !126, line: 83, baseType: !1305, size: 320, offset: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !126, line: 83, size: 320, elements: !1306)
!1306 = !{!1307, !1328, !1342, !1346, !1735}
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !126, line: 84, baseType: !1308, size: 320)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !126, line: 84, size: 320, elements: !1309)
!1309 = !{!1310, !1321, !1322, !1327}
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !126, line: 90, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !126, line: 90, size: 128, elements: !1312)
!1312 = !{!1313, !1314, !1319, !1320}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1311, file: !126, line: 91, baseType: !115, size: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1311, file: !126, line: 94, baseType: !1315, size: 128)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1311, file: !126, line: 94, size: 128, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1315, file: !126, line: 96, baseType: !38, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1315, file: !126, line: 98, baseType: !7, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1311, file: !126, line: 102, baseType: !115, size: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1311, file: !126, line: 103, baseType: !115, size: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1308, file: !126, line: 106, baseType: !387, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !126, line: 107, baseType: !1323, size: 64, offset: 192)
!1323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !126, line: 107, size: 64, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1323, file: !126, line: 108, baseType: !57, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1323, file: !126, line: 109, baseType: !57, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1308, file: !126, line: 117, baseType: !57, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !126, line: 119, baseType: !1329, size: 320)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !126, line: 119, size: 320, elements: !1330)
!1330 = !{!1331, !1332, !1335, !1336, !1337}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1329, file: !126, line: 124, baseType: !57, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1329, file: !126, line: 125, baseType: !1333, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !126, line: 125, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1329, file: !126, line: 126, baseType: !57, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1329, file: !126, line: 127, baseType: !57, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !126, line: 128, baseType: !1338, size: 64, offset: 256)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1329, file: !126, line: 128, size: 64, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1338, file: !126, line: 133, baseType: !57, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1338, file: !126, line: 138, baseType: !731, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !126, line: 141, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !126, line: 141, size: 64, elements: !1344)
!1344 = !{!1345}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1343, file: !126, line: 142, baseType: !57, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !126, line: 144, baseType: !1347, size: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !126, line: 144, size: 128, elements: !1348)
!1348 = !{!1349, !1734}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1347, file: !126, line: 146, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !1352)
!1352 = !{!1353, !1362, !1383, !1384, !1385, !1386, !1387, !1716, !1717, !1718}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1351, file: !14, line: 127, baseType: !1354, size: 384)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1354, file: !14, line: 22, baseType: !57, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1354, file: !14, line: 23, baseType: !362, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1354, file: !14, line: 24, baseType: !362, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1354, file: !14, line: 25, baseType: !57, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1354, file: !14, line: 26, baseType: !57, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1354, file: !14, line: 27, baseType: !57, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1351, file: !14, line: 128, baseType: !1363, size: 128, offset: 384)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1364, line: 105, size: 128, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1363, file: !1364, line: 110, baseType: !57, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1363, file: !1364, line: 118, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1364, line: 95, size: 448, elements: !1370)
!1370 = !{!1371, !1372, !1378, !1379, !1380, !1381, !1382}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1369, file: !1364, line: 96, baseType: !731, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1369, file: !1364, line: 97, baseType: !1373, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1364, line: 60, baseType: !1375)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1369, file: !1364, line: 98, baseType: !1373, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1369, file: !1364, line: 99, baseType: !929, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1369, file: !1364, line: 100, baseType: !929, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1369, file: !1364, line: 101, baseType: !718, size: 128, align: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1369, file: !1364, line: 102, baseType: !1377, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1351, file: !14, line: 129, baseType: !1100, size: 256, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1351, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1351, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1351, file: !14, line: 132, baseType: !57, size: 64, offset: 832)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1351, file: !14, line: 133, baseType: !1388, size: 64, offset: 896)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1390)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !1391)
!1391 = !{!1392, !1396, !1712}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1390, file: !14, line: 83, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !1300}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1390, file: !14, line: 89, baseType: !1397, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !126, line: 1184, baseType: !7)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1403, line: 512, size: 896, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1404 = !{!1405, !1679, !1680, !1687, !1694, !1704, !1705, !1706, !1708, !1710}
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !1403, line: 513, baseType: !1406, size: 320)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1402, file: !1403, line: 513, size: 320, elements: !1407)
!1407 = !{!1408, !1674, !1676, !1677, !1678}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1406, file: !1403, line: 514, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !126, line: 625, size: 1344, elements: !1411)
!1411 = !{!1412, !1421, !1579, !1585, !1592, !1593, !1598, !1599, !1604, !1605, !1608, !1667, !1668, !1669, !1670, !1671, !1672}
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !126, line: 628, baseType: !1413, size: 128)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !126, line: 628, size: 128, elements: !1414)
!1414 = !{!1415, !1420}
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !126, line: 629, baseType: !1416, size: 128)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1413, file: !126, line: 629, size: 128, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1416, file: !126, line: 631, baseType: !57, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1416, file: !126, line: 632, baseType: !57, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1413, file: !126, line: 635, baseType: !718, size: 128, align: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1410, file: !126, line: 639, baseType: !1422, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !126, line: 733, size: 10240, elements: !1424)
!1424 = !{!1425, !1577}
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !126, line: 734, baseType: !1426, size: 10240)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1423, file: !126, line: 734, size: 10240, elements: !1427)
!1427 = !{!1428, !1432, !1446, !1450, !1451, !1452, !1453, !1454, !1455, !1464, !1465, !1466, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1505, !1507, !1510, !1557, !1558, !1559, !1562, !1563, !1564, !1567, !1568, !1569, !1575, !1576}
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1426, file: !126, line: 739, baseType: !1429, size: 512, align: 512)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1426, file: !126, line: 739, size: 512, align: 512, elements: !1430)
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1429, file: !126, line: 747, baseType: !67, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1426, file: !126, line: 750, baseType: !1433, size: 128, offset: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1434, line: 218, size: 128, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1435 = !{!1436, !1444, !1445}
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1434, line: 219, baseType: !1437, size: 32)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1434, line: 219, size: 32, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1437, file: !1434, line: 220, baseType: !77, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1437, file: !1434, line: 221, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1434, line: 197, baseType: !1442)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1434, line: 197, elements: !1443)
!1443 = !{}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1433, file: !1434, line: 223, baseType: !7, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1433, file: !1434, line: 224, baseType: !38, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1426, file: !126, line: 752, baseType: !1447, size: 64, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!57, !705, !57, !57, !57, !57}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1426, file: !126, line: 756, baseType: !57, size: 64, offset: 704)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1426, file: !126, line: 757, baseType: !57, size: 64, offset: 768)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1426, file: !126, line: 760, baseType: !57, size: 64, offset: 832)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1426, file: !126, line: 761, baseType: !57, size: 64, offset: 896)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1426, file: !126, line: 763, baseType: !57, size: 64, offset: 960)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1426, file: !126, line: 764, baseType: !1456, size: 64, offset: 1024)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1458, line: 299, baseType: !1459)
!1458 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 299, size: 64, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1459, file: !1458, line: 299, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1463, line: 18, baseType: !57)
!1463 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1426, file: !126, line: 773, baseType: !67, size: 32, offset: 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1426, file: !126, line: 785, baseType: !67, size: 32, offset: 1120)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1426, file: !126, line: 795, baseType: !1467, size: 64, offset: 1152)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !126, line: 726, size: 128, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1468, file: !126, line: 727, baseType: !464, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1468, file: !126, line: 728, baseType: !40, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1426, file: !126, line: 801, baseType: !57, size: 64, offset: 1216)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1426, file: !126, line: 804, baseType: !731, size: 64, offset: 1280)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1426, file: !126, line: 806, baseType: !40, size: 32, offset: 1344)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1426, file: !126, line: 808, baseType: !77, size: 32, offset: 1376)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1426, file: !126, line: 823, baseType: !870, size: 320, offset: 1408)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1426, file: !126, line: 825, baseType: !115, size: 128, offset: 1728)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1426, file: !126, line: 845, baseType: !40, size: 32, offset: 1856)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1426, file: !126, line: 849, baseType: !57, size: 64, offset: 1920)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1426, file: !126, line: 850, baseType: !57, size: 64, offset: 1984)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1426, file: !126, line: 852, baseType: !57, size: 64, offset: 2048)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1426, file: !126, line: 853, baseType: !57, size: 64, offset: 2112)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1426, file: !126, line: 854, baseType: !733, size: 64, offset: 2176)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1426, file: !126, line: 855, baseType: !57, size: 64, offset: 2240)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1426, file: !126, line: 856, baseType: !57, size: 64, offset: 2304)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1426, file: !126, line: 857, baseType: !57, size: 64, offset: 2368)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1426, file: !126, line: 858, baseType: !57, size: 64, offset: 2432)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1426, file: !126, line: 865, baseType: !437, size: 32, offset: 2496)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1426, file: !126, line: 867, baseType: !77, size: 32, offset: 2528)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1426, file: !126, line: 869, baseType: !57, size: 64, offset: 2560)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1426, file: !126, line: 869, baseType: !57, size: 64, offset: 2624)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1426, file: !126, line: 869, baseType: !57, size: 64, offset: 2688)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1426, file: !126, line: 869, baseType: !57, size: 64, offset: 2752)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1426, file: !126, line: 870, baseType: !57, size: 64, offset: 2816)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1426, file: !126, line: 870, baseType: !57, size: 64, offset: 2880)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1426, file: !126, line: 870, baseType: !57, size: 64, offset: 2944)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1426, file: !126, line: 871, baseType: !57, size: 64, offset: 3008)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1426, file: !126, line: 871, baseType: !57, size: 64, offset: 3072)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1426, file: !126, line: 871, baseType: !57, size: 64, offset: 3136)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1426, file: !126, line: 871, baseType: !57, size: 64, offset: 3200)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1426, file: !126, line: 873, baseType: !1502, size: 3328, offset: 3264)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 3328, elements: !1503)
!1503 = !{!1504}
!1504 = !DISubrange(count: 52)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1426, file: !126, line: 875, baseType: !1506, size: 1280, offset: 6592)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 1280, elements: !800)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1426, file: !126, line: 877, baseType: !1508, size: 64, offset: 7872)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !126, line: 877, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1426, file: !126, line: 880, baseType: !1511, size: 1088, offset: 7936)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1512, line: 72, baseType: !1513)
!1512 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1512, line: 23, size: 1088, elements: !1514)
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1522, !1523, !1524, !1525, !1552, !1553, !1554}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1513, file: !1512, line: 28, baseType: !464, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1513, file: !1512, line: 38, baseType: !733, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1513, file: !1512, line: 40, baseType: !57, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1513, file: !1512, line: 43, baseType: !870, size: 320, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1513, file: !1512, line: 44, baseType: !1520, size: 64, offset: 512)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1512, line: 44, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1513, file: !1512, line: 48, baseType: !57, size: 64, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !1512, line: 59, baseType: !740, size: 256, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1513, file: !1512, line: 60, baseType: !38, size: 64, offset: 896)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1513, file: !1512, line: 61, baseType: !1526, size: 64, offset: 960)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1529, line: 13, size: 1216, elements: !1530)
!1529 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1528, file: !1529, line: 14, baseType: !38, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1528, file: !1529, line: 15, baseType: !57, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1528, file: !1529, line: 17, baseType: !57, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1528, file: !1529, line: 17, baseType: !57, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1528, file: !1529, line: 18, baseType: !57, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1528, file: !1529, line: 18, baseType: !57, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1528, file: !1529, line: 19, baseType: !1538, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1528, file: !1529, line: 21, baseType: !366, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1528, file: !1529, line: 23, baseType: !366, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1528, file: !1529, line: 24, baseType: !366, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1528, file: !1529, line: 25, baseType: !366, size: 64, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1528, file: !1529, line: 26, baseType: !366, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1528, file: !1529, line: 27, baseType: !366, size: 64, offset: 768)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1528, file: !1529, line: 28, baseType: !366, size: 64, offset: 832)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1528, file: !1529, line: 29, baseType: !366, size: 64, offset: 896)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1528, file: !1529, line: 30, baseType: !366, size: 64, offset: 960)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1528, file: !1529, line: 31, baseType: !366, size: 64, offset: 1024)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1528, file: !1529, line: 32, baseType: !366, size: 64, offset: 1088)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1528, file: !1529, line: 33, baseType: !366, size: 64, offset: 1152)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1513, file: !1512, line: 63, baseType: !67, size: 32, offset: 1024)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1513, file: !1512, line: 69, baseType: !111, size: 16, offset: 1056)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1513, file: !1512, line: 70, baseType: !1555, size: 16, offset: 1072)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !102, line: 18, baseType: !1556)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !104, line: 23, baseType: !898)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1426, file: !126, line: 882, baseType: !57, size: 64, offset: 9024)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1426, file: !126, line: 885, baseType: !77, size: 32, offset: 9088)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1426, file: !126, line: 886, baseType: !1560, size: 64, offset: 9152)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !126, line: 732, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1426, file: !126, line: 901, baseType: !1012, size: 64, offset: 9216)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1426, file: !126, line: 904, baseType: !705, size: 64, offset: 9280)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1426, file: !126, line: 906, baseType: !1565, size: 64, offset: 9344)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !126, line: 906, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1426, file: !126, line: 930, baseType: !67, size: 32, offset: 9408)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1426, file: !126, line: 933, baseType: !67, size: 32, offset: 9440)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1426, file: !126, line: 935, baseType: !1570, size: 64, offset: 9472)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !247, line: 103, size: 64, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1570, file: !247, line: 104, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !247, line: 101, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1426, file: !126, line: 940, baseType: !731, size: 64, offset: 9536)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1426, file: !126, line: 942, baseType: !1061, size: 256, offset: 9600)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1423, file: !126, line: 986, baseType: !1578, offset: 10240)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, elements: !813)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1410, file: !126, line: 640, baseType: !1580, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1458, line: 297, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1458, line: 297, size: 64, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1581, file: !1458, line: 297, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1463, line: 19, baseType: !57)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !126, line: 646, baseType: !1586, size: 64, offset: 256)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !126, line: 646, size: 64, elements: !1587)
!1587 = !{!1588, !1591}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1586, file: !126, line: 647, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !126, line: 542, baseType: !57)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1586, file: !126, line: 648, baseType: !1590, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1410, file: !126, line: 666, baseType: !40, size: 32, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1410, file: !126, line: 667, baseType: !1594, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !126, line: 579, size: 320, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1595, file: !126, line: 580, baseType: !870, size: 320)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1410, file: !126, line: 670, baseType: !929, size: 8, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1410, file: !126, line: 681, baseType: !1600, size: 256, offset: 512)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1410, file: !126, line: 678, size: 256, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1600, file: !126, line: 679, baseType: !862, size: 192, align: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1600, file: !126, line: 680, baseType: !57, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1410, file: !126, line: 689, baseType: !115, size: 128, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1410, file: !126, line: 691, baseType: !1606, size: 64, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !126, line: 691, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1410, file: !126, line: 694, baseType: !1609, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1403, line: 563, size: 1024, elements: !1612)
!1612 = !{!1613, !1617, !1618, !1622, !1626, !1630, !1631, !1635, !1639, !1643, !1644, !1645, !1649, !1653, !1659, !1663}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1611, file: !1403, line: 564, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !1409}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1611, file: !1403, line: 569, baseType: !1614, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1611, file: !1403, line: 571, baseType: !1619, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!40, !1409, !57}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1611, file: !1403, line: 572, baseType: !1623, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!40, !1409}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1611, file: !1403, line: 578, baseType: !1627, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!40, !1409, !57, !57, !57}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1611, file: !1403, line: 580, baseType: !1397, size: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1611, file: !1403, line: 581, baseType: !1632, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!1400, !1401, !7}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1611, file: !1403, line: 582, baseType: !1636, size: 64, offset: 448)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!1400, !1401, !57, !57}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1611, file: !1403, line: 584, baseType: !1640, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!57, !1409}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1611, file: !1403, line: 588, baseType: !1397, size: 64, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1611, file: !1403, line: 591, baseType: !1397, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1611, file: !1403, line: 597, baseType: !1646, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!40, !1409, !57, !38, !40, !40}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1611, file: !1403, line: 603, baseType: !1650, size: 64, offset: 768)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!34, !1409}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1611, file: !1403, line: 613, baseType: !1654, size: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!40, !1409, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !126, line: 717, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1611, file: !1403, line: 625, baseType: !1660, size: 64, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!1657, !1409, !57}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1611, file: !1403, line: 633, baseType: !1664, size: 64, offset: 960)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1300, !1409, !57}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1410, file: !126, line: 697, baseType: !57, size: 64, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1410, file: !126, line: 699, baseType: !705, size: 64, offset: 1088)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1410, file: !126, line: 700, baseType: !38, size: 64, offset: 1152)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1410, file: !126, line: 711, baseType: !731, size: 64, offset: 1216)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1410, file: !126, line: 717, baseType: !1657, size: 64, offset: 1280)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1410, file: !126, line: 722, baseType: !1673, offset: 1344)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !126, line: 570, elements: !1443)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1406, file: !1403, line: 515, baseType: !1675, size: 32, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !43, line: 154, baseType: !7)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1406, file: !1403, line: 516, baseType: !57, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1406, file: !1403, line: 517, baseType: !57, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1406, file: !1403, line: 518, baseType: !57, size: 64, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1402, file: !1403, line: 520, baseType: !125, size: 32, offset: 320)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1402, file: !1403, line: 522, baseType: !1681, size: 64, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1463, line: 22, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1463, line: 22, size: 64, elements: !1684)
!1684 = !{!1685}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1683, file: !1463, line: 22, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1463, line: 15, baseType: !57)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1402, file: !1403, line: 524, baseType: !1688, size: 64, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1458, line: 372, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 372, size: 64, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1690, file: !1458, line: 372, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1463, line: 16, baseType: !57)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !1403, line: 527, baseType: !1695, size: 64, offset: 512)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !1403, line: 527, size: 64, elements: !1696)
!1696 = !{!1697, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1695, file: !1403, line: 528, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1463, line: 21, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1463, line: 21, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1699, file: !1463, line: 21, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1463, line: 14, baseType: !57)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1695, file: !1403, line: 529, baseType: !1682, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1402, file: !1403, line: 534, baseType: !1300, size: 64, offset: 576)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1402, file: !1403, line: 535, baseType: !1300, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1402, file: !1403, line: 541, baseType: !1707, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1402, file: !1403, line: 545, baseType: !1709, size: 64, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1402, file: !1403, line: 549, baseType: !1711, size: 64, offset: 832)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1458, line: 520, baseType: !1300)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1390, file: !14, line: 100, baseType: !1713, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!40, !1350, !57, !57, !40}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1351, file: !14, line: 134, baseType: !38, size: 64, offset: 960)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1351, file: !14, line: 135, baseType: !40, size: 32, offset: 1024)
!1718 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !14, line: 136, baseType: !1719, size: 128, offset: 1088)
!1719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !14, line: 136, size: 128, elements: !1720)
!1720 = !{!1721, !1727}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1719, file: !14, line: 137, baseType: !1722, size: 128)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1723, line: 6, size: 128, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1722, file: !1723, line: 7, baseType: !464, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1722, file: !1723, line: 8, baseType: !464, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !14, line: 138, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1719, file: !14, line: 138, elements: !1729)
!1729 = !{!1730, !1732}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1728, file: !14, line: 138, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !14, line: 138, elements: !1443)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1728, file: !14, line: 138, baseType: !1733)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1722, elements: !813)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1347, file: !126, line: 147, baseType: !38, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1305, file: !126, line: 161, baseType: !718, size: 128, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !126, line: 164, baseType: !1737, size: 32, offset: 384)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !126, line: 164, size: 32, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1737, file: !126, line: 169, baseType: !67, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1737, file: !126, line: 177, baseType: !7, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1301, file: !126, line: 181, baseType: !67, size: 32, offset: 416)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1296, file: !1297, line: 33, baseType: !7, size: 32, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1296, file: !1297, line: 34, baseType: !7, size: 32, offset: 96)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1281, file: !1256, line: 74, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1747, line: 296, size: 128, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1748 = !{!1749, !1750, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1746, file: !1747, line: 297, baseType: !77, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1746, file: !1747, line: 299, baseType: !1675, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1746, file: !1747, line: 300, baseType: !38, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1281, file: !1256, line: 75, baseType: !38, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1278, file: !1256, line: 77, baseType: !53, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 80, baseType: !1755, size: 64, offset: 256)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 80, size: 64, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1755, file: !1256, line: 81, baseType: !57, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1755, file: !1256, line: 82, baseType: !59, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1197, file: !218, line: 1920, baseType: !1213, size: 64, offset: 320)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1197, file: !218, line: 1921, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!40, !1216, !1764, !7}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !218, line: 53, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1197, file: !218, line: 1923, baseType: !1767, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!40, !705, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !218, line: 1858, size: 128, elements: !1772)
!1772 = !{!1773, !1778}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1771, file: !218, line: 1859, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !218, line: 1855, baseType: !1775)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!929, !1770, !34, !40, !59, !464, !7}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1771, file: !218, line: 1860, baseType: !59, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1197, file: !218, line: 1924, baseType: !1780, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1783, !705, !1785}
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1784, line: 59, baseType: !7)
!1784 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !565, line: 31, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1197, file: !218, line: 1925, baseType: !1788, size: 64, offset: 576)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!366, !705, !7, !57}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1197, file: !218, line: 1926, baseType: !1788, size: 64, offset: 640)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1197, file: !218, line: 1927, baseType: !1793, size: 64, offset: 704)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!40, !705, !1409}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1197, file: !218, line: 1928, baseType: !57, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1197, file: !218, line: 1929, baseType: !1798, size: 64, offset: 832)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!40, !391, !705}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1197, file: !218, line: 1930, baseType: !1802, size: 64, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!40, !705, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !218, line: 1061, baseType: !38)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1197, file: !218, line: 1931, baseType: !1798, size: 64, offset: 960)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1197, file: !218, line: 1932, baseType: !1808, size: 64, offset: 1024)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!40, !705, !59, !59, !40}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1197, file: !218, line: 1933, baseType: !1812, size: 64, offset: 1088)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!40, !40, !705, !40}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1197, file: !218, line: 1934, baseType: !1816, size: 64, offset: 1152)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!40, !705, !40, !1819}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !218, line: 1063, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1197, file: !218, line: 1935, baseType: !1447, size: 64, offset: 1216)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1197, file: !218, line: 1936, baseType: !1823, size: 64, offset: 1280)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!40, !40}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1197, file: !218, line: 1937, baseType: !1816, size: 64, offset: 1344)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1197, file: !218, line: 1938, baseType: !1828, size: 64, offset: 1408)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!664, !1831, !705, !58, !53, !7}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1833, line: 59, flags: DIFlagFwdDecl)
!1833 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1197, file: !218, line: 1939, baseType: !1835, size: 64, offset: 1472)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!664, !705, !58, !1831, !53, !7}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1197, file: !218, line: 1940, baseType: !1839, size: 64, offset: 1536)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !705}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1197, file: !218, line: 1941, baseType: !1843, size: 64, offset: 1600)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!40, !705, !40, !1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1197, file: !218, line: 1942, baseType: !1849, size: 64, offset: 1664)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!366, !705, !40, !59, !59}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1197, file: !218, line: 1944, baseType: !1853, size: 64, offset: 1728)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !1856, !705}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1858, line: 17, size: 960, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1889, !1890, !1893}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1857, file: !1858, line: 18, baseType: !532, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1857, file: !1858, line: 19, baseType: !53, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1857, file: !1858, line: 20, baseType: !53, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1857, file: !1858, line: 21, baseType: !53, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1857, file: !1858, line: 22, baseType: !53, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1857, file: !1858, line: 23, baseType: !59, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1857, file: !1858, line: 24, baseType: !59, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !1858, line: 25, baseType: !740, size: 256, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1857, file: !1858, line: 26, baseType: !1869, size: 64, offset: 704)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1858, line: 32, size: 256, elements: !1872)
!1872 = !{!1873, !1877, !1881, !1885}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1871, file: !1858, line: 33, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!38, !1856, !58}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1871, file: !1858, line: 34, baseType: !1878, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !1856, !38}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1871, file: !1858, line: 35, baseType: !1882, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!38, !1856, !38, !58}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1871, file: !1858, line: 36, baseType: !1886, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!40, !1856, !38}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1857, file: !1858, line: 27, baseType: !40, size: 32, offset: 768)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1857, file: !1858, line: 28, baseType: !1891, size: 64, offset: 832)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1857, file: !1858, line: 29, baseType: !38, size: 64, offset: 896)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1197, file: !218, line: 1948, baseType: !1895, size: 64, offset: 1792)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!664, !705, !59, !705, !59, !53, !7}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1197, file: !218, line: 1950, baseType: !1899, size: 64, offset: 1856)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!59, !705, !59, !705, !59, !59, !7}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1197, file: !218, line: 1953, baseType: !1808, size: 64, offset: 1920)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1197, file: !218, line: 1954, baseType: !1904, size: 64, offset: 1984)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!40, !1907, !7}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !218, line: 1911, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1197, file: !218, line: 1955, baseType: !1910, size: 64, offset: 2048)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!40, !1907, !1764, !7}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !706, file: !218, line: 1018, baseType: !464, size: 64, offset: 1472)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !706, file: !218, line: 1020, baseType: !38, size: 64, offset: 1536)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !706, file: !218, line: 1023, baseType: !38, size: 64, offset: 1600)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !706, file: !218, line: 1027, baseType: !1917, size: 64, offset: 1664)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !706, file: !218, line: 1029, baseType: !387, size: 64, offset: 1728)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !706, file: !218, line: 1030, baseType: !1920, size: 32, offset: 1792)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1921, line: 8, baseType: !460)
!1921 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !706, file: !218, line: 1031, baseType: !1920, size: 32, offset: 1824)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !692, file: !658, line: 182, baseType: !702, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !692, file: !658, line: 184, baseType: !1925, size: 64, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!40, !705, !598, !691, !1409}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !680, file: !658, line: 90, baseType: !1929, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !680, file: !658, line: 91, baseType: !1931, size: 64, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !648, file: !593, line: 120, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1936, !616}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1938)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !187, line: 39, size: 384, elements: !1939)
!1939 = !{!1940, !1941, !1945, !1949, !1955, !1959}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1938, file: !187, line: 40, baseType: !186, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1938, file: !187, line: 41, baseType: !1942, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!929}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1938, file: !187, line: 42, baseType: !1946, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!38}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1938, file: !187, line: 43, baseType: !1950, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1538, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !187, line: 19, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1938, file: !187, line: 44, baseType: !1956, size: 64, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1538}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1938, file: !187, line: 45, baseType: !1960, size: 64, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !38}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !648, file: !593, line: 121, baseType: !1964, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!1538, !616}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !648, file: !593, line: 122, baseType: !1968, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !616, !1125, !1126}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !592, file: !593, line: 70, baseType: !1972, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !565, line: 190, size: 1152, elements: !1974)
!1974 = !{!1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !2054, !2055, !2056, !2057, !2058, !2061}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1973, file: !565, line: 191, baseType: !67, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1973, file: !565, line: 192, baseType: !67, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1973, file: !565, line: 202, baseType: !1972, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1973, file: !565, line: 203, baseType: !34, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1973, file: !565, line: 205, baseType: !862, size: 192, align: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1973, file: !565, line: 207, baseType: !1538, size: 64, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1973, file: !565, line: 208, baseType: !7, size: 32, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1973, file: !565, line: 209, baseType: !1983, size: 256, offset: 512)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1973, file: !565, line: 209, size: 256, elements: !1984)
!1984 = !{!1985, !1994, !1998}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1983, file: !565, line: 210, baseType: !1986, size: 256)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !565, line: 153, size: 256, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1993}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1986, file: !565, line: 154, baseType: !57, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1986, file: !565, line: 156, baseType: !1142, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1986, file: !565, line: 162, baseType: !1991, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !565, line: 162, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1986, file: !565, line: 167, baseType: !57, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1983, file: !565, line: 211, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !565, line: 170, size: 64, elements: !1996)
!1996 = !{!1997}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1995, file: !565, line: 171, baseType: !1972, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1983, file: !565, line: 212, baseType: !1999, size: 256)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !565, line: 174, size: 256, elements: !2000)
!2000 = !{!2001, !2049, !2052, !2053}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1999, file: !565, line: 175, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !565, line: 271, size: 768, elements: !2005)
!2005 = !{!2006, !2026, !2030, !2031, !2032, !2033, !2034, !2038, !2039, !2040, !2041, !2045}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2004, file: !565, line: 276, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!40, !2010}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !565, line: 251, size: 1216, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2011, file: !565, line: 253, baseType: !1972, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2011, file: !565, line: 254, baseType: !705, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2011, file: !565, line: 255, baseType: !1856, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2011, file: !565, line: 256, baseType: !38, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2011, file: !565, line: 259, baseType: !740, size: 256, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2011, file: !565, line: 260, baseType: !740, size: 256, offset: 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2011, file: !565, line: 261, baseType: !40, size: 32, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2011, file: !565, line: 262, baseType: !115, size: 128, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2011, file: !565, line: 263, baseType: !532, size: 64, offset: 960)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2011, file: !565, line: 265, baseType: !53, size: 64, offset: 1024)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2011, file: !565, line: 266, baseType: !929, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2011, file: !565, line: 267, baseType: !929, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2011, file: !565, line: 268, baseType: !1609, size: 64, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2004, file: !565, line: 277, baseType: !2027, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !2010}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2004, file: !565, line: 290, baseType: !1886, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2004, file: !565, line: 292, baseType: !1874, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2004, file: !565, line: 293, baseType: !1882, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2004, file: !565, line: 294, baseType: !1878, size: 64, offset: 320)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2004, file: !565, line: 296, baseType: !2035, size: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!664, !2010, !532, !53, !59}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2004, file: !565, line: 306, baseType: !53, size: 64, offset: 448)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2004, file: !565, line: 313, baseType: !929, size: 8, offset: 512)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2004, file: !565, line: 314, baseType: !2035, size: 64, offset: 576)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2004, file: !565, line: 317, baseType: !2042, size: 64, offset: 640)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!1783, !2010, !1785}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2004, file: !565, line: 320, baseType: !2046, size: 64, offset: 704)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!40, !2010, !1409}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1999, file: !565, line: 176, baseType: !2050, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !565, line: 35, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1999, file: !565, line: 177, baseType: !59, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1999, file: !565, line: 178, baseType: !1972, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1973, file: !565, line: 215, baseType: !38, size: 64, offset: 768)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1973, file: !565, line: 221, baseType: !464, size: 64, offset: 832)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1973, file: !565, line: 223, baseType: !44, size: 16, offset: 896)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1973, file: !565, line: 224, baseType: !42, size: 16, offset: 912)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1973, file: !565, line: 225, baseType: !2059, size: 64, offset: 960)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !565, line: 36, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1973, file: !565, line: 227, baseType: !718, size: 128, align: 64, offset: 1024)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !592, file: !593, line: 71, baseType: !2063, size: 32, offset: 448)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2064, line: 19, size: 32, elements: !2065)
!2064 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2065 = !{!2066}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2063, file: !2064, line: 20, baseType: !783, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !592, file: !593, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !592, file: !593, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !592, file: !593, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !592, file: !593, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !592, file: !593, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !589, file: !6, line: 47, baseType: !579, size: 64, offset: 512)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !589, file: !6, line: 48, baseType: !598, size: 64, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !589, file: !6, line: 49, baseType: !2075, size: 64, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !589, file: !6, line: 50, baseType: !1099, size: 64, offset: 704)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !580, file: !6, line: 418, baseType: !2079, size: 64, offset: 1408)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2081)
!2081 = !{!2082, !2083, !2088, !2092, !2096, !2100}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2080, file: !6, line: 54, baseType: !668, size: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2080, file: !6, line: 55, baseType: !2084, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!664, !2079, !2087, !532}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2080, file: !6, line: 57, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!664, !2079, !2087, !34, !53}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2080, file: !6, line: 59, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !579, !34}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2080, file: !6, line: 60, baseType: !2097, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!40, !579}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2080, file: !6, line: 61, baseType: !2101, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !579}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !580, file: !6, line: 419, baseType: !34, size: 64, offset: 1472)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !580, file: !6, line: 420, baseType: !34, size: 64, offset: 1536)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !580, file: !6, line: 421, baseType: !598, size: 64, offset: 1600)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !580, file: !6, line: 424, baseType: !2108, size: 64, offset: 1664)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !580, file: !6, line: 425, baseType: !2112, size: 64, offset: 1728)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !580, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !580, file: !6, line: 435, baseType: !740, size: 256, offset: 1856)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !580, file: !6, line: 437, baseType: !2117, size: 64, offset: 2112)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2119, line: 69, size: 320, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2120 = !{!2121, !2122, !2123, !2140, !2142, !2145, !2146}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2118, file: !2119, line: 70, baseType: !34, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2118, file: !2119, line: 71, baseType: !579, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2118, file: !2119, line: 72, baseType: !2124, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2126)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2119, line: 47, size: 256, elements: !2127)
!2127 = !{!2128, !2129, !2135, !2139}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2126, file: !2119, line: 49, baseType: !7, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2126, file: !2119, line: 51, baseType: !2130, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!40, !34, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2118)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2126, file: !2119, line: 53, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!40, !532, !2133}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2126, file: !2119, line: 55, baseType: !1960, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2118, file: !2119, line: 73, baseType: !2141, size: 16, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2118, file: !2119, line: 74, baseType: !2143, size: 8, offset: 208)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !102, line: 16, baseType: !2144)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !104, line: 20, baseType: !260)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2118, file: !2119, line: 75, baseType: !101, size: 8, offset: 216)
!2146 = !DIDerivedType(tag: DW_TAG_member, scope: !2118, file: !2119, line: 76, baseType: !2147, size: 64, offset: 256)
!2147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2118, file: !2119, line: 76, size: 64, elements: !2148)
!2148 = !{!2149, !2150, !2157}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2147, file: !2119, line: 77, baseType: !38, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2147, file: !2119, line: 78, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2119, line: 86, size: 128, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2153, file: !2119, line: 87, baseType: !7, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2153, file: !2119, line: 88, baseType: !532, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2147, file: !2119, line: 79, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2160)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2119, line: 92, size: 256, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2166, !2167}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2160, file: !2119, line: 94, baseType: !7, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2160, file: !2119, line: 95, baseType: !7, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2160, file: !2119, line: 96, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2160, file: !2119, line: 97, baseType: !2124, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2160, file: !2119, line: 98, baseType: !38, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !580, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !580, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !580, file: !6, line: 442, baseType: !2108, size: 64, offset: 2240)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !580, file: !6, line: 443, baseType: !2112, size: 64, offset: 2304)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !580, file: !6, line: 444, baseType: !929, size: 8, offset: 2368)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !580, file: !6, line: 451, baseType: !929, size: 8, offset: 2376)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !580, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !580, file: !6, line: 455, baseType: !2176, size: 64, offset: 2432)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2178, line: 23, size: 96, elements: !2179)
!2178 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2179 = !{!2180, !2181, !2182}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2177, file: !2178, line: 24, baseType: !40, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2177, file: !2178, line: 24, baseType: !40, size: 32, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2177, file: !2178, line: 24, baseType: !40, size: 32, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !580, file: !6, line: 458, baseType: !2184, size: 64, offset: 2496)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!40}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !580, file: !6, line: 460, baseType: !2188, size: 4032, align: 512, offset: 2560)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2189, size: 4032, elements: !2205)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2190)
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2189, file: !6, line: 363, baseType: !38, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2189, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2189, file: !6, line: 367, baseType: !2194, size: 448, offset: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2194, file: !6, line: 320, baseType: !579, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2194, file: !6, line: 321, baseType: !2198, size: 384, offset: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2199, line: 40, size: 384, elements: !2200)
!2199 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2200 = !{!2201}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2198, file: !2199, line: 41, baseType: !2202, size: 384, align: 64)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 384, align: 64, elements: !2203)
!2203 = !{!2204}
!2204 = !DISubrange(count: 2)
!2205 = !{!2206}
!2206 = !DISubrange(count: 7)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !580, file: !6, line: 463, baseType: !2208, size: 192, offset: 6592)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2209, line: 8, size: 192, elements: !2210)
!2209 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2210 = !{!2211, !2212, !2214}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2208, file: !2209, line: 10, baseType: !7, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2208, file: !2209, line: 11, baseType: !2213, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2208, file: !2209, line: 12, baseType: !2215, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2217, line: 59, size: 48, elements: !2218)
!2217 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2216, file: !2217, line: 60, baseType: !1555, size: 16)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2216, file: !2217, line: 61, baseType: !1555, size: 16, offset: 16)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2216, file: !2217, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2216, file: !2217, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2216, file: !2217, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2216, file: !2217, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !580, file: !6, line: 465, baseType: !57, size: 64, offset: 6784)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !580, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !580, file: !6, line: 470, baseType: !115, size: 128, offset: 6912)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !580, file: !6, line: 471, baseType: !2229, size: 64, offset: 7040)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2231, line: 33, size: 96, elements: !2232)
!2231 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2232 = !{!2233, !2234, !2235, !2236}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2230, file: !2231, line: 37, baseType: !40, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2230, file: !2231, line: 43, baseType: !40, size: 32, offset: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2230, file: !2231, line: 45, baseType: !44, size: 16, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2230, file: !2231, line: 47, baseType: !44, size: 16, offset: 80)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !580, file: !6, line: 476, baseType: !2238, size: 64, offset: 7104)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2240)
!2240 = !{!2241, !2257, !2258, !2259}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2239, file: !6, line: 379, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2244, line: 204, baseType: !2245)
!2244 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2244, line: 197, size: 192, elements: !2246)
!2246 = !{!2247, !2249, !2250, !2251, !2253, !2255}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2245, file: !2244, line: 198, baseType: !2248, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2244, line: 21, baseType: !461)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2245, file: !2244, line: 199, baseType: !105, size: 8, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2245, file: !2244, line: 200, baseType: !105, size: 8, offset: 40)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2245, file: !2244, line: 201, baseType: !2252, size: 16, offset: 48)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2244, line: 17, baseType: !112)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2245, file: !2244, line: 202, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2244, line: 16, baseType: !465)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2245, file: !2244, line: 203, baseType: !2256, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2244, line: 22, baseType: !465)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2239, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2239, file: !6, line: 381, baseType: !532, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2239, file: !6, line: 382, baseType: !532, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !580, file: !6, line: 477, baseType: !2239, size: 256, offset: 7168)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !580, file: !6, line: 480, baseType: !2262, size: 64, offset: 7424)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !580, file: !6, line: 483, baseType: !2265, size: 64, offset: 7488)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !580, file: !6, line: 488, baseType: !532, size: 64, offset: 7552)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !580, file: !6, line: 492, baseType: !38, size: 64, offset: 7616)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !580, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !580, file: !6, line: 495, baseType: !38, size: 64, offset: 7744)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !580, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !580, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !580, file: !6, line: 500, baseType: !2274, size: 64, offset: 7872)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2276, line: 45, baseType: !2277)
!2276 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !580, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !580, file: !6, line: 504, baseType: !2280, size: 64, offset: 8000)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2283, line: 96, size: 192, elements: !2284)
!2283 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2284 = !{!2285, !2286, !2339, !2342}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2282, file: !2283, line: 97, baseType: !7, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2282, file: !2283, line: 98, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2283, line: 24, size: 3072, elements: !2289)
!2289 = !{!2290, !2292, !2293, !2294, !2295, !2308, !2309, !2310, !2311, !2323, !2324, !2325, !2336, !2337, !2338}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2288, file: !2283, line: 26, baseType: !2291, size: 128)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 128, elements: !2203)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2288, file: !2283, line: 27, baseType: !2291, size: 128, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2288, file: !2283, line: 28, baseType: !40, size: 32, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2288, file: !2283, line: 31, baseType: !77, size: 32, align: 512, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2288, file: !2283, line: 32, baseType: !2296, size: 960, offset: 576)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2297, line: 206, size: 960, elements: !2298)
!2297 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2298 = !{!2299, !2300, !2303, !2305, !2306, !2307}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2296, file: !2297, line: 207, baseType: !721, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2296, file: !2297, line: 208, baseType: !2301, size: 256, offset: 64)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2302, size: 256, elements: !800)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2296, file: !2297, line: 209, baseType: !2304, size: 256, offset: 320)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 256, elements: !800)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2296, file: !2297, line: 213, baseType: !366, size: 64, offset: 576)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2296, file: !2297, line: 215, baseType: !1163, size: 256, offset: 640)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2296, file: !2297, line: 216, baseType: !101, size: 8, offset: 896)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2288, file: !2283, line: 33, baseType: !57, size: 64, offset: 1536)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2288, file: !2283, line: 34, baseType: !57, size: 64, offset: 1600)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2288, file: !2283, line: 35, baseType: !929, size: 8, offset: 1664)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2288, file: !2283, line: 36, baseType: !2312, size: 320, offset: 1728)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2313, line: 11, size: 320, elements: !2314)
!2313 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2314 = !{!2315, !2316, !2317, !2322}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2312, file: !2313, line: 16, baseType: !795, size: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2312, file: !2313, line: 17, baseType: !57, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2312, file: !2313, line: 18, baseType: !2318, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !2313, line: 19, baseType: !460, size: 32, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2288, file: !2283, line: 37, baseType: !1061, size: 256, offset: 2048)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2288, file: !2283, line: 38, baseType: !718, size: 128, align: 64, offset: 2304)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2288, file: !2283, line: 39, baseType: !2326, size: 64, offset: 2432)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2283, line: 49, size: 768, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2327, file: !2283, line: 50, baseType: !77, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2327, file: !2283, line: 51, baseType: !2304, size: 256, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2327, file: !2283, line: 53, baseType: !2304, size: 256, offset: 320)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2327, file: !2283, line: 54, baseType: !57, size: 64, offset: 576)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2327, file: !2283, line: 55, baseType: !2326, size: 64, offset: 640)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2327, file: !2283, line: 56, baseType: !40, size: 32, offset: 704)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2327, file: !2283, line: 57, baseType: !40, size: 32, offset: 736)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2288, file: !2283, line: 40, baseType: !57, size: 64, offset: 2496)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2288, file: !2283, line: 42, baseType: !40, size: 32, offset: 2560)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2288, file: !2283, line: 43, baseType: !2281, size: 64, offset: 2624)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2282, file: !2283, line: 99, baseType: !2340, offset: 128)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2341, line: 211, elements: !1443)
!2341 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2282, file: !2283, line: 100, baseType: !2343, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2283, line: 63, size: 3008, elements: !2345)
!2345 = !{!2346, !2347, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2377}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2344, file: !2283, line: 64, baseType: !2326, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2344, file: !2283, line: 65, baseType: !2348, size: 192, offset: 64)
!2348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2326, size: 192, elements: !633)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2344, file: !2283, line: 67, baseType: !40, size: 32, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2344, file: !2283, line: 68, baseType: !740, size: 256, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2344, file: !2283, line: 69, baseType: !77, size: 32, offset: 576)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2344, file: !2283, line: 70, baseType: !740, size: 256, offset: 640)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2344, file: !2283, line: 71, baseType: !57, size: 64, offset: 896)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2344, file: !2283, line: 72, baseType: !57, size: 64, offset: 960)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2344, file: !2283, line: 73, baseType: !57, size: 64, offset: 1024)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2344, file: !2283, line: 74, baseType: !57, size: 64, offset: 1088)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2344, file: !2283, line: 75, baseType: !57, size: 64, offset: 1152)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2344, file: !2283, line: 76, baseType: !57, size: 64, offset: 1216)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2344, file: !2283, line: 77, baseType: !57, size: 64, offset: 1280)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2344, file: !2283, line: 78, baseType: !57, size: 64, offset: 1344)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2344, file: !2283, line: 79, baseType: !929, size: 8, offset: 1408)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2344, file: !2283, line: 80, baseType: !57, size: 64, offset: 1472)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2344, file: !2283, line: 81, baseType: !740, size: 256, offset: 1536)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2344, file: !2283, line: 82, baseType: !1100, size: 256, offset: 1792)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2344, file: !2283, line: 84, baseType: !67, size: 32, offset: 2048)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2344, file: !2283, line: 87, baseType: !57, size: 64, offset: 2112)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2344, file: !2283, line: 88, baseType: !57, size: 64, offset: 2176)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2344, file: !2283, line: 89, baseType: !2369, size: 704, offset: 2240)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1062, line: 111, size: 704, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2376}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2369, file: !1062, line: 112, baseType: !1061, size: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2369, file: !1062, line: 113, baseType: !2312, size: 320, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2369, file: !1062, line: 116, baseType: !2374, size: 64, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1062, line: 18, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2369, file: !1062, line: 117, baseType: !40, size: 32, offset: 640)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2344, file: !2283, line: 90, baseType: !2281, size: 64, offset: 2944)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !580, file: !6, line: 515, baseType: !2379, size: 64, offset: 8064)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2381, line: 117, size: 128, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2382 = !{!2383, !2384, !2385}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2380, file: !2381, line: 118, baseType: !855, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2380, file: !2381, line: 119, baseType: !855, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2380, file: !2381, line: 120, baseType: !366, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !580, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !580, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !580, file: !6, line: 520, baseType: !2389, size: 64, offset: 8192)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !580, file: !6, line: 523, baseType: !2391, size: 64, offset: 8256)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !580, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !580, file: !6, line: 525, baseType: !2396, size: 64, offset: 8384)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !580, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !580, file: !6, line: 533, baseType: !38, size: 64, offset: 8512)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !580, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !580, file: !6, line: 535, baseType: !363, size: 64, offset: 8640)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !580, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !580, file: !6, line: 539, baseType: !40, size: 32, offset: 8736)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !580, file: !6, line: 540, baseType: !2406, size: 64, offset: 8768)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2408, line: 32, size: 64, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2409 = !{!2410, !2411}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2407, file: !2408, line: 33, baseType: !855, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2407, file: !2408, line: 34, baseType: !855, size: 32, offset: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !580, file: !6, line: 563, baseType: !115, size: 128, offset: 8832)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !580, file: !6, line: 565, baseType: !115, size: 128, offset: 8960)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !580, file: !6, line: 568, baseType: !2415, size: 64, offset: 9088)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !580, file: !6, line: 570, baseType: !67, size: 32, offset: 9152)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !555, file: !218, line: 2382, baseType: !554, size: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !555, file: !218, line: 2383, baseType: !791, size: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !555, file: !218, line: 2385, baseType: !2422, offset: 576)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2341, line: 206, elements: !1443)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !555, file: !218, line: 2386, baseType: !2422, offset: 576)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !555, file: !218, line: 2387, baseType: !2422, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !555, file: !218, line: 2388, baseType: !2426, offset: 576)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, elements: !633)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !555, file: !218, line: 2390, baseType: !2422, offset: 576)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !555, file: !218, line: 2391, baseType: !2422, offset: 576)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !555, file: !218, line: 2392, baseType: !2422, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !555, file: !218, line: 2393, baseType: !2422, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !544, file: !218, line: 1197, baseType: !2432, size: 64, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2434)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !218, line: 2057, size: 1664, elements: !2435)
!2435 = !{!2436, !2440, !2444, !2445, !2449, !2473, !2477, !2478, !2479, !2483, !2487, !2491, !2492, !2493, !2499, !2503, !2504, !2508, !2509, !2510, !2511, !2515, !2519, !2566, !2581, !2582}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2434, file: !218, line: 2058, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!391, !543}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2434, file: !218, line: 2059, baseType: !2441, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !391}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2434, file: !218, line: 2060, baseType: !2441, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2434, file: !218, line: 2062, baseType: !2446, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !391, !40}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2434, file: !218, line: 2063, baseType: !2450, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!40, !391, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !142, line: 42, size: 384, elements: !2455)
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2454, file: !142, line: 43, baseType: !366, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2454, file: !142, line: 45, baseType: !366, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2454, file: !142, line: 52, baseType: !59, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2454, file: !142, line: 53, baseType: !59, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2454, file: !142, line: 55, baseType: !141, size: 32, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2454, file: !142, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2454, file: !142, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2454, file: !142, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2454, file: !142, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2454, file: !142, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2454, file: !142, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2454, file: !142, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2454, file: !142, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2454, file: !142, line: 78, baseType: !2470, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !142, line: 78, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2434, file: !218, line: 2064, baseType: !2474, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!40, !391}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2434, file: !218, line: 2065, baseType: !2441, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2434, file: !218, line: 2066, baseType: !575, size: 64, offset: 448)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2434, file: !218, line: 2067, baseType: !2480, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!40, !543, !40}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2434, file: !218, line: 2068, baseType: !2484, size: 64, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!40, !543, !217}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2434, file: !218, line: 2069, baseType: !2488, size: 64, offset: 640)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!40, !543}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2434, file: !218, line: 2070, baseType: !2484, size: 64, offset: 704)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2434, file: !218, line: 2071, baseType: !2488, size: 64, offset: 768)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2434, file: !218, line: 2072, baseType: !2494, size: 64, offset: 832)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!40, !426, !2497}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !218, line: 62, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2434, file: !218, line: 2073, baseType: !2500, size: 64, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!40, !543, !2213, !532}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2434, file: !218, line: 2074, baseType: !575, size: 64, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2434, file: !218, line: 2076, baseType: !2505, size: 64, offset: 1024)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!40, !1856, !426}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2434, file: !218, line: 2077, baseType: !2505, size: 64, offset: 1088)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2434, file: !218, line: 2078, baseType: !2505, size: 64, offset: 1152)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2434, file: !218, line: 2079, baseType: !2505, size: 64, offset: 1216)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2434, file: !218, line: 2081, baseType: !2512, size: 64, offset: 1280)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!664, !543, !40, !532, !53, !59}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2434, file: !218, line: 2082, baseType: !2516, size: 64, offset: 1344)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!664, !543, !40, !34, !53, !59}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2434, file: !218, line: 2083, baseType: !2520, size: 64, offset: 1408)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!2523, !391}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !223, line: 296, size: 1664, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2551, !2552, !2553}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2525, file: !223, line: 297, baseType: !795, size: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2525, file: !223, line: 298, baseType: !115, size: 128, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2525, file: !223, line: 299, baseType: !115, size: 128, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2525, file: !223, line: 300, baseType: !115, size: 128, offset: 384)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2525, file: !223, line: 301, baseType: !740, size: 256, offset: 512)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2525, file: !223, line: 302, baseType: !77, size: 32, offset: 768)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2525, file: !223, line: 303, baseType: !67, size: 32, offset: 800)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2525, file: !223, line: 304, baseType: !543, size: 64, offset: 832)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2525, file: !223, line: 305, baseType: !2536, size: 64, offset: 896)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !223, line: 68, size: 64, elements: !2537)
!2537 = !{!2538, !2550}
!2538 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !223, line: 69, baseType: !2539, size: 32)
!2539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2536, file: !223, line: 69, size: 32, elements: !2540)
!2540 = !{!2541, !2542, !2543}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2539, file: !223, line: 70, baseType: !397, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2539, file: !223, line: 71, baseType: !406, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2539, file: !223, line: 72, baseType: !2544, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2545, line: 24, baseType: !2546)
!2545 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2545, line: 22, size: 32, elements: !2547)
!2547 = !{!2548}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2546, file: !2545, line: 23, baseType: !2549, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2545, line: 20, baseType: !403)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2536, file: !223, line: 74, baseType: !222, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2525, file: !223, line: 306, baseType: !59, size: 64, offset: 960)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2525, file: !223, line: 307, baseType: !57, size: 64, offset: 1024)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2525, file: !223, line: 308, baseType: !2554, size: 576, offset: 1088)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !223, line: 205, size: 576, elements: !2555)
!2555 = !{!2556, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2554, file: !223, line: 206, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !223, line: 66, baseType: !61)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2554, file: !223, line: 207, baseType: !2557, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2554, file: !223, line: 208, baseType: !2557, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2554, file: !223, line: 209, baseType: !2557, size: 64, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2554, file: !223, line: 210, baseType: !2557, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2554, file: !223, line: 211, baseType: !2557, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2554, file: !223, line: 212, baseType: !2557, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2554, file: !223, line: 213, baseType: !886, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2554, file: !223, line: 214, baseType: !886, size: 64, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2434, file: !218, line: 2085, baseType: !2567, size: 64, offset: 1472)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!366, !543, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2572, line: 15, size: 256, elements: !2573)
!2572 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2573 = !{!2574, !2575, !2576, !2577, !2578}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2571, file: !2572, line: 16, baseType: !1675, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2571, file: !2572, line: 19, baseType: !40, size: 32, offset: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2571, file: !2572, line: 26, baseType: !57, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2571, file: !2572, line: 33, baseType: !57, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2571, file: !2572, line: 36, baseType: !2579, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !126, line: 33, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2434, file: !218, line: 2087, baseType: !2567, size: 64, offset: 1536)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2434, file: !218, line: 2089, baseType: !575, size: 64, offset: 1600)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !544, file: !218, line: 1198, baseType: !2584, size: 64, offset: 448)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2586)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !223, line: 324, size: 704, elements: !2587)
!2587 = !{!2588, !2592, !2596, !2600, !2601, !2602, !2603, !2604, !2609, !2614, !2618}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2586, file: !223, line: 325, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!40, !2524}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2586, file: !223, line: 326, baseType: !2593, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!2524, !543, !40}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2586, file: !223, line: 327, baseType: !2597, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !2524}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2586, file: !223, line: 328, baseType: !2589, size: 64, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2586, file: !223, line: 329, baseType: !2589, size: 64, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2586, file: !223, line: 330, baseType: !2589, size: 64, offset: 320)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2586, file: !223, line: 331, baseType: !2480, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2586, file: !223, line: 334, baseType: !2605, size: 64, offset: 448)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!2608, !391}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2586, file: !223, line: 335, baseType: !2610, size: 64, offset: 512)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!40, !391, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2586, file: !223, line: 337, baseType: !2615, size: 64, offset: 576)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!40, !391, !2608}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2586, file: !223, line: 339, baseType: !2619, size: 64, offset: 640)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!40, !543, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !544, file: !218, line: 1199, baseType: !2624, size: 64, offset: 512)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !223, line: 430, size: 704, elements: !2627)
!2627 = !{!2628, !2634, !2635, !2639, !2640, !2641, !2656, !2679, !2683, !2684, !2707}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2626, file: !223, line: 431, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!40, !543, !40, !40, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2626, file: !223, line: 432, baseType: !2480, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2626, file: !223, line: 433, baseType: !2636, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!40, !543, !7}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2626, file: !223, line: 434, baseType: !2636, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2626, file: !223, line: 435, baseType: !2480, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2626, file: !223, line: 436, baseType: !2642, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!40, !543, !40, !2645}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !223, line: 417, size: 256, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2646, file: !223, line: 418, baseType: !40, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2646, file: !223, line: 419, baseType: !7, size: 32, offset: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2646, file: !223, line: 420, baseType: !7, size: 32, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2646, file: !223, line: 422, baseType: !7, size: 32, offset: 96)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2646, file: !223, line: 423, baseType: !7, size: 32, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2646, file: !223, line: 424, baseType: !7, size: 32, offset: 160)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2646, file: !223, line: 425, baseType: !7, size: 32, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2646, file: !223, line: 426, baseType: !7, size: 32, offset: 224)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2626, file: !223, line: 437, baseType: !2657, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!40, !543, !2536, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !223, line: 345, size: 960, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2661, file: !223, line: 346, baseType: !40, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2661, file: !223, line: 347, baseType: !464, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2661, file: !223, line: 348, baseType: !464, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2661, file: !223, line: 349, baseType: !464, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2661, file: !223, line: 350, baseType: !464, size: 64, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2661, file: !223, line: 351, baseType: !464, size: 64, offset: 320)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2661, file: !223, line: 352, baseType: !464, size: 64, offset: 384)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2661, file: !223, line: 353, baseType: !737, size: 64, offset: 448)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2661, file: !223, line: 355, baseType: !737, size: 64, offset: 512)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2661, file: !223, line: 356, baseType: !40, size: 32, offset: 576)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2661, file: !223, line: 357, baseType: !40, size: 32, offset: 608)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2661, file: !223, line: 358, baseType: !464, size: 64, offset: 640)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2661, file: !223, line: 359, baseType: !464, size: 64, offset: 704)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2661, file: !223, line: 360, baseType: !464, size: 64, offset: 768)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2661, file: !223, line: 361, baseType: !737, size: 64, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2661, file: !223, line: 362, baseType: !40, size: 32, offset: 896)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2626, file: !223, line: 438, baseType: !2680, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!40, !543, !2622, !2660}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2626, file: !223, line: 440, baseType: !2657, size: 64, offset: 512)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2626, file: !223, line: 441, baseType: !2685, size: 64, offset: 576)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!40, !543, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !223, line: 411, size: 1408, elements: !2690)
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2689, file: !223, line: 412, baseType: !7, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2689, file: !223, line: 413, baseType: !2693, size: 1344, offset: 64)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2694, size: 1344, elements: !633)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !223, line: 397, size: 448, elements: !2695)
!2695 = !{!2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2706}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2694, file: !223, line: 398, baseType: !7, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2694, file: !223, line: 399, baseType: !7, size: 32, offset: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2694, file: !223, line: 401, baseType: !7, size: 32, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2694, file: !223, line: 402, baseType: !7, size: 32, offset: 96)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2694, file: !223, line: 403, baseType: !7, size: 32, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2694, file: !223, line: 404, baseType: !7, size: 32, offset: 160)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2694, file: !223, line: 405, baseType: !7, size: 32, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2694, file: !223, line: 406, baseType: !466, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2694, file: !223, line: 407, baseType: !2705, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !43, line: 132, baseType: !464)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2694, file: !223, line: 408, baseType: !2705, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2626, file: !223, line: 442, baseType: !2636, size: 64, offset: 640)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !544, file: !218, line: 1200, baseType: !2709, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2711)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !218, line: 54, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !544, file: !218, line: 1201, baseType: !57, size: 64, offset: 640)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !544, file: !218, line: 1202, baseType: !57, size: 64, offset: 704)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !544, file: !218, line: 1203, baseType: !57, size: 64, offset: 768)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !544, file: !218, line: 1204, baseType: !426, size: 64, offset: 832)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !544, file: !218, line: 1205, baseType: !870, size: 320, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !544, file: !218, line: 1206, baseType: !40, size: 32, offset: 1216)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !544, file: !218, line: 1207, baseType: !67, size: 32, offset: 1248)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !544, file: !218, line: 1209, baseType: !38, size: 64, offset: 1280)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !544, file: !218, line: 1211, baseType: !2721, size: 64, offset: 1344)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !218, line: 1211, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !544, file: !218, line: 1223, baseType: !2726, size: 64, offset: 1408)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !443, line: 34, size: 64, elements: !2727)
!2727 = !{!2728}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2726, file: !443, line: 35, baseType: !446, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !544, file: !218, line: 1224, baseType: !115, size: 128, offset: 1472)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !544, file: !218, line: 1225, baseType: !2731, size: 64, offset: 1600)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2733, line: 40, size: 7424, elements: !2734)
!2733 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2734 = !{!2735, !2737, !2738, !2741, !2745, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2772, !2773}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2732, file: !2733, line: 41, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !43, line: 131, baseType: !464)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2732, file: !2733, line: 42, baseType: !2736, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2732, file: !2733, line: 43, baseType: !2739, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1833, line: 1453, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2732, file: !2733, line: 44, baseType: !2742, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2744, line: 74, flags: DIFlagFwdDecl)
!2744 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2732, file: !2733, line: 45, baseType: !2746, size: 64, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2733, line: 45, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2732, file: !2733, line: 46, baseType: !57, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2732, file: !2733, line: 47, baseType: !929, size: 8, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2732, file: !2733, line: 48, baseType: !101, size: 8, offset: 392)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2732, file: !2733, line: 49, baseType: !929, size: 8, offset: 400)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2732, file: !2733, line: 50, baseType: !929, size: 8, offset: 408)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2732, file: !2733, line: 51, baseType: !548, size: 32, offset: 416)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2732, file: !2733, line: 52, baseType: !67, size: 32, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2732, file: !2733, line: 53, baseType: !77, size: 32, offset: 480)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2732, file: !2733, line: 54, baseType: !391, size: 64, offset: 512)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2732, file: !2733, line: 55, baseType: !38, size: 64, offset: 576)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2732, file: !2733, line: 56, baseType: !38, size: 64, offset: 640)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2732, file: !2733, line: 57, baseType: !2760, size: 64, offset: 704)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2733, line: 57, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2732, file: !2733, line: 58, baseType: !740, size: 256, offset: 768)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2732, file: !2733, line: 60, baseType: !40, size: 32, offset: 1024)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2732, file: !2733, line: 61, baseType: !40, size: 32, offset: 1056)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2732, file: !2733, line: 62, baseType: !598, size: 64, offset: 1088)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2732, file: !2733, line: 65, baseType: !740, size: 256, offset: 1152)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2732, file: !2733, line: 66, baseType: !543, size: 64, offset: 1408)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2732, file: !2733, line: 68, baseType: !2770, size: 64, offset: 1472)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2733, line: 68, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2732, file: !2733, line: 72, baseType: !929, size: 8, offset: 1536)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2732, file: !2733, line: 77, baseType: !2774, size: 5824, offset: 1600)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !160, line: 705, size: 5824, elements: !2775)
!2775 = !{!2776, !2777, !2779, !2782, !2783, !2836, !2906, !2907, !2908, !2909, !2910, !2917, !3081, !3094, !3104, !3108, !3110, !3111, !3112, !3116, !3123, !3124, !3127, !3130, !3134, !3137, !3138, !3139, !3140, !3141, !3142, !3172, !3173, !3174, !3177, !3180, !3189, !3190, !3191, !3192, !3193, !3194}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2774, file: !160, line: 706, baseType: !592, size: 512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2774, file: !160, line: 707, baseType: !2778, size: 64, offset: 512)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2774, file: !160, line: 709, baseType: !2780, size: 64, offset: 576)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !160, line: 37, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2774, file: !160, line: 711, baseType: !34, size: 64, offset: 640)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2774, file: !160, line: 712, baseType: !2784, size: 64, offset: 704)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !160, line: 89, size: 384, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2796, !2801, !2805}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2786, file: !160, line: 90, baseType: !34, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2786, file: !160, line: 91, baseType: !677, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2786, file: !160, line: 92, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!40, !2794, !628}
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2774)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2786, file: !160, line: 93, baseType: !2797, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!532, !2794, !2800, !1125, !1126}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2786, file: !160, line: 95, baseType: !2802, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2778}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2786, file: !160, line: 97, baseType: !2806, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !172, line: 286, size: 1472, elements: !2809)
!2809 = !{!2810, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2808, file: !172, line: 287, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!40, !2778}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2808, file: !172, line: 288, baseType: !2802, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2808, file: !172, line: 289, baseType: !2811, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2808, file: !172, line: 290, baseType: !2811, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2808, file: !172, line: 291, baseType: !2811, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2808, file: !172, line: 292, baseType: !2811, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2808, file: !172, line: 293, baseType: !2811, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2808, file: !172, line: 294, baseType: !2811, size: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2808, file: !172, line: 295, baseType: !2811, size: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2808, file: !172, line: 296, baseType: !2811, size: 64, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2808, file: !172, line: 297, baseType: !2811, size: 64, offset: 640)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2808, file: !172, line: 298, baseType: !2811, size: 64, offset: 704)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2808, file: !172, line: 299, baseType: !2811, size: 64, offset: 768)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2808, file: !172, line: 300, baseType: !2811, size: 64, offset: 832)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2808, file: !172, line: 301, baseType: !2811, size: 64, offset: 896)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2808, file: !172, line: 302, baseType: !2811, size: 64, offset: 960)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2808, file: !172, line: 303, baseType: !2811, size: 64, offset: 1024)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2808, file: !172, line: 304, baseType: !2811, size: 64, offset: 1088)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2808, file: !172, line: 305, baseType: !2811, size: 64, offset: 1152)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2808, file: !172, line: 306, baseType: !2811, size: 64, offset: 1216)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2808, file: !172, line: 307, baseType: !2811, size: 64, offset: 1280)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2808, file: !172, line: 308, baseType: !2811, size: 64, offset: 1344)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2808, file: !172, line: 309, baseType: !2811, size: 64, offset: 1408)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2774, file: !160, line: 714, baseType: !2837, size: 64, offset: 768)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2839)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2840, line: 80, size: 1344, elements: !2841)
!2840 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2841 = !{!2842, !2843, !2844, !2845, !2846, !2847, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2905}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2839, file: !2840, line: 81, baseType: !34, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2839, file: !2840, line: 82, baseType: !34, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2839, file: !2840, line: 83, baseType: !677, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2839, file: !2840, line: 84, baseType: !677, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2839, file: !2840, line: 85, baseType: !677, size: 64, offset: 256)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2839, file: !2840, line: 87, baseType: !2848, size: 64, offset: 320)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!40, !2778, !2851}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !154, line: 96, size: 1152, elements: !2853)
!2853 = !{!2854, !2855, !2856, !2857, !2858, !2859, !2860, !2864, !2868, !2869, !2870, !2871, !2872, !2880, !2881, !2882, !2883, !2884, !2885}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2852, file: !154, line: 97, baseType: !34, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2852, file: !154, line: 98, baseType: !2837, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2852, file: !154, line: 100, baseType: !579, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2852, file: !154, line: 101, baseType: !34, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2852, file: !154, line: 103, baseType: !929, size: 8, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2852, file: !154, line: 104, baseType: !153, size: 32, offset: 288)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2852, file: !154, line: 106, baseType: !2861, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2863)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !154, line: 106, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2852, file: !154, line: 107, baseType: !2865, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2867)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !154, line: 107, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2852, file: !154, line: 109, baseType: !2811, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2852, file: !154, line: 110, baseType: !2802, size: 64, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2852, file: !154, line: 111, baseType: !2811, size: 64, offset: 576)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2852, file: !154, line: 112, baseType: !2802, size: 64, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2852, file: !154, line: 113, baseType: !2873, size: 64, offset: 704)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!40, !2778, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !172, line: 60, baseType: !2877)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !172, line: 58, size: 32, elements: !2878)
!2878 = !{!2879}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2877, file: !172, line: 59, baseType: !40, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2852, file: !154, line: 114, baseType: !2811, size: 64, offset: 768)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2852, file: !154, line: 115, baseType: !677, size: 64, offset: 832)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2852, file: !154, line: 116, baseType: !677, size: 64, offset: 896)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2852, file: !154, line: 118, baseType: !2806, size: 64, offset: 960)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2852, file: !154, line: 119, baseType: !2802, size: 64, offset: 1024)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2852, file: !154, line: 121, baseType: !2886, size: 64, offset: 1088)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !154, line: 121, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2839, file: !2840, line: 88, baseType: !2791, size: 64, offset: 384)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2839, file: !2840, line: 89, baseType: !2811, size: 64, offset: 448)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2839, file: !2840, line: 90, baseType: !2802, size: 64, offset: 512)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2839, file: !2840, line: 91, baseType: !2802, size: 64, offset: 576)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2839, file: !2840, line: 92, baseType: !2802, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2839, file: !2840, line: 94, baseType: !2811, size: 64, offset: 704)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2839, file: !2840, line: 95, baseType: !2811, size: 64, offset: 768)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2839, file: !2840, line: 97, baseType: !2873, size: 64, offset: 832)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2839, file: !2840, line: 98, baseType: !2811, size: 64, offset: 896)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2839, file: !2840, line: 100, baseType: !2811, size: 64, offset: 960)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2839, file: !2840, line: 102, baseType: !2811, size: 64, offset: 1024)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2839, file: !2840, line: 103, baseType: !2802, size: 64, offset: 1088)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2839, file: !2840, line: 105, baseType: !2806, size: 64, offset: 1152)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2839, file: !2840, line: 107, baseType: !2902, size: 64, offset: 1216)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2840, line: 107, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2839, file: !2840, line: 109, baseType: !929, size: 8, offset: 1280)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2774, file: !160, line: 715, baseType: !2851, size: 64, offset: 832)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2774, file: !160, line: 717, baseType: !38, size: 64, offset: 896)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2774, file: !160, line: 719, baseType: !38, size: 64, offset: 960)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2774, file: !160, line: 721, baseType: !740, size: 256, offset: 1024)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2774, file: !160, line: 725, baseType: !2911, size: 448, offset: 1280)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !160, line: 517, size: 448, elements: !2912)
!2912 = !{!2913, !2914, !2915, !2916}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2911, file: !160, line: 518, baseType: !115, size: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2911, file: !160, line: 519, baseType: !115, size: 128, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2911, file: !160, line: 520, baseType: !115, size: 128, offset: 256)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2911, file: !160, line: 521, baseType: !159, size: 32, offset: 384)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2774, file: !160, line: 726, baseType: !2918, size: 2496, offset: 1728)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !172, line: 663, size: 2496, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2964, !2965, !2966, !2967, !2968, !2969, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3074, !3078}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2918, file: !172, line: 664, baseType: !2876, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2918, file: !172, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2918, file: !172, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2918, file: !172, line: 667, baseType: !929, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2918, file: !172, line: 668, baseType: !929, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2918, file: !172, line: 669, baseType: !929, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2918, file: !172, line: 670, baseType: !929, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2918, file: !172, line: 671, baseType: !929, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2918, file: !172, line: 672, baseType: !929, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2918, file: !172, line: 673, baseType: !929, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2918, file: !172, line: 674, baseType: !929, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2918, file: !172, line: 675, baseType: !460, size: 32, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2918, file: !172, line: 676, baseType: !77, size: 32, offset: 96)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2918, file: !172, line: 678, baseType: !115, size: 128, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2918, file: !172, line: 679, baseType: !1100, size: 256, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2918, file: !172, line: 680, baseType: !2936, size: 64, offset: 512)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2938, line: 43, size: 1536, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2939 = !{!2940, !2941, !2942, !2943, !2944, !2947, !2948, !2949, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2937, file: !2938, line: 44, baseType: !34, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2937, file: !2938, line: 45, baseType: !40, size: 32, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2937, file: !2938, line: 46, baseType: !115, size: 128, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2937, file: !2938, line: 47, baseType: !77, size: 32, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2937, file: !2938, line: 48, baseType: !2945, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !172, line: 629, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2937, file: !2938, line: 49, baseType: !2312, size: 320, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2937, file: !2938, line: 50, baseType: !57, size: 64, offset: 704)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2937, file: !2938, line: 51, baseType: !2950, size: 64, offset: 768)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2951, line: 29, baseType: !737)
!2951 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2937, file: !2938, line: 52, baseType: !2950, size: 64, offset: 832)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2937, file: !2938, line: 53, baseType: !2950, size: 64, offset: 896)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2937, file: !2938, line: 54, baseType: !2950, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2937, file: !2938, line: 55, baseType: !2950, size: 64, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2937, file: !2938, line: 56, baseType: !57, size: 64, offset: 1088)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2937, file: !2938, line: 57, baseType: !57, size: 64, offset: 1152)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2937, file: !2938, line: 58, baseType: !57, size: 64, offset: 1216)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2937, file: !2938, line: 59, baseType: !57, size: 64, offset: 1280)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2937, file: !2938, line: 60, baseType: !57, size: 64, offset: 1344)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2937, file: !2938, line: 61, baseType: !2778, size: 64, offset: 1408)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2937, file: !2938, line: 62, baseType: !929, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2937, file: !2938, line: 63, baseType: !929, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2918, file: !172, line: 681, baseType: !929, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2918, file: !172, line: 682, baseType: !929, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2918, file: !172, line: 683, baseType: !929, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2918, file: !172, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2918, file: !172, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2918, file: !172, line: 690, baseType: !2970, size: 512, offset: 640)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !167, line: 118, size: 512, elements: !2971)
!2971 = !{!2972, !2978, !2979, !2984, !3036, !3037, !3038, !3039}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2970, file: !167, line: 119, baseType: !2973, size: 256)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2974, line: 9, size: 256, elements: !2975)
!2974 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2975 = !{!2976, !2977}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2973, file: !2974, line: 10, baseType: !862, size: 192, align: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2973, file: !2974, line: 11, baseType: !2950, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2970, file: !167, line: 120, baseType: !2950, size: 64, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2970, file: !167, line: 121, baseType: !2980, size: 64, offset: 320)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!166, !2983}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2970, file: !167, line: 122, baseType: !2985, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !167, line: 159, size: 512, align: 512, elements: !2987)
!2987 = !{!2988, !3013, !3014, !3017, !3022, !3023, !3031, !3035}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2986, file: !167, line: 160, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !167, line: 215, size: 4608, align: 512, elements: !2991)
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2990, file: !167, line: 216, baseType: !745, size: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2990, file: !167, line: 217, baseType: !7, size: 32, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2990, file: !167, line: 218, baseType: !7, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2990, file: !167, line: 219, baseType: !7, size: 32, offset: 96)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2990, file: !167, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2990, file: !167, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2990, file: !167, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2990, file: !167, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2990, file: !167, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2990, file: !167, line: 226, baseType: !7, size: 32, offset: 160)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2990, file: !167, line: 227, baseType: !44, size: 16, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2990, file: !167, line: 228, baseType: !44, size: 16, offset: 208)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2990, file: !167, line: 229, baseType: !7, size: 32, offset: 224)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2990, file: !167, line: 235, baseType: !2950, size: 64, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2990, file: !167, line: 236, baseType: !2983, size: 64, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2990, file: !167, line: 237, baseType: !2950, size: 64, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2990, file: !167, line: 238, baseType: !2983, size: 64, offset: 448)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2990, file: !167, line: 239, baseType: !3010, size: 4096, align: 512, offset: 512)
!3010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2986, size: 4096, align: 512, elements: !3011)
!3011 = !{!3012}
!3012 = !DISubrange(count: 8)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2986, file: !167, line: 161, baseType: !7, size: 32, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2986, file: !167, line: 162, baseType: !3015, size: 32, offset: 96)
!3015 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !43, line: 32, baseType: !3016)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !55, line: 96, baseType: !40)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2986, file: !167, line: 163, baseType: !3018, size: 32, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !433, line: 274, baseType: !3019)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !433, line: 274, size: 32, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3019, file: !433, line: 274, baseType: !437, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2986, file: !167, line: 164, baseType: !2983, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2986, file: !167, line: 165, baseType: !3024, size: 128, offset: 256)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2974, line: 14, size: 128, elements: !3025)
!3025 = !{!3026}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3024, file: !2974, line: 15, baseType: !3027, size: 128)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !863, line: 26, size: 128, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3027, file: !863, line: 27, baseType: !1142, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3027, file: !863, line: 28, baseType: !867, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2986, file: !167, line: 166, baseType: !3032, size: 64, offset: 384)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!2950}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2986, file: !167, line: 167, baseType: !2950, size: 64, offset: 448)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2970, file: !167, line: 123, baseType: !101, size: 8, offset: 448)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2970, file: !167, line: 124, baseType: !101, size: 8, offset: 456)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2970, file: !167, line: 125, baseType: !101, size: 8, offset: 464)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2970, file: !167, line: 126, baseType: !101, size: 8, offset: 472)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2918, file: !172, line: 691, baseType: !464, size: 64, offset: 1152)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2918, file: !172, line: 692, baseType: !1061, size: 256, offset: 1216)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2918, file: !172, line: 693, baseType: !72, size: 192, offset: 1472)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2918, file: !172, line: 694, baseType: !2945, size: 64, offset: 1664)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2918, file: !172, line: 695, baseType: !67, size: 32, offset: 1728)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2918, file: !172, line: 696, baseType: !67, size: 32, offset: 1760)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2918, file: !172, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2918, file: !172, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2918, file: !172, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2918, file: !172, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2918, file: !172, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2918, file: !172, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2918, file: !172, line: 703, baseType: !929, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2918, file: !172, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2918, file: !172, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2918, file: !172, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2918, file: !172, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2918, file: !172, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2918, file: !172, line: 709, baseType: !7, size: 32, offset: 1824)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2918, file: !172, line: 710, baseType: !171, size: 32, offset: 1856)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2918, file: !172, line: 711, baseType: !179, size: 32, offset: 1888)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2918, file: !172, line: 712, baseType: !179, size: 32, offset: 1920)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2918, file: !172, line: 713, baseType: !40, size: 32, offset: 1952)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2918, file: !172, line: 714, baseType: !40, size: 32, offset: 1984)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2918, file: !172, line: 715, baseType: !464, size: 64, offset: 2048)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2918, file: !172, line: 716, baseType: !464, size: 64, offset: 2112)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2918, file: !172, line: 717, baseType: !464, size: 64, offset: 2176)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2918, file: !172, line: 718, baseType: !464, size: 64, offset: 2240)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2918, file: !172, line: 720, baseType: !3069, size: 64, offset: 2304)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !172, line: 632, size: 64, elements: !3071)
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3070, file: !172, line: 633, baseType: !77, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3070, file: !172, line: 634, baseType: !7, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2918, file: !172, line: 721, baseType: !3075, size: 64, offset: 2368)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !2778, !855}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2918, file: !172, line: 722, baseType: !3079, size: 64, offset: 2432)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !172, line: 722, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2774, file: !160, line: 727, baseType: !3082, size: 64, offset: 4224)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !172, line: 742, size: 1792, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3091, !3092, !3093}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3083, file: !172, line: 743, baseType: !2808, size: 1472)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3083, file: !172, line: 744, baseType: !2811, size: 64, offset: 1472)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3083, file: !172, line: 745, baseType: !3088, size: 64, offset: 1536)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{null, !2778, !929}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3083, file: !172, line: 746, baseType: !2811, size: 64, offset: 1600)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3083, file: !172, line: 747, baseType: !2802, size: 64, offset: 1664)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3083, file: !172, line: 748, baseType: !2802, size: 64, offset: 1728)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2774, file: !160, line: 736, baseType: !3095, size: 128, offset: 4288)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !160, line: 529, size: 128, elements: !3096)
!3096 = !{!3097, !3101}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3095, file: !160, line: 531, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3100, line: 13, flags: DIFlagFwdDecl)
!3100 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3095, file: !160, line: 532, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !160, line: 49, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2774, file: !160, line: 738, baseType: !3105, size: 64, offset: 4416)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3107)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !160, line: 738, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2774, file: !160, line: 740, baseType: !3109, size: 64, offset: 4480)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2774, file: !160, line: 741, baseType: !464, size: 64, offset: 4544)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2774, file: !160, line: 746, baseType: !464, size: 64, offset: 4608)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2774, file: !160, line: 747, baseType: !3113, size: 64, offset: 4672)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3115)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !160, line: 747, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2774, file: !160, line: 749, baseType: !3117, size: 64, offset: 4736)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !160, line: 428, size: 128, elements: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3118, file: !160, line: 433, baseType: !7, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3118, file: !160, line: 434, baseType: !7, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3118, file: !160, line: 435, baseType: !57, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2774, file: !160, line: 751, baseType: !115, size: 128, offset: 4800)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2774, file: !160, line: 762, baseType: !3125, size: 64, offset: 4928)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !160, line: 762, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2774, file: !160, line: 770, baseType: !3128, offset: 4992)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3129, line: 5, elements: !1443)
!3129 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2774, file: !160, line: 772, baseType: !3131, size: 64, offset: 4992)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3133, line: 18, flags: DIFlagFwdDecl)
!3133 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2774, file: !160, line: 773, baseType: !3135, size: 64, offset: 5056)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2840, line: 22, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2774, file: !160, line: 776, baseType: !40, size: 32, offset: 5120)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2774, file: !160, line: 778, baseType: !548, size: 32, offset: 5152)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2774, file: !160, line: 779, baseType: !460, size: 32, offset: 5184)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2774, file: !160, line: 781, baseType: !77, size: 32, offset: 5216)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2774, file: !160, line: 782, baseType: !115, size: 128, offset: 5248)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2774, file: !160, line: 784, baseType: !3143, size: 64, offset: 5376)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3145)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3146, line: 52, size: 768, elements: !3147)
!3146 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3156, !3160, !3161, !3162, !3163, !3167, !3171}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3145, file: !3146, line: 53, baseType: !34, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3145, file: !3146, line: 55, baseType: !677, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3145, file: !3146, line: 56, baseType: !677, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3145, file: !3146, line: 58, baseType: !2791, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3145, file: !3146, line: 59, baseType: !3153, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!532, !2794, !2800}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3145, file: !3146, line: 61, baseType: !3157, size: 64, offset: 320)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !3143}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3145, file: !3146, line: 62, baseType: !2802, size: 64, offset: 384)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3145, file: !3146, line: 64, baseType: !2811, size: 64, offset: 448)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3145, file: !3146, line: 66, baseType: !1936, size: 64, offset: 512)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3145, file: !3146, line: 67, baseType: !3164, size: 64, offset: 576)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!1538, !2794}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3145, file: !3146, line: 69, baseType: !3168, size: 64, offset: 640)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !2794, !1125, !1126}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3145, file: !3146, line: 71, baseType: !2806, size: 64, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2774, file: !160, line: 785, baseType: !677, size: 64, offset: 5440)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2774, file: !160, line: 787, baseType: !2802, size: 64, offset: 5504)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2774, file: !160, line: 788, baseType: !3175, size: 64, offset: 5568)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !160, line: 46, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2774, file: !160, line: 789, baseType: !3178, size: 64, offset: 5632)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !160, line: 48, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2774, file: !160, line: 791, baseType: !3181, size: 64, offset: 5696)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !160, line: 597, size: 128, elements: !3183)
!3183 = !{!3184, !3185, !3186, !3187, !3188}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3182, file: !160, line: 598, baseType: !192, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3182, file: !160, line: 599, baseType: !201, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3182, file: !160, line: 600, baseType: !206, size: 32, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3182, file: !160, line: 601, baseType: !929, size: 8, offset: 96)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3182, file: !160, line: 602, baseType: !929, size: 8, offset: 104)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2774, file: !160, line: 793, baseType: !211, size: 32, offset: 5760)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2774, file: !160, line: 795, baseType: !929, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2774, file: !160, line: 796, baseType: !929, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2774, file: !160, line: 797, baseType: !929, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2774, file: !160, line: 798, baseType: !929, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2774, file: !160, line: 799, baseType: !929, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !544, file: !218, line: 1226, baseType: !3196, size: 64, offset: 1664)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !218, line: 1226, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !544, file: !218, line: 1227, baseType: !3199, size: 64, offset: 1728)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !229, line: 163, size: 6848, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3248, !3249, !3250, !3251, !3253, !3254, !3255}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3200, file: !229, line: 164, baseType: !464, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3200, file: !229, line: 165, baseType: !862, size: 192, align: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3200, file: !229, line: 166, baseType: !115, size: 128, offset: 256)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3200, file: !229, line: 167, baseType: !57, size: 64, offset: 384)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3200, file: !229, line: 168, baseType: !57, size: 64, offset: 448)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3200, file: !229, line: 170, baseType: !2063, size: 32, offset: 512)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3200, file: !229, line: 171, baseType: !7, size: 32, offset: 544)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3200, file: !229, line: 172, baseType: !7, size: 32, offset: 576)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3200, file: !229, line: 173, baseType: !7, size: 32, offset: 608)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3200, file: !229, line: 173, baseType: !7, size: 32, offset: 640)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3200, file: !229, line: 179, baseType: !731, size: 64, offset: 704)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3200, file: !229, line: 184, baseType: !57, size: 64, offset: 768)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3200, file: !229, line: 186, baseType: !3215, size: 4672, offset: 832)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !229, line: 105, size: 4672, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3241, !3242, !3243, !3244, !3245, !3246, !3247}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3215, file: !229, line: 106, baseType: !3199, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3215, file: !229, line: 108, baseType: !57, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3215, file: !229, line: 109, baseType: !57, size: 64, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3215, file: !229, line: 111, baseType: !115, size: 128, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3215, file: !229, line: 112, baseType: !115, size: 128, offset: 320)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3215, file: !229, line: 113, baseType: !115, size: 128, offset: 448)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3215, file: !229, line: 114, baseType: !115, size: 128, offset: 576)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3215, file: !229, line: 115, baseType: !77, size: 32, offset: 704)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3215, file: !229, line: 117, baseType: !67, size: 32, offset: 736)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3215, file: !229, line: 118, baseType: !1506, size: 1280, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3215, file: !229, line: 120, baseType: !57, size: 64, offset: 2048)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3215, file: !229, line: 121, baseType: !57, size: 64, offset: 2112)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3215, file: !229, line: 122, baseType: !57, size: 64, offset: 2176)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3215, file: !229, line: 123, baseType: !57, size: 64, offset: 2240)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3215, file: !229, line: 124, baseType: !57, size: 64, offset: 2304)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3215, file: !229, line: 132, baseType: !57, size: 64, offset: 2368)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3215, file: !229, line: 133, baseType: !57, size: 64, offset: 2432)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3215, file: !229, line: 135, baseType: !3235, size: 384, offset: 2496)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3236, line: 76, size: 384, elements: !3237)
!3236 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3237 = !{!3238, !3239, !3240}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3235, file: !3236, line: 78, baseType: !987, size: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3235, file: !3236, line: 80, baseType: !7, size: 32, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3235, file: !3236, line: 81, baseType: !745, size: 32, offset: 352)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3215, file: !229, line: 136, baseType: !40, size: 32, offset: 2880)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3215, file: !229, line: 137, baseType: !228, size: 32, offset: 2912)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3215, file: !229, line: 139, baseType: !77, size: 32, offset: 2944)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3215, file: !229, line: 140, baseType: !115, size: 128, offset: 3008)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3215, file: !229, line: 141, baseType: !2369, size: 704, offset: 3136)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3215, file: !229, line: 142, baseType: !2369, size: 704, offset: 3840)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3215, file: !229, line: 144, baseType: !115, size: 128, offset: 4544)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3200, file: !229, line: 187, baseType: !115, size: 128, offset: 5504)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3200, file: !229, line: 193, baseType: !72, size: 192, offset: 5632)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3200, file: !229, line: 195, baseType: !2778, size: 64, offset: 5824)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3200, file: !229, line: 196, baseType: !3252, size: 512, offset: 5888)
!3252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 512, elements: !637)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3200, file: !229, line: 197, baseType: !2778, size: 64, offset: 6400)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3200, file: !229, line: 199, baseType: !2312, size: 320, offset: 6464)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3200, file: !229, line: 202, baseType: !426, size: 64, offset: 6784)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !544, file: !218, line: 1228, baseType: !3257, size: 64, offset: 1792)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !218, line: 1228, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !544, file: !218, line: 1229, baseType: !795, size: 128, offset: 1856)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !544, file: !218, line: 1230, baseType: !7, size: 32, offset: 1984)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !544, file: !218, line: 1231, baseType: !3262, size: 2496, offset: 2048)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !223, line: 521, size: 2496, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3268, !3300}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3262, file: !223, line: 522, baseType: !7, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3262, file: !223, line: 523, baseType: !870, size: 320, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3262, file: !223, line: 524, baseType: !3267, size: 192, offset: 384)
!3267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 192, elements: !633)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3262, file: !223, line: 525, baseType: !3269, size: 1728, offset: 576)
!3269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3270, size: 1728, elements: !633)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !223, line: 222, size: 576, elements: !3271)
!3271 = !{!3272, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3270, file: !223, line: 223, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !223, line: 445, size: 256, elements: !3275)
!3275 = !{!3276, !3277, !3290, !3291}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3274, file: !223, line: 446, baseType: !40, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3274, file: !223, line: 447, baseType: !3278, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !223, line: 312, size: 512, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3280, file: !223, line: 313, baseType: !2480, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3280, file: !223, line: 314, baseType: !2480, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3280, file: !223, line: 315, baseType: !2480, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3280, file: !223, line: 316, baseType: !2480, size: 64, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3280, file: !223, line: 317, baseType: !2589, size: 64, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3280, file: !223, line: 318, baseType: !2589, size: 64, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3280, file: !223, line: 319, baseType: !2589, size: 64, offset: 384)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3280, file: !223, line: 320, baseType: !2619, size: 64, offset: 448)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3274, file: !223, line: 448, baseType: !579, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3274, file: !223, line: 449, baseType: !3273, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3270, file: !223, line: 224, baseType: !40, size: 32, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3270, file: !223, line: 226, baseType: !115, size: 128, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3270, file: !223, line: 227, baseType: !57, size: 64, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3270, file: !223, line: 228, baseType: !7, size: 32, offset: 320)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3270, file: !223, line: 229, baseType: !7, size: 32, offset: 352)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3270, file: !223, line: 230, baseType: !2557, size: 64, offset: 384)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3270, file: !223, line: 231, baseType: !2557, size: 64, offset: 448)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3270, file: !223, line: 232, baseType: !38, size: 64, offset: 512)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3262, file: !223, line: 526, baseType: !3301, size: 192, offset: 2304)
!3301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3278, size: 192, elements: !633)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !544, file: !218, line: 1233, baseType: !3303, size: 2368, offset: 4544)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !218, line: 1184, size: 2368, elements: !3304)
!3304 = !{!3305, !3306, !3307}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3303, file: !218, line: 1185, baseType: !44, size: 16)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3303, file: !218, line: 1186, baseType: !44, size: 16, offset: 16)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3303, file: !218, line: 1187, baseType: !3308, size: 2304, offset: 64)
!3308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3309, size: 2304, elements: !633)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3310, line: 12, size: 768, elements: !3311)
!3310 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3311 = !{!3312, !3320, !3321, !4794, !4795}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3309, file: !3310, line: 13, baseType: !3313, size: 384)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3314, line: 17, size: 384, elements: !3315)
!3314 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3315 = !{!3316, !3317, !3318, !3319}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3313, file: !3314, line: 18, baseType: !40, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3313, file: !3314, line: 19, baseType: !40, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3313, file: !3314, line: 20, baseType: !72, size: 192, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3313, file: !3314, line: 22, baseType: !718, size: 128, align: 64, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3309, file: !3310, line: 14, baseType: !2165, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3309, file: !3310, line: 15, baseType: !3322, size: 64, offset: 448)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3323, line: 16, size: 64, elements: !3324)
!3323 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3322, file: !3323, line: 17, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1833, line: 746, size: 58368, elements: !3328)
!3328 = !{!3329, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3409, !3420, !3440, !3444, !3447, !3478, !3479, !3480, !3481, !3492, !3494, !3495, !3496, !3497, !3498, !3499, !3510, !3511, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3528, !3529, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3617, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3665, !3671, !3672, !3673, !3674, !3675, !3679, !3682, !3689, !3694, !3697, !3700, !3703, !4013, !4212, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4250, !4251, !4252, !4261, !4269, !4270, !4271, !4272, !4273, !4278, !4279, !4280, !4283, !4284, !4287, !4290, !4296, !4303, !4306, !4307, !4393, !4394, !4395, !4396, !4397, !4403, !4404, !4405, !4406, !4407, !4408, !4411, !4414, !4415, !4418, !4419, !4420, !4423, !4424, !4425, !4426, !4427, !4428, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4460, !4461, !4467, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4549, !4551, !4552, !4553, !4554, !4555, !4556, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4573, !4574, !4575}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3327, file: !1833, line: 752, baseType: !3330, size: 192)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3331, line: 56, size: 192, elements: !3332)
!3331 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3332 = !{!3333, !3334, !3335, !3336}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3330, file: !3331, line: 57, baseType: !57, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3330, file: !3331, line: 58, baseType: !57, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3330, file: !3331, line: 59, baseType: !460, size: 32, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3330, file: !3331, line: 61, baseType: !460, size: 32, offset: 160)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3327, file: !1833, line: 754, baseType: !7, size: 32, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3327, file: !1833, line: 767, baseType: !38, size: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3327, file: !1833, line: 768, baseType: !783, size: 32, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3327, file: !1833, line: 770, baseType: !7, size: 32, offset: 352)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3327, file: !1833, line: 771, baseType: !7, size: 32, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3327, file: !1833, line: 774, baseType: !40, size: 32, offset: 416)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3327, file: !1833, line: 775, baseType: !3344, size: 128, offset: 448)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3345, line: 58, size: 128, elements: !3346)
!3345 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3346 = !{!3347, !3348, !3353, !3354}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3344, file: !3345, line: 59, baseType: !712, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !3344, file: !3345, line: 60, baseType: !3349, size: 32, offset: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3344, file: !3345, line: 60, size: 32, elements: !3350)
!3350 = !{!3351, !3352}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3349, file: !3345, line: 61, baseType: !7, size: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3349, file: !3345, line: 62, baseType: !67, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3344, file: !3345, line: 65, baseType: !111, size: 16, offset: 96)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3344, file: !3345, line: 65, baseType: !111, size: 16, offset: 112)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3327, file: !1833, line: 776, baseType: !7, size: 32, offset: 576)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3327, file: !1833, line: 777, baseType: !57, size: 64, offset: 640)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3327, file: !1833, line: 778, baseType: !3326, size: 64, offset: 704)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3327, file: !1833, line: 787, baseType: !40, size: 32, offset: 768)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3327, file: !1833, line: 788, baseType: !40, size: 32, offset: 800)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3327, file: !1833, line: 790, baseType: !40, size: 32, offset: 832)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3327, file: !1833, line: 792, baseType: !40, size: 32, offset: 864)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3327, file: !1833, line: 793, baseType: !40, size: 32, offset: 896)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3327, file: !1833, line: 794, baseType: !40, size: 32, offset: 928)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3327, file: !1833, line: 795, baseType: !7, size: 32, offset: 960)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3327, file: !1833, line: 797, baseType: !3366, size: 2048, offset: 1024)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1833, line: 551, size: 2048, elements: !3367)
!3367 = !{!3368, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3388, !3391, !3392, !3393}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3366, file: !1833, line: 553, baseType: !3369, size: 128)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1833, line: 411, size: 128, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3369, file: !1833, line: 412, baseType: !57, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3369, file: !1833, line: 413, baseType: !460, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3366, file: !1833, line: 554, baseType: !862, size: 192, align: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3366, file: !1833, line: 555, baseType: !464, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3366, file: !1833, line: 556, baseType: !464, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3366, file: !1833, line: 558, baseType: !115, size: 128, offset: 448)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3366, file: !1833, line: 559, baseType: !7, size: 32, offset: 576)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3366, file: !1833, line: 561, baseType: !464, size: 64, offset: 640)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3366, file: !1833, line: 562, baseType: !464, size: 64, offset: 704)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3366, file: !1833, line: 563, baseType: !464, size: 64, offset: 768)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3366, file: !1833, line: 564, baseType: !464, size: 64, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3366, file: !1833, line: 565, baseType: !737, size: 64, offset: 896)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3366, file: !1833, line: 566, baseType: !464, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3366, file: !1833, line: 568, baseType: !464, size: 64, offset: 1024)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3366, file: !1833, line: 571, baseType: !40, size: 32, offset: 1088)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3366, file: !1833, line: 572, baseType: !3387, size: 64, offset: 1152)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3366, file: !1833, line: 574, baseType: !3389, size: 64, offset: 1216)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1833, line: 49, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3366, file: !1833, line: 576, baseType: !3389, size: 64, offset: 1280)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3366, file: !1833, line: 578, baseType: !57, size: 64, offset: 1344)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3366, file: !1833, line: 588, baseType: !3394, size: 512, align: 512, offset: 1536)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1833, line: 497, size: 512, align: 512, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3394, file: !1833, line: 498, baseType: !464, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3394, file: !1833, line: 499, baseType: !464, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3394, file: !1833, line: 500, baseType: !464, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3394, file: !1833, line: 501, baseType: !460, size: 32, offset: 192)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3394, file: !1833, line: 502, baseType: !460, size: 32, offset: 224)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3394, file: !1833, line: 503, baseType: !57, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3394, file: !1833, line: 504, baseType: !57, size: 64, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3394, file: !1833, line: 505, baseType: !57, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3394, file: !1833, line: 506, baseType: !3405, size: 64, align: 64, offset: 448)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1833, line: 445, size: 64, align: 64, elements: !3406)
!3406 = !{!3407, !3408}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3405, file: !1833, line: 446, baseType: !7, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3405, file: !1833, line: 447, baseType: !7, size: 32, offset: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3327, file: !1833, line: 798, baseType: !3410, size: 384, offset: 3072)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1833, line: 592, size: 384, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3410, file: !1833, line: 593, baseType: !115, size: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3410, file: !1833, line: 594, baseType: !57, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3410, file: !1833, line: 595, baseType: !57, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3410, file: !1833, line: 596, baseType: !7, size: 32, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3410, file: !1833, line: 597, baseType: !44, size: 16, offset: 288)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3410, file: !1833, line: 598, baseType: !44, size: 16, offset: 304)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3410, file: !1833, line: 600, baseType: !3419, size: 64, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3327, file: !1833, line: 799, baseType: !3421, size: 1792, offset: 3456)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1833, line: 610, size: 1792, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3421, file: !1833, line: 611, baseType: !862, size: 192, align: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3421, file: !1833, line: 618, baseType: !464, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3421, file: !1833, line: 619, baseType: !464, size: 64, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3421, file: !1833, line: 620, baseType: !464, size: 64, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3421, file: !1833, line: 621, baseType: !464, size: 64, offset: 384)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3421, file: !1833, line: 622, baseType: !464, size: 64, offset: 448)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3421, file: !1833, line: 629, baseType: !737, size: 64, offset: 512)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3421, file: !1833, line: 630, baseType: !464, size: 64, offset: 576)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3421, file: !1833, line: 631, baseType: !7, size: 32, offset: 640)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3421, file: !1833, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3421, file: !1833, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3421, file: !1833, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3421, file: !1833, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3421, file: !1833, line: 662, baseType: !2970, size: 512, offset: 704)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3421, file: !1833, line: 671, baseType: !2970, size: 512, offset: 1216)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3421, file: !1833, line: 679, baseType: !3439, size: 64, offset: 1728)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3327, file: !1833, line: 800, baseType: !3441, size: 64, offset: 5248)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3443)
!3443 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1833, line: 800, flags: DIFlagFwdDecl)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3327, file: !1833, line: 809, baseType: !3445, size: 64, offset: 5312)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1833, line: 70, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3327, file: !1833, line: 825, baseType: !3448, size: 2048, align: 512, offset: 5632)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1833, line: 509, size: 2048, align: 512, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3448, file: !1833, line: 511, baseType: !464, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3448, file: !1833, line: 512, baseType: !464, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3448, file: !1833, line: 513, baseType: !464, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3448, file: !1833, line: 514, baseType: !464, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3448, file: !1833, line: 515, baseType: !464, size: 64, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3448, file: !1833, line: 516, baseType: !464, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3448, file: !1833, line: 518, baseType: !464, size: 64, offset: 384)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3448, file: !1833, line: 519, baseType: !464, size: 64, offset: 448)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3448, file: !1833, line: 520, baseType: !737, size: 64, offset: 512)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3448, file: !1833, line: 522, baseType: !464, size: 64, offset: 576)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3448, file: !1833, line: 523, baseType: !464, size: 64, offset: 640)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3448, file: !1833, line: 524, baseType: !737, size: 64, offset: 704)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3448, file: !1833, line: 526, baseType: !737, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3448, file: !1833, line: 527, baseType: !464, size: 64, offset: 832)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3448, file: !1833, line: 529, baseType: !464, size: 64, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3448, file: !1833, line: 530, baseType: !464, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3448, file: !1833, line: 531, baseType: !464, size: 64, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3448, file: !1833, line: 532, baseType: !464, size: 64, offset: 1088)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3448, file: !1833, line: 533, baseType: !464, size: 64, offset: 1152)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3448, file: !1833, line: 535, baseType: !464, size: 64, offset: 1216)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3448, file: !1833, line: 536, baseType: !464, size: 64, offset: 1280)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3448, file: !1833, line: 537, baseType: !464, size: 64, offset: 1344)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3448, file: !1833, line: 538, baseType: !464, size: 64, offset: 1408)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3448, file: !1833, line: 539, baseType: !464, size: 64, offset: 1472)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3448, file: !1833, line: 540, baseType: !464, size: 64, offset: 1536)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3448, file: !1833, line: 541, baseType: !464, size: 64, offset: 1600)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3448, file: !1833, line: 542, baseType: !464, size: 64, offset: 1664)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3448, file: !1833, line: 543, baseType: !464, size: 64, offset: 1728)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3327, file: !1833, line: 833, baseType: !7, size: 32, offset: 7680)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3327, file: !1833, line: 836, baseType: !7, size: 32, offset: 7712)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3327, file: !1833, line: 837, baseType: !40, size: 32, offset: 7744)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3327, file: !1833, line: 838, baseType: !3482, size: 64, offset: 7808)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3484)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3485, line: 19, baseType: !3486)
!3485 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3485, line: 19, size: 64, elements: !3487)
!3487 = !{!3488}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3486, file: !3485, line: 19, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !3490)
!3490 = !{!3491}
!3491 = !DISubrange(count: 1)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3327, file: !1833, line: 839, baseType: !3493, size: 64, offset: 7872)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3327, file: !1833, line: 840, baseType: !3484, size: 64, offset: 7936)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3327, file: !1833, line: 841, baseType: !38, size: 64, offset: 8000)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3327, file: !1833, line: 843, baseType: !44, size: 16, offset: 8064)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3327, file: !1833, line: 845, baseType: !44, size: 16, offset: 8080)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3327, file: !1833, line: 848, baseType: !40, size: 32, offset: 8096)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3327, file: !1833, line: 849, baseType: !3500, size: 32, offset: 8128)
!3500 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1833, line: 718, size: 32, elements: !3501)
!3501 = !{!3502, !3509}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3500, file: !1833, line: 724, baseType: !3503, size: 32)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3500, file: !1833, line: 719, size: 32, elements: !3504)
!3504 = !{!3505, !3506, !3507, !3508}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3503, file: !1833, line: 720, baseType: !101, size: 8)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3503, file: !1833, line: 721, baseType: !101, size: 8, offset: 8)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3503, file: !1833, line: 722, baseType: !101, size: 8, offset: 16)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3503, file: !1833, line: 723, baseType: !101, size: 8, offset: 24)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3500, file: !1833, line: 725, baseType: !460, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3327, file: !1833, line: 850, baseType: !115, size: 128, offset: 8192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3327, file: !1833, line: 851, baseType: !3512, size: 64, offset: 8320)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1833, line: 60, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3327, file: !1833, line: 855, baseType: !57, size: 64, offset: 8384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3327, file: !1833, line: 856, baseType: !101, size: 8, offset: 8448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3327, file: !1833, line: 857, baseType: !101, size: 8, offset: 8456)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3327, file: !1833, line: 858, baseType: !40, size: 32, offset: 8480)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3327, file: !1833, line: 859, baseType: !115, size: 128, offset: 8512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3327, file: !1833, line: 860, baseType: !40, size: 32, offset: 8640)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3327, file: !1833, line: 861, baseType: !115, size: 128, offset: 8704)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3327, file: !1833, line: 873, baseType: !3522, size: 256, offset: 8832)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1833, line: 376, size: 256, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3527}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3522, file: !1833, line: 381, baseType: !57, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3522, file: !1833, line: 384, baseType: !466, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3522, file: !1833, line: 389, baseType: !466, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3522, file: !1833, line: 392, baseType: !466, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3327, file: !1833, line: 875, baseType: !115, size: 128, offset: 9088)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3327, file: !1833, line: 877, baseType: !3530, size: 320, offset: 9216)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3531, line: 86, size: 320, elements: !3532)
!3531 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3532 = !{!3533, !3534, !3535}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3530, file: !3531, line: 87, baseType: !40, size: 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3530, file: !3531, line: 88, baseType: !115, size: 128, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3530, file: !3531, line: 89, baseType: !115, size: 128, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3327, file: !1833, line: 878, baseType: !862, size: 192, align: 64, offset: 9536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3327, file: !1833, line: 881, baseType: !1422, size: 64, offset: 9728)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3327, file: !1833, line: 882, baseType: !1422, size: 64, offset: 9792)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3327, file: !1833, line: 884, baseType: !40, size: 32, offset: 9856)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3327, file: !1833, line: 885, baseType: !40, size: 32, offset: 9888)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3327, file: !1833, line: 886, baseType: !40, size: 32, offset: 9920)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3327, file: !1833, line: 888, baseType: !40, size: 32, offset: 9952)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3327, file: !1833, line: 890, baseType: !57, size: 64, offset: 9984)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3327, file: !1833, line: 893, baseType: !7, size: 32, offset: 10048)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3327, file: !1833, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3327, file: !1833, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3327, file: !1833, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3327, file: !1833, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3327, file: !1833, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3327, file: !1833, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3327, file: !1833, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3327, file: !1833, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3327, file: !1833, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3327, file: !1833, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3327, file: !1833, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3327, file: !1833, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3327, file: !1833, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3327, file: !1833, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3327, file: !1833, line: 969, baseType: !57, size: 64, offset: 10176)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3327, file: !1833, line: 971, baseType: !3561, size: 448, offset: 10240)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !241, line: 25, size: 448, elements: !3562)
!3562 = !{!3563, !3564, !3569}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3561, file: !241, line: 26, baseType: !57, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3561, file: !241, line: 27, baseType: !3565, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!366, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, scope: !3561, file: !241, line: 28, baseType: !3570, size: 320, offset: 128)
!3570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3561, file: !241, line: 28, size: 320, elements: !3571)
!3571 = !{!3572, !3582, !3607}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3570, file: !241, line: 37, baseType: !3573, size: 320)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !241, line: 30, size: 320, elements: !3574)
!3574 = !{!3575, !3577, !3578, !3579, !3580, !3581}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3573, file: !241, line: 31, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3573, file: !241, line: 32, baseType: !460, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3573, file: !241, line: 33, baseType: !460, size: 32, offset: 96)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3573, file: !241, line: 34, baseType: !460, size: 32, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3573, file: !241, line: 35, baseType: !464, size: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3573, file: !241, line: 36, baseType: !3576, size: 64, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3570, file: !241, line: 47, baseType: !3583, size: 192)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !241, line: 39, size: 192, elements: !3584)
!3584 = !{!3585, !3586, !3587, !3606}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3583, file: !241, line: 40, baseType: !3015, size: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3583, file: !241, line: 41, baseType: !240, size: 32, offset: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, scope: !3583, file: !241, line: 42, baseType: !3588, size: 64, offset: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3583, file: !241, line: 42, size: 64, elements: !3589)
!3589 = !{!3590, !3598}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3588, file: !241, line: 43, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3593, line: 7, size: 128, elements: !3594)
!3593 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3594 = !{!3595, !3597}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3592, file: !3593, line: 8, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !55, line: 93, baseType: !61)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3592, file: !3593, line: 9, baseType: !61, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3588, file: !241, line: 44, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3601, line: 7, size: 64, elements: !3602)
!3601 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3602 = !{!3603, !3605}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3600, file: !3601, line: 8, baseType: !3604, size: 32)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3601, line: 5, baseType: !855)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3600, file: !3601, line: 9, baseType: !855, size: 32, offset: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3583, file: !241, line: 46, baseType: !464, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3570, file: !241, line: 55, baseType: !3608, size: 256)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !241, line: 49, size: 256, elements: !3609)
!3609 = !{!3610, !3613, !3614, !3615, !3616}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3608, file: !241, line: 50, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !241, line: 14, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3608, file: !241, line: 51, baseType: !40, size: 32, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3608, file: !241, line: 52, baseType: !40, size: 32, offset: 96)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3608, file: !241, line: 53, baseType: !57, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3608, file: !241, line: 54, baseType: !57, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3327, file: !1833, line: 973, baseType: !3618, size: 32, offset: 10688)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !43, line: 27, baseType: !3619)
!3619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !55, line: 28, baseType: !40)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3327, file: !1833, line: 974, baseType: !3618, size: 32, offset: 10720)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3327, file: !1833, line: 978, baseType: !57, size: 64, offset: 10752)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3327, file: !1833, line: 987, baseType: !3326, size: 64, offset: 10816)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3327, file: !1833, line: 990, baseType: !3326, size: 64, offset: 10880)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3327, file: !1833, line: 995, baseType: !115, size: 128, offset: 10944)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3327, file: !1833, line: 996, baseType: !115, size: 128, offset: 11072)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3327, file: !1833, line: 997, baseType: !3326, size: 64, offset: 11200)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3327, file: !1833, line: 1005, baseType: !115, size: 128, offset: 11264)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3327, file: !1833, line: 1006, baseType: !115, size: 128, offset: 11392)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3327, file: !1833, line: 1009, baseType: !779, size: 64, offset: 11520)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3327, file: !1833, line: 1010, baseType: !3631, size: 512, offset: 11584)
!3631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 512, elements: !800)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3327, file: !1833, line: 1011, baseType: !115, size: 128, offset: 12096)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3327, file: !1833, line: 1012, baseType: !115, size: 128, offset: 12224)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3327, file: !1833, line: 1014, baseType: !1099, size: 64, offset: 12352)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3327, file: !1833, line: 1017, baseType: !2213, size: 64, offset: 12416)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3327, file: !1833, line: 1020, baseType: !2213, size: 64, offset: 12480)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3327, file: !1833, line: 1023, baseType: !38, size: 64, offset: 12544)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3327, file: !1833, line: 1025, baseType: !464, size: 64, offset: 12608)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3327, file: !1833, line: 1026, baseType: !464, size: 64, offset: 12672)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3327, file: !1833, line: 1031, baseType: !464, size: 64, offset: 12736)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3327, file: !1833, line: 1032, baseType: !3642, size: 192, offset: 12800)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1833, line: 324, size: 192, elements: !3643)
!3643 = !{!3644, !3645, !3646}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3642, file: !1833, line: 326, baseType: !464, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3642, file: !1833, line: 327, baseType: !464, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3642, file: !1833, line: 328, baseType: !745, size: 32, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3327, file: !1833, line: 1041, baseType: !57, size: 64, offset: 12992)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3327, file: !1833, line: 1042, baseType: !57, size: 64, offset: 13056)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3327, file: !1833, line: 1045, baseType: !464, size: 64, offset: 13120)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3327, file: !1833, line: 1048, baseType: !464, size: 64, offset: 13184)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3327, file: !1833, line: 1051, baseType: !57, size: 64, offset: 13248)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3327, file: !1833, line: 1052, baseType: !57, size: 64, offset: 13312)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3327, file: !1833, line: 1055, baseType: !3654, size: 640, offset: 13376)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3655, line: 132, size: 640, elements: !3656)
!3655 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3656 = !{!3657, !3663, !3664}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3654, file: !3655, line: 133, baseType: !3658, size: 576)
!3658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3659, size: 576, elements: !633)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3655, line: 117, size: 192, elements: !3660)
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3659, file: !3655, line: 118, baseType: !464, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3659, file: !3655, line: 119, baseType: !3024, size: 128, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3654, file: !3655, line: 134, baseType: !7, size: 32, offset: 576)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3654, file: !3655, line: 135, baseType: !7, size: 32, offset: 608)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3327, file: !1833, line: 1058, baseType: !3666, size: 448, offset: 14016)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3655, line: 144, size: 448, elements: !3667)
!3667 = !{!3668, !3669, !3670}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3666, file: !3655, line: 145, baseType: !718, size: 128, align: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3666, file: !3655, line: 146, baseType: !740, size: 256, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3666, file: !3655, line: 147, baseType: !7, size: 32, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3327, file: !1833, line: 1064, baseType: !820, size: 64, offset: 14464)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3327, file: !1833, line: 1067, baseType: !820, size: 64, offset: 14528)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3327, file: !1833, line: 1070, baseType: !820, size: 64, offset: 14592)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3327, file: !1833, line: 1074, baseType: !847, size: 64, offset: 14656)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3327, file: !1833, line: 1084, baseType: !3676, size: 128, offset: 14720)
!3676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !3677)
!3677 = !{!3678}
!3678 = !DISubrange(count: 16)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3327, file: !1833, line: 1086, baseType: !3680, size: 64, offset: 14848)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1833, line: 55, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3327, file: !1833, line: 1089, baseType: !3683, size: 64, offset: 14912)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3684, line: 12, size: 64, elements: !3685)
!3684 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3685 = !{!3686}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3683, file: !3684, line: 13, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3684, line: 8, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3327, file: !1833, line: 1090, baseType: !3690, size: 128, offset: 14976)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3691, line: 13, size: 128, elements: !3692)
!3691 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3692 = !{!3693}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3690, file: !3691, line: 14, baseType: !115, size: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3327, file: !1833, line: 1097, baseType: !3695, size: 64, offset: 15104)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1833, line: 50, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3327, file: !1833, line: 1100, baseType: !3698, size: 64, offset: 15168)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1833, line: 1100, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3327, file: !1833, line: 1103, baseType: !3701, size: 64, offset: 15232)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1833, line: 53, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3327, file: !1833, line: 1107, baseType: !3704, size: 64, offset: 15296)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3706, line: 31, size: 576, elements: !3707)
!3706 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3707 = !{!3708, !3709, !3730, !3733, !3736, !3737, !3740, !3743, !3744}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3705, file: !3706, line: 32, baseType: !783, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3705, file: !3706, line: 33, baseType: !3710, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3712, line: 24, size: 3456, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!3713 = !{!3714, !3727, !3728, !3729}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3711, file: !3712, line: 25, baseType: !3715, size: 3120)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !3716, line: 25, size: 3120, elements: !3717)
!3716 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!3717 = !{!3718, !3722, !3723, !3724, !3725, !3726}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !3715, file: !3716, line: 26, baseType: !3719, size: 520)
!3719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 520, elements: !3720)
!3720 = !{!3721}
!3721 = !DISubrange(count: 65)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3715, file: !3716, line: 27, baseType: !3719, size: 520, offset: 520)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3715, file: !3716, line: 28, baseType: !3719, size: 520, offset: 1040)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3715, file: !3716, line: 29, baseType: !3719, size: 520, offset: 1560)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !3715, file: !3716, line: 30, baseType: !3719, size: 520, offset: 2080)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !3715, file: !3716, line: 31, baseType: !3719, size: 520, offset: 2600)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3711, file: !3712, line: 26, baseType: !1012, size: 64, offset: 3136)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3711, file: !3712, line: 27, baseType: !1147, size: 64, offset: 3200)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3711, file: !3712, line: 28, baseType: !1045, size: 192, offset: 3264)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3705, file: !3706, line: 34, baseType: !3731, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3706, line: 10, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3705, file: !3706, line: 35, baseType: !3734, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3706, line: 8, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3705, file: !3706, line: 36, baseType: !811, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3705, file: !3706, line: 37, baseType: !3738, size: 64, offset: 320)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !849, line: 34, flags: DIFlagFwdDecl)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3705, file: !3706, line: 38, baseType: !3741, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3706, line: 38, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3705, file: !3706, line: 39, baseType: !3741, size: 64, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3705, file: !3706, line: 40, baseType: !3745, size: 64, offset: 512)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3747, line: 771, size: 384, elements: !3748)
!3747 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3748 = !{!3749, !3750, !3751, !3752}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3746, file: !3747, line: 772, baseType: !1045, size: 192)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3746, file: !3747, line: 773, baseType: !1012, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3746, file: !3747, line: 774, baseType: !1147, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3746, file: !3747, line: 775, baseType: !3753, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3755, line: 209, size: 4736, elements: !3756)
!3755 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3756 = !{!3757, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3754, file: !3755, line: 215, baseType: !3758, size: 896)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3759, size: 896, elements: !3816)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3755, line: 152, size: 1600, elements: !3761)
!3761 = !{!3762, !3867, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3991}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3760, file: !3755, line: 154, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3755, line: 389, size: 7872, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3785, !3786, !3790, !3791, !3792, !3793, !3794, !3795, !3813, !3814, !3818, !3819, !3820, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3854, !3857, !3858, !3865}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3764, file: !3755, line: 391, baseType: !3760, size: 1600)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3764, file: !3755, line: 393, baseType: !57, size: 64, offset: 1600)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3764, file: !3755, line: 401, baseType: !40, size: 32, offset: 1664)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3764, file: !3755, line: 404, baseType: !40, size: 32, offset: 1696)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3764, file: !3755, line: 417, baseType: !40, size: 32, offset: 1728)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3764, file: !3755, line: 418, baseType: !40, size: 32, offset: 1760)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3764, file: !3755, line: 419, baseType: !40, size: 32, offset: 1792)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3764, file: !3755, line: 432, baseType: !40, size: 32, offset: 1824)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3764, file: !3755, line: 433, baseType: !40, size: 32, offset: 1856)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3764, file: !3755, line: 434, baseType: !40, size: 32, offset: 1888)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3764, file: !3755, line: 436, baseType: !40, size: 32, offset: 1920)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3764, file: !3755, line: 439, baseType: !7, size: 32, offset: 1952)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3764, file: !3755, line: 441, baseType: !1972, size: 64, offset: 1984)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3764, file: !3755, line: 442, baseType: !3780, size: 448, offset: 2048)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3755, line: 138, size: 448, elements: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3780, file: !3755, line: 140, baseType: !1972, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3780, file: !3755, line: 141, baseType: !57, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3780, file: !3755, line: 142, baseType: !2312, size: 320, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3764, file: !3755, line: 443, baseType: !3780, size: 448, offset: 2496)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3764, file: !3755, line: 446, baseType: !3787, offset: 2944)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3780, elements: !3788)
!3788 = !{!3789}
!3789 = !DISubrange(count: 0)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3764, file: !3755, line: 455, baseType: !111, size: 16, offset: 2944)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3764, file: !3755, line: 456, baseType: !111, size: 16, offset: 2960)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3764, file: !3755, line: 457, baseType: !111, size: 16, offset: 2976)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3764, file: !3755, line: 458, baseType: !111, size: 16, offset: 2992)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3764, file: !3755, line: 461, baseType: !3758, size: 896, offset: 3008)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3764, file: !3755, line: 463, baseType: !3796, size: 64, offset: 3904)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3755, line: 537, size: 41664, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3812}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3797, file: !3755, line: 538, baseType: !1991, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3797, file: !3755, line: 541, baseType: !7, size: 32, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3797, file: !3755, line: 544, baseType: !40, size: 32, offset: 96)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3797, file: !3755, line: 547, baseType: !115, size: 128, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3797, file: !3755, line: 548, baseType: !718, size: 128, align: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3797, file: !3755, line: 555, baseType: !3764, size: 7872, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3797, file: !3755, line: 558, baseType: !3763, size: 64, offset: 8256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3797, file: !3755, line: 561, baseType: !67, size: 32, offset: 8320)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3797, file: !3755, line: 564, baseType: !7, size: 32, offset: 8352)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3797, file: !3755, line: 567, baseType: !3809, size: 32768, offset: 8384)
!3809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32768, elements: !3810)
!3810 = !{!3811}
!3811 = !DISubrange(count: 4096)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !3755, line: 570, baseType: !3252, size: 512, offset: 41152)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3764, file: !3755, line: 469, baseType: !115, size: 128, offset: 3968)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3764, file: !3755, line: 478, baseType: !3815, size: 1792, offset: 4096)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 1792, elements: !3816)
!3816 = !{!3817}
!3817 = !DISubrange(count: 14)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3764, file: !3755, line: 487, baseType: !3763, size: 64, offset: 5888)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3764, file: !3755, line: 488, baseType: !3763, size: 64, offset: 5952)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3764, file: !3755, line: 491, baseType: !3821, size: 64, offset: 6016)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3755, line: 327, size: 896, elements: !3823)
!3823 = !{!3824, !3827, !3837, !3838, !3839, !3840, !3841}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3822, file: !3755, line: 332, baseType: !3825)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3826, line: 64, elements: !1443)
!3826 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3822, file: !3755, line: 333, baseType: !3828, size: 192)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3755, line: 299, size: 192, elements: !3829)
!3829 = !{!3830}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3828, file: !3755, line: 300, baseType: !3831, size: 192)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3832, line: 17, size: 192, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3831, file: !3832, line: 18, baseType: !464, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3831, file: !3832, line: 19, baseType: !464, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3831, file: !3832, line: 20, baseType: !466, size: 64, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3822, file: !3755, line: 339, baseType: !3828, size: 192, offset: 192)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3822, file: !3755, line: 347, baseType: !3828, size: 192, offset: 384)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3822, file: !3755, line: 353, baseType: !3828, size: 192, offset: 576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3822, file: !3755, line: 366, baseType: !3763, size: 64, offset: 768)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3822, file: !3755, line: 367, baseType: !3763, size: 64, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3764, file: !3755, line: 492, baseType: !115, size: 128, offset: 6080)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3764, file: !3755, line: 495, baseType: !3828, size: 192, offset: 6208)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3764, file: !3755, line: 496, baseType: !3828, size: 192, offset: 6400)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3764, file: !3755, line: 497, baseType: !3642, size: 192, offset: 6592)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3764, file: !3755, line: 503, baseType: !115, size: 128, offset: 6784)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3764, file: !3755, line: 504, baseType: !740, size: 256, offset: 6912)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3764, file: !3755, line: 507, baseType: !72, size: 192, offset: 7168)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3764, file: !3755, line: 510, baseType: !1061, size: 256, offset: 7360)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3764, file: !3755, line: 513, baseType: !3851, size: 64, offset: 7616)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3853, line: 214, elements: !1443)
!3853 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3764, file: !3755, line: 516, baseType: !3855, offset: 7680)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3856, line: 76, elements: !1443)
!3856 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3764, file: !3755, line: 519, baseType: !67, size: 32, offset: 7680)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3764, file: !3755, line: 522, baseType: !3859, size: 128, offset: 7712)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3755, line: 370, size: 128, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3859, file: !3755, line: 372, baseType: !929, size: 8)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3859, file: !3755, line: 375, baseType: !40, size: 32, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3859, file: !3755, line: 380, baseType: !40, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3859, file: !3755, line: 386, baseType: !40, size: 32, offset: 96)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3764, file: !3755, line: 529, baseType: !3866, offset: 7872)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3763, elements: !813)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3760, file: !3755, line: 157, baseType: !3868, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3755, line: 669, size: 1984, elements: !3870)
!3870 = !{!3871, !3875, !3879, !3883, !3884, !3885, !3886, !3890, !3894, !3895, !3901, !3905, !3906, !3907, !3911, !3915, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3936, !3937, !3974, !3975}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3869, file: !3755, line: 670, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!3759, !3759}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3869, file: !3755, line: 671, baseType: !3876, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!40, !3759}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3869, file: !3755, line: 672, baseType: !3880, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{null, !3759}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3869, file: !3755, line: 673, baseType: !3880, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3869, file: !3755, line: 674, baseType: !3880, size: 64, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3869, file: !3755, line: 675, baseType: !3880, size: 64, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3869, file: !3755, line: 676, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !3759, !40}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3869, file: !3755, line: 677, baseType: !3891, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!40, !1856, !3759}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3869, file: !3755, line: 679, baseType: !3891, size: 64, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3869, file: !3755, line: 682, baseType: !3896, size: 64, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!40, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3755, line: 30, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3869, file: !3755, line: 683, baseType: !3902, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !3899}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3869, file: !3755, line: 684, baseType: !3902, size: 64, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3869, file: !3755, line: 685, baseType: !2415, size: 64, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3869, file: !3755, line: 686, baseType: !3908, size: 64, offset: 832)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!40, !3326, !3753}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3869, file: !3755, line: 688, baseType: !3912, size: 64, offset: 896)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !3326, !3753}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3869, file: !3755, line: 689, baseType: !3916, size: 64, offset: 960)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3326}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3869, file: !3755, line: 690, baseType: !3916, size: 64, offset: 1024)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3869, file: !3755, line: 691, baseType: !3916, size: 64, offset: 1088)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3869, file: !3755, line: 692, baseType: !3880, size: 64, offset: 1152)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3869, file: !3755, line: 694, baseType: !929, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3869, file: !3755, line: 707, baseType: !929, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3869, file: !3755, line: 719, baseType: !929, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3869, file: !3755, line: 722, baseType: !40, size: 32, offset: 1248)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3869, file: !3755, line: 723, baseType: !34, size: 64, offset: 1280)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3869, file: !3755, line: 726, baseType: !34, size: 64, offset: 1344)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3869, file: !3755, line: 729, baseType: !3796, size: 64, offset: 1408)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3869, file: !3755, line: 732, baseType: !3930, size: 192, offset: 1472)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3931, line: 19, size: 192, elements: !3932)
!3931 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3932 = !{!3933, !3934, !3935}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3930, file: !3931, line: 20, baseType: !1746, size: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3930, file: !3931, line: 21, baseType: !7, size: 32, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3930, file: !3931, line: 22, baseType: !7, size: 32, offset: 160)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3869, file: !3755, line: 738, baseType: !115, size: 128, offset: 1664)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3869, file: !3755, line: 744, baseType: !3938, size: 64, offset: 1792)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3755, line: 580, size: 1728, elements: !3940)
!3940 = !{!3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3950, !3951, !3952, !3956, !3960, !3961, !3962, !3963, !3964, !3968, !3972, !3973}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3939, file: !3755, line: 586, baseType: !3252, size: 512)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3939, file: !3755, line: 587, baseType: !57, size: 64, offset: 512)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3939, file: !3755, line: 593, baseType: !53, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3939, file: !3755, line: 596, baseType: !7, size: 32, offset: 640)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3939, file: !3755, line: 604, baseType: !7, size: 32, offset: 672)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3939, file: !3755, line: 610, baseType: !3868, size: 64, offset: 704)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3939, file: !3755, line: 611, baseType: !115, size: 128, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3939, file: !3755, line: 612, baseType: !3949, size: 64, offset: 896)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3939, file: !3755, line: 614, baseType: !2007, size: 64, offset: 960)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3939, file: !3755, line: 615, baseType: !2027, size: 64, offset: 1024)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3939, file: !3755, line: 621, baseType: !3953, size: 64, offset: 1088)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!464, !3759, !3938}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3939, file: !3755, line: 625, baseType: !3957, size: 64, offset: 1152)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!737, !3759, !3938}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3939, file: !3755, line: 628, baseType: !1886, size: 64, offset: 1216)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3939, file: !3755, line: 631, baseType: !1874, size: 64, offset: 1280)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3939, file: !3755, line: 632, baseType: !1882, size: 64, offset: 1344)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3939, file: !3755, line: 633, baseType: !1878, size: 64, offset: 1408)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3939, file: !3755, line: 640, baseType: !3965, size: 64, offset: 1472)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!40, !3759, !3938, !464}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3939, file: !3755, line: 645, baseType: !3969, size: 64, offset: 1536)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!40, !3759, !3938, !737}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3939, file: !3755, line: 654, baseType: !2035, size: 64, offset: 1600)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3939, file: !3755, line: 657, baseType: !2042, size: 64, offset: 1664)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3869, file: !3755, line: 745, baseType: !3938, size: 64, offset: 1856)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3869, file: !3755, line: 754, baseType: !7, size: 32, offset: 1920)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3760, file: !3755, line: 160, baseType: !1363, size: 128, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3760, file: !3755, line: 163, baseType: !115, size: 128, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3760, file: !3755, line: 164, baseType: !115, size: 128, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3760, file: !3755, line: 167, baseType: !115, size: 128, offset: 512)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3760, file: !3755, line: 173, baseType: !40, size: 32, offset: 640)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3760, file: !3755, line: 175, baseType: !7, size: 32, offset: 672)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3760, file: !3755, line: 183, baseType: !464, size: 64, offset: 704)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3760, file: !3755, line: 189, baseType: !67, size: 32, offset: 768)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3760, file: !3755, line: 192, baseType: !1061, size: 256, offset: 832)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3760, file: !3755, line: 193, baseType: !3986, size: 448, offset: 1088)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1062, line: 120, size: 448, elements: !3987)
!3987 = !{!3988, !3989, !3990}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3986, file: !1062, line: 121, baseType: !1061, size: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3986, file: !1062, line: 122, baseType: !718, size: 128, align: 64, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3986, file: !1062, line: 125, baseType: !2374, size: 64, offset: 384)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3760, file: !3755, line: 199, baseType: !3759, size: 64, offset: 1536)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3754, file: !3755, line: 218, baseType: !783, size: 32, offset: 896)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3754, file: !3755, line: 226, baseType: !3753, size: 64, offset: 960)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3754, file: !3755, line: 229, baseType: !3763, size: 64, offset: 1024)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3754, file: !3755, line: 232, baseType: !40, size: 32, offset: 1088)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3754, file: !3755, line: 241, baseType: !115, size: 128, offset: 1152)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3754, file: !3755, line: 242, baseType: !115, size: 128, offset: 1280)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3754, file: !3755, line: 243, baseType: !115, size: 128, offset: 1408)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3754, file: !3755, line: 246, baseType: !115, size: 128, offset: 1536)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3754, file: !3755, line: 255, baseType: !3815, size: 1792, offset: 1664)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3754, file: !3755, line: 258, baseType: !115, size: 128, offset: 3456)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3754, file: !3755, line: 259, baseType: !115, size: 128, offset: 3584)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3754, file: !3755, line: 265, baseType: !795, size: 128, offset: 3712)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3754, file: !3755, line: 271, baseType: !115, size: 128, offset: 3840)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3754, file: !3755, line: 277, baseType: !115, size: 128, offset: 3968)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3754, file: !3755, line: 278, baseType: !115, size: 128, offset: 4096)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3754, file: !3755, line: 279, baseType: !115, size: 128, offset: 4224)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3754, file: !3755, line: 288, baseType: !3763, size: 64, offset: 4352)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3754, file: !3755, line: 289, baseType: !3763, size: 64, offset: 4416)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3754, file: !3755, line: 290, baseType: !3753, size: 64, offset: 4480)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3754, file: !3755, line: 293, baseType: !929, size: 8, offset: 4544)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3754, file: !3755, line: 296, baseType: !718, size: 128, align: 64, offset: 4608)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3327, file: !1833, line: 1110, baseType: !4014, size: 64, offset: 15360)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4016, line: 93, size: 8768, elements: !4017)
!4016 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4066, !4075, !4076, !4078, !4079, !4080, !4083, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4121, !4122, !4129, !4139, !4202, !4203, !4206, !4207, !4208, !4209, !4210, !4211}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4015, file: !4016, line: 94, baseType: !783, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4015, file: !4016, line: 95, baseType: !67, size: 32, offset: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4015, file: !4016, line: 96, baseType: !40, size: 32, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4015, file: !4016, line: 97, baseType: !40, size: 32, offset: 96)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4015, file: !4016, line: 98, baseType: !115, size: 128, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4015, file: !4016, line: 100, baseType: !72, size: 192, offset: 256)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4015, file: !4016, line: 103, baseType: !3326, size: 64, offset: 448)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4015, file: !4016, line: 106, baseType: !4026, size: 192, offset: 512)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4027, line: 32, size: 192, elements: !4028)
!4027 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4028 = !{!4029, !4030}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4026, file: !4027, line: 33, baseType: !115, size: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4026, file: !4027, line: 34, baseType: !4031, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4032, line: 25, baseType: !4033)
!4032 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4032, line: 23, size: 64, elements: !4034)
!4034 = !{!4035}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4033, file: !4032, line: 24, baseType: !3489, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4015, file: !4016, line: 109, baseType: !791, size: 64, offset: 704)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4015, file: !4016, line: 112, baseType: !40, size: 32, offset: 768)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4015, file: !4016, line: 114, baseType: !40, size: 32, offset: 800)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4015, file: !4016, line: 115, baseType: !3326, size: 64, offset: 832)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4015, file: !4016, line: 118, baseType: !40, size: 32, offset: 896)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4015, file: !4016, line: 119, baseType: !7, size: 32, offset: 928)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4015, file: !4016, line: 121, baseType: !4043, size: 64, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4016, line: 80, size: 448, elements: !4045)
!4045 = !{!4046, !4047, !4053}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4044, file: !4016, line: 81, baseType: !67, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4044, file: !4016, line: 82, baseType: !4048, size: 128, offset: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4016, line: 75, size: 128, elements: !4049)
!4049 = !{!4050, !4051}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4048, file: !4016, line: 76, baseType: !3326, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4048, file: !4016, line: 77, baseType: !4052, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4044, file: !4016, line: 83, baseType: !1100, size: 256, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4015, file: !4016, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4015, file: !4016, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4015, file: !4016, line: 138, baseType: !7, size: 32, offset: 1056)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4015, file: !4016, line: 139, baseType: !115, size: 128, offset: 1088)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4015, file: !4016, line: 142, baseType: !2970, size: 512, offset: 1216)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4015, file: !4016, line: 143, baseType: !2950, size: 64, offset: 1728)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4015, file: !4016, line: 150, baseType: !4061, size: 256, offset: 1792)
!4061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4062, size: 256, elements: !2203)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4016, line: 38, size: 128, elements: !4063)
!4063 = !{!4064, !4065}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4062, file: !4016, line: 39, baseType: !464, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4062, file: !4016, line: 40, baseType: !464, size: 64, offset: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4015, file: !4016, line: 156, baseType: !4067, size: 192, offset: 2048)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4016, line: 66, size: 192, elements: !4068)
!4068 = !{!4069}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4067, file: !4016, line: 67, baseType: !4070, size: 192)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4016, line: 47, size: 192, elements: !4071)
!4071 = !{!4072, !4073, !4074}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4070, file: !4016, line: 48, baseType: !733, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4070, file: !4016, line: 49, baseType: !733, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4070, file: !4016, line: 50, baseType: !733, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4015, file: !4016, line: 160, baseType: !3654, size: 640, offset: 2240)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4015, file: !4016, line: 163, baseType: !4077, size: 256, offset: 2880)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 256, elements: !800)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4015, file: !4016, line: 169, baseType: !779, size: 64, offset: 3136)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4015, file: !4016, line: 172, baseType: !40, size: 32, offset: 3200)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4015, file: !4016, line: 174, baseType: !4081, size: 64, offset: 3264)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4016, line: 174, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4015, file: !4016, line: 185, baseType: !4084, size: 64, offset: 3328)
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !433, line: 860, baseType: !4085)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 853, size: 64, elements: !4086)
!4086 = !{!4087, !4088}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4085, file: !433, line: 858, baseType: !432, size: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4085, file: !433, line: 859, baseType: !77, size: 32, offset: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4015, file: !4016, line: 186, baseType: !464, size: 64, offset: 3392)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4015, file: !4016, line: 186, baseType: !464, size: 64, offset: 3456)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4015, file: !4016, line: 186, baseType: !464, size: 64, offset: 3520)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4015, file: !4016, line: 186, baseType: !464, size: 64, offset: 3584)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4015, file: !4016, line: 187, baseType: !464, size: 64, offset: 3648)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4015, file: !4016, line: 188, baseType: !464, size: 64, offset: 3712)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4015, file: !4016, line: 189, baseType: !3642, size: 192, offset: 3776)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4015, file: !4016, line: 190, baseType: !57, size: 64, offset: 3968)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4015, file: !4016, line: 190, baseType: !57, size: 64, offset: 4032)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4015, file: !4016, line: 190, baseType: !57, size: 64, offset: 4096)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4015, file: !4016, line: 190, baseType: !57, size: 64, offset: 4160)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4015, file: !4016, line: 191, baseType: !57, size: 64, offset: 4224)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4015, file: !4016, line: 191, baseType: !57, size: 64, offset: 4288)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4015, file: !4016, line: 191, baseType: !57, size: 64, offset: 4352)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4015, file: !4016, line: 191, baseType: !57, size: 64, offset: 4416)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4015, file: !4016, line: 192, baseType: !57, size: 64, offset: 4480)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4015, file: !4016, line: 192, baseType: !57, size: 64, offset: 4544)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4015, file: !4016, line: 192, baseType: !57, size: 64, offset: 4608)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4015, file: !4016, line: 192, baseType: !57, size: 64, offset: 4672)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4015, file: !4016, line: 193, baseType: !57, size: 64, offset: 4736)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4015, file: !4016, line: 193, baseType: !57, size: 64, offset: 4800)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4015, file: !4016, line: 194, baseType: !4111, size: 448, offset: 4864)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4112, line: 12, size: 448, elements: !4113)
!4112 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4119, !4120}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4111, file: !4112, line: 15, baseType: !464, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4111, file: !4112, line: 17, baseType: !464, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4111, file: !4112, line: 19, baseType: !464, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4111, file: !4112, line: 21, baseType: !464, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4111, file: !4112, line: 29, baseType: !464, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4111, file: !4112, line: 35, baseType: !464, size: 64, offset: 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4111, file: !4112, line: 44, baseType: !464, size: 64, offset: 384)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4015, file: !4016, line: 202, baseType: !466, size: 64, offset: 5312)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4015, file: !4016, line: 213, baseType: !4123, size: 2048, offset: 5376)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4124, size: 2048, elements: !3677)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4125, line: 43, size: 128, elements: !4126)
!4125 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4126 = !{!4127, !4128}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4124, file: !4125, line: 44, baseType: !56, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4124, file: !4125, line: 45, baseType: !56, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4015, file: !4016, line: 216, baseType: !4130, size: 448, offset: 7424)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4016, line: 30, size: 448, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4135, !4136, !4137, !4138}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4130, file: !4016, line: 31, baseType: !40, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4130, file: !4016, line: 32, baseType: !366, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4130, file: !4016, line: 33, baseType: !57, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4130, file: !4016, line: 34, baseType: !464, size: 64, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4130, file: !4016, line: 34, baseType: !464, size: 64, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4130, file: !4016, line: 35, baseType: !57, size: 64, offset: 320)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4130, file: !4016, line: 35, baseType: !57, size: 64, offset: 384)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4015, file: !4016, line: 219, baseType: !4140, size: 64, offset: 7872)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4142, line: 41, size: 3456, elements: !4143)
!4142 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4143 = !{!4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4158, !4159, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4141, file: !4142, line: 47, baseType: !112, size: 16)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4141, file: !4142, line: 48, baseType: !461, size: 32, offset: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4141, file: !4142, line: 54, baseType: !103, size: 8, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4141, file: !4142, line: 55, baseType: !103, size: 8, offset: 72)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4141, file: !4142, line: 73, baseType: !465, size: 64, align: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4141, file: !4142, line: 74, baseType: !465, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4141, file: !4142, line: 81, baseType: !465, size: 64, offset: 256)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4141, file: !4142, line: 82, baseType: !465, size: 64, offset: 320)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4141, file: !4142, line: 85, baseType: !465, size: 64, offset: 384)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4141, file: !4142, line: 86, baseType: !465, size: 64, offset: 448)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4141, file: !4142, line: 94, baseType: !465, size: 64, offset: 512)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4141, file: !4142, line: 102, baseType: !465, size: 64, offset: 576)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4141, file: !4142, line: 107, baseType: !4157, size: 256, offset: 640)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !473)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4141, file: !4142, line: 108, baseType: !103, size: 8, align: 64, offset: 896)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4141, file: !4142, line: 110, baseType: !4160, size: 24, offset: 904)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24, elements: !633)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4141, file: !4142, line: 111, baseType: !461, size: 32, align: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4141, file: !4142, line: 113, baseType: !461, size: 32, offset: 992)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4141, file: !4142, line: 114, baseType: !461, size: 32, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4141, file: !4142, line: 115, baseType: !461, size: 32, offset: 1056)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4141, file: !4142, line: 117, baseType: !461, size: 32, offset: 1088)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4141, file: !4142, line: 118, baseType: !465, size: 64, align: 64, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4141, file: !4142, line: 120, baseType: !465, size: 64, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4141, file: !4142, line: 121, baseType: !465, size: 64, offset: 1280)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4141, file: !4142, line: 122, baseType: !465, size: 64, offset: 1344)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4141, file: !4142, line: 123, baseType: !465, size: 64, offset: 1408)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4141, file: !4142, line: 133, baseType: !465, size: 64, offset: 1472)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4141, file: !4142, line: 137, baseType: !465, size: 64, offset: 1536)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4141, file: !4142, line: 142, baseType: !465, size: 64, offset: 1600)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4141, file: !4142, line: 143, baseType: !465, size: 64, offset: 1664)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4141, file: !4142, line: 146, baseType: !465, size: 64, offset: 1728)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4141, file: !4142, line: 147, baseType: !465, size: 64, offset: 1792)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4141, file: !4142, line: 148, baseType: !465, size: 64, offset: 1856)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4141, file: !4142, line: 149, baseType: !465, size: 64, offset: 1920)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4141, file: !4142, line: 154, baseType: !465, size: 64, offset: 1984)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4141, file: !4142, line: 155, baseType: !465, size: 64, offset: 2048)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4141, file: !4142, line: 156, baseType: !465, size: 64, offset: 2112)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4141, file: !4142, line: 158, baseType: !465, size: 64, offset: 2176)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4141, file: !4142, line: 159, baseType: !465, size: 64, offset: 2240)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4141, file: !4142, line: 162, baseType: !465, size: 64, offset: 2304)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4141, file: !4142, line: 163, baseType: !465, size: 64, offset: 2368)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4141, file: !4142, line: 164, baseType: !465, size: 64, offset: 2432)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4141, file: !4142, line: 167, baseType: !465, size: 64, offset: 2496)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4141, file: !4142, line: 168, baseType: !465, size: 64, offset: 2560)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4141, file: !4142, line: 171, baseType: !465, size: 64, offset: 2624)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4141, file: !4142, line: 172, baseType: !465, size: 64, offset: 2688)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4141, file: !4142, line: 175, baseType: !465, size: 64, offset: 2752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4141, file: !4142, line: 178, baseType: !465, size: 64, offset: 2816)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4141, file: !4142, line: 179, baseType: !465, size: 64, offset: 2880)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4141, file: !4142, line: 182, baseType: !461, size: 32, offset: 2944)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4141, file: !4142, line: 186, baseType: !465, size: 64, align: 64, offset: 3008)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4141, file: !4142, line: 194, baseType: !465, size: 64, offset: 3072)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4141, file: !4142, line: 195, baseType: !465, size: 64, offset: 3136)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4141, file: !4142, line: 199, baseType: !465, size: 64, offset: 3200)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4141, file: !4142, line: 200, baseType: !465, size: 64, offset: 3264)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4141, file: !4142, line: 203, baseType: !465, size: 64, offset: 3328)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4141, file: !4142, line: 204, baseType: !465, size: 64, offset: 3392)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4015, file: !4016, line: 222, baseType: !7, size: 32, offset: 7936)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4015, file: !4016, line: 223, baseType: !4204, size: 64, offset: 8000)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4016, line: 223, flags: DIFlagFwdDecl)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4015, file: !4016, line: 230, baseType: !929, size: 8, offset: 8064)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4015, file: !4016, line: 231, baseType: !898, size: 16, offset: 8080)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4015, file: !4016, line: 232, baseType: !898, size: 16, offset: 8096)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4015, file: !4016, line: 234, baseType: !1422, size: 64, offset: 8128)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4015, file: !4016, line: 237, baseType: !740, size: 256, offset: 8192)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4015, file: !4016, line: 243, baseType: !870, size: 320, offset: 8448)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3327, file: !1833, line: 1111, baseType: !4213, size: 64, offset: 15424)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4016, line: 20, size: 16640, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4214, file: !4016, line: 21, baseType: !77, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4214, file: !4016, line: 22, baseType: !783, size: 32, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4214, file: !4016, line: 23, baseType: !72, size: 192, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4214, file: !4016, line: 24, baseType: !4220, size: 16384, offset: 256)
!4220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4221, size: 16384, elements: !637)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4027, line: 51, size: 256, elements: !4222)
!4222 = !{!4223}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4221, file: !4027, line: 52, baseType: !4224, size: 256)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4027, line: 37, size: 256, elements: !4225)
!4225 = !{!4226, !4233, !4234, !4238}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4224, file: !4027, line: 39, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4228, line: 83, baseType: !4229)
!4228 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4228, line: 82, baseType: !4231)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !40}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4224, file: !4027, line: 40, baseType: !57, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4224, file: !4027, line: 46, baseType: !4235, size: 64, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4228, line: 86, baseType: !4236)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4228, line: 85, baseType: !2416)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4224, file: !4027, line: 48, baseType: !4031, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3327, file: !1833, line: 1112, baseType: !4031, size: 64, offset: 15488)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3327, file: !1833, line: 1113, baseType: !4031, size: 64, offset: 15552)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3327, file: !1833, line: 1115, baseType: !4031, size: 64, offset: 15616)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3327, file: !1833, line: 1116, baseType: !4026, size: 192, offset: 15680)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3327, file: !1833, line: 1117, baseType: !57, size: 64, offset: 15872)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3327, file: !1833, line: 1118, baseType: !53, size: 64, offset: 15936)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3327, file: !1833, line: 1119, baseType: !7, size: 32, offset: 16000)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3327, file: !1833, line: 1121, baseType: !721, size: 64, offset: 16064)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3327, file: !1833, line: 1125, baseType: !4248, size: 64, offset: 16128)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1833, line: 43, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3327, file: !1833, line: 1127, baseType: !397, size: 32, offset: 16192)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3327, file: !1833, line: 1128, baseType: !7, size: 32, offset: 16224)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3327, file: !1833, line: 1130, baseType: !4253, size: 128, offset: 16256)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4254, line: 37, size: 128, elements: !4255)
!4254 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4255 = !{!4256, !4257, !4258}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4253, file: !4254, line: 38, baseType: !40, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4253, file: !4254, line: 39, baseType: !67, size: 32, offset: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4253, file: !4254, line: 40, baseType: !4259, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4254, line: 24, flags: DIFlagFwdDecl)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3327, file: !1833, line: 1131, baseType: !4262, size: 256, offset: 16384)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4263, line: 12, size: 256, elements: !4264)
!4263 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4264 = !{!4265, !4266, !4267, !4268}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4262, file: !4263, line: 13, baseType: !532, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4262, file: !4263, line: 14, baseType: !57, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4262, file: !4263, line: 15, baseType: !57, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4262, file: !4263, line: 16, baseType: !929, size: 8, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3327, file: !1833, line: 1134, baseType: !464, size: 64, offset: 16640)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3327, file: !1833, line: 1135, baseType: !464, size: 64, offset: 16704)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3327, file: !1833, line: 1138, baseType: !77, size: 32, offset: 16768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3327, file: !1833, line: 1141, baseType: !745, size: 32, offset: 16800)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3327, file: !1833, line: 1143, baseType: !4274, size: 64, offset: 16832)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1833, line: 735, size: 64, elements: !4275)
!4275 = !{!4276}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4274, file: !1833, line: 736, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3327, file: !1833, line: 1147, baseType: !3027, size: 128, offset: 16896)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3327, file: !1833, line: 1149, baseType: !3326, size: 64, offset: 17024)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3327, file: !1833, line: 1151, baseType: !4281, size: 64, offset: 17088)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1833, line: 1151, flags: DIFlagFwdDecl)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3327, file: !1833, line: 1188, baseType: !38, size: 64, offset: 17152)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3327, file: !1833, line: 1191, baseType: !4285, size: 64, offset: 17216)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1833, line: 44, flags: DIFlagFwdDecl)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3327, file: !1833, line: 1194, baseType: !4288, size: 64, offset: 17280)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1833, line: 45, flags: DIFlagFwdDecl)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3327, file: !1833, line: 1197, baseType: !4291, size: 64, offset: 17344)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4293, line: 155, size: 64, elements: !4294)
!4293 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4294 = !{!4295}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4292, file: !4293, line: 157, baseType: !57, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3327, file: !1833, line: 1199, baseType: !4297, size: 64, offset: 17408)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2744, line: 99, size: 128, elements: !4299)
!4299 = !{!4300, !4301, !4302}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4298, file: !2744, line: 100, baseType: !731, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4298, file: !2744, line: 101, baseType: !67, size: 32, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4298, file: !2744, line: 103, baseType: !44, size: 16, offset: 96)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3327, file: !1833, line: 1202, baseType: !4304, size: 64, offset: 17472)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1833, line: 48, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3327, file: !1833, line: 1205, baseType: !57, size: 64, offset: 17536)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3327, file: !1833, line: 1206, baseType: !4308, size: 64, offset: 17600)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4027, line: 14, baseType: !4310)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4027, line: 12, size: 384, elements: !4311)
!4311 = !{!4312}
!4312 = !DIDerivedType(tag: DW_TAG_member, scope: !4310, file: !4027, line: 13, baseType: !4313, size: 384)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4310, file: !4027, line: 13, size: 384, elements: !4314)
!4314 = !{!4315, !4316, !4317, !4318}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4313, file: !4027, line: 13, baseType: !40, size: 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4313, file: !4027, line: 13, baseType: !40, size: 32, offset: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4313, file: !4027, line: 13, baseType: !40, size: 32, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4313, file: !4027, line: 13, baseType: !4319, size: 256, offset: 128)
!4319 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4320, line: 37, size: 256, elements: !4321)
!4320 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4321 = !{!4322, !4327, !4340, !4346, !4355, !4382, !4387}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4319, file: !4320, line: 42, baseType: !4323, size: 64)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !4320, line: 39, size: 64, elements: !4324)
!4324 = !{!4325, !4326}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4323, file: !4320, line: 40, baseType: !3619, size: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4323, file: !4320, line: 41, baseType: !403, size: 32, offset: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4319, file: !4320, line: 50, baseType: !4328, size: 192)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !4320, line: 45, size: 192, elements: !4329)
!4329 = !{!4330, !4332, !4333, !4339}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4328, file: !4320, line: 46, baseType: !4331, size: 32)
!4331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !55, line: 95, baseType: !40)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4328, file: !4320, line: 47, baseType: !40, size: 32, offset: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4328, file: !4320, line: 48, baseType: !4334, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4320, line: 11, baseType: !4335)
!4335 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4320, line: 8, size: 64, elements: !4336)
!4336 = !{!4337, !4338}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4335, file: !4320, line: 9, baseType: !40, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4335, file: !4320, line: 10, baseType: !38, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4328, file: !4320, line: 49, baseType: !40, size: 32, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4319, file: !4320, line: 57, baseType: !4341, size: 128)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !4320, line: 53, size: 128, elements: !4342)
!4342 = !{!4343, !4344, !4345}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4341, file: !4320, line: 54, baseType: !3619, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4341, file: !4320, line: 55, baseType: !403, size: 32, offset: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4341, file: !4320, line: 56, baseType: !4334, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4319, file: !4320, line: 66, baseType: !4347, size: 256)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !4320, line: 60, size: 256, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352, !4354}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4347, file: !4320, line: 61, baseType: !3619, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4347, file: !4320, line: 62, baseType: !403, size: 32, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4347, file: !4320, line: 63, baseType: !40, size: 32, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4347, file: !4320, line: 64, baseType: !4353, size: 64, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !55, line: 94, baseType: !666)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4347, file: !4320, line: 65, baseType: !4353, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4319, file: !4320, line: 105, baseType: !4356, size: 256)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !4320, line: 69, size: 256, elements: !4357)
!4357 = !{!4358, !4359}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4356, file: !4320, line: 70, baseType: !38, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, scope: !4356, file: !4320, line: 79, baseType: !4360, size: 192, offset: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4356, file: !4320, line: 79, size: 192, elements: !4361)
!4361 = !{!4362, !4363, !4364, !4371, !4376}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4360, file: !4320, line: 81, baseType: !40, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4360, file: !4320, line: 86, baseType: !898, size: 16)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4360, file: !4320, line: 92, baseType: !4365, size: 192)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4360, file: !4320, line: 88, size: 192, elements: !4366)
!4366 = !{!4367, !4369, !4370}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4365, file: !4320, line: 89, baseType: !4368, size: 64)
!4368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !3011)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4365, file: !4320, line: 90, baseType: !38, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4365, file: !4320, line: 91, baseType: !38, size: 64, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4360, file: !4320, line: 97, baseType: !4372, size: 96)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4360, file: !4320, line: 94, size: 96, elements: !4373)
!4373 = !{!4374, !4375}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4372, file: !4320, line: 95, baseType: !4368, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4372, file: !4320, line: 96, baseType: !461, size: 32, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4360, file: !4320, line: 103, baseType: !4377, size: 128)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4360, file: !4320, line: 99, size: 128, elements: !4378)
!4378 = !{!4379, !4380, !4381}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4377, file: !4320, line: 100, baseType: !57, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4377, file: !4320, line: 101, baseType: !461, size: 32, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4377, file: !4320, line: 102, baseType: !461, size: 32, offset: 96)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4319, file: !4320, line: 111, baseType: !4383, size: 128)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !4320, line: 108, size: 128, elements: !4384)
!4384 = !{!4385, !4386}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4383, file: !4320, line: 109, baseType: !366, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4383, file: !4320, line: 110, baseType: !40, size: 32, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4319, file: !4320, line: 118, baseType: !4388, size: 128)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !4320, line: 114, size: 128, elements: !4389)
!4389 = !{!4390, !4391, !4392}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4388, file: !4320, line: 115, baseType: !38, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4388, file: !4320, line: 116, baseType: !40, size: 32, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4388, file: !4320, line: 117, baseType: !7, size: 32, offset: 96)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3327, file: !1833, line: 1208, baseType: !4111, size: 448, offset: 17664)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3327, file: !1833, line: 1215, baseType: !464, size: 64, offset: 18112)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3327, file: !1833, line: 1217, baseType: !464, size: 64, offset: 18176)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3327, file: !1833, line: 1219, baseType: !464, size: 64, offset: 18240)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3327, file: !1833, line: 1223, baseType: !4398, size: 64, offset: 18304)
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4399, line: 99, baseType: !4400)
!4399 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4399, line: 99, size: 64, elements: !4401)
!4401 = !{!4402}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4400, file: !4399, line: 99, baseType: !3489, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3327, file: !1833, line: 1225, baseType: !432, size: 32, offset: 18368)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3327, file: !1833, line: 1226, baseType: !40, size: 32, offset: 18400)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3327, file: !1833, line: 1227, baseType: !40, size: 32, offset: 18432)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3327, file: !1833, line: 1231, baseType: !3753, size: 64, offset: 18496)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3327, file: !1833, line: 1233, baseType: !115, size: 128, offset: 18560)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3327, file: !1833, line: 1240, baseType: !4409, size: 64, offset: 18688)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1833, line: 62, flags: DIFlagFwdDecl)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3327, file: !1833, line: 1242, baseType: !4412, size: 64, offset: 18752)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1833, line: 1242, flags: DIFlagFwdDecl)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3327, file: !1833, line: 1244, baseType: !115, size: 128, offset: 18816)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3327, file: !1833, line: 1245, baseType: !4416, size: 64, offset: 18944)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1833, line: 51, flags: DIFlagFwdDecl)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3327, file: !1833, line: 1246, baseType: !740, size: 256, offset: 19008)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3327, file: !1833, line: 1247, baseType: !7, size: 32, offset: 19264)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3327, file: !1833, line: 1250, baseType: !4421, size: 64, offset: 19328)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1833, line: 57, flags: DIFlagFwdDecl)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3327, file: !1833, line: 1251, baseType: !740, size: 256, offset: 19392)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3327, file: !1833, line: 1252, baseType: !115, size: 128, offset: 19648)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3327, file: !1833, line: 1259, baseType: !1657, size: 64, offset: 19776)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3327, file: !1833, line: 1260, baseType: !898, size: 16, offset: 19840)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3327, file: !1833, line: 1261, baseType: !898, size: 16, offset: 19856)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3327, file: !1833, line: 1314, baseType: !4429, size: 64, offset: 19904)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4431, line: 62, size: 256, align: 256, elements: !4432)
!4431 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4430, file: !4431, line: 75, baseType: !461, size: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4430, file: !4431, line: 90, baseType: !461, size: 32, offset: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4430, file: !4431, line: 112, baseType: !465, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4430, file: !4431, line: 132, baseType: !461, size: 32, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4430, file: !4431, line: 140, baseType: !461, size: 32, offset: 160)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4430, file: !4431, line: 149, baseType: !461, size: 32, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4430, file: !4431, line: 154, baseType: !4440, offset: 224)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, elements: !813)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3327, file: !1833, line: 1315, baseType: !460, size: 32, offset: 19968)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3327, file: !1833, line: 1316, baseType: !460, size: 32, offset: 20000)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3327, file: !1833, line: 1321, baseType: !57, size: 64, offset: 20032)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3327, file: !1833, line: 1325, baseType: !40, size: 32, offset: 20096)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3327, file: !1833, line: 1326, baseType: !40, size: 32, offset: 20128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3327, file: !1833, line: 1327, baseType: !40, size: 32, offset: 20160)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3327, file: !1833, line: 1328, baseType: !40, size: 32, offset: 20192)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3327, file: !1833, line: 1329, baseType: !718, size: 128, align: 64, offset: 20224)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3327, file: !1833, line: 1332, baseType: !4450, size: 128, offset: 20352)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4451, line: 51, size: 128, elements: !4452)
!4451 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4452 = !{!4453, !4458, !4459}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4450, file: !4451, line: 60, baseType: !4454, size: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4455, line: 7, size: 64, elements: !4456)
!4455 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4456 = !{!4457}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4454, file: !4455, line: 12, baseType: !3486, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4450, file: !4451, line: 63, baseType: !929, size: 8, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4450, file: !4451, line: 70, baseType: !929, size: 8, offset: 72)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3327, file: !1833, line: 1335, baseType: !1831, size: 64, offset: 20480)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3327, file: !1833, line: 1337, baseType: !4462, size: 128, offset: 20544)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4451, line: 39, size: 128, elements: !4463)
!4463 = !{!4464, !4465, !4466}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4462, file: !4451, line: 40, baseType: !1300, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4462, file: !4451, line: 42, baseType: !461, size: 32, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4462, file: !4451, line: 43, baseType: !461, size: 32, offset: 96)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3327, file: !1833, line: 1340, baseType: !4468, size: 64, offset: 20672)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1833, line: 69, flags: DIFlagFwdDecl)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3327, file: !1833, line: 1351, baseType: !40, size: 32, offset: 20736)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3327, file: !1833, line: 1352, baseType: !40, size: 32, offset: 20768)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3327, file: !1833, line: 1354, baseType: !57, size: 64, offset: 20800)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3327, file: !1833, line: 1364, baseType: !464, size: 64, offset: 20864)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3327, file: !1833, line: 1365, baseType: !464, size: 64, offset: 20928)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3327, file: !1833, line: 1412, baseType: !57, size: 64, offset: 20992)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3327, file: !1833, line: 1453, baseType: !2739, size: 64, offset: 21056)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3327, file: !1833, line: 1457, baseType: !4478, size: 64, offset: 21120)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !247, line: 61, size: 576, elements: !4480)
!4480 = !{!4481, !4482, !4501, !4504, !4505, !4538, !4548}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4479, file: !247, line: 62, baseType: !246, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, scope: !4479, file: !247, line: 64, baseType: !4483, size: 192, offset: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4479, file: !247, line: 64, size: 192, elements: !4484)
!4484 = !{!4485, !4496}
!4485 = !DIDerivedType(tag: DW_TAG_member, scope: !4483, file: !247, line: 65, baseType: !4486, size: 192)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4483, file: !247, line: 65, size: 192, elements: !4487)
!4487 = !{!4488, !4495}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4486, file: !247, line: 66, baseType: !4489, size: 128)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4490, line: 50, size: 128, elements: !4491)
!4490 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4491 = !{!4492, !4493, !4494}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4489, file: !4490, line: 52, baseType: !57, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4489, file: !4490, line: 54, baseType: !7, size: 32, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4489, file: !4490, line: 55, baseType: !7, size: 32, offset: 96)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4486, file: !247, line: 67, baseType: !57, size: 64, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, scope: !4483, file: !247, line: 70, baseType: !4497, size: 192)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4483, file: !247, line: 70, size: 192, elements: !4498)
!4498 = !{!4499, !4500}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4497, file: !247, line: 71, baseType: !718, size: 128, align: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4497, file: !247, line: 72, baseType: !57, size: 64, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4479, file: !247, line: 76, baseType: !4502, size: 64, offset: 256)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !247, line: 76, flags: DIFlagFwdDecl)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4479, file: !247, line: 77, baseType: !57, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4479, file: !247, line: 79, baseType: !4506, size: 64, offset: 384)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4490, line: 25, size: 256, elements: !4508)
!4508 = !{!4509, !4515, !4519}
!4509 = !DIDerivedType(tag: DW_TAG_member, scope: !4507, file: !4490, line: 26, baseType: !4510, size: 128)
!4510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4507, file: !4490, line: 26, size: 128, elements: !4511)
!4511 = !{!4512, !4514}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4510, file: !4490, line: 27, baseType: !4513, size: 128)
!4513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !3677)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4510, file: !4490, line: 28, baseType: !4513, size: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4507, file: !4490, line: 31, baseType: !4516, size: 64, offset: 128)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4518)
!4518 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4490, line: 23, flags: DIFlagFwdDecl)
!4519 = !DIDerivedType(tag: DW_TAG_member, scope: !4507, file: !4490, line: 33, baseType: !4520, size: 64, offset: 192)
!4520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4507, file: !4490, line: 33, size: 64, elements: !4521)
!4521 = !{!4522, !4528, !4533}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4520, file: !4490, line: 38, baseType: !4523, size: 64)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4520, file: !4490, line: 34, size: 64, elements: !4524)
!4524 = !{!4525, !4526, !4527}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4523, file: !4490, line: 35, baseType: !855, size: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4523, file: !4490, line: 36, baseType: !101, size: 8, offset: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4523, file: !4490, line: 37, baseType: !101, size: 8, offset: 40)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4520, file: !4490, line: 42, baseType: !4529, size: 16)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4520, file: !4490, line: 39, size: 16, elements: !4530)
!4530 = !{!4531, !4532}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4529, file: !4490, line: 40, baseType: !101, size: 8)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4529, file: !4490, line: 41, baseType: !101, size: 8, offset: 8)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4520, file: !4490, line: 46, baseType: !4534, size: 16)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4520, file: !4490, line: 43, size: 16, elements: !4535)
!4535 = !{!4536, !4537}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4534, file: !4490, line: 44, baseType: !101, size: 8)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4534, file: !4490, line: 45, baseType: !101, size: 8, offset: 8)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4479, file: !247, line: 81, baseType: !4539, size: 64, offset: 448)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !247, line: 85, size: 384, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4540, file: !247, line: 86, baseType: !4502, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4540, file: !247, line: 87, baseType: !57, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4540, file: !247, line: 88, baseType: !57, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4540, file: !247, line: 89, baseType: !57, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4540, file: !247, line: 90, baseType: !929, size: 8, offset: 256)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4540, file: !247, line: 92, baseType: !4539, size: 64, offset: 320)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4479, file: !247, line: 82, baseType: !7, size: 32, offset: 512)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3327, file: !1833, line: 1463, baseType: !4550, offset: 21184)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1833, line: 739, elements: !1443)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3327, file: !1833, line: 1470, baseType: !718, size: 128, align: 64, offset: 21184)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3327, file: !1833, line: 1471, baseType: !783, size: 32, offset: 21312)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3327, file: !1833, line: 1472, baseType: !40, size: 32, offset: 21344)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3327, file: !1833, line: 1474, baseType: !3326, size: 64, offset: 21376)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3327, file: !1833, line: 1475, baseType: !2312, size: 320, offset: 21440)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3327, file: !1833, line: 1478, baseType: !4557, size: 64, offset: 21760)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1833, line: 1478, flags: DIFlagFwdDecl)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3327, file: !1833, line: 1482, baseType: !783, size: 32, offset: 21824)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3327, file: !1833, line: 1489, baseType: !38, size: 64, offset: 21888)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3327, file: !1833, line: 1504, baseType: !38, size: 64, offset: 21952)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3327, file: !1833, line: 1505, baseType: !465, size: 64, offset: 22016)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3327, file: !1833, line: 1506, baseType: !464, size: 64, offset: 22080)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3327, file: !1833, line: 1507, baseType: !465, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3327, file: !1833, line: 1508, baseType: !465, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3327, file: !1833, line: 1509, baseType: !465, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3327, file: !1833, line: 1510, baseType: !718, size: 128, align: 64, offset: 22208)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3327, file: !1833, line: 1511, baseType: !40, size: 32, offset: 22336)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3327, file: !1833, line: 1515, baseType: !4570, size: 64, offset: 22400)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !713, line: 56, size: 64, elements: !4571)
!4571 = !{!4572}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4570, file: !713, line: 57, baseType: !716, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3327, file: !1833, line: 1518, baseType: !4570, size: 64, offset: 22464)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3327, file: !1833, line: 1528, baseType: !718, size: 128, align: 64, offset: 22528)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3327, file: !1833, line: 1552, baseType: !4576, size: 35328, offset: 23040)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4577, line: 430, size: 35328, elements: !4578)
!4577 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4578 = !{!4579, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4608, !4609, !4610, !4611, !4612, !4613, !4616, !4617, !4618, !4619}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4576, file: !4577, line: 432, baseType: !4580, size: 192)
!4580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4581, size: 192, elements: !633)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4582, line: 16, size: 64, elements: !4583)
!4582 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4583 = !{!4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4581, file: !4582, line: 17, baseType: !111, size: 16)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4581, file: !4582, line: 18, baseType: !111, size: 16, offset: 16)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4581, file: !4582, line: 19, baseType: !111, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4581, file: !4582, line: 19, baseType: !111, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4581, file: !4582, line: 19, baseType: !111, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4581, file: !4582, line: 19, baseType: !111, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4581, file: !4582, line: 19, baseType: !111, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4581, file: !4582, line: 20, baseType: !111, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4581, file: !4582, line: 20, baseType: !111, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4581, file: !4582, line: 20, baseType: !111, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4581, file: !4582, line: 20, baseType: !111, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4581, file: !4582, line: 20, baseType: !111, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4581, file: !4582, line: 20, baseType: !111, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4576, file: !4577, line: 436, baseType: !57, size: 64, offset: 192)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4576, file: !4577, line: 440, baseType: !44, size: 16, offset: 256)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4576, file: !4577, line: 441, baseType: !44, size: 16, offset: 272)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4576, file: !4577, line: 442, baseType: !44, size: 16, offset: 288)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4576, file: !4577, line: 443, baseType: !44, size: 16, offset: 304)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4576, file: !4577, line: 447, baseType: !57, size: 64, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4576, file: !4577, line: 448, baseType: !57, size: 64, offset: 384)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4576, file: !4577, line: 459, baseType: !4605, size: 256, offset: 448)
!4605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4606, size: 256, elements: !800)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4577, line: 428, flags: DIFlagFwdDecl)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4576, file: !4577, line: 461, baseType: !57, size: 64, offset: 704)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4576, file: !4577, line: 463, baseType: !57, size: 64, offset: 768)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4576, file: !4577, line: 465, baseType: !57, size: 64, offset: 832)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4576, file: !4577, line: 466, baseType: !57, size: 64, offset: 896)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4576, file: !4577, line: 467, baseType: !57, size: 64, offset: 960)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4576, file: !4577, line: 473, baseType: !4614, size: 64, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4577, line: 10, flags: DIFlagFwdDecl)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4576, file: !4577, line: 480, baseType: !57, size: 64, offset: 1088)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4576, file: !4577, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4576, file: !4577, line: 491, baseType: !460, size: 32, offset: 1184)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4576, file: !4577, line: 501, baseType: !4620, size: 33792, offset: 1536)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4621, line: 448, size: 33792, elements: !4622)
!4621 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4622 = !{!4623, !4624, !4625, !4785, !4786, !4792, !4793}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4620, file: !4621, line: 461, baseType: !7, size: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4620, file: !4621, line: 468, baseType: !57, size: 64, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4620, file: !4621, line: 476, baseType: !4626, size: 64, offset: 128)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4621, line: 356, size: 33280, align: 512, elements: !4628)
!4628 = !{!4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4627, file: !4621, line: 358, baseType: !7, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4627, file: !4621, line: 361, baseType: !7, size: 32, offset: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4627, file: !4621, line: 364, baseType: !464, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4627, file: !4621, line: 367, baseType: !464, size: 64, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4627, file: !4621, line: 370, baseType: !464, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4627, file: !4621, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4627, file: !4621, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4627, file: !4621, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4627, file: !4621, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4627, file: !4621, line: 397, baseType: !4639, size: 32768, offset: 512)
!4639 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4621, line: 348, size: 32768, elements: !4640)
!4640 = !{!4641, !4656, !4693, !4770, !4783}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4639, file: !4621, line: 349, baseType: !4642, size: 896)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4621, line: 12, size: 896, elements: !4643)
!4643 = !{!4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4655}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4642, file: !4621, line: 13, baseType: !460, size: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4642, file: !4621, line: 14, baseType: !460, size: 32, offset: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4642, file: !4621, line: 15, baseType: !460, size: 32, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4642, file: !4621, line: 16, baseType: !460, size: 32, offset: 96)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4642, file: !4621, line: 17, baseType: !460, size: 32, offset: 128)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4642, file: !4621, line: 18, baseType: !460, size: 32, offset: 160)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4642, file: !4621, line: 19, baseType: !460, size: 32, offset: 192)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4642, file: !4621, line: 22, baseType: !4652, size: 640, offset: 224)
!4652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 640, elements: !4653)
!4653 = !{!4654}
!4654 = !DISubrange(count: 20)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4642, file: !4621, line: 25, baseType: !460, size: 32, offset: 864)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4639, file: !4621, line: 350, baseType: !4657, size: 4096, align: 128)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4621, line: 34, size: 4096, align: 128, elements: !4658)
!4658 = !{!4659, !4660, !4661, !4662, !4663, !4678, !4679, !4680, !4682, !4684, !4688}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4657, file: !4621, line: 35, baseType: !111, size: 16)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4657, file: !4621, line: 36, baseType: !111, size: 16, offset: 16)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4657, file: !4621, line: 37, baseType: !111, size: 16, offset: 32)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4657, file: !4621, line: 38, baseType: !111, size: 16, offset: 48)
!4663 = !DIDerivedType(tag: DW_TAG_member, scope: !4657, file: !4621, line: 39, baseType: !4664, size: 128, offset: 64)
!4664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4657, file: !4621, line: 39, size: 128, elements: !4665)
!4665 = !{!4666, !4671}
!4666 = !DIDerivedType(tag: DW_TAG_member, scope: !4664, file: !4621, line: 40, baseType: !4667, size: 128)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4664, file: !4621, line: 40, size: 128, elements: !4668)
!4668 = !{!4669, !4670}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4667, file: !4621, line: 41, baseType: !464, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4667, file: !4621, line: 42, baseType: !464, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, scope: !4664, file: !4621, line: 44, baseType: !4672, size: 128)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4664, file: !4621, line: 44, size: 128, elements: !4673)
!4673 = !{!4674, !4675, !4676, !4677}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4672, file: !4621, line: 45, baseType: !460, size: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4672, file: !4621, line: 46, baseType: !460, size: 32, offset: 32)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4672, file: !4621, line: 47, baseType: !460, size: 32, offset: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4672, file: !4621, line: 48, baseType: !460, size: 32, offset: 96)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4657, file: !4621, line: 51, baseType: !460, size: 32, offset: 192)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4657, file: !4621, line: 52, baseType: !460, size: 32, offset: 224)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4657, file: !4621, line: 55, baseType: !4681, size: 1024, offset: 256)
!4681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1024, elements: !473)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4657, file: !4621, line: 58, baseType: !4683, size: 2048, offset: 1280)
!4683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 2048, elements: !637)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4657, file: !4621, line: 60, baseType: !4685, size: 384, offset: 3328)
!4685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 384, elements: !4686)
!4686 = !{!4687}
!4687 = !DISubrange(count: 12)
!4688 = !DIDerivedType(tag: DW_TAG_member, scope: !4657, file: !4621, line: 62, baseType: !4689, size: 384, offset: 3712)
!4689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4657, file: !4621, line: 62, size: 384, elements: !4690)
!4690 = !{!4691, !4692}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4689, file: !4621, line: 63, baseType: !4685, size: 384)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4689, file: !4621, line: 64, baseType: !4685, size: 384)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4639, file: !4621, line: 351, baseType: !4694, size: 1088)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4621, line: 79, size: 1088, elements: !4695)
!4695 = !{!4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4769}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4694, file: !4621, line: 80, baseType: !460, size: 32)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4694, file: !4621, line: 81, baseType: !460, size: 32, offset: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4694, file: !4621, line: 82, baseType: !460, size: 32, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4694, file: !4621, line: 83, baseType: !460, size: 32, offset: 96)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4694, file: !4621, line: 84, baseType: !460, size: 32, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4694, file: !4621, line: 85, baseType: !460, size: 32, offset: 160)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4694, file: !4621, line: 86, baseType: !460, size: 32, offset: 192)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4694, file: !4621, line: 88, baseType: !4652, size: 640, offset: 224)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4694, file: !4621, line: 89, baseType: !101, size: 8, offset: 864)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4694, file: !4621, line: 90, baseType: !101, size: 8, offset: 872)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4694, file: !4621, line: 91, baseType: !101, size: 8, offset: 880)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4694, file: !4621, line: 92, baseType: !101, size: 8, offset: 888)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4694, file: !4621, line: 93, baseType: !101, size: 8, offset: 896)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4694, file: !4621, line: 94, baseType: !101, size: 8, offset: 904)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4694, file: !4621, line: 95, baseType: !4711, size: 64, offset: 960)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4713, line: 11, size: 128, elements: !4714)
!4713 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4714 = !{!4715, !4716}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4712, file: !4713, line: 12, baseType: !366, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4712, file: !4713, line: 13, baseType: !4717, size: 64, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4719, line: 103, size: 1344, elements: !4720)
!4719 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4720 = !{!4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4749, !4750, !4751}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4718, file: !4719, line: 109, baseType: !57, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4718, file: !4719, line: 110, baseType: !57, size: 64, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4718, file: !4719, line: 111, baseType: !57, size: 64, offset: 128)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4718, file: !4719, line: 112, baseType: !57, size: 64, offset: 192)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4718, file: !4719, line: 113, baseType: !57, size: 64, offset: 256)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4718, file: !4719, line: 114, baseType: !57, size: 64, offset: 320)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4718, file: !4719, line: 117, baseType: !57, size: 64, offset: 384)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4718, file: !4719, line: 118, baseType: !57, size: 64, offset: 448)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4718, file: !4719, line: 119, baseType: !57, size: 64, offset: 512)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4718, file: !4719, line: 120, baseType: !57, size: 64, offset: 576)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4718, file: !4719, line: 121, baseType: !57, size: 64, offset: 640)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4718, file: !4719, line: 122, baseType: !57, size: 64, offset: 704)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4718, file: !4719, line: 123, baseType: !57, size: 64, offset: 768)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4718, file: !4719, line: 124, baseType: !57, size: 64, offset: 832)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4718, file: !4719, line: 125, baseType: !57, size: 64, offset: 896)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4718, file: !4719, line: 139, baseType: !57, size: 64, offset: 960)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4718, file: !4719, line: 142, baseType: !57, size: 64, offset: 1024)
!4738 = !DIDerivedType(tag: DW_TAG_member, scope: !4718, file: !4719, line: 144, baseType: !4739, size: 64, offset: 1088)
!4739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4718, file: !4719, line: 144, size: 64, elements: !4740)
!4740 = !{!4741, !4742, !4743}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4739, file: !4719, line: 146, baseType: !111, size: 16)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4739, file: !4719, line: 148, baseType: !464, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4739, file: !4719, line: 150, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4719, line: 59, size: 64, elements: !4745)
!4745 = !{!4746, !4747, !4748}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4744, file: !4719, line: 61, baseType: !464, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4744, file: !4719, line: 63, baseType: !464, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4744, file: !4719, line: 65, baseType: !464, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4718, file: !4719, line: 153, baseType: !57, size: 64, offset: 1152)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4718, file: !4719, line: 154, baseType: !57, size: 64, offset: 1216)
!4751 = !DIDerivedType(tag: DW_TAG_member, scope: !4718, file: !4719, line: 156, baseType: !4752, size: 64, offset: 1280)
!4752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4718, file: !4719, line: 156, size: 64, elements: !4753)
!4753 = !{!4754, !4755, !4756}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4752, file: !4719, line: 158, baseType: !111, size: 16)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4752, file: !4719, line: 160, baseType: !464, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4752, file: !4719, line: 162, baseType: !4757, size: 64)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4719, line: 69, size: 64, elements: !4758)
!4758 = !{!4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4757, file: !4719, line: 71, baseType: !464, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4757, file: !4719, line: 73, baseType: !464, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4757, file: !4719, line: 75, baseType: !464, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4757, file: !4719, line: 77, baseType: !464, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4757, file: !4719, line: 80, baseType: !464, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4757, file: !4719, line: 83, baseType: !464, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4757, file: !4719, line: 86, baseType: !464, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4757, file: !4719, line: 88, baseType: !464, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4757, file: !4719, line: 93, baseType: !464, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4757, file: !4719, line: 100, baseType: !464, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4694, file: !4621, line: 96, baseType: !460, size: 32, offset: 1024)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4639, file: !4621, line: 352, baseType: !4771, size: 4608, align: 512)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4621, line: 333, size: 4608, align: 512, elements: !4772)
!4772 = !{!4773, !4774, !4781}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4771, file: !4621, line: 334, baseType: !4657, size: 4096, align: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4771, file: !4621, line: 335, baseType: !4775, size: 512, offset: 4096)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4621, line: 312, size: 512, elements: !4776)
!4776 = !{!4777, !4778, !4779}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4775, file: !4621, line: 313, baseType: !464, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4775, file: !4621, line: 314, baseType: !464, size: 64, offset: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4775, file: !4621, line: 315, baseType: !4780, size: 384, offset: 128)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !916)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4771, file: !4621, line: 336, baseType: !4782, offset: 4608)
!4782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, elements: !813)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4639, file: !4621, line: 353, baseType: !4784, size: 32768)
!4784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 32768, elements: !3810)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4620, file: !4621, line: 484, baseType: !4626, size: 64, offset: 192)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4620, file: !4621, line: 491, baseType: !4787, size: 128, offset: 256)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4621, line: 404, size: 128, elements: !4788)
!4788 = !{!4789, !4790, !4791}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4787, file: !4621, line: 424, baseType: !464, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4787, file: !4621, line: 432, baseType: !7, size: 32, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4787, file: !4621, line: 440, baseType: !7, size: 32, offset: 96)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4620, file: !4621, line: 498, baseType: !4787, size: 128, offset: 384)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4620, file: !4621, line: 508, baseType: !4627, size: 33280, align: 512, offset: 512)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3309, file: !3310, line: 16, baseType: !72, size: 192, offset: 512)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3309, file: !3310, line: 17, baseType: !67, size: 32, offset: 704)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !544, file: !218, line: 1240, baseType: !38, size: 64, offset: 6912)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !544, file: !218, line: 1243, baseType: !460, size: 32, offset: 6976)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !544, file: !218, line: 1245, baseType: !886, size: 64, offset: 7040)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !544, file: !218, line: 1246, baseType: !886, size: 64, offset: 7104)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !544, file: !218, line: 1248, baseType: !461, size: 32, offset: 7168)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !544, file: !218, line: 1249, baseType: !4802, size: 64, offset: 7232)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !218, line: 634, flags: DIFlagFwdDecl)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !544, file: !218, line: 1252, baseType: !4157, size: 256, offset: 7296)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !544, file: !218, line: 1253, baseType: !4806, size: 128, offset: 7552)
!4806 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4807, line: 21, baseType: !4808)
!4807 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4807, line: 19, size: 128, elements: !4809)
!4809 = !{!4810}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4808, file: !4807, line: 20, baseType: !4811, size: 128)
!4811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !3677)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !544, file: !218, line: 1255, baseType: !7, size: 32, offset: 7680)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !544, file: !218, line: 1261, baseType: !740, size: 256, offset: 7744)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !544, file: !218, line: 1267, baseType: !34, size: 64, offset: 8000)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !544, file: !218, line: 1269, baseType: !489, size: 64, offset: 8064)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !544, file: !218, line: 1271, baseType: !4817, size: 448, offset: 8128)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2572, line: 63, size: 448, elements: !4818)
!4818 = !{!4819, !4824, !4825, !4826, !4827, !4828, !4829}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4817, file: !2572, line: 64, baseType: !4820, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!57, !4823, !2570}
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4817, file: !2572, line: 66, baseType: !4820, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4817, file: !2572, line: 69, baseType: !366, size: 64, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4817, file: !2572, line: 70, baseType: !40, size: 32, offset: 192)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4817, file: !2572, line: 71, baseType: !7, size: 32, offset: 224)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4817, file: !2572, line: 74, baseType: !115, size: 128, offset: 256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4817, file: !2572, line: 85, baseType: !4830, size: 64, offset: 384)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !544, file: !218, line: 1274, baseType: !731, size: 64, offset: 8576)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !544, file: !218, line: 1280, baseType: !731, size: 64, offset: 8640)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !544, file: !218, line: 1283, baseType: !40, size: 32, offset: 8704)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !544, file: !218, line: 1286, baseType: !1920, size: 32, offset: 8736)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !544, file: !218, line: 1289, baseType: !2374, size: 64, offset: 8768)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !544, file: !218, line: 1290, baseType: !791, size: 64, offset: 8832)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !544, file: !218, line: 1297, baseType: !1012, size: 64, offset: 8896)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !544, file: !218, line: 1304, baseType: !4839, size: 64, offset: 8960)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4840, line: 49, size: 64, elements: !4841)
!4840 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4841 = !{!4842}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4839, file: !4840, line: 50, baseType: !4843, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4840, line: 41, size: 512, align: 512, elements: !4845)
!4845 = !{!4846, !4847, !4852}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4844, file: !4840, line: 43, baseType: !77, size: 32)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4844, file: !4840, line: 45, baseType: !4848, size: 192, offset: 64)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4840, line: 29, size: 192, elements: !4849)
!4849 = !{!4850, !4851}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4848, file: !4840, line: 30, baseType: !115, size: 128)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4848, file: !4840, line: 32, baseType: !366, size: 64, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4844, file: !4840, line: 46, baseType: !366, size: 64, offset: 256)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !544, file: !218, line: 1305, baseType: !4839, size: 64, offset: 9024)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !544, file: !218, line: 1306, baseType: !718, size: 128, align: 64, offset: 9088)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !544, file: !218, line: 1307, baseType: !1061, size: 256, offset: 9216)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !544, file: !218, line: 1309, baseType: !740, size: 256, offset: 9472)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !544, file: !218, line: 1314, baseType: !40, size: 32, offset: 9728)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !544, file: !218, line: 1317, baseType: !77, size: 32, align: 512, offset: 10240)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !544, file: !218, line: 1318, baseType: !115, size: 128, offset: 10304)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !544, file: !218, line: 1320, baseType: !77, size: 32, offset: 10432)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !544, file: !218, line: 1321, baseType: !115, size: 128, offset: 10496)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !538, file: !539, line: 73, baseType: !40, size: 32, offset: 128)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !538, file: !539, line: 74, baseType: !4864, size: 64, offset: 192)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !837, line: 42, flags: DIFlagFwdDecl)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !491, file: !428, line: 141, baseType: !4868, size: 64, offset: 704)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!40, !2632, !929}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !491, file: !428, line: 142, baseType: !4872, size: 64, offset: 768)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!426, !426, !4875}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !427, file: !428, line: 96, baseType: !543, size: 64, offset: 832)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !427, file: !428, line: 97, baseType: !57, size: 64, offset: 896)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !427, file: !428, line: 98, baseType: !38, size: 64, offset: 960)
!4880 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !428, line: 100, baseType: !4881, size: 128, offset: 1024)
!4881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !428, line: 100, size: 128, elements: !4882)
!4882 = !{!4883, !4884}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4881, file: !428, line: 101, baseType: !115, size: 128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4881, file: !428, line: 102, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !427, file: !428, line: 104, baseType: !115, size: 128, offset: 1152)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !427, file: !428, line: 105, baseType: !115, size: 128, offset: 1280)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !427, file: !428, line: 113, baseType: !4889, size: 128, offset: 1408)
!4889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !428, line: 109, size: 128, elements: !4890)
!4890 = !{!4891, !4892, !4893}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4889, file: !428, line: 110, baseType: !795, size: 128)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4889, file: !428, line: 111, baseType: !442, size: 128)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4889, file: !428, line: 112, baseType: !718, size: 128, align: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !420, file: !218, line: 1968, baseType: !4895, size: 64, offset: 64)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!34, !426, !391, !4898}
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4900, line: 10, size: 128, elements: !4901)
!4900 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4901 = !{!4902, !4903}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4899, file: !4900, line: 11, baseType: !1960, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4899, file: !4900, line: 12, baseType: !38, size: 64, offset: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !420, file: !218, line: 1969, baseType: !4905, size: 64, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!40, !4864, !391, !40}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !420, file: !218, line: 1970, baseType: !4909, size: 64, offset: 192)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!414, !391, !40, !929}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !420, file: !218, line: 1972, baseType: !4913, size: 64, offset: 256)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!40, !426, !532, !40}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !420, file: !218, line: 1974, baseType: !4917, size: 64, offset: 320)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!40, !4864, !391, !426, !42, !929}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !420, file: !218, line: 1976, baseType: !4921, size: 64, offset: 384)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!40, !426, !391, !426}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !420, file: !218, line: 1977, baseType: !4925, size: 64, offset: 448)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!40, !391, !426}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !420, file: !218, line: 1978, baseType: !4929, size: 64, offset: 512)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!40, !4864, !391, !426, !34}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !420, file: !218, line: 1980, baseType: !4933, size: 64, offset: 576)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!40, !4864, !391, !426, !42}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !420, file: !218, line: 1982, baseType: !4925, size: 64, offset: 640)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !420, file: !218, line: 1983, baseType: !4938, size: 64, offset: 704)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!40, !4864, !391, !426, !42, !548}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !420, file: !218, line: 1985, baseType: !4942, size: 64, offset: 768)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!40, !4864, !391, !426, !391, !426, !7}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !420, file: !218, line: 1987, baseType: !4946, size: 64, offset: 832)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!40, !4864, !426, !4949}
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !218, line: 226, size: 640, elements: !4951)
!4951 = !{!4952, !4953, !4954, !4964, !4973, !4974, !4979, !4980, !4981}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4950, file: !218, line: 227, baseType: !7, size: 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4950, file: !218, line: 228, baseType: !42, size: 16, offset: 32)
!4954 = !DIDerivedType(tag: DW_TAG_member, scope: !4950, file: !218, line: 241, baseType: !4955, size: 32, offset: 64)
!4955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4950, file: !218, line: 241, size: 32, elements: !4956)
!4956 = !{!4957, !4958}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4955, file: !218, line: 242, baseType: !397, size: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4955, file: !218, line: 243, baseType: !4959, size: 32)
!4959 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4960, line: 16, baseType: !4961)
!4960 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4960, line: 14, size: 32, elements: !4962)
!4962 = !{!4963}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4961, file: !4960, line: 15, baseType: !402, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, scope: !4950, file: !218, line: 245, baseType: !4965, size: 32, offset: 96)
!4965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4950, file: !218, line: 245, size: 32, elements: !4966)
!4966 = !{!4967, !4968}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4965, file: !218, line: 246, baseType: !406, size: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4965, file: !218, line: 247, baseType: !4969, size: 32)
!4969 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4960, line: 20, baseType: !4970)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4960, line: 18, size: 32, elements: !4971)
!4971 = !{!4972}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4970, file: !4960, line: 19, baseType: !410, size: 32)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4950, file: !218, line: 249, baseType: !59, size: 64, offset: 128)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4950, file: !218, line: 250, baseType: !4975, size: 128, offset: 192)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !887, line: 13, size: 128, elements: !4976)
!4976 = !{!4977, !4978}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4975, file: !887, line: 14, baseType: !886, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4975, file: !887, line: 15, baseType: !366, size: 64, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4950, file: !218, line: 251, baseType: !4975, size: 128, offset: 320)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4950, file: !218, line: 252, baseType: !4975, size: 128, offset: 448)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4950, file: !218, line: 259, baseType: !705, size: 64, offset: 576)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !420, file: !218, line: 1988, baseType: !4983, size: 64, offset: 896)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!40, !4864, !2632, !4986, !460, !7}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4988, line: 22, size: 1280, elements: !4989)
!4988 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4989 = !{!4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4987, file: !4988, line: 23, baseType: !460, size: 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4987, file: !4988, line: 24, baseType: !42, size: 16, offset: 32)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4987, file: !4988, line: 25, baseType: !7, size: 32, offset: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4987, file: !4988, line: 26, baseType: !894, size: 32, offset: 96)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4987, file: !4988, line: 27, baseType: !464, size: 64, offset: 128)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4987, file: !4988, line: 28, baseType: !464, size: 64, offset: 192)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4987, file: !4988, line: 41, baseType: !464, size: 64, offset: 256)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4987, file: !4988, line: 42, baseType: !548, size: 32, offset: 320)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4987, file: !4988, line: 43, baseType: !548, size: 32, offset: 352)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4987, file: !4988, line: 44, baseType: !397, size: 32, offset: 384)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4987, file: !4988, line: 45, baseType: !406, size: 32, offset: 416)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4987, file: !4988, line: 46, baseType: !59, size: 64, offset: 448)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4987, file: !4988, line: 47, baseType: !4975, size: 128, offset: 512)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4987, file: !4988, line: 48, baseType: !4975, size: 128, offset: 640)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4987, file: !4988, line: 49, baseType: !4975, size: 128, offset: 768)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4987, file: !4988, line: 50, baseType: !4975, size: 128, offset: 896)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4987, file: !4988, line: 51, baseType: !464, size: 64, offset: 1024)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4987, file: !4988, line: 52, baseType: !464, size: 64, offset: 1088)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4987, file: !4988, line: 53, baseType: !460, size: 32, offset: 1152)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4987, file: !4988, line: 54, baseType: !460, size: 32, offset: 1184)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4987, file: !4988, line: 55, baseType: !464, size: 64, offset: 1216)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !420, file: !218, line: 1990, baseType: !5012, size: 64, offset: 960)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!664, !426, !532, !53}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !420, file: !218, line: 1991, baseType: !5016, size: 64, offset: 1024)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!40, !391, !5019, !464, !464}
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !218, line: 55, flags: DIFlagFwdDecl)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !420, file: !218, line: 1993, baseType: !5022, size: 64, offset: 1088)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!40, !391, !40}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !420, file: !218, line: 1994, baseType: !5026, size: 64, offset: 1152)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!40, !391, !426, !705, !7, !42}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !420, file: !218, line: 1997, baseType: !5030, size: 64, offset: 1216)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!40, !4864, !391, !705, !42}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !420, file: !218, line: 1999, baseType: !5034, size: 64, offset: 1280)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!414, !4864, !426, !40}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !420, file: !218, line: 2001, baseType: !5038, size: 64, offset: 1344)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!40, !4864, !426, !414, !40}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !420, file: !218, line: 2003, baseType: !5042, size: 64, offset: 1408)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!40, !4864, !426, !5045}
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !218, line: 76, flags: DIFlagFwdDecl)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !420, file: !218, line: 2005, baseType: !5048, size: 64, offset: 1472)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!40, !426, !5045}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !420, file: !218, line: 2006, baseType: !5052, size: 64, offset: 1536)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!5055, !391}
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !218, line: 3192, size: 192, elements: !5057)
!5057 = !{!5058, !5059}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5056, file: !218, line: 3193, baseType: !1746, size: 128)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5056, file: !218, line: 3194, baseType: !460, size: 32, offset: 128)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !392, file: !218, line: 655, baseType: !543, size: 64, offset: 448)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !392, file: !218, line: 656, baseType: !387, size: 64, offset: 512)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !392, file: !218, line: 659, baseType: !38, size: 64, offset: 576)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !392, file: !218, line: 663, baseType: !57, size: 64, offset: 640)
!5064 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !218, line: 671, baseType: !5065, size: 32, offset: 704)
!5065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !218, line: 671, size: 32, elements: !5066)
!5066 = !{!5067, !5069}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5065, file: !218, line: 672, baseType: !5068, size: 32)
!5068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5065, file: !218, line: 673, baseType: !7, size: 32)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !392, file: !218, line: 675, baseType: !548, size: 32, offset: 736)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !392, file: !218, line: 676, baseType: !59, size: 64, offset: 768)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !392, file: !218, line: 677, baseType: !4975, size: 128, offset: 832)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !392, file: !218, line: 678, baseType: !4975, size: 128, offset: 960)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !392, file: !218, line: 679, baseType: !4975, size: 128, offset: 1088)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !392, file: !218, line: 680, baseType: !77, size: 32, offset: 1216)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !392, file: !218, line: 681, baseType: !44, size: 16, offset: 1248)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !392, file: !218, line: 682, baseType: !101, size: 8, offset: 1264)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !392, file: !218, line: 683, baseType: !101, size: 8, offset: 1272)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !392, file: !218, line: 684, baseType: !2705, size: 64, offset: 1280)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !392, file: !218, line: 691, baseType: !57, size: 64, offset: 1344)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !392, file: !218, line: 692, baseType: !870, size: 320, offset: 1408)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !392, file: !218, line: 694, baseType: !57, size: 64, offset: 1728)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !392, file: !218, line: 695, baseType: !57, size: 64, offset: 1792)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !392, file: !218, line: 697, baseType: !795, size: 128, offset: 1856)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !392, file: !218, line: 698, baseType: !115, size: 128, offset: 1984)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !392, file: !218, line: 707, baseType: !115, size: 128, offset: 2112)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !392, file: !218, line: 708, baseType: !115, size: 128, offset: 2240)
!5088 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !218, line: 709, baseType: !5089, size: 128, offset: 2368)
!5089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !218, line: 709, size: 128, elements: !5090)
!5090 = !{!5091, !5092}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5089, file: !218, line: 710, baseType: !791, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5089, file: !218, line: 711, baseType: !718, size: 128, align: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !392, file: !218, line: 713, baseType: !733, size: 64, offset: 2496)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !392, file: !218, line: 714, baseType: !733, size: 64, offset: 2560)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !392, file: !218, line: 715, baseType: !67, size: 32, offset: 2624)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !392, file: !218, line: 716, baseType: !67, size: 32, offset: 2656)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !392, file: !218, line: 717, baseType: !67, size: 32, offset: 2688)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !392, file: !218, line: 719, baseType: !67, size: 32, offset: 2720)
!5099 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !218, line: 721, baseType: !5100, size: 64, offset: 2752)
!5100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !218, line: 721, size: 64, elements: !5101)
!5101 = !{!5102, !5103}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5100, file: !218, line: 722, baseType: !1195, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5100, file: !218, line: 723, baseType: !2441, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !392, file: !218, line: 725, baseType: !5105, size: 64, offset: 2816)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !218, line: 725, flags: DIFlagFwdDecl)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !392, file: !218, line: 726, baseType: !388, size: 1536, align: 64, offset: 2880)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !392, file: !218, line: 727, baseType: !115, size: 128, offset: 4416)
!5109 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !218, line: 728, baseType: !5110, size: 64, offset: 4544)
!5110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !218, line: 728, size: 64, elements: !5111)
!5111 = !{!5112, !5113, !5116, !5117}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5110, file: !218, line: 729, baseType: !1831, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5110, file: !218, line: 730, baseType: !5114, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !218, line: 730, flags: DIFlagFwdDecl)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5110, file: !218, line: 731, baseType: !532, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5110, file: !218, line: 732, baseType: !7, size: 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !392, file: !218, line: 735, baseType: !461, size: 32, offset: 4608)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !392, file: !218, line: 738, baseType: !461, size: 32, offset: 4640)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !392, file: !218, line: 739, baseType: !4802, size: 64, offset: 4672)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !392, file: !218, line: 750, baseType: !38, size: 64, offset: 4736)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !388, file: !218, line: 474, baseType: !1746, size: 128, offset: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !388, file: !218, line: 475, baseType: !870, size: 320, offset: 192)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !388, file: !218, line: 476, baseType: !1675, size: 32, offset: 512)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !388, file: !218, line: 477, baseType: !67, size: 32, offset: 544)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !388, file: !218, line: 482, baseType: !3027, size: 128, offset: 576)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !388, file: !218, line: 483, baseType: !57, size: 64, offset: 704)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !388, file: !218, line: 484, baseType: !57, size: 64, offset: 768)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !388, file: !218, line: 485, baseType: !5130, size: 64, offset: 832)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5132)
!5132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !218, line: 404, size: 1280, elements: !5133)
!5133 = !{!5134, !5138, !5142, !5146, !5150, !5166, !5171, !5175, !5179, !5183, !5187, !5191, !5192, !5196, !5200, !5204, !5209, !5213, !5265, !5266}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5132, file: !218, line: 405, baseType: !5135, size: 64)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!40, !1300, !2453}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5132, file: !218, line: 406, baseType: !5139, size: 64, offset: 64)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!40, !705, !367}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5132, file: !218, line: 409, baseType: !5143, size: 64, offset: 128)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!40, !387, !2453}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5132, file: !218, line: 412, baseType: !5147, size: 64, offset: 192)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!929, !387, !367}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5132, file: !218, line: 414, baseType: !5151, size: 64, offset: 256)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{null, !5154}
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !348, line: 1276, size: 448, elements: !5156)
!5156 = !{!5157, !5158, !5159, !5161, !5162, !5163, !5164, !5165}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5155, file: !348, line: 1277, baseType: !705, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5155, file: !348, line: 1278, baseType: !387, size: 64, offset: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5155, file: !348, line: 1279, baseType: !5160, size: 64, offset: 128)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5155, file: !348, line: 1281, baseType: !57, size: 64, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5155, file: !348, line: 1282, baseType: !7, size: 32, offset: 256)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5155, file: !348, line: 1283, baseType: !7, size: 32, offset: 288)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5155, file: !348, line: 1284, baseType: !929, size: 8, offset: 320)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5155, file: !348, line: 1285, baseType: !57, size: 64, offset: 384)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5132, file: !218, line: 416, baseType: !5167, size: 64, offset: 320)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!40, !705, !387, !59, !7, !5170, !1847}
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5132, file: !218, line: 419, baseType: !5172, size: 64, offset: 384)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{!40, !705, !387, !59, !7, !7, !1300, !38}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5132, file: !218, line: 424, baseType: !5176, size: 64, offset: 448)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!2736, !387, !2736}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5132, file: !218, line: 425, baseType: !5180, size: 64, offset: 512)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{null, !367, !53, !53}
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5132, file: !218, line: 426, baseType: !5184, size: 64, offset: 576)
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{!929, !367, !1675}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5132, file: !218, line: 427, baseType: !5188, size: 64, offset: 640)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{null, !367}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5132, file: !218, line: 428, baseType: !1213, size: 64, offset: 704)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5132, file: !218, line: 433, baseType: !5193, size: 64, offset: 768)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!40, !387, !367, !367, !146}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5132, file: !218, line: 435, baseType: !5197, size: 64, offset: 832)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!40, !367}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5132, file: !218, line: 436, baseType: !5201, size: 64, offset: 896)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!929, !367, !53, !53}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5132, file: !218, line: 438, baseType: !5205, size: 64, offset: 960)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{null, !367, !5208, !5208}
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5132, file: !218, line: 439, baseType: !5210, size: 64, offset: 1024)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!40, !387, !1300}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5132, file: !218, line: 442, baseType: !5214, size: 64, offset: 1088)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!40, !5217, !705, !5264}
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4293, line: 282, size: 2176, elements: !5219)
!5219 = !{!5220, !5221, !5222, !5223, !5224, !5225, !5226, !5228, !5235, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5218, file: !4293, line: 283, baseType: !1363, size: 128)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5218, file: !4293, line: 284, baseType: !57, size: 64, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5218, file: !4293, line: 285, baseType: !898, size: 16, offset: 192)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5218, file: !4293, line: 286, baseType: !3530, size: 320, offset: 256)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5218, file: !4293, line: 287, baseType: !260, size: 8, offset: 576)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5218, file: !4293, line: 288, baseType: !7, size: 32, offset: 608)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5218, file: !4293, line: 289, baseType: !5227, size: 64, offset: 640)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5218, file: !4293, line: 290, baseType: !5229, size: 64, offset: 704)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4293, line: 250, size: 64, elements: !5231)
!5231 = !{!5232, !5233, !5234}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5230, file: !4293, line: 251, baseType: !77, size: 32)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5230, file: !4293, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5230, file: !4293, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5218, file: !4293, line: 291, baseType: !5236, size: 128, offset: 768)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4293, line: 274, size: 128, elements: !5237)
!5237 = !{!5238, !5239}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5236, file: !4293, line: 275, baseType: !5230, size: 64)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5236, file: !4293, line: 276, baseType: !5230, size: 64, offset: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5218, file: !4293, line: 292, baseType: !7, size: 32, offset: 896)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5218, file: !4293, line: 293, baseType: !7, size: 32, offset: 928)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5218, file: !4293, line: 294, baseType: !7, size: 32, offset: 960)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5218, file: !4293, line: 295, baseType: !7, size: 32, offset: 992)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5218, file: !4293, line: 296, baseType: !7, size: 32, offset: 1024)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5218, file: !4293, line: 297, baseType: !7, size: 32, offset: 1056)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5218, file: !4293, line: 298, baseType: !2165, size: 64, offset: 1088)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5218, file: !4293, line: 299, baseType: !5248, size: 64, offset: 1152)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4293, line: 269, size: 96, elements: !5250)
!5250 = !{!5251, !5252}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5249, file: !4293, line: 270, baseType: !5230, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5249, file: !4293, line: 271, baseType: !7, size: 32, offset: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5218, file: !4293, line: 300, baseType: !1142, size: 64, offset: 1216)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5218, file: !4293, line: 301, baseType: !2731, size: 64, offset: 1280)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5218, file: !4293, line: 302, baseType: !705, size: 64, offset: 1344)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5218, file: !4293, line: 303, baseType: !7, size: 32, offset: 1408)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5218, file: !4293, line: 304, baseType: !1100, size: 256, offset: 1472)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5218, file: !4293, line: 305, baseType: !77, size: 32, offset: 1728)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5218, file: !4293, line: 318, baseType: !77, size: 32, offset: 1760)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5218, file: !4293, line: 322, baseType: !1061, size: 256, offset: 1792)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5218, file: !4293, line: 323, baseType: !5236, size: 128, offset: 2048)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5218, file: !4293, line: 324, baseType: !5263, offset: 2176)
!5263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3530, elements: !813)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5132, file: !218, line: 444, baseType: !1839, size: 64, offset: 1152)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5132, file: !218, line: 445, baseType: !5267, size: 64, offset: 1216)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!40, !1216, !1254}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !218, line: 486, baseType: !57, size: 64, offset: 896)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !388, file: !218, line: 487, baseType: !870, size: 320, offset: 960)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !388, file: !218, line: 488, baseType: !1920, size: 32, offset: 1280)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !388, file: !218, line: 489, baseType: !77, size: 32, offset: 1312)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !388, file: !218, line: 490, baseType: !115, size: 128, offset: 1344)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !388, file: !218, line: 491, baseType: !38, size: 64, offset: 1472)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !374, file: !126, line: 311, baseType: !57, size: 64, offset: 256)
!5277 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !126, line: 312, baseType: !5278, size: 64, offset: 320)
!5278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !126, line: 312, size: 64, elements: !5279)
!5279 = !{!5280, !5281}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5278, file: !126, line: 313, baseType: !38, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5278, file: !126, line: 314, baseType: !5282, size: 64)
!5282 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !126, line: 257, baseType: !5283)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 255, size: 64, elements: !5284)
!5284 = !{!5285}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5283, file: !126, line: 256, baseType: !57, size: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !374, file: !126, line: 316, baseType: !67, size: 32, offset: 384)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !374, file: !126, line: 317, baseType: !67, size: 32, offset: 416)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !371, file: !126, line: 323, baseType: !1301, size: 512, align: 128)
!5289 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !126, line: 325, baseType: !5290, size: 512, offset: 512)
!5290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !126, line: 325, size: 512, elements: !5291)
!5291 = !{!5292, !5302}
!5292 = !DIDerivedType(tag: DW_TAG_member, scope: !5290, file: !126, line: 326, baseType: !5293, size: 320)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5290, file: !126, line: 326, size: 320, elements: !5294)
!5294 = !{!5295, !5296, !5297, !5298, !5299, !5300, !5301}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5293, file: !126, line: 327, baseType: !57, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5293, file: !126, line: 328, baseType: !57, size: 64, offset: 64)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5293, file: !126, line: 329, baseType: !57, size: 64, offset: 128)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5293, file: !126, line: 331, baseType: !67, size: 32, offset: 192)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5293, file: !126, line: 332, baseType: !67, size: 32, offset: 224)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5293, file: !126, line: 333, baseType: !67, size: 32, offset: 256)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5293, file: !126, line: 335, baseType: !7, size: 32, offset: 288)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5290, file: !126, line: 339, baseType: !1301, size: 512, align: 128)
!5303 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !126, line: 341, baseType: !5304, size: 512, offset: 1024)
!5304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !126, line: 341, size: 512, elements: !5305)
!5305 = !{!5306, !5315, !5321}
!5306 = !DIDerivedType(tag: DW_TAG_member, scope: !5304, file: !126, line: 342, baseType: !5307, size: 384)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5304, file: !126, line: 342, size: 384, elements: !5308)
!5308 = !{!5309, !5310, !5311, !5312, !5313, !5314}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5307, file: !126, line: 343, baseType: !57, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5307, file: !126, line: 344, baseType: !57, size: 64, offset: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5307, file: !126, line: 346, baseType: !38, size: 64, offset: 128)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5307, file: !126, line: 347, baseType: !38, size: 64, offset: 192)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5307, file: !126, line: 348, baseType: !38, size: 64, offset: 256)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5307, file: !126, line: 349, baseType: !38, size: 64, offset: 320)
!5315 = !DIDerivedType(tag: DW_TAG_member, scope: !5304, file: !126, line: 352, baseType: !5316, size: 256)
!5316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5304, file: !126, line: 352, size: 256, elements: !5317)
!5317 = !{!5318, !5319, !5320}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5316, file: !126, line: 353, baseType: !57, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5316, file: !126, line: 354, baseType: !57, size: 64, offset: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5316, file: !126, line: 356, baseType: !115, size: 128, offset: 128)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5304, file: !126, line: 359, baseType: !1301, size: 512, align: 128)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5324)
!5324 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v9fs_inode", file: !5329, line: 136, size: 5376, elements: !5330)
!5329 = !DIFile(filename: "fs/9p/v9fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "949eddcef83527ffb4cb04cde5bb993a")
!5330 = !{!5331, !5456, !5462, !5463}
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "netfs", scope: !5328, file: !5329, line: 137, baseType: !5332, size: 4928)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_inode", file: !254, line: 125, size: 4928, elements: !5333)
!5333 = !{!5334, !5335, !5455}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !5332, file: !254, line: 126, baseType: !392, size: 4800)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5332, file: !254, line: 127, baseType: !5336, size: 64, offset: 4800)
!5336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5338)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_request_ops", file: !254, line: 208, size: 576, elements: !5339)
!5339 = !{!5340, !5428, !5432, !5436, !5437, !5441, !5445, !5449, !5454}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !5338, file: !254, line: 209, baseType: !5341, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{!40, !5344, !705}
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 64)
!5345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_request", file: !254, line: 177, size: 1536, elements: !5346)
!5346 = !{!5347, !5348, !5349, !5350, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427}
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5345, file: !254, line: 178, baseType: !1061, size: 256)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !5345, file: !254, line: 179, baseType: !391, size: 64, offset: 256)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5345, file: !254, line: 180, baseType: !387, size: 64, offset: 320)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "cache_resources", scope: !5345, file: !254, line: 181, baseType: !5351, size: 256, offset: 384)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_resources", file: !254, line: 137, size: 256, elements: !5352)
!5352 = !{!5353, !5409, !5410, !5411, !5412}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5351, file: !254, line: 138, baseType: !5354, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5356)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_ops", file: !254, line: 235, size: 512, elements: !5357)
!5357 = !{!5358, !5363, !5371, !5375, !5379, !5396, !5400, !5405}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "end_operation", scope: !5356, file: !254, line: 237, baseType: !5359, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{null, !5362}
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5356, file: !254, line: 240, baseType: !5364, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!40, !5362, !59, !1254, !253, !5367, !38}
!5367 = !DIDerivedType(tag: DW_TAG_typedef, name: "netfs_io_terminated_t", file: !254, line: 119, baseType: !5368)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{null, !38, !664, !929}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5356, file: !254, line: 248, baseType: !5372, size: 64, offset: 128)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!40, !5362, !59, !1254, !5367, !38}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !5356, file: !254, line: 255, baseType: !5376, size: 64, offset: 192)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{null, !5362, !58, !52, !59}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_read", scope: !5356, file: !254, line: 261, baseType: !5380, size: 64, offset: 256)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!259, !5383, !59}
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_subrequest", file: !254, line: 148, size: 576, elements: !5385)
!5385 = !{!5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "rreq", scope: !5384, file: !254, line: 149, baseType: !5344, size: 64)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "rreq_link", scope: !5384, file: !254, line: 150, baseType: !115, size: 128, offset: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5384, file: !254, line: 151, baseType: !59, size: 64, offset: 192)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5384, file: !254, line: 152, baseType: !53, size: 64, offset: 256)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "transferred", scope: !5384, file: !254, line: 153, baseType: !53, size: 64, offset: 320)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5384, file: !254, line: 154, baseType: !783, size: 32, offset: 384)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5384, file: !254, line: 155, baseType: !898, size: 16, offset: 416)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "debug_index", scope: !5384, file: !254, line: 156, baseType: !44, size: 16, offset: 432)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5384, file: !254, line: 157, baseType: !259, size: 8, offset: 448)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5384, file: !254, line: 158, baseType: !57, size: 64, offset: 512)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_write", scope: !5356, file: !254, line: 267, baseType: !5397, size: 64, offset: 320)
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{!40, !5362, !58, !52, !59, !929}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_ondemand_read", scope: !5356, file: !254, line: 274, baseType: !5401, size: 64, offset: 384)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{!259, !5362, !59, !52, !59, !363, !5404}
!5404 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !43, line: 22, baseType: !56)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "query_occupancy", scope: !5356, file: !254, line: 282, baseType: !5406, size: 64, offset: 448)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!40, !5362, !59, !53, !53, !58, !52}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv", scope: !5351, file: !254, line: 139, baseType: !38, size: 64, offset: 64)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv2", scope: !5351, file: !254, line: 140, baseType: !38, size: 64, offset: 128)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !5351, file: !254, line: 141, baseType: !7, size: 32, offset: 192)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "inval_counter", scope: !5351, file: !254, line: 142, baseType: !7, size: 32, offset: 224)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !5345, file: !254, line: 182, baseType: !115, size: 128, offset: 640)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_priv", scope: !5345, file: !254, line: 183, baseType: !38, size: 64, offset: 768)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !5345, file: !254, line: 184, baseType: !7, size: 32, offset: 832)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_outstanding", scope: !5345, file: !254, line: 185, baseType: !67, size: 32, offset: 864)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_copy_ops", scope: !5345, file: !254, line: 186, baseType: !67, size: 32, offset: 896)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "submitted", scope: !5345, file: !254, line: 187, baseType: !53, size: 64, offset: 960)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5345, file: !254, line: 188, baseType: !53, size: 64, offset: 1024)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5345, file: !254, line: 189, baseType: !898, size: 16, offset: 1088)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !5345, file: !254, line: 190, baseType: !266, size: 8, offset: 1104)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !5345, file: !254, line: 191, baseType: !59, size: 64, offset: 1152)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5345, file: !254, line: 192, baseType: !59, size: 64, offset: 1216)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "no_unlock_folio", scope: !5345, file: !254, line: 193, baseType: !57, size: 64, offset: 1280)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5345, file: !254, line: 194, baseType: !783, size: 32, offset: 1344)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5345, file: !254, line: 195, baseType: !57, size: 64, offset: 1408)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_ops", scope: !5345, file: !254, line: 202, baseType: !5336, size: 64, offset: 1472)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "free_request", scope: !5338, file: !254, line: 210, baseType: !5429, size: 64, offset: 64)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{null, !5344}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cache_operation", scope: !5338, file: !254, line: 211, baseType: !5433, size: 64, offset: 128)
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!40, !5344}
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !5338, file: !254, line: 213, baseType: !5429, size: 64, offset: 192)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "clamp_length", scope: !5338, file: !254, line: 214, baseType: !5438, size: 64, offset: 256)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{!929, !5383}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "issue_read", scope: !5338, file: !254, line: 215, baseType: !5442, size: 64, offset: 320)
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5443, size: 64)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{null, !5383}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "is_still_valid", scope: !5338, file: !254, line: 216, baseType: !5446, size: 64, offset: 384)
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!929, !5344}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "check_write_begin", scope: !5338, file: !254, line: 217, baseType: !5450, size: 64, offset: 448)
!5450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5451, size: 64)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!40, !705, !59, !7, !5453, !1847}
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5338, file: !254, line: 219, baseType: !5429, size: 64, offset: 512)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "remote_i_size", scope: !5332, file: !254, line: 131, baseType: !59, size: 64, offset: 4864)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !5328, file: !5329, line: 138, baseType: !5457, size: 128, offset: 4928)
!5457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_qid", file: !279, line: 363, size: 128, elements: !5458)
!5458 = !{!5459, !5460, !5461}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5457, file: !279, line: 364, baseType: !101, size: 8)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5457, file: !279, line: 365, baseType: !460, size: 32, offset: 32)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !5457, file: !279, line: 366, baseType: !464, size: 64, offset: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "cache_validity", scope: !5328, file: !5329, line: 139, baseType: !7, size: 32, offset: 5056)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "v_mutex", scope: !5328, file: !5329, line: 140, baseType: !740, size: 256, offset: 5120)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!5466 = !{!0, !5467, !5469, !5474, !5551}
!5467 = !DIGlobalVariableExpression(var: !5468, expr: !DIExpression())
!5468 = distinct !DIGlobalVariable(name: "v9fs_addr_operations", scope: !2, file: !3, line: 351, type: !5131, isLocal: false, isDefinition: true)
!5469 = !DIGlobalVariableExpression(var: !5470, expr: !DIExpression())
!5470 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !5471, isLocal: true, isDefinition: true)
!5471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 136, elements: !5472)
!5472 = !{!5473}
!5473 = !DISubrange(count: 17)
!5474 = !DIGlobalVariableExpression(var: !5475, expr: !DIExpression())
!5475 = distinct !DIGlobalVariable(name: "__already_done", scope: !5476, file: !3, line: 173, type: !929, isLocal: true, isDefinition: true)
!5476 = distinct !DISubprogram(name: "v9fs_vfs_write_folio_locked", scope: !3, file: !3, line: 152, type: !5198, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5477)
!5477 = !{!5478, !5479, !5480, !5481, !5482, !5483, !5484, !5529, !5530, !5531, !5534, !5536, !5537, !5541, !5544, !5545, !5547}
!5478 = !DILocalVariable(name: "folio", arg: 1, scope: !5476, file: !3, line: 152, type: !367)
!5479 = !DILocalVariable(name: "inode", scope: !5476, file: !3, line: 154, type: !391)
!5480 = !DILocalVariable(name: "start", scope: !5476, file: !3, line: 155, type: !59)
!5481 = !DILocalVariable(name: "i_size", scope: !5476, file: !3, line: 156, type: !59)
!5482 = !DILocalVariable(name: "from", scope: !5476, file: !3, line: 157, type: !1255)
!5483 = !DILocalVariable(name: "len", scope: !5476, file: !3, line: 158, type: !53)
!5484 = !DILocalVariable(name: "writeback_fid", scope: !5476, file: !3, line: 159, type: !5485)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_fid", file: !272, line: 148, size: 704, elements: !5487)
!5487 = !{!5488, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528}
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !5486, file: !272, line: 149, baseType: !5489, size: 64)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_client", file: !272, line: 102, size: 1408, elements: !5491)
!5491 = !{!5492, !5493, !5494, !5495, !5498, !5499, !5500, !5504, !5517, !5518, !5519}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5490, file: !272, line: 103, baseType: !77, size: 32)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "msize", scope: !5490, file: !272, line: 104, baseType: !7, size: 32, offset: 32)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !5490, file: !272, line: 105, baseType: !105, size: 8, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "trans_mod", scope: !5490, file: !272, line: 106, baseType: !5496, size: 64, offset: 128)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = !DICompositeType(tag: DW_TAG_structure_type, name: "p9_trans_module", file: !272, line: 106, flags: DIFlagFwdDecl)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5490, file: !272, line: 107, baseType: !271, size: 32, offset: 192)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "trans", scope: !5490, file: !272, line: 108, baseType: !38, size: 64, offset: 256)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "fcall_cache", scope: !5490, file: !272, line: 109, baseType: !5501, size: 64, offset: 320)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5503, line: 325, flags: DIFlagFwdDecl)
!5503 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "trans_opts", scope: !5490, file: !272, line: 121, baseType: !5505, size: 64, offset: 384)
!5505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5490, file: !272, line: 111, size: 64, elements: !5506)
!5506 = !{!5507, !5512}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5505, file: !272, line: 115, baseType: !5508, size: 64)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5505, file: !272, line: 112, size: 64, elements: !5509)
!5509 = !{!5510, !5511}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "rfd", scope: !5508, file: !272, line: 113, baseType: !40, size: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !5508, file: !272, line: 114, baseType: !40, size: 32, offset: 32)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !5505, file: !272, line: 120, baseType: !5513, size: 32)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5505, file: !272, line: 116, size: 32, elements: !5514)
!5514 = !{!5515, !5516}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5513, file: !272, line: 117, baseType: !111, size: 16)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "privport", scope: !5513, file: !272, line: 118, baseType: !929, size: 8, offset: 16)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "fids", scope: !5490, file: !272, line: 123, baseType: !3930, size: 192, offset: 448)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !5490, file: !272, line: 124, baseType: !3930, size: 192, offset: 640)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5490, file: !272, line: 126, baseType: !3719, size: 520, offset: 832)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !5486, file: !272, line: 150, baseType: !460, size: 32, offset: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5486, file: !272, line: 151, baseType: !783, size: 32, offset: 96)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5486, file: !272, line: 152, baseType: !40, size: 32, offset: 128)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !5486, file: !272, line: 153, baseType: !5457, size: 128, offset: 192)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "iounit", scope: !5486, file: !272, line: 154, baseType: !460, size: 32, offset: 320)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5486, file: !272, line: 155, baseType: !397, size: 32, offset: 352)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "rdir", scope: !5486, file: !272, line: 157, baseType: !38, size: 64, offset: 384)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "dlist", scope: !5486, file: !272, line: 159, baseType: !795, size: 128, offset: 448)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "ilist", scope: !5486, file: !272, line: 160, baseType: !795, size: 128, offset: 576)
!5529 = !DILocalVariable(name: "err", scope: !5476, file: !3, line: 160, type: !40)
!5530 = !DILocalVariable(name: "v9inode", scope: !5476, file: !3, line: 161, type: !5327)
!5531 = !DILocalVariable(name: "cookie", scope: !5476, file: !3, line: 162, type: !5532)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fscache_cookie", file: !254, line: 352, flags: DIFlagFwdDecl)
!5534 = !DILocalVariable(name: "__UNIQUE_ID___x333", scope: !5535, file: !3, line: 167, type: !59)
!5535 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 167, column: 8)
!5536 = !DILocalVariable(name: "__UNIQUE_ID___y334", scope: !5535, file: !3, line: 167, type: !59)
!5537 = !DILocalVariable(name: "__ret_do_once", scope: !5538, file: !3, line: 173, type: !929)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 173, column: 3)
!5539 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 172, column: 22)
!5540 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 172, column: 6)
!5541 = !DILocalVariable(name: "__ret_cond", scope: !5542, file: !3, line: 173, type: !929)
!5542 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 173, column: 3)
!5543 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 173, column: 3)
!5544 = !DILocalVariable(name: "__ret_once", scope: !5542, file: !3, line: 173, type: !929)
!5545 = !DILocalVariable(name: "__ret_warn_on", scope: !5546, file: !3, line: 173, type: !40)
!5546 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 173, column: 3)
!5547 = !DILocalVariable(name: "__flags", scope: !5548, file: !3, line: 173, type: !40)
!5548 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 173, column: 3)
!5549 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 173, column: 3)
!5550 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 173, column: 3)
!5551 = !DIGlobalVariableExpression(var: !5552, expr: !DIExpression())
!5552 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !5553, isLocal: true, isDefinition: true)
!5553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 384, elements: !5554)
!5554 = !{!5555}
!5555 = !DISubrange(count: 48)
!5556 = !{i32 7, !"Dwarf Version", i32 5}
!5557 = !{i32 2, !"Debug Info Version", i32 3}
!5558 = !{i32 1, !"wchar_size", i32 2}
!5559 = !{i32 8, !"cf-protection-branch", i32 1}
!5560 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5561 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5562 = !{i32 1, !"Code Model", i32 2}
!5563 = !{i32 1, !"override-stack-alignment", i32 8}
!5564 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5565 = distinct !DISubprogram(name: "v9fs_init_request", scope: !3, file: !3, line: 57, type: !5342, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5566)
!5566 = !{!5567, !5568, !5569, !5570, !5572}
!5567 = !DILocalVariable(name: "rreq", arg: 1, scope: !5565, file: !3, line: 57, type: !5344)
!5568 = !DILocalVariable(name: "file", arg: 2, scope: !5565, file: !3, line: 57, type: !705)
!5569 = !DILocalVariable(name: "fid", scope: !5565, file: !3, line: 59, type: !5485)
!5570 = !DILocalVariable(name: "__ret_warn_on", scope: !5571, file: !3, line: 66, type: !40)
!5571 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 66, column: 2)
!5572 = !DILocalVariable(name: "__flags", scope: !5573, file: !3, line: 66, type: !40)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 66, column: 2)
!5574 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 66, column: 2)
!5575 = !DILocation(line: 57, column: 55, scope: !5565)
!5576 = !DILocation(line: 57, column: 74, scope: !5565)
!5577 = !DILocation(line: 59, column: 2, scope: !5565)
!5578 = !DILocation(line: 59, column: 17, scope: !5565)
!5579 = !DILocation(line: 59, column: 23, scope: !5565)
!5580 = !DILocation(line: 59, column: 29, scope: !5565)
!5581 = !DILocation(line: 61, column: 2, scope: !5565)
!5582 = !DILocation(line: 61, column: 2, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 61, column: 2)
!5584 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 61, column: 2)
!5585 = !DILocation(line: 61, column: 2, scope: !5584)
!5586 = !DILocation(line: 61, column: 2, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 61, column: 2)
!5588 = !DILocation(line: 61, column: 2, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 61, column: 2)
!5590 = !DILocation(line: 61, column: 2, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 61, column: 2)
!5592 = !{i64 2155198203, i64 2155198232, i64 2155198278, i64 2155198336, i64 2155198390, i64 2155198444, i64 2155198499, i64 2155198530}
!5593 = !DILocation(line: 66, column: 2, scope: !5571)
!5594 = !DILocation(line: 0, scope: !5571)
!5595 = !DILocation(line: 66, column: 2, scope: !5574)
!5596 = !DILocation(line: 66, column: 2, scope: !5573)
!5597 = !DILocation(line: 66, column: 2, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 66, column: 2)
!5599 = !DILocation(line: 66, column: 2, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 66, column: 2)
!5601 = !{i64 2155199474, i64 2155199503, i64 2155199549, i64 2155199607, i64 2155199661, i64 2155199715, i64 2155199770, i64 2155199801, i64 2155200109, i64 2155200115, i64 2155200162, i64 2155200185, i64 2155200211}
!5602 = !DILocation(line: 66, column: 2, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 66, column: 2)
!5604 = !DILocation(line: 66, column: 2, scope: !5565)
!5605 = !DILocation(line: 69, column: 13, scope: !5565)
!5606 = !DILocation(line: 69, column: 2, scope: !5565)
!5607 = !DILocation(line: 70, column: 21, scope: !5565)
!5608 = !DILocation(line: 70, column: 2, scope: !5565)
!5609 = !DILocation(line: 70, column: 8, scope: !5565)
!5610 = !DILocation(line: 70, column: 19, scope: !5565)
!5611 = !DILocation(line: 72, column: 1, scope: !5565)
!5612 = !DILocation(line: 71, column: 2, scope: !5565)
!5613 = distinct !DISubprogram(name: "v9fs_free_request", scope: !3, file: !3, line: 78, type: !5430, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5614)
!5614 = !{!5615, !5616}
!5615 = !DILocalVariable(name: "rreq", arg: 1, scope: !5613, file: !3, line: 78, type: !5344)
!5616 = !DILocalVariable(name: "fid", scope: !5613, file: !3, line: 80, type: !5485)
!5617 = !DILocation(line: 78, column: 56, scope: !5613)
!5618 = !DILocation(line: 80, column: 2, scope: !5613)
!5619 = !DILocation(line: 80, column: 17, scope: !5613)
!5620 = !DILocation(line: 80, column: 23, scope: !5613)
!5621 = !DILocation(line: 80, column: 29, scope: !5613)
!5622 = !DILocation(line: 82, column: 13, scope: !5613)
!5623 = !DILocation(line: 82, column: 2, scope: !5613)
!5624 = !DILocation(line: 83, column: 1, scope: !5613)
!5625 = distinct !DISubprogram(name: "v9fs_begin_cache_operation", scope: !3, file: !3, line: 89, type: !5434, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5626)
!5626 = !{!5627}
!5627 = !DILocalVariable(name: "rreq", arg: 1, scope: !5625, file: !3, line: 89, type: !5344)
!5628 = !DILocation(line: 89, column: 64, scope: !5625)
!5629 = !DILocation(line: 96, column: 2, scope: !5625)
!5630 = distinct !DISubprogram(name: "v9fs_issue_read", scope: !3, file: !3, line: 32, type: !5443, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5631)
!5631 = !{!5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639}
!5632 = !DILocalVariable(name: "subreq", arg: 1, scope: !5630, file: !3, line: 32, type: !5383)
!5633 = !DILocalVariable(name: "rreq", scope: !5630, file: !3, line: 34, type: !5344)
!5634 = !DILocalVariable(name: "fid", scope: !5630, file: !3, line: 35, type: !5485)
!5635 = !DILocalVariable(name: "to", scope: !5630, file: !3, line: 36, type: !1255)
!5636 = !DILocalVariable(name: "pos", scope: !5630, file: !3, line: 37, type: !59)
!5637 = !DILocalVariable(name: "len", scope: !5630, file: !3, line: 38, type: !53)
!5638 = !DILocalVariable(name: "total", scope: !5630, file: !3, line: 39, type: !40)
!5639 = !DILocalVariable(name: "err", scope: !5630, file: !3, line: 39, type: !40)
!5640 = !DILocation(line: 32, column: 57, scope: !5630)
!5641 = !DILocation(line: 34, column: 2, scope: !5630)
!5642 = !DILocation(line: 34, column: 27, scope: !5630)
!5643 = !DILocation(line: 34, column: 34, scope: !5630)
!5644 = !DILocation(line: 34, column: 42, scope: !5630)
!5645 = !DILocation(line: 35, column: 2, scope: !5630)
!5646 = !DILocation(line: 35, column: 17, scope: !5630)
!5647 = !DILocation(line: 35, column: 23, scope: !5630)
!5648 = !DILocation(line: 35, column: 29, scope: !5630)
!5649 = !DILocation(line: 36, column: 2, scope: !5630)
!5650 = !DILocation(line: 36, column: 18, scope: !5630)
!5651 = !DILocation(line: 37, column: 2, scope: !5630)
!5652 = !DILocation(line: 37, column: 9, scope: !5630)
!5653 = !DILocation(line: 37, column: 15, scope: !5630)
!5654 = !DILocation(line: 37, column: 23, scope: !5630)
!5655 = !DILocation(line: 37, column: 31, scope: !5630)
!5656 = !DILocation(line: 37, column: 39, scope: !5630)
!5657 = !DILocation(line: 37, column: 29, scope: !5630)
!5658 = !DILocation(line: 38, column: 2, scope: !5630)
!5659 = !DILocation(line: 38, column: 9, scope: !5630)
!5660 = !DILocation(line: 38, column: 15, scope: !5630)
!5661 = !DILocation(line: 38, column: 23, scope: !5630)
!5662 = !DILocation(line: 38, column: 31, scope: !5630)
!5663 = !DILocation(line: 38, column: 39, scope: !5630)
!5664 = !DILocation(line: 38, column: 29, scope: !5630)
!5665 = !DILocation(line: 39, column: 2, scope: !5630)
!5666 = !DILocation(line: 39, column: 6, scope: !5630)
!5667 = !DILocation(line: 39, column: 13, scope: !5630)
!5668 = !DILocation(line: 41, column: 35, scope: !5630)
!5669 = !DILocation(line: 41, column: 41, scope: !5630)
!5670 = !DILocation(line: 41, column: 50, scope: !5630)
!5671 = !DILocation(line: 41, column: 59, scope: !5630)
!5672 = !DILocation(line: 41, column: 64, scope: !5630)
!5673 = !DILocation(line: 41, column: 2, scope: !5630)
!5674 = !DILocation(line: 43, column: 25, scope: !5630)
!5675 = !DILocation(line: 43, column: 30, scope: !5630)
!5676 = !DILocation(line: 43, column: 10, scope: !5630)
!5677 = !DILocation(line: 43, column: 8, scope: !5630)
!5678 = !DILocation(line: 47, column: 2, scope: !5630)
!5679 = !DILocation(line: 49, column: 26, scope: !5630)
!5680 = !DILocation(line: 49, column: 34, scope: !5630)
!5681 = !DILocation(line: 49, column: 41, scope: !5630)
!5682 = !DILocation(line: 49, column: 2, scope: !5630)
!5683 = !DILocation(line: 50, column: 1, scope: !5630)
!5684 = distinct !DISubprogram(name: "v9fs_vfs_writepage", scope: !3, file: !3, line: 201, type: !5136, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5685)
!5685 = !{!5686, !5687, !5688, !5689}
!5686 = !DILocalVariable(name: "page", arg: 1, scope: !5684, file: !3, line: 201, type: !1300)
!5687 = !DILocalVariable(name: "wbc", arg: 2, scope: !5684, file: !3, line: 201, type: !2453)
!5688 = !DILocalVariable(name: "folio", scope: !5684, file: !3, line: 203, type: !367)
!5689 = !DILocalVariable(name: "retval", scope: !5684, file: !3, line: 204, type: !40)
!5690 = !DILocation(line: 201, column: 44, scope: !5684)
!5691 = !DILocation(line: 201, column: 76, scope: !5684)
!5692 = !DILocation(line: 203, column: 2, scope: !5684)
!5693 = !DILocation(line: 203, column: 16, scope: !5684)
!5694 = !DILocation(line: 203, column: 24, scope: !5684)
!5695 = !DILocation(line: 204, column: 2, scope: !5684)
!5696 = !DILocation(line: 204, column: 6, scope: !5684)
!5697 = !DILocation(line: 206, column: 2, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 206, column: 2)
!5699 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 206, column: 2)
!5700 = !DILocation(line: 206, column: 2, scope: !5699)
!5701 = !DILocation(line: 208, column: 39, scope: !5684)
!5702 = !DILocation(line: 208, column: 11, scope: !5684)
!5703 = !DILocation(line: 208, column: 9, scope: !5684)
!5704 = !DILocation(line: 209, column: 6, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 209, column: 6)
!5706 = !DILocation(line: 209, column: 13, scope: !5705)
!5707 = !DILocation(line: 209, column: 6, scope: !5684)
!5708 = !DILocation(line: 210, column: 7, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 210, column: 7)
!5710 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 209, column: 18)
!5711 = !DILocation(line: 210, column: 14, scope: !5709)
!5712 = !DILocation(line: 210, column: 7, scope: !5710)
!5713 = !DILocation(line: 211, column: 32, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 210, column: 26)
!5715 = !DILocation(line: 211, column: 37, scope: !5714)
!5716 = !DILocation(line: 211, column: 4, scope: !5714)
!5717 = !DILocation(line: 212, column: 11, scope: !5714)
!5718 = !DILocation(line: 213, column: 3, scope: !5714)
!5719 = !DILocation(line: 214, column: 36, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 213, column: 10)
!5721 = !DILocation(line: 214, column: 22, scope: !5720)
!5722 = !DILocation(line: 214, column: 44, scope: !5720)
!5723 = !DILocation(line: 214, column: 4, scope: !5720)
!5724 = !DILocation(line: 216, column: 2, scope: !5710)
!5725 = !DILocation(line: 217, column: 10, scope: !5705)
!5726 = !DILocation(line: 219, column: 15, scope: !5684)
!5727 = !DILocation(line: 219, column: 2, scope: !5684)
!5728 = !DILocation(line: 220, column: 9, scope: !5684)
!5729 = !DILocation(line: 221, column: 1, scope: !5684)
!5730 = !DILocation(line: 220, column: 2, scope: !5684)
!5731 = distinct !DISubprogram(name: "v9fs_write_begin", scope: !3, file: !3, line: 275, type: !5168, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5732)
!5732 = !{!5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741}
!5733 = !DILocalVariable(name: "filp", arg: 1, scope: !5731, file: !3, line: 275, type: !705)
!5734 = !DILocalVariable(name: "mapping", arg: 2, scope: !5731, file: !3, line: 275, type: !387)
!5735 = !DILocalVariable(name: "pos", arg: 3, scope: !5731, file: !3, line: 276, type: !59)
!5736 = !DILocalVariable(name: "len", arg: 4, scope: !5731, file: !3, line: 276, type: !7)
!5737 = !DILocalVariable(name: "subpagep", arg: 5, scope: !5731, file: !3, line: 277, type: !5170)
!5738 = !DILocalVariable(name: "fsdata", arg: 6, scope: !5731, file: !3, line: 277, type: !1847)
!5739 = !DILocalVariable(name: "retval", scope: !5731, file: !3, line: 279, type: !40)
!5740 = !DILocalVariable(name: "folio", scope: !5731, file: !3, line: 280, type: !367)
!5741 = !DILocalVariable(name: "v9inode", scope: !5731, file: !3, line: 281, type: !5327)
!5742 = !DILocation(line: 275, column: 42, scope: !5731)
!5743 = !DILocation(line: 275, column: 70, scope: !5731)
!5744 = !DILocation(line: 276, column: 15, scope: !5731)
!5745 = !DILocation(line: 276, column: 33, scope: !5731)
!5746 = !DILocation(line: 277, column: 22, scope: !5731)
!5747 = !DILocation(line: 277, column: 39, scope: !5731)
!5748 = !DILocation(line: 279, column: 2, scope: !5731)
!5749 = !DILocation(line: 279, column: 6, scope: !5731)
!5750 = !DILocation(line: 280, column: 2, scope: !5731)
!5751 = !DILocation(line: 280, column: 16, scope: !5731)
!5752 = !DILocation(line: 281, column: 2, scope: !5731)
!5753 = !DILocation(line: 281, column: 21, scope: !5731)
!5754 = !DILocation(line: 281, column: 38, scope: !5731)
!5755 = !DILocation(line: 281, column: 47, scope: !5731)
!5756 = !DILocation(line: 281, column: 31, scope: !5731)
!5757 = !DILocation(line: 283, column: 2, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 283, column: 2)
!5759 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 283, column: 2)
!5760 = !DILocation(line: 283, column: 2, scope: !5759)
!5761 = !DILocation(line: 289, column: 30, scope: !5731)
!5762 = !DILocation(line: 289, column: 39, scope: !5731)
!5763 = !DILocation(line: 289, column: 46, scope: !5731)
!5764 = !DILocation(line: 289, column: 52, scope: !5731)
!5765 = !DILocation(line: 289, column: 61, scope: !5731)
!5766 = !DILocation(line: 289, column: 66, scope: !5731)
!5767 = !DILocation(line: 289, column: 79, scope: !5731)
!5768 = !DILocation(line: 289, column: 11, scope: !5731)
!5769 = !DILocation(line: 289, column: 9, scope: !5731)
!5770 = !DILocation(line: 290, column: 6, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 290, column: 6)
!5772 = !DILocation(line: 290, column: 13, scope: !5771)
!5773 = !DILocation(line: 290, column: 6, scope: !5731)
!5774 = !DILocation(line: 291, column: 10, scope: !5771)
!5775 = !DILocation(line: 291, column: 3, scope: !5771)
!5776 = !DILocation(line: 293, column: 15, scope: !5731)
!5777 = !DILocation(line: 293, column: 22, scope: !5731)
!5778 = !DILocation(line: 293, column: 3, scope: !5731)
!5779 = !DILocation(line: 293, column: 12, scope: !5731)
!5780 = !DILocation(line: 294, column: 9, scope: !5731)
!5781 = !DILocation(line: 294, column: 2, scope: !5731)
!5782 = !DILocation(line: 295, column: 1, scope: !5731)
!5783 = distinct !DISubprogram(name: "v9fs_write_end", scope: !3, file: !3, line: 297, type: !5173, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5784)
!5784 = !{!5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795}
!5785 = !DILocalVariable(name: "filp", arg: 1, scope: !5783, file: !3, line: 297, type: !705)
!5786 = !DILocalVariable(name: "mapping", arg: 2, scope: !5783, file: !3, line: 297, type: !387)
!5787 = !DILocalVariable(name: "pos", arg: 3, scope: !5783, file: !3, line: 298, type: !59)
!5788 = !DILocalVariable(name: "len", arg: 4, scope: !5783, file: !3, line: 298, type: !7)
!5789 = !DILocalVariable(name: "copied", arg: 5, scope: !5783, file: !3, line: 298, type: !7)
!5790 = !DILocalVariable(name: "subpage", arg: 6, scope: !5783, file: !3, line: 299, type: !1300)
!5791 = !DILocalVariable(name: "fsdata", arg: 7, scope: !5783, file: !3, line: 299, type: !38)
!5792 = !DILocalVariable(name: "last_pos", scope: !5783, file: !3, line: 301, type: !59)
!5793 = !DILocalVariable(name: "folio", scope: !5783, file: !3, line: 302, type: !367)
!5794 = !DILocalVariable(name: "inode", scope: !5783, file: !3, line: 303, type: !391)
!5795 = !DILabel(scope: !5783, name: "out", file: !3, line: 329)
!5796 = !DILocation(line: 297, column: 40, scope: !5783)
!5797 = !DILocation(line: 297, column: 68, scope: !5783)
!5798 = !DILocation(line: 298, column: 13, scope: !5783)
!5799 = !DILocation(line: 298, column: 31, scope: !5783)
!5800 = !DILocation(line: 298, column: 49, scope: !5783)
!5801 = !DILocation(line: 299, column: 19, scope: !5783)
!5802 = !DILocation(line: 299, column: 34, scope: !5783)
!5803 = !DILocation(line: 301, column: 2, scope: !5783)
!5804 = !DILocation(line: 301, column: 9, scope: !5783)
!5805 = !DILocation(line: 301, column: 20, scope: !5783)
!5806 = !DILocation(line: 301, column: 26, scope: !5783)
!5807 = !DILocation(line: 301, column: 24, scope: !5783)
!5808 = !DILocation(line: 302, column: 2, scope: !5783)
!5809 = !DILocation(line: 302, column: 16, scope: !5783)
!5810 = !DILocation(line: 302, column: 24, scope: !5783)
!5811 = !DILocation(line: 303, column: 2, scope: !5783)
!5812 = !DILocation(line: 303, column: 16, scope: !5783)
!5813 = !DILocation(line: 303, column: 24, scope: !5783)
!5814 = !DILocation(line: 303, column: 33, scope: !5783)
!5815 = !DILocation(line: 305, column: 2, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 305, column: 2)
!5817 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 305, column: 2)
!5818 = !DILocation(line: 305, column: 2, scope: !5817)
!5819 = !DILocation(line: 307, column: 27, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 307, column: 6)
!5821 = !DILocation(line: 307, column: 7, scope: !5820)
!5822 = !DILocation(line: 307, column: 6, scope: !5783)
!5823 = !DILocation(line: 308, column: 7, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 308, column: 7)
!5825 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 307, column: 35)
!5826 = !DILocation(line: 308, column: 7, scope: !5825)
!5827 = !DILocation(line: 309, column: 11, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 308, column: 31)
!5829 = !DILocation(line: 310, column: 4, scope: !5828)
!5830 = !DILocation(line: 313, column: 23, scope: !5825)
!5831 = !DILocation(line: 313, column: 3, scope: !5825)
!5832 = !DILocation(line: 314, column: 2, scope: !5825)
!5833 = !DILocation(line: 320, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 320, column: 6)
!5835 = !DILocation(line: 320, column: 17, scope: !5834)
!5836 = !DILocation(line: 320, column: 24, scope: !5834)
!5837 = !DILocation(line: 320, column: 15, scope: !5834)
!5838 = !DILocation(line: 320, column: 6, scope: !5783)
!5839 = !DILocation(line: 321, column: 19, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 320, column: 32)
!5841 = !DILocation(line: 321, column: 26, scope: !5840)
!5842 = !DILocation(line: 321, column: 37, scope: !5840)
!5843 = !DILocation(line: 321, column: 44, scope: !5840)
!5844 = !DILocation(line: 321, column: 35, scope: !5840)
!5845 = !DILocation(line: 321, column: 3, scope: !5840)
!5846 = !DILocation(line: 322, column: 16, scope: !5840)
!5847 = !DILocation(line: 322, column: 23, scope: !5840)
!5848 = !DILocation(line: 322, column: 3, scope: !5840)
!5849 = !DILocation(line: 327, column: 2, scope: !5840)
!5850 = !DILocation(line: 328, column: 19, scope: !5783)
!5851 = !DILocation(line: 328, column: 2, scope: !5783)
!5852 = !DILocation(line: 329, column: 1, scope: !5783)
!5853 = !DILocation(line: 330, column: 15, scope: !5783)
!5854 = !DILocation(line: 330, column: 2, scope: !5783)
!5855 = !DILocation(line: 331, column: 12, scope: !5783)
!5856 = !DILocation(line: 331, column: 2, scope: !5783)
!5857 = !DILocation(line: 333, column: 9, scope: !5783)
!5858 = !DILocation(line: 334, column: 1, scope: !5783)
!5859 = !DILocation(line: 333, column: 2, scope: !5783)
!5860 = distinct !DISubprogram(name: "v9fs_invalidate_folio", scope: !3, file: !3, line: 130, type: !5181, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5861)
!5861 = !{!5862, !5863, !5864}
!5862 = !DILocalVariable(name: "folio", arg: 1, scope: !5860, file: !3, line: 130, type: !367)
!5863 = !DILocalVariable(name: "offset", arg: 2, scope: !5860, file: !3, line: 130, type: !53)
!5864 = !DILocalVariable(name: "length", arg: 3, scope: !5860, file: !3, line: 131, type: !53)
!5865 = !DILocation(line: 130, column: 49, scope: !5860)
!5866 = !DILocation(line: 130, column: 63, scope: !5860)
!5867 = !DILocation(line: 131, column: 13, scope: !5860)
!5868 = !DILocation(line: 133, column: 21, scope: !5860)
!5869 = !DILocation(line: 133, column: 2, scope: !5860)
!5870 = !DILocation(line: 134, column: 1, scope: !5860)
!5871 = distinct !DISubprogram(name: "v9fs_release_folio", scope: !3, file: !3, line: 115, type: !5185, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5872)
!5872 = !{!5873, !5874}
!5873 = !DILocalVariable(name: "folio", arg: 1, scope: !5871, file: !3, line: 115, type: !367)
!5874 = !DILocalVariable(name: "gfp", arg: 2, scope: !5871, file: !3, line: 115, type: !1675)
!5875 = !DILocation(line: 115, column: 46, scope: !5871)
!5876 = !DILocation(line: 115, column: 59, scope: !5871)
!5877 = !DILocation(line: 117, column: 25, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 117, column: 6)
!5879 = !DILocation(line: 117, column: 6, scope: !5878)
!5880 = !DILocation(line: 117, column: 6, scope: !5871)
!5881 = !DILocation(line: 118, column: 3, scope: !5878)
!5882 = !DILocation(line: 127, column: 2, scope: !5871)
!5883 = !DILocation(line: 128, column: 1, scope: !5871)
!5884 = distinct !DISubprogram(name: "v9fs_direct_IO", scope: !3, file: !3, line: 253, type: !1214, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5885)
!5885 = !{!5886, !5887, !5888, !5889, !5890, !5891, !5892, !5897}
!5886 = !DILocalVariable(name: "iocb", arg: 1, scope: !5884, file: !3, line: 253, type: !1216)
!5887 = !DILocalVariable(name: "iter", arg: 2, scope: !5884, file: !3, line: 253, type: !1254)
!5888 = !DILocalVariable(name: "file", scope: !5884, file: !3, line: 255, type: !705)
!5889 = !DILocalVariable(name: "pos", scope: !5884, file: !3, line: 256, type: !59)
!5890 = !DILocalVariable(name: "n", scope: !5884, file: !3, line: 257, type: !664)
!5891 = !DILocalVariable(name: "err", scope: !5884, file: !3, line: 258, type: !40)
!5892 = !DILocalVariable(name: "inode", scope: !5893, file: !3, line: 263, type: !391)
!5893 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 262, column: 10)
!5894 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 262, column: 7)
!5895 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 260, column: 34)
!5896 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 260, column: 6)
!5897 = !DILocalVariable(name: "i_size", scope: !5893, file: !3, line: 264, type: !59)
!5898 = !DILocation(line: 253, column: 30, scope: !5884)
!5899 = !DILocation(line: 253, column: 53, scope: !5884)
!5900 = !DILocation(line: 255, column: 2, scope: !5884)
!5901 = !DILocation(line: 255, column: 15, scope: !5884)
!5902 = !DILocation(line: 255, column: 22, scope: !5884)
!5903 = !DILocation(line: 255, column: 28, scope: !5884)
!5904 = !DILocation(line: 256, column: 2, scope: !5884)
!5905 = !DILocation(line: 256, column: 9, scope: !5884)
!5906 = !DILocation(line: 256, column: 15, scope: !5884)
!5907 = !DILocation(line: 256, column: 21, scope: !5884)
!5908 = !DILocation(line: 257, column: 2, scope: !5884)
!5909 = !DILocation(line: 257, column: 10, scope: !5884)
!5910 = !DILocation(line: 258, column: 2, scope: !5884)
!5911 = !DILocation(line: 258, column: 6, scope: !5884)
!5912 = !DILocation(line: 260, column: 18, scope: !5896)
!5913 = !DILocation(line: 260, column: 6, scope: !5896)
!5914 = !DILocation(line: 260, column: 24, scope: !5896)
!5915 = !DILocation(line: 260, column: 6, scope: !5884)
!5916 = !DILocation(line: 261, column: 23, scope: !5895)
!5917 = !DILocation(line: 261, column: 29, scope: !5895)
!5918 = !DILocation(line: 261, column: 43, scope: !5895)
!5919 = !DILocation(line: 261, column: 48, scope: !5895)
!5920 = !DILocation(line: 261, column: 7, scope: !5895)
!5921 = !DILocation(line: 261, column: 5, scope: !5895)
!5922 = !DILocation(line: 262, column: 7, scope: !5894)
!5923 = !DILocation(line: 262, column: 7, scope: !5895)
!5924 = !DILocation(line: 263, column: 4, scope: !5893)
!5925 = !DILocation(line: 263, column: 18, scope: !5893)
!5926 = !DILocation(line: 263, column: 37, scope: !5893)
!5927 = !DILocation(line: 263, column: 26, scope: !5893)
!5928 = !DILocation(line: 264, column: 4, scope: !5893)
!5929 = !DILocation(line: 264, column: 11, scope: !5893)
!5930 = !DILocation(line: 264, column: 32, scope: !5893)
!5931 = !DILocation(line: 264, column: 20, scope: !5893)
!5932 = !DILocation(line: 266, column: 8, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 266, column: 8)
!5934 = !DILocation(line: 266, column: 14, scope: !5933)
!5935 = !DILocation(line: 266, column: 12, scope: !5933)
!5936 = !DILocation(line: 266, column: 18, scope: !5933)
!5937 = !DILocation(line: 266, column: 16, scope: !5933)
!5938 = !DILocation(line: 266, column: 8, scope: !5893)
!5939 = !DILocation(line: 267, column: 21, scope: !5933)
!5940 = !DILocation(line: 267, column: 28, scope: !5933)
!5941 = !DILocation(line: 267, column: 34, scope: !5933)
!5942 = !DILocation(line: 267, column: 32, scope: !5933)
!5943 = !DILocation(line: 267, column: 38, scope: !5933)
!5944 = !DILocation(line: 267, column: 36, scope: !5933)
!5945 = !DILocation(line: 267, column: 5, scope: !5933)
!5946 = !DILocation(line: 268, column: 3, scope: !5894)
!5947 = !DILocation(line: 268, column: 3, scope: !5893)
!5948 = !DILocation(line: 269, column: 2, scope: !5895)
!5949 = !DILocation(line: 270, column: 22, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 269, column: 9)
!5951 = !DILocation(line: 270, column: 28, scope: !5950)
!5952 = !DILocation(line: 270, column: 42, scope: !5950)
!5953 = !DILocation(line: 270, column: 47, scope: !5950)
!5954 = !DILocation(line: 270, column: 7, scope: !5950)
!5955 = !DILocation(line: 270, column: 5, scope: !5950)
!5956 = !DILocation(line: 272, column: 9, scope: !5884)
!5957 = !DILocation(line: 272, column: 13, scope: !5884)
!5958 = !DILocation(line: 272, column: 17, scope: !5884)
!5959 = !DILocation(line: 273, column: 1, scope: !5884)
!5960 = !DILocation(line: 272, column: 2, scope: !5884)
!5961 = distinct !DISubprogram(name: "v9fs_launder_folio", scope: !3, file: !3, line: 223, type: !5198, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5962)
!5962 = !{!5963, !5964}
!5963 = !DILocalVariable(name: "folio", arg: 1, scope: !5961, file: !3, line: 223, type: !367)
!5964 = !DILocalVariable(name: "retval", scope: !5961, file: !3, line: 225, type: !40)
!5965 = !DILocation(line: 223, column: 45, scope: !5961)
!5966 = !DILocation(line: 225, column: 2, scope: !5961)
!5967 = !DILocation(line: 225, column: 6, scope: !5961)
!5968 = !DILocation(line: 227, column: 31, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 227, column: 6)
!5970 = !DILocation(line: 227, column: 6, scope: !5969)
!5971 = !DILocation(line: 227, column: 6, scope: !5961)
!5972 = !DILocation(line: 228, column: 40, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 227, column: 39)
!5974 = !DILocation(line: 228, column: 12, scope: !5973)
!5975 = !DILocation(line: 228, column: 10, scope: !5973)
!5976 = !DILocation(line: 229, column: 7, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 229, column: 7)
!5978 = !DILocation(line: 229, column: 7, scope: !5973)
!5979 = !DILocation(line: 230, column: 11, scope: !5977)
!5980 = !DILocation(line: 230, column: 4, scope: !5977)
!5981 = !DILocation(line: 231, column: 2, scope: !5973)
!5982 = !DILocation(line: 232, column: 21, scope: !5961)
!5983 = !DILocation(line: 232, column: 2, scope: !5961)
!5984 = !DILocation(line: 233, column: 2, scope: !5961)
!5985 = !DILocation(line: 234, column: 1, scope: !5961)
!5986 = distinct !DISubprogram(name: "p9_fid_get", scope: !272, file: !272, line: 257, type: !5987, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5989)
!5987 = !DISubroutineType(types: !5988)
!5988 = !{!5485, !5485}
!5989 = !{!5990}
!5990 = !DILocalVariable(name: "fid", arg: 1, scope: !5986, file: !272, line: 257, type: !5485)
!5991 = !DILocation(line: 257, column: 56, scope: !5986)
!5992 = !DILocation(line: 259, column: 6, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5986, file: !272, line: 259, column: 6)
!5994 = !DILocation(line: 259, column: 6, scope: !5986)
!5995 = !DILocation(line: 260, column: 23, scope: !5993)
!5996 = !DILocation(line: 260, column: 3, scope: !5993)
!5997 = !DILocation(line: 262, column: 16, scope: !5986)
!5998 = !DILocation(line: 262, column: 21, scope: !5986)
!5999 = !DILocation(line: 262, column: 2, scope: !5986)
!6000 = !DILocation(line: 264, column: 9, scope: !5986)
!6001 = !DILocation(line: 264, column: 2, scope: !5986)
!6002 = distinct !DISubprogram(name: "static_key_false", scope: !2381, file: !2381, line: 205, type: !6003, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6017)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!929, !6005}
!6005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6006, size: 64)
!6006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2381, line: 85, size: 128, elements: !6007)
!6007 = !{!6008, !6009}
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6006, file: !2381, line: 86, baseType: !67, size: 32)
!6009 = !DIDerivedType(tag: DW_TAG_member, scope: !6006, file: !2381, line: 101, baseType: !6010, size: 64, offset: 64)
!6010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6006, file: !2381, line: 101, size: 64, elements: !6011)
!6011 = !{!6012, !6013, !6014}
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6010, file: !2381, line: 102, baseType: !57, size: 64)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6010, file: !2381, line: 103, baseType: !2379, size: 64)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6010, file: !2381, line: 104, baseType: !6015, size: 64)
!6015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6016, size: 64)
!6016 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2381, line: 104, flags: DIFlagFwdDecl)
!6017 = !{!6018}
!6018 = !DILocalVariable(name: "key", arg: 1, scope: !6002, file: !2381, line: 205, type: !6005)
!6019 = !DILocation(line: 205, column: 65, scope: !6002)
!6020 = !DILocation(line: 207, column: 28, scope: !6002)
!6021 = !DILocation(line: 207, column: 9, scope: !6002)
!6022 = !DILocation(line: 207, column: 2, scope: !6002)
!6023 = !DISubprogram(name: "do_trace_9p_fid_get", scope: !272, file: !272, line: 244, type: !6024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{null, !5485}
!6026 = distinct !DISubprogram(name: "refcount_inc", scope: !300, file: !300, line: 265, type: !6027, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6030)
!6027 = !DISubroutineType(types: !6028)
!6028 = !{null, !6029}
!6029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!6030 = !{!6031}
!6031 = !DILocalVariable(name: "r", arg: 1, scope: !6026, file: !300, line: 265, type: !6029)
!6032 = !DILocation(line: 265, column: 45, scope: !6026)
!6033 = !DILocation(line: 267, column: 17, scope: !6026)
!6034 = !DILocation(line: 267, column: 2, scope: !6026)
!6035 = !DILocation(line: 268, column: 1, scope: !6026)
!6036 = distinct !DISubprogram(name: "arch_static_branch", scope: !6037, file: !6037, line: 25, type: !6038, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6040)
!6037 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6038 = !DISubroutineType(types: !6039)
!6039 = !{!929, !6005, !929}
!6040 = !{!6041, !6042, !6043}
!6041 = !DILocalVariable(name: "key", arg: 1, scope: !6036, file: !6037, line: 25, type: !6005)
!6042 = !DILocalVariable(name: "branch", arg: 2, scope: !6036, file: !6037, line: 25, type: !929)
!6043 = !DILabel(scope: !6036, name: "l_yes", file: !6037, line: 33)
!6044 = !DILocation(line: 25, column: 67, scope: !6036)
!6045 = !DILocation(line: 25, column: 77, scope: !6036)
!6046 = !DILocation(line: 30, column: 13, scope: !6036)
!6047 = !DILocation(line: 30, column: 28, scope: !6036)
!6048 = !{i8 0, i8 2}
!6049 = !DILocation(line: 30, column: 26, scope: !6036)
!6050 = !DILocation(line: 27, column: 2, scope: !6036)
!6051 = !{i64 647910, i64 647954, i64 2148132637, i64 2148132658, i64 2148132684, i64 2148132717, i64 2148132751, i64 2148132775}
!6052 = !DILocation(line: 32, column: 2, scope: !6036)
!6053 = !DILocation(line: 33, column: 1, scope: !6036)
!6054 = !DILocation(line: 34, column: 2, scope: !6036)
!6055 = !DILocation(line: 35, column: 1, scope: !6036)
!6056 = distinct !DISubprogram(name: "__refcount_inc", scope: !300, file: !300, line: 248, type: !6057, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6059)
!6057 = !DISubroutineType(types: !6058)
!6058 = !{null, !6029, !2213}
!6059 = !{!6060, !6061}
!6060 = !DILocalVariable(name: "r", arg: 1, scope: !6056, file: !300, line: 248, type: !6029)
!6061 = !DILocalVariable(name: "oldp", arg: 2, scope: !6056, file: !300, line: 248, type: !2213)
!6062 = !DILocation(line: 248, column: 47, scope: !6056)
!6063 = !DILocation(line: 248, column: 55, scope: !6056)
!6064 = !DILocation(line: 250, column: 20, scope: !6056)
!6065 = !DILocation(line: 250, column: 23, scope: !6056)
!6066 = !DILocation(line: 250, column: 2, scope: !6056)
!6067 = !DILocation(line: 251, column: 1, scope: !6056)
!6068 = distinct !DISubprogram(name: "__refcount_add", scope: !300, file: !300, line: 191, type: !6069, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6071)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{null, !40, !6029, !2213}
!6071 = !{!6072, !6073, !6074, !6075}
!6072 = !DILocalVariable(name: "i", arg: 1, scope: !6068, file: !300, line: 191, type: !40)
!6073 = !DILocalVariable(name: "r", arg: 2, scope: !6068, file: !300, line: 191, type: !6029)
!6074 = !DILocalVariable(name: "oldp", arg: 3, scope: !6068, file: !300, line: 191, type: !2213)
!6075 = !DILocalVariable(name: "old", scope: !6068, file: !300, line: 193, type: !40)
!6076 = !DILocation(line: 191, column: 39, scope: !6068)
!6077 = !DILocation(line: 191, column: 54, scope: !6068)
!6078 = !DILocation(line: 191, column: 62, scope: !6068)
!6079 = !DILocation(line: 193, column: 2, scope: !6068)
!6080 = !DILocation(line: 193, column: 6, scope: !6068)
!6081 = !DILocation(line: 193, column: 37, scope: !6068)
!6082 = !DILocation(line: 193, column: 41, scope: !6068)
!6083 = !DILocation(line: 193, column: 44, scope: !6068)
!6084 = !DILocation(line: 193, column: 12, scope: !6068)
!6085 = !DILocation(line: 195, column: 6, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6068, file: !300, line: 195, column: 6)
!6087 = !DILocation(line: 195, column: 6, scope: !6068)
!6088 = !DILocation(line: 196, column: 11, scope: !6086)
!6089 = !DILocation(line: 196, column: 4, scope: !6086)
!6090 = !DILocation(line: 196, column: 9, scope: !6086)
!6091 = !DILocation(line: 196, column: 3, scope: !6086)
!6092 = !DILocation(line: 198, column: 6, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6068, file: !300, line: 198, column: 6)
!6094 = !DILocation(line: 198, column: 6, scope: !6068)
!6095 = !DILocation(line: 199, column: 26, scope: !6093)
!6096 = !DILocation(line: 199, column: 3, scope: !6093)
!6097 = !DILocation(line: 200, column: 11, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6093, file: !300, line: 200, column: 11)
!6099 = !DILocation(line: 200, column: 11, scope: !6093)
!6100 = !DILocation(line: 201, column: 26, scope: !6098)
!6101 = !DILocation(line: 201, column: 3, scope: !6098)
!6102 = !DILocation(line: 202, column: 1, scope: !6068)
!6103 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6104, file: !6104, line: 250, type: !6105, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6108)
!6104 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6105 = !DISubroutineType(types: !6106)
!6106 = !{!40, !40, !6107}
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!6108 = !{!6109, !6110}
!6109 = !DILocalVariable(name: "i", arg: 1, scope: !6103, file: !6104, line: 250, type: !40)
!6110 = !DILocalVariable(name: "v", arg: 2, scope: !6103, file: !6104, line: 250, type: !6107)
!6111 = !DILocation(line: 250, column: 30, scope: !6103)
!6112 = !DILocation(line: 250, column: 43, scope: !6103)
!6113 = !DILocation(line: 252, column: 31, scope: !6103)
!6114 = !DILocation(line: 252, column: 2, scope: !6103)
!6115 = !DILocation(line: 253, column: 38, scope: !6103)
!6116 = !DILocation(line: 253, column: 41, scope: !6103)
!6117 = !DILocation(line: 253, column: 9, scope: !6103)
!6118 = !DILocation(line: 253, column: 2, scope: !6103)
!6119 = !DISubprogram(name: "refcount_warn_saturate", scope: !300, file: !300, line: 127, type: !6120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6120 = !DISubroutineType(types: !6121)
!6121 = !{null, !6029, !299}
!6122 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6123, file: !6123, line: 94, type: !6124, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6129)
!6123 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6124 = !DISubroutineType(types: !6125)
!6125 = !{null, !6126, !53}
!6126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6127, size: 64)
!6127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6128)
!6128 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6129 = !{!6130, !6131}
!6130 = !DILocalVariable(name: "v", arg: 1, scope: !6122, file: !6123, line: 94, type: !6126)
!6131 = !DILocalVariable(name: "size", arg: 2, scope: !6122, file: !6123, line: 94, type: !53)
!6132 = !DILocation(line: 94, column: 79, scope: !6122)
!6133 = !DILocation(line: 94, column: 89, scope: !6122)
!6134 = !DILocation(line: 96, column: 20, scope: !6122)
!6135 = !DILocation(line: 96, column: 23, scope: !6122)
!6136 = !DILocation(line: 96, column: 2, scope: !6122)
!6137 = !DILocation(line: 97, column: 2, scope: !6122)
!6138 = !DILocation(line: 98, column: 1, scope: !6122)
!6139 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6140, file: !6140, line: 731, type: !6105, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6141)
!6140 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6141 = !{!6142, !6143}
!6142 = !DILocalVariable(name: "i", arg: 1, scope: !6139, file: !6140, line: 731, type: !40)
!6143 = !DILocalVariable(name: "v", arg: 2, scope: !6139, file: !6140, line: 731, type: !6107)
!6144 = !DILocation(line: 731, column: 34, scope: !6139)
!6145 = !DILocation(line: 731, column: 47, scope: !6139)
!6146 = !DILocation(line: 736, column: 31, scope: !6139)
!6147 = !DILocation(line: 736, column: 34, scope: !6139)
!6148 = !DILocation(line: 736, column: 9, scope: !6139)
!6149 = !DILocation(line: 736, column: 2, scope: !6139)
!6150 = distinct !DISubprogram(name: "kasan_check_write", scope: !6151, file: !6151, line: 44, type: !6152, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6154)
!6151 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6152 = !DISubroutineType(types: !6153)
!6153 = !{!929, !6126, !7}
!6154 = !{!6155, !6156}
!6155 = !DILocalVariable(name: "p", arg: 1, scope: !6150, file: !6151, line: 44, type: !6126)
!6156 = !DILocalVariable(name: "size", arg: 2, scope: !6150, file: !6151, line: 44, type: !7)
!6157 = !DILocation(line: 44, column: 59, scope: !6150)
!6158 = !DILocation(line: 44, column: 75, scope: !6150)
!6159 = !DILocation(line: 46, column: 2, scope: !6150)
!6160 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6161, file: !6161, line: 229, type: !6162, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6164)
!6161 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6162 = !DISubroutineType(types: !6163)
!6163 = !{null, !6126, !53, !40}
!6164 = !{!6165, !6166, !6167}
!6165 = !DILocalVariable(name: "ptr", arg: 1, scope: !6160, file: !6161, line: 229, type: !6126)
!6166 = !DILocalVariable(name: "size", arg: 2, scope: !6160, file: !6161, line: 229, type: !53)
!6167 = !DILocalVariable(name: "type", arg: 3, scope: !6160, file: !6161, line: 230, type: !40)
!6168 = !DILocation(line: 229, column: 60, scope: !6160)
!6169 = !DILocation(line: 229, column: 72, scope: !6160)
!6170 = !DILocation(line: 230, column: 15, scope: !6160)
!6171 = !DILocation(line: 230, column: 23, scope: !6160)
!6172 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6173, file: !6173, line: 95, type: !6105, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6174)
!6173 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6174 = !{!6175, !6176, !6177}
!6175 = !DILocalVariable(name: "i", arg: 1, scope: !6172, file: !6173, line: 95, type: !40)
!6176 = !DILocalVariable(name: "v", arg: 2, scope: !6172, file: !6173, line: 95, type: !6107)
!6177 = !DILocalVariable(name: "__ret", scope: !6178, file: !6173, line: 97, type: !40)
!6178 = distinct !DILexicalBlock(scope: !6172, file: !6173, line: 97, column: 9)
!6179 = !DILocation(line: 95, column: 54, scope: !6172)
!6180 = !DILocation(line: 95, column: 67, scope: !6172)
!6181 = !DILocation(line: 97, column: 9, scope: !6178)
!6182 = !{i64 2148800139, i64 2148800178, i64 2148800199, i64 2148800236, i64 2148800259, i64 2148800268}
!6183 = !DILocation(line: 97, column: 9, scope: !6172)
!6184 = !DILocation(line: 97, column: 2, scope: !6172)
!6185 = distinct !DISubprogram(name: "p9_fid_put", scope: !272, file: !272, line: 267, type: !6186, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6188)
!6186 = !DISubroutineType(types: !6187)
!6187 = !{!40, !5485}
!6188 = !{!6189}
!6189 = !DILocalVariable(name: "fid", arg: 1, scope: !6185, file: !272, line: 267, type: !5485)
!6190 = !DILocation(line: 267, column: 45, scope: !6185)
!6191 = !DILocation(line: 269, column: 7, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6185, file: !272, line: 269, column: 6)
!6193 = !DILocation(line: 269, column: 11, scope: !6192)
!6194 = !DILocation(line: 269, column: 21, scope: !6192)
!6195 = !DILocation(line: 269, column: 14, scope: !6192)
!6196 = !DILocation(line: 269, column: 6, scope: !6185)
!6197 = !DILocation(line: 270, column: 3, scope: !6192)
!6198 = !DILocation(line: 272, column: 6, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6185, file: !272, line: 272, column: 6)
!6200 = !DILocation(line: 272, column: 6, scope: !6185)
!6201 = !DILocation(line: 273, column: 23, scope: !6199)
!6202 = !DILocation(line: 273, column: 3, scope: !6199)
!6203 = !DILocation(line: 275, column: 30, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6185, file: !272, line: 275, column: 6)
!6205 = !DILocation(line: 275, column: 35, scope: !6204)
!6206 = !DILocation(line: 275, column: 7, scope: !6204)
!6207 = !DILocation(line: 275, column: 6, scope: !6185)
!6208 = !DILocation(line: 276, column: 3, scope: !6204)
!6209 = !DILocation(line: 278, column: 25, scope: !6185)
!6210 = !DILocation(line: 278, column: 9, scope: !6185)
!6211 = !DILocation(line: 278, column: 2, scope: !6185)
!6212 = !DILocation(line: 279, column: 1, scope: !6185)
!6213 = distinct !DISubprogram(name: "IS_ERR", scope: !6214, file: !6214, line: 59, type: !6215, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6217)
!6214 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6215 = !DISubroutineType(types: !6216)
!6216 = !{!929, !1538}
!6217 = !{!6218}
!6218 = !DILocalVariable(name: "ptr", arg: 1, scope: !6213, file: !6214, line: 59, type: !1538)
!6219 = !DILocation(line: 59, column: 60, scope: !6213)
!6220 = !DILocation(line: 61, column: 9, scope: !6213)
!6221 = !DILocation(line: 61, column: 2, scope: !6213)
!6222 = !DISubprogram(name: "do_trace_9p_fid_put", scope: !272, file: !272, line: 245, type: !6024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6223 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !300, file: !300, line: 331, type: !6224, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6226)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!929, !6029}
!6226 = !{!6227}
!6227 = !DILocalVariable(name: "r", arg: 1, scope: !6223, file: !300, line: 331, type: !6029)
!6228 = !DILocation(line: 331, column: 67, scope: !6223)
!6229 = !DILocation(line: 333, column: 33, scope: !6223)
!6230 = !DILocation(line: 333, column: 9, scope: !6223)
!6231 = !DILocation(line: 333, column: 2, scope: !6223)
!6232 = !DISubprogram(name: "p9_client_clunk", scope: !272, file: !272, line: 202, type: !6186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6233 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !300, file: !300, line: 313, type: !6234, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6236)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!929, !6029, !2213}
!6236 = !{!6237, !6238}
!6237 = !DILocalVariable(name: "r", arg: 1, scope: !6233, file: !300, line: 313, type: !6029)
!6238 = !DILocalVariable(name: "oldp", arg: 2, scope: !6233, file: !300, line: 313, type: !2213)
!6239 = !DILocation(line: 313, column: 69, scope: !6233)
!6240 = !DILocation(line: 313, column: 77, scope: !6233)
!6241 = !DILocation(line: 315, column: 36, scope: !6233)
!6242 = !DILocation(line: 315, column: 39, scope: !6233)
!6243 = !DILocation(line: 315, column: 9, scope: !6233)
!6244 = !DILocation(line: 315, column: 2, scope: !6233)
!6245 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !300, file: !300, line: 270, type: !6246, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6248)
!6246 = !DISubroutineType(types: !6247)
!6247 = !{!929, !40, !6029, !2213}
!6248 = !{!6249, !6250, !6251, !6252}
!6249 = !DILocalVariable(name: "i", arg: 1, scope: !6245, file: !300, line: 270, type: !40)
!6250 = !DILocalVariable(name: "r", arg: 2, scope: !6245, file: !300, line: 270, type: !6029)
!6251 = !DILocalVariable(name: "oldp", arg: 3, scope: !6245, file: !300, line: 270, type: !2213)
!6252 = !DILocalVariable(name: "old", scope: !6245, file: !300, line: 272, type: !40)
!6253 = !DILocation(line: 270, column: 61, scope: !6245)
!6254 = !DILocation(line: 270, column: 76, scope: !6245)
!6255 = !DILocation(line: 270, column: 84, scope: !6245)
!6256 = !DILocation(line: 272, column: 2, scope: !6245)
!6257 = !DILocation(line: 272, column: 6, scope: !6245)
!6258 = !DILocation(line: 272, column: 37, scope: !6245)
!6259 = !DILocation(line: 272, column: 41, scope: !6245)
!6260 = !DILocation(line: 272, column: 44, scope: !6245)
!6261 = !DILocation(line: 272, column: 12, scope: !6245)
!6262 = !DILocation(line: 274, column: 6, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6245, file: !300, line: 274, column: 6)
!6264 = !DILocation(line: 274, column: 6, scope: !6245)
!6265 = !DILocation(line: 275, column: 11, scope: !6263)
!6266 = !DILocation(line: 275, column: 4, scope: !6263)
!6267 = !DILocation(line: 275, column: 9, scope: !6263)
!6268 = !DILocation(line: 275, column: 3, scope: !6263)
!6269 = !DILocation(line: 277, column: 6, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6245, file: !300, line: 277, column: 6)
!6271 = !DILocation(line: 277, column: 13, scope: !6270)
!6272 = !DILocation(line: 277, column: 10, scope: !6270)
!6273 = !DILocation(line: 277, column: 6, scope: !6245)
!6274 = !DILocation(line: 278, column: 3, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6270, file: !300, line: 277, column: 16)
!6276 = !DILocation(line: 278, column: 3, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6275, file: !300, line: 278, column: 3)
!6278 = !DILocation(line: 278, column: 3, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6277, file: !300, line: 278, column: 3)
!6280 = !DILocation(line: 278, column: 3, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6277, file: !300, line: 278, column: 3)
!6282 = !DILocation(line: 278, column: 3, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6281, file: !300, line: 278, column: 3)
!6284 = !{i64 2149925402}
!6285 = !DILocation(line: 279, column: 3, scope: !6275)
!6286 = !DILocation(line: 282, column: 6, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6245, file: !300, line: 282, column: 6)
!6288 = !DILocation(line: 282, column: 6, scope: !6245)
!6289 = !DILocation(line: 283, column: 26, scope: !6287)
!6290 = !DILocation(line: 283, column: 3, scope: !6287)
!6291 = !DILocation(line: 285, column: 2, scope: !6245)
!6292 = !DILocation(line: 286, column: 1, scope: !6245)
!6293 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6104, file: !6104, line: 397, type: !6105, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6294)
!6294 = !{!6295, !6296}
!6295 = !DILocalVariable(name: "i", arg: 1, scope: !6293, file: !6104, line: 397, type: !40)
!6296 = !DILocalVariable(name: "v", arg: 2, scope: !6293, file: !6104, line: 397, type: !6107)
!6297 = !DILocation(line: 397, column: 30, scope: !6293)
!6298 = !DILocation(line: 397, column: 43, scope: !6293)
!6299 = !DILocation(line: 399, column: 2, scope: !6293)
!6300 = !DILocation(line: 399, column: 2, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6293, file: !6104, line: 399, column: 2)
!6302 = !DILocation(line: 400, column: 31, scope: !6293)
!6303 = !DILocation(line: 400, column: 2, scope: !6293)
!6304 = !DILocation(line: 401, column: 38, scope: !6293)
!6305 = !DILocation(line: 401, column: 41, scope: !6293)
!6306 = !DILocation(line: 401, column: 9, scope: !6293)
!6307 = !DILocation(line: 401, column: 2, scope: !6293)
!6308 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6140, file: !6140, line: 928, type: !6105, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6309)
!6309 = !{!6310, !6311}
!6310 = !DILocalVariable(name: "i", arg: 1, scope: !6308, file: !6140, line: 928, type: !40)
!6311 = !DILocalVariable(name: "v", arg: 2, scope: !6308, file: !6140, line: 928, type: !6107)
!6312 = !DILocation(line: 928, column: 34, scope: !6308)
!6313 = !DILocation(line: 928, column: 47, scope: !6308)
!6314 = !DILocation(line: 936, column: 31, scope: !6308)
!6315 = !DILocation(line: 936, column: 34, scope: !6308)
!6316 = !DILocation(line: 936, column: 9, scope: !6308)
!6317 = !DILocation(line: 936, column: 2, scope: !6308)
!6318 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6173, file: !6173, line: 101, type: !6105, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6319)
!6319 = !{!6320, !6321, !6322}
!6320 = !DILocalVariable(name: "i", arg: 1, scope: !6318, file: !6173, line: 101, type: !40)
!6321 = !DILocalVariable(name: "v", arg: 2, scope: !6318, file: !6173, line: 101, type: !6107)
!6322 = !DILocalVariable(name: "__ret", scope: !6323, file: !6173, line: 103, type: !40)
!6323 = distinct !DILexicalBlock(scope: !6318, file: !6173, line: 103, column: 9)
!6324 = !DILocation(line: 101, column: 54, scope: !6318)
!6325 = !DILocation(line: 101, column: 67, scope: !6318)
!6326 = !DILocation(line: 103, column: 9, scope: !6323)
!6327 = !{i64 2148802324, i64 2148802363, i64 2148802384, i64 2148802421, i64 2148802444, i64 2148802453}
!6328 = !DILocation(line: 103, column: 9, scope: !6318)
!6329 = !DILocation(line: 103, column: 2, scope: !6318)
!6330 = !DISubprogram(name: "iov_iter_xarray", scope: !1256, file: !1256, line: 285, type: !6331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6331 = !DISubroutineType(types: !6332)
!6332 = !{null, !1254, !7, !1745, !59, !53}
!6333 = !DISubprogram(name: "p9_client_read", scope: !272, file: !272, line: 206, type: !6334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6334 = !DISubroutineType(types: !6335)
!6335 = !{!40, !5485, !464, !1254, !2213}
!6336 = distinct !DISubprogram(name: "generic___set_bit", scope: !6337, file: !6337, line: 28, type: !6338, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6341)
!6337 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6338 = !DISubroutineType(types: !6339)
!6339 = !{null, !57, !6340}
!6340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!6341 = !{!6342, !6343, !6344, !6345}
!6342 = !DILocalVariable(name: "nr", arg: 1, scope: !6336, file: !6337, line: 28, type: !57)
!6343 = !DILocalVariable(name: "addr", arg: 2, scope: !6336, file: !6337, line: 28, type: !6340)
!6344 = !DILocalVariable(name: "mask", scope: !6336, file: !6337, line: 30, type: !57)
!6345 = !DILocalVariable(name: "p", scope: !6336, file: !6337, line: 31, type: !363)
!6346 = !DILocation(line: 28, column: 33, scope: !6336)
!6347 = !DILocation(line: 28, column: 61, scope: !6336)
!6348 = !DILocation(line: 30, column: 2, scope: !6336)
!6349 = !DILocation(line: 30, column: 16, scope: !6336)
!6350 = !DILocation(line: 30, column: 23, scope: !6336)
!6351 = !DILocation(line: 31, column: 2, scope: !6336)
!6352 = !DILocation(line: 31, column: 17, scope: !6336)
!6353 = !DILocation(line: 31, column: 39, scope: !6336)
!6354 = !DILocation(line: 31, column: 47, scope: !6336)
!6355 = !DILocation(line: 31, column: 45, scope: !6336)
!6356 = !DILocation(line: 33, column: 9, scope: !6336)
!6357 = !DILocation(line: 33, column: 3, scope: !6336)
!6358 = !DILocation(line: 33, column: 6, scope: !6336)
!6359 = !DILocation(line: 34, column: 1, scope: !6336)
!6360 = distinct !DISubprogram(name: "___set_bit", scope: !6361, file: !6361, line: 26, type: !6338, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6362)
!6361 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6362 = !{!6363, !6364}
!6363 = !DILocalVariable(name: "nr", arg: 1, scope: !6360, file: !6361, line: 26, type: !57)
!6364 = !DILocalVariable(name: "addr", arg: 2, scope: !6360, file: !6361, line: 26, type: !6340)
!6365 = !DILocation(line: 26, column: 26, scope: !6360)
!6366 = !DILocation(line: 26, column: 54, scope: !6360)
!6367 = !DILocation(line: 28, column: 19, scope: !6360)
!6368 = !DILocation(line: 28, column: 26, scope: !6360)
!6369 = !DILocation(line: 28, column: 24, scope: !6360)
!6370 = !DILocation(line: 28, column: 2, scope: !6360)
!6371 = !DILocation(line: 29, column: 17, scope: !6360)
!6372 = !DILocation(line: 29, column: 21, scope: !6360)
!6373 = !DILocation(line: 29, column: 2, scope: !6360)
!6374 = !DILocation(line: 30, column: 1, scope: !6360)
!6375 = !DISubprogram(name: "netfs_subreq_terminated", scope: !254, file: !254, line: 294, type: !6376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6376 = !DISubroutineType(types: !6377)
!6377 = !{null, !5383, !664, !929}
!6378 = distinct !DISubprogram(name: "instrument_write", scope: !6123, file: !6123, line: 38, type: !6124, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6379)
!6379 = !{!6380, !6381}
!6380 = !DILocalVariable(name: "v", arg: 1, scope: !6378, file: !6123, line: 38, type: !6126)
!6381 = !DILocalVariable(name: "size", arg: 2, scope: !6378, file: !6123, line: 38, type: !53)
!6382 = !DILocation(line: 38, column: 67, scope: !6378)
!6383 = !DILocation(line: 38, column: 77, scope: !6378)
!6384 = !DILocation(line: 40, column: 20, scope: !6378)
!6385 = !DILocation(line: 40, column: 23, scope: !6378)
!6386 = !DILocation(line: 40, column: 2, scope: !6378)
!6387 = !DILocation(line: 41, column: 2, scope: !6378)
!6388 = !DILocation(line: 42, column: 1, scope: !6378)
!6389 = distinct !DISubprogram(name: "arch___set_bit", scope: !6390, file: !6390, line: 66, type: !6338, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6391)
!6390 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6391 = !{!6392, !6393}
!6392 = !DILocalVariable(name: "nr", arg: 1, scope: !6389, file: !6390, line: 66, type: !57)
!6393 = !DILocalVariable(name: "addr", arg: 2, scope: !6389, file: !6390, line: 66, type: !6340)
!6394 = !DILocation(line: 66, column: 30, scope: !6389)
!6395 = !DILocation(line: 66, column: 58, scope: !6389)
!6396 = !DILocation(line: 68, column: 44, scope: !6389)
!6397 = !DILocation(line: 68, column: 56, scope: !6389)
!6398 = !DILocation(line: 68, column: 2, scope: !6389)
!6399 = !{i64 2148337247}
!6400 = !DILocation(line: 69, column: 1, scope: !6389)
!6401 = distinct !DISubprogram(name: "_compound_head", scope: !308, file: !308, line: 244, type: !6402, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6404)
!6402 = !DISubroutineType(types: !6403)
!6403 = !{!57, !5325}
!6404 = !{!6405, !6406}
!6405 = !DILocalVariable(name: "page", arg: 1, scope: !6401, file: !308, line: 244, type: !5325)
!6406 = !DILocalVariable(name: "head", scope: !6401, file: !308, line: 246, type: !57)
!6407 = !DILocation(line: 244, column: 63, scope: !6401)
!6408 = !DILocation(line: 246, column: 2, scope: !6401)
!6409 = !DILocation(line: 246, column: 16, scope: !6401)
!6410 = !DILocation(line: 246, column: 23, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6401, file: !308, line: 246, column: 23)
!6412 = !DILocation(line: 246, column: 23, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6411, file: !308, line: 246, column: 23)
!6414 = !DILocation(line: 248, column: 6, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6401, file: !308, line: 248, column: 6)
!6416 = !DILocation(line: 248, column: 6, scope: !6401)
!6417 = !DILocation(line: 249, column: 10, scope: !6415)
!6418 = !DILocation(line: 249, column: 15, scope: !6415)
!6419 = !DILocation(line: 249, column: 3, scope: !6415)
!6420 = !DILocation(line: 250, column: 45, scope: !6401)
!6421 = !DILocation(line: 250, column: 24, scope: !6401)
!6422 = !DILocation(line: 250, column: 9, scope: !6401)
!6423 = !DILocation(line: 250, column: 2, scope: !6401)
!6424 = !DILocation(line: 251, column: 1, scope: !6401)
!6425 = !DILocation(line: 152, column: 54, scope: !5476)
!6426 = !DILocation(line: 154, column: 2, scope: !5476)
!6427 = !DILocation(line: 154, column: 16, scope: !5476)
!6428 = !DILocation(line: 154, column: 36, scope: !5476)
!6429 = !DILocation(line: 154, column: 24, scope: !5476)
!6430 = !DILocation(line: 155, column: 2, scope: !5476)
!6431 = !DILocation(line: 155, column: 9, scope: !5476)
!6432 = !DILocation(line: 155, column: 27, scope: !5476)
!6433 = !DILocation(line: 155, column: 17, scope: !5476)
!6434 = !DILocation(line: 156, column: 2, scope: !5476)
!6435 = !DILocation(line: 156, column: 9, scope: !5476)
!6436 = !DILocation(line: 156, column: 30, scope: !5476)
!6437 = !DILocation(line: 156, column: 18, scope: !5476)
!6438 = !DILocation(line: 157, column: 2, scope: !5476)
!6439 = !DILocation(line: 157, column: 18, scope: !5476)
!6440 = !DILocation(line: 158, column: 2, scope: !5476)
!6441 = !DILocation(line: 158, column: 9, scope: !5476)
!6442 = !DILocation(line: 158, column: 26, scope: !5476)
!6443 = !DILocation(line: 158, column: 15, scope: !5476)
!6444 = !DILocation(line: 159, column: 2, scope: !5476)
!6445 = !DILocation(line: 159, column: 17, scope: !5476)
!6446 = !DILocation(line: 160, column: 2, scope: !5476)
!6447 = !DILocation(line: 160, column: 6, scope: !5476)
!6448 = !DILocation(line: 161, column: 2, scope: !5476)
!6449 = !DILocation(line: 161, column: 36, scope: !5476)
!6450 = !DILocation(line: 161, column: 53, scope: !5476)
!6451 = !DILocation(line: 161, column: 46, scope: !5476)
!6452 = !DILocation(line: 162, column: 2, scope: !5476)
!6453 = !DILocation(line: 162, column: 40, scope: !5476)
!6454 = !DILocation(line: 162, column: 67, scope: !5476)
!6455 = !DILocation(line: 162, column: 49, scope: !5476)
!6456 = !DILocation(line: 164, column: 6, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 164, column: 6)
!6458 = !DILocation(line: 164, column: 15, scope: !6457)
!6459 = !DILocation(line: 164, column: 12, scope: !6457)
!6460 = !DILocation(line: 164, column: 6, scope: !5476)
!6461 = !DILocation(line: 165, column: 3, scope: !6457)
!6462 = !DILocation(line: 167, column: 8, scope: !5535)
!6463 = !DILocation(line: 167, column: 8, scope: !5476)
!6464 = !DILocation(line: 167, column: 6, scope: !5476)
!6465 = !DILocation(line: 169, column: 53, scope: !5476)
!6466 = !DILocation(line: 169, column: 39, scope: !5476)
!6467 = !DILocation(line: 169, column: 61, scope: !5476)
!6468 = !DILocation(line: 169, column: 70, scope: !5476)
!6469 = !DILocation(line: 169, column: 77, scope: !5476)
!6470 = !DILocation(line: 169, column: 2, scope: !5476)
!6471 = !DILocation(line: 171, column: 38, scope: !5476)
!6472 = !DILocation(line: 171, column: 51, scope: !5476)
!6473 = !DILocation(line: 171, column: 18, scope: !5476)
!6474 = !DILocation(line: 171, column: 16, scope: !5476)
!6475 = !DILocation(line: 172, column: 7, scope: !5540)
!6476 = !DILocation(line: 172, column: 6, scope: !5476)
!6477 = !DILocation(line: 173, column: 3, scope: !5538)
!6478 = !DILocation(line: 173, column: 3, scope: !5542)
!6479 = !DILocation(line: 173, column: 3, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 173, column: 3)
!6481 = !DILocation(line: 0, scope: !6480)
!6482 = !DILocation(line: 173, column: 3, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 173, column: 3)
!6484 = !DILocation(line: 173, column: 3, scope: !5543)
!6485 = !DILocation(line: 173, column: 3, scope: !5546)
!6486 = !DILocation(line: 173, column: 3, scope: !5550)
!6487 = !DILocation(line: 173, column: 3, scope: !5549)
!6488 = !DILocation(line: 173, column: 3, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 173, column: 3)
!6490 = !DILocation(line: 173, column: 3, scope: !5548)
!6491 = !DILocation(line: 173, column: 3, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 173, column: 3)
!6493 = !DILocation(line: 173, column: 3, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 173, column: 3)
!6495 = !{i64 2155212285, i64 2155212314, i64 2155212360, i64 2155212418, i64 2155212472, i64 2155212526, i64 2155212581, i64 2155212612, i64 2155212920, i64 2155212926, i64 2155212973, i64 2155212996, i64 2155213022}
!6496 = !DILocation(line: 173, column: 3, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 173, column: 3)
!6498 = !DILocation(line: 173, column: 3, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 173, column: 3)
!6500 = !DILocation(line: 173, column: 3, scope: !5539)
!6501 = !DILocation(line: 175, column: 3, scope: !5539)
!6502 = !DILocation(line: 178, column: 21, scope: !5476)
!6503 = !DILocation(line: 178, column: 2, scope: !5476)
!6504 = !DILocation(line: 179, column: 2, scope: !5476)
!6505 = !DILocation(line: 181, column: 18, scope: !5476)
!6506 = !DILocation(line: 181, column: 33, scope: !5476)
!6507 = !DILocation(line: 181, column: 2, scope: !5476)
!6508 = !DILocation(line: 195, column: 22, scope: !5476)
!6509 = !DILocation(line: 195, column: 2, scope: !5476)
!6510 = !DILocation(line: 196, column: 13, scope: !5476)
!6511 = !DILocation(line: 196, column: 2, scope: !5476)
!6512 = !DILocation(line: 198, column: 9, scope: !5476)
!6513 = !DILocation(line: 198, column: 2, scope: !5476)
!6514 = !DILocation(line: 199, column: 1, scope: !5476)
!6515 = !DISubprogram(name: "folio_redirty_for_writepage", scope: !142, file: !142, line: 378, type: !6516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6516 = !DISubroutineType(types: !6517)
!6517 = !{!929, !2453, !367}
!6518 = distinct !DISubprogram(name: "mapping_set_error", scope: !348, file: !348, line: 225, type: !6519, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6521)
!6519 = !DISubroutineType(types: !6520)
!6520 = !{null, !387, !40}
!6521 = !{!6522, !6523}
!6522 = !DILocalVariable(name: "mapping", arg: 1, scope: !6518, file: !348, line: 225, type: !387)
!6523 = !DILocalVariable(name: "error", arg: 2, scope: !6518, file: !348, line: 225, type: !40)
!6524 = !DILocation(line: 225, column: 60, scope: !6518)
!6525 = !DILocation(line: 225, column: 73, scope: !6518)
!6526 = !DILocation(line: 227, column: 6, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6518, file: !348, line: 227, column: 6)
!6528 = !DILocation(line: 227, column: 6, scope: !6518)
!6529 = !DILocation(line: 228, column: 3, scope: !6527)
!6530 = !DILocation(line: 231, column: 23, scope: !6518)
!6531 = !DILocation(line: 231, column: 32, scope: !6518)
!6532 = !DILocation(line: 231, column: 2, scope: !6518)
!6533 = !DILocation(line: 234, column: 6, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6518, file: !348, line: 234, column: 6)
!6535 = !DILocation(line: 234, column: 15, scope: !6534)
!6536 = !DILocation(line: 234, column: 6, scope: !6518)
!6537 = !DILocation(line: 235, column: 15, scope: !6534)
!6538 = !DILocation(line: 235, column: 24, scope: !6534)
!6539 = !DILocation(line: 235, column: 30, scope: !6534)
!6540 = !DILocation(line: 235, column: 36, scope: !6534)
!6541 = !DILocation(line: 235, column: 46, scope: !6534)
!6542 = !DILocation(line: 235, column: 3, scope: !6534)
!6543 = !DILocation(line: 238, column: 6, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6518, file: !348, line: 238, column: 6)
!6545 = !DILocation(line: 238, column: 12, scope: !6544)
!6546 = !DILocation(line: 238, column: 6, scope: !6518)
!6547 = !DILocation(line: 239, column: 23, scope: !6544)
!6548 = !DILocation(line: 239, column: 32, scope: !6544)
!6549 = !DILocation(line: 239, column: 3, scope: !6544)
!6550 = !DILocation(line: 241, column: 20, scope: !6544)
!6551 = !DILocation(line: 241, column: 29, scope: !6544)
!6552 = !DILocation(line: 241, column: 3, scope: !6544)
!6553 = !DILocation(line: 242, column: 1, scope: !6518)
!6554 = !DISubprogram(name: "folio_mapping", scope: !348, file: !348, line: 414, type: !6555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6555 = !DISubroutineType(types: !6556)
!6556 = !{!387, !367}
!6557 = !DISubprogram(name: "folio_unlock", scope: !348, file: !348, line: 1021, type: !5189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6558 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !308, file: !308, line: 207, type: !6559, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6561)
!6559 = !DISubroutineType(types: !6560)
!6560 = !{!5325, !5325}
!6561 = !{!6562, !6563, !6566}
!6562 = !DILocalVariable(name: "page", arg: 1, scope: !6558, file: !308, line: 207, type: !5325)
!6563 = !DILocalVariable(name: "branch", scope: !6564, file: !308, line: 209, type: !929)
!6564 = distinct !DILexicalBlock(scope: !6565, file: !308, line: 209, column: 7)
!6565 = distinct !DILexicalBlock(scope: !6558, file: !308, line: 209, column: 6)
!6566 = !DILocalVariable(name: "head", scope: !6567, file: !308, line: 225, type: !57)
!6567 = distinct !DILexicalBlock(scope: !6568, file: !308, line: 219, column: 39)
!6568 = distinct !DILexicalBlock(scope: !6558, file: !308, line: 218, column: 6)
!6569 = !DILocation(line: 207, column: 83, scope: !6558)
!6570 = !DILocation(line: 209, column: 7, scope: !6564)
!6571 = !DILocation(line: 209, column: 7, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6573, file: !308, line: 209, column: 7)
!6573 = distinct !DILexicalBlock(scope: !6564, file: !308, line: 209, column: 7)
!6574 = !DILocation(line: 209, column: 7, scope: !6573)
!6575 = !DILocation(line: 209, column: 7, scope: !6565)
!6576 = !DILocation(line: 209, column: 6, scope: !6558)
!6577 = !DILocation(line: 210, column: 10, scope: !6565)
!6578 = !DILocation(line: 210, column: 3, scope: !6565)
!6579 = !DILocation(line: 218, column: 6, scope: !6568)
!6580 = !DILocation(line: 218, column: 49, scope: !6568)
!6581 = !DILocation(line: 219, column: 6, scope: !6568)
!6582 = !DILocation(line: 218, column: 6, scope: !6558)
!6583 = !DILocation(line: 225, column: 3, scope: !6567)
!6584 = !DILocation(line: 225, column: 17, scope: !6567)
!6585 = !DILocation(line: 225, column: 24, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6567, file: !308, line: 225, column: 24)
!6587 = !DILocation(line: 225, column: 24, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6586, file: !308, line: 225, column: 24)
!6589 = !DILocation(line: 227, column: 7, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6567, file: !308, line: 227, column: 7)
!6591 = !DILocation(line: 227, column: 7, scope: !6567)
!6592 = !DILocation(line: 228, column: 33, scope: !6590)
!6593 = !DILocation(line: 228, column: 38, scope: !6590)
!6594 = !DILocation(line: 228, column: 11, scope: !6590)
!6595 = !DILocation(line: 228, column: 4, scope: !6590)
!6596 = !DILocation(line: 229, column: 2, scope: !6568)
!6597 = !DILocation(line: 229, column: 2, scope: !6567)
!6598 = !DILocation(line: 230, column: 9, scope: !6558)
!6599 = !DILocation(line: 230, column: 2, scope: !6558)
!6600 = !DILocation(line: 231, column: 1, scope: !6558)
!6601 = distinct !DISubprogram(name: "const_test_bit", scope: !6337, file: !6337, line: 166, type: !6602, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6604)
!6602 = !DISubroutineType(types: !6603)
!6603 = !{!929, !57, !5322}
!6604 = !{!6605, !6606, !6607, !6608, !6609}
!6605 = !DILocalVariable(name: "nr", arg: 1, scope: !6601, file: !6337, line: 166, type: !57)
!6606 = !DILocalVariable(name: "addr", arg: 2, scope: !6601, file: !6337, line: 166, type: !5322)
!6607 = !DILocalVariable(name: "p", scope: !6601, file: !6337, line: 168, type: !361)
!6608 = !DILocalVariable(name: "mask", scope: !6601, file: !6337, line: 169, type: !57)
!6609 = !DILocalVariable(name: "val", scope: !6601, file: !6337, line: 170, type: !57)
!6610 = !DILocation(line: 166, column: 30, scope: !6601)
!6611 = !DILocation(line: 166, column: 64, scope: !6601)
!6612 = !DILocation(line: 168, column: 2, scope: !6601)
!6613 = !DILocation(line: 168, column: 23, scope: !6601)
!6614 = !DILocation(line: 168, column: 50, scope: !6601)
!6615 = !DILocation(line: 168, column: 57, scope: !6601)
!6616 = !DILocation(line: 168, column: 55, scope: !6601)
!6617 = !DILocation(line: 169, column: 2, scope: !6601)
!6618 = !DILocation(line: 169, column: 16, scope: !6601)
!6619 = !DILocation(line: 169, column: 23, scope: !6601)
!6620 = !DILocation(line: 170, column: 2, scope: !6601)
!6621 = !DILocation(line: 170, column: 16, scope: !6601)
!6622 = !DILocation(line: 170, column: 23, scope: !6601)
!6623 = !DILocation(line: 170, column: 22, scope: !6601)
!6624 = !DILocation(line: 172, column: 12, scope: !6601)
!6625 = !DILocation(line: 172, column: 18, scope: !6601)
!6626 = !DILocation(line: 172, column: 16, scope: !6601)
!6627 = !DILocation(line: 172, column: 10, scope: !6601)
!6628 = !DILocation(line: 172, column: 9, scope: !6601)
!6629 = !DILocation(line: 173, column: 1, scope: !6601)
!6630 = !DILocation(line: 172, column: 2, scope: !6601)
!6631 = distinct !DISubprogram(name: "_test_bit", scope: !6361, file: !6361, line: 139, type: !6602, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6632)
!6632 = !{!6633, !6634}
!6633 = !DILocalVariable(name: "nr", arg: 1, scope: !6631, file: !6361, line: 139, type: !57)
!6634 = !DILocalVariable(name: "addr", arg: 2, scope: !6631, file: !6361, line: 139, type: !5322)
!6635 = !DILocation(line: 139, column: 25, scope: !6631)
!6636 = !DILocation(line: 139, column: 59, scope: !6631)
!6637 = !DILocation(line: 141, column: 25, scope: !6631)
!6638 = !DILocation(line: 141, column: 32, scope: !6631)
!6639 = !DILocation(line: 141, column: 30, scope: !6631)
!6640 = !DILocation(line: 141, column: 2, scope: !6631)
!6641 = !DILocation(line: 142, column: 23, scope: !6631)
!6642 = !DILocation(line: 142, column: 27, scope: !6631)
!6643 = !DILocation(line: 142, column: 9, scope: !6631)
!6644 = !DILocation(line: 142, column: 2, scope: !6631)
!6645 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6123, file: !6123, line: 66, type: !6124, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6646)
!6646 = !{!6647, !6648}
!6647 = !DILocalVariable(name: "v", arg: 1, scope: !6645, file: !6123, line: 66, type: !6126)
!6648 = !DILocalVariable(name: "size", arg: 2, scope: !6645, file: !6123, line: 66, type: !53)
!6649 = !DILocation(line: 66, column: 73, scope: !6645)
!6650 = !DILocation(line: 66, column: 83, scope: !6645)
!6651 = !DILocation(line: 68, column: 19, scope: !6645)
!6652 = !DILocation(line: 68, column: 22, scope: !6645)
!6653 = !DILocation(line: 68, column: 2, scope: !6645)
!6654 = !DILocation(line: 69, column: 2, scope: !6645)
!6655 = !DILocation(line: 70, column: 1, scope: !6645)
!6656 = distinct !DISubprogram(name: "arch_test_bit", scope: !6390, file: !6390, line: 237, type: !6602, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6657)
!6657 = !{!6658, !6659}
!6658 = !DILocalVariable(name: "nr", arg: 1, scope: !6656, file: !6390, line: 237, type: !57)
!6659 = !DILocalVariable(name: "addr", arg: 2, scope: !6656, file: !6390, line: 237, type: !5322)
!6660 = !DILocation(line: 237, column: 29, scope: !6656)
!6661 = !DILocation(line: 237, column: 63, scope: !6656)
!6662 = !DILocation(line: 239, column: 30, scope: !6656)
!6663 = !DILocation(line: 239, column: 9, scope: !6656)
!6664 = !DILocation(line: 239, column: 54, scope: !6656)
!6665 = !DILocation(line: 239, column: 58, scope: !6656)
!6666 = !DILocation(line: 239, column: 36, scope: !6656)
!6667 = !DILocation(line: 240, column: 26, scope: !6656)
!6668 = !DILocation(line: 240, column: 30, scope: !6656)
!6669 = !DILocation(line: 240, column: 8, scope: !6656)
!6670 = !DILocation(line: 239, column: 2, scope: !6656)
!6671 = distinct !DISubprogram(name: "kasan_check_read", scope: !6151, file: !6151, line: 40, type: !6152, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6672)
!6672 = !{!6673, !6674}
!6673 = !DILocalVariable(name: "p", arg: 1, scope: !6671, file: !6151, line: 40, type: !6126)
!6674 = !DILocalVariable(name: "size", arg: 2, scope: !6671, file: !6151, line: 40, type: !7)
!6675 = !DILocation(line: 40, column: 58, scope: !6671)
!6676 = !DILocation(line: 40, column: 74, scope: !6671)
!6677 = !DILocation(line: 42, column: 2, scope: !6671)
!6678 = distinct !DISubprogram(name: "constant_test_bit", scope: !6390, file: !6390, line: 204, type: !6679, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6681)
!6679 = !DISubroutineType(types: !6680)
!6680 = !{!929, !366, !5322}
!6681 = !{!6682, !6683}
!6682 = !DILocalVariable(name: "nr", arg: 1, scope: !6678, file: !6390, line: 204, type: !366)
!6683 = !DILocalVariable(name: "addr", arg: 2, scope: !6678, file: !6390, line: 204, type: !5322)
!6684 = !DILocation(line: 204, column: 52, scope: !6678)
!6685 = !DILocation(line: 204, column: 86, scope: !6678)
!6686 = !DILocation(line: 206, column: 19, scope: !6678)
!6687 = !DILocation(line: 206, column: 22, scope: !6678)
!6688 = !DILocation(line: 206, column: 15, scope: !6678)
!6689 = !DILocation(line: 207, column: 4, scope: !6678)
!6690 = !DILocation(line: 207, column: 9, scope: !6678)
!6691 = !DILocation(line: 207, column: 12, scope: !6678)
!6692 = !DILocation(line: 206, column: 44, scope: !6678)
!6693 = !DILocation(line: 207, column: 37, scope: !6678)
!6694 = !DILocation(line: 206, column: 2, scope: !6678)
!6695 = distinct !DISubprogram(name: "variable_test_bit", scope: !6390, file: !6390, line: 224, type: !6679, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6696)
!6696 = !{!6697, !6698, !6699}
!6697 = !DILocalVariable(name: "nr", arg: 1, scope: !6695, file: !6390, line: 224, type: !366)
!6698 = !DILocalVariable(name: "addr", arg: 2, scope: !6695, file: !6390, line: 224, type: !5322)
!6699 = !DILocalVariable(name: "oldbit", scope: !6695, file: !6390, line: 226, type: !929)
!6700 = !DILocation(line: 224, column: 52, scope: !6695)
!6701 = !DILocation(line: 224, column: 86, scope: !6695)
!6702 = !DILocation(line: 226, column: 2, scope: !6695)
!6703 = !DILocation(line: 226, column: 7, scope: !6695)
!6704 = !DILocation(line: 231, column: 33, scope: !6695)
!6705 = !DILocation(line: 231, column: 46, scope: !6695)
!6706 = !DILocation(line: 228, column: 2, scope: !6695)
!6707 = !{i64 2148349933, i64 2148350007}
!6708 = !DILocation(line: 233, column: 9, scope: !6695)
!6709 = !DILocation(line: 234, column: 1, scope: !6695)
!6710 = !DILocation(line: 233, column: 2, scope: !6695)
!6711 = distinct !DISubprogram(name: "folio_inode", scope: !348, file: !348, line: 471, type: !6712, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6714)
!6712 = !DISubroutineType(types: !6713)
!6713 = !{!391, !367}
!6714 = !{!6715}
!6715 = !DILocalVariable(name: "folio", arg: 1, scope: !6711, file: !348, line: 471, type: !367)
!6716 = !DILocation(line: 471, column: 55, scope: !6711)
!6717 = !DILocation(line: 473, column: 9, scope: !6711)
!6718 = !DILocation(line: 473, column: 16, scope: !6711)
!6719 = !DILocation(line: 473, column: 25, scope: !6711)
!6720 = !DILocation(line: 473, column: 2, scope: !6711)
!6721 = distinct !DISubprogram(name: "folio_pos", scope: !348, file: !348, line: 950, type: !6722, scopeLine: 951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6724)
!6722 = !DISubroutineType(types: !6723)
!6723 = !{!59, !367}
!6724 = !{!6725}
!6725 = !DILocalVariable(name: "folio", arg: 1, scope: !6721, file: !348, line: 950, type: !367)
!6726 = !DILocation(line: 950, column: 46, scope: !6721)
!6727 = !DILocation(line: 952, column: 22, scope: !6721)
!6728 = !DILocation(line: 952, column: 29, scope: !6721)
!6729 = !DILocation(line: 952, column: 9, scope: !6721)
!6730 = !DILocation(line: 952, column: 2, scope: !6721)
!6731 = distinct !DISubprogram(name: "i_size_read", scope: !218, file: !218, line: 893, type: !6732, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6734)
!6732 = !DISubroutineType(types: !6733)
!6733 = !{!59, !4875}
!6734 = !{!6735}
!6735 = !DILocalVariable(name: "inode", arg: 1, scope: !6731, file: !218, line: 893, type: !4875)
!6736 = !DILocation(line: 893, column: 54, scope: !6731)
!6737 = !DILocation(line: 912, column: 9, scope: !6731)
!6738 = !DILocation(line: 912, column: 16, scope: !6731)
!6739 = !DILocation(line: 912, column: 2, scope: !6731)
!6740 = distinct !DISubprogram(name: "folio_size", scope: !1403, file: !1403, line: 2125, type: !6741, scopeLine: 2126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6743)
!6741 = !DISubroutineType(types: !6742)
!6742 = !{!53, !367}
!6743 = !{!6744}
!6744 = !DILocalVariable(name: "folio", arg: 1, scope: !6740, file: !1403, line: 2125, type: !367)
!6745 = !DILocation(line: 2125, column: 47, scope: !6740)
!6746 = !DILocation(line: 2127, column: 34, scope: !6740)
!6747 = !DILocation(line: 2127, column: 22, scope: !6740)
!6748 = !DILocation(line: 2127, column: 19, scope: !6740)
!6749 = !DILocation(line: 2127, column: 2, scope: !6740)
!6750 = distinct !DISubprogram(name: "V9FS_I", scope: !5329, file: !5329, line: 143, type: !6751, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6753)
!6751 = !DISubroutineType(types: !6752)
!6752 = !{!5327, !4875}
!6753 = !{!6754, !6755}
!6754 = !DILocalVariable(name: "inode", arg: 1, scope: !6750, file: !5329, line: 143, type: !4875)
!6755 = !DILocalVariable(name: "__mptr", scope: !6756, file: !5329, line: 145, type: !38)
!6756 = distinct !DILexicalBlock(scope: !6750, file: !5329, line: 145, column: 9)
!6757 = !DILocation(line: 143, column: 61, scope: !6750)
!6758 = !DILocation(line: 145, column: 9, scope: !6756)
!6759 = !DILocation(line: 145, column: 9, scope: !6750)
!6760 = !DILocation(line: 145, column: 2, scope: !6750)
!6761 = distinct !DISubprogram(name: "v9fs_inode_cookie", scope: !5329, file: !5329, line: 148, type: !6762, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6764)
!6762 = !DISubroutineType(types: !6763)
!6763 = !{!5532, !5327}
!6764 = !{!6765}
!6765 = !DILocalVariable(name: "v9inode", arg: 1, scope: !6761, file: !5329, line: 148, type: !5327)
!6766 = !DILocation(line: 148, column: 75, scope: !6761)
!6767 = !DILocation(line: 153, column: 2, scope: !6761)
!6768 = !DISubprogram(name: "v9fs_fid_find_inode", scope: !6769, file: !6769, line: 12, type: !6770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6769 = !DIFile(filename: "fs/9p/fid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f18f8acac323ff9afd8e62a50848073")
!6770 = !DISubroutineType(types: !6771)
!6771 = !{!5485, !391, !929, !397, !929}
!6772 = !DISubprogram(name: "__warn_printk", scope: !2231, file: !2231, line: 93, type: !6773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6773 = !DISubroutineType(types: !6774)
!6774 = !{null, !34, null}
!6775 = distinct !DISubprogram(name: "folio_wait_fscache", scope: !254, file: !254, line: 69, type: !5189, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6776)
!6776 = !{!6777}
!6777 = !DILocalVariable(name: "folio", arg: 1, scope: !6775, file: !254, line: 69, type: !367)
!6778 = !DILocation(line: 69, column: 53, scope: !6775)
!6779 = !DILocation(line: 71, column: 23, scope: !6775)
!6780 = !DILocation(line: 71, column: 2, scope: !6775)
!6781 = !DILocation(line: 72, column: 1, scope: !6775)
!6782 = !DISubprogram(name: "__folio_start_writeback", scope: !308, file: !308, line: 776, type: !6783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6783 = !DISubroutineType(types: !6784)
!6784 = !{!929, !367, !929}
!6785 = !DISubprogram(name: "p9_client_write", scope: !272, file: !272, line: 209, type: !6334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6786 = !DISubprogram(name: "folio_end_writeback", scope: !348, file: !348, line: 1168, type: !5189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6787 = distinct !DISubprogram(name: "page_offset", scope: !348, file: !348, line: 936, type: !6788, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6790)
!6788 = !DISubroutineType(types: !6789)
!6789 = !{!59, !1300}
!6790 = !{!6791}
!6791 = !DILocalVariable(name: "page", arg: 1, scope: !6787, file: !348, line: 936, type: !1300)
!6792 = !DILocation(line: 936, column: 47, scope: !6787)
!6793 = !DILocation(line: 938, column: 18, scope: !6787)
!6794 = !DILocation(line: 938, column: 24, scope: !6787)
!6795 = !DILocation(line: 938, column: 31, scope: !6787)
!6796 = !DILocation(line: 938, column: 2, scope: !6787)
!6797 = distinct !DISubprogram(name: "folio_order", scope: !1403, file: !1403, line: 1072, type: !6798, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6800)
!6798 = !DISubroutineType(types: !6799)
!6799 = !{!7, !367}
!6800 = !{!6801}
!6801 = !DILocalVariable(name: "folio", arg: 1, scope: !6797, file: !1403, line: 1072, type: !367)
!6802 = !DILocation(line: 1072, column: 54, scope: !6797)
!6803 = !DILocation(line: 1074, column: 24, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6797, file: !1403, line: 1074, column: 6)
!6805 = !DILocation(line: 1074, column: 7, scope: !6804)
!6806 = !DILocation(line: 1074, column: 6, scope: !6797)
!6807 = !DILocation(line: 1075, column: 3, scope: !6804)
!6808 = !DILocation(line: 1076, column: 9, scope: !6797)
!6809 = !DILocation(line: 1076, column: 16, scope: !6797)
!6810 = !DILocation(line: 1076, column: 25, scope: !6797)
!6811 = !DILocation(line: 1076, column: 2, scope: !6797)
!6812 = !DILocation(line: 1077, column: 1, scope: !6797)
!6813 = distinct !DISubprogram(name: "folio_test_large", scope: !308, file: !308, line: 810, type: !6814, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6816)
!6814 = !DISubroutineType(types: !6815)
!6815 = !{!929, !367}
!6816 = !{!6817}
!6817 = !DILocalVariable(name: "folio", arg: 1, scope: !6813, file: !308, line: 810, type: !367)
!6818 = !DILocation(line: 810, column: 51, scope: !6813)
!6819 = !DILocation(line: 812, column: 25, scope: !6813)
!6820 = !DILocation(line: 812, column: 9, scope: !6813)
!6821 = !DILocation(line: 812, column: 2, scope: !6813)
!6822 = distinct !DISubprogram(name: "folio_test_head", scope: !308, file: !308, line: 789, type: !6814, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6823)
!6823 = !{!6824}
!6824 = !DILocalVariable(name: "folio", arg: 1, scope: !6822, file: !308, line: 789, type: !367)
!6825 = !DILocation(line: 789, column: 59, scope: !6822)
!6826 = !DILocation(line: 791, column: 9, scope: !6822)
!6827 = !DILocation(line: 791, column: 2, scope: !6822)
!6828 = distinct !DISubprogram(name: "folio_flags", scope: !308, file: !308, line: 308, type: !6829, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6831)
!6829 = !DISubroutineType(types: !6830)
!6830 = !{!363, !367, !7}
!6831 = !{!6832, !6833, !6834}
!6832 = !DILocalVariable(name: "folio", arg: 1, scope: !6828, file: !308, line: 308, type: !367)
!6833 = !DILocalVariable(name: "n", arg: 2, scope: !6828, file: !308, line: 308, type: !7)
!6834 = !DILocalVariable(name: "page", scope: !6828, file: !308, line: 310, type: !1300)
!6835 = !DILocation(line: 308, column: 49, scope: !6828)
!6836 = !DILocation(line: 308, column: 65, scope: !6828)
!6837 = !DILocation(line: 310, column: 2, scope: !6828)
!6838 = !DILocation(line: 310, column: 15, scope: !6828)
!6839 = !DILocation(line: 310, column: 23, scope: !6828)
!6840 = !DILocation(line: 310, column: 30, scope: !6828)
!6841 = !DILocation(line: 314, column: 10, scope: !6828)
!6842 = !DILocation(line: 314, column: 15, scope: !6828)
!6843 = !DILocation(line: 314, column: 18, scope: !6828)
!6844 = !DILocation(line: 315, column: 1, scope: !6828)
!6845 = !DILocation(line: 314, column: 2, scope: !6828)
!6846 = !DISubprogram(name: "folio_wait_private_2", scope: !348, file: !348, line: 1198, type: !5189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6847 = !DISubprogram(name: "__filemap_set_wb_err", scope: !348, file: !348, line: 57, type: !6519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6848 = !DISubprogram(name: "errseq_set", scope: !1921, file: !1921, line: 10, type: !6849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6849 = !DISubroutineType(types: !6850)
!6850 = !{!1920, !6851, !40}
!6851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!6852 = distinct !DISubprogram(name: "set_bit", scope: !6853, file: !6853, line: 26, type: !6854, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6856)
!6853 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6854 = !DISubroutineType(types: !6855)
!6855 = !{null, !366, !6340}
!6856 = !{!6857, !6858}
!6857 = !DILocalVariable(name: "nr", arg: 1, scope: !6852, file: !6853, line: 26, type: !366)
!6858 = !DILocalVariable(name: "addr", arg: 2, scope: !6852, file: !6853, line: 26, type: !6340)
!6859 = !DILocation(line: 26, column: 42, scope: !6852)
!6860 = !DILocation(line: 26, column: 70, scope: !6852)
!6861 = !DILocation(line: 28, column: 26, scope: !6852)
!6862 = !DILocation(line: 28, column: 33, scope: !6852)
!6863 = !DILocation(line: 28, column: 31, scope: !6852)
!6864 = !DILocation(line: 28, column: 2, scope: !6852)
!6865 = !DILocation(line: 29, column: 15, scope: !6852)
!6866 = !DILocation(line: 29, column: 19, scope: !6852)
!6867 = !DILocation(line: 29, column: 2, scope: !6852)
!6868 = !DILocation(line: 30, column: 1, scope: !6852)
!6869 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6123, file: !6123, line: 80, type: !6124, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6870)
!6870 = !{!6871, !6872}
!6871 = !DILocalVariable(name: "v", arg: 1, scope: !6869, file: !6123, line: 80, type: !6126)
!6872 = !DILocalVariable(name: "size", arg: 2, scope: !6869, file: !6123, line: 80, type: !53)
!6873 = !DILocation(line: 80, column: 74, scope: !6869)
!6874 = !DILocation(line: 80, column: 84, scope: !6869)
!6875 = !DILocation(line: 82, column: 20, scope: !6869)
!6876 = !DILocation(line: 82, column: 23, scope: !6869)
!6877 = !DILocation(line: 82, column: 2, scope: !6869)
!6878 = !DILocation(line: 83, column: 2, scope: !6869)
!6879 = !DILocation(line: 84, column: 1, scope: !6869)
!6880 = distinct !DISubprogram(name: "arch_set_bit", scope: !6390, file: !6390, line: 52, type: !6854, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6881)
!6881 = !{!6882, !6883}
!6882 = !DILocalVariable(name: "nr", arg: 1, scope: !6880, file: !6390, line: 52, type: !366)
!6883 = !DILocalVariable(name: "addr", arg: 2, scope: !6880, file: !6390, line: 52, type: !6340)
!6884 = !DILocation(line: 52, column: 19, scope: !6880)
!6885 = !DILocation(line: 52, column: 47, scope: !6880)
!6886 = !DILocation(line: 54, column: 27, scope: !6887)
!6887 = distinct !DILexicalBlock(scope: !6880, file: !6390, line: 54, column: 6)
!6888 = !DILocation(line: 54, column: 6, scope: !6887)
!6889 = !DILocation(line: 54, column: 6, scope: !6880)
!6890 = !DILocation(line: 56, column: 6, scope: !6891)
!6891 = distinct !DILexicalBlock(scope: !6887, file: !6390, line: 54, column: 32)
!6892 = !DILocation(line: 57, column: 12, scope: !6891)
!6893 = !DILocation(line: 55, column: 3, scope: !6891)
!6894 = !{i64 2148336321, i64 2148336360, i64 2148336381, i64 2148336418, i64 2148336441, i64 2148336311}
!6895 = !DILocation(line: 59, column: 2, scope: !6891)
!6896 = !DILocation(line: 61, column: 8, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6887, file: !6390, line: 59, column: 9)
!6898 = !DILocation(line: 61, column: 32, scope: !6897)
!6899 = !DILocation(line: 60, column: 3, scope: !6897)
!6900 = !{i64 2148336606, i64 2148336645, i64 2148336666, i64 2148336703, i64 2148336726, i64 2148336596}
!6901 = !DILocation(line: 63, column: 1, scope: !6880)
!6902 = !DISubprogram(name: "netfs_write_begin", scope: !254, file: !254, line: 290, type: !6903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6903 = !DISubroutineType(types: !6904)
!6904 = !{!40, !6905, !705, !387, !59, !7, !5453, !1847}
!6905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!6906 = distinct !DISubprogram(name: "folio_test_uptodate", scope: !308, file: !308, line: 725, type: !6814, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6907)
!6907 = !{!6908, !6909}
!6908 = !DILocalVariable(name: "folio", arg: 1, scope: !6906, file: !308, line: 725, type: !367)
!6909 = !DILocalVariable(name: "ret", scope: !6906, file: !308, line: 727, type: !929)
!6910 = !DILocation(line: 725, column: 54, scope: !6906)
!6911 = !DILocation(line: 727, column: 2, scope: !6906)
!6912 = !DILocation(line: 727, column: 7, scope: !6906)
!6913 = !DILocation(line: 727, column: 13, scope: !6906)
!6914 = !DILocation(line: 736, column: 6, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6906, file: !308, line: 736, column: 6)
!6916 = !DILocation(line: 736, column: 6, scope: !6906)
!6917 = !DILocation(line: 737, column: 3, scope: !6915)
!6918 = !DILocation(line: 737, column: 3, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6915, file: !308, line: 737, column: 3)
!6920 = !DILocation(line: 737, column: 3, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6919, file: !308, line: 737, column: 3)
!6922 = !DILocation(line: 737, column: 3, scope: !6923)
!6923 = distinct !DILexicalBlock(scope: !6919, file: !308, line: 737, column: 3)
!6924 = !DILocation(line: 737, column: 3, scope: !6925)
!6925 = distinct !DILexicalBlock(scope: !6923, file: !308, line: 737, column: 3)
!6926 = !{i64 2151006534}
!6927 = !DILocation(line: 739, column: 9, scope: !6906)
!6928 = !DILocation(line: 740, column: 1, scope: !6906)
!6929 = !DILocation(line: 739, column: 2, scope: !6906)
!6930 = distinct !DISubprogram(name: "folio_mark_uptodate", scope: !308, file: !308, line: 753, type: !5189, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6931)
!6931 = !{!6932}
!6932 = !DILocalVariable(name: "folio", arg: 1, scope: !6930, file: !308, line: 753, type: !367)
!6933 = !DILocation(line: 753, column: 63, scope: !6930)
!6934 = !DILocation(line: 760, column: 2, scope: !6930)
!6935 = !DILocation(line: 760, column: 2, scope: !6936)
!6936 = distinct !DILexicalBlock(scope: !6930, file: !308, line: 760, column: 2)
!6937 = !DILocation(line: 760, column: 2, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6936, file: !308, line: 760, column: 2)
!6939 = !{i64 2151008019}
!6940 = !DILocation(line: 761, column: 35, scope: !6930)
!6941 = !DILocation(line: 761, column: 23, scope: !6930)
!6942 = !DILocation(line: 761, column: 2, scope: !6930)
!6943 = !DILocation(line: 762, column: 1, scope: !6930)
!6944 = !DISubprogram(name: "inode_add_bytes", scope: !218, file: !218, line: 3099, type: !6945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6945 = !DISubroutineType(types: !6946)
!6946 = !{null, !391, !59}
!6947 = distinct !DISubprogram(name: "i_size_write", scope: !218, file: !218, line: 921, type: !6945, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6948)
!6948 = !{!6949, !6950}
!6949 = !DILocalVariable(name: "inode", arg: 1, scope: !6947, file: !218, line: 921, type: !391)
!6950 = !DILocalVariable(name: "i_size", arg: 2, scope: !6947, file: !218, line: 921, type: !59)
!6951 = !DILocation(line: 921, column: 47, scope: !6947)
!6952 = !DILocation(line: 921, column: 61, scope: !6947)
!6953 = !DILocation(line: 934, column: 18, scope: !6947)
!6954 = !DILocation(line: 934, column: 2, scope: !6947)
!6955 = !DILocation(line: 934, column: 9, scope: !6947)
!6956 = !DILocation(line: 934, column: 16, scope: !6947)
!6957 = !DILocation(line: 936, column: 1, scope: !6947)
!6958 = !DISubprogram(name: "folio_mark_dirty", scope: !1403, file: !1403, line: 2480, type: !6814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6959 = distinct !DISubprogram(name: "folio_put", scope: !1403, file: !1403, line: 1478, type: !5189, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6960)
!6960 = !{!6961}
!6961 = !DILocalVariable(name: "folio", arg: 1, scope: !6959, file: !1403, line: 1478, type: !367)
!6962 = !DILocation(line: 1478, column: 44, scope: !6959)
!6963 = !DILocation(line: 1480, column: 25, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6959, file: !1403, line: 1480, column: 6)
!6965 = !DILocation(line: 1480, column: 6, scope: !6964)
!6966 = !DILocation(line: 1480, column: 6, scope: !6959)
!6967 = !DILocation(line: 1481, column: 15, scope: !6964)
!6968 = !DILocation(line: 1481, column: 3, scope: !6964)
!6969 = !DILocation(line: 1482, column: 1, scope: !6959)
!6970 = distinct !DISubprogram(name: "folio_put_testzero", scope: !1403, file: !1403, line: 1103, type: !5198, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6971)
!6971 = !{!6972}
!6972 = !DILocalVariable(name: "folio", arg: 1, scope: !6970, file: !1403, line: 1103, type: !367)
!6973 = !DILocation(line: 1103, column: 52, scope: !6970)
!6974 = !DILocation(line: 1105, column: 28, scope: !6970)
!6975 = !DILocation(line: 1105, column: 35, scope: !6970)
!6976 = !DILocation(line: 1105, column: 9, scope: !6970)
!6977 = !DILocation(line: 1105, column: 2, scope: !6970)
!6978 = !DISubprogram(name: "__folio_put", scope: !1403, file: !1403, line: 1283, type: !5189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6979 = distinct !DISubprogram(name: "put_page_testzero", scope: !1403, file: !1403, line: 1097, type: !6980, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6982)
!6980 = !DISubroutineType(types: !6981)
!6981 = !{!40, !1300}
!6982 = !{!6983}
!6983 = !DILocalVariable(name: "page", arg: 1, scope: !6979, file: !1403, line: 1097, type: !1300)
!6984 = !DILocation(line: 1097, column: 50, scope: !6979)
!6985 = !DILocation(line: 1100, column: 31, scope: !6979)
!6986 = !DILocation(line: 1100, column: 9, scope: !6979)
!6987 = !DILocation(line: 1100, column: 2, scope: !6979)
!6988 = distinct !DISubprogram(name: "page_ref_dec_and_test", scope: !6989, file: !6989, line: 208, type: !6980, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6990)
!6989 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!6990 = !{!6991, !6992}
!6991 = !DILocalVariable(name: "page", arg: 1, scope: !6988, file: !6989, line: 208, type: !1300)
!6992 = !DILocalVariable(name: "ret", scope: !6988, file: !6989, line: 210, type: !40)
!6993 = !DILocation(line: 208, column: 54, scope: !6988)
!6994 = !DILocation(line: 210, column: 2, scope: !6988)
!6995 = !DILocation(line: 210, column: 6, scope: !6988)
!6996 = !DILocation(line: 210, column: 33, scope: !6988)
!6997 = !DILocation(line: 210, column: 39, scope: !6988)
!6998 = !DILocation(line: 210, column: 12, scope: !6988)
!6999 = !DILocation(line: 214, column: 9, scope: !6988)
!7000 = !DILocation(line: 215, column: 1, scope: !6988)
!7001 = !DILocation(line: 214, column: 2, scope: !6988)
!7002 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !6104, file: !6104, line: 1372, type: !7003, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7005)
!7003 = !DISubroutineType(types: !7004)
!7004 = !{!929, !6107}
!7005 = !{!7006}
!7006 = !DILocalVariable(name: "v", arg: 1, scope: !7002, file: !6104, line: 1372, type: !6107)
!7007 = !DILocation(line: 1372, column: 31, scope: !7002)
!7008 = !DILocation(line: 1374, column: 2, scope: !7002)
!7009 = !DILocation(line: 1374, column: 2, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !7002, file: !6104, line: 1374, column: 2)
!7011 = !DILocation(line: 1375, column: 31, scope: !7002)
!7012 = !DILocation(line: 1375, column: 2, scope: !7002)
!7013 = !DILocation(line: 1376, column: 33, scope: !7002)
!7014 = !DILocation(line: 1376, column: 9, scope: !7002)
!7015 = !DILocation(line: 1376, column: 2, scope: !7002)
!7016 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6140, file: !6140, line: 2254, type: !7003, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7017)
!7017 = !{!7018}
!7018 = !DILocalVariable(name: "v", arg: 1, scope: !7016, file: !6140, line: 2254, type: !6107)
!7019 = !DILocation(line: 2254, column: 35, scope: !7016)
!7020 = !DILocation(line: 2257, column: 34, scope: !7016)
!7021 = !DILocation(line: 2257, column: 9, scope: !7016)
!7022 = !DILocation(line: 2257, column: 2, scope: !7016)
!7023 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6173, file: !6173, line: 65, type: !7003, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7024)
!7024 = !{!7025, !7026}
!7025 = !DILocalVariable(name: "v", arg: 1, scope: !7023, file: !6173, line: 65, type: !6107)
!7026 = !DILocalVariable(name: "c", scope: !7027, file: !6173, line: 67, type: !929)
!7027 = distinct !DILexicalBlock(scope: !7023, file: !6173, line: 67, column: 9)
!7028 = !DILocation(line: 65, column: 64, scope: !7023)
!7029 = !DILocation(line: 67, column: 9, scope: !7027)
!7030 = !{i64 2148791763, i64 2148791802, i64 2148791823, i64 2148791860, i64 2148791883, i64 2148791892, i64 2148791966}
!7031 = !DILocation(line: 67, column: 9, scope: !7023)
!7032 = !DILocation(line: 67, column: 2, scope: !7023)
!7033 = distinct !DISubprogram(name: "folio_test_private", scope: !308, file: !308, line: 524, type: !6814, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7034)
!7034 = !{!7035}
!7035 = !DILocalVariable(name: "folio", arg: 1, scope: !7033, file: !308, line: 524, type: !367)
!7036 = !DILocation(line: 524, column: 1, scope: !7033)
!7037 = distinct !DISubprogram(name: "iov_iter_rw", scope: !1256, file: !1256, line: 139, type: !7038, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7042)
!7038 = !DISubroutineType(types: !7039)
!7039 = !{!105, !7040}
!7040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7041, size: 64)
!7041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!7042 = !{!7043}
!7043 = !DILocalVariable(name: "i", arg: 1, scope: !7037, file: !1256, line: 139, type: !7040)
!7044 = !DILocation(line: 139, column: 64, scope: !7037)
!7045 = !DILocation(line: 141, column: 9, scope: !7037)
!7046 = !DILocation(line: 141, column: 12, scope: !7037)
!7047 = !DILocation(line: 141, column: 2, scope: !7037)
!7048 = distinct !DISubprogram(name: "file_inode", scope: !218, file: !218, line: 1073, type: !7049, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7051)
!7049 = !DISubroutineType(types: !7050)
!7050 = !{!391, !1891}
!7051 = !{!7052}
!7052 = !DILocalVariable(name: "f", arg: 1, scope: !7048, file: !218, line: 1073, type: !1891)
!7053 = !DILocation(line: 1073, column: 59, scope: !7048)
!7054 = !DILocation(line: 1075, column: 9, scope: !7048)
!7055 = !DILocation(line: 1075, column: 12, scope: !7048)
!7056 = !DILocation(line: 1075, column: 2, scope: !7048)
!7057 = !DISubprogram(name: "folio_clear_dirty_for_io", scope: !348, file: !348, line: 1185, type: !6814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
