; ModuleID = 'fs/notify/fsnotify.c'
source_filename = "fs/notify/fsnotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___fsnotify_inode_delete: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __fsnotify_inode_delete ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___fsnotify_parent: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __fsnotify_parent ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fsnotify: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fsnotify ; .previous"
module asm ".section\09\22.initcall1.init..kmod_fsnotify__308_615_fsnotify_init\22, \22a\22\09\09"
module asm "__initcall__kmod_fsnotify__308_615_fsnotify_init1:\09\09\09"
module asm ".long\09__initstub__kmod_fsnotify__308_615_fsnotify_init1 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.srcu_struct = type { i32, ptr, %struct.lockdep_map, ptr }
%struct.lockdep_map = type {}
%struct.static_call_key = type { ptr, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.16 = type { ptr }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.23, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.24, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.23 = type { %struct.callback_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_head = type { ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.anon.20 = type { %struct.spinlock, i32 }
%struct.name_snapshot = type { %struct.qstr, [32 x i8] }
%struct.path = type { ptr, ptr }
%struct.fs_error_report = type { i32, ptr, ptr }
%struct.fsnotify_iter_info = type { [5 x ptr], ptr, i32, i32 }
%struct.fsnotify_mark_connector = type { %struct.spinlock, i16, i16, %struct.__kernel_fsid_t, %union.anon.26, %struct.hlist_head }
%struct.__kernel_fsid_t = type { [2 x i32] }
%union.anon.26 = type { ptr }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable___fsnotify_inode_delete297 = internal global ptr @__fsnotify_inode_delete, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"fs/notify/fsnotify.c\00", align 1, !dbg !4486
@__UNIQUE_ID___addressable___fsnotify_parent299 = internal global ptr @__fsnotify_parent, section ".discard.addressable", align 8, !dbg !4491
@fsnotify_mark_srcu = external dso_local global %struct.srcu_struct, align 8
@__UNIQUE_ID___addressable_fsnotify306 = internal global ptr @fsnotify, section ".discard.addressable", align 8, !dbg !4493
@__UNIQUE_ID___addressable___initstub__kmod_fsnotify__308_615_fsnotify_init1309 = internal global ptr @__initstub__kmod_fsnotify__308_615_fsnotify_init1, section ".discard.addressable", align 8, !dbg !4495
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched181 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !4497
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched37 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4500
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1, !dbg !4504
@.str.2 = private unnamed_addr constant [32 x i8] c"initializing fsnotify_mark_srcu\00", align 1, !dbg !4507
@.str.3 = private unnamed_addr constant [24 x i8] c"fsnotify_mark_connector\00", align 1, !dbg !4509
@fsnotify_mark_connector_cachep = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable___fsnotify_inode_delete297, ptr @__UNIQUE_ID___addressable___fsnotify_parent299, ptr @__UNIQUE_ID___addressable_fsnotify306, ptr @__UNIQUE_ID___addressable___initstub__kmod_fsnotify__308_615_fsnotify_init1309, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched181, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched37], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__fsnotify_inode_delete(ptr noundef %inode) #0 align 16 !dbg !4523 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4525, metadata !DIExpression()), !dbg !4526
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4527
  call void @fsnotify_clear_marks_by_inode(ptr noundef %0) #10, !dbg !4528
  ret void, !dbg !4529
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_clear_marks_by_inode(ptr noundef %inode) #2 align 16 !dbg !4530 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4533, metadata !DIExpression()), !dbg !4534
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4535
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 46, !dbg !4536
  call void @fsnotify_destroy_marks(ptr noundef %i_fsnotify_marks) #10, !dbg !4537
  ret void, !dbg !4538
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__fsnotify_vfsmount_delete(ptr noundef %mnt) #0 align 16 !dbg !4539 {
entry:
  %mnt.addr = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4543, metadata !DIExpression()), !dbg !4544
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4545
  call void @fsnotify_clear_marks_by_mount(ptr noundef %0) #10, !dbg !4546
  ret void, !dbg !4547
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_clear_marks_by_mount(ptr noundef %mnt) #2 align 16 !dbg !4548 {
entry:
  %mnt.addr = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4550, metadata !DIExpression()), !dbg !4551
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4552
  %call = call ptr @real_mount(ptr noundef %0) #10, !dbg !4553
  %mnt_fsnotify_marks = getelementptr inbounds %struct.mount, ptr %call, i32 0, i32 20, !dbg !4554
  call void @fsnotify_destroy_marks(ptr noundef %mnt_fsnotify_marks) #10, !dbg !4555
  ret void, !dbg !4556
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fsnotify_sb_delete(ptr noundef %sb) #0 align 16 !dbg !4557 {
entry:
  %sb.addr = alloca ptr, align 8
  %__wq_head = alloca ptr, align 8
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4559, metadata !DIExpression()), !dbg !4592
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4593
  call void @fsnotify_unmount_inodes(ptr noundef %0) #10, !dbg !4594
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !4595
  call void @fsnotify_clear_marks_by_sb(ptr noundef %1) #10, !dbg !4596
  br label %do.body, !dbg !4597

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4598

do.body1:                                         ; preds = %do.body
  call void @might_resched() #10, !dbg !4599
  br label %do.end, !dbg !4599

do.end:                                           ; preds = %do.body1
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4601
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 43, !dbg !4601
  %call = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #10, !dbg !4601
  %tobool = icmp ne i64 %call, 0, !dbg !4601
  br i1 %tobool, label %if.end, label %if.then, !dbg !4598

if.then:                                          ; preds = %do.end
  br label %do.end12, !dbg !4601

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__wq_head) #11, !dbg !4603
  call void @llvm.dbg.declare(metadata ptr %__wq_head, metadata !4560, metadata !DIExpression()), !dbg !4603
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !4603
  %s_fsnotify_connectors2 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 43, !dbg !4603
  %call3 = call ptr @__var_waitqueue(ptr noundef %s_fsnotify_connectors2) #10, !dbg !4603
  store ptr %call3, ptr %__wq_head, align 8, !dbg !4603
  call void @llvm.lifetime.start.p0(i64 64, ptr %__wbq_entry) #11, !dbg !4603
  call void @llvm.dbg.declare(metadata ptr %__wbq_entry, metadata !4564, metadata !DIExpression()), !dbg !4603
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #11, !dbg !4603
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4586, metadata !DIExpression()), !dbg !4603
  store i64 0, ptr %__ret, align 8, !dbg !4603
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !4603
  %s_fsnotify_connectors4 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 43, !dbg !4603
  call void @init_wait_var_entry(ptr noundef %__wbq_entry, ptr noundef %s_fsnotify_connectors4, i32 noundef 0) #10, !dbg !4603
  br label %for.cond, !dbg !4603

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #11, !dbg !4604
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !4587, metadata !DIExpression()), !dbg !4604
  %5 = load ptr, ptr %__wq_head, align 8, !dbg !4604
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1, !dbg !4604
  %call5 = call i64 @prepare_to_wait_event(ptr noundef %5, ptr noundef %wq_entry, i32 noundef 2) #10, !dbg !4604
  store i64 %call5, ptr %__int, align 8, !dbg !4604
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !4605
  %s_fsnotify_connectors6 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 43, !dbg !4605
  %call7 = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors6) #10, !dbg !4605
  %tobool8 = icmp ne i64 %call7, 0, !dbg !4605
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4604

if.then9:                                         ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4605

if.end10:                                         ; preds = %for.cond
  call void @schedule() #10, !dbg !4604
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4607
  br label %cleanup, !dbg !4607

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #11, !dbg !4607
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !4607, !llvm.loop !4608

for.end:                                          ; preds = %cleanup
  %7 = load ptr, ptr %__wq_head, align 8, !dbg !4603
  %wq_entry11 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1, !dbg !4603
  call void @finish_wait(ptr noundef %7, ptr noundef %wq_entry11) #10, !dbg !4603
  br label %__out, !dbg !4603

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !4591), !dbg !4603
  %8 = load i64, ptr %__ret, align 8, !dbg !4603
  store i64 %8, ptr %tmp, align 8, !dbg !4603
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #11, !dbg !4598
  call void @llvm.lifetime.end.p0(i64 64, ptr %__wbq_entry) #11, !dbg !4598
  call void @llvm.lifetime.end.p0(i64 8, ptr %__wq_head) #11, !dbg !4598
  %9 = load i64, ptr %tmp, align 8, !dbg !4603
  br label %do.end12, !dbg !4598

do.end12:                                         ; preds = %__out, %if.then
  ret void, !dbg !4611

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_unmount_inodes(ptr noundef %sb) #0 align 16 !dbg !4612 {
entry:
  %sb.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %iput_inode = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp9 = alloca i32, align 4
  %__mptr12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4614, metadata !DIExpression()), !dbg !4623
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #11, !dbg !4624
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4615, metadata !DIExpression()), !dbg !4625
  call void @llvm.lifetime.start.p0(i64 8, ptr %iput_inode) #11, !dbg !4624
  call void @llvm.dbg.declare(metadata ptr %iput_inode, metadata !4616, metadata !DIExpression()), !dbg !4626
  store ptr null, ptr %iput_inode, align 8, !dbg !4626
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4627
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 56, !dbg !4628
  call void @spin_lock(ptr noundef %s_inode_list_lock) #10, !dbg !4629
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4630
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4617, metadata !DIExpression()), !dbg !4630
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !4630
  %s_inodes = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 57, !dbg !4630
  %next = getelementptr inbounds %struct.list_head, ptr %s_inodes, i32 0, i32 0, !dbg !4630
  %2 = load ptr, ptr %next, align 8, !dbg !4630
  store ptr %2, ptr %__mptr, align 8, !dbg !4630
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4630
  %add.ptr = getelementptr i8, ptr %3, i64 -264, !dbg !4630
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4631
  %4 = load ptr, ptr %tmp, align 8, !dbg !4630
  store ptr %4, ptr %inode, align 8, !dbg !4631
  br label %for.cond, !dbg !4631

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %inode, align 8, !dbg !4632
  %i_sb_list = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 30, !dbg !4632
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !4632
  %s_inodes1 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 57, !dbg !4632
  %cmp = icmp eq ptr %i_sb_list, %s_inodes1, !dbg !4632
  %lnot = xor i1 %cmp, true, !dbg !4632
  br i1 %lnot, label %for.body, label %for.end, !dbg !4631

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %inode, align 8, !dbg !4633
  %i_lock = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 19, !dbg !4635
  call void @spin_lock(ptr noundef %i_lock) #10, !dbg !4636
  %8 = load ptr, ptr %inode, align 8, !dbg !4637
  %i_state = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 24, !dbg !4639
  %9 = load i64, ptr %i_state, align 8, !dbg !4639
  %and = and i64 %9, 56, !dbg !4640
  %tobool = icmp ne i64 %and, 0, !dbg !4640
  br i1 %tobool, label %if.then, label %if.end, !dbg !4641

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %inode, align 8, !dbg !4642
  %i_lock2 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 19, !dbg !4644
  call void @spin_unlock(ptr noundef %i_lock2) #10, !dbg !4645
  br label %for.inc, !dbg !4646

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %inode, align 8, !dbg !4647
  %i_count = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 35, !dbg !4649
  %call = call i32 @atomic_read(ptr noundef %i_count) #10, !dbg !4650
  %tobool3 = icmp ne i32 %call, 0, !dbg !4650
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4651

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %inode, align 8, !dbg !4652
  %i_lock5 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 19, !dbg !4654
  call void @spin_unlock(ptr noundef %i_lock5) #10, !dbg !4655
  br label %for.inc, !dbg !4656

if.end6:                                          ; preds = %if.end
  %13 = load ptr, ptr %inode, align 8, !dbg !4657
  call void @__iget(ptr noundef %13) #10, !dbg !4658
  %14 = load ptr, ptr %inode, align 8, !dbg !4659
  %i_lock7 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 19, !dbg !4660
  call void @spin_unlock(ptr noundef %i_lock7) #10, !dbg !4661
  %15 = load ptr, ptr %sb.addr, align 8, !dbg !4662
  %s_inode_list_lock8 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 56, !dbg !4663
  call void @spin_unlock(ptr noundef %s_inode_list_lock8) #10, !dbg !4664
  %16 = load ptr, ptr %iput_inode, align 8, !dbg !4665
  call void @iput(ptr noundef %16) #10, !dbg !4666
  %17 = load ptr, ptr %inode, align 8, !dbg !4667
  call void @fsnotify_inode(ptr noundef %17, i32 noundef 8192) #10, !dbg !4668
  %18 = load ptr, ptr %inode, align 8, !dbg !4669
  call void @fsnotify_inode_delete(ptr noundef %18) #10, !dbg !4670
  %19 = load ptr, ptr %inode, align 8, !dbg !4671
  store ptr %19, ptr %iput_inode, align 8, !dbg !4672
  call void @__might_resched(ptr noundef @.str, i32 noundef 82, i32 noundef 0) #10, !dbg !4673
  %call10 = call i32 @_cond_resched() #10, !dbg !4673
  store i32 %call10, ptr %tmp9, align 4, !dbg !4673
  %20 = load i32, ptr %tmp9, align 4, !dbg !4673
  %21 = load ptr, ptr %sb.addr, align 8, !dbg !4675
  %s_inode_list_lock11 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 56, !dbg !4676
  call void @spin_lock(ptr noundef %s_inode_list_lock11) #10, !dbg !4677
  br label %for.inc, !dbg !4678

for.inc:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #11, !dbg !4679
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !4620, metadata !DIExpression()), !dbg !4679
  %22 = load ptr, ptr %inode, align 8, !dbg !4679
  %i_sb_list13 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 30, !dbg !4679
  %next14 = getelementptr inbounds %struct.list_head, ptr %i_sb_list13, i32 0, i32 0, !dbg !4679
  %23 = load ptr, ptr %next14, align 8, !dbg !4679
  store ptr %23, ptr %__mptr12, align 8, !dbg !4679
  %24 = load ptr, ptr %__mptr12, align 8, !dbg !4679
  %add.ptr16 = getelementptr i8, ptr %24, i64 -264, !dbg !4679
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !4679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #11, !dbg !4632
  %25 = load ptr, ptr %tmp15, align 8, !dbg !4679
  store ptr %25, ptr %inode, align 8, !dbg !4632
  br label %for.cond, !dbg !4632, !llvm.loop !4680

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %sb.addr, align 8, !dbg !4683
  %s_inode_list_lock17 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 56, !dbg !4684
  call void @spin_unlock(ptr noundef %s_inode_list_lock17) #10, !dbg !4685
  %27 = load ptr, ptr %iput_inode, align 8, !dbg !4686
  call void @iput(ptr noundef %27) #10, !dbg !4687
  call void @llvm.lifetime.end.p0(i64 8, ptr %iput_inode) #11, !dbg !4688
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #11, !dbg !4688
  ret void, !dbg !4688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_clear_marks_by_sb(ptr noundef %sb) #2 align 16 !dbg !4689 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4693
  %s_fsnotify_marks = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 34, !dbg !4694
  call void @fsnotify_destroy_marks(ptr noundef %s_fsnotify_marks) #10, !dbg !4695
  ret void, !dbg !4696
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #3 align 16 !dbg !4502 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !4697
  %0 = load ptr, ptr %tmp, align 8, !dbg !4697
  %call = call i32 %0() #10, !dbg !4699
  ret void, !dbg !4700
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #3 align 16 !dbg !4701 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4708, metadata !DIExpression()), !dbg !4709
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4710
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #10, !dbg !4711
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4712
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #10, !dbg !4713
  ret i64 %call, !dbg !4714
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4715 dso_local ptr @__var_waitqueue(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4718 dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4722 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4725 dso_local void @schedule() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4726 dso_local void @finish_wait(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fsnotify_set_children_dentry_flags(ptr noundef %inode) #0 align 16 !dbg !4729 {
entry:
  %inode.addr = alloca ptr, align 8
  %alias = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %child = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %____ptr27 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  %__mptr32 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4731, metadata !DIExpression()), !dbg !4751
  call void @llvm.lifetime.start.p0(i64 8, ptr %alias) #11, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %alias, metadata !4732, metadata !DIExpression()), !dbg !4753
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4754
  %i_mode = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 0, !dbg !4754
  %1 = load i16, ptr %i_mode, align 8, !dbg !4754
  %conv = zext i16 %1 to i32, !dbg !4754
  %and = and i32 %conv, 61440, !dbg !4754
  %cmp = icmp eq i32 %and, 16384, !dbg !4754
  br i1 %cmp, label %if.end, label %if.then, !dbg !4756

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4757

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !4758
  %i_lock = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 19, !dbg !4759
  call void @spin_lock(ptr noundef %i_lock) #10, !dbg !4760
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #11, !dbg !4761
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4733, metadata !DIExpression()), !dbg !4761
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !4761
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 32, !dbg !4761
  %first = getelementptr inbounds %struct.hlist_head, ptr %4, i32 0, i32 0, !dbg !4761
  %5 = load ptr, ptr %first, align 8, !dbg !4761
  store ptr %5, ptr %____ptr, align 8, !dbg !4761
  %6 = load ptr, ptr %____ptr, align 8, !dbg !4761
  %tobool = icmp ne ptr %6, null, !dbg !4761
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4761

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4762
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4736, metadata !DIExpression()), !dbg !4762
  %7 = load ptr, ptr %____ptr, align 8, !dbg !4762
  store ptr %7, ptr %__mptr, align 8, !dbg !4762
  %8 = load ptr, ptr %__mptr, align 8, !dbg !4762
  %add.ptr = getelementptr i8, ptr %8, i64 -176, !dbg !4762
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !4762
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4761
  %9 = load ptr, ptr %tmp2, align 8, !dbg !4762
  br label %cond.end, !dbg !4761

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4761

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ null, %cond.false ], !dbg !4761
  store ptr %cond, ptr %tmp, align 8, !dbg !4761
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #11, !dbg !4763
  %10 = load ptr, ptr %tmp, align 8, !dbg !4761
  store ptr %10, ptr %alias, align 8, !dbg !4763
  br label %for.cond, !dbg !4763

for.cond:                                         ; preds = %cond.end36, %cond.end
  %11 = load ptr, ptr %alias, align 8, !dbg !4764
  %tobool3 = icmp ne ptr %11, null, !dbg !4763
  br i1 %tobool3, label %for.body, label %for.end38, !dbg !4763

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #11, !dbg !4765
  call void @llvm.dbg.declare(metadata ptr %child, metadata !4738, metadata !DIExpression()), !dbg !4766
  %12 = load ptr, ptr %alias, align 8, !dbg !4767
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 7, !dbg !4768
  %13 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4768
  %lock = getelementptr inbounds %struct.anon.20, ptr %13, i32 0, i32 0, !dbg !4768
  call void @spin_lock(ptr noundef %lock) #10, !dbg !4769
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #11, !dbg !4770
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !4741, metadata !DIExpression()), !dbg !4770
  %14 = load ptr, ptr %alias, align 8, !dbg !4770
  %d_subdirs = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 14, !dbg !4770
  %next = getelementptr inbounds %struct.list_head, ptr %d_subdirs, i32 0, i32 0, !dbg !4770
  %15 = load ptr, ptr %next, align 8, !dbg !4770
  store ptr %15, ptr %__mptr4, align 8, !dbg !4770
  %16 = load ptr, ptr %__mptr4, align 8, !dbg !4770
  %add.ptr6 = getelementptr i8, ptr %16, i64 -144, !dbg !4770
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !4770
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #11, !dbg !4771
  %17 = load ptr, ptr %tmp5, align 8, !dbg !4770
  store ptr %17, ptr %child, align 8, !dbg !4771
  br label %for.cond7, !dbg !4771

for.cond7:                                        ; preds = %for.inc, %for.body
  %18 = load ptr, ptr %child, align 8, !dbg !4772
  %d_child = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 13, !dbg !4772
  %19 = load ptr, ptr %alias, align 8, !dbg !4772
  %d_subdirs8 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 14, !dbg !4772
  %cmp9 = icmp eq ptr %d_child, %d_subdirs8, !dbg !4772
  %lnot = xor i1 %cmp9, true, !dbg !4772
  br i1 %lnot, label %for.body11, label %for.end, !dbg !4771

for.body11:                                       ; preds = %for.cond7
  %20 = load ptr, ptr %child, align 8, !dbg !4773
  %d_inode = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5, !dbg !4776
  %21 = load ptr, ptr %d_inode, align 8, !dbg !4776
  %tobool12 = icmp ne ptr %21, null, !dbg !4773
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4777

if.then13:                                        ; preds = %for.body11
  br label %for.inc, !dbg !4778

if.end14:                                         ; preds = %for.body11
  br label %do.body, !dbg !4779

do.body:                                          ; preds = %if.end14
  %22 = load ptr, ptr %child, align 8, !dbg !4780
  %d_lockref15 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 7, !dbg !4780
  %23 = getelementptr inbounds %struct.lockref, ptr %d_lockref15, i32 0, i32 0, !dbg !4780
  %lock16 = getelementptr inbounds %struct.anon.20, ptr %23, i32 0, i32 0, !dbg !4780
  %call = call ptr @spinlock_check(ptr noundef %lock16) #10, !dbg !4780
  call void @_raw_spin_lock(ptr noundef %call) #10, !dbg !4780
  br label %do.cond, !dbg !4780

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4780

do.end:                                           ; preds = %do.cond
  %24 = load ptr, ptr %child, align 8, !dbg !4782
  %d_flags = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 0, !dbg !4783
  %25 = load i32, ptr %d_flags, align 8, !dbg !4784
  %or = or i32 %25, 16384, !dbg !4784
  store i32 %or, ptr %d_flags, align 8, !dbg !4784
  %26 = load ptr, ptr %child, align 8, !dbg !4785
  %d_lockref17 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 7, !dbg !4786
  %27 = getelementptr inbounds %struct.lockref, ptr %d_lockref17, i32 0, i32 0, !dbg !4786
  %lock18 = getelementptr inbounds %struct.anon.20, ptr %27, i32 0, i32 0, !dbg !4786
  call void @spin_unlock(ptr noundef %lock18) #10, !dbg !4787
  br label %for.inc, !dbg !4788

for.inc:                                          ; preds = %do.end, %if.then13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #11, !dbg !4789
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !4744, metadata !DIExpression()), !dbg !4789
  %28 = load ptr, ptr %child, align 8, !dbg !4789
  %d_child20 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 13, !dbg !4789
  %next21 = getelementptr inbounds %struct.list_head, ptr %d_child20, i32 0, i32 0, !dbg !4789
  %29 = load ptr, ptr %next21, align 8, !dbg !4789
  store ptr %29, ptr %__mptr19, align 8, !dbg !4789
  %30 = load ptr, ptr %__mptr19, align 8, !dbg !4789
  %add.ptr23 = getelementptr i8, ptr %30, i64 -144, !dbg !4789
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #11, !dbg !4772
  %31 = load ptr, ptr %tmp22, align 8, !dbg !4789
  store ptr %31, ptr %child, align 8, !dbg !4772
  br label %for.cond7, !dbg !4772, !llvm.loop !4790

for.end:                                          ; preds = %for.cond7
  %32 = load ptr, ptr %alias, align 8, !dbg !4792
  %d_lockref24 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 7, !dbg !4793
  %33 = getelementptr inbounds %struct.lockref, ptr %d_lockref24, i32 0, i32 0, !dbg !4793
  %lock25 = getelementptr inbounds %struct.anon.20, ptr %33, i32 0, i32 0, !dbg !4793
  call void @spin_unlock(ptr noundef %lock25) #10, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #11, !dbg !4795
  br label %for.inc26, !dbg !4796

for.inc26:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr27) #11, !dbg !4797
  call void @llvm.dbg.declare(metadata ptr %____ptr27, metadata !4747, metadata !DIExpression()), !dbg !4797
  %34 = load ptr, ptr %alias, align 8, !dbg !4797
  %d_u = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 15, !dbg !4797
  %next28 = getelementptr inbounds %struct.hlist_node, ptr %d_u, i32 0, i32 0, !dbg !4797
  %35 = load ptr, ptr %next28, align 8, !dbg !4797
  store ptr %35, ptr %____ptr27, align 8, !dbg !4797
  %36 = load ptr, ptr %____ptr27, align 8, !dbg !4797
  %tobool30 = icmp ne ptr %36, null, !dbg !4797
  br i1 %tobool30, label %cond.true31, label %cond.false35, !dbg !4797

cond.true31:                                      ; preds = %for.inc26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr32) #11, !dbg !4798
  call void @llvm.dbg.declare(metadata ptr %__mptr32, metadata !4749, metadata !DIExpression()), !dbg !4798
  %37 = load ptr, ptr %____ptr27, align 8, !dbg !4798
  store ptr %37, ptr %__mptr32, align 8, !dbg !4798
  %38 = load ptr, ptr %__mptr32, align 8, !dbg !4798
  %add.ptr34 = getelementptr i8, ptr %38, i64 -176, !dbg !4798
  store ptr %add.ptr34, ptr %tmp33, align 8, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr32) #11, !dbg !4797
  %39 = load ptr, ptr %tmp33, align 8, !dbg !4798
  br label %cond.end36, !dbg !4797

cond.false35:                                     ; preds = %for.inc26
  br label %cond.end36, !dbg !4797

cond.end36:                                       ; preds = %cond.false35, %cond.true31
  %cond37 = phi ptr [ %39, %cond.true31 ], [ null, %cond.false35 ], !dbg !4797
  store ptr %cond37, ptr %tmp29, align 8, !dbg !4797
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr27) #11, !dbg !4764
  %40 = load ptr, ptr %tmp29, align 8, !dbg !4797
  store ptr %40, ptr %alias, align 8, !dbg !4764
  br label %for.cond, !dbg !4764, !llvm.loop !4799

for.end38:                                        ; preds = %for.cond
  %41 = load ptr, ptr %inode.addr, align 8, !dbg !4801
  %i_lock39 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 19, !dbg !4802
  call void @spin_unlock(ptr noundef %i_lock39) #10, !dbg !4803
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4804
  br label %cleanup, !dbg !4804

cleanup:                                          ; preds = %for.end38, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alias) #11, !dbg !4804
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4804

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !4805 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4812
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4812
  call void @_raw_spin_lock(ptr noundef %1) #10, !dbg !4812
  ret void, !dbg !4813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4814 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !4819 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4823, metadata !DIExpression()), !dbg !4824
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4825
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4826
  ret ptr %1, !dbg !4827
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !4828 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4830, metadata !DIExpression()), !dbg !4831
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4832
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4832
  call void @_raw_spin_unlock(ptr noundef %1) #10, !dbg !4832
  ret void, !dbg !4833
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__fsnotify_parent(ptr noundef %dentry, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type) #0 align 16 !dbg !4834 {
entry:
  %retval = alloca i32, align 4
  %dentry.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %mnt = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %parent_watched = alloca i8, align 1
  %parent_needed = alloca i8, align 1
  %parent_interested = alloca i8, align 1
  %p_mask = alloca i32, align 4
  %p_inode = alloca ptr, align 8
  %name = alloca %struct.name_snapshot, align 8
  %file_name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4838, metadata !DIExpression()), !dbg !4866
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4839, metadata !DIExpression()), !dbg !4867
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4840, metadata !DIExpression()), !dbg !4868
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !4841, metadata !DIExpression()), !dbg !4869
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #11, !dbg !4870
  call void @llvm.dbg.declare(metadata ptr %path, metadata !4842, metadata !DIExpression()), !dbg !4871
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4872
  %1 = load i32, ptr %data_type.addr, align 4, !dbg !4873
  %call = call ptr @fsnotify_data_path(ptr noundef %0, i32 noundef %1) #10, !dbg !4874
  store ptr %call, ptr %path, align 8, !dbg !4871
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #11, !dbg !4875
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !4843, metadata !DIExpression()), !dbg !4876
  %2 = load ptr, ptr %path, align 8, !dbg !4877
  %tobool = icmp ne ptr %2, null, !dbg !4877
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4877

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %path, align 8, !dbg !4878
  %mnt1 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 0, !dbg !4879
  %4 = load ptr, ptr %mnt1, align 8, !dbg !4879
  %call2 = call ptr @real_mount(ptr noundef %4) #10, !dbg !4880
  br label %cond.end, !dbg !4877

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4877

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ null, %cond.false ], !dbg !4877
  store ptr %cond, ptr %mnt, align 8, !dbg !4876
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #11, !dbg !4881
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4844, metadata !DIExpression()), !dbg !4882
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !4883
  %call3 = call ptr @d_inode(ptr noundef %5) #10, !dbg !4884
  store ptr %call3, ptr %inode, align 8, !dbg !4882
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #11, !dbg !4885
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4845, metadata !DIExpression()), !dbg !4886
  call void @llvm.lifetime.start.p0(i64 1, ptr %parent_watched) #11, !dbg !4887
  call void @llvm.dbg.declare(metadata ptr %parent_watched, metadata !4846, metadata !DIExpression()), !dbg !4888
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !4889
  %d_flags = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 0, !dbg !4890
  %7 = load i32, ptr %d_flags, align 8, !dbg !4890
  %and = and i32 %7, 16384, !dbg !4891
  %tobool4 = icmp ne i32 %and, 0, !dbg !4889
  %frombool = zext i1 %tobool4 to i8, !dbg !4888
  store i8 %frombool, ptr %parent_watched, align 1, !dbg !4888
  call void @llvm.lifetime.start.p0(i64 1, ptr %parent_needed) #11, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %parent_needed, metadata !4847, metadata !DIExpression()), !dbg !4893
  call void @llvm.lifetime.start.p0(i64 1, ptr %parent_interested) #11, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %parent_interested, metadata !4848, metadata !DIExpression()), !dbg !4894
  call void @llvm.lifetime.start.p0(i64 4, ptr %p_mask) #11, !dbg !4895
  call void @llvm.dbg.declare(metadata ptr %p_mask, metadata !4849, metadata !DIExpression()), !dbg !4896
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_inode) #11, !dbg !4897
  call void @llvm.dbg.declare(metadata ptr %p_inode, metadata !4850, metadata !DIExpression()), !dbg !4898
  store ptr null, ptr %p_inode, align 8, !dbg !4898
  call void @llvm.lifetime.start.p0(i64 48, ptr %name) #11, !dbg !4899
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4851, metadata !DIExpression()), !dbg !4900
  call void @llvm.lifetime.start.p0(i64 8, ptr %file_name) #11, !dbg !4901
  call void @llvm.dbg.declare(metadata ptr %file_name, metadata !4856, metadata !DIExpression()), !dbg !4902
  store ptr null, ptr %file_name, align 8, !dbg !4902
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !4903
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4857, metadata !DIExpression()), !dbg !4904
  store i32 0, ptr %ret, align 4, !dbg !4904
  %8 = load ptr, ptr %inode, align 8, !dbg !4905
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 46, !dbg !4907
  %9 = load ptr, ptr %i_fsnotify_marks, align 8, !dbg !4907
  %tobool5 = icmp ne ptr %9, null, !dbg !4905
  br i1 %tobool5, label %if.end, label %land.lhs.true, !dbg !4908

land.lhs.true:                                    ; preds = %cond.end
  %10 = load ptr, ptr %inode, align 8, !dbg !4909
  %i_sb = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9, !dbg !4910
  %11 = load ptr, ptr %i_sb, align 8, !dbg !4910
  %s_fsnotify_marks = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 34, !dbg !4911
  %12 = load ptr, ptr %s_fsnotify_marks, align 8, !dbg !4911
  %tobool6 = icmp ne ptr %12, null, !dbg !4909
  br i1 %tobool6, label %if.end, label %land.lhs.true7, !dbg !4912

land.lhs.true7:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %mnt, align 8, !dbg !4913
  %tobool8 = icmp ne ptr %13, null, !dbg !4913
  br i1 %tobool8, label %lor.lhs.false, label %land.lhs.true10, !dbg !4914

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %14 = load ptr, ptr %mnt, align 8, !dbg !4915
  %mnt_fsnotify_marks = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 20, !dbg !4916
  %15 = load ptr, ptr %mnt_fsnotify_marks, align 8, !dbg !4916
  %tobool9 = icmp ne ptr %15, null, !dbg !4915
  br i1 %tobool9, label %if.end, label %land.lhs.true10, !dbg !4917

land.lhs.true10:                                  ; preds = %lor.lhs.false, %land.lhs.true7
  %16 = load i8, ptr %parent_watched, align 1, !dbg !4918, !range !4919, !noundef !837
  %tobool11 = trunc i8 %16 to i1, !dbg !4918
  br i1 %tobool11, label %if.end, label %if.then, !dbg !4920

if.then:                                          ; preds = %land.lhs.true10
  store i32 0, ptr %retval, align 4, !dbg !4921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4921

if.end:                                           ; preds = %land.lhs.true10, %lor.lhs.false, %land.lhs.true, %cond.end
  store ptr null, ptr %parent, align 8, !dbg !4922
  %17 = load ptr, ptr %inode, align 8, !dbg !4923
  %18 = load ptr, ptr %mnt, align 8, !dbg !4924
  %19 = load i32, ptr %mask.addr, align 4, !dbg !4925
  %call12 = call zeroext i1 @fsnotify_event_needs_parent(ptr noundef %17, ptr noundef %18, i32 noundef %19) #10, !dbg !4926
  %frombool13 = zext i1 %call12 to i8, !dbg !4927
  store i8 %frombool13, ptr %parent_needed, align 1, !dbg !4927
  %20 = load i8, ptr %parent_watched, align 1, !dbg !4928, !range !4919, !noundef !837
  %tobool14 = trunc i8 %20 to i1, !dbg !4928
  br i1 %tobool14, label %if.end18, label %land.lhs.true15, !dbg !4930

land.lhs.true15:                                  ; preds = %if.end
  %21 = load i8, ptr %parent_needed, align 1, !dbg !4931, !range !4919, !noundef !837
  %tobool16 = trunc i8 %21 to i1, !dbg !4931
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4932

if.then17:                                        ; preds = %land.lhs.true15
  br label %notify, !dbg !4933

if.end18:                                         ; preds = %land.lhs.true15, %if.end
  %22 = load ptr, ptr %dentry.addr, align 8, !dbg !4934
  %call19 = call ptr @dget_parent(ptr noundef %22) #10, !dbg !4935
  store ptr %call19, ptr %parent, align 8, !dbg !4936
  %23 = load ptr, ptr %parent, align 8, !dbg !4937
  %d_inode = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5, !dbg !4938
  %24 = load ptr, ptr %d_inode, align 8, !dbg !4938
  store ptr %24, ptr %p_inode, align 8, !dbg !4939
  %25 = load ptr, ptr %p_inode, align 8, !dbg !4940
  %call20 = call i32 @fsnotify_inode_watches_children(ptr noundef %25) #10, !dbg !4941
  store i32 %call20, ptr %p_mask, align 4, !dbg !4942
  %26 = load i8, ptr %parent_watched, align 1, !dbg !4943, !range !4919, !noundef !837
  %tobool21 = trunc i8 %26 to i1, !dbg !4943
  br i1 %tobool21, label %land.rhs, label %land.end, !dbg !4943

land.rhs:                                         ; preds = %if.end18
  %27 = load i32, ptr %p_mask, align 4, !dbg !4943
  %tobool22 = icmp ne i32 %27, 0, !dbg !4943
  %lnot = xor i1 %tobool22, true, !dbg !4943
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end18
  %28 = phi i1 [ false, %if.end18 ], [ %lnot, %land.rhs ], !dbg !4945
  %lnot23 = xor i1 %28, true, !dbg !4943
  %lnot24 = xor i1 %lnot23, true, !dbg !4943
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !4943
  %conv = sext i32 %lnot.ext to i64, !dbg !4943
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4943
  %tobool25 = icmp ne i64 %expval, 0, !dbg !4943
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4946

if.then26:                                        ; preds = %land.end
  %29 = load ptr, ptr %p_inode, align 8, !dbg !4947
  %30 = load ptr, ptr %dentry.addr, align 8, !dbg !4948
  call void @fsnotify_clear_child_dentry_flag(ptr noundef %29, ptr noundef %30) #10, !dbg !4949
  br label %if.end27, !dbg !4949

if.end27:                                         ; preds = %if.then26, %land.end
  %31 = load i32, ptr %mask.addr, align 4, !dbg !4950
  %32 = load i32, ptr %p_mask, align 4, !dbg !4951
  %and28 = and i32 %31, %32, !dbg !4952
  %and29 = and i32 %and28, 268959743, !dbg !4953
  %tobool30 = icmp ne i32 %and29, 0, !dbg !4950
  %frombool31 = zext i1 %tobool30 to i8, !dbg !4954
  store i8 %frombool31, ptr %parent_interested, align 1, !dbg !4954
  %33 = load i8, ptr %parent_needed, align 1, !dbg !4955, !range !4919, !noundef !837
  %tobool32 = trunc i8 %33 to i1, !dbg !4955
  br i1 %tobool32, label %if.then37, label %lor.lhs.false34, !dbg !4956

lor.lhs.false34:                                  ; preds = %if.end27
  %34 = load i8, ptr %parent_interested, align 1, !dbg !4957, !range !4919, !noundef !837
  %tobool35 = trunc i8 %34 to i1, !dbg !4957
  br i1 %tobool35, label %if.then37, label %if.end74, !dbg !4958

if.then37:                                        ; preds = %lor.lhs.false34, %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !4959
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4858, metadata !DIExpression()), !dbg !4959
  %35 = load ptr, ptr %inode, align 8, !dbg !4959
  %36 = load ptr, ptr %data.addr, align 8, !dbg !4959
  %37 = load i32, ptr %data_type.addr, align 4, !dbg !4959
  %call38 = call ptr @fsnotify_data_inode(ptr noundef %36, i32 noundef %37) #10, !dbg !4959
  %cmp = icmp ne ptr %35, %call38, !dbg !4959
  %lnot40 = xor i1 %cmp, true, !dbg !4959
  %lnot42 = xor i1 %lnot40, true, !dbg !4959
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !4959
  store i32 %lnot.ext43, ptr %__ret_warn_on, align 4, !dbg !4959
  %38 = load i32, ptr %__ret_warn_on, align 4, !dbg !4960
  %tobool44 = icmp ne i32 %38, 0, !dbg !4960
  %lnot45 = xor i1 %tobool44, true, !dbg !4960
  %lnot47 = xor i1 %lnot45, true, !dbg !4960
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !4960
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !4960
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !4960
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !4960
  br i1 %tobool51, label %if.then52, label %if.end62, !dbg !4959

if.then52:                                        ; preds = %if.then37
  br label %do.body, !dbg !4960

do.body:                                          ; preds = %if.then52
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !4961
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4862, metadata !DIExpression()), !dbg !4961
  store i32 2307, ptr %__flags, align 4, !dbg !4961
  br label %do.body53, !dbg !4961

do.body53:                                        ; preds = %do.body
  br label %do.cond, !dbg !4962

do.cond:                                          ; preds = %do.body53
  br label %do.end, !dbg !4962

do.end:                                           ; preds = %do.cond
  br label %do.body54, !dbg !4961

do.body54:                                        ; preds = %do.end
  %39 = load i32, ptr %__flags, align 4, !dbg !4964
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 231, i32 %39, i64 12) #11, !dbg !4964, !srcloc !4966
  br label %do.cond55, !dbg !4964

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !4964

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !4961

do.body57:                                        ; preds = %do.end56
  br label %do.cond58, !dbg !4967

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !4967

do.end59:                                         ; preds = %do.cond58
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !4960
  br label %do.cond60, !dbg !4961

do.cond60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !4961

do.end61:                                         ; preds = %do.cond60
  br label %if.end62, !dbg !4961

if.end62:                                         ; preds = %do.end61, %if.then37
  %40 = load i32, ptr %__ret_warn_on, align 4, !dbg !4959
  %tobool63 = icmp ne i32 %40, 0, !dbg !4959
  %lnot64 = xor i1 %tobool63, true, !dbg !4959
  %lnot66 = xor i1 %lnot64, true, !dbg !4959
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !4959
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !4959
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0), !dbg !4959
  store i64 %expval69, ptr %tmp, align 8, !dbg !4960
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !4969
  %41 = load i64, ptr %tmp, align 8, !dbg !4959
  %42 = load ptr, ptr %dentry.addr, align 8, !dbg !4970
  call void @take_dentry_name_snapshot(ptr noundef %name, ptr noundef %42) #10, !dbg !4971
  %name70 = getelementptr inbounds %struct.name_snapshot, ptr %name, i32 0, i32 0, !dbg !4972
  store ptr %name70, ptr %file_name, align 8, !dbg !4973
  %43 = load i8, ptr %parent_interested, align 1, !dbg !4974, !range !4919, !noundef !837
  %tobool71 = trunc i8 %43 to i1, !dbg !4974
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !4976

if.then72:                                        ; preds = %if.end62
  %44 = load i32, ptr %mask.addr, align 4, !dbg !4977
  %or = or i32 %44, 134217728, !dbg !4977
  store i32 %or, ptr %mask.addr, align 4, !dbg !4977
  br label %if.end73, !dbg !4978

if.end73:                                         ; preds = %if.then72, %if.end62
  br label %if.end74, !dbg !4979

if.end74:                                         ; preds = %if.end73, %lor.lhs.false34
  br label %notify, !dbg !4957

notify:                                           ; preds = %if.end74, %if.then17
  call void @llvm.dbg.label(metadata !4865), !dbg !4980
  %45 = load i32, ptr %mask.addr, align 4, !dbg !4981
  %46 = load ptr, ptr %data.addr, align 8, !dbg !4982
  %47 = load i32, ptr %data_type.addr, align 4, !dbg !4983
  %48 = load ptr, ptr %p_inode, align 8, !dbg !4984
  %49 = load ptr, ptr %file_name, align 8, !dbg !4985
  %50 = load ptr, ptr %inode, align 8, !dbg !4986
  %call75 = call i32 @fsnotify(i32 noundef %45, ptr noundef %46, i32 noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef 0) #10, !dbg !4987
  store i32 %call75, ptr %ret, align 4, !dbg !4988
  %51 = load ptr, ptr %file_name, align 8, !dbg !4989
  %tobool76 = icmp ne ptr %51, null, !dbg !4989
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !4991

if.then77:                                        ; preds = %notify
  call void @release_dentry_name_snapshot(ptr noundef %name) #10, !dbg !4992
  br label %if.end78, !dbg !4992

if.end78:                                         ; preds = %if.then77, %notify
  %52 = load ptr, ptr %parent, align 8, !dbg !4993
  call void @dput(ptr noundef %52) #10, !dbg !4994
  %53 = load i32, ptr %ret, align 4, !dbg !4995
  store i32 %53, ptr %retval, align 4, !dbg !4996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4996

cleanup:                                          ; preds = %if.end78, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 8, ptr %file_name) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 48, ptr %name) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_inode) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 4, ptr %p_mask) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 1, ptr %parent_interested) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 1, ptr %parent_needed) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 1, ptr %parent_watched) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #11, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #11, !dbg !4997
  %54 = load i32, ptr %retval, align 4, !dbg !4997
  ret i32 %54, !dbg !4997
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_data_path(ptr noundef %data, i32 noundef %data_type) #2 align 16 !dbg !4998 {
entry:
  %retval = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5002, metadata !DIExpression()), !dbg !5004
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !5003, metadata !DIExpression()), !dbg !5005
  %0 = load i32, ptr %data_type.addr, align 4, !dbg !5006
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
  ], !dbg !5007

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5008
  store ptr %1, ptr %retval, align 8, !dbg !5010
  br label %return, !dbg !5010

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5011
  br label %return, !dbg !5011

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load ptr, ptr %retval, align 8, !dbg !5012
  ret ptr %2, !dbg !5012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @real_mount(ptr noundef %mnt) #2 align 16 !dbg !5013 {
entry:
  %mnt.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !5017, metadata !DIExpression()), !dbg !5020
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5021
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5018, metadata !DIExpression()), !dbg !5021
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !5021
  store ptr %0, ptr %__mptr, align 8, !dbg !5021
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5021
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !5021
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5022
  %2 = load ptr, ptr %tmp, align 8, !dbg !5021
  ret ptr %2, !dbg !5023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #2 align 16 !dbg !5024 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5030
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5031
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5031
  ret ptr %1, !dbg !5032
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fsnotify_event_needs_parent(ptr noundef %inode, ptr noundef %mnt, i32 noundef %mask) #0 align 16 !dbg !5033 {
entry:
  %retval = alloca i1, align 1
  %inode.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %marks_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5037, metadata !DIExpression()), !dbg !5041
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !5038, metadata !DIExpression()), !dbg !5042
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5039, metadata !DIExpression()), !dbg !5043
  call void @llvm.lifetime.start.p0(i64 4, ptr %marks_mask) #11, !dbg !5044
  call void @llvm.dbg.declare(metadata ptr %marks_mask, metadata !5040, metadata !DIExpression()), !dbg !5045
  store i32 0, ptr %marks_mask, align 4, !dbg !5045
  %0 = load i32, ptr %mask.addr, align 4, !dbg !5046
  %and = and i32 %0, 1073741824, !dbg !5048
  %tobool = icmp ne i32 %and, 0, !dbg !5048
  br i1 %tobool, label %if.then, label %if.end, !dbg !5049

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5050

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5051

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5052

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5052

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5054
  %i_fsnotify_mask = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 45, !dbg !5055
  %2 = load i32, ptr %i_fsnotify_mask, align 4, !dbg !5055
  %call = call i32 @fsnotify_parent_needed_mask(i32 noundef %2) #10, !dbg !5056
  %3 = load i32, ptr %marks_mask, align 4, !dbg !5057
  %or = or i32 %3, %call, !dbg !5057
  store i32 %or, ptr %marks_mask, align 4, !dbg !5057
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5058
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9, !dbg !5059
  %5 = load ptr, ptr %i_sb, align 8, !dbg !5059
  %s_fsnotify_mask = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33, !dbg !5060
  %6 = load i32, ptr %s_fsnotify_mask, align 64, !dbg !5060
  %call1 = call i32 @fsnotify_parent_needed_mask(i32 noundef %6) #10, !dbg !5061
  %7 = load i32, ptr %marks_mask, align 4, !dbg !5062
  %or2 = or i32 %7, %call1, !dbg !5062
  store i32 %or2, ptr %marks_mask, align 4, !dbg !5062
  %8 = load ptr, ptr %mnt.addr, align 8, !dbg !5063
  %tobool3 = icmp ne ptr %8, null, !dbg !5063
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !5065

if.then4:                                         ; preds = %do.end
  %9 = load ptr, ptr %mnt.addr, align 8, !dbg !5066
  %mnt_fsnotify_mask = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 21, !dbg !5067
  %10 = load i32, ptr %mnt_fsnotify_mask, align 8, !dbg !5067
  %call5 = call i32 @fsnotify_parent_needed_mask(i32 noundef %10) #10, !dbg !5068
  %11 = load i32, ptr %marks_mask, align 4, !dbg !5069
  %or6 = or i32 %11, %call5, !dbg !5069
  store i32 %or6, ptr %marks_mask, align 4, !dbg !5069
  br label %if.end7, !dbg !5070

if.end7:                                          ; preds = %if.then4, %do.end
  %12 = load i32, ptr %mask.addr, align 4, !dbg !5071
  %13 = load i32, ptr %marks_mask, align 4, !dbg !5072
  %and8 = and i32 %12, %13, !dbg !5073
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5071
  store i1 %tobool9, ptr %retval, align 1, !dbg !5074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5074

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %marks_mask) #11, !dbg !5075
  %14 = load i1, ptr %retval, align 1, !dbg !5075
  ret i1 %14, !dbg !5075
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5076 dso_local ptr @dget_parent(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_inode_watches_children(ptr noundef %inode) #2 align 16 !dbg !5079 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %parent_mask = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5081, metadata !DIExpression()), !dbg !5083
  call void @llvm.lifetime.start.p0(i64 4, ptr %parent_mask) #11, !dbg !5084
  call void @llvm.dbg.declare(metadata ptr %parent_mask, metadata !5082, metadata !DIExpression()), !dbg !5085
  br label %do.body, !dbg !5086

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5088

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5088

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5086
  %i_fsnotify_mask = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 45, !dbg !5086
  %1 = load volatile i32, ptr %i_fsnotify_mask, align 4, !dbg !5086
  store i32 %1, ptr %tmp, align 4, !dbg !5088
  %2 = load i32, ptr %tmp, align 4, !dbg !5086
  store i32 %2, ptr %parent_mask, align 4, !dbg !5085
  %3 = load i32, ptr %parent_mask, align 4, !dbg !5090
  %and = and i32 %3, 134217728, !dbg !5092
  %tobool = icmp ne i32 %and, 0, !dbg !5092
  br i1 %tobool, label %if.end, label %if.then, !dbg !5093

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !5094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5094

if.end:                                           ; preds = %do.end
  %4 = load i32, ptr %parent_mask, align 4, !dbg !5095
  %and1 = and i32 %4, 462911, !dbg !5096
  store i32 %and1, ptr %retval, align 4, !dbg !5097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5097

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %parent_mask) #11, !dbg !5098
  %5 = load i32, ptr %retval, align 4, !dbg !5098
  ret i32 %5, !dbg !5098
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_clear_child_dentry_flag(ptr noundef %pinode, ptr noundef %dentry) #0 align 16 !dbg !5099 {
entry:
  %pinode.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %pinode, ptr %pinode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pinode.addr, metadata !5103, metadata !DIExpression()), !dbg !5105
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5104, metadata !DIExpression()), !dbg !5106
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5107
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7, !dbg !5108
  %1 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !5108
  %lock = getelementptr inbounds %struct.anon.20, ptr %1, i32 0, i32 0, !dbg !5108
  call void @spin_lock(ptr noundef %lock) #10, !dbg !5109
  %2 = load ptr, ptr %pinode.addr, align 8, !dbg !5110
  %call = call i32 @fsnotify_inode_watches_children(ptr noundef %2) #10, !dbg !5112
  %tobool = icmp ne i32 %call, 0, !dbg !5112
  br i1 %tobool, label %if.end, label %if.then, !dbg !5113

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5114
  %d_flags = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 0, !dbg !5115
  %4 = load i32, ptr %d_flags, align 8, !dbg !5116
  %and = and i32 %4, -16385, !dbg !5116
  store i32 %and, ptr %d_flags, align 8, !dbg !5116
  br label %if.end, !dbg !5114

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !5117
  %d_lockref1 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7, !dbg !5118
  %6 = getelementptr inbounds %struct.lockref, ptr %d_lockref1, i32 0, i32 0, !dbg !5118
  %lock2 = getelementptr inbounds %struct.anon.20, ptr %6, i32 0, i32 0, !dbg !5118
  call void @spin_unlock(ptr noundef %lock2) #10, !dbg !5119
  ret void, !dbg !5120
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_data_inode(ptr noundef %data, i32 noundef %data_type) #2 align 16 !dbg !5121 {
entry:
  %retval = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5125, metadata !DIExpression()), !dbg !5127
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !5126, metadata !DIExpression()), !dbg !5128
  %0 = load i32, ptr %data_type.addr, align 4, !dbg !5129
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %sw.bb2
    i32 4, label %sw.bb4
  ], !dbg !5130

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5131
  store ptr %1, ptr %retval, align 8, !dbg !5133
  br label %return, !dbg !5133

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5134
  %call = call ptr @d_inode(ptr noundef %2) #10, !dbg !5135
  store ptr %call, ptr %retval, align 8, !dbg !5136
  br label %return, !dbg !5136

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5137
  %dentry = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1, !dbg !5138
  %4 = load ptr, ptr %dentry, align 8, !dbg !5138
  %call3 = call ptr @d_inode(ptr noundef %4) #10, !dbg !5139
  store ptr %call3, ptr %retval, align 8, !dbg !5140
  br label %return, !dbg !5140

sw.bb4:                                           ; preds = %entry
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5141
  %inode = getelementptr inbounds %struct.fs_error_report, ptr %5, i32 0, i32 1, !dbg !5142
  %6 = load ptr, ptr %inode, align 8, !dbg !5142
  store ptr %6, ptr %retval, align 8, !dbg !5143
  br label %return, !dbg !5143

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5144
  br label %return, !dbg !5144

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %7 = load ptr, ptr %retval, align 8, !dbg !5145
  ret ptr %7, !dbg !5145
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5146 dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fsnotify(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %file_name, ptr noundef %inode, i32 noundef %cookie) #0 align 16 !dbg !5150 {
entry:
  %retval = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %file_name.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %iter_info = alloca %struct.fsnotify_iter_info, align 8
  %mnt = alloca ptr, align 8
  %inode2 = alloca ptr, align 8
  %moved = alloca ptr, align 8
  %inode2_type = alloca i32, align 4
  %ret = alloca i32, align 4
  %test_mask = alloca i32, align 4
  %marks_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5154, metadata !DIExpression()), !dbg !5172
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5155, metadata !DIExpression()), !dbg !5173
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !5156, metadata !DIExpression()), !dbg !5174
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5157, metadata !DIExpression()), !dbg !5175
  store ptr %file_name, ptr %file_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_name.addr, metadata !5158, metadata !DIExpression()), !dbg !5176
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5159, metadata !DIExpression()), !dbg !5177
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5160, metadata !DIExpression()), !dbg !5178
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #11, !dbg !5179
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5161, metadata !DIExpression()), !dbg !5180
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5181
  %1 = load i32, ptr %data_type.addr, align 4, !dbg !5182
  %call = call ptr @fsnotify_data_path(ptr noundef %0, i32 noundef %1) #10, !dbg !5183
  store ptr %call, ptr %path, align 8, !dbg !5180
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #11, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5162, metadata !DIExpression()), !dbg !5185
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5186
  %3 = load i32, ptr %data_type.addr, align 4, !dbg !5187
  %call1 = call ptr @fsnotify_data_sb(ptr noundef %2, i32 noundef %3) #10, !dbg !5188
  store ptr %call1, ptr %sb, align 8, !dbg !5185
  call void @llvm.lifetime.start.p0(i64 56, ptr %iter_info) #11, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %iter_info, metadata !5163, metadata !DIExpression()), !dbg !5190
  call void @llvm.memset.p0.i64(ptr align 8 %iter_info, i8 0, i64 56, i1 false), !dbg !5190
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #11, !dbg !5191
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !5164, metadata !DIExpression()), !dbg !5192
  store ptr null, ptr %mnt, align 8, !dbg !5192
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode2) #11, !dbg !5193
  call void @llvm.dbg.declare(metadata ptr %inode2, metadata !5165, metadata !DIExpression()), !dbg !5194
  store ptr null, ptr %inode2, align 8, !dbg !5194
  call void @llvm.lifetime.start.p0(i64 8, ptr %moved) #11, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %moved, metadata !5166, metadata !DIExpression()), !dbg !5196
  call void @llvm.lifetime.start.p0(i64 4, ptr %inode2_type) #11, !dbg !5197
  call void @llvm.dbg.declare(metadata ptr %inode2_type, metadata !5167, metadata !DIExpression()), !dbg !5198
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5199
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5168, metadata !DIExpression()), !dbg !5200
  store i32 0, ptr %ret, align 4, !dbg !5200
  call void @llvm.lifetime.start.p0(i64 4, ptr %test_mask) #11, !dbg !5201
  call void @llvm.dbg.declare(metadata ptr %test_mask, metadata !5169, metadata !DIExpression()), !dbg !5202
  call void @llvm.lifetime.start.p0(i64 4, ptr %marks_mask) #11, !dbg !5201
  call void @llvm.dbg.declare(metadata ptr %marks_mask, metadata !5170, metadata !DIExpression()), !dbg !5203
  %4 = load ptr, ptr %path, align 8, !dbg !5204
  %tobool = icmp ne ptr %4, null, !dbg !5204
  br i1 %tobool, label %if.then, label %if.end, !dbg !5206

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %path, align 8, !dbg !5207
  %mnt2 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 0, !dbg !5208
  %6 = load ptr, ptr %mnt2, align 8, !dbg !5208
  %call3 = call ptr @real_mount(ptr noundef %6) #10, !dbg !5209
  store ptr %call3, ptr %mnt, align 8, !dbg !5210
  br label %if.end, !dbg !5211

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !5212
  %tobool4 = icmp ne ptr %7, null, !dbg !5212
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !5214

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %dir.addr, align 8, !dbg !5215
  store ptr %8, ptr %inode.addr, align 8, !dbg !5217
  %9 = load i32, ptr %mask.addr, align 4, !dbg !5218
  %and = and i32 %9, 268435456, !dbg !5220
  %tobool6 = icmp ne i32 %and, 0, !dbg !5220
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5221

if.then7:                                         ; preds = %if.then5
  %10 = load ptr, ptr %data.addr, align 8, !dbg !5222
  %11 = load i32, ptr %data_type.addr, align 4, !dbg !5224
  %call8 = call ptr @fsnotify_data_dentry(ptr noundef %10, i32 noundef %11) #10, !dbg !5225
  store ptr %call8, ptr %moved, align 8, !dbg !5226
  %12 = load ptr, ptr %moved, align 8, !dbg !5227
  %d_parent = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 3, !dbg !5228
  %13 = load ptr, ptr %d_parent, align 8, !dbg !5228
  %d_inode = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5, !dbg !5229
  %14 = load ptr, ptr %d_inode, align 8, !dbg !5229
  store ptr %14, ptr %inode2, align 8, !dbg !5230
  store i32 4, ptr %inode2_type, align 4, !dbg !5231
  br label %if.end9, !dbg !5232

if.end9:                                          ; preds = %if.then7, %if.then5
  br label %if.end14, !dbg !5233

if.else:                                          ; preds = %if.end
  %15 = load i32, ptr %mask.addr, align 4, !dbg !5234
  %and10 = and i32 %15, 134217728, !dbg !5236
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5236
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5237

if.then12:                                        ; preds = %if.else
  %16 = load ptr, ptr %dir.addr, align 8, !dbg !5238
  store ptr %16, ptr %inode2, align 8, !dbg !5240
  store i32 3, ptr %inode2_type, align 4, !dbg !5241
  br label %if.end13, !dbg !5242

if.end13:                                         ; preds = %if.then12, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end9
  %17 = load ptr, ptr %sb, align 8, !dbg !5243
  %s_fsnotify_marks = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 34, !dbg !5245
  %18 = load ptr, ptr %s_fsnotify_marks, align 8, !dbg !5245
  %tobool15 = icmp ne ptr %18, null, !dbg !5243
  br i1 %tobool15, label %if.end28, label %land.lhs.true, !dbg !5246

land.lhs.true:                                    ; preds = %if.end14
  %19 = load ptr, ptr %mnt, align 8, !dbg !5247
  %tobool16 = icmp ne ptr %19, null, !dbg !5247
  br i1 %tobool16, label %lor.lhs.false, label %land.lhs.true18, !dbg !5248

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load ptr, ptr %mnt, align 8, !dbg !5249
  %mnt_fsnotify_marks = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 20, !dbg !5250
  %21 = load ptr, ptr %mnt_fsnotify_marks, align 8, !dbg !5250
  %tobool17 = icmp ne ptr %21, null, !dbg !5249
  br i1 %tobool17, label %if.end28, label %land.lhs.true18, !dbg !5251

land.lhs.true18:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %22 = load ptr, ptr %inode.addr, align 8, !dbg !5252
  %tobool19 = icmp ne ptr %22, null, !dbg !5252
  br i1 %tobool19, label %lor.lhs.false20, label %land.lhs.true22, !dbg !5253

lor.lhs.false20:                                  ; preds = %land.lhs.true18
  %23 = load ptr, ptr %inode.addr, align 8, !dbg !5254
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 46, !dbg !5255
  %24 = load ptr, ptr %i_fsnotify_marks, align 8, !dbg !5255
  %tobool21 = icmp ne ptr %24, null, !dbg !5254
  br i1 %tobool21, label %if.end28, label %land.lhs.true22, !dbg !5256

land.lhs.true22:                                  ; preds = %lor.lhs.false20, %land.lhs.true18
  %25 = load ptr, ptr %inode2, align 8, !dbg !5257
  %tobool23 = icmp ne ptr %25, null, !dbg !5257
  br i1 %tobool23, label %lor.lhs.false24, label %if.then27, !dbg !5258

lor.lhs.false24:                                  ; preds = %land.lhs.true22
  %26 = load ptr, ptr %inode2, align 8, !dbg !5259
  %i_fsnotify_marks25 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 46, !dbg !5260
  %27 = load ptr, ptr %i_fsnotify_marks25, align 8, !dbg !5260
  %tobool26 = icmp ne ptr %27, null, !dbg !5259
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !5261

if.then27:                                        ; preds = %lor.lhs.false24, %land.lhs.true22
  store i32 0, ptr %retval, align 4, !dbg !5262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5262

if.end28:                                         ; preds = %lor.lhs.false24, %lor.lhs.false20, %lor.lhs.false, %if.end14
  %28 = load ptr, ptr %sb, align 8, !dbg !5263
  %s_fsnotify_mask = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33, !dbg !5264
  %29 = load i32, ptr %s_fsnotify_mask, align 64, !dbg !5264
  store i32 %29, ptr %marks_mask, align 4, !dbg !5265
  %30 = load ptr, ptr %mnt, align 8, !dbg !5266
  %tobool29 = icmp ne ptr %30, null, !dbg !5266
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5268

if.then30:                                        ; preds = %if.end28
  %31 = load ptr, ptr %mnt, align 8, !dbg !5269
  %mnt_fsnotify_mask = getelementptr inbounds %struct.mount, ptr %31, i32 0, i32 21, !dbg !5270
  %32 = load i32, ptr %mnt_fsnotify_mask, align 8, !dbg !5270
  %33 = load i32, ptr %marks_mask, align 4, !dbg !5271
  %or = or i32 %33, %32, !dbg !5271
  store i32 %or, ptr %marks_mask, align 4, !dbg !5271
  br label %if.end31, !dbg !5272

if.end31:                                         ; preds = %if.then30, %if.end28
  %34 = load ptr, ptr %inode.addr, align 8, !dbg !5273
  %tobool32 = icmp ne ptr %34, null, !dbg !5273
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !5275

if.then33:                                        ; preds = %if.end31
  %35 = load ptr, ptr %inode.addr, align 8, !dbg !5276
  %i_fsnotify_mask = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 45, !dbg !5277
  %36 = load i32, ptr %i_fsnotify_mask, align 4, !dbg !5277
  %37 = load i32, ptr %marks_mask, align 4, !dbg !5278
  %or34 = or i32 %37, %36, !dbg !5278
  store i32 %or34, ptr %marks_mask, align 4, !dbg !5278
  br label %if.end35, !dbg !5279

if.end35:                                         ; preds = %if.then33, %if.end31
  %38 = load ptr, ptr %inode2, align 8, !dbg !5280
  %tobool36 = icmp ne ptr %38, null, !dbg !5280
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !5282

if.then37:                                        ; preds = %if.end35
  %39 = load ptr, ptr %inode2, align 8, !dbg !5283
  %i_fsnotify_mask38 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 45, !dbg !5284
  %40 = load i32, ptr %i_fsnotify_mask38, align 4, !dbg !5284
  %41 = load i32, ptr %marks_mask, align 4, !dbg !5285
  %or39 = or i32 %41, %40, !dbg !5285
  store i32 %or39, ptr %marks_mask, align 4, !dbg !5285
  br label %if.end40, !dbg !5286

if.end40:                                         ; preds = %if.then37, %if.end35
  %42 = load i32, ptr %mask.addr, align 4, !dbg !5287
  %and41 = and i32 %42, 268959743, !dbg !5288
  store i32 %and41, ptr %test_mask, align 4, !dbg !5289
  %43 = load i32, ptr %test_mask, align 4, !dbg !5290
  %44 = load i32, ptr %marks_mask, align 4, !dbg !5292
  %and42 = and i32 %43, %44, !dbg !5293
  %tobool43 = icmp ne i32 %and42, 0, !dbg !5293
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !5294

if.then44:                                        ; preds = %if.end40
  store i32 0, ptr %retval, align 4, !dbg !5295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5295

if.end45:                                         ; preds = %if.end40
  %call46 = call i32 @srcu_read_lock(ptr noundef @fsnotify_mark_srcu) #10, !dbg !5296
  %srcu_idx = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 3, !dbg !5297
  store i32 %call46, ptr %srcu_idx, align 4, !dbg !5298
  %45 = load ptr, ptr %sb, align 8, !dbg !5299
  %s_fsnotify_marks47 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 34, !dbg !5300
  %call48 = call ptr @fsnotify_first_mark(ptr noundef %s_fsnotify_marks47) #10, !dbg !5301
  %marks = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 0, !dbg !5302
  %arrayidx = getelementptr [5 x ptr], ptr %marks, i64 0, i64 2, !dbg !5303
  store ptr %call48, ptr %arrayidx, align 8, !dbg !5304
  %46 = load ptr, ptr %mnt, align 8, !dbg !5305
  %tobool49 = icmp ne ptr %46, null, !dbg !5305
  br i1 %tobool49, label %if.then50, label %if.end55, !dbg !5307

if.then50:                                        ; preds = %if.end45
  %47 = load ptr, ptr %mnt, align 8, !dbg !5308
  %mnt_fsnotify_marks51 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 20, !dbg !5310
  %call52 = call ptr @fsnotify_first_mark(ptr noundef %mnt_fsnotify_marks51) #10, !dbg !5311
  %marks53 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 0, !dbg !5312
  %arrayidx54 = getelementptr [5 x ptr], ptr %marks53, i64 0, i64 1, !dbg !5313
  store ptr %call52, ptr %arrayidx54, align 8, !dbg !5314
  br label %if.end55, !dbg !5315

if.end55:                                         ; preds = %if.then50, %if.end45
  %48 = load ptr, ptr %inode.addr, align 8, !dbg !5316
  %tobool56 = icmp ne ptr %48, null, !dbg !5316
  br i1 %tobool56, label %if.then57, label %if.end62, !dbg !5318

if.then57:                                        ; preds = %if.end55
  %49 = load ptr, ptr %inode.addr, align 8, !dbg !5319
  %i_fsnotify_marks58 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 46, !dbg !5321
  %call59 = call ptr @fsnotify_first_mark(ptr noundef %i_fsnotify_marks58) #10, !dbg !5322
  %marks60 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 0, !dbg !5323
  %arrayidx61 = getelementptr [5 x ptr], ptr %marks60, i64 0, i64 0, !dbg !5324
  store ptr %call59, ptr %arrayidx61, align 8, !dbg !5325
  br label %if.end62, !dbg !5326

if.end62:                                         ; preds = %if.then57, %if.end55
  %50 = load ptr, ptr %inode2, align 8, !dbg !5327
  %tobool63 = icmp ne ptr %50, null, !dbg !5327
  br i1 %tobool63, label %if.then64, label %if.end69, !dbg !5329

if.then64:                                        ; preds = %if.end62
  %51 = load ptr, ptr %inode2, align 8, !dbg !5330
  %i_fsnotify_marks65 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 46, !dbg !5332
  %call66 = call ptr @fsnotify_first_mark(ptr noundef %i_fsnotify_marks65) #10, !dbg !5333
  %marks67 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 0, !dbg !5334
  %52 = load i32, ptr %inode2_type, align 4, !dbg !5335
  %idxprom = sext i32 %52 to i64, !dbg !5336
  %arrayidx68 = getelementptr [5 x ptr], ptr %marks67, i64 0, i64 %idxprom, !dbg !5336
  store ptr %call66, ptr %arrayidx68, align 8, !dbg !5337
  br label %if.end69, !dbg !5338

if.end69:                                         ; preds = %if.then64, %if.end62
  br label %while.cond, !dbg !5339

while.cond:                                       ; preds = %if.end77, %if.end69
  %call70 = call zeroext i1 @fsnotify_iter_select_report_types(ptr noundef %iter_info) #10, !dbg !5340
  br i1 %call70, label %while.body, label %while.end, !dbg !5339

while.body:                                       ; preds = %while.cond
  %53 = load i32, ptr %mask.addr, align 4, !dbg !5341
  %54 = load ptr, ptr %data.addr, align 8, !dbg !5343
  %55 = load i32, ptr %data_type.addr, align 4, !dbg !5344
  %56 = load ptr, ptr %dir.addr, align 8, !dbg !5345
  %57 = load ptr, ptr %file_name.addr, align 8, !dbg !5346
  %58 = load i32, ptr %cookie.addr, align 4, !dbg !5347
  %call71 = call i32 @send_to_group(i32 noundef %53, ptr noundef %54, i32 noundef %55, ptr noundef %56, ptr noundef %57, i32 noundef %58, ptr noundef %iter_info) #10, !dbg !5348
  store i32 %call71, ptr %ret, align 4, !dbg !5349
  %59 = load i32, ptr %ret, align 4, !dbg !5350
  %tobool72 = icmp ne i32 %59, 0, !dbg !5350
  br i1 %tobool72, label %land.lhs.true73, label %if.end77, !dbg !5352

land.lhs.true73:                                  ; preds = %while.body
  %60 = load i32, ptr %mask.addr, align 4, !dbg !5353
  %and74 = and i32 %60, 458752, !dbg !5354
  %tobool75 = icmp ne i32 %and74, 0, !dbg !5354
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !5355

if.then76:                                        ; preds = %land.lhs.true73
  br label %out, !dbg !5356

if.end77:                                         ; preds = %land.lhs.true73, %while.body
  call void @fsnotify_iter_next(ptr noundef %iter_info) #10, !dbg !5357
  br label %while.cond, !dbg !5339, !llvm.loop !5358

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %ret, align 4, !dbg !5360
  br label %out, !dbg !5361

out:                                              ; preds = %while.end, %if.then76
  call void @llvm.dbg.label(metadata !5171), !dbg !5362
  %srcu_idx78 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 3, !dbg !5363
  %61 = load i32, ptr %srcu_idx78, align 4, !dbg !5363
  call void @srcu_read_unlock(ptr noundef @fsnotify_mark_srcu, i32 noundef %61) #10, !dbg !5364
  %62 = load i32, ptr %ret, align 4, !dbg !5365
  store i32 %62, ptr %retval, align 4, !dbg !5366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5366

cleanup:                                          ; preds = %out, %if.then44, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %marks_mask) #11, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 4, ptr %test_mask) #11, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 4, ptr %inode2_type) #11, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 8, ptr %moved) #11, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode2) #11, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #11, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 56, ptr %iter_info) #11, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #11, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #11, !dbg !5367
  %63 = load i32, ptr %retval, align 4, !dbg !5367
  ret i32 %63, !dbg !5367
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5368 dso_local void @release_dentry_name_snapshot(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5371 dso_local void @dput(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_data_sb(ptr noundef %data, i32 noundef %data_type) #2 align 16 !dbg !5372 {
entry:
  %retval = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5376, metadata !DIExpression()), !dbg !5378
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !5377, metadata !DIExpression()), !dbg !5379
  %0 = load i32, ptr %data_type.addr, align 4, !dbg !5380
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %sw.bb2
    i32 4, label %sw.bb4
  ], !dbg !5381

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5382
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9, !dbg !5384
  %2 = load ptr, ptr %i_sb, align 8, !dbg !5384
  store ptr %2, ptr %retval, align 8, !dbg !5385
  br label %return, !dbg !5385

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5386
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9, !dbg !5387
  %4 = load ptr, ptr %d_sb, align 8, !dbg !5387
  store ptr %4, ptr %retval, align 8, !dbg !5388
  br label %return, !dbg !5388

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5389
  %dentry = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1, !dbg !5390
  %6 = load ptr, ptr %dentry, align 8, !dbg !5390
  %d_sb3 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9, !dbg !5391
  %7 = load ptr, ptr %d_sb3, align 8, !dbg !5391
  store ptr %7, ptr %retval, align 8, !dbg !5392
  br label %return, !dbg !5392

sw.bb4:                                           ; preds = %entry
  %8 = load ptr, ptr %data.addr, align 8, !dbg !5393
  %sb = getelementptr inbounds %struct.fs_error_report, ptr %8, i32 0, i32 2, !dbg !5394
  %9 = load ptr, ptr %sb, align 8, !dbg !5394
  store ptr %9, ptr %retval, align 8, !dbg !5395
  br label %return, !dbg !5395

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5396
  br label %return, !dbg !5396

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %10 = load ptr, ptr %retval, align 8, !dbg !5397
  ret ptr %10, !dbg !5397
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_data_dentry(ptr noundef %data, i32 noundef %data_type) #2 align 16 !dbg !5398 {
entry:
  %retval = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5402, metadata !DIExpression()), !dbg !5404
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !5403, metadata !DIExpression()), !dbg !5405
  %0 = load i32, ptr %data_type.addr, align 4, !dbg !5406
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !5407

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5408
  store ptr %1, ptr %retval, align 8, !dbg !5410
  br label %return, !dbg !5410

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5411
  %dentry = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1, !dbg !5412
  %3 = load ptr, ptr %dentry, align 8, !dbg !5412
  store ptr %3, ptr %retval, align 8, !dbg !5413
  br label %return, !dbg !5413

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5414
  br label %return, !dbg !5414

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %4 = load ptr, ptr %retval, align 8, !dbg !5415
  ret ptr %4, !dbg !5415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @srcu_read_lock(ptr noundef %ssp) #2 align 16 !dbg !5416 {
entry:
  %ssp.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %ssp, ptr %ssp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ssp.addr, metadata !5420, metadata !DIExpression()), !dbg !5422
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #11, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5421, metadata !DIExpression()), !dbg !5424
  %0 = load ptr, ptr %ssp.addr, align 8, !dbg !5425
  call void @srcu_check_nmi_safety(ptr noundef %0, i1 noundef zeroext false) #10, !dbg !5426
  %1 = load ptr, ptr %ssp.addr, align 8, !dbg !5427
  %call = call i32 @__srcu_read_lock(ptr noundef %1) #10, !dbg !5428
  store i32 %call, ptr %retval1, align 4, !dbg !5429
  br label %do.body, !dbg !5430

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5431

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5431

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %retval1, align 4, !dbg !5433
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #11, !dbg !5434
  ret i32 %2, !dbg !5435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_first_mark(ptr noundef %connp) #0 align 16 !dbg !5436 {
entry:
  %connp.addr = alloca ptr, align 8
  %conn = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__UNIQUE_ID_rcu300 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__UNIQUE_ID_rcu302 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  store ptr %connp, ptr %connp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connp.addr, metadata !5441, metadata !DIExpression()), !dbg !5453
  call void @llvm.lifetime.start.p0(i64 8, ptr %conn) #11, !dbg !5454
  call void @llvm.dbg.declare(metadata ptr %conn, metadata !5442, metadata !DIExpression()), !dbg !5455
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #11, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5443, metadata !DIExpression()), !dbg !5457
  store ptr null, ptr %node, align 8, !dbg !5457
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu300) #11, !dbg !5458
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu300, metadata !5444, metadata !DIExpression()), !dbg !5458
  br label %do.body, !dbg !5459

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5461

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5461

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %connp.addr, align 8, !dbg !5459
  %1 = load volatile ptr, ptr %0, align 8, !dbg !5459
  store ptr %1, ptr %tmp, align 8, !dbg !5461
  %2 = load ptr, ptr %tmp, align 8, !dbg !5459
  store ptr %2, ptr %__UNIQUE_ID_rcu300, align 8, !dbg !5458
  br label %do.body1, !dbg !5458

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !5463

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5463

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu300, align 8, !dbg !5458
  store ptr %3, ptr %tmp4, align 8, !dbg !5463
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu300) #11, !dbg !5465
  %4 = load ptr, ptr %tmp4, align 8, !dbg !5458
  store ptr %4, ptr %conn, align 8, !dbg !5466
  %5 = load ptr, ptr %conn, align 8, !dbg !5467
  %tobool = icmp ne ptr %5, null, !dbg !5467
  br i1 %tobool, label %if.then, label %if.end, !dbg !5468

if.then:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu302) #11, !dbg !5469
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu302, metadata !5446, metadata !DIExpression()), !dbg !5469
  br label %do.body5, !dbg !5470

do.body5:                                         ; preds = %if.then
  br label %do.cond6, !dbg !5472

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5472

do.end7:                                          ; preds = %do.cond6
  %6 = load ptr, ptr %conn, align 8, !dbg !5470
  %list = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %6, i32 0, i32 5, !dbg !5470
  %first = getelementptr inbounds %struct.hlist_head, ptr %list, i32 0, i32 0, !dbg !5470
  %7 = load volatile ptr, ptr %first, align 8, !dbg !5470
  store ptr %7, ptr %tmp8, align 8, !dbg !5472
  %8 = load ptr, ptr %tmp8, align 8, !dbg !5470
  store ptr %8, ptr %__UNIQUE_ID_rcu302, align 8, !dbg !5469
  br label %do.body9, !dbg !5469

do.body9:                                         ; preds = %do.end7
  br label %do.cond10, !dbg !5474

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5474

do.end11:                                         ; preds = %do.cond10
  %9 = load ptr, ptr %__UNIQUE_ID_rcu302, align 8, !dbg !5469
  store ptr %9, ptr %tmp12, align 8, !dbg !5474
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu302) #11, !dbg !5476
  %10 = load ptr, ptr %tmp12, align 8, !dbg !5469
  store ptr %10, ptr %node, align 8, !dbg !5477
  br label %if.end, !dbg !5478

if.end:                                           ; preds = %do.end11, %do.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #11, !dbg !5479
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !5449, metadata !DIExpression()), !dbg !5479
  %11 = load ptr, ptr %node, align 8, !dbg !5479
  store ptr %11, ptr %____ptr, align 8, !dbg !5479
  %12 = load ptr, ptr %____ptr, align 8, !dbg !5479
  %tobool14 = icmp ne ptr %12, null, !dbg !5479
  br i1 %tobool14, label %cond.true, label %cond.false, !dbg !5479

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5451, metadata !DIExpression()), !dbg !5480
  %13 = load ptr, ptr %____ptr, align 8, !dbg !5480
  store ptr %13, ptr %__mptr, align 8, !dbg !5480
  %14 = load ptr, ptr %__mptr, align 8, !dbg !5480
  %add.ptr = getelementptr i8, ptr %14, i64 -40, !dbg !5480
  store ptr %add.ptr, ptr %tmp15, align 8, !dbg !5480
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5479
  %15 = load ptr, ptr %tmp15, align 8, !dbg !5480
  br label %cond.end, !dbg !5479

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5479

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %15, %cond.true ], [ null, %cond.false ], !dbg !5479
  store ptr %cond, ptr %tmp13, align 8, !dbg !5479
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #11, !dbg !5481
  %16 = load ptr, ptr %tmp13, align 8, !dbg !5479
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #11, !dbg !5482
  call void @llvm.lifetime.end.p0(i64 8, ptr %conn) #11, !dbg !5482
  ret ptr %16, !dbg !5483
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fsnotify_iter_select_report_types(ptr noundef %iter_info) #0 align 16 !dbg !5484 {
entry:
  %retval = alloca i1, align 1
  %iter_info.addr = alloca ptr, align 8
  %max_prio_group = alloca ptr, align 8
  %mark = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !5488, metadata !DIExpression()), !dbg !5492
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_prio_group) #11, !dbg !5493
  call void @llvm.dbg.declare(metadata ptr %max_prio_group, metadata !5489, metadata !DIExpression()), !dbg !5494
  store ptr null, ptr %max_prio_group, align 8, !dbg !5494
  call void @llvm.lifetime.start.p0(i64 8, ptr %mark) #11, !dbg !5495
  call void @llvm.dbg.declare(metadata ptr %mark, metadata !5490, metadata !DIExpression()), !dbg !5496
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #11, !dbg !5497
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5491, metadata !DIExpression()), !dbg !5498
  store i32 0, ptr %type, align 4, !dbg !5499
  br label %for.cond, !dbg !5499

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %type, align 4, !dbg !5501
  %cmp = icmp slt i32 %0, 5, !dbg !5501
  br i1 %cmp, label %for.body, label %for.end, !dbg !5499

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %iter_info.addr, align 8, !dbg !5503
  %marks = getelementptr inbounds %struct.fsnotify_iter_info, ptr %1, i32 0, i32 0, !dbg !5505
  %2 = load i32, ptr %type, align 4, !dbg !5506
  %idxprom = sext i32 %2 to i64, !dbg !5503
  %arrayidx = getelementptr [5 x ptr], ptr %marks, i64 0, i64 %idxprom, !dbg !5503
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5503
  store ptr %3, ptr %mark, align 8, !dbg !5507
  %4 = load ptr, ptr %mark, align 8, !dbg !5508
  %tobool = icmp ne ptr %4, null, !dbg !5508
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5510

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %max_prio_group, align 8, !dbg !5511
  %6 = load ptr, ptr %mark, align 8, !dbg !5512
  %group = getelementptr inbounds %struct.fsnotify_mark, ptr %6, i32 0, i32 2, !dbg !5513
  %7 = load ptr, ptr %group, align 8, !dbg !5513
  %call = call i32 @fsnotify_compare_groups(ptr noundef %5, ptr noundef %7) #10, !dbg !5514
  %cmp1 = icmp sgt i32 %call, 0, !dbg !5515
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5516

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %mark, align 8, !dbg !5517
  %group2 = getelementptr inbounds %struct.fsnotify_mark, ptr %8, i32 0, i32 2, !dbg !5518
  %9 = load ptr, ptr %group2, align 8, !dbg !5518
  store ptr %9, ptr %max_prio_group, align 8, !dbg !5519
  br label %if.end, !dbg !5520

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5521

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %type, align 4, !dbg !5501
  %inc = add i32 %10, 1, !dbg !5501
  store i32 %inc, ptr %type, align 4, !dbg !5501
  br label %for.cond, !dbg !5501, !llvm.loop !5522

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %max_prio_group, align 8, !dbg !5524
  %tobool3 = icmp ne ptr %11, null, !dbg !5524
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5526

if.then4:                                         ; preds = %for.end
  store i1 false, ptr %retval, align 1, !dbg !5527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5527

if.end5:                                          ; preds = %for.end
  %12 = load ptr, ptr %max_prio_group, align 8, !dbg !5528
  %13 = load ptr, ptr %iter_info.addr, align 8, !dbg !5529
  %current_group = getelementptr inbounds %struct.fsnotify_iter_info, ptr %13, i32 0, i32 1, !dbg !5530
  store ptr %12, ptr %current_group, align 8, !dbg !5531
  %14 = load ptr, ptr %iter_info.addr, align 8, !dbg !5532
  %report_mask = getelementptr inbounds %struct.fsnotify_iter_info, ptr %14, i32 0, i32 2, !dbg !5533
  store i32 0, ptr %report_mask, align 8, !dbg !5534
  store i32 0, ptr %type, align 4, !dbg !5535
  br label %for.cond6, !dbg !5535

for.cond6:                                        ; preds = %for.inc28, %if.end5
  %15 = load i32, ptr %type, align 4, !dbg !5537
  %cmp7 = icmp slt i32 %15, 5, !dbg !5537
  br i1 %cmp7, label %for.body8, label %for.end30, !dbg !5535

for.body8:                                        ; preds = %for.cond6
  %16 = load ptr, ptr %iter_info.addr, align 8, !dbg !5539
  %marks9 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %16, i32 0, i32 0, !dbg !5541
  %17 = load i32, ptr %type, align 4, !dbg !5542
  %idxprom10 = sext i32 %17 to i64, !dbg !5539
  %arrayidx11 = getelementptr [5 x ptr], ptr %marks9, i64 0, i64 %idxprom10, !dbg !5539
  %18 = load ptr, ptr %arrayidx11, align 8, !dbg !5539
  store ptr %18, ptr %mark, align 8, !dbg !5543
  %19 = load ptr, ptr %mark, align 8, !dbg !5544
  %tobool12 = icmp ne ptr %19, null, !dbg !5544
  br i1 %tobool12, label %land.lhs.true13, label %if.end27, !dbg !5546

land.lhs.true13:                                  ; preds = %for.body8
  %20 = load ptr, ptr %mark, align 8, !dbg !5547
  %group14 = getelementptr inbounds %struct.fsnotify_mark, ptr %20, i32 0, i32 2, !dbg !5548
  %21 = load ptr, ptr %group14, align 8, !dbg !5548
  %22 = load ptr, ptr %iter_info.addr, align 8, !dbg !5549
  %current_group15 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %22, i32 0, i32 1, !dbg !5550
  %23 = load ptr, ptr %current_group15, align 8, !dbg !5550
  %cmp16 = icmp eq ptr %21, %23, !dbg !5551
  br i1 %cmp16, label %if.then17, label %if.end27, !dbg !5552

if.then17:                                        ; preds = %land.lhs.true13
  %24 = load i32, ptr %type, align 4, !dbg !5553
  %cmp18 = icmp eq i32 %24, 3, !dbg !5556
  br i1 %cmp18, label %land.lhs.true19, label %if.end26, !dbg !5557

land.lhs.true19:                                  ; preds = %if.then17
  %25 = load ptr, ptr %mark, align 8, !dbg !5558
  %mask = getelementptr inbounds %struct.fsnotify_mark, ptr %25, i32 0, i32 0, !dbg !5559
  %26 = load i32, ptr %mask, align 8, !dbg !5559
  %and = and i32 %26, 134217728, !dbg !5560
  %tobool20 = icmp ne i32 %and, 0, !dbg !5560
  br i1 %tobool20, label %if.end26, label %land.lhs.true21, !dbg !5561

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %27 = load ptr, ptr %mark, align 8, !dbg !5562
  %call22 = call i32 @fsnotify_ignore_mask(ptr noundef %27) #10, !dbg !5563
  %and23 = and i32 %call22, 134217728, !dbg !5564
  %tobool24 = icmp ne i32 %and23, 0, !dbg !5564
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !5565

if.then25:                                        ; preds = %land.lhs.true21
  br label %for.inc28, !dbg !5566

if.end26:                                         ; preds = %land.lhs.true21, %land.lhs.true19, %if.then17
  %28 = load ptr, ptr %iter_info.addr, align 8, !dbg !5567
  %29 = load i32, ptr %type, align 4, !dbg !5568
  call void @fsnotify_iter_set_report_type(ptr noundef %28, i32 noundef %29) #10, !dbg !5569
  br label %if.end27, !dbg !5570

if.end27:                                         ; preds = %if.end26, %land.lhs.true13, %for.body8
  br label %for.inc28, !dbg !5571

for.inc28:                                        ; preds = %if.end27, %if.then25
  %30 = load i32, ptr %type, align 4, !dbg !5537
  %inc29 = add i32 %30, 1, !dbg !5537
  store i32 %inc29, ptr %type, align 4, !dbg !5537
  br label %for.cond6, !dbg !5537, !llvm.loop !5572

for.end30:                                        ; preds = %for.cond6
  store i1 true, ptr %retval, align 1, !dbg !5574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5574

cleanup:                                          ; preds = %for.end30, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #11, !dbg !5575
  call void @llvm.lifetime.end.p0(i64 8, ptr %mark) #11, !dbg !5575
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_prio_group) #11, !dbg !5575
  %31 = load i1, ptr %retval, align 1, !dbg !5575
  ret i1 %31, !dbg !5575
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @send_to_group(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %file_name, i32 noundef %cookie, ptr noundef %iter_info) #0 align 16 !dbg !5576 {
entry:
  %retval = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %file_name.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %iter_info.addr = alloca ptr, align 8
  %group = alloca ptr, align 8
  %test_mask = alloca i32, align 4
  %marks_mask = alloca i32, align 4
  %marks_ignore_mask = alloca i32, align 4
  %is_dir = alloca i8, align 1
  %mark = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5580, metadata !DIExpression()), !dbg !5594
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5581, metadata !DIExpression()), !dbg !5595
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !5582, metadata !DIExpression()), !dbg !5596
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5583, metadata !DIExpression()), !dbg !5597
  store ptr %file_name, ptr %file_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_name.addr, metadata !5584, metadata !DIExpression()), !dbg !5598
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5585, metadata !DIExpression()), !dbg !5599
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !5586, metadata !DIExpression()), !dbg !5600
  call void @llvm.lifetime.start.p0(i64 8, ptr %group) #11, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %group, metadata !5587, metadata !DIExpression()), !dbg !5602
  store ptr null, ptr %group, align 8, !dbg !5602
  call void @llvm.lifetime.start.p0(i64 4, ptr %test_mask) #11, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %test_mask, metadata !5588, metadata !DIExpression()), !dbg !5604
  %0 = load i32, ptr %mask.addr, align 4, !dbg !5605
  %and = and i32 %0, 268959743, !dbg !5606
  store i32 %and, ptr %test_mask, align 4, !dbg !5604
  call void @llvm.lifetime.start.p0(i64 4, ptr %marks_mask) #11, !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %marks_mask, metadata !5589, metadata !DIExpression()), !dbg !5608
  store i32 0, ptr %marks_mask, align 4, !dbg !5608
  call void @llvm.lifetime.start.p0(i64 4, ptr %marks_ignore_mask) #11, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %marks_ignore_mask, metadata !5590, metadata !DIExpression()), !dbg !5610
  store i32 0, ptr %marks_ignore_mask, align 4, !dbg !5610
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_dir) #11, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %is_dir, metadata !5591, metadata !DIExpression()), !dbg !5612
  %1 = load i32, ptr %mask.addr, align 4, !dbg !5613
  %and1 = and i32 %1, 1073741824, !dbg !5614
  %tobool = icmp ne i32 %and1, 0, !dbg !5613
  %frombool = zext i1 %tobool to i8, !dbg !5612
  store i8 %frombool, ptr %is_dir, align 1, !dbg !5612
  call void @llvm.lifetime.start.p0(i64 8, ptr %mark) #11, !dbg !5615
  call void @llvm.dbg.declare(metadata ptr %mark, metadata !5592, metadata !DIExpression()), !dbg !5616
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #11, !dbg !5617
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5593, metadata !DIExpression()), !dbg !5618
  %2 = load ptr, ptr %iter_info.addr, align 8, !dbg !5619
  %report_mask = getelementptr inbounds %struct.fsnotify_iter_info, ptr %2, i32 0, i32 2, !dbg !5621
  %3 = load i32, ptr %report_mask, align 8, !dbg !5621
  %tobool2 = icmp ne i32 %3, 0, !dbg !5619
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5622

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5623

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %mask.addr, align 4, !dbg !5624
  %and3 = and i32 %4, 2, !dbg !5626
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5626
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !5627

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %type, align 4, !dbg !5628
  br label %for.cond, !dbg !5628

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load ptr, ptr %iter_info.addr, align 8, !dbg !5631
  %6 = load i32, ptr %type, align 4, !dbg !5631
  %call = call i32 @fsnotify_iter_step(ptr noundef %5, i32 noundef %6, ptr noundef %mark) #10, !dbg !5631
  store i32 %call, ptr %type, align 4, !dbg !5631
  %7 = load i32, ptr %type, align 4, !dbg !5631
  %cmp = icmp slt i32 %7, 5, !dbg !5631
  br i1 %cmp, label %for.body, label %for.end, !dbg !5628

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %mark, align 8, !dbg !5633
  %flags = getelementptr inbounds %struct.fsnotify_mark, ptr %8, i32 0, i32 8, !dbg !5636
  %9 = load i32, ptr %flags, align 4, !dbg !5636
  %and6 = and i32 %9, 256, !dbg !5637
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5637
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5638

if.then8:                                         ; preds = %for.body
  %10 = load ptr, ptr %mark, align 8, !dbg !5639
  %ignore_mask = getelementptr inbounds %struct.fsnotify_mark, ptr %10, i32 0, i32 7, !dbg !5640
  store i32 0, ptr %ignore_mask, align 8, !dbg !5641
  br label %if.end9, !dbg !5639

if.end9:                                          ; preds = %if.then8, %for.body
  br label %for.inc, !dbg !5642

for.inc:                                          ; preds = %if.end9
  %11 = load i32, ptr %type, align 4, !dbg !5631
  %inc = add i32 %11, 1, !dbg !5631
  store i32 %inc, ptr %type, align 4, !dbg !5631
  br label %for.cond, !dbg !5631, !llvm.loop !5643

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !5645

if.end10:                                         ; preds = %for.end, %if.end
  store i32 0, ptr %type, align 4, !dbg !5646
  br label %for.cond11, !dbg !5646

for.cond11:                                       ; preds = %for.inc20, %if.end10
  %12 = load ptr, ptr %iter_info.addr, align 8, !dbg !5648
  %13 = load i32, ptr %type, align 4, !dbg !5648
  %call12 = call i32 @fsnotify_iter_step(ptr noundef %12, i32 noundef %13, ptr noundef %mark) #10, !dbg !5648
  store i32 %call12, ptr %type, align 4, !dbg !5648
  %14 = load i32, ptr %type, align 4, !dbg !5648
  %cmp13 = icmp slt i32 %14, 5, !dbg !5648
  br i1 %cmp13, label %for.body14, label %for.end22, !dbg !5646

for.body14:                                       ; preds = %for.cond11
  %15 = load ptr, ptr %mark, align 8, !dbg !5650
  %group15 = getelementptr inbounds %struct.fsnotify_mark, ptr %15, i32 0, i32 2, !dbg !5652
  %16 = load ptr, ptr %group15, align 8, !dbg !5652
  store ptr %16, ptr %group, align 8, !dbg !5653
  %17 = load ptr, ptr %mark, align 8, !dbg !5654
  %mask16 = getelementptr inbounds %struct.fsnotify_mark, ptr %17, i32 0, i32 0, !dbg !5655
  %18 = load i32, ptr %mask16, align 8, !dbg !5655
  %19 = load i32, ptr %marks_mask, align 4, !dbg !5656
  %or = or i32 %19, %18, !dbg !5656
  store i32 %or, ptr %marks_mask, align 4, !dbg !5656
  %20 = load ptr, ptr %mark, align 8, !dbg !5657
  %21 = load i8, ptr %is_dir, align 1, !dbg !5658, !range !4919, !noundef !837
  %tobool17 = trunc i8 %21 to i1, !dbg !5658
  %22 = load i32, ptr %type, align 4, !dbg !5659
  %call18 = call i32 @fsnotify_effective_ignore_mask(ptr noundef %20, i1 noundef zeroext %tobool17, i32 noundef %22) #10, !dbg !5660
  %23 = load i32, ptr %marks_ignore_mask, align 4, !dbg !5661
  %or19 = or i32 %23, %call18, !dbg !5661
  store i32 %or19, ptr %marks_ignore_mask, align 4, !dbg !5661
  br label %for.inc20, !dbg !5662

for.inc20:                                        ; preds = %for.body14
  %24 = load i32, ptr %type, align 4, !dbg !5648
  %inc21 = add i32 %24, 1, !dbg !5648
  store i32 %inc21, ptr %type, align 4, !dbg !5648
  br label %for.cond11, !dbg !5648, !llvm.loop !5663

for.end22:                                        ; preds = %for.cond11
  store i32 0, ptr %tmp, align 4, !dbg !5665
  %25 = load i32, ptr %tmp, align 4, !dbg !5668
  %26 = load i32, ptr %test_mask, align 4, !dbg !5669
  %27 = load i32, ptr %marks_mask, align 4, !dbg !5671
  %and23 = and i32 %26, %27, !dbg !5672
  %28 = load i32, ptr %marks_ignore_mask, align 4, !dbg !5673
  %not = xor i32 %28, -1, !dbg !5674
  %and24 = and i32 %and23, %not, !dbg !5675
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5675
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !5676

if.then26:                                        ; preds = %for.end22
  store i32 0, ptr %retval, align 4, !dbg !5677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5677

if.end27:                                         ; preds = %for.end22
  %29 = load ptr, ptr %group, align 8, !dbg !5678
  %ops = getelementptr inbounds %struct.fsnotify_group, ptr %29, i32 0, i32 0, !dbg !5680
  %30 = load ptr, ptr %ops, align 8, !dbg !5680
  %handle_event = getelementptr inbounds %struct.fsnotify_ops, ptr %30, i32 0, i32 0, !dbg !5681
  %31 = load ptr, ptr %handle_event, align 8, !dbg !5681
  %tobool28 = icmp ne ptr %31, null, !dbg !5678
  br i1 %tobool28, label %if.then29, label %if.end33, !dbg !5682

if.then29:                                        ; preds = %if.end27
  %32 = load ptr, ptr %group, align 8, !dbg !5683
  %ops30 = getelementptr inbounds %struct.fsnotify_group, ptr %32, i32 0, i32 0, !dbg !5685
  %33 = load ptr, ptr %ops30, align 8, !dbg !5685
  %handle_event31 = getelementptr inbounds %struct.fsnotify_ops, ptr %33, i32 0, i32 0, !dbg !5686
  %34 = load ptr, ptr %handle_event31, align 8, !dbg !5686
  %35 = load ptr, ptr %group, align 8, !dbg !5687
  %36 = load i32, ptr %mask.addr, align 4, !dbg !5688
  %37 = load ptr, ptr %data.addr, align 8, !dbg !5689
  %38 = load i32, ptr %data_type.addr, align 4, !dbg !5690
  %39 = load ptr, ptr %dir.addr, align 8, !dbg !5691
  %40 = load ptr, ptr %file_name.addr, align 8, !dbg !5692
  %41 = load i32, ptr %cookie.addr, align 4, !dbg !5693
  %42 = load ptr, ptr %iter_info.addr, align 8, !dbg !5694
  %call32 = call i32 %34(ptr noundef %35, i32 noundef %36, ptr noundef %37, i32 noundef %38, ptr noundef %39, ptr noundef %40, i32 noundef %41, ptr noundef %42) #10, !dbg !5683
  store i32 %call32, ptr %retval, align 4, !dbg !5695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5695

if.end33:                                         ; preds = %if.end27
  %43 = load ptr, ptr %group, align 8, !dbg !5696
  %44 = load i32, ptr %mask.addr, align 4, !dbg !5697
  %45 = load ptr, ptr %data.addr, align 8, !dbg !5698
  %46 = load i32, ptr %data_type.addr, align 4, !dbg !5699
  %47 = load ptr, ptr %dir.addr, align 8, !dbg !5700
  %48 = load ptr, ptr %file_name.addr, align 8, !dbg !5701
  %49 = load i32, ptr %cookie.addr, align 4, !dbg !5702
  %50 = load ptr, ptr %iter_info.addr, align 8, !dbg !5703
  %call34 = call i32 @fsnotify_handle_event(ptr noundef %43, i32 noundef %44, ptr noundef %45, i32 noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef %49, ptr noundef %50) #10, !dbg !5704
  store i32 %call34, ptr %retval, align 4, !dbg !5705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5705

cleanup:                                          ; preds = %if.end33, %if.then29, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #11, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 8, ptr %mark) #11, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_dir) #11, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 4, ptr %marks_ignore_mask) #11, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 4, ptr %marks_mask) #11, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 4, ptr %test_mask) #11, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 8, ptr %group) #11, !dbg !5706
  %51 = load i32, ptr %retval, align 4, !dbg !5706
  ret i32 %51, !dbg !5706
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_iter_next(ptr noundef %iter_info) #0 align 16 !dbg !5707 {
entry:
  %iter_info.addr = alloca ptr, align 8
  %mark = alloca ptr, align 8
  %type = alloca i32, align 4
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !5711, metadata !DIExpression()), !dbg !5714
  call void @llvm.lifetime.start.p0(i64 8, ptr %mark) #11, !dbg !5715
  call void @llvm.dbg.declare(metadata ptr %mark, metadata !5712, metadata !DIExpression()), !dbg !5716
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #11, !dbg !5717
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5713, metadata !DIExpression()), !dbg !5718
  store i32 0, ptr %type, align 4, !dbg !5719
  br label %for.cond, !dbg !5719

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %type, align 4, !dbg !5721
  %cmp = icmp slt i32 %0, 5, !dbg !5721
  br i1 %cmp, label %for.body, label %for.end, !dbg !5719

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %iter_info.addr, align 8, !dbg !5723
  %marks = getelementptr inbounds %struct.fsnotify_iter_info, ptr %1, i32 0, i32 0, !dbg !5725
  %2 = load i32, ptr %type, align 4, !dbg !5726
  %idxprom = sext i32 %2 to i64, !dbg !5723
  %arrayidx = getelementptr [5 x ptr], ptr %marks, i64 0, i64 %idxprom, !dbg !5723
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5723
  store ptr %3, ptr %mark, align 8, !dbg !5727
  %4 = load ptr, ptr %mark, align 8, !dbg !5728
  %tobool = icmp ne ptr %4, null, !dbg !5728
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5730

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %mark, align 8, !dbg !5731
  %group = getelementptr inbounds %struct.fsnotify_mark, ptr %5, i32 0, i32 2, !dbg !5732
  %6 = load ptr, ptr %group, align 8, !dbg !5732
  %7 = load ptr, ptr %iter_info.addr, align 8, !dbg !5733
  %current_group = getelementptr inbounds %struct.fsnotify_iter_info, ptr %7, i32 0, i32 1, !dbg !5734
  %8 = load ptr, ptr %current_group, align 8, !dbg !5734
  %cmp1 = icmp eq ptr %6, %8, !dbg !5735
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5736

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %iter_info.addr, align 8, !dbg !5737
  %marks2 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %9, i32 0, i32 0, !dbg !5738
  %10 = load i32, ptr %type, align 4, !dbg !5739
  %idxprom3 = sext i32 %10 to i64, !dbg !5737
  %arrayidx4 = getelementptr [5 x ptr], ptr %marks2, i64 0, i64 %idxprom3, !dbg !5737
  %11 = load ptr, ptr %arrayidx4, align 8, !dbg !5737
  %call = call ptr @fsnotify_next_mark(ptr noundef %11) #10, !dbg !5740
  %12 = load ptr, ptr %iter_info.addr, align 8, !dbg !5741
  %marks5 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %12, i32 0, i32 0, !dbg !5742
  %13 = load i32, ptr %type, align 4, !dbg !5743
  %idxprom6 = sext i32 %13 to i64, !dbg !5741
  %arrayidx7 = getelementptr [5 x ptr], ptr %marks5, i64 0, i64 %idxprom6, !dbg !5741
  store ptr %call, ptr %arrayidx7, align 8, !dbg !5744
  br label %if.end, !dbg !5741

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5745

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %type, align 4, !dbg !5721
  %inc = add i32 %14, 1, !dbg !5721
  store i32 %inc, ptr %type, align 4, !dbg !5721
  br label %for.cond, !dbg !5721, !llvm.loop !5746

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #11, !dbg !5748
  call void @llvm.lifetime.end.p0(i64 8, ptr %mark) #11, !dbg !5748
  ret void, !dbg !5748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @srcu_read_unlock(ptr noundef %ssp, i32 noundef %idx) #2 align 16 !dbg !5749 {
entry:
  %ssp.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ssp, ptr %ssp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ssp.addr, metadata !5753, metadata !DIExpression()), !dbg !5760
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5754, metadata !DIExpression()), !dbg !5761
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5755, metadata !DIExpression()), !dbg !5762
  %0 = load i32, ptr %idx.addr, align 4, !dbg !5762
  %and = and i32 %0, -2, !dbg !5762
  %tobool = icmp ne i32 %and, 0, !dbg !5762
  %lnot = xor i1 %tobool, true, !dbg !5762
  %lnot1 = xor i1 %lnot, true, !dbg !5762
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5762
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5762
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5763
  %tobool2 = icmp ne i32 %1, 0, !dbg !5763
  %lnot3 = xor i1 %tobool2, true, !dbg !5763
  %lnot5 = xor i1 %lnot3, true, !dbg !5763
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5763
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5763
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5763
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5763
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5762

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5763

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5764
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5757, metadata !DIExpression()), !dbg !5764
  store i32 2307, ptr %__flags, align 4, !dbg !5764
  br label %do.body8, !dbg !5764

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5765

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5765

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5764

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5767
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 285, i32 %2, i64 12) #11, !dbg !5767, !srcloc !5769
  br label %do.cond10, !dbg !5767

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5767

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5764

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5770

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5770

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5763
  br label %do.cond15, !dbg !5764

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5764

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5764

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5762
  %tobool17 = icmp ne i32 %3, 0, !dbg !5762
  %lnot18 = xor i1 %tobool17, true, !dbg !5762
  %lnot20 = xor i1 %lnot18, true, !dbg !5762
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5762
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5762
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5762
  store i64 %expval23, ptr %tmp, align 8, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5772
  %4 = load i64, ptr %tmp, align 8, !dbg !5762
  %5 = load ptr, ptr %ssp.addr, align 8, !dbg !5773
  call void @srcu_check_nmi_safety(ptr noundef %5, i1 noundef zeroext false) #10, !dbg !5774
  br label %do.body24, !dbg !5775

do.body24:                                        ; preds = %if.end
  br label %do.end26, !dbg !5776

do.end26:                                         ; preds = %do.body24
  %6 = load ptr, ptr %ssp.addr, align 8, !dbg !5778
  %7 = load i32, ptr %idx.addr, align 4, !dbg !5779
  call void @__srcu_read_unlock(ptr noundef %6, i32 noundef %7) #10, !dbg !5780
  ret void, !dbg !5781
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_fsnotify__308_615_fsnotify_init1() #8 section ".init.text" align 16 !dbg !5782 {
entry:
  %call = call i32 @fsnotify_init() #12, !dbg !5783
  ret i32 %call, !dbg !5783
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @fsnotify_init() #8 section ".init.text" align 16 !dbg !5784 {
entry:
  %ret = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5786, metadata !DIExpression()), !dbg !5788
  br label %do.body, !dbg !5789

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5790

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5790

do.end:                                           ; preds = %do.cond
  %call = call i32 @init_srcu_struct(ptr noundef @fsnotify_mark_srcu) #10, !dbg !5792
  store i32 %call, ptr %ret, align 4, !dbg !5793
  %0 = load i32, ptr %ret, align 4, !dbg !5794
  %tobool = icmp ne i32 %0, 0, !dbg !5794
  br i1 %tobool, label %if.then, label %if.end, !dbg !5796

if.then:                                          ; preds = %do.end
  call void (ptr, ...) @panic(ptr noundef @.str.2) #13, !dbg !5797
  unreachable, !dbg !5797

if.end:                                           ; preds = %do.end
  %call1 = call ptr @kmem_cache_create(ptr noundef @.str.3, i32 noundef 32, i32 noundef 8, i32 noundef 262144, ptr noundef null) #10, !dbg !5798
  store ptr %call1, ptr @fsnotify_mark_connector_cachep, align 8, !dbg !5799
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5800
  ret i32 0, !dbg !5801
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5802 dso_local void @fsnotify_destroy_marks(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !5805 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5811, metadata !DIExpression()), !dbg !5812
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5813
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #10, !dbg !5814
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5815
  %call = call i32 @raw_atomic_read(ptr noundef %1) #10, !dbg !5816
  ret i32 %call, !dbg !5817
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5818 dso_local void @__iget(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5819 dso_local void @iput(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_inode(ptr noundef %inode, i32 noundef %mask) #2 align 16 !dbg !5820 {
entry:
  %inode.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5825, metadata !DIExpression()), !dbg !5827
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5826, metadata !DIExpression()), !dbg !5828
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5829
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5831
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5831
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 43, !dbg !5832
  %call = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #10, !dbg !5833
  %cmp = icmp eq i64 %call, 0, !dbg !5834
  br i1 %cmp, label %if.then, label %if.end, !dbg !5835

if.then:                                          ; preds = %entry
  br label %return, !dbg !5836

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5837
  %i_mode = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 0, !dbg !5837
  %3 = load i16, ptr %i_mode, align 8, !dbg !5837
  %conv = zext i16 %3 to i32, !dbg !5837
  %and = and i32 %conv, 61440, !dbg !5837
  %cmp1 = icmp eq i32 %and, 16384, !dbg !5837
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !5839

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %mask.addr, align 4, !dbg !5840
  %or = or i32 %4, 1073741824, !dbg !5840
  store i32 %or, ptr %mask.addr, align 4, !dbg !5840
  br label %if.end4, !dbg !5841

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %mask.addr, align 4, !dbg !5842
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5843
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !5844
  %call5 = call i32 @fsnotify(i32 noundef %5, ptr noundef %6, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %7, i32 noundef 0) #10, !dbg !5845
  br label %return, !dbg !5846

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !5846
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_inode_delete(ptr noundef %inode) #2 align 16 !dbg !5847 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5849, metadata !DIExpression()), !dbg !5850
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5851
  call void @__fsnotify_inode_delete(ptr noundef %0) #10, !dbg !5852
  ret void, !dbg !5853
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #2 align 16 !dbg !5854 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5858, metadata !DIExpression()), !dbg !5861
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !5859, metadata !DIExpression()), !dbg !5862
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !5860, metadata !DIExpression()), !dbg !5863
  ret void, !dbg !5864
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #3 align 16 !dbg !4499 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !5865
  %0 = load ptr, ptr %tmp, align 8, !dbg !5865
  %call = call i32 %0() #10, !dbg !5867
  ret i32 %call, !dbg !5868
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5869 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5877, metadata !DIExpression()), !dbg !5879
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5878, metadata !DIExpression()), !dbg !5880
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5881
  %1 = load i64, ptr %size.addr, align 8, !dbg !5882
  %conv = trunc i64 %1 to i32, !dbg !5882
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !5883
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5884
  %3 = load i64, ptr %size.addr, align 8, !dbg !5884
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !5884
  ret void, !dbg !5885
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !5886 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5891
  %call = call i32 @arch_atomic_read(ptr noundef %0) #10, !dbg !5892
  ret i32 %call, !dbg !5893
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !5894 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5899, metadata !DIExpression()), !dbg !5901
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5900, metadata !DIExpression()), !dbg !5902
  ret i1 true, !dbg !5903
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !5904 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5909, metadata !DIExpression()), !dbg !5912
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5910, metadata !DIExpression()), !dbg !5913
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5911, metadata !DIExpression()), !dbg !5914
  ret void, !dbg !5915
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !5916 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5921
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5921
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5921
  ret i32 %1, !dbg !5922
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #3 align 16 !dbg !5923 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5927
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #10, !dbg !5928
  ret i64 %call, !dbg !5929
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #3 align 16 !dbg !5930 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5936, metadata !DIExpression()), !dbg !5937
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5938
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #10, !dbg !5939
  ret i64 %call, !dbg !5940
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #3 align 16 !dbg !5941 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5944, metadata !DIExpression()), !dbg !5945
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5946
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5946
  %1 = load volatile i64, ptr %counter, align 8, !dbg !5946
  ret i64 %1, !dbg !5947
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5948 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_parent_needed_mask(i32 noundef %mask) #2 align 16 !dbg !5949 {
entry:
  %retval = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5953, metadata !DIExpression()), !dbg !5954
  %0 = load i32, ptr %mask.addr, align 4, !dbg !5955
  %and = and i32 %0, 134217728, !dbg !5957
  %tobool = icmp ne i32 %and, 0, !dbg !5957
  br i1 %tobool, label %if.end, label %if.then, !dbg !5958

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5959
  br label %return, !dbg !5959

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mask.addr, align 4, !dbg !5960
  %and1 = and i32 %1, 462911, !dbg !5961
  store i32 %and1, ptr %retval, align 4, !dbg !5962
  br label %return, !dbg !5962

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5963
  ret i32 %2, !dbg !5963
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @srcu_check_nmi_safety(ptr noundef %ssp, i1 noundef zeroext %nmi_safe) #2 align 16 !dbg !5964 {
entry:
  %ssp.addr = alloca ptr, align 8
  %nmi_safe.addr = alloca i8, align 1
  store ptr %ssp, ptr %ssp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ssp.addr, metadata !5968, metadata !DIExpression()), !dbg !5970
  %frombool = zext i1 %nmi_safe to i8
  store i8 %frombool, ptr %nmi_safe.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %nmi_safe.addr, metadata !5969, metadata !DIExpression()), !dbg !5971
  ret void, !dbg !5972
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5973 dso_local i32 @__srcu_read_lock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5974 dso_local i32 @fsnotify_compare_groups(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_ignore_mask(ptr noundef %mark) #2 align 16 !dbg !5977 {
entry:
  %retval = alloca i32, align 4
  %mark.addr = alloca ptr, align 8
  %ignore_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mark, ptr %mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mark.addr, metadata !5981, metadata !DIExpression()), !dbg !5983
  call void @llvm.lifetime.start.p0(i64 4, ptr %ignore_mask) #11, !dbg !5984
  call void @llvm.dbg.declare(metadata ptr %ignore_mask, metadata !5982, metadata !DIExpression()), !dbg !5985
  %0 = load ptr, ptr %mark.addr, align 8, !dbg !5986
  %ignore_mask1 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 7, !dbg !5987
  %1 = load i32, ptr %ignore_mask1, align 8, !dbg !5987
  store i32 %1, ptr %ignore_mask, align 4, !dbg !5985
  %2 = load ptr, ptr %mark.addr, align 8, !dbg !5988
  %flags = getelementptr inbounds %struct.fsnotify_mark, ptr %2, i32 0, i32 8, !dbg !5990
  %3 = load i32, ptr %flags, align 4, !dbg !5990
  %and = and i32 %3, 1024, !dbg !5991
  %tobool = icmp ne i32 %and, 0, !dbg !5991
  br i1 %tobool, label %if.then, label %if.end, !dbg !5992

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ignore_mask, align 4, !dbg !5993
  store i32 %4, ptr %retval, align 4, !dbg !5994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5994

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %ignore_mask, align 4, !dbg !5995
  %or = or i32 %5, 1073741824, !dbg !5995
  store i32 %or, ptr %ignore_mask, align 4, !dbg !5995
  %6 = load i32, ptr %ignore_mask, align 4, !dbg !5996
  %and2 = and i32 %6, -134217729, !dbg !5996
  store i32 %and2, ptr %ignore_mask, align 4, !dbg !5996
  %7 = load ptr, ptr %mark.addr, align 8, !dbg !5997
  %mask = getelementptr inbounds %struct.fsnotify_mark, ptr %7, i32 0, i32 0, !dbg !5998
  %8 = load i32, ptr %mask, align 8, !dbg !5998
  %and3 = and i32 %8, 134217728, !dbg !5999
  %9 = load i32, ptr %ignore_mask, align 4, !dbg !6000
  %or4 = or i32 %9, %and3, !dbg !6000
  store i32 %or4, ptr %ignore_mask, align 4, !dbg !6000
  %10 = load i32, ptr %ignore_mask, align 4, !dbg !6001
  store i32 %10, ptr %retval, align 4, !dbg !6002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6002

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ignore_mask) #11, !dbg !6003
  %11 = load i32, ptr %retval, align 4, !dbg !6003
  ret i32 %11, !dbg !6003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_iter_set_report_type(ptr noundef %iter_info, i32 noundef %iter_type) #2 align 16 !dbg !6004 {
entry:
  %iter_info.addr = alloca ptr, align 8
  %iter_type.addr = alloca i32, align 4
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !6008, metadata !DIExpression()), !dbg !6010
  store i32 %iter_type, ptr %iter_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %iter_type.addr, metadata !6009, metadata !DIExpression()), !dbg !6011
  %0 = load i32, ptr %iter_type.addr, align 4, !dbg !6012
  %shl = shl i32 1, %0, !dbg !6013
  %1 = load ptr, ptr %iter_info.addr, align 8, !dbg !6014
  %report_mask = getelementptr inbounds %struct.fsnotify_iter_info, ptr %1, i32 0, i32 2, !dbg !6015
  %2 = load i32, ptr %report_mask, align 8, !dbg !6016
  %or = or i32 %2, %shl, !dbg !6016
  store i32 %or, ptr %report_mask, align 8, !dbg !6016
  ret void, !dbg !6017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_iter_step(ptr noundef %iter, i32 noundef %type, ptr noundef %markp) #2 align 16 !dbg !6018 {
entry:
  %iter.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %markp.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6023, metadata !DIExpression()), !dbg !6026
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6024, metadata !DIExpression()), !dbg !6027
  store ptr %markp, ptr %markp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %markp.addr, metadata !6025, metadata !DIExpression()), !dbg !6028
  br label %while.cond, !dbg !6029

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %type.addr, align 4, !dbg !6030
  %cmp = icmp slt i32 %0, 5, !dbg !6031
  br i1 %cmp, label %while.body, label %while.end, !dbg !6029

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !6032
  %2 = load i32, ptr %type.addr, align 4, !dbg !6034
  %call = call ptr @fsnotify_iter_mark(ptr noundef %1, i32 noundef %2) #10, !dbg !6035
  %3 = load ptr, ptr %markp.addr, align 8, !dbg !6036
  store ptr %call, ptr %3, align 8, !dbg !6037
  %4 = load ptr, ptr %markp.addr, align 8, !dbg !6038
  %5 = load ptr, ptr %4, align 8, !dbg !6040
  %tobool = icmp ne ptr %5, null, !dbg !6040
  br i1 %tobool, label %if.then, label %if.end, !dbg !6041

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !6042

if.end:                                           ; preds = %while.body
  %6 = load i32, ptr %type.addr, align 4, !dbg !6043
  %inc = add i32 %6, 1, !dbg !6043
  store i32 %inc, ptr %type.addr, align 4, !dbg !6043
  br label %while.cond, !dbg !6029, !llvm.loop !6044

while.end:                                        ; preds = %if.then, %while.cond
  %7 = load i32, ptr %type.addr, align 4, !dbg !6046
  ret i32 %7, !dbg !6047
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_effective_ignore_mask(ptr noundef %mark, i1 noundef zeroext %is_dir, i32 noundef %iter_type) #2 align 16 !dbg !6048 {
entry:
  %retval = alloca i32, align 4
  %mark.addr = alloca ptr, align 8
  %is_dir.addr = alloca i8, align 1
  %iter_type.addr = alloca i32, align 4
  %ignore_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mark, ptr %mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mark.addr, metadata !6052, metadata !DIExpression()), !dbg !6056
  %frombool = zext i1 %is_dir to i8
  store i8 %frombool, ptr %is_dir.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_dir.addr, metadata !6053, metadata !DIExpression()), !dbg !6057
  store i32 %iter_type, ptr %iter_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %iter_type.addr, metadata !6054, metadata !DIExpression()), !dbg !6058
  call void @llvm.lifetime.start.p0(i64 4, ptr %ignore_mask) #11, !dbg !6059
  call void @llvm.dbg.declare(metadata ptr %ignore_mask, metadata !6055, metadata !DIExpression()), !dbg !6060
  %0 = load ptr, ptr %mark.addr, align 8, !dbg !6061
  %call = call i32 @fsnotify_ignored_events(ptr noundef %0) #10, !dbg !6062
  store i32 %call, ptr %ignore_mask, align 4, !dbg !6060
  %1 = load i32, ptr %ignore_mask, align 4, !dbg !6063
  %tobool = icmp ne i32 %1, 0, !dbg !6063
  br i1 %tobool, label %if.end, label %if.then, !dbg !6065

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6066

if.end:                                           ; preds = %entry
  %2 = load i8, ptr %is_dir.addr, align 1, !dbg !6067, !range !4919, !noundef !837
  %tobool1 = trunc i8 %2 to i1, !dbg !6067
  br i1 %tobool1, label %if.end3, label %land.lhs.true, !dbg !6069

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, ptr %iter_type.addr, align 4, !dbg !6070
  %cmp = icmp ne i32 %3, 3, !dbg !6071
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6072

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, ptr %ignore_mask, align 4, !dbg !6073
  store i32 %4, ptr %retval, align 4, !dbg !6074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6074

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %mark.addr, align 8, !dbg !6075
  %call4 = call i32 @fsnotify_ignore_mask(ptr noundef %5) #10, !dbg !6076
  store i32 %call4, ptr %ignore_mask, align 4, !dbg !6077
  %6 = load i32, ptr %ignore_mask, align 4, !dbg !6078
  %7 = load i8, ptr %is_dir.addr, align 1, !dbg !6080, !range !4919, !noundef !837
  %tobool5 = trunc i8 %7 to i1, !dbg !6080
  %8 = load i32, ptr %iter_type.addr, align 4, !dbg !6081
  %call6 = call zeroext i1 @fsnotify_mask_applicable(i32 noundef %6, i1 noundef zeroext %tobool5, i32 noundef %8) #10, !dbg !6082
  br i1 %call6, label %if.end8, label %if.then7, !dbg !6083

if.then7:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !6084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6084

if.end8:                                          ; preds = %if.end3
  %9 = load i32, ptr %ignore_mask, align 4, !dbg !6085
  %and = and i32 %9, 268959743, !dbg !6086
  store i32 %and, ptr %retval, align 4, !dbg !6087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6087

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ignore_mask) #11, !dbg !6088
  %10 = load i32, ptr %retval, align 4, !dbg !6088
  ret i32 %10, !dbg !6088
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_handle_event(ptr noundef %group, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie, ptr noundef %iter_info) #0 align 16 !dbg !6089 {
entry:
  %retval = alloca i32, align 4
  %group.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %iter_info.addr = alloca ptr, align 8
  %inode_mark = alloca ptr, align 8
  %parent_mark = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on27 = alloca i32, align 4
  %__flags44 = alloca i32, align 4
  %tmp57 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %moved = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !6093, metadata !DIExpression()), !dbg !6118
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6094, metadata !DIExpression()), !dbg !6119
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6095, metadata !DIExpression()), !dbg !6120
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !6096, metadata !DIExpression()), !dbg !6121
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6097, metadata !DIExpression()), !dbg !6122
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6098, metadata !DIExpression()), !dbg !6123
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6099, metadata !DIExpression()), !dbg !6124
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !6100, metadata !DIExpression()), !dbg !6125
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode_mark) #11, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %inode_mark, metadata !6101, metadata !DIExpression()), !dbg !6127
  %0 = load ptr, ptr %iter_info.addr, align 8, !dbg !6128
  %call = call ptr @fsnotify_iter_inode_mark(ptr noundef %0) #10, !dbg !6129
  store ptr %call, ptr %inode_mark, align 8, !dbg !6127
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_mark) #11, !dbg !6130
  call void @llvm.dbg.declare(metadata ptr %parent_mark, metadata !6102, metadata !DIExpression()), !dbg !6131
  %1 = load ptr, ptr %iter_info.addr, align 8, !dbg !6132
  %call1 = call ptr @fsnotify_iter_parent_mark(ptr noundef %1) #10, !dbg !6133
  store ptr %call1, ptr %parent_mark, align 8, !dbg !6131
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6134
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6103, metadata !DIExpression()), !dbg !6135
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6136
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6104, metadata !DIExpression()), !dbg !6136
  %2 = load ptr, ptr %iter_info.addr, align 8, !dbg !6136
  %call2 = call ptr @fsnotify_iter_sb_mark(ptr noundef %2) #10, !dbg !6136
  %tobool = icmp ne ptr %call2, null, !dbg !6136
  %lnot = xor i1 %tobool, true, !dbg !6136
  %lnot3 = xor i1 %lnot, true, !dbg !6136
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6136
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6136
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6137
  %tobool4 = icmp ne i32 %3, 0, !dbg !6137
  %lnot5 = xor i1 %tobool4, true, !dbg !6137
  %lnot7 = xor i1 %lnot5, true, !dbg !6137
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6137
  %conv = sext i32 %lnot.ext8 to i64, !dbg !6137
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6137
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6137
  br i1 %tobool9, label %if.then, label %if.end, !dbg !6136

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6137

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6107, metadata !DIExpression()), !dbg !6138
  store i32 2307, ptr %__flags, align 4, !dbg !6138
  br label %do.body10, !dbg !6138

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !6139

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !6139

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !6138

do.body11:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6141
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 287, i32 %4, i64 12) #11, !dbg !6141, !srcloc !6143
  br label %do.cond12, !dbg !6141

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6141

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6138

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !6144

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6144

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6137
  br label %do.cond17, !dbg !6138

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6138

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !6138

if.end:                                           ; preds = %do.end18, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6136
  %tobool19 = icmp ne i32 %5, 0, !dbg !6136
  %lnot20 = xor i1 %tobool19, true, !dbg !6136
  %lnot22 = xor i1 %lnot20, true, !dbg !6136
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6136
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6136
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6136
  store i64 %expval25, ptr %tmp, align 8, !dbg !6137
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6146
  %6 = load i64, ptr %tmp, align 8, !dbg !6136
  %tobool26 = icmp ne i64 %6, 0, !dbg !6146
  br i1 %tobool26, label %if.then66, label %lor.lhs.false, !dbg !6147

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on27) #11, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on27, metadata !6110, metadata !DIExpression()), !dbg !6148
  %7 = load ptr, ptr %iter_info.addr, align 8, !dbg !6148
  %call28 = call ptr @fsnotify_iter_vfsmount_mark(ptr noundef %7) #10, !dbg !6148
  %tobool29 = icmp ne ptr %call28, null, !dbg !6148
  %lnot30 = xor i1 %tobool29, true, !dbg !6148
  %lnot32 = xor i1 %lnot30, true, !dbg !6148
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !6148
  store i32 %lnot.ext33, ptr %__ret_warn_on27, align 4, !dbg !6148
  %8 = load i32, ptr %__ret_warn_on27, align 4, !dbg !6149
  %tobool34 = icmp ne i32 %8, 0, !dbg !6149
  %lnot35 = xor i1 %tobool34, true, !dbg !6149
  %lnot37 = xor i1 %lnot35, true, !dbg !6149
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !6149
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !6149
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !6149
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !6149
  br i1 %tobool41, label %if.then42, label %if.end56, !dbg !6148

if.then42:                                        ; preds = %lor.lhs.false
  br label %do.body43, !dbg !6149

do.body43:                                        ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags44) #11, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %__flags44, metadata !6112, metadata !DIExpression()), !dbg !6150
  store i32 2307, ptr %__flags44, align 4, !dbg !6150
  br label %do.body45, !dbg !6150

do.body45:                                        ; preds = %do.body43
  br label %do.cond46, !dbg !6151

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !6151

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !6150

do.body48:                                        ; preds = %do.end47
  %9 = load i32, ptr %__flags44, align 4, !dbg !6153
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 288, i32 %9, i64 12) #11, !dbg !6153, !srcloc !6155
  br label %do.cond49, !dbg !6153

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !6153

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !6150

do.body51:                                        ; preds = %do.end50
  br label %do.cond52, !dbg !6156

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !6156

do.end53:                                         ; preds = %do.cond52
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags44) #11, !dbg !6149
  br label %do.cond54, !dbg !6150

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !6150

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !6150

if.end56:                                         ; preds = %do.end55, %lor.lhs.false
  %10 = load i32, ptr %__ret_warn_on27, align 4, !dbg !6148
  %tobool58 = icmp ne i32 %10, 0, !dbg !6148
  %lnot59 = xor i1 %tobool58, true, !dbg !6148
  %lnot61 = xor i1 %lnot59, true, !dbg !6148
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !6148
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !6148
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !6148
  store i64 %expval64, ptr %tmp57, align 8, !dbg !6149
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on27) #11, !dbg !6158
  %11 = load i64, ptr %tmp57, align 8, !dbg !6148
  %tobool65 = icmp ne i64 %11, 0, !dbg !6158
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !6159

if.then66:                                        ; preds = %if.end56, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91, !dbg !6160

if.end67:                                         ; preds = %if.end56
  %12 = load i32, ptr %mask.addr, align 4, !dbg !6161
  %and = and i32 %12, 268435456, !dbg !6162
  %tobool68 = icmp ne i32 %and, 0, !dbg !6162
  br i1 %tobool68, label %if.then69, label %if.end74, !dbg !6163

if.then69:                                        ; preds = %if.end67
  call void @llvm.lifetime.start.p0(i64 8, ptr %moved) #11, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %moved, metadata !6115, metadata !DIExpression()), !dbg !6165
  %13 = load ptr, ptr %data.addr, align 8, !dbg !6166
  %14 = load i32, ptr %data_type.addr, align 4, !dbg !6167
  %call70 = call ptr @fsnotify_data_dentry(ptr noundef %13, i32 noundef %14) #10, !dbg !6168
  store ptr %call70, ptr %moved, align 8, !dbg !6165
  %15 = load ptr, ptr %dir.addr, align 8, !dbg !6169
  %16 = load ptr, ptr %moved, align 8, !dbg !6171
  %d_parent = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 3, !dbg !6172
  %17 = load ptr, ptr %d_parent, align 8, !dbg !6172
  %d_inode = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5, !dbg !6173
  %18 = load ptr, ptr %d_inode, align 8, !dbg !6173
  %cmp = icmp ne ptr %15, %18, !dbg !6174
  br i1 %cmp, label %if.then72, label %if.end73, !dbg !6175

if.then72:                                        ; preds = %if.then69
  store i32 0, ptr %retval, align 4, !dbg !6176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6176

if.end73:                                         ; preds = %if.then69
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6177
  br label %cleanup, !dbg !6177

cleanup:                                          ; preds = %if.end73, %if.then72
  call void @llvm.lifetime.end.p0(i64 8, ptr %moved) #11, !dbg !6177
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup91 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end74, !dbg !6178

if.end74:                                         ; preds = %cleanup.cont, %if.end67
  %19 = load ptr, ptr %parent_mark, align 8, !dbg !6179
  %tobool75 = icmp ne ptr %19, null, !dbg !6179
  br i1 %tobool75, label %if.then76, label %if.end81, !dbg !6181

if.then76:                                        ; preds = %if.end74
  %20 = load ptr, ptr %group.addr, align 8, !dbg !6182
  %21 = load ptr, ptr %parent_mark, align 8, !dbg !6184
  %22 = load i32, ptr %mask.addr, align 4, !dbg !6185
  %23 = load ptr, ptr %data.addr, align 8, !dbg !6186
  %24 = load i32, ptr %data_type.addr, align 4, !dbg !6187
  %25 = load ptr, ptr %dir.addr, align 8, !dbg !6188
  %26 = load ptr, ptr %name.addr, align 8, !dbg !6189
  %call77 = call i32 @fsnotify_handle_inode_event(ptr noundef %20, ptr noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, ptr noundef %25, ptr noundef %26, i32 noundef 0) #10, !dbg !6190
  store i32 %call77, ptr %ret, align 4, !dbg !6191
  %27 = load i32, ptr %ret, align 4, !dbg !6192
  %tobool78 = icmp ne i32 %27, 0, !dbg !6192
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !6194

if.then79:                                        ; preds = %if.then76
  %28 = load i32, ptr %ret, align 4, !dbg !6195
  store i32 %28, ptr %retval, align 4, !dbg !6196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91, !dbg !6196

if.end80:                                         ; preds = %if.then76
  br label %if.end81, !dbg !6197

if.end81:                                         ; preds = %if.end80, %if.end74
  %29 = load ptr, ptr %inode_mark, align 8, !dbg !6198
  %tobool82 = icmp ne ptr %29, null, !dbg !6198
  br i1 %tobool82, label %if.end84, label %if.then83, !dbg !6200

if.then83:                                        ; preds = %if.end81
  store i32 0, ptr %retval, align 4, !dbg !6201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91, !dbg !6201

if.end84:                                         ; preds = %if.end81
  %30 = load i32, ptr %mask.addr, align 4, !dbg !6202
  %and85 = and i32 %30, -134217729, !dbg !6202
  store i32 %and85, ptr %mask.addr, align 4, !dbg !6202
  %31 = load i32, ptr %mask.addr, align 4, !dbg !6203
  %and86 = and i32 %31, 268436416, !dbg !6205
  %tobool87 = icmp ne i32 %and86, 0, !dbg !6205
  br i1 %tobool87, label %if.end89, label %if.then88, !dbg !6206

if.then88:                                        ; preds = %if.end84
  store ptr null, ptr %dir.addr, align 8, !dbg !6207
  store ptr null, ptr %name.addr, align 8, !dbg !6209
  br label %if.end89, !dbg !6210

if.end89:                                         ; preds = %if.then88, %if.end84
  %32 = load ptr, ptr %group.addr, align 8, !dbg !6211
  %33 = load ptr, ptr %inode_mark, align 8, !dbg !6212
  %34 = load i32, ptr %mask.addr, align 4, !dbg !6213
  %35 = load ptr, ptr %data.addr, align 8, !dbg !6214
  %36 = load i32, ptr %data_type.addr, align 4, !dbg !6215
  %37 = load ptr, ptr %dir.addr, align 8, !dbg !6216
  %38 = load ptr, ptr %name.addr, align 8, !dbg !6217
  %39 = load i32, ptr %cookie.addr, align 4, !dbg !6218
  %call90 = call i32 @fsnotify_handle_inode_event(ptr noundef %32, ptr noundef %33, i32 noundef %34, ptr noundef %35, i32 noundef %36, ptr noundef %37, ptr noundef %38, i32 noundef %39) #10, !dbg !6219
  store i32 %call90, ptr %retval, align 4, !dbg !6220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91, !dbg !6220

cleanup91:                                        ; preds = %if.end89, %if.then83, %if.then79, %cleanup, %if.then66
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6221
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_mark) #11, !dbg !6221
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode_mark) #11, !dbg !6221
  %40 = load i32, ptr %retval, align 4, !dbg !6221
  ret i32 %40, !dbg !6221
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_iter_mark(ptr noundef %iter_info, i32 noundef %iter_type) #2 align 16 !dbg !6222 {
entry:
  %retval = alloca ptr, align 8
  %iter_info.addr = alloca ptr, align 8
  %iter_type.addr = alloca i32, align 4
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !6226, metadata !DIExpression()), !dbg !6228
  store i32 %iter_type, ptr %iter_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %iter_type.addr, metadata !6227, metadata !DIExpression()), !dbg !6229
  %0 = load ptr, ptr %iter_info.addr, align 8, !dbg !6230
  %1 = load i32, ptr %iter_type.addr, align 4, !dbg !6232
  %call = call zeroext i1 @fsnotify_iter_should_report_type(ptr noundef %0, i32 noundef %1) #10, !dbg !6233
  br i1 %call, label %if.then, label %if.end, !dbg !6234

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %iter_info.addr, align 8, !dbg !6235
  %marks = getelementptr inbounds %struct.fsnotify_iter_info, ptr %2, i32 0, i32 0, !dbg !6236
  %3 = load i32, ptr %iter_type.addr, align 4, !dbg !6237
  %idxprom = sext i32 %3 to i64, !dbg !6235
  %arrayidx = getelementptr [5 x ptr], ptr %marks, i64 0, i64 %idxprom, !dbg !6235
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !6235
  store ptr %4, ptr %retval, align 8, !dbg !6238
  br label %return, !dbg !6238

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6239
  br label %return, !dbg !6239

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6240
  ret ptr %5, !dbg !6240
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fsnotify_iter_should_report_type(ptr noundef %iter_info, i32 noundef %iter_type) #2 align 16 !dbg !6241 {
entry:
  %iter_info.addr = alloca ptr, align 8
  %iter_type.addr = alloca i32, align 4
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !6245, metadata !DIExpression()), !dbg !6247
  store i32 %iter_type, ptr %iter_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %iter_type.addr, metadata !6246, metadata !DIExpression()), !dbg !6248
  %0 = load ptr, ptr %iter_info.addr, align 8, !dbg !6249
  %report_mask = getelementptr inbounds %struct.fsnotify_iter_info, ptr %0, i32 0, i32 2, !dbg !6250
  %1 = load i32, ptr %report_mask, align 8, !dbg !6250
  %2 = load i32, ptr %iter_type.addr, align 4, !dbg !6251
  %shl = shl i32 1, %2, !dbg !6252
  %and = and i32 %1, %shl, !dbg !6253
  %tobool = icmp ne i32 %and, 0, !dbg !6254
  ret i1 %tobool, !dbg !6255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_ignored_events(ptr noundef %mark) #2 align 16 !dbg !6256 {
entry:
  %mark.addr = alloca ptr, align 8
  store ptr %mark, ptr %mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mark.addr, metadata !6258, metadata !DIExpression()), !dbg !6259
  %0 = load ptr, ptr %mark.addr, align 8, !dbg !6260
  %ignore_mask = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 7, !dbg !6261
  %1 = load i32, ptr %ignore_mask, align 8, !dbg !6261
  %and = and i32 %1, 268959743, !dbg !6262
  ret i32 %and, !dbg !6263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fsnotify_mask_applicable(i32 noundef %mask, i1 noundef zeroext %is_dir, i32 noundef %iter_type) #2 align 16 !dbg !6264 {
entry:
  %retval = alloca i1, align 1
  %mask.addr = alloca i32, align 4
  %is_dir.addr = alloca i8, align 1
  %iter_type.addr = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6268, metadata !DIExpression()), !dbg !6271
  %frombool = zext i1 %is_dir to i8
  store i8 %frombool, ptr %is_dir.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_dir.addr, metadata !6269, metadata !DIExpression()), !dbg !6272
  store i32 %iter_type, ptr %iter_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %iter_type.addr, metadata !6270, metadata !DIExpression()), !dbg !6273
  %0 = load i8, ptr %is_dir.addr, align 1, !dbg !6274, !range !4919, !noundef !837
  %tobool = trunc i8 %0 to i1, !dbg !6274
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6276

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %mask.addr, align 4, !dbg !6277
  %and = and i32 %1, 1073741824, !dbg !6278
  %tobool1 = icmp ne i32 %and, 0, !dbg !6278
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6279

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !6280
  br label %return, !dbg !6280

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %iter_type.addr, align 4, !dbg !6281
  %cmp = icmp eq i32 %2, 3, !dbg !6283
  br i1 %cmp, label %land.lhs.true2, label %if.end6, !dbg !6284

land.lhs.true2:                                   ; preds = %if.end
  %3 = load i32, ptr %mask.addr, align 4, !dbg !6285
  %and3 = and i32 %3, 134217728, !dbg !6286
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6286
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6287

if.then5:                                         ; preds = %land.lhs.true2
  store i1 false, ptr %retval, align 1, !dbg !6288
  br label %return, !dbg !6288

if.end6:                                          ; preds = %land.lhs.true2, %if.end
  store i1 true, ptr %retval, align 1, !dbg !6289
  br label %return, !dbg !6289

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !6290
  ret i1 %4, !dbg !6290
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_iter_inode_mark(ptr noundef %iter_info) #2 align 16 !dbg !6291 {
entry:
  %iter_info.addr = alloca ptr, align 8
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !6295, metadata !DIExpression()), !dbg !6296
  %0 = load ptr, ptr %iter_info.addr, align 8, !dbg !6296
  %call = call ptr @fsnotify_iter_mark(ptr noundef %0, i32 noundef 0) #10, !dbg !6296
  ret ptr %call, !dbg !6296
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_iter_parent_mark(ptr noundef %iter_info) #2 align 16 !dbg !6297 {
entry:
  %iter_info.addr = alloca ptr, align 8
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !6299, metadata !DIExpression()), !dbg !6300
  %0 = load ptr, ptr %iter_info.addr, align 8, !dbg !6300
  %call = call ptr @fsnotify_iter_mark(ptr noundef %0, i32 noundef 3) #10, !dbg !6300
  ret ptr %call, !dbg !6300
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_iter_sb_mark(ptr noundef %iter_info) #2 align 16 !dbg !6301 {
entry:
  %iter_info.addr = alloca ptr, align 8
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  %0 = load ptr, ptr %iter_info.addr, align 8, !dbg !6304
  %call = call ptr @fsnotify_iter_mark(ptr noundef %0, i32 noundef 2) #10, !dbg !6304
  ret ptr %call, !dbg !6304
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_iter_vfsmount_mark(ptr noundef %iter_info) #2 align 16 !dbg !6305 {
entry:
  %iter_info.addr = alloca ptr, align 8
  store ptr %iter_info, ptr %iter_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_info.addr, metadata !6307, metadata !DIExpression()), !dbg !6308
  %0 = load ptr, ptr %iter_info.addr, align 8, !dbg !6308
  %call = call ptr @fsnotify_iter_mark(ptr noundef %0, i32 noundef 1) #10, !dbg !6308
  ret ptr %call, !dbg !6308
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_handle_inode_event(ptr noundef %group, ptr noundef %inode_mark, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie) #0 align 16 !dbg !6309 {
entry:
  %retval = alloca i32, align 4
  %group.addr = alloca ptr, align 8
  %inode_mark.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on30 = alloca i32, align 4
  %__flags49 = alloca i32, align 4
  %tmp62 = alloca i64, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !6313, metadata !DIExpression()), !dbg !6336
  store ptr %inode_mark, ptr %inode_mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode_mark.addr, metadata !6314, metadata !DIExpression()), !dbg !6337
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6315, metadata !DIExpression()), !dbg !6338
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6316, metadata !DIExpression()), !dbg !6339
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !6317, metadata !DIExpression()), !dbg !6340
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6318, metadata !DIExpression()), !dbg !6341
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6319, metadata !DIExpression()), !dbg !6342
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6320, metadata !DIExpression()), !dbg !6343
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #11, !dbg !6344
  call void @llvm.dbg.declare(metadata ptr %path, metadata !6321, metadata !DIExpression()), !dbg !6345
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6346
  %1 = load i32, ptr %data_type.addr, align 4, !dbg !6347
  %call = call ptr @fsnotify_data_path(ptr noundef %0, i32 noundef %1) #10, !dbg !6348
  store ptr %call, ptr %path, align 8, !dbg !6345
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #11, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6322, metadata !DIExpression()), !dbg !6350
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6351
  %3 = load i32, ptr %data_type.addr, align 4, !dbg !6352
  %call1 = call ptr @fsnotify_data_inode(ptr noundef %2, i32 noundef %3) #10, !dbg !6353
  store ptr %call1, ptr %inode, align 8, !dbg !6350
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #11, !dbg !6354
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6323, metadata !DIExpression()), !dbg !6355
  %4 = load ptr, ptr %group.addr, align 8, !dbg !6356
  %ops2 = getelementptr inbounds %struct.fsnotify_group, ptr %4, i32 0, i32 0, !dbg !6357
  %5 = load ptr, ptr %ops2, align 8, !dbg !6357
  store ptr %5, ptr %ops, align 8, !dbg !6355
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6324, metadata !DIExpression()), !dbg !6358
  %6 = load ptr, ptr %ops, align 8, !dbg !6358
  %handle_inode_event = getelementptr inbounds %struct.fsnotify_ops, ptr %6, i32 0, i32 1, !dbg !6358
  %7 = load ptr, ptr %handle_inode_event, align 8, !dbg !6358
  %tobool = icmp ne ptr %7, null, !dbg !6358
  %lnot = xor i1 %tobool, true, !dbg !6358
  %lnot3 = xor i1 %lnot, true, !dbg !6358
  %lnot4 = xor i1 %lnot3, true, !dbg !6358
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6358
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6358
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6359
  %tobool5 = icmp ne i32 %8, 0, !dbg !6359
  %lnot6 = xor i1 %tobool5, true, !dbg !6359
  %lnot8 = xor i1 %lnot6, true, !dbg !6359
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6359
  %conv = sext i32 %lnot.ext9 to i64, !dbg !6359
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6359
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6359
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6358

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6359

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6360
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6327, metadata !DIExpression()), !dbg !6360
  store i32 2307, ptr %__flags, align 4, !dbg !6360
  br label %do.body11, !dbg !6360

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !6361

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !6361

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !6360

do.body12:                                        ; preds = %do.end
  %9 = load i32, ptr %__flags, align 4, !dbg !6363
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 261, i32 %9, i64 12) #11, !dbg !6363, !srcloc !6365
  br label %do.cond13, !dbg !6363

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6363

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6360

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !6366

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6366

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6359
  br label %do.cond18, !dbg !6360

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6360

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !6360

if.end:                                           ; preds = %do.end19, %entry
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6358
  %tobool20 = icmp ne i32 %10, 0, !dbg !6358
  %lnot21 = xor i1 %tobool20, true, !dbg !6358
  %lnot23 = xor i1 %lnot21, true, !dbg !6358
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6358
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6358
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6358
  store i64 %expval26, ptr %tmp, align 8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6368
  %11 = load i64, ptr %tmp, align 8, !dbg !6358
  %tobool27 = icmp ne i64 %11, 0, !dbg !6368
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !6369

if.then28:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6370

if.end29:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on30) #11, !dbg !6371
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on30, metadata !6330, metadata !DIExpression()), !dbg !6371
  %12 = load ptr, ptr %inode, align 8, !dbg !6371
  %tobool31 = icmp ne ptr %12, null, !dbg !6371
  br i1 %tobool31, label %land.end, label %land.rhs, !dbg !6371

land.rhs:                                         ; preds = %if.end29
  %13 = load ptr, ptr %dir.addr, align 8, !dbg !6371
  %tobool32 = icmp ne ptr %13, null, !dbg !6371
  %lnot33 = xor i1 %tobool32, true, !dbg !6371
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end29
  %14 = phi i1 [ false, %if.end29 ], [ %lnot33, %land.rhs ], !dbg !6372
  %lnot35 = xor i1 %14, true, !dbg !6371
  %lnot37 = xor i1 %lnot35, true, !dbg !6371
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !6371
  store i32 %lnot.ext38, ptr %__ret_warn_on30, align 4, !dbg !6371
  %15 = load i32, ptr %__ret_warn_on30, align 4, !dbg !6373
  %tobool39 = icmp ne i32 %15, 0, !dbg !6373
  %lnot40 = xor i1 %tobool39, true, !dbg !6373
  %lnot42 = xor i1 %lnot40, true, !dbg !6373
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !6373
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !6373
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !6373
  %tobool46 = icmp ne i64 %expval45, 0, !dbg !6373
  br i1 %tobool46, label %if.then47, label %if.end61, !dbg !6371

if.then47:                                        ; preds = %land.end
  br label %do.body48, !dbg !6373

do.body48:                                        ; preds = %if.then47
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags49) #11, !dbg !6374
  call void @llvm.dbg.declare(metadata ptr %__flags49, metadata !6333, metadata !DIExpression()), !dbg !6374
  store i32 2307, ptr %__flags49, align 4, !dbg !6374
  br label %do.body50, !dbg !6374

do.body50:                                        ; preds = %do.body48
  br label %do.cond51, !dbg !6375

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !6375

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !6374

do.body53:                                        ; preds = %do.end52
  %16 = load i32, ptr %__flags49, align 4, !dbg !6377
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 264, i32 %16, i64 12) #11, !dbg !6377, !srcloc !6379
  br label %do.cond54, !dbg !6377

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !6377

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !6374

do.body56:                                        ; preds = %do.end55
  br label %do.cond57, !dbg !6380

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !6380

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags49) #11, !dbg !6373
  br label %do.cond59, !dbg !6374

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !6374

do.end60:                                         ; preds = %do.cond59
  br label %if.end61, !dbg !6374

if.end61:                                         ; preds = %do.end60, %land.end
  %17 = load i32, ptr %__ret_warn_on30, align 4, !dbg !6371
  %tobool63 = icmp ne i32 %17, 0, !dbg !6371
  %lnot64 = xor i1 %tobool63, true, !dbg !6371
  %lnot66 = xor i1 %lnot64, true, !dbg !6371
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !6371
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !6371
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0), !dbg !6371
  store i64 %expval69, ptr %tmp62, align 8, !dbg !6373
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on30) #11, !dbg !6382
  %18 = load i64, ptr %tmp62, align 8, !dbg !6371
  %tobool70 = icmp ne i64 %18, 0, !dbg !6382
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !6383

if.then71:                                        ; preds = %if.end61
  store i32 0, ptr %retval, align 4, !dbg !6384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6384

if.end72:                                         ; preds = %if.end61
  %19 = load ptr, ptr %inode_mark.addr, align 8, !dbg !6385
  %flags = getelementptr inbounds %struct.fsnotify_mark, ptr %19, i32 0, i32 8, !dbg !6387
  %20 = load i32, ptr %flags, align 4, !dbg !6387
  %and = and i32 %20, 16, !dbg !6388
  %tobool73 = icmp ne i32 %and, 0, !dbg !6388
  br i1 %tobool73, label %land.lhs.true, label %if.end79, !dbg !6389

land.lhs.true:                                    ; preds = %if.end72
  %21 = load ptr, ptr %path, align 8, !dbg !6390
  %tobool74 = icmp ne ptr %21, null, !dbg !6390
  br i1 %tobool74, label %land.lhs.true75, label %if.end79, !dbg !6391

land.lhs.true75:                                  ; preds = %land.lhs.true
  %22 = load ptr, ptr %path, align 8, !dbg !6392
  %dentry = getelementptr inbounds %struct.path, ptr %22, i32 0, i32 1, !dbg !6393
  %23 = load ptr, ptr %dentry, align 8, !dbg !6393
  %call76 = call i32 @d_unlinked(ptr noundef %23) #10, !dbg !6394
  %tobool77 = icmp ne i32 %call76, 0, !dbg !6394
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !6395

if.then78:                                        ; preds = %land.lhs.true75
  store i32 0, ptr %retval, align 4, !dbg !6396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6396

if.end79:                                         ; preds = %land.lhs.true75, %land.lhs.true, %if.end72
  %24 = load i32, ptr %mask.addr, align 4, !dbg !6397
  %25 = load ptr, ptr %inode_mark.addr, align 8, !dbg !6399
  %mask80 = getelementptr inbounds %struct.fsnotify_mark, ptr %25, i32 0, i32 0, !dbg !6400
  %26 = load i32, ptr %mask80, align 8, !dbg !6400
  %and81 = and i32 %24, %26, !dbg !6401
  %and82 = and i32 %and81, 268959743, !dbg !6402
  %tobool83 = icmp ne i32 %and82, 0, !dbg !6402
  br i1 %tobool83, label %if.end85, label %if.then84, !dbg !6403

if.then84:                                        ; preds = %if.end79
  store i32 0, ptr %retval, align 4, !dbg !6404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6404

if.end85:                                         ; preds = %if.end79
  %27 = load ptr, ptr %ops, align 8, !dbg !6405
  %handle_inode_event86 = getelementptr inbounds %struct.fsnotify_ops, ptr %27, i32 0, i32 1, !dbg !6406
  %28 = load ptr, ptr %handle_inode_event86, align 8, !dbg !6406
  %29 = load ptr, ptr %inode_mark.addr, align 8, !dbg !6407
  %30 = load i32, ptr %mask.addr, align 4, !dbg !6408
  %31 = load ptr, ptr %inode, align 8, !dbg !6409
  %32 = load ptr, ptr %dir.addr, align 8, !dbg !6410
  %33 = load ptr, ptr %name.addr, align 8, !dbg !6411
  %34 = load i32, ptr %cookie.addr, align 4, !dbg !6412
  %call87 = call i32 %28(ptr noundef %29, i32 noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef %34) #10, !dbg !6405
  store i32 %call87, ptr %retval, align 4, !dbg !6413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6413

cleanup:                                          ; preds = %if.end85, %if.then84, %if.then78, %if.then71, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #11, !dbg !6414
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #11, !dbg !6414
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #11, !dbg !6414
  %35 = load i32, ptr %retval, align 4, !dbg !6414
  ret i32 %35, !dbg !6414
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_unlinked(ptr noundef %dentry) #2 align 16 !dbg !6415 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6419
  %call = call i32 @d_unhashed(ptr noundef %0) #10, !dbg !6420
  %tobool = icmp ne i32 %call, 0, !dbg !6420
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6421

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6422
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !6422
  %d_parent = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3, !dbg !6422
  %3 = load ptr, ptr %d_parent, align 8, !dbg !6422
  %cmp = icmp eq ptr %1, %3, !dbg !6422
  %lnot = xor i1 %cmp, true, !dbg !6423
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6424
  %land.ext = zext i1 %4 to i32, !dbg !6421
  ret i32 %land.ext, !dbg !6425
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_unhashed(ptr noundef %dentry) #2 align 16 !dbg !6426 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6428, metadata !DIExpression()), !dbg !6429
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6430
  %d_hash = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, !dbg !6431
  %call = call zeroext i1 @hlist_bl_unhashed(ptr noundef %d_hash) #10, !dbg !6432
  %conv = zext i1 %call to i32, !dbg !6432
  ret i32 %conv, !dbg !6433
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hlist_bl_unhashed(ptr noundef %h) #2 align 16 !dbg !6434 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6440, metadata !DIExpression()), !dbg !6441
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6442
  %pprev = getelementptr inbounds %struct.hlist_bl_node, ptr %0, i32 0, i32 1, !dbg !6443
  %1 = load ptr, ptr %pprev, align 8, !dbg !6443
  %tobool = icmp ne ptr %1, null, !dbg !6444
  %lnot = xor i1 %tobool, true, !dbg !6444
  ret i1 %lnot, !dbg !6445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsnotify_next_mark(ptr noundef %mark) #0 align 16 !dbg !6446 {
entry:
  %mark.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__UNIQUE_ID_rcu304 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %mark, ptr %mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mark.addr, metadata !6450, metadata !DIExpression()), !dbg !6459
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #11, !dbg !6460
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6451, metadata !DIExpression()), !dbg !6461
  store ptr null, ptr %node, align 8, !dbg !6461
  %0 = load ptr, ptr %mark.addr, align 8, !dbg !6462
  %tobool = icmp ne ptr %0, null, !dbg !6462
  br i1 %tobool, label %if.then, label %if.end, !dbg !6463

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu304) #11, !dbg !6464
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu304, metadata !6452, metadata !DIExpression()), !dbg !6464
  br label %do.body, !dbg !6465

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6467

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6467

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %mark.addr, align 8, !dbg !6465
  %obj_list = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 5, !dbg !6465
  %next = getelementptr inbounds %struct.hlist_node, ptr %obj_list, i32 0, i32 0, !dbg !6465
  %2 = load volatile ptr, ptr %next, align 8, !dbg !6465
  store ptr %2, ptr %tmp, align 8, !dbg !6467
  %3 = load ptr, ptr %tmp, align 8, !dbg !6465
  store ptr %3, ptr %__UNIQUE_ID_rcu304, align 8, !dbg !6464
  br label %do.body1, !dbg !6464

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6469

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6469

do.end3:                                          ; preds = %do.cond2
  %4 = load ptr, ptr %__UNIQUE_ID_rcu304, align 8, !dbg !6464
  store ptr %4, ptr %tmp4, align 8, !dbg !6469
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu304) #11, !dbg !6471
  %5 = load ptr, ptr %tmp4, align 8, !dbg !6464
  store ptr %5, ptr %node, align 8, !dbg !6472
  br label %if.end, !dbg !6473

if.end:                                           ; preds = %do.end3, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #11, !dbg !6474
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !6455, metadata !DIExpression()), !dbg !6474
  %6 = load ptr, ptr %node, align 8, !dbg !6474
  store ptr %6, ptr %____ptr, align 8, !dbg !6474
  %7 = load ptr, ptr %____ptr, align 8, !dbg !6474
  %tobool6 = icmp ne ptr %7, null, !dbg !6474
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !6474

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6475
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6457, metadata !DIExpression()), !dbg !6475
  %8 = load ptr, ptr %____ptr, align 8, !dbg !6475
  store ptr %8, ptr %__mptr, align 8, !dbg !6475
  %9 = load ptr, ptr %__mptr, align 8, !dbg !6475
  %add.ptr = getelementptr i8, ptr %9, i64 -40, !dbg !6475
  store ptr %add.ptr, ptr %tmp7, align 8, !dbg !6475
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6474
  %10 = load ptr, ptr %tmp7, align 8, !dbg !6475
  br label %cond.end, !dbg !6474

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !6474

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !6474
  store ptr %cond, ptr %tmp5, align 8, !dbg !6474
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #11, !dbg !6476
  %11 = load ptr, ptr %tmp5, align 8, !dbg !6474
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #11, !dbg !6477
  ret ptr %11, !dbg !6478
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6479 dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6480 dso_local i32 @init_srcu_struct(ptr noundef) #5

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !6481 dso_local void @panic(ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6485 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521}
!llvm.ident = !{!4522}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___fsnotify_inode_delete297", scope: !2, file: !3, line: 24, type: !41, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/notify/.fsnotify.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/notify/fsnotify\22 -D KBUILD_BASENAME=\22fsnotify\22 -D KBUILD_MODNAME=\22fsnotify\22 -D __KBUILD_MODNAME=kmod_fsnotify -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/notify/fsnotify.ll fs/notify/fsnotify.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !209, globals: !4485, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/notify/fsnotify.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "68298a927840c0107dcf81ef1426c25b")
!4 = !{!5, !13, !21, !26, !32, !128, !135, !143, !159, !166, !172, !177, !183, !188, !197, !202}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!25 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !27, line: 16, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "TT_NONE", value: 0)
!30 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!31 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 147, baseType: !7, size: 32, elements: !125)
!33 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !33, line: 135, size: 512, elements: !35)
!35 = !{!36, !40, !42, !44, !48, !49, !65, !123, !124}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !34, file: !33, line: 136, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !34, file: !33, line: 137, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !34, file: !33, line: 138, baseType: !43, size: 32, offset: 128)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !34, file: !33, line: 139, baseType: !45, size: 16, offset: 160)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !46, line: 24, baseType: !47)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !33, line: 150, baseType: !32, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !34, file: !33, line: 151, baseType: !50, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !33, line: 64, baseType: !52)
!52 = !DISubroutineType(types: !53)
!53 = !{!43, !54, !43, !41, !55, !61}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 61, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !58, line: 72, baseType: !59)
!58 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !58, line: 16, baseType: !60)
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !46, line: 52, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !58, line: 88, baseType: !64)
!64 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !34, file: !33, line: 152, baseType: !66, size: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !33, line: 117, size: 256, elements: !68)
!68 = !{!69, !74}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !67, file: !33, line: 118, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !46, line: 174, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 172, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !71, file: !46, line: 173, baseType: !43, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !67, file: !33, line: 119, baseType: !75, size: 192, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !76, line: 41, baseType: !77)
!76 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !76, line: 37, size: 192, elements: !78)
!78 = !{!79, !117}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !77, file: !76, line: 38, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !81, line: 29, baseType: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !81, line: 17, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !81, line: 18, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !81, line: 18, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !85, file: !81, line: 19, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !89, line: 14, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !88, file: !89, line: 15, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !93, line: 44, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !93, line: 14, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !93, line: 15, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !93, line: 15, size: 32, elements: !98)
!98 = !{!99, !100, !110}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !97, file: !93, line: 16, baseType: !70, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 24, baseType: !101, size: 16)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 24, size: 16, elements: !102)
!102 = !{!103, !109}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !101, file: !93, line: 25, baseType: !104, size: 8)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !105, line: 17, baseType: !106)
!105 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !107, line: 21, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !101, file: !93, line: 26, baseType: !104, size: 8, offset: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 28, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 28, size: 32, elements: !112)
!112 = !{!113, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !111, file: !93, line: 29, baseType: !114, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !105, line: 19, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !107, line: 24, baseType: !47)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !111, file: !93, line: 30, baseType: !114, size: 16, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !77, file: !76, line: 39, baseType: !118, size: 128, offset: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !46, line: 190, size: 128, elements: !119)
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !46, line: 191, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !118, file: !46, line: 191, baseType: !121, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !34, file: !33, line: 153, baseType: !41, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !34, file: !33, line: 154, baseType: !41, size: 64, offset: 448)
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!127 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !129, line: 51, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!132 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!133 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!134 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !136, line: 9, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!137 = !{!138, !139, !140, !141, !142}
!138 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!139 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!140 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!141 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!142 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !144, line: 1325, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!146 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!147 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!148 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!149 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!150 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!151 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!152 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!153 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!154 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!155 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!156 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!157 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!158 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !160, line: 15, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!163 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!164 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!165 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !167, line: 26, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!168 = !{!169, !170, !171}
!169 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!170 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!171 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !173, line: 2052, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!174 = !{!175, !176}
!175 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!176 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !178, line: 54, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!179 = !{!180, !181, !182}
!180 = !DIEnumerator(name: "USRQUOTA", value: 0)
!181 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!182 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dentry_d_lock_class", file: !184, line: 122, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "DENTRY_D_LOCK_NORMAL", value: 0)
!187 = !DIEnumerator(name: "DENTRY_D_LOCK_NESTED", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_iter_type", file: !189, line: 376, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DIEnumerator(name: "FSNOTIFY_ITER_TYPE_INODE", value: 0)
!192 = !DIEnumerator(name: "FSNOTIFY_ITER_TYPE_VFSMOUNT", value: 1)
!193 = !DIEnumerator(name: "FSNOTIFY_ITER_TYPE_SB", value: 2)
!194 = !DIEnumerator(name: "FSNOTIFY_ITER_TYPE_PARENT", value: 3)
!195 = !DIEnumerator(name: "FSNOTIFY_ITER_TYPE_INODE2", value: 4)
!196 = !DIEnumerator(name: "FSNOTIFY_ITER_TYPE_COUNT", value: 5)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 10, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!199 = !{!200, !201}
!200 = !DIEnumerator(name: "false", value: 0)
!201 = !DIEnumerator(name: "true", value: 1)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_data_type", file: !189, line: 286, baseType: !7, size: 32, elements: !203)
!203 = !{!204, !205, !206, !207, !208}
!204 = !DIEnumerator(name: "FSNOTIFY_EVENT_NONE", value: 0)
!205 = !DIEnumerator(name: "FSNOTIFY_EVENT_PATH", value: 1)
!206 = !DIEnumerator(name: "FSNOTIFY_EVENT_INODE", value: 2)
!207 = !DIEnumerator(name: "FSNOTIFY_EVENT_DENTRY", value: 3)
!208 = !DIEnumerator(name: "FSNOTIFY_EVENT_ERROR", value: 4)
!209 = !{!41, !210, !254, !4372, !4375, !1508, !4378, !2906, !4381, !3097, !4387, !483, !4390, !4393, !4484}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !184, line: 82, size: 1536, elements: !212)
!212 = !{!213, !214, !224, !232, !233, !253, !4340, !4342, !4355, !4356, !4357, !4358, !4359, !4364, !4365, !4366}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !211, file: !184, line: 84, baseType: !7, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !211, file: !184, line: 85, baseType: !215, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !216, line: 275, baseType: !217)
!216 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !216, line: 275, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !217, file: !216, line: 275, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !216, line: 69, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !216, line: 64, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !221, file: !216, line: 65, baseType: !7, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !211, file: !184, line: 86, baseType: !225, size: 128, offset: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !226, line: 38, size: 128, elements: !227)
!226 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!227 = !{!228, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !226, line: 39, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !225, file: !226, line: 39, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !211, file: !184, line: 87, baseType: !210, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !211, file: !184, line: 88, baseType: !234, size: 128, offset: 256)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !184, line: 49, size: 128, elements: !235)
!235 = !{!236, !250}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !184, line: 50, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !184, line: 50, size: 64, elements: !238)
!238 = !{!239, !246}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !184, line: 51, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !184, line: 51, size: 64, elements: !241)
!241 = !{!242, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !240, file: !184, line: 52, baseType: !243, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !105, line: 21, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !7)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !240, file: !184, line: 52, baseType: !243, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !237, file: !184, line: 54, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !105, line: 23, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !249)
!249 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !184, line: 56, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !211, file: !184, line: 89, baseType: !254, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !173, line: 641, size: 4800, elements: !256)
!256 = !{!257, !258, !259, !267, !268, !275, !276, !279, !280, !4278, !4279, !4280, !4281, !4282, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4322, !4325, !4326, !4327, !4336, !4337, !4338, !4339}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !255, file: !173, line: 642, baseType: !45, size: 16)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !255, file: !173, line: 643, baseType: !47, size: 16, offset: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !255, file: !173, line: 644, baseType: !260, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !261, line: 23, baseType: !262)
!261 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 21, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !262, file: !261, line: 22, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !46, line: 37, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !58, line: 49, baseType: !7)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !255, file: !173, line: 645, baseType: !118, size: 128, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !255, file: !173, line: 646, baseType: !269, size: 32, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !261, line: 28, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 26, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !270, file: !261, line: 27, baseType: !273, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !46, line: 38, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !58, line: 50, baseType: !7)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !255, file: !173, line: 647, baseType: !7, size: 32, offset: 224)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !255, file: !173, line: 650, baseType: !277, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !173, line: 607, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !255, file: !173, line: 651, baseType: !277, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !255, file: !173, line: 654, baseType: !281, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !173, line: 1966, size: 2048, align: 512, elements: !284)
!284 = !{!285, !289, !302, !309, !315, !320, !324, !328, !332, !336, !340, !341, !347, !351, !4200, !4229, !4233, !4239, !4243, !4247, !4251, !4255, !4259, !4265, !4269}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !283, file: !173, line: 1967, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!210, !254, !210, !7}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !283, file: !173, line: 1968, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!37, !210, !254, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !295, line: 10, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!296 = !{!297, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !294, file: !295, line: 11, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !41}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !294, file: !295, line: 12, baseType: !41, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !283, file: !173, line: 1969, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!43, !306, !254, !43}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !308, line: 42, flags: DIFlagFwdDecl)
!308 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!309 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !283, file: !173, line: 1970, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!277, !254, !43, !313}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !314)
!314 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !283, file: !173, line: 1972, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!43, !210, !319, !43}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !283, file: !173, line: 1974, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!43, !306, !254, !210, !45, !313}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !283, file: !173, line: 1976, baseType: !325, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!43, !210, !254, !210}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !283, file: !173, line: 1977, baseType: !329, size: 64, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!43, !254, !210}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !283, file: !173, line: 1978, baseType: !333, size: 64, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!43, !306, !254, !210, !37}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !283, file: !173, line: 1980, baseType: !337, size: 64, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!43, !306, !254, !210, !45}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !283, file: !173, line: 1982, baseType: !329, size: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !283, file: !173, line: 1983, baseType: !342, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!43, !306, !254, !210, !45, !345}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !46, line: 21, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !46, line: 18, baseType: !243)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !283, file: !173, line: 1985, baseType: !348, size: 64, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!43, !306, !254, !210, !254, !210, !7}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !283, file: !173, line: 1987, baseType: !352, size: 64, offset: 832)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!43, !306, !210, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !173, line: 226, size: 640, elements: !357)
!357 = !{!358, !359, !360, !370, !379, !380, !389, !390, !391}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !356, file: !173, line: 227, baseType: !7, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !356, file: !173, line: 228, baseType: !45, size: 16, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !173, line: 241, baseType: !361, size: 32, offset: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !173, line: 241, size: 32, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !361, file: !173, line: 242, baseType: !260, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !361, file: !173, line: 243, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !366, line: 16, baseType: !367)
!366 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 14, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !367, file: !366, line: 15, baseType: !265, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !173, line: 245, baseType: !371, size: 32, offset: 96)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !173, line: 245, size: 32, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !371, file: !173, line: 246, baseType: !269, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !371, file: !173, line: 247, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !366, line: 20, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 18, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !376, file: !366, line: 19, baseType: !273, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !356, file: !173, line: 249, baseType: !62, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !356, file: !173, line: 250, baseType: !381, size: 128, offset: 192)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !382, line: 13, size: 128, elements: !383)
!382 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!383 = !{!384, !387}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !381, file: !382, line: 14, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !382, line: 8, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !381, file: !382, line: 15, baseType: !388, size: 64, offset: 64)
!388 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !356, file: !173, line: 251, baseType: !381, size: 128, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !356, file: !173, line: 252, baseType: !381, size: 128, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !356, file: !173, line: 259, baseType: !392, size: 64, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !173, line: 994, size: 1856, align: 64, elements: !394)
!394 = !{!395, !414, !415, !417, !425, !438, !439, !440, !4056, !4057, !4066, !4067, !4068, !4192, !4193, !4194, !4195, !4197, !4198, !4199}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !173, line: 995, baseType: !396, size: 128)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !173, line: 995, size: 128, elements: !397)
!397 = !{!398, !404, !413}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !396, file: !173, line: 996, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !400, line: 60, size: 64, elements: !401)
!400 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !400, line: 61, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !396, file: !173, line: 997, baseType: !405, size: 128, align: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !46, line: 232, size: 128, align: 64, elements: !406)
!406 = !{!407, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !46, line: 233, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !405, file: !46, line: 234, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !408}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !396, file: !173, line: 998, baseType: !7, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !393, file: !173, line: 1005, baseType: !80, size: 32, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !393, file: !173, line: 1006, baseType: !416, size: 32, offset: 160)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !46, line: 156, baseType: !7)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !393, file: !173, line: 1007, baseType: !418, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !419, line: 13, baseType: !420)
!419 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !46, line: 181, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 179, size: 64, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !421, file: !46, line: 180, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !105, line: 22, baseType: !386)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !393, file: !173, line: 1008, baseType: !426, size: 256, offset: 256)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !427, line: 66, size: 256, elements: !428)
!427 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!428 = !{!429, !430, !432, !437}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !426, file: !427, line: 67, baseType: !418, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !426, file: !427, line: 68, baseType: !431, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !89, line: 23, baseType: !88)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !426, file: !427, line: 70, baseType: !433, size: 32, offset: 96)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !434, line: 15, size: 32, elements: !435)
!434 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !433, file: !434, line: 20, baseType: !70, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !426, file: !427, line: 72, baseType: !118, size: 128, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !393, file: !173, line: 1009, baseType: !62, size: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !393, file: !173, line: 1010, baseType: !7, size: 32, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !393, file: !173, line: 1011, baseType: !441, size: 256, offset: 640)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !173, line: 948, size: 256, elements: !442)
!442 = !{!443, !466, !4052, !4053, !4054, !4055}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !441, file: !173, line: 949, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !445, line: 34, baseType: !446)
!445 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !445, line: 25, size: 64, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !446, file: !445, line: 26, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !450, line: 27, baseType: !451)
!450 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !450, line: 13, size: 64, elements: !452)
!452 = !{!453, !465}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !450, line: 14, baseType: !454, size: 32)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !451, file: !450, line: 14, size: 32, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !454, file: !450, line: 15, baseType: !70, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !450, line: 16, baseType: !458, size: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !450, line: 16, size: 32, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !458, file: !450, line: 18, baseType: !104, size: 8)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !458, file: !450, line: 19, baseType: !462, size: 24, offset: 8)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 24, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 3)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !451, file: !450, line: 26, baseType: !92, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !441, file: !173, line: 950, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !136, line: 59, size: 768, elements: !469)
!469 = !{!470, !476, !477, !478, !491, !492, !493, !494}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !468, file: !136, line: 61, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !472, line: 113, baseType: !473)
!472 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !472, line: 111, size: 32, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !473, file: !472, line: 112, baseType: !70, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !468, file: !136, line: 62, baseType: !7, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !468, file: !136, line: 63, baseType: !80, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !468, file: !136, line: 65, baseType: !479, size: 256, offset: 128)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 256, elements: !489)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !46, line: 194, size: 64, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !480, file: !46, line: 195, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !46, line: 198, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !46, line: 199, baseType: !483, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !484, file: !46, line: 199, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!489 = !{!490}
!490 = !DISubrange(count: 4)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !468, file: !136, line: 66, baseType: !480, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !468, file: !136, line: 68, baseType: !75, size: 192, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !468, file: !136, line: 69, baseType: !405, size: 128, align: 64, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !468, file: !136, line: 70, baseType: !495, offset: 768)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, elements: !1248)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !136, line: 54, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !496, file: !136, line: 55, baseType: !43, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !496, file: !136, line: 56, baseType: !500, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !502, line: 26, size: 1152, elements: !503)
!502 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!503 = !{!504, !518, !519, !520, !4028, !4032, !4033, !4034, !4047, !4048, !4049, !4050, !4051}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !501, file: !502, line: 27, baseType: !505, size: 192)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !506, line: 19, size: 192, elements: !507)
!506 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!507 = !{!508, !516, !517}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !505, file: !506, line: 20, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !510, line: 296, size: 128, elements: !511)
!510 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!511 = !{!512, !513, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !509, file: !510, line: 297, baseType: !80, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !509, file: !510, line: 299, baseType: !514, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 154, baseType: !7)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !509, file: !510, line: 300, baseType: !41, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !505, file: !506, line: 21, baseType: !7, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !505, file: !506, line: 22, baseType: !7, size: 32, offset: 160)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !501, file: !502, line: 28, baseType: !405, size: 128, align: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !501, file: !502, line: 29, baseType: !7, size: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !501, file: !502, line: 30, baseType: !521, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !523, line: 746, size: 58368, elements: !524)
!523 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!524 = !{!525, !533, !534, !535, !536, !537, !538, !539, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !612, !623, !718, !722, !725, !756, !757, !758, !759, !770, !772, !773, !774, !775, !776, !777, !788, !789, !792, !793, !794, !795, !796, !797, !798, !799, !806, !807, !814, !815, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1334, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1349, !1350, !1351, !1352, !1354, !1355, !1356, !1357, !1358, !1359, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1383, !1389, !1458, !1459, !1460, !1461, !1465, !1468, !1475, !1480, !1483, !1486, !1489, !3301, !3440, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3478, !3479, !3480, !3489, !3497, !3498, !3499, !3500, !3501, !3506, !3507, !3508, !3511, !3512, !3515, !3518, !3521, !3529, !3532, !3533, !3619, !3620, !3621, !3622, !3623, !3629, !3630, !3631, !3632, !3635, !3636, !3639, !3642, !3643, !3646, !3647, !3648, !3651, !3652, !3653, !3654, !3655, !3656, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3688, !3691, !3697, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3709, !3781, !3783, !3784, !3785, !3786, !3787, !3788, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3805, !3806, !3807}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !522, file: !523, line: 752, baseType: !526, size: 192)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !527, line: 56, size: 192, elements: !528)
!527 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!528 = !{!529, !530, !531, !532}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !527, line: 57, baseType: !60, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !526, file: !527, line: 58, baseType: !60, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !526, file: !527, line: 59, baseType: !243, size: 32, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !526, file: !527, line: 61, baseType: !243, size: 32, offset: 160)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !522, file: !523, line: 754, baseType: !7, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !522, file: !523, line: 767, baseType: !41, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !522, file: !523, line: 768, baseType: !471, size: 32, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !523, line: 770, baseType: !7, size: 32, offset: 352)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !522, file: !523, line: 771, baseType: !7, size: 32, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !522, file: !523, line: 774, baseType: !43, size: 32, offset: 416)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !522, file: !523, line: 775, baseType: !540, size: 128, offset: 448)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !541, line: 58, size: 128, elements: !542)
!541 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!542 = !{!543, !544, !549, !550}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !540, file: !541, line: 59, baseType: !399, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !541, line: 60, baseType: !545, size: 32, offset: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !540, file: !541, line: 60, size: 32, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !545, file: !541, line: 61, baseType: !7, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !545, file: !541, line: 62, baseType: !70, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !540, file: !541, line: 65, baseType: !114, size: 16, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !540, file: !541, line: 65, baseType: !114, size: 16, offset: 112)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !522, file: !523, line: 776, baseType: !7, size: 32, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !522, file: !523, line: 777, baseType: !60, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !522, file: !523, line: 778, baseType: !521, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !522, file: !523, line: 787, baseType: !43, size: 32, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !522, file: !523, line: 788, baseType: !43, size: 32, offset: 800)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !522, file: !523, line: 790, baseType: !43, size: 32, offset: 832)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !522, file: !523, line: 792, baseType: !43, size: 32, offset: 864)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !522, file: !523, line: 793, baseType: !43, size: 32, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !522, file: !523, line: 794, baseType: !43, size: 32, offset: 928)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !522, file: !523, line: 795, baseType: !7, size: 32, offset: 960)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !522, file: !523, line: 797, baseType: !562, size: 2048, offset: 1024)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !523, line: 551, size: 2048, elements: !563)
!563 = !{!564, !569, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !591, !594, !595, !596}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !562, file: !523, line: 553, baseType: !565, size: 128)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !523, line: 411, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !565, file: !523, line: 412, baseType: !60, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !565, file: !523, line: 413, baseType: !243, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !562, file: !523, line: 554, baseType: !570, size: 192, align: 64, offset: 128)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !571, line: 5, size: 192, align: 64, elements: !572)
!571 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!572 = !{!573, !574, !576}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !570, file: !571, line: 6, baseType: !60, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !570, file: !571, line: 7, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !570, file: !571, line: 8, baseType: !575, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !562, file: !523, line: 555, baseType: !247, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !562, file: !523, line: 556, baseType: !247, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !562, file: !523, line: 558, baseType: !118, size: 128, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !562, file: !523, line: 559, baseType: !7, size: 32, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !562, file: !523, line: 561, baseType: !247, size: 64, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !562, file: !523, line: 562, baseType: !247, size: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !562, file: !523, line: 563, baseType: !247, size: 64, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !562, file: !523, line: 564, baseType: !247, size: 64, offset: 832)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !562, file: !523, line: 565, baseType: !424, size: 64, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !562, file: !523, line: 566, baseType: !247, size: 64, offset: 960)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !562, file: !523, line: 568, baseType: !247, size: 64, offset: 1024)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !562, file: !523, line: 571, baseType: !43, size: 32, offset: 1088)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !562, file: !523, line: 572, baseType: !590, size: 64, offset: 1152)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !562, file: !523, line: 574, baseType: !592, size: 64, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !523, line: 49, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !562, file: !523, line: 576, baseType: !592, size: 64, offset: 1280)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !562, file: !523, line: 578, baseType: !60, size: 64, offset: 1344)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !562, file: !523, line: 588, baseType: !597, size: 512, align: 512, offset: 1536)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !523, line: 497, size: 512, align: 512, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !597, file: !523, line: 498, baseType: !247, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !597, file: !523, line: 499, baseType: !247, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !597, file: !523, line: 500, baseType: !247, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !597, file: !523, line: 501, baseType: !243, size: 32, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !597, file: !523, line: 502, baseType: !243, size: 32, offset: 224)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !597, file: !523, line: 503, baseType: !60, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !597, file: !523, line: 504, baseType: !60, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !597, file: !523, line: 505, baseType: !60, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !597, file: !523, line: 506, baseType: !608, size: 64, align: 64, offset: 448)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !523, line: 445, size: 64, align: 64, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !608, file: !523, line: 446, baseType: !7, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !608, file: !523, line: 447, baseType: !7, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !522, file: !523, line: 798, baseType: !613, size: 384, offset: 3072)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !523, line: 592, size: 384, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !613, file: !523, line: 593, baseType: !118, size: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !613, file: !523, line: 594, baseType: !60, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !613, file: !523, line: 595, baseType: !60, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !613, file: !523, line: 596, baseType: !7, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !613, file: !523, line: 597, baseType: !47, size: 16, offset: 288)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !613, file: !523, line: 598, baseType: !47, size: 16, offset: 304)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !613, file: !523, line: 600, baseType: !622, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !522, file: !523, line: 799, baseType: !624, size: 1792, offset: 3456)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !523, line: 610, size: 1792, elements: !625)
!625 = !{!626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !715, !716}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !624, file: !523, line: 611, baseType: !570, size: 192, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !624, file: !523, line: 618, baseType: !247, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !624, file: !523, line: 619, baseType: !247, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !624, file: !523, line: 620, baseType: !247, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !624, file: !523, line: 621, baseType: !247, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !624, file: !523, line: 622, baseType: !247, size: 64, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !624, file: !523, line: 629, baseType: !424, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !624, file: !523, line: 630, baseType: !247, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !523, line: 631, baseType: !7, size: 32, offset: 640)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !624, file: !523, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !624, file: !523, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !624, file: !523, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !624, file: !523, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !624, file: !523, line: 662, baseType: !640, size: 512, offset: 704)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !641)
!641 = !{!642, !650, !651, !656, !711, !712, !713, !714}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !640, file: !22, line: 119, baseType: !643, size: 256)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !644, line: 9, size: 256, elements: !645)
!644 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !643, file: !644, line: 10, baseType: !570, size: 192, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !643, file: !644, line: 11, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !649, line: 29, baseType: !424)
!649 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !640, file: !22, line: 120, baseType: !648, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !640, file: !22, line: 121, baseType: !652, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!21, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !640, file: !22, line: 122, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !659)
!659 = !{!660, !685, !686, !689, !694, !695, !706, !710}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !658, file: !22, line: 160, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !662, file: !22, line: 216, baseType: !431, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !662, file: !22, line: 217, baseType: !7, size: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !662, file: !22, line: 218, baseType: !7, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !662, file: !22, line: 219, baseType: !7, size: 32, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !662, file: !22, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !662, file: !22, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !662, file: !22, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !662, file: !22, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !662, file: !22, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !662, file: !22, line: 226, baseType: !7, size: 32, offset: 160)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !662, file: !22, line: 227, baseType: !47, size: 16, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !662, file: !22, line: 228, baseType: !47, size: 16, offset: 208)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !662, file: !22, line: 229, baseType: !7, size: 32, offset: 224)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !662, file: !22, line: 235, baseType: !648, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !662, file: !22, line: 236, baseType: !655, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !662, file: !22, line: 237, baseType: !648, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !662, file: !22, line: 238, baseType: !655, size: 64, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !662, file: !22, line: 239, baseType: !682, size: 4096, align: 512, offset: 512)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 4096, align: 512, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 8)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !658, file: !22, line: 161, baseType: !7, size: 32, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !658, file: !22, line: 162, baseType: !687, size: 32, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !46, line: 32, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !58, line: 96, baseType: !43)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !658, file: !22, line: 163, baseType: !690, size: 32, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !216, line: 274, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !216, line: 274, size: 32, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !691, file: !216, line: 274, baseType: !220, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !658, file: !22, line: 164, baseType: !655, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !658, file: !22, line: 165, baseType: !696, size: 128, offset: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !644, line: 14, size: 128, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !696, file: !644, line: 15, baseType: !699, size: 128)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !571, line: 26, size: 128, elements: !700)
!700 = !{!701, !705}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !699, file: !571, line: 27, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !571, line: 12, size: 64, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !702, file: !571, line: 13, baseType: !575, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !699, file: !571, line: 28, baseType: !575, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !658, file: !22, line: 166, baseType: !707, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!648}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !658, file: !22, line: 167, baseType: !648, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !640, file: !22, line: 123, baseType: !104, size: 8, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !640, file: !22, line: 124, baseType: !104, size: 8, offset: 456)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !640, file: !22, line: 125, baseType: !104, size: 8, offset: 464)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !640, file: !22, line: 126, baseType: !104, size: 8, offset: 472)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !624, file: !523, line: 671, baseType: !640, size: 512, offset: 1216)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !624, file: !523, line: 679, baseType: !717, size: 64, offset: 1728)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !522, file: !523, line: 800, baseType: !719, size: 64, offset: 5248)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !523, line: 800, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !522, file: !523, line: 809, baseType: !723, size: 64, offset: 5312)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !523, line: 70, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !522, file: !523, line: 825, baseType: !726, size: 2048, align: 512, offset: 5632)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !523, line: 509, size: 2048, align: 512, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !726, file: !523, line: 511, baseType: !247, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !726, file: !523, line: 512, baseType: !247, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !726, file: !523, line: 513, baseType: !247, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !726, file: !523, line: 514, baseType: !247, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !726, file: !523, line: 515, baseType: !247, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !726, file: !523, line: 516, baseType: !247, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !726, file: !523, line: 518, baseType: !247, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !726, file: !523, line: 519, baseType: !247, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !726, file: !523, line: 520, baseType: !424, size: 64, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !726, file: !523, line: 522, baseType: !247, size: 64, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !726, file: !523, line: 523, baseType: !247, size: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !726, file: !523, line: 524, baseType: !424, size: 64, offset: 704)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !726, file: !523, line: 526, baseType: !424, size: 64, offset: 768)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !726, file: !523, line: 527, baseType: !247, size: 64, offset: 832)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !726, file: !523, line: 529, baseType: !247, size: 64, offset: 896)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !726, file: !523, line: 530, baseType: !247, size: 64, offset: 960)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !726, file: !523, line: 531, baseType: !247, size: 64, offset: 1024)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !726, file: !523, line: 532, baseType: !247, size: 64, offset: 1088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !726, file: !523, line: 533, baseType: !247, size: 64, offset: 1152)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !726, file: !523, line: 535, baseType: !247, size: 64, offset: 1216)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !726, file: !523, line: 536, baseType: !247, size: 64, offset: 1280)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !726, file: !523, line: 537, baseType: !247, size: 64, offset: 1344)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !726, file: !523, line: 538, baseType: !247, size: 64, offset: 1408)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !726, file: !523, line: 539, baseType: !247, size: 64, offset: 1472)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !726, file: !523, line: 540, baseType: !247, size: 64, offset: 1536)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !726, file: !523, line: 541, baseType: !247, size: 64, offset: 1600)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !726, file: !523, line: 542, baseType: !247, size: 64, offset: 1664)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !726, file: !523, line: 543, baseType: !247, size: 64, offset: 1728)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !522, file: !523, line: 833, baseType: !7, size: 32, offset: 7680)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !522, file: !523, line: 836, baseType: !7, size: 32, offset: 7712)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !522, file: !523, line: 837, baseType: !43, size: 32, offset: 7744)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !522, file: !523, line: 838, baseType: !760, size: 64, offset: 7808)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !763, line: 19, baseType: !764)
!763 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !763, line: 19, size: 64, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !764, file: !763, line: 19, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 1)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !522, file: !523, line: 839, baseType: !771, size: 64, offset: 7872)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !522, file: !523, line: 840, baseType: !762, size: 64, offset: 7936)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !522, file: !523, line: 841, baseType: !41, size: 64, offset: 8000)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !522, file: !523, line: 843, baseType: !47, size: 16, offset: 8064)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !522, file: !523, line: 845, baseType: !47, size: 16, offset: 8080)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !522, file: !523, line: 848, baseType: !43, size: 32, offset: 8096)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !522, file: !523, line: 849, baseType: !778, size: 32, offset: 8128)
!778 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !523, line: 718, size: 32, elements: !779)
!779 = !{!780, !787}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !778, file: !523, line: 724, baseType: !781, size: 32)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !778, file: !523, line: 719, size: 32, elements: !782)
!782 = !{!783, !784, !785, !786}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !781, file: !523, line: 720, baseType: !104, size: 8)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !781, file: !523, line: 721, baseType: !104, size: 8, offset: 8)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !781, file: !523, line: 722, baseType: !104, size: 8, offset: 16)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !781, file: !523, line: 723, baseType: !104, size: 8, offset: 24)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !778, file: !523, line: 725, baseType: !243, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !522, file: !523, line: 850, baseType: !118, size: 128, offset: 8192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !522, file: !523, line: 851, baseType: !790, size: 64, offset: 8320)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !523, line: 60, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !522, file: !523, line: 855, baseType: !60, size: 64, offset: 8384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !522, file: !523, line: 856, baseType: !104, size: 8, offset: 8448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !522, file: !523, line: 857, baseType: !104, size: 8, offset: 8456)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !522, file: !523, line: 858, baseType: !43, size: 32, offset: 8480)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !522, file: !523, line: 859, baseType: !118, size: 128, offset: 8512)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !522, file: !523, line: 860, baseType: !43, size: 32, offset: 8640)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !522, file: !523, line: 861, baseType: !118, size: 128, offset: 8704)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !522, file: !523, line: 873, baseType: !800, size: 256, offset: 8832)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !523, line: 376, size: 256, elements: !801)
!801 = !{!802, !803, !804, !805}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !800, file: !523, line: 381, baseType: !60, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !800, file: !523, line: 384, baseType: !249, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !800, file: !523, line: 389, baseType: !249, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !800, file: !523, line: 392, baseType: !249, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !522, file: !523, line: 875, baseType: !118, size: 128, offset: 9088)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !522, file: !523, line: 877, baseType: !808, size: 320, offset: 9216)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !809, line: 86, size: 320, elements: !810)
!809 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !808, file: !809, line: 87, baseType: !43, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !808, file: !809, line: 88, baseType: !118, size: 128, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !808, file: !809, line: 89, baseType: !118, size: 128, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !522, file: !523, line: 878, baseType: !570, size: 192, align: 64, offset: 9536)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !522, file: !523, line: 881, baseType: !816, size: 64, offset: 9728)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !144, line: 733, size: 10240, elements: !818)
!818 = !{!819, !1246}
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !144, line: 734, baseType: !820, size: 10240)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !144, line: 734, size: 10240, elements: !821)
!821 = !{!822, !826, !840, !844, !845, !846, !847, !848, !849, !858, !859, !860, !866, !867, !868, !869, !870, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !907, !919, !922, !970, !971, !972, !975, !1232, !1233, !1236, !1237, !1238, !1244, !1245}
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !144, line: 739, baseType: !823, size: 512, align: 512)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !820, file: !144, line: 739, size: 512, align: 512, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !823, file: !144, line: 747, baseType: !70, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !820, file: !144, line: 750, baseType: !827, size: 128, offset: 512)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !828, line: 218, size: 128, elements: !829)
!828 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!829 = !{!830, !838, !839}
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !827, file: !828, line: 219, baseType: !831, size: 32)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !827, file: !828, line: 219, size: 32, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !831, file: !828, line: 220, baseType: !80, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !831, file: !828, line: 221, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !828, line: 197, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !828, line: 197, elements: !837)
!837 = !{}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !827, file: !828, line: 223, baseType: !7, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !827, file: !828, line: 224, baseType: !41, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !820, file: !144, line: 752, baseType: !841, size: 64, offset: 640)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!60, !392, !60, !60, !60, !60}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !820, file: !144, line: 756, baseType: !60, size: 64, offset: 704)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !820, file: !144, line: 757, baseType: !60, size: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !820, file: !144, line: 760, baseType: !60, size: 64, offset: 832)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !820, file: !144, line: 761, baseType: !60, size: 64, offset: 896)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !820, file: !144, line: 763, baseType: !60, size: 64, offset: 960)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !820, file: !144, line: 764, baseType: !850, size: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !852, line: 299, baseType: !853)
!852 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 299, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !853, file: !852, line: 299, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !857, line: 18, baseType: !60)
!857 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!858 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !820, file: !144, line: 773, baseType: !70, size: 32, offset: 1088)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !820, file: !144, line: 785, baseType: !70, size: 32, offset: 1120)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !820, file: !144, line: 795, baseType: !861, size: 64, offset: 1152)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !144, line: 726, size: 128, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !862, file: !144, line: 727, baseType: !247, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !862, file: !144, line: 728, baseType: !43, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !820, file: !144, line: 801, baseType: !60, size: 64, offset: 1216)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !820, file: !144, line: 804, baseType: !418, size: 64, offset: 1280)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !820, file: !144, line: 806, baseType: !43, size: 32, offset: 1344)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !820, file: !144, line: 808, baseType: !80, size: 32, offset: 1376)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !820, file: !144, line: 823, baseType: !871, size: 320, offset: 1408)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !872, line: 48, size: 320, elements: !873)
!872 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!873 = !{!874, !875, !876, !877, !878}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !872, line: 49, baseType: !418, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !871, file: !872, line: 55, baseType: !418, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !871, file: !872, line: 57, baseType: !433, size: 32, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !871, file: !872, line: 59, baseType: !431, size: 32, offset: 160)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !871, file: !872, line: 60, baseType: !118, size: 128, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !820, file: !144, line: 825, baseType: !118, size: 128, offset: 1728)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !820, file: !144, line: 845, baseType: !43, size: 32, offset: 1856)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !820, file: !144, line: 849, baseType: !60, size: 64, offset: 1920)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !820, file: !144, line: 850, baseType: !60, size: 64, offset: 1984)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !820, file: !144, line: 852, baseType: !60, size: 64, offset: 2048)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !820, file: !144, line: 853, baseType: !60, size: 64, offset: 2112)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !820, file: !144, line: 854, baseType: !420, size: 64, offset: 2176)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !820, file: !144, line: 855, baseType: !60, size: 64, offset: 2240)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !820, file: !144, line: 856, baseType: !60, size: 64, offset: 2304)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !820, file: !144, line: 857, baseType: !60, size: 64, offset: 2368)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !820, file: !144, line: 858, baseType: !60, size: 64, offset: 2432)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !820, file: !144, line: 865, baseType: !220, size: 32, offset: 2496)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !820, file: !144, line: 867, baseType: !80, size: 32, offset: 2528)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !820, file: !144, line: 869, baseType: !60, size: 64, offset: 2560)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !820, file: !144, line: 869, baseType: !60, size: 64, offset: 2624)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !820, file: !144, line: 869, baseType: !60, size: 64, offset: 2688)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !820, file: !144, line: 869, baseType: !60, size: 64, offset: 2752)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !820, file: !144, line: 870, baseType: !60, size: 64, offset: 2816)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !820, file: !144, line: 870, baseType: !60, size: 64, offset: 2880)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !820, file: !144, line: 870, baseType: !60, size: 64, offset: 2944)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !820, file: !144, line: 871, baseType: !60, size: 64, offset: 3008)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !820, file: !144, line: 871, baseType: !60, size: 64, offset: 3072)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !820, file: !144, line: 871, baseType: !60, size: 64, offset: 3136)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !820, file: !144, line: 871, baseType: !60, size: 64, offset: 3200)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !820, file: !144, line: 873, baseType: !904, size: 3328, offset: 3264)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 3328, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 52)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !820, file: !144, line: 875, baseType: !908, size: 1280, offset: 6592)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 1280, elements: !489)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !910, line: 22, size: 320, elements: !911)
!910 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!911 = !{!912, !913, !914, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !910, line: 23, baseType: !431, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !909, file: !910, line: 24, baseType: !424, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !909, file: !910, line: 26, baseType: !118, size: 128, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !909, file: !910, line: 28, baseType: !916, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !105, line: 20, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !43)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !820, file: !144, line: 877, baseType: !920, size: 64, offset: 7872)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !144, line: 877, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !820, file: !144, line: 880, baseType: !923, size: 1088, offset: 7936)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !924, line: 72, baseType: !925)
!924 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !924, line: 23, size: 1088, elements: !926)
!926 = !{!927, !928, !929, !930, !931, !934, !935, !936, !937, !964, !965, !966}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !925, file: !924, line: 28, baseType: !247, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !925, file: !924, line: 38, baseType: !420, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !925, file: !924, line: 40, baseType: !60, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !925, file: !924, line: 43, baseType: !871, size: 320, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !925, file: !924, line: 44, baseType: !932, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !924, line: 44, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !925, file: !924, line: 48, baseType: !60, size: 64, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !925, file: !924, line: 59, baseType: !426, size: 256, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !925, file: !924, line: 60, baseType: !41, size: 64, offset: 896)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !925, file: !924, line: 61, baseType: !938, size: 64, offset: 960)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !941, line: 13, size: 1216, elements: !942)
!941 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!942 = !{!943, !944, !945, !946, !947, !948, !949, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !940, file: !941, line: 14, baseType: !41, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !940, file: !941, line: 15, baseType: !60, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !940, file: !941, line: 17, baseType: !60, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !940, file: !941, line: 17, baseType: !60, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !940, file: !941, line: 18, baseType: !60, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !940, file: !941, line: 18, baseType: !60, size: 64, offset: 320)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !940, file: !941, line: 19, baseType: !950, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !940, file: !941, line: 21, baseType: !388, size: 64, offset: 448)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !940, file: !941, line: 23, baseType: !388, size: 64, offset: 512)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !940, file: !941, line: 24, baseType: !388, size: 64, offset: 576)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !940, file: !941, line: 25, baseType: !388, size: 64, offset: 640)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !940, file: !941, line: 26, baseType: !388, size: 64, offset: 704)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !940, file: !941, line: 27, baseType: !388, size: 64, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !940, file: !941, line: 28, baseType: !388, size: 64, offset: 832)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !940, file: !941, line: 29, baseType: !388, size: 64, offset: 896)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !940, file: !941, line: 30, baseType: !388, size: 64, offset: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !940, file: !941, line: 31, baseType: !388, size: 64, offset: 1024)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !940, file: !941, line: 32, baseType: !388, size: 64, offset: 1088)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !940, file: !941, line: 33, baseType: !388, size: 64, offset: 1152)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !925, file: !924, line: 63, baseType: !70, size: 32, offset: 1024)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !925, file: !924, line: 69, baseType: !114, size: 16, offset: 1056)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !925, file: !924, line: 70, baseType: !967, size: 16, offset: 1072)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !105, line: 18, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !969)
!969 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !820, file: !144, line: 882, baseType: !60, size: 64, offset: 9024)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !820, file: !144, line: 885, baseType: !80, size: 32, offset: 9088)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !820, file: !144, line: 886, baseType: !973, size: 64, offset: 9152)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !144, line: 732, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !820, file: !144, line: 901, baseType: !976, size: 64, offset: 9216)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !978, line: 68, size: 4800, elements: !979)
!978 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!979 = !{!980, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1019, !1020, !1021, !1022, !1130, !1131, !1143, !1213, !1214, !1228, !1230}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !977, file: !978, line: 69, baseType: !981, size: 576)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !978, line: 23, size: 576, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !981, file: !978, line: 24, baseType: !243, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !978, line: 25, baseType: !985, size: 512, offset: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !978, line: 25, size: 512, elements: !986)
!986 = !{!987, !996}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !985, file: !978, line: 26, baseType: !988, size: 480)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 480, elements: !994)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !978, line: 17, size: 96, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !989, file: !978, line: 18, baseType: !243, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !989, file: !978, line: 19, baseType: !243, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !989, file: !978, line: 20, baseType: !243, size: 32, offset: 64)
!994 = !{!995}
!995 = !DISubrange(count: 5)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !978, line: 27, baseType: !997, size: 128)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !978, line: 27, size: 128, elements: !998)
!998 = !{!999, !1001}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !997, file: !978, line: 28, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !997, file: !978, line: 29, baseType: !1000, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !977, file: !978, line: 70, baseType: !981, size: 576, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !977, file: !978, line: 71, baseType: !981, size: 576, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !977, file: !978, line: 72, baseType: !976, size: 64, offset: 1728)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !977, file: !978, line: 73, baseType: !43, size: 32, offset: 1792)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !977, file: !978, line: 74, baseType: !260, size: 32, offset: 1824)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !977, file: !978, line: 75, baseType: !269, size: 32, offset: 1856)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !977, file: !978, line: 76, baseType: !1009, size: 192, offset: 1920)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1010, line: 9, size: 192, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1011 = !{!1012, !1013, !1017, !1018}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1009, file: !1010, line: 10, baseType: !418, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1009, file: !1010, line: 11, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1010, line: 7, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1009, file: !1010, line: 12, baseType: !7, size: 32, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1009, file: !1010, line: 13, baseType: !471, size: 32, offset: 160)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !978, line: 77, baseType: !60, size: 64, offset: 2112)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !977, file: !978, line: 80, baseType: !313, size: 8, offset: 2176)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !977, file: !978, line: 88, baseType: !118, size: 128, offset: 2240)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !977, file: !978, line: 89, baseType: !1023, size: 64, offset: 2368)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1025, line: 195, size: 1728, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1026 = !{!1027, !1028, !1031, !1036, !1037, !1040, !1041, !1046, !1047, !1048, !1049, !1052, !1053, !1054, !1055, !1056, !1094, !1115}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1024, file: !1025, line: 196, baseType: !471, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1024, file: !1025, line: 197, baseType: !1029, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1025, line: 28, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !46, line: 104, baseType: !917)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !1025, line: 198, baseType: !1032, size: 192, offset: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !1025, line: 198, size: 192, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1032, file: !1025, line: 199, baseType: !118, size: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1032, file: !1025, line: 200, baseType: !570, size: 192, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1024, file: !1025, line: 205, baseType: !871, size: 320, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1024, file: !1025, line: 206, baseType: !1038, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1025, line: 206, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1024, file: !1025, line: 207, baseType: !41, size: 64, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !1025, line: 208, baseType: !1042, size: 64, offset: 704)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !1025, line: 208, size: 64, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1042, file: !1025, line: 209, baseType: !385, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1042, file: !1025, line: 210, baseType: !385, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1024, file: !1025, line: 212, baseType: !385, size: 64, offset: 768)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1024, file: !1025, line: 213, baseType: !260, size: 32, offset: 832)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1024, file: !1025, line: 214, baseType: !269, size: 32, offset: 864)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1024, file: !1025, line: 215, baseType: !1050, size: 32, offset: 896)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1025, line: 31, baseType: !1051)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 110, baseType: !243)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1024, file: !1025, line: 216, baseType: !47, size: 16, offset: 928)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1024, file: !1025, line: 217, baseType: !47, size: 16, offset: 944)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1024, file: !1025, line: 221, baseType: !969, size: 16, offset: 960)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1024, file: !1025, line: 228, baseType: !60, size: 64, offset: 1024)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !1025, line: 245, baseType: !1057, size: 320, offset: 1088)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !1025, line: 245, size: 320, elements: !1058)
!1058 = !{!1059, !1086}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1057, file: !1025, line: 246, baseType: !1060, size: 320)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1025, line: 114, size: 320, elements: !1061)
!1061 = !{!1062, !1063, !1075, !1078, !1085}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1060, file: !1025, line: 116, baseType: !60, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !1025, line: 117, baseType: !1064, size: 64, offset: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !1025, line: 117, size: 64, elements: !1065)
!1065 = !{!1066, !1074}
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !1025, line: 118, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1064, file: !1025, line: 118, size: 64, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1067, file: !1025, line: 120, baseType: !114, size: 16)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1067, file: !1025, line: 121, baseType: !1071, size: 48, offset: 16)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, elements: !1072)
!1072 = !{!1073}
!1073 = !DISubrange(count: 6)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1064, file: !1025, line: 127, baseType: !60, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1060, file: !1025, line: 129, baseType: !1076, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1025, line: 102, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1060, file: !1025, line: 130, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1025, line: 108, size: 192, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1080, file: !1025, line: 109, baseType: !405, size: 128, align: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1080, file: !1025, line: 110, baseType: !471, size: 32, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1080, file: !1025, line: 111, baseType: !313, size: 8, offset: 160)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1060, file: !1025, line: 131, baseType: !37, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1025, line: 247, baseType: !1087, size: 320)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1025, line: 247, size: 320, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1087, file: !1025, line: 248, baseType: !60, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1087, file: !1025, line: 249, baseType: !60, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1087, file: !1025, line: 250, baseType: !1076, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1087, file: !1025, line: 251, baseType: !1079, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1087, file: !1025, line: 252, baseType: !319, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !1025, line: 260, baseType: !1095, size: 256, offset: 1408)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !1025, line: 260, size: 256, elements: !1096)
!1096 = !{!1097, !1103}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1095, file: !1025, line: 261, baseType: !1098, size: 256)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1025, line: 134, size: 256, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1098, file: !1025, line: 135, baseType: !41, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1098, file: !1025, line: 136, baseType: !1102, size: 256)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !489)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !1025, line: 262, baseType: !1104, size: 256)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1095, file: !1025, line: 262, size: 256, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1104, file: !1025, line: 264, baseType: !118, size: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1104, file: !1025, line: 265, baseType: !1108, size: 128, offset: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1109, line: 22, size: 128, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1110 = !{!1111, !1114}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1108, file: !1109, line: 23, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1109, line: 23, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1108, file: !1109, line: 24, baseType: !60, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1024, file: !1025, line: 280, baseType: !1116, size: 64, offset: 1664)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1025, line: 176, size: 192, elements: !1118)
!1118 = !{!1119, !1128, !1129}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1117, file: !1025, line: 177, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1025, line: 171, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!43, !1023, !1124, !1126, !1023}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1077)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1117, file: !1025, line: 178, baseType: !1023, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1117, file: !1025, line: 179, baseType: !1076, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !977, file: !978, line: 90, baseType: !871, size: 320, offset: 2432)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !977, file: !978, line: 97, baseType: !1132, size: 256, offset: 2752)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1133, line: 98, size: 256, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1132, file: !1133, line: 99, baseType: !418, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1132, file: !1133, line: 100, baseType: !118, size: 128, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1132, file: !1133, line: 101, baseType: !1138, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1133, line: 21, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !977, file: !978, line: 99, baseType: !1144, size: 768, offset: 3008)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !33, line: 199, size: 768, elements: !1145)
!1145 = !{!1146, !1151}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1144, file: !33, line: 200, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!43, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1144, file: !33, line: 201, baseType: !1152, size: 704, offset: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !33, line: 193, size: 704, elements: !1153)
!1153 = !{!1154, !1212}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1152, file: !33, line: 195, baseType: !1155, size: 640)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !33, line: 173, size: 640, elements: !1156)
!1156 = !{!1157, !1169, !1181, !1182, !1202, !1203, !1205, !1211}
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !33, line: 174, baseType: !1158, size: 192)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1155, file: !33, line: 174, size: 192, elements: !1159)
!1159 = !{!1160, !1168}
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !33, line: 175, baseType: !1161, size: 192)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !33, line: 175, size: 192, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1161, file: !33, line: 176, baseType: !54, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1161, file: !33, line: 177, baseType: !43, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1161, file: !33, line: 178, baseType: !43, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1161, file: !33, line: 179, baseType: !43, size: 32, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1161, file: !33, line: 180, baseType: !43, size: 32, offset: 160)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1158, file: !33, line: 182, baseType: !405, size: 128, align: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1155, file: !33, line: 184, baseType: !1170, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1172, line: 26, size: 256, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1171, file: !1172, line: 27, baseType: !7, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1171, file: !1172, line: 28, baseType: !1176, size: 192, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1177, line: 43, size: 192, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1176, file: !1177, line: 44, baseType: !431, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1176, file: !1177, line: 45, baseType: !118, size: 128, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1155, file: !33, line: 185, baseType: !54, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1155, file: !33, line: 186, baseType: !1183, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !33, line: 204, size: 960, elements: !1185)
!1185 = !{!1186, !1187, !1191, !1198}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1184, file: !33, line: 205, baseType: !1144, size: 768)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1184, file: !33, line: 206, baseType: !1188, size: 64, offset: 768)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!1150, !1183}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1184, file: !33, line: 207, baseType: !1192, size: 64, offset: 832)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1195, !1196, !1197}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1184, file: !33, line: 209, baseType: !1199, size: 64, offset: 896)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!43, !1195, !54}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1155, file: !33, line: 187, baseType: !1150, size: 64, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1155, file: !33, line: 188, baseType: !1204, size: 64, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1155, file: !33, line: 189, baseType: !1206, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !33, line: 157, size: 256, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1207, file: !33, line: 158, baseType: !570, size: 192, align: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1207, file: !33, line: 159, baseType: !1195, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1155, file: !33, line: 190, baseType: !480, size: 64, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1152, file: !33, line: 196, baseType: !702, size: 64, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !977, file: !978, line: 100, baseType: !1195, size: 64, offset: 3776)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !977, file: !978, line: 102, baseType: !1215, size: 64, offset: 3840)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !978, line: 107, size: 1152, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1226}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1216, file: !978, line: 108, baseType: !484, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1216, file: !978, line: 109, baseType: !976, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1216, file: !978, line: 110, baseType: !260, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1216, file: !978, line: 111, baseType: !70, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1216, file: !978, line: 112, baseType: !1223, size: 640, offset: 256)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 640, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 10)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1216, file: !978, line: 113, baseType: !1227, size: 256, offset: 896)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 256, elements: !489)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !977, file: !978, line: 103, baseType: !1229, size: 640, offset: 3904)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 640, elements: !1224)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !977, file: !978, line: 104, baseType: !1231, size: 256, offset: 4544)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 256, elements: !489)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !820, file: !144, line: 904, baseType: !392, size: 64, offset: 9280)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !820, file: !144, line: 906, baseType: !1234, size: 64, offset: 9344)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !144, line: 906, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !820, file: !144, line: 930, baseType: !70, size: 32, offset: 9408)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !820, file: !144, line: 933, baseType: !70, size: 32, offset: 9440)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !820, file: !144, line: 935, baseType: !1239, size: 64, offset: 9472)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !129, line: 103, size: 64, elements: !1240)
!1240 = !{!1241}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1239, file: !129, line: 104, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !129, line: 101, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !820, file: !144, line: 940, baseType: !418, size: 64, offset: 9536)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !820, file: !144, line: 942, baseType: !1132, size: 256, offset: 9600)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !817, file: !144, line: 986, baseType: !1247, offset: 10240)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: -1)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !522, file: !523, line: 882, baseType: !816, size: 64, offset: 9792)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !522, file: !523, line: 884, baseType: !43, size: 32, offset: 9856)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !522, file: !523, line: 885, baseType: !43, size: 32, offset: 9888)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !522, file: !523, line: 886, baseType: !43, size: 32, offset: 9920)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !522, file: !523, line: 888, baseType: !43, size: 32, offset: 9952)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !522, file: !523, line: 890, baseType: !60, size: 64, offset: 9984)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !522, file: !523, line: 893, baseType: !7, size: 32, offset: 10048)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !522, file: !523, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !522, file: !523, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !522, file: !523, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !522, file: !523, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !522, file: !523, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !522, file: !523, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !522, file: !523, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !522, file: !523, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !522, file: !523, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !522, file: !523, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !522, file: !523, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !522, file: !523, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !522, file: !523, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !522, file: !523, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !522, file: !523, line: 969, baseType: !60, size: 64, offset: 10176)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !522, file: !523, line: 971, baseType: !1273, size: 448, offset: 10240)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !27, line: 25, size: 448, elements: !1274)
!1274 = !{!1275, !1276, !1281}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1273, file: !27, line: 26, baseType: !60, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1273, file: !27, line: 27, baseType: !1277, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!388, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !27, line: 28, baseType: !1282, size: 320, offset: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !27, line: 28, size: 320, elements: !1283)
!1283 = !{!1284, !1294, !1319}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1282, file: !27, line: 37, baseType: !1285, size: 320)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !27, line: 30, size: 320, elements: !1286)
!1286 = !{!1287, !1289, !1290, !1291, !1292, !1293}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1285, file: !27, line: 31, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1285, file: !27, line: 32, baseType: !243, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !27, line: 33, baseType: !243, size: 32, offset: 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1285, file: !27, line: 34, baseType: !243, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1285, file: !27, line: 35, baseType: !247, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1285, file: !27, line: 36, baseType: !1288, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1282, file: !27, line: 47, baseType: !1295, size: 192)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !27, line: 39, size: 192, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1318}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1295, file: !27, line: 40, baseType: !687, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1295, file: !27, line: 41, baseType: !26, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !27, line: 42, baseType: !1300, size: 64, offset: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1295, file: !27, line: 42, size: 64, elements: !1301)
!1301 = !{!1302, !1310}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1300, file: !27, line: 43, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1305, line: 7, size: 128, elements: !1306)
!1305 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1306 = !{!1307, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1304, file: !1305, line: 8, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !58, line: 93, baseType: !64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1304, file: !1305, line: 9, baseType: !64, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1300, file: !27, line: 44, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1313, line: 7, size: 64, elements: !1314)
!1313 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1314 = !{!1315, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1312, file: !1313, line: 8, baseType: !1316, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1313, line: 5, baseType: !917)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1312, file: !1313, line: 9, baseType: !917, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1295, file: !27, line: 46, baseType: !247, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1282, file: !27, line: 55, baseType: !1320, size: 256)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !27, line: 49, size: 256, elements: !1321)
!1321 = !{!1322, !1330, !1331, !1332, !1333}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1320, file: !27, line: 50, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1325, line: 36, size: 64, elements: !1326)
!1325 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1326 = !{!1327, !1328, !1329}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1324, file: !1325, line: 37, baseType: !43, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1324, file: !1325, line: 38, baseType: !969, size: 16, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1324, file: !1325, line: 39, baseType: !969, size: 16, offset: 48)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1320, file: !27, line: 51, baseType: !43, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1320, file: !27, line: 52, baseType: !43, size: 32, offset: 96)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1320, file: !27, line: 53, baseType: !60, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1320, file: !27, line: 54, baseType: !60, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !522, file: !523, line: 973, baseType: !1335, size: 32, offset: 10688)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !46, line: 27, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !58, line: 28, baseType: !43)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !522, file: !523, line: 974, baseType: !1335, size: 32, offset: 10720)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !522, file: !523, line: 978, baseType: !60, size: 64, offset: 10752)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !522, file: !523, line: 987, baseType: !521, size: 64, offset: 10816)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !522, file: !523, line: 990, baseType: !521, size: 64, offset: 10880)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !522, file: !523, line: 995, baseType: !118, size: 128, offset: 10944)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !522, file: !523, line: 996, baseType: !118, size: 128, offset: 11072)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !522, file: !523, line: 997, baseType: !521, size: 64, offset: 11200)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !522, file: !523, line: 1005, baseType: !118, size: 128, offset: 11264)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !522, file: !523, line: 1006, baseType: !118, size: 128, offset: 11392)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !522, file: !523, line: 1009, baseType: !467, size: 64, offset: 11520)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !522, file: !523, line: 1010, baseType: !1348, size: 512, offset: 11584)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 512, elements: !489)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !522, file: !523, line: 1011, baseType: !118, size: 128, offset: 12096)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !522, file: !523, line: 1012, baseType: !118, size: 128, offset: 12224)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !522, file: !523, line: 1014, baseType: !1170, size: 64, offset: 12352)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !522, file: !523, line: 1017, baseType: !1353, size: 64, offset: 12416)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !522, file: !523, line: 1020, baseType: !1353, size: 64, offset: 12480)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !522, file: !523, line: 1023, baseType: !41, size: 64, offset: 12544)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !522, file: !523, line: 1025, baseType: !247, size: 64, offset: 12608)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !522, file: !523, line: 1026, baseType: !247, size: 64, offset: 12672)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !522, file: !523, line: 1031, baseType: !247, size: 64, offset: 12736)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !522, file: !523, line: 1032, baseType: !1360, size: 192, offset: 12800)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !523, line: 324, size: 192, elements: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1360, file: !523, line: 326, baseType: !247, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1360, file: !523, line: 327, baseType: !247, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1360, file: !523, line: 328, baseType: !431, size: 32, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !522, file: !523, line: 1041, baseType: !60, size: 64, offset: 12992)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !522, file: !523, line: 1042, baseType: !60, size: 64, offset: 13056)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !522, file: !523, line: 1045, baseType: !247, size: 64, offset: 13120)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !522, file: !523, line: 1048, baseType: !247, size: 64, offset: 13184)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !522, file: !523, line: 1051, baseType: !60, size: 64, offset: 13248)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !522, file: !523, line: 1052, baseType: !60, size: 64, offset: 13312)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !522, file: !523, line: 1055, baseType: !1372, size: 640, offset: 13376)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1373, line: 132, size: 640, elements: !1374)
!1373 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1374 = !{!1375, !1381, !1382}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1372, file: !1373, line: 133, baseType: !1376, size: 576)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 576, elements: !463)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1373, line: 117, size: 192, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1377, file: !1373, line: 118, baseType: !247, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1377, file: !1373, line: 119, baseType: !696, size: 128, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1372, file: !1373, line: 134, baseType: !7, size: 32, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1372, file: !1373, line: 135, baseType: !7, size: 32, offset: 608)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !522, file: !523, line: 1058, baseType: !1384, size: 448, offset: 14016)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1373, line: 144, size: 448, elements: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1384, file: !1373, line: 145, baseType: !405, size: 128, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1384, file: !1373, line: 146, baseType: !426, size: 256, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1384, file: !1373, line: 147, baseType: !7, size: 32, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !522, file: !523, line: 1064, baseType: !1390, size: 64, offset: 14464)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1393, line: 110, size: 1472, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1443, !1444, !1445, !1453}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1392, file: !1393, line: 111, baseType: !418, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1392, file: !1393, line: 112, baseType: !260, size: 32, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1392, file: !1393, line: 113, baseType: !269, size: 32, offset: 96)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1392, file: !1393, line: 114, baseType: !260, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1392, file: !1393, line: 115, baseType: !269, size: 32, offset: 160)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1392, file: !1393, line: 116, baseType: !260, size: 32, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1392, file: !1393, line: 117, baseType: !269, size: 32, offset: 224)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1392, file: !1393, line: 118, baseType: !260, size: 32, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1392, file: !1393, line: 119, baseType: !269, size: 32, offset: 288)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1392, file: !1393, line: 120, baseType: !7, size: 32, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1392, file: !1393, line: 121, baseType: !1406, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !308, line: 24, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 24, size: 64, elements: !1408)
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1407, file: !308, line: 24, baseType: !247, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1392, file: !1393, line: 122, baseType: !1406, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1392, file: !1393, line: 123, baseType: !1406, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1392, file: !1393, line: 124, baseType: !1406, size: 64, offset: 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1392, file: !1393, line: 125, baseType: !1406, size: 64, offset: 640)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1392, file: !1393, line: 127, baseType: !108, size: 8, offset: 704)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1392, file: !1393, line: 129, baseType: !1023, size: 64, offset: 768)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1392, file: !1393, line: 130, baseType: !1023, size: 64, offset: 832)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1392, file: !1393, line: 131, baseType: !1023, size: 64, offset: 896)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1392, file: !1393, line: 132, baseType: !1023, size: 64, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1392, file: !1393, line: 135, baseType: !41, size: 64, offset: 1024)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1392, file: !1393, line: 137, baseType: !1421, size: 64, offset: 1088)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1423, line: 14, size: 1088, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1422, file: !1423, line: 15, baseType: !471, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1422, file: !1423, line: 17, baseType: !909, size: 320, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1422, file: !1423, line: 19, baseType: !60, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1422, file: !1423, line: 20, baseType: !418, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1422, file: !1423, line: 23, baseType: !484, size: 128, offset: 512)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1422, file: !1423, line: 24, baseType: !260, size: 32, offset: 640)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1422, file: !1423, line: 29, baseType: !418, size: 64, offset: 704)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1422, file: !1423, line: 36, baseType: !1433, size: 320, offset: 768)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1434, line: 15, size: 320, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1433, file: !1434, line: 16, baseType: !431, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1433, file: !1434, line: 18, baseType: !43, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1433, file: !1434, line: 19, baseType: !43, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1433, file: !1434, line: 20, baseType: !43, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1433, file: !1434, line: 21, baseType: !43, size: 32, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1433, file: !1434, line: 22, baseType: !60, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1433, file: !1434, line: 23, baseType: !60, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1392, file: !1393, line: 138, baseType: !976, size: 64, offset: 1152)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1392, file: !1393, line: 139, baseType: !1215, size: 64, offset: 1216)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1392, file: !1393, line: 140, baseType: !1446, size: 64, offset: 1280)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1393, line: 25, size: 64, elements: !1448)
!1448 = !{!1449, !1450, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1447, file: !1393, line: 26, baseType: !70, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1447, file: !1393, line: 27, baseType: !43, size: 32, offset: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1447, file: !1393, line: 28, baseType: !1452, offset: 64)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, elements: !1248)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1393, line: 142, baseType: !1454, size: 128, offset: 1344)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1392, file: !1393, line: 142, size: 128, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1454, file: !1393, line: 143, baseType: !43, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1454, file: !1393, line: 144, baseType: !405, size: 128, align: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !522, file: !523, line: 1067, baseType: !1390, size: 64, offset: 14528)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !522, file: !523, line: 1070, baseType: !1390, size: 64, offset: 14592)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !522, file: !523, line: 1074, baseType: !1023, size: 64, offset: 14656)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !522, file: !523, line: 1084, baseType: !1462, size: 128, offset: 14720)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !1463)
!1463 = !{!1464}
!1464 = !DISubrange(count: 16)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !522, file: !523, line: 1086, baseType: !1466, size: 64, offset: 14848)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !523, line: 55, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !522, file: !523, line: 1089, baseType: !1469, size: 64, offset: 14912)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1470, line: 12, size: 64, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1469, file: !1470, line: 13, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1470, line: 8, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !522, file: !523, line: 1090, baseType: !1476, size: 128, offset: 14976)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1477, line: 13, size: 128, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1476, file: !1477, line: 14, baseType: !118, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !522, file: !523, line: 1097, baseType: !1481, size: 64, offset: 15104)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !523, line: 50, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !522, file: !523, line: 1100, baseType: !1484, size: 64, offset: 15168)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !523, line: 1100, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !522, file: !523, line: 1103, baseType: !1487, size: 64, offset: 15232)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !523, line: 53, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !522, file: !523, line: 1107, baseType: !1490, size: 64, offset: 15296)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1492, line: 31, size: 576, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1493 = !{!1494, !1495, !1498, !1501, !3290, !3291, !3294, !3297, !3298}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1491, file: !1492, line: 32, baseType: !471, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1491, file: !1492, line: 33, baseType: !1496, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1492, line: 9, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1491, file: !1492, line: 34, baseType: !1499, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1492, line: 10, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1491, file: !1492, line: 35, baseType: !1502, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1504, line: 8, size: 960, elements: !1505)
!1504 = !DIFile(filename: "fs/notify/../mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a5eb1a988fb7c9469e00ad2dc4ac71")
!1505 = !{!1506, !1507, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1503, file: !1504, line: 9, baseType: !1009, size: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1503, file: !1504, line: 10, baseType: !1508, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount", file: !1504, line: 39, size: 2560, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !3238, !3243, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3268, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_hash", scope: !1509, file: !1504, line: 40, baseType: !484, size: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_parent", scope: !1509, file: !1504, line: 41, baseType: !1508, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mountpoint", scope: !1509, file: !1504, line: 42, baseType: !210, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1509, file: !1504, line: 43, baseType: !1515, size: 256, offset: 256)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1516, line: 70, size: 256, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1517 = !{!1518, !1519, !3236, !3237}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1515, file: !1516, line: 71, baseType: !210, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1515, file: !1516, line: 72, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !173, line: 1190, size: 10752, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528, !2725, !2857, !2897, !2988, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3005, !3009, !3010, !3013, !3016, !3019, !3022, !3023, !3024, !3065, !3091, !3092, !3093, !3094, !3095, !3096, !3117, !3121, !3128, !3129, !3130, !3131, !3190, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1521, file: !173, line: 1191, baseType: !118, size: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1521, file: !173, line: 1192, baseType: !345, size: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1521, file: !173, line: 1193, baseType: !108, size: 8, offset: 160)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1521, file: !173, line: 1194, baseType: !60, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1521, file: !173, line: 1195, baseType: !62, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1521, file: !173, line: 1196, baseType: !1529, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !173, line: 2366, size: 576, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1540, !1544, !1548, !1552, !2713, !2714, !2715, !2717, !2718, !2719, !2721, !2722, !2723, !2724}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1530, file: !173, line: 2367, baseType: !37, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1530, file: !173, line: 2368, baseType: !43, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1530, file: !173, line: 2376, baseType: !1535, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!43, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1516, line: 21, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1530, file: !173, line: 2377, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !173, line: 75, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1530, file: !173, line: 2378, baseType: !1545, size: 64, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!210, !1529, !43, !37, !41}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1530, file: !173, line: 2380, baseType: !1549, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !1520}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1530, file: !173, line: 2381, baseType: !1553, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1562, !2371, !2397, !2398, !2399, !2400, !2404, !2407, !2408, !2409, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2477, !2481, !2501, !2518, !2519, !2520, !2521, !2530, !2553, !2554, !2557, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2571, !2572, !2671, !2679, !2680, !2681, !2683, !2687, !2688, !2692, !2693, !2694, !2695, !2697, !2698, !2699, !2706, !2707, !2708, !2712}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1554, file: !6, line: 403, baseType: !5, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1554, file: !6, line: 406, baseType: !118, size: 128, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1554, file: !6, line: 409, baseType: !1559, size: 448, offset: 192)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 448, elements: !1560)
!1560 = !{!1561}
!1561 = !DISubrange(count: 56)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1554, file: !6, line: 417, baseType: !1563, size: 768, offset: 640)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1564)
!1564 = !{!1565, !2365, !2366, !2367, !2370}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1563, file: !6, line: 46, baseType: !1566, size: 512)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1567, line: 64, size: 512, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1568 = !{!1569, !1570, !1571, !1573, !1617, !2212, !2355, !2360, !2361, !2362, !2363, !2364}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1566, file: !1567, line: 65, baseType: !37, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1566, file: !1567, line: 66, baseType: !118, size: 128, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1566, file: !1567, line: 67, baseType: !1572, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1566, file: !1567, line: 68, baseType: !1574, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1567, line: 168, size: 768, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1575, file: !1567, line: 169, baseType: !118, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1575, file: !1567, line: 170, baseType: !80, size: 32, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1575, file: !1567, line: 171, baseType: !1566, size: 512, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1575, file: !1567, line: 172, baseType: !1581, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1567, line: 133, size: 192, elements: !1584)
!1584 = !{!1585, !1592, !1597}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1583, file: !1567, line: 134, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!43, !1590}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1583, file: !1567, line: 135, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!37, !1590}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1583, file: !1567, line: 136, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!43, !1590, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1567, line: 125, size: 20736, elements: !1604)
!1604 = !{!1605, !1607, !1611, !1612, !1616}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1603, file: !1567, line: 126, baseType: !1606, size: 192)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 192, elements: !463)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1603, file: !1567, line: 127, baseType: !1608, size: 4096, offset: 192)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 4096, elements: !1609)
!1609 = !{!1610}
!1610 = !DISubrange(count: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1603, file: !1567, line: 128, baseType: !43, size: 32, offset: 4288)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1603, file: !1567, line: 129, baseType: !1613, size: 16384, offset: 4320)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16384, elements: !1614)
!1614 = !{!1615}
!1615 = !DISubrange(count: 2048)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1603, file: !1567, line: 130, baseType: !43, size: 32, offset: 20704)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1566, file: !1567, line: 69, baseType: !1618, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1567, line: 116, size: 384, elements: !1621)
!1621 = !{!1622, !1626, !1648, !2176, !2204, !2208}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1620, file: !1567, line: 117, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1572}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1620, file: !1567, line: 118, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1630, line: 254, size: 128, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1631 = !{!1632, !1644}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1629, file: !1630, line: 255, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1636, !1572, !1639, !319}
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !46, line: 66, baseType: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !58, line: 73, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !58, line: 15, baseType: !388)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1630, line: 30, size: 128, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1640, file: !1630, line: 31, baseType: !37, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1640, file: !1630, line: 32, baseType: !45, size: 16, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1629, file: !1630, line: 256, baseType: !1645, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1636, !1572, !1639, !37, !56}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1620, file: !1567, line: 119, baseType: !1649, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1630, line: 84, size: 320, elements: !1653)
!1653 = !{!1654, !1655, !1659, !2172, !2174}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1652, file: !1630, line: 85, baseType: !37, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1652, file: !1630, line: 86, baseType: !1656, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!45, !1572, !1639, !43}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1652, file: !1630, line: 88, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!45, !1572, !1663, !43}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1630, line: 175, size: 512, elements: !1665)
!1665 = !{!1666, !1667, !1668, !1669, !2163, !2167, !2168}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1664, file: !1630, line: 176, baseType: !1640, size: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1664, file: !1630, line: 177, baseType: !56, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1664, file: !1630, line: 178, baseType: !41, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1664, file: !1630, line: 179, baseType: !1670, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !173, line: 472, size: 1536, align: 64, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !2155, !2156, !2157, !2160, !2161, !2162}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1674, file: !173, line: 473, baseType: !254, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1674, file: !173, line: 474, baseType: !509, size: 128, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1674, file: !173, line: 475, baseType: !871, size: 320, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1674, file: !173, line: 476, baseType: !514, size: 32, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1674, file: !173, line: 477, baseType: !70, size: 32, offset: 544)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1674, file: !173, line: 482, baseType: !699, size: 128, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1674, file: !173, line: 483, baseType: !60, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1674, file: !173, line: 484, baseType: !60, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1674, file: !173, line: 485, baseType: !1685, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !173, line: 404, size: 1280, elements: !1688)
!1688 = !{!1689, !1980, !2050, !2054, !2058, !2064, !2070, !2074, !2079, !2083, !2087, !2091, !2119, !2123, !2127, !2131, !2136, !2140, !2147, !2151}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1687, file: !173, line: 405, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!43, !1693, !1978}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !144, line: 74, size: 512, align: 128, elements: !1695)
!1695 = !{!1696, !1697, !1972, !1977}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1694, file: !144, line: 75, baseType: !60, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !144, line: 83, baseType: !1698, size: 320, offset: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1694, file: !144, line: 83, size: 320, elements: !1699)
!1699 = !{!1700, !1721, !1735, !1739, !1971}
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !144, line: 84, baseType: !1701, size: 320)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1698, file: !144, line: 84, size: 320, elements: !1702)
!1702 = !{!1703, !1714, !1715, !1720}
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !144, line: 90, baseType: !1704, size: 128)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1701, file: !144, line: 90, size: 128, elements: !1705)
!1705 = !{!1706, !1707, !1712, !1713}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1704, file: !144, line: 91, baseType: !118, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1704, file: !144, line: 94, baseType: !1708, size: 128)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !144, line: 94, size: 128, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1708, file: !144, line: 96, baseType: !41, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1708, file: !144, line: 98, baseType: !7, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1704, file: !144, line: 102, baseType: !118, size: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1704, file: !144, line: 103, baseType: !118, size: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1701, file: !144, line: 106, baseType: !1673, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !144, line: 107, baseType: !1716, size: 64, offset: 192)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1701, file: !144, line: 107, size: 64, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1716, file: !144, line: 108, baseType: !60, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1716, file: !144, line: 109, baseType: !60, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1701, file: !144, line: 117, baseType: !60, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !144, line: 119, baseType: !1722, size: 320)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1698, file: !144, line: 119, size: 320, elements: !1723)
!1723 = !{!1724, !1725, !1728, !1729, !1730}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1722, file: !144, line: 124, baseType: !60, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1722, file: !144, line: 125, baseType: !1726, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !144, line: 125, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1722, file: !144, line: 126, baseType: !60, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1722, file: !144, line: 127, baseType: !60, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !144, line: 128, baseType: !1731, size: 64, offset: 256)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !144, line: 128, size: 64, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1731, file: !144, line: 133, baseType: !60, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1731, file: !144, line: 138, baseType: !418, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !144, line: 141, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1698, file: !144, line: 141, size: 64, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1736, file: !144, line: 142, baseType: !60, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !144, line: 144, baseType: !1740, size: 128)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1698, file: !144, line: 144, size: 128, elements: !1741)
!1741 = !{!1742, !1970}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1740, file: !144, line: 146, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !1745)
!1745 = !{!1746, !1756, !1777, !1778, !1779, !1780, !1781, !1952, !1953, !1954}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1744, file: !14, line: 127, baseType: !1747, size: 384)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !1748)
!1748 = !{!1749, !1750, !1752, !1753, !1754, !1755}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1747, file: !14, line: 22, baseType: !60, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1747, file: !14, line: 23, baseType: !1751, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1747, file: !14, line: 24, baseType: !1751, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1747, file: !14, line: 25, baseType: !60, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1747, file: !14, line: 26, baseType: !60, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1747, file: !14, line: 27, baseType: !60, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1744, file: !14, line: 128, baseType: !1757, size: 128, offset: 384)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1758, line: 105, size: 128, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1757, file: !1758, line: 110, baseType: !60, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1757, file: !1758, line: 118, baseType: !1762, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1758, line: 95, size: 448, elements: !1764)
!1764 = !{!1765, !1766, !1772, !1773, !1774, !1775, !1776}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1763, file: !1758, line: 96, baseType: !418, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1763, file: !1758, line: 97, baseType: !1767, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1758, line: 60, baseType: !1769)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1763, file: !1758, line: 98, baseType: !1767, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1763, file: !1758, line: 99, baseType: !313, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1763, file: !1758, line: 100, baseType: !313, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1763, file: !1758, line: 101, baseType: !405, size: 128, align: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1763, file: !1758, line: 102, baseType: !1771, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1744, file: !14, line: 129, baseType: !1171, size: 256, offset: 512)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1744, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1744, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1744, file: !14, line: 132, baseType: !60, size: 64, offset: 832)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1744, file: !14, line: 133, baseType: !1782, size: 64, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !1785)
!1785 = !{!1786, !1790, !1948}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1784, file: !14, line: 83, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !1693}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1784, file: !14, line: 89, baseType: !1791, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !144, line: 1184, baseType: !7)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1797, line: 512, size: 896, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1798 = !{!1799, !1915, !1916, !1923, !1930, !1940, !1941, !1942, !1944, !1946}
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !1797, line: 513, baseType: !1800, size: 320)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1796, file: !1797, line: 513, size: 320, elements: !1801)
!1801 = !{!1802, !1911, !1912, !1913, !1914}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1800, file: !1797, line: 514, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !144, line: 625, size: 1344, elements: !1805)
!1805 = !{!1806, !1815, !1816, !1822, !1829, !1830, !1835, !1836, !1841, !1842, !1845, !1904, !1905, !1906, !1907, !1908, !1909}
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !144, line: 628, baseType: !1807, size: 128)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !144, line: 628, size: 128, elements: !1808)
!1808 = !{!1809, !1814}
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !144, line: 629, baseType: !1810, size: 128)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1807, file: !144, line: 629, size: 128, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1810, file: !144, line: 631, baseType: !60, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1810, file: !144, line: 632, baseType: !60, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1807, file: !144, line: 635, baseType: !405, size: 128, align: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1804, file: !144, line: 639, baseType: !816, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1804, file: !144, line: 640, baseType: !1817, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !852, line: 297, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !852, line: 297, size: 64, elements: !1819)
!1819 = !{!1820}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1818, file: !852, line: 297, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !857, line: 19, baseType: !60)
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !144, line: 646, baseType: !1823, size: 64, offset: 256)
!1823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !144, line: 646, size: 64, elements: !1824)
!1824 = !{!1825, !1828}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1823, file: !144, line: 647, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !144, line: 542, baseType: !60)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1823, file: !144, line: 648, baseType: !1827, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1804, file: !144, line: 666, baseType: !43, size: 32, offset: 320)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1804, file: !144, line: 667, baseType: !1831, size: 64, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !144, line: 579, size: 320, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1832, file: !144, line: 580, baseType: !871, size: 320)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1804, file: !144, line: 670, baseType: !313, size: 8, offset: 448)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1804, file: !144, line: 681, baseType: !1837, size: 256, offset: 512)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !144, line: 678, size: 256, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1837, file: !144, line: 679, baseType: !570, size: 192, align: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1837, file: !144, line: 680, baseType: !60, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1804, file: !144, line: 689, baseType: !118, size: 128, offset: 768)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1804, file: !144, line: 691, baseType: !1843, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !144, line: 691, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1804, file: !144, line: 694, baseType: !1846, size: 64, offset: 960)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1797, line: 563, size: 1024, elements: !1849)
!1849 = !{!1850, !1854, !1855, !1859, !1863, !1867, !1868, !1872, !1876, !1880, !1881, !1882, !1886, !1890, !1896, !1900}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1848, file: !1797, line: 564, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1803}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1848, file: !1797, line: 569, baseType: !1851, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1848, file: !1797, line: 571, baseType: !1856, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!43, !1803, !60}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1848, file: !1797, line: 572, baseType: !1860, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!43, !1803}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1848, file: !1797, line: 578, baseType: !1864, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!43, !1803, !60, !60, !60}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1848, file: !1797, line: 580, baseType: !1791, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1848, file: !1797, line: 581, baseType: !1869, size: 64, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!1794, !1795, !7}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1848, file: !1797, line: 582, baseType: !1873, size: 64, offset: 448)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1794, !1795, !60, !60}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1848, file: !1797, line: 584, baseType: !1877, size: 64, offset: 512)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!60, !1803}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1848, file: !1797, line: 588, baseType: !1791, size: 64, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1848, file: !1797, line: 591, baseType: !1791, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1848, file: !1797, line: 597, baseType: !1883, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!43, !1803, !60, !41, !43, !43}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1848, file: !1797, line: 603, baseType: !1887, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!37, !1803}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1848, file: !1797, line: 613, baseType: !1891, size: 64, offset: 832)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!43, !1803, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !144, line: 717, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1848, file: !1797, line: 625, baseType: !1897, size: 64, offset: 896)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!1894, !1803, !60}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1848, file: !1797, line: 633, baseType: !1901, size: 64, offset: 960)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1693, !1803, !60}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1804, file: !144, line: 697, baseType: !60, size: 64, offset: 1024)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1804, file: !144, line: 699, baseType: !392, size: 64, offset: 1088)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1804, file: !144, line: 700, baseType: !41, size: 64, offset: 1152)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1804, file: !144, line: 711, baseType: !418, size: 64, offset: 1216)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1804, file: !144, line: 717, baseType: !1894, size: 64, offset: 1280)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1804, file: !144, line: 722, baseType: !1910, offset: 1344)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !144, line: 570, elements: !837)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1800, file: !1797, line: 515, baseType: !514, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1800, file: !1797, line: 516, baseType: !60, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1800, file: !1797, line: 517, baseType: !60, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1800, file: !1797, line: 518, baseType: !60, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1796, file: !1797, line: 520, baseType: !143, size: 32, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1796, file: !1797, line: 522, baseType: !1917, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !857, line: 22, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !857, line: 22, size: 64, elements: !1920)
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1919, file: !857, line: 22, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !857, line: 15, baseType: !60)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1796, file: !1797, line: 524, baseType: !1924, size: 64, offset: 448)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !852, line: 372, baseType: !1926)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 372, size: 64, elements: !1927)
!1927 = !{!1928}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1926, file: !852, line: 372, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !857, line: 16, baseType: !60)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !1797, line: 527, baseType: !1931, size: 64, offset: 512)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1796, file: !1797, line: 527, size: 64, elements: !1932)
!1932 = !{!1933, !1939}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1931, file: !1797, line: 528, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !857, line: 21, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !857, line: 21, size: 64, elements: !1936)
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1935, file: !857, line: 21, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !857, line: 14, baseType: !60)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1931, file: !1797, line: 529, baseType: !1918, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1796, file: !1797, line: 534, baseType: !1693, size: 64, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1796, file: !1797, line: 535, baseType: !1693, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1796, file: !1797, line: 541, baseType: !1943, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1796, file: !1797, line: 545, baseType: !1945, size: 64, offset: 768)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1796, file: !1797, line: 549, baseType: !1947, size: 64, offset: 832)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !852, line: 520, baseType: !1693)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1784, file: !14, line: 100, baseType: !1949, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!43, !1743, !60, !60, !43}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1744, file: !14, line: 134, baseType: !41, size: 64, offset: 960)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1744, file: !14, line: 135, baseType: !43, size: 32, offset: 1024)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !14, line: 136, baseType: !1955, size: 128, offset: 1088)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !14, line: 136, size: 128, elements: !1956)
!1956 = !{!1957, !1963}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1955, file: !14, line: 137, baseType: !1958, size: 128)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1959, line: 6, size: 128, elements: !1960)
!1959 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1958, file: !1959, line: 7, baseType: !247, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1958, file: !1959, line: 8, baseType: !247, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !14, line: 138, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !14, line: 138, elements: !1965)
!1965 = !{!1966, !1968}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1964, file: !14, line: 138, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !14, line: 138, elements: !837)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1964, file: !14, line: 138, baseType: !1969)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1958, elements: !1248)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1740, file: !144, line: 147, baseType: !41, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1698, file: !144, line: 161, baseType: !405, size: 128, align: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !144, line: 164, baseType: !1973, size: 32, offset: 384)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1694, file: !144, line: 164, size: 32, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1973, file: !144, line: 169, baseType: !70, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1973, file: !144, line: 177, baseType: !7, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1694, file: !144, line: 181, baseType: !70, size: 32, offset: 416)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !173, line: 309, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1687, file: !173, line: 406, baseType: !1981, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!43, !392, !1984}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !144, line: 293, size: 1536, elements: !1986)
!1986 = !{!1987, !2017, !2031}
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !144, line: 295, baseType: !1988, size: 512)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !144, line: 295, size: 512, elements: !1989)
!1989 = !{!1990, !2016}
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !144, line: 296, baseType: !1991, size: 448)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !144, line: 296, size: 448, elements: !1992)
!1992 = !{!1993, !1994, !2003, !2004, !2005, !2014, !2015}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1991, file: !144, line: 298, baseType: !60, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !144, line: 299, baseType: !1995, size: 128, offset: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1991, file: !144, line: 299, size: 128, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1995, file: !144, line: 300, baseType: !118, size: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !144, line: 302, baseType: !1999, size: 128)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !144, line: 302, size: 128, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1999, file: !144, line: 303, baseType: !41, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1999, file: !144, line: 305, baseType: !7, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1991, file: !144, line: 310, baseType: !1673, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1991, file: !144, line: 311, baseType: !60, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !144, line: 312, baseType: !2006, size: 64, offset: 320)
!2006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1991, file: !144, line: 312, size: 64, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2006, file: !144, line: 313, baseType: !41, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2006, file: !144, line: 314, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !144, line: 257, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 255, size: 64, elements: !2012)
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2011, file: !144, line: 256, baseType: !60, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1991, file: !144, line: 316, baseType: !70, size: 32, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1991, file: !144, line: 317, baseType: !70, size: 32, offset: 416)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1988, file: !144, line: 323, baseType: !1694, size: 512, align: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !144, line: 325, baseType: !2018, size: 512, offset: 512)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !144, line: 325, size: 512, elements: !2019)
!2019 = !{!2020, !2030}
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !144, line: 326, baseType: !2021, size: 320)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2018, file: !144, line: 326, size: 320, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2026, !2027, !2028, !2029}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2021, file: !144, line: 327, baseType: !60, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2021, file: !144, line: 328, baseType: !60, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2021, file: !144, line: 329, baseType: !60, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2021, file: !144, line: 331, baseType: !70, size: 32, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2021, file: !144, line: 332, baseType: !70, size: 32, offset: 224)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2021, file: !144, line: 333, baseType: !70, size: 32, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2021, file: !144, line: 335, baseType: !7, size: 32, offset: 288)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2018, file: !144, line: 339, baseType: !1694, size: 512, align: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !144, line: 341, baseType: !2032, size: 512, offset: 1024)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !144, line: 341, size: 512, elements: !2033)
!2033 = !{!2034, !2043, !2049}
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !2032, file: !144, line: 342, baseType: !2035, size: 384)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !144, line: 342, size: 384, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040, !2041, !2042}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2035, file: !144, line: 343, baseType: !60, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2035, file: !144, line: 344, baseType: !60, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2035, file: !144, line: 346, baseType: !41, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2035, file: !144, line: 347, baseType: !41, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2035, file: !144, line: 348, baseType: !41, size: 64, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2035, file: !144, line: 349, baseType: !41, size: 64, offset: 320)
!2043 = !DIDerivedType(tag: DW_TAG_member, scope: !2032, file: !144, line: 352, baseType: !2044, size: 256)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !144, line: 352, size: 256, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2044, file: !144, line: 353, baseType: !60, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2044, file: !144, line: 354, baseType: !60, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2044, file: !144, line: 356, baseType: !118, size: 128, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2032, file: !144, line: 359, baseType: !1694, size: 512, align: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1687, file: !173, line: 409, baseType: !2051, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!43, !1673, !1978}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1687, file: !173, line: 412, baseType: !2055, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!313, !1673, !1984}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1687, file: !173, line: 414, baseType: !2059, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !2062}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !173, line: 310, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1687, file: !173, line: 416, baseType: !2065, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!43, !392, !1673, !62, !7, !2068, !2069}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1687, file: !173, line: 419, baseType: !2071, size: 64, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!43, !392, !1673, !62, !7, !7, !1693, !41}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1687, file: !173, line: 424, baseType: !2075, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!2078, !1673, !2078}
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !46, line: 131, baseType: !247)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1687, file: !173, line: 425, baseType: !2080, size: 64, offset: 512)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !1984, !56, !56}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1687, file: !173, line: 426, baseType: !2084, size: 64, offset: 576)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!313, !1984, !514}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1687, file: !173, line: 427, baseType: !2088, size: 64, offset: 640)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !1984}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1687, file: !173, line: 428, baseType: !2092, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!1636, !2095, !2117}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !173, line: 373, size: 384, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2104, !2105, !2106, !2107}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2096, file: !173, line: 374, baseType: !392, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2096, file: !173, line: 375, baseType: !62, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2096, file: !173, line: 376, baseType: !2101, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !2095, !388}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2096, file: !173, line: 377, baseType: !41, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2096, file: !173, line: 378, baseType: !43, size: 32, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2096, file: !173, line: 379, baseType: !114, size: 16, offset: 288)
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2096, file: !173, line: 380, baseType: !2108, size: 64, offset: 320)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2096, file: !173, line: 380, size: 64, elements: !2109)
!2109 = !{!2110, !2113}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2108, file: !173, line: 386, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !173, line: 386, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2108, file: !173, line: 395, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!1636, !41}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !173, line: 69, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1687, file: !173, line: 433, baseType: !2120, size: 64, offset: 768)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!43, !1673, !1984, !1984, !159}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1687, file: !173, line: 435, baseType: !2124, size: 64, offset: 832)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!43, !1984}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1687, file: !173, line: 436, baseType: !2128, size: 64, offset: 896)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!313, !1984, !56, !56}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1687, file: !173, line: 438, baseType: !2132, size: 64, offset: 960)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !1984, !2135, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1687, file: !173, line: 439, baseType: !2137, size: 64, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!43, !1673, !1693}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1687, file: !173, line: 442, baseType: !2141, size: 64, offset: 1088)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!43, !2144, !392, !2146}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !173, line: 66, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1687, file: !173, line: 444, baseType: !2148, size: 64, offset: 1152)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !392}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1687, file: !173, line: 445, baseType: !2152, size: 64, offset: 1216)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!43, !2095, !2117}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1674, file: !173, line: 486, baseType: !60, size: 64, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1674, file: !173, line: 487, baseType: !871, size: 320, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1674, file: !173, line: 488, baseType: !2158, size: 32, offset: 1280)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2159, line: 8, baseType: !243)
!2159 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1674, file: !173, line: 489, baseType: !80, size: 32, offset: 1312)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1674, file: !173, line: 490, baseType: !118, size: 128, offset: 1344)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1674, file: !173, line: 491, baseType: !41, size: 64, offset: 1472)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1664, file: !1630, line: 180, baseType: !2164, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!1636, !392, !1572, !1663, !319, !62, !56}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1664, file: !1630, line: 182, baseType: !2164, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1664, file: !1630, line: 184, baseType: !2169, size: 64, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!43, !392, !1572, !1663, !1803}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1652, file: !1630, line: 90, baseType: !2173, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1652, file: !1630, line: 91, baseType: !2175, size: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1620, file: !1567, line: 120, baseType: !2177, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!2180, !1590}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2182)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !167, line: 39, size: 384, elements: !2183)
!2183 = !{!2184, !2185, !2189, !2193, !2199, !2203}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2182, file: !167, line: 40, baseType: !166, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2182, file: !167, line: 41, baseType: !2186, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!313}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2182, file: !167, line: 42, baseType: !2190, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!41}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2182, file: !167, line: 43, baseType: !2194, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!950, !2197}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !167, line: 19, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2182, file: !167, line: 44, baseType: !2200, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!950}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2182, file: !167, line: 45, baseType: !298, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1620, file: !1567, line: 121, baseType: !2205, size: 64, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!950, !1590}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1620, file: !1567, line: 122, baseType: !2209, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !1590, !1196, !1197}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1566, file: !1567, line: 70, baseType: !2213, size: 64, offset: 384)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2215, line: 190, size: 1152, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2347, !2348, !2349, !2350, !2351, !2354}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2214, file: !2215, line: 191, baseType: !70, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2214, file: !2215, line: 192, baseType: !70, size: 32, offset: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2214, file: !2215, line: 202, baseType: !2213, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2214, file: !2215, line: 203, baseType: !37, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2214, file: !2215, line: 205, baseType: !570, size: 192, align: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2214, file: !2215, line: 207, baseType: !950, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2214, file: !2215, line: 208, baseType: !7, size: 32, offset: 448)
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2214, file: !2215, line: 209, baseType: !2225, size: 256, offset: 512)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2214, file: !2215, line: 209, size: 256, elements: !2226)
!2226 = !{!2227, !2236, !2240}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2225, file: !2215, line: 210, baseType: !2228, size: 256)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2215, line: 153, size: 256, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2235}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2228, file: !2215, line: 154, baseType: !60, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2228, file: !2215, line: 156, baseType: !702, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2228, file: !2215, line: 162, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2215, line: 162, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2228, file: !2215, line: 167, baseType: !60, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2225, file: !2215, line: 211, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2215, line: 170, size: 64, elements: !2238)
!2238 = !{!2239}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2237, file: !2215, line: 171, baseType: !2213, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2225, file: !2215, line: 212, baseType: !2241, size: 256)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2215, line: 174, size: 256, elements: !2242)
!2242 = !{!2243, !2342, !2345, !2346}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2241, file: !2215, line: 175, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2246)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2215, line: 271, size: 768, elements: !2247)
!2247 = !{!2248, !2306, !2310, !2311, !2312, !2313, !2314, !2318, !2319, !2320, !2321, !2338}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2246, file: !2215, line: 276, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!43, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2215, line: 251, size: 1216, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2253, file: !2215, line: 253, baseType: !2213, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2253, file: !2215, line: 254, baseType: !392, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2253, file: !2215, line: 255, baseType: !2258, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2260, line: 17, size: 960, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2291, !2292, !2295}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2259, file: !2260, line: 18, baseType: !319, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2259, file: !2260, line: 19, baseType: !56, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2259, file: !2260, line: 20, baseType: !56, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2259, file: !2260, line: 21, baseType: !56, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2259, file: !2260, line: 22, baseType: !56, size: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2259, file: !2260, line: 23, baseType: !62, size: 64, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2259, file: !2260, line: 24, baseType: !62, size: 64, offset: 384)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2259, file: !2260, line: 25, baseType: !426, size: 256, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2259, file: !2260, line: 26, baseType: !2271, size: 64, offset: 704)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2260, line: 32, size: 256, elements: !2274)
!2274 = !{!2275, !2279, !2283, !2287}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2273, file: !2260, line: 33, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!41, !2258, !61}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2273, file: !2260, line: 34, baseType: !2280, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !2258, !41}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2273, file: !2260, line: 35, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!41, !2258, !41, !61}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2273, file: !2260, line: 36, baseType: !2288, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!43, !2258, !41}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2259, file: !2260, line: 27, baseType: !43, size: 32, offset: 768)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2259, file: !2260, line: 28, baseType: !2293, size: 64, offset: 832)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2259, file: !2260, line: 29, baseType: !41, size: 64, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2253, file: !2215, line: 256, baseType: !41, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2253, file: !2215, line: 259, baseType: !426, size: 256, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2253, file: !2215, line: 260, baseType: !426, size: 256, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2253, file: !2215, line: 261, baseType: !43, size: 32, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2253, file: !2215, line: 262, baseType: !118, size: 128, offset: 832)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2253, file: !2215, line: 263, baseType: !319, size: 64, offset: 960)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2253, file: !2215, line: 265, baseType: !56, size: 64, offset: 1024)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2253, file: !2215, line: 266, baseType: !313, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2253, file: !2215, line: 267, baseType: !313, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2253, file: !2215, line: 268, baseType: !1846, size: 64, offset: 1152)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2246, file: !2215, line: 277, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !2252}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2246, file: !2215, line: 290, baseType: !2288, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2246, file: !2215, line: 292, baseType: !2276, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2246, file: !2215, line: 293, baseType: !2284, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2246, file: !2215, line: 294, baseType: !2280, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2246, file: !2215, line: 296, baseType: !2315, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!1636, !2252, !319, !56, !62}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2246, file: !2215, line: 306, baseType: !56, size: 64, offset: 448)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2246, file: !2215, line: 313, baseType: !313, size: 8, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2246, file: !2215, line: 314, baseType: !2315, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2246, file: !2215, line: 317, baseType: !2322, size: 64, offset: 640)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!2325, !2252, !2327}
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2326, line: 59, baseType: !7)
!2326 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2329, line: 37, size: 128, elements: !2330)
!2329 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2330 = !{!2331, !2337}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2328, file: !2329, line: 38, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2329, line: 31, baseType: !2333)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !392, !2336, !2327}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2328, file: !2329, line: 39, baseType: !2325, size: 32, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2246, file: !2215, line: 320, baseType: !2339, size: 64, offset: 704)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!43, !2252, !1803}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2241, file: !2215, line: 176, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2215, line: 35, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2241, file: !2215, line: 177, baseType: !62, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2241, file: !2215, line: 178, baseType: !2213, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2214, file: !2215, line: 215, baseType: !41, size: 64, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2214, file: !2215, line: 221, baseType: !247, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2214, file: !2215, line: 223, baseType: !47, size: 16, offset: 896)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2214, file: !2215, line: 224, baseType: !45, size: 16, offset: 912)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2214, file: !2215, line: 225, baseType: !2352, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2215, line: 36, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2214, file: !2215, line: 227, baseType: !405, size: 128, align: 64, offset: 1024)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1566, file: !1567, line: 71, baseType: !2356, size: 32, offset: 448)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2357, line: 19, size: 32, elements: !2358)
!2357 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2356, file: !2357, line: 20, baseType: !471, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1566, file: !1567, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1566, file: !1567, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1566, file: !1567, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1566, file: !1567, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1566, file: !1567, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1563, file: !6, line: 47, baseType: !1553, size: 64, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1563, file: !6, line: 48, baseType: !1572, size: 64, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1563, file: !6, line: 49, baseType: !2368, size: 64, offset: 640)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1563, file: !6, line: 50, baseType: !1170, size: 64, offset: 704)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1554, file: !6, line: 418, baseType: !2372, size: 64, offset: 1408)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2374)
!2374 = !{!2375, !2376, !2381, !2385, !2389, !2393}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2373, file: !6, line: 54, baseType: !1640, size: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2373, file: !6, line: 55, baseType: !2377, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!1636, !2372, !2380, !319}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2373, file: !6, line: 57, baseType: !2382, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!1636, !2372, !2380, !37, !56}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2373, file: !6, line: 59, baseType: !2386, size: 64, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !1553, !37}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2373, file: !6, line: 60, baseType: !2390, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!43, !1553}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2373, file: !6, line: 61, baseType: !2394, size: 64, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !1553}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1554, file: !6, line: 419, baseType: !37, size: 64, offset: 1472)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1554, file: !6, line: 420, baseType: !37, size: 64, offset: 1536)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1554, file: !6, line: 421, baseType: !1572, size: 64, offset: 1600)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1554, file: !6, line: 424, baseType: !2401, size: 64, offset: 1664)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1554, file: !6, line: 425, baseType: !2405, size: 64, offset: 1728)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1554, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1554, file: !6, line: 435, baseType: !426, size: 256, offset: 1856)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1554, file: !6, line: 437, baseType: !2410, size: 64, offset: 2112)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2412, line: 69, size: 320, elements: !2413)
!2412 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2413 = !{!2414, !2415, !2416, !2433, !2435, !2439, !2440}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2411, file: !2412, line: 70, baseType: !37, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2411, file: !2412, line: 71, baseType: !1553, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2411, file: !2412, line: 72, baseType: !2417, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2412, line: 47, size: 256, elements: !2420)
!2420 = !{!2421, !2422, !2428, !2432}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2419, file: !2412, line: 49, baseType: !7, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2419, file: !2412, line: 51, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!43, !37, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2411)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2419, file: !2412, line: 53, baseType: !2429, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!43, !319, !2426}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2419, file: !2412, line: 55, baseType: !298, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2411, file: !2412, line: 73, baseType: !2434, size: 16, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2411, file: !2412, line: 74, baseType: !2436, size: 8, offset: 208)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !105, line: 16, baseType: !2437)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !107, line: 20, baseType: !2438)
!2438 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2411, file: !2412, line: 75, baseType: !104, size: 8, offset: 216)
!2440 = !DIDerivedType(tag: DW_TAG_member, scope: !2411, file: !2412, line: 76, baseType: !2441, size: 64, offset: 256)
!2441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2411, file: !2412, line: 76, size: 64, elements: !2442)
!2442 = !{!2443, !2444, !2451}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2441, file: !2412, line: 77, baseType: !41, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2441, file: !2412, line: 78, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2412, line: 86, size: 128, elements: !2448)
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2447, file: !2412, line: 87, baseType: !7, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2447, file: !2412, line: 88, baseType: !319, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2441, file: !2412, line: 79, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2412, line: 92, size: 256, elements: !2455)
!2455 = !{!2456, !2457, !2458, !2460, !2461}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2454, file: !2412, line: 94, baseType: !7, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2454, file: !2412, line: 95, baseType: !7, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2454, file: !2412, line: 96, baseType: !2459, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2454, file: !2412, line: 97, baseType: !2417, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2454, file: !2412, line: 98, baseType: !41, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1554, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1554, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1554, file: !6, line: 442, baseType: !2401, size: 64, offset: 2240)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1554, file: !6, line: 443, baseType: !2405, size: 64, offset: 2304)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1554, file: !6, line: 444, baseType: !313, size: 8, offset: 2368)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1554, file: !6, line: 451, baseType: !313, size: 8, offset: 2376)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1554, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1554, file: !6, line: 455, baseType: !2470, size: 64, offset: 2432)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2472, line: 23, size: 96, elements: !2473)
!2472 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2471, file: !2472, line: 24, baseType: !43, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2471, file: !2472, line: 24, baseType: !43, size: 32, offset: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2471, file: !2472, line: 24, baseType: !43, size: 32, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1554, file: !6, line: 458, baseType: !2478, size: 64, offset: 2496)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!43}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1554, file: !6, line: 460, baseType: !2482, size: 4032, align: 512, offset: 2560)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2483, size: 4032, elements: !2499)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2484)
!2484 = !{!2485, !2486, !2487}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2483, file: !6, line: 363, baseType: !41, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2483, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2483, file: !6, line: 367, baseType: !2488, size: 448, offset: 128)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2489)
!2489 = !{!2490, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2488, file: !6, line: 320, baseType: !1553, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2488, file: !6, line: 321, baseType: !2492, size: 384, offset: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2493, line: 40, size: 384, elements: !2494)
!2493 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2494 = !{!2495}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2492, file: !2493, line: 41, baseType: !2496, size: 384, align: 64)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 384, align: 64, elements: !2497)
!2497 = !{!2498}
!2498 = !DISubrange(count: 2)
!2499 = !{!2500}
!2500 = !DISubrange(count: 7)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1554, file: !6, line: 463, baseType: !2502, size: 192, offset: 6592)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2503, line: 8, size: 192, elements: !2504)
!2503 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2504 = !{!2505, !2506, !2507}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2502, file: !2503, line: 10, baseType: !7, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2502, file: !2503, line: 11, baseType: !1353, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2502, file: !2503, line: 12, baseType: !2508, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2510, line: 59, size: 48, elements: !2511)
!2510 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2509, file: !2510, line: 60, baseType: !967, size: 16)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2509, file: !2510, line: 61, baseType: !967, size: 16, offset: 16)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2509, file: !2510, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2509, file: !2510, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2509, file: !2510, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2509, file: !2510, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1554, file: !6, line: 465, baseType: !60, size: 64, offset: 6784)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1554, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1554, file: !6, line: 470, baseType: !118, size: 128, offset: 6912)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1554, file: !6, line: 471, baseType: !2522, size: 64, offset: 7040)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2524, line: 33, size: 96, elements: !2525)
!2524 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2525 = !{!2526, !2527, !2528, !2529}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2523, file: !2524, line: 37, baseType: !43, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2523, file: !2524, line: 43, baseType: !43, size: 32, offset: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2523, file: !2524, line: 45, baseType: !47, size: 16, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2523, file: !2524, line: 47, baseType: !47, size: 16, offset: 80)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1554, file: !6, line: 476, baseType: !2531, size: 64, offset: 7104)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2533)
!2533 = !{!2534, !2550, !2551, !2552}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2532, file: !6, line: 379, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2537, line: 204, baseType: !2538)
!2537 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2537, line: 197, size: 192, elements: !2539)
!2539 = !{!2540, !2542, !2543, !2544, !2546, !2548}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2538, file: !2537, line: 198, baseType: !2541, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2537, line: 21, baseType: !244)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2538, file: !2537, line: 199, baseType: !108, size: 8, offset: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2538, file: !2537, line: 200, baseType: !108, size: 8, offset: 40)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2538, file: !2537, line: 201, baseType: !2545, size: 16, offset: 48)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2537, line: 17, baseType: !115)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2538, file: !2537, line: 202, baseType: !2547, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2537, line: 16, baseType: !248)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2538, file: !2537, line: 203, baseType: !2549, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2537, line: 22, baseType: !248)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2532, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2532, file: !6, line: 381, baseType: !319, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2532, file: !6, line: 382, baseType: !319, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1554, file: !6, line: 477, baseType: !2532, size: 256, offset: 7168)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1554, file: !6, line: 480, baseType: !2555, size: 64, offset: 7424)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1554, file: !6, line: 483, baseType: !2558, size: 64, offset: 7488)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1554, file: !6, line: 488, baseType: !319, size: 64, offset: 7552)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1554, file: !6, line: 492, baseType: !41, size: 64, offset: 7616)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1554, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1554, file: !6, line: 495, baseType: !41, size: 64, offset: 7744)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1554, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1554, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1554, file: !6, line: 500, baseType: !2567, size: 64, offset: 7872)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2569, line: 45, baseType: !2570)
!2569 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1554, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1554, file: !6, line: 504, baseType: !2573, size: 64, offset: 8000)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2576, line: 96, size: 192, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2577 = !{!2578, !2579, !2632, !2635}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2575, file: !2576, line: 97, baseType: !7, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2575, file: !2576, line: 98, baseType: !2580, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2576, line: 24, size: 3072, elements: !2582)
!2582 = !{!2583, !2585, !2586, !2587, !2588, !2601, !2602, !2603, !2604, !2616, !2617, !2618, !2629, !2630, !2631}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2581, file: !2576, line: 26, baseType: !2584, size: 128)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 128, elements: !2497)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2581, file: !2576, line: 27, baseType: !2584, size: 128, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2581, file: !2576, line: 28, baseType: !43, size: 32, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2581, file: !2576, line: 31, baseType: !80, size: 32, align: 512, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2581, file: !2576, line: 32, baseType: !2589, size: 960, offset: 576)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2590, line: 206, size: 960, elements: !2591)
!2590 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2591 = !{!2592, !2593, !2596, !2598, !2599, !2600}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2589, file: !2590, line: 207, baseType: !408, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2589, file: !2590, line: 208, baseType: !2594, size: 256, offset: 64)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 256, elements: !489)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2589, file: !2590, line: 209, baseType: !2597, size: 256, offset: 320)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, elements: !489)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2589, file: !2590, line: 213, baseType: !388, size: 64, offset: 576)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2589, file: !2590, line: 215, baseType: !1231, size: 256, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2589, file: !2590, line: 216, baseType: !104, size: 8, offset: 896)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2581, file: !2576, line: 33, baseType: !60, size: 64, offset: 1536)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2581, file: !2576, line: 34, baseType: !60, size: 64, offset: 1600)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2581, file: !2576, line: 35, baseType: !313, size: 8, offset: 1664)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2581, file: !2576, line: 36, baseType: !2605, size: 320, offset: 1728)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2606, line: 11, size: 320, elements: !2607)
!2606 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2607 = !{!2608, !2609, !2610, !2615}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2605, file: !2606, line: 16, baseType: !484, size: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2605, file: !2606, line: 17, baseType: !60, size: 64, offset: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2605, file: !2606, line: 18, baseType: !2611, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !2614}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2605, file: !2606, line: 19, baseType: !243, size: 32, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2581, file: !2576, line: 37, baseType: !1132, size: 256, offset: 2048)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2581, file: !2576, line: 38, baseType: !405, size: 128, align: 64, offset: 2304)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2581, file: !2576, line: 39, baseType: !2619, size: 64, offset: 2432)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2576, line: 49, size: 768, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2620, file: !2576, line: 50, baseType: !80, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2620, file: !2576, line: 51, baseType: !2597, size: 256, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2620, file: !2576, line: 53, baseType: !2597, size: 256, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2620, file: !2576, line: 54, baseType: !60, size: 64, offset: 576)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2620, file: !2576, line: 55, baseType: !2619, size: 64, offset: 640)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2620, file: !2576, line: 56, baseType: !43, size: 32, offset: 704)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2620, file: !2576, line: 57, baseType: !43, size: 32, offset: 736)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2581, file: !2576, line: 40, baseType: !60, size: 64, offset: 2496)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2581, file: !2576, line: 42, baseType: !43, size: 32, offset: 2560)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2581, file: !2576, line: 43, baseType: !2574, size: 64, offset: 2624)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2575, file: !2576, line: 99, baseType: !2633, offset: 128)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2634, line: 211, elements: !837)
!2634 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2575, file: !2576, line: 100, baseType: !2636, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2576, line: 63, size: 3008, elements: !2638)
!2638 = !{!2639, !2640, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2670}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2637, file: !2576, line: 64, baseType: !2619, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2637, file: !2576, line: 65, baseType: !2641, size: 192, offset: 64)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2619, size: 192, elements: !463)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2637, file: !2576, line: 67, baseType: !43, size: 32, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2637, file: !2576, line: 68, baseType: !426, size: 256, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2637, file: !2576, line: 69, baseType: !80, size: 32, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2637, file: !2576, line: 70, baseType: !426, size: 256, offset: 640)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2637, file: !2576, line: 71, baseType: !60, size: 64, offset: 896)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2637, file: !2576, line: 72, baseType: !60, size: 64, offset: 960)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2637, file: !2576, line: 73, baseType: !60, size: 64, offset: 1024)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2637, file: !2576, line: 74, baseType: !60, size: 64, offset: 1088)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2637, file: !2576, line: 75, baseType: !60, size: 64, offset: 1152)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2637, file: !2576, line: 76, baseType: !60, size: 64, offset: 1216)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2637, file: !2576, line: 77, baseType: !60, size: 64, offset: 1280)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2637, file: !2576, line: 78, baseType: !60, size: 64, offset: 1344)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2637, file: !2576, line: 79, baseType: !313, size: 8, offset: 1408)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2637, file: !2576, line: 80, baseType: !60, size: 64, offset: 1472)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2637, file: !2576, line: 81, baseType: !426, size: 256, offset: 1536)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2637, file: !2576, line: 82, baseType: !1171, size: 256, offset: 1792)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2637, file: !2576, line: 84, baseType: !70, size: 32, offset: 2048)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2637, file: !2576, line: 87, baseType: !60, size: 64, offset: 2112)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2637, file: !2576, line: 88, baseType: !60, size: 64, offset: 2176)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2637, file: !2576, line: 89, baseType: !2662, size: 704, offset: 2240)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1133, line: 111, size: 704, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2669}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2662, file: !1133, line: 112, baseType: !1132, size: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2662, file: !1133, line: 113, baseType: !2605, size: 320, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2662, file: !1133, line: 116, baseType: !2667, size: 64, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1133, line: 18, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2662, file: !1133, line: 117, baseType: !43, size: 32, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2637, file: !2576, line: 90, baseType: !2574, size: 64, offset: 2944)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1554, file: !6, line: 515, baseType: !2672, size: 64, offset: 8064)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2674, line: 117, size: 128, elements: !2675)
!2674 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2675 = !{!2676, !2677, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2673, file: !2674, line: 118, baseType: !917, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2673, file: !2674, line: 119, baseType: !917, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2673, file: !2674, line: 120, baseType: !388, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1554, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1554, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1554, file: !6, line: 520, baseType: !2682, size: 64, offset: 8192)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1554, file: !6, line: 523, baseType: !2684, size: 64, offset: 8256)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1554, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1554, file: !6, line: 525, baseType: !2689, size: 64, offset: 8384)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1554, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1554, file: !6, line: 533, baseType: !41, size: 64, offset: 8512)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1554, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1554, file: !6, line: 535, baseType: !2696, size: 64, offset: 8640)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1554, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1554, file: !6, line: 539, baseType: !43, size: 32, offset: 8736)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1554, file: !6, line: 540, baseType: !2700, size: 64, offset: 8768)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2702, line: 32, size: 64, elements: !2703)
!2702 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2703 = !{!2704, !2705}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2701, file: !2702, line: 33, baseType: !917, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2701, file: !2702, line: 34, baseType: !917, size: 32, offset: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1554, file: !6, line: 563, baseType: !118, size: 128, offset: 8832)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1554, file: !6, line: 565, baseType: !118, size: 128, offset: 8960)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1554, file: !6, line: 568, baseType: !2709, size: 64, offset: 9088)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1554, file: !6, line: 570, baseType: !70, size: 32, offset: 9152)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1530, file: !173, line: 2382, baseType: !1529, size: 64, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1530, file: !173, line: 2383, baseType: !480, size: 64, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1530, file: !173, line: 2385, baseType: !2716, offset: 576)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2634, line: 206, elements: !837)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1530, file: !173, line: 2386, baseType: !2716, offset: 576)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1530, file: !173, line: 2387, baseType: !2716, offset: 576)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1530, file: !173, line: 2388, baseType: !2720, offset: 576)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2716, elements: !463)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1530, file: !173, line: 2390, baseType: !2716, offset: 576)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1530, file: !173, line: 2391, baseType: !2716, offset: 576)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1530, file: !173, line: 2392, baseType: !2716, offset: 576)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1530, file: !173, line: 2393, baseType: !2716, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1521, file: !173, line: 1197, baseType: !2726, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2728)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !173, line: 2057, size: 1664, elements: !2729)
!2729 = !{!2730, !2734, !2738, !2739, !2743, !2747, !2751, !2752, !2753, !2757, !2761, !2765, !2766, !2767, !2773, !2777, !2778, !2782, !2783, !2784, !2785, !2789, !2793, !2840, !2855, !2856}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2728, file: !173, line: 2058, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!254, !1520}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2728, file: !173, line: 2059, baseType: !2735, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !254}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2728, file: !173, line: 2060, baseType: !2735, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2728, file: !173, line: 2062, baseType: !2740, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{null, !254, !43}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2728, file: !173, line: 2063, baseType: !2744, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!43, !254, !1978}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2728, file: !173, line: 2064, baseType: !2748, size: 64, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!43, !254}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2728, file: !173, line: 2065, baseType: !2735, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2728, file: !173, line: 2066, baseType: !1549, size: 64, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2728, file: !173, line: 2067, baseType: !2754, size: 64, offset: 512)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!43, !1520, !43}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2728, file: !173, line: 2068, baseType: !2758, size: 64, offset: 576)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!43, !1520, !172}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2728, file: !173, line: 2069, baseType: !2762, size: 64, offset: 640)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!43, !1520}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2728, file: !173, line: 2070, baseType: !2758, size: 64, offset: 704)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2728, file: !173, line: 2071, baseType: !2762, size: 64, offset: 768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2728, file: !173, line: 2072, baseType: !2768, size: 64, offset: 832)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!43, !210, !2771}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !173, line: 62, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2728, file: !173, line: 2073, baseType: !2774, size: 64, offset: 896)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!43, !1520, !1353, !319}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2728, file: !173, line: 2074, baseType: !1549, size: 64, offset: 960)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2728, file: !173, line: 2076, baseType: !2779, size: 64, offset: 1024)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!43, !2258, !210}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2728, file: !173, line: 2077, baseType: !2779, size: 64, offset: 1088)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2728, file: !173, line: 2078, baseType: !2779, size: 64, offset: 1152)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2728, file: !173, line: 2079, baseType: !2779, size: 64, offset: 1216)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2728, file: !173, line: 2081, baseType: !2786, size: 64, offset: 1280)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!1636, !1520, !43, !319, !56, !62}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2728, file: !173, line: 2082, baseType: !2790, size: 64, offset: 1344)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!1636, !1520, !43, !37, !56, !62}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2728, file: !173, line: 2083, baseType: !2794, size: 64, offset: 1408)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!2797, !254}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !178, line: 296, size: 1664, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2825, !2826, !2827}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2799, file: !178, line: 297, baseType: !484, size: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2799, file: !178, line: 298, baseType: !118, size: 128, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2799, file: !178, line: 299, baseType: !118, size: 128, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2799, file: !178, line: 300, baseType: !118, size: 128, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2799, file: !178, line: 301, baseType: !426, size: 256, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2799, file: !178, line: 302, baseType: !80, size: 32, offset: 768)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2799, file: !178, line: 303, baseType: !70, size: 32, offset: 800)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2799, file: !178, line: 304, baseType: !1520, size: 64, offset: 832)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2799, file: !178, line: 305, baseType: !2810, size: 64, offset: 896)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !178, line: 68, size: 64, elements: !2811)
!2811 = !{!2812, !2824}
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !178, line: 69, baseType: !2813, size: 32)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2810, file: !178, line: 69, size: 32, elements: !2814)
!2814 = !{!2815, !2816, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2813, file: !178, line: 70, baseType: !260, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2813, file: !178, line: 71, baseType: !269, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2813, file: !178, line: 72, baseType: !2818, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2819, line: 24, baseType: !2820)
!2819 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2819, line: 22, size: 32, elements: !2821)
!2821 = !{!2822}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2820, file: !2819, line: 23, baseType: !2823, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2819, line: 20, baseType: !266)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2810, file: !178, line: 74, baseType: !177, size: 32, offset: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2799, file: !178, line: 306, baseType: !62, size: 64, offset: 960)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2799, file: !178, line: 307, baseType: !60, size: 64, offset: 1024)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2799, file: !178, line: 308, baseType: !2828, size: 576, offset: 1088)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !178, line: 205, size: 576, elements: !2829)
!2829 = !{!2830, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2828, file: !178, line: 206, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !178, line: 66, baseType: !64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2828, file: !178, line: 207, baseType: !2831, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2828, file: !178, line: 208, baseType: !2831, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2828, file: !178, line: 209, baseType: !2831, size: 64, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2828, file: !178, line: 210, baseType: !2831, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2828, file: !178, line: 211, baseType: !2831, size: 64, offset: 320)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2828, file: !178, line: 212, baseType: !2831, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2828, file: !178, line: 213, baseType: !385, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2828, file: !178, line: 214, baseType: !385, size: 64, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2728, file: !173, line: 2085, baseType: !2841, size: 64, offset: 1472)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!388, !1520, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2846, line: 15, size: 256, elements: !2847)
!2846 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2847 = !{!2848, !2849, !2850, !2851, !2852}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2845, file: !2846, line: 16, baseType: !514, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2845, file: !2846, line: 19, baseType: !43, size: 32, offset: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2845, file: !2846, line: 26, baseType: !60, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2845, file: !2846, line: 33, baseType: !60, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2845, file: !2846, line: 36, baseType: !2853, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2846, line: 36, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2728, file: !173, line: 2087, baseType: !2841, size: 64, offset: 1536)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2728, file: !173, line: 2089, baseType: !1549, size: 64, offset: 1600)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1521, file: !173, line: 1198, baseType: !2858, size: 64, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2860)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !178, line: 324, size: 704, elements: !2861)
!2861 = !{!2862, !2866, !2870, !2874, !2875, !2876, !2877, !2878, !2883, !2888, !2892}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2860, file: !178, line: 325, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!43, !2798}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2860, file: !178, line: 326, baseType: !2867, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!2798, !1520, !43}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2860, file: !178, line: 327, baseType: !2871, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2798}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2860, file: !178, line: 328, baseType: !2863, size: 64, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2860, file: !178, line: 329, baseType: !2863, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2860, file: !178, line: 330, baseType: !2863, size: 64, offset: 320)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2860, file: !178, line: 331, baseType: !2754, size: 64, offset: 384)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2860, file: !178, line: 334, baseType: !2879, size: 64, offset: 448)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!2882, !254}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2860, file: !178, line: 335, baseType: !2884, size: 64, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!43, !254, !2887}
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2860, file: !178, line: 337, baseType: !2889, size: 64, offset: 576)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!43, !254, !2882}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2860, file: !178, line: 339, baseType: !2893, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!43, !1520, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1521, file: !173, line: 1199, baseType: !2898, size: 64, offset: 512)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !178, line: 430, size: 704, elements: !2901)
!2901 = !{!2902, !2914, !2915, !2919, !2920, !2921, !2936, !2959, !2963, !2964, !2987}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2900, file: !178, line: 431, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!43, !1520, !43, !43, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2908)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2909, line: 8, size: 128, elements: !2910)
!2909 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2910 = !{!2911, !2913}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2908, file: !2909, line: 9, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2908, file: !2909, line: 10, baseType: !210, size: 64, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2900, file: !178, line: 432, baseType: !2754, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2900, file: !178, line: 433, baseType: !2916, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!43, !1520, !7}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2900, file: !178, line: 434, baseType: !2916, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2900, file: !178, line: 435, baseType: !2754, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2900, file: !178, line: 436, baseType: !2922, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!43, !1520, !43, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !178, line: 417, size: 256, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2926, file: !178, line: 418, baseType: !43, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2926, file: !178, line: 419, baseType: !7, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2926, file: !178, line: 420, baseType: !7, size: 32, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2926, file: !178, line: 422, baseType: !7, size: 32, offset: 96)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2926, file: !178, line: 423, baseType: !7, size: 32, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2926, file: !178, line: 424, baseType: !7, size: 32, offset: 160)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2926, file: !178, line: 425, baseType: !7, size: 32, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2926, file: !178, line: 426, baseType: !7, size: 32, offset: 224)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2900, file: !178, line: 437, baseType: !2937, size: 64, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!43, !1520, !2810, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !178, line: 345, size: 960, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2941, file: !178, line: 346, baseType: !43, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2941, file: !178, line: 347, baseType: !247, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2941, file: !178, line: 348, baseType: !247, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2941, file: !178, line: 349, baseType: !247, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2941, file: !178, line: 350, baseType: !247, size: 64, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2941, file: !178, line: 351, baseType: !247, size: 64, offset: 320)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2941, file: !178, line: 352, baseType: !247, size: 64, offset: 384)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2941, file: !178, line: 353, baseType: !424, size: 64, offset: 448)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2941, file: !178, line: 355, baseType: !424, size: 64, offset: 512)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2941, file: !178, line: 356, baseType: !43, size: 32, offset: 576)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2941, file: !178, line: 357, baseType: !43, size: 32, offset: 608)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2941, file: !178, line: 358, baseType: !247, size: 64, offset: 640)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2941, file: !178, line: 359, baseType: !247, size: 64, offset: 704)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2941, file: !178, line: 360, baseType: !247, size: 64, offset: 768)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2941, file: !178, line: 361, baseType: !424, size: 64, offset: 832)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2941, file: !178, line: 362, baseType: !43, size: 32, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2900, file: !178, line: 438, baseType: !2960, size: 64, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!43, !1520, !2896, !2940}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2900, file: !178, line: 440, baseType: !2937, size: 64, offset: 512)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2900, file: !178, line: 441, baseType: !2965, size: 64, offset: 576)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!43, !1520, !2968}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !178, line: 411, size: 1408, elements: !2970)
!2970 = !{!2971, !2972}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2969, file: !178, line: 412, baseType: !7, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2969, file: !178, line: 413, baseType: !2973, size: 1344, offset: 64)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2974, size: 1344, elements: !463)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !178, line: 397, size: 448, elements: !2975)
!2975 = !{!2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2986}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2974, file: !178, line: 398, baseType: !7, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2974, file: !178, line: 399, baseType: !7, size: 32, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2974, file: !178, line: 401, baseType: !7, size: 32, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2974, file: !178, line: 402, baseType: !7, size: 32, offset: 96)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2974, file: !178, line: 403, baseType: !7, size: 32, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2974, file: !178, line: 404, baseType: !7, size: 32, offset: 160)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2974, file: !178, line: 405, baseType: !7, size: 32, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2974, file: !178, line: 406, baseType: !249, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2974, file: !178, line: 407, baseType: !2985, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !46, line: 132, baseType: !247)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2974, file: !178, line: 408, baseType: !2985, size: 64, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2900, file: !178, line: 442, baseType: !2916, size: 64, offset: 640)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1521, file: !173, line: 1200, baseType: !2989, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !173, line: 54, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1521, file: !173, line: 1201, baseType: !60, size: 64, offset: 640)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1521, file: !173, line: 1202, baseType: !60, size: 64, offset: 704)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1521, file: !173, line: 1203, baseType: !60, size: 64, offset: 768)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1521, file: !173, line: 1204, baseType: !210, size: 64, offset: 832)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1521, file: !173, line: 1205, baseType: !871, size: 320, offset: 896)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1521, file: !173, line: 1206, baseType: !43, size: 32, offset: 1216)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1521, file: !173, line: 1207, baseType: !70, size: 32, offset: 1248)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1521, file: !173, line: 1209, baseType: !41, size: 64, offset: 1280)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1521, file: !173, line: 1211, baseType: !3001, size: 64, offset: 1344)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !173, line: 1211, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1521, file: !173, line: 1223, baseType: !3006, size: 64, offset: 1408)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !226, line: 34, size: 64, elements: !3007)
!3007 = !{!3008}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3006, file: !226, line: 35, baseType: !229, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1521, file: !173, line: 1224, baseType: !118, size: 128, offset: 1472)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1521, file: !173, line: 1225, baseType: !3011, size: 64, offset: 1600)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !173, line: 1225, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1521, file: !173, line: 1226, baseType: !3014, size: 64, offset: 1664)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !173, line: 1226, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1521, file: !173, line: 1227, baseType: !3017, size: 64, offset: 1728)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !173, line: 50, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1521, file: !173, line: 1228, baseType: !3020, size: 64, offset: 1792)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !173, line: 1228, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1521, file: !173, line: 1229, baseType: !484, size: 128, offset: 1856)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1521, file: !173, line: 1230, baseType: !7, size: 32, offset: 1984)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1521, file: !173, line: 1231, baseType: !3025, size: 2496, offset: 2048)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !178, line: 521, size: 2496, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3031, !3063}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3025, file: !178, line: 522, baseType: !7, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3025, file: !178, line: 523, baseType: !871, size: 320, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3025, file: !178, line: 524, baseType: !3030, size: 192, offset: 384)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 192, elements: !463)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3025, file: !178, line: 525, baseType: !3032, size: 1728, offset: 576)
!3032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3033, size: 1728, elements: !463)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !178, line: 222, size: 576, elements: !3034)
!3034 = !{!3035, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3033, file: !178, line: 223, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !178, line: 445, size: 256, elements: !3038)
!3038 = !{!3039, !3040, !3053, !3054}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3037, file: !178, line: 446, baseType: !43, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3037, file: !178, line: 447, baseType: !3041, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3043)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !178, line: 312, size: 512, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3043, file: !178, line: 313, baseType: !2754, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3043, file: !178, line: 314, baseType: !2754, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3043, file: !178, line: 315, baseType: !2754, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3043, file: !178, line: 316, baseType: !2754, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3043, file: !178, line: 317, baseType: !2863, size: 64, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3043, file: !178, line: 318, baseType: !2863, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3043, file: !178, line: 319, baseType: !2863, size: 64, offset: 384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3043, file: !178, line: 320, baseType: !2893, size: 64, offset: 448)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3037, file: !178, line: 448, baseType: !1553, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3037, file: !178, line: 449, baseType: !3036, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3033, file: !178, line: 224, baseType: !43, size: 32, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3033, file: !178, line: 226, baseType: !118, size: 128, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3033, file: !178, line: 227, baseType: !60, size: 64, offset: 256)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3033, file: !178, line: 228, baseType: !7, size: 32, offset: 320)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3033, file: !178, line: 229, baseType: !7, size: 32, offset: 352)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3033, file: !178, line: 230, baseType: !2831, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3033, file: !178, line: 231, baseType: !2831, size: 64, offset: 448)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3033, file: !178, line: 232, baseType: !41, size: 64, offset: 512)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3025, file: !178, line: 526, baseType: !3064, size: 192, offset: 2304)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3041, size: 192, elements: !463)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1521, file: !173, line: 1233, baseType: !3066, size: 2368, offset: 4544)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !173, line: 1184, size: 2368, elements: !3067)
!3067 = !{!3068, !3069, !3070}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3066, file: !173, line: 1185, baseType: !47, size: 16)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3066, file: !173, line: 1186, baseType: !47, size: 16, offset: 16)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3066, file: !173, line: 1187, baseType: !3071, size: 2304, offset: 64)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3072, size: 2304, elements: !463)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3073, line: 12, size: 768, elements: !3074)
!3073 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3074 = !{!3075, !3083, !3084, !3089, !3090}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3072, file: !3073, line: 13, baseType: !3076, size: 384)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3077, line: 17, size: 384, elements: !3078)
!3077 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3078 = !{!3079, !3080, !3081, !3082}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3076, file: !3077, line: 18, baseType: !43, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3076, file: !3077, line: 19, baseType: !43, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3076, file: !3077, line: 20, baseType: !75, size: 192, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3076, file: !3077, line: 22, baseType: !405, size: 128, align: 64, offset: 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3072, file: !3073, line: 14, baseType: !2459, size: 64, offset: 384)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3072, file: !3073, line: 15, baseType: !3085, size: 64, offset: 448)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3086, line: 16, size: 64, elements: !3087)
!3086 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3087 = !{!3088}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3085, file: !3086, line: 17, baseType: !521, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3072, file: !3073, line: 16, baseType: !75, size: 192, offset: 512)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3072, file: !3073, line: 17, baseType: !70, size: 32, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1521, file: !173, line: 1240, baseType: !41, size: 64, offset: 6912)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1521, file: !173, line: 1243, baseType: !243, size: 32, offset: 6976)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1521, file: !173, line: 1245, baseType: !385, size: 64, offset: 7040)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1521, file: !173, line: 1246, baseType: !385, size: 64, offset: 7104)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1521, file: !173, line: 1248, baseType: !244, size: 32, offset: 7168)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1521, file: !173, line: 1249, baseType: !3097, size: 64, offset: 7232)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !189, line: 472, size: 256, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103, !3109, !3116}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3098, file: !189, line: 473, baseType: !80, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3098, file: !189, line: 474, baseType: !47, size: 16, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3098, file: !189, line: 477, baseType: !47, size: 16, offset: 48)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !3098, file: !189, line: 478, baseType: !3104, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !58, line: 81, baseType: !3105)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 79, size: 64, elements: !3106)
!3106 = !{!3107}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3105, file: !58, line: 80, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !2497)
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !3098, file: !189, line: 479, baseType: !3110, size: 64, offset: 128)
!3110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3098, file: !189, line: 479, size: 64, elements: !3111)
!3111 = !{!3112, !3115}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !3110, file: !189, line: 481, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !189, line: 464, baseType: !3097)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !3110, file: !189, line: 483, baseType: !3097, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3098, file: !189, line: 485, baseType: !480, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1521, file: !173, line: 1252, baseType: !3118, size: 256, offset: 7296)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !3119)
!3119 = !{!3120}
!3120 = !DISubrange(count: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1521, file: !173, line: 1253, baseType: !3122, size: 128, offset: 7552)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3123, line: 21, baseType: !3124)
!3123 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3123, line: 19, size: 128, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3124, file: !3123, line: 20, baseType: !3127, size: 128)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !1463)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1521, file: !173, line: 1255, baseType: !7, size: 32, offset: 7680)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1521, file: !173, line: 1261, baseType: !426, size: 256, offset: 7744)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1521, file: !173, line: 1267, baseType: !37, size: 64, offset: 8000)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1521, file: !173, line: 1269, baseType: !3132, size: 64, offset: 8064)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3134)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !184, line: 128, size: 1024, align: 512, elements: !3135)
!3135 = !{!3136, !3140, !3141, !3148, !3154, !3158, !3162, !3166, !3167, !3171, !3175, !3180, !3184}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3134, file: !184, line: 129, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!43, !210, !7}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3134, file: !184, line: 130, baseType: !3137, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3134, file: !184, line: 131, baseType: !3142, size: 64, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!43, !3145, !3147}
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3134, file: !184, line: 132, baseType: !3149, size: 64, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!43, !3145, !7, !37, !3152}
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3134, file: !184, line: 134, baseType: !3155, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!43, !3145}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3134, file: !184, line: 135, baseType: !3159, size: 64, offset: 320)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!43, !210}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3134, file: !184, line: 136, baseType: !3163, size: 64, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{null, !210}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3134, file: !184, line: 137, baseType: !3163, size: 64, offset: 448)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3134, file: !184, line: 138, baseType: !3168, size: 64, offset: 512)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !210, !254}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3134, file: !184, line: 139, baseType: !3172, size: 64, offset: 576)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!319, !210, !319, !43}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3134, file: !184, line: 140, baseType: !3176, size: 64, offset: 640)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!2912, !3179}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3134, file: !184, line: 141, baseType: !3181, size: 64, offset: 704)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!43, !2906, !313}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3134, file: !184, line: 142, baseType: !3185, size: 64, offset: 768)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!210, !210, !3188}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1521, file: !173, line: 1271, baseType: !3191, size: 448, offset: 8128)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2846, line: 63, size: 448, elements: !3192)
!3192 = !{!3193, !3198, !3199, !3200, !3201, !3202, !3203}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3191, file: !2846, line: 64, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!60, !3197, !2844}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3191, file: !2846, line: 66, baseType: !3194, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3191, file: !2846, line: 69, baseType: !388, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3191, file: !2846, line: 70, baseType: !43, size: 32, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3191, file: !2846, line: 71, baseType: !7, size: 32, offset: 224)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3191, file: !2846, line: 74, baseType: !118, size: 128, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3191, file: !2846, line: 85, baseType: !3204, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1521, file: !173, line: 1274, baseType: !418, size: 64, offset: 8576)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1521, file: !173, line: 1280, baseType: !418, size: 64, offset: 8640)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1521, file: !173, line: 1283, baseType: !43, size: 32, offset: 8704)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1521, file: !173, line: 1286, baseType: !2158, size: 32, offset: 8736)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1521, file: !173, line: 1289, baseType: !2667, size: 64, offset: 8768)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1521, file: !173, line: 1290, baseType: !480, size: 64, offset: 8832)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1521, file: !173, line: 1297, baseType: !976, size: 64, offset: 8896)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1521, file: !173, line: 1304, baseType: !3213, size: 64, offset: 8960)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3214, line: 49, size: 64, elements: !3215)
!3214 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3215 = !{!3216}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3213, file: !3214, line: 50, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3214, line: 41, size: 512, align: 512, elements: !3219)
!3219 = !{!3220, !3221, !3226}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3218, file: !3214, line: 43, baseType: !80, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3218, file: !3214, line: 45, baseType: !3222, size: 192, offset: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3214, line: 29, size: 192, elements: !3223)
!3223 = !{!3224, !3225}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3222, file: !3214, line: 30, baseType: !118, size: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3222, file: !3214, line: 32, baseType: !388, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3218, file: !3214, line: 46, baseType: !388, size: 64, offset: 256)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1521, file: !173, line: 1305, baseType: !3213, size: 64, offset: 9024)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1521, file: !173, line: 1306, baseType: !405, size: 128, align: 64, offset: 9088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1521, file: !173, line: 1307, baseType: !1132, size: 256, offset: 9216)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1521, file: !173, line: 1309, baseType: !426, size: 256, offset: 9472)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1521, file: !173, line: 1314, baseType: !43, size: 32, offset: 9728)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1521, file: !173, line: 1317, baseType: !80, size: 32, align: 512, offset: 10240)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1521, file: !173, line: 1318, baseType: !118, size: 128, offset: 10304)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1521, file: !173, line: 1320, baseType: !80, size: 32, offset: 10432)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1521, file: !173, line: 1321, baseType: !118, size: 128, offset: 10496)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1515, file: !1516, line: 73, baseType: !43, size: 32, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1515, file: !1516, line: 74, baseType: !306, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !1504, line: 44, baseType: !3239, size: 128, offset: 512)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !1504, line: 44, size: 128, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_rcu", scope: !3239, file: !1504, line: 45, baseType: !405, size: 128, align: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !3239, file: !1504, line: 46, baseType: !399, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pcp", scope: !1509, file: !1504, line: 49, baseType: !3244, size: 64, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_pcp", file: !1504, line: 27, size: 64, elements: !3246)
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_count", scope: !3245, file: !1504, line: 28, baseType: !43, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_writers", scope: !3245, file: !1504, line: 29, baseType: !43, size: 32, offset: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mounts", scope: !1509, file: !1504, line: 54, baseType: !118, size: 128, offset: 704)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_child", scope: !1509, file: !1504, line: 55, baseType: !118, size: 128, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_instance", scope: !1509, file: !1504, line: 56, baseType: !118, size: 128, offset: 960)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_devname", scope: !1509, file: !1504, line: 57, baseType: !37, size: 64, offset: 1088)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_list", scope: !1509, file: !1504, line: 58, baseType: !118, size: 128, offset: 1152)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expire", scope: !1509, file: !1504, line: 59, baseType: !118, size: 128, offset: 1280)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_share", scope: !1509, file: !1504, line: 60, baseType: !118, size: 128, offset: 1408)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave_list", scope: !1509, file: !1504, line: 61, baseType: !118, size: 128, offset: 1536)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave", scope: !1509, file: !1504, line: 62, baseType: !118, size: 128, offset: 1664)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_master", scope: !1509, file: !1504, line: 63, baseType: !1508, size: 64, offset: 1792)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1509, file: !1504, line: 64, baseType: !1502, size: 64, offset: 1856)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp", scope: !1509, file: !1504, line: 65, baseType: !3261, size: 64, offset: 1920)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mountpoint", file: !1504, line: 32, size: 320, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "m_hash", scope: !3262, file: !1504, line: 33, baseType: !484, size: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "m_dentry", scope: !3262, file: !1504, line: 34, baseType: !210, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !3262, file: !1504, line: 35, baseType: !480, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "m_count", scope: !3262, file: !1504, line: 36, baseType: !43, size: 32, offset: 256)
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !1504, line: 66, baseType: !3269, size: 128, offset: 1984)
!3269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !1504, line: 66, size: 128, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp_list", scope: !3269, file: !1504, line: 67, baseType: !484, size: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umount", scope: !3269, file: !1504, line: 68, baseType: !484, size: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umounting", scope: !1509, file: !1504, line: 70, baseType: !118, size: 128, offset: 2112)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_marks", scope: !1509, file: !1504, line: 72, baseType: !3097, size: 64, offset: 2240)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_mask", scope: !1509, file: !1504, line: 73, baseType: !244, size: 32, offset: 2304)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1509, file: !1504, line: 75, baseType: !43, size: 32, offset: 2336)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_group_id", scope: !1509, file: !1504, line: 76, baseType: !43, size: 32, offset: 2368)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expiry_mark", scope: !1509, file: !1504, line: 77, baseType: !43, size: 32, offset: 2400)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pins", scope: !1509, file: !1504, line: 78, baseType: !480, size: 64, offset: 2432)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_stuck_children", scope: !1509, file: !1504, line: 79, baseType: !480, size: 64, offset: 2496)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1503, file: !1504, line: 16, baseType: !118, size: 128, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ns_lock", scope: !1503, file: !1504, line: 17, baseType: !80, size: 32, offset: 384)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1503, file: !1504, line: 18, baseType: !976, size: 64, offset: 448)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1503, file: !1504, line: 19, baseType: !1215, size: 64, offset: 512)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1503, file: !1504, line: 20, baseType: !247, size: 64, offset: 576)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1503, file: !1504, line: 21, baseType: !75, size: 192, offset: 640)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1503, file: !1504, line: 22, baseType: !247, size: 64, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mounts", scope: !1503, file: !1504, line: 23, baseType: !7, size: 32, offset: 896)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mounts", scope: !1503, file: !1504, line: 24, baseType: !7, size: 32, offset: 928)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1491, file: !1492, line: 36, baseType: !500, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1491, file: !1492, line: 37, baseType: !3292, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1025, line: 34, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1491, file: !1492, line: 38, baseType: !3295, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1492, line: 38, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1491, file: !1492, line: 39, baseType: !3295, size: 64, offset: 448)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1491, file: !1492, line: 40, baseType: !3299, size: 64, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1492, line: 12, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !522, file: !523, line: 1110, baseType: !3302, size: 64, offset: 15360)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3304, line: 93, size: 8768, elements: !3305)
!3304 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3305 = !{!3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3354, !3363, !3364, !3366, !3367, !3368, !3371, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3409, !3410, !3417, !3427, !3430, !3431, !3434, !3435, !3436, !3437, !3438, !3439}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3303, file: !3304, line: 94, baseType: !471, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3303, file: !3304, line: 95, baseType: !70, size: 32, offset: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3303, file: !3304, line: 96, baseType: !43, size: 32, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3303, file: !3304, line: 97, baseType: !43, size: 32, offset: 96)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3303, file: !3304, line: 98, baseType: !118, size: 128, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3303, file: !3304, line: 100, baseType: !75, size: 192, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3303, file: !3304, line: 103, baseType: !521, size: 64, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3303, file: !3304, line: 106, baseType: !3314, size: 192, offset: 512)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3315, line: 32, size: 192, elements: !3316)
!3315 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3314, file: !3315, line: 33, baseType: !118, size: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3314, file: !3315, line: 34, baseType: !3319, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3320, line: 25, baseType: !3321)
!3320 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3320, line: 23, size: 64, elements: !3322)
!3322 = !{!3323}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3321, file: !3320, line: 24, baseType: !767, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3303, file: !3304, line: 109, baseType: !480, size: 64, offset: 704)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3303, file: !3304, line: 112, baseType: !43, size: 32, offset: 768)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3303, file: !3304, line: 114, baseType: !43, size: 32, offset: 800)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3303, file: !3304, line: 115, baseType: !521, size: 64, offset: 832)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3303, file: !3304, line: 118, baseType: !43, size: 32, offset: 896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3303, file: !3304, line: 119, baseType: !7, size: 32, offset: 928)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3303, file: !3304, line: 121, baseType: !3331, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3304, line: 80, size: 448, elements: !3333)
!3333 = !{!3334, !3335, !3341}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3332, file: !3304, line: 81, baseType: !70, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3332, file: !3304, line: 82, baseType: !3336, size: 128, offset: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3304, line: 75, size: 128, elements: !3337)
!3337 = !{!3338, !3339}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3336, file: !3304, line: 76, baseType: !521, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3336, file: !3304, line: 77, baseType: !3340, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3332, file: !3304, line: 83, baseType: !1171, size: 256, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3303, file: !3304, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3303, file: !3304, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3303, file: !3304, line: 138, baseType: !7, size: 32, offset: 1056)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3303, file: !3304, line: 139, baseType: !118, size: 128, offset: 1088)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3303, file: !3304, line: 142, baseType: !640, size: 512, offset: 1216)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3303, file: !3304, line: 143, baseType: !648, size: 64, offset: 1728)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3303, file: !3304, line: 150, baseType: !3349, size: 256, offset: 1792)
!3349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3350, size: 256, elements: !2497)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3304, line: 38, size: 128, elements: !3351)
!3351 = !{!3352, !3353}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3350, file: !3304, line: 39, baseType: !247, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3350, file: !3304, line: 40, baseType: !247, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3303, file: !3304, line: 156, baseType: !3355, size: 192, offset: 2048)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3304, line: 66, size: 192, elements: !3356)
!3356 = !{!3357}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3355, file: !3304, line: 67, baseType: !3358, size: 192)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3304, line: 47, size: 192, elements: !3359)
!3359 = !{!3360, !3361, !3362}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3358, file: !3304, line: 48, baseType: !420, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3358, file: !3304, line: 49, baseType: !420, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3358, file: !3304, line: 50, baseType: !420, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3303, file: !3304, line: 160, baseType: !1372, size: 640, offset: 2240)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3303, file: !3304, line: 163, baseType: !3365, size: 256, offset: 2880)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 256, elements: !489)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3303, file: !3304, line: 169, baseType: !467, size: 64, offset: 3136)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3303, file: !3304, line: 172, baseType: !43, size: 32, offset: 3200)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3303, file: !3304, line: 174, baseType: !3369, size: 64, offset: 3264)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3304, line: 174, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3303, file: !3304, line: 185, baseType: !3372, size: 64, offset: 3328)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !216, line: 860, baseType: !3373)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 853, size: 64, elements: !3374)
!3374 = !{!3375, !3376}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3373, file: !216, line: 858, baseType: !215, size: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3373, file: !216, line: 859, baseType: !80, size: 32, offset: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3303, file: !3304, line: 186, baseType: !247, size: 64, offset: 3392)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3303, file: !3304, line: 186, baseType: !247, size: 64, offset: 3456)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3303, file: !3304, line: 186, baseType: !247, size: 64, offset: 3520)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3303, file: !3304, line: 186, baseType: !247, size: 64, offset: 3584)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3303, file: !3304, line: 187, baseType: !247, size: 64, offset: 3648)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3303, file: !3304, line: 188, baseType: !247, size: 64, offset: 3712)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3303, file: !3304, line: 189, baseType: !1360, size: 192, offset: 3776)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3303, file: !3304, line: 190, baseType: !60, size: 64, offset: 3968)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3303, file: !3304, line: 190, baseType: !60, size: 64, offset: 4032)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3303, file: !3304, line: 190, baseType: !60, size: 64, offset: 4096)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3303, file: !3304, line: 190, baseType: !60, size: 64, offset: 4160)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3303, file: !3304, line: 191, baseType: !60, size: 64, offset: 4224)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3303, file: !3304, line: 191, baseType: !60, size: 64, offset: 4288)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3303, file: !3304, line: 191, baseType: !60, size: 64, offset: 4352)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3303, file: !3304, line: 191, baseType: !60, size: 64, offset: 4416)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3303, file: !3304, line: 192, baseType: !60, size: 64, offset: 4480)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3303, file: !3304, line: 192, baseType: !60, size: 64, offset: 4544)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3303, file: !3304, line: 192, baseType: !60, size: 64, offset: 4608)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3303, file: !3304, line: 192, baseType: !60, size: 64, offset: 4672)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3303, file: !3304, line: 193, baseType: !60, size: 64, offset: 4736)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3303, file: !3304, line: 193, baseType: !60, size: 64, offset: 4800)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3303, file: !3304, line: 194, baseType: !3399, size: 448, offset: 4864)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3400, line: 12, size: 448, elements: !3401)
!3400 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3401 = !{!3402, !3403, !3404, !3405, !3406, !3407, !3408}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3399, file: !3400, line: 15, baseType: !247, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3399, file: !3400, line: 17, baseType: !247, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3399, file: !3400, line: 19, baseType: !247, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3399, file: !3400, line: 21, baseType: !247, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3399, file: !3400, line: 29, baseType: !247, size: 64, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3399, file: !3400, line: 35, baseType: !247, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3399, file: !3400, line: 44, baseType: !247, size: 64, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3303, file: !3304, line: 202, baseType: !249, size: 64, offset: 5312)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3303, file: !3304, line: 213, baseType: !3411, size: 2048, offset: 5376)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3412, size: 2048, elements: !1463)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3413, line: 43, size: 128, elements: !3414)
!3413 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3414 = !{!3415, !3416}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3412, file: !3413, line: 44, baseType: !59, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3412, file: !3413, line: 45, baseType: !59, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3303, file: !3304, line: 216, baseType: !3418, size: 448, offset: 7424)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3304, line: 30, size: 448, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3418, file: !3304, line: 31, baseType: !43, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3418, file: !3304, line: 32, baseType: !388, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3418, file: !3304, line: 33, baseType: !60, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3418, file: !3304, line: 34, baseType: !247, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3418, file: !3304, line: 34, baseType: !247, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3418, file: !3304, line: 35, baseType: !60, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3418, file: !3304, line: 35, baseType: !60, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3303, file: !3304, line: 219, baseType: !3428, size: 64, offset: 7872)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3304, line: 219, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3303, file: !3304, line: 222, baseType: !7, size: 32, offset: 7936)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3303, file: !3304, line: 223, baseType: !3432, size: 64, offset: 8000)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3304, line: 223, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3303, file: !3304, line: 230, baseType: !313, size: 8, offset: 8064)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3303, file: !3304, line: 231, baseType: !969, size: 16, offset: 8080)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3303, file: !3304, line: 232, baseType: !969, size: 16, offset: 8096)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3303, file: !3304, line: 234, baseType: !816, size: 64, offset: 8128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3303, file: !3304, line: 237, baseType: !426, size: 256, offset: 8192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3303, file: !3304, line: 243, baseType: !871, size: 320, offset: 8448)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !522, file: !523, line: 1111, baseType: !3441, size: 64, offset: 15424)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3304, line: 20, size: 16640, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3442, file: !3304, line: 21, baseType: !80, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3442, file: !3304, line: 22, baseType: !471, size: 32, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3442, file: !3304, line: 23, baseType: !75, size: 192, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3442, file: !3304, line: 24, baseType: !3448, size: 16384, offset: 256)
!3448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3449, size: 16384, elements: !1609)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3315, line: 51, size: 256, elements: !3450)
!3450 = !{!3451}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3449, file: !3315, line: 52, baseType: !3452, size: 256)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3315, line: 37, size: 256, elements: !3453)
!3453 = !{!3454, !3461, !3462, !3466}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3452, file: !3315, line: 39, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3456, line: 83, baseType: !3457)
!3456 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3456, line: 82, baseType: !3459)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{null, !43}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3452, file: !3315, line: 40, baseType: !60, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3452, file: !3315, line: 46, baseType: !3463, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3456, line: 86, baseType: !3464)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3456, line: 85, baseType: !2710)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3452, file: !3315, line: 48, baseType: !3319, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !522, file: !523, line: 1112, baseType: !3319, size: 64, offset: 15488)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !522, file: !523, line: 1113, baseType: !3319, size: 64, offset: 15552)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !522, file: !523, line: 1115, baseType: !3319, size: 64, offset: 15616)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !522, file: !523, line: 1116, baseType: !3314, size: 192, offset: 15680)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !522, file: !523, line: 1117, baseType: !60, size: 64, offset: 15872)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !522, file: !523, line: 1118, baseType: !56, size: 64, offset: 15936)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !522, file: !523, line: 1119, baseType: !7, size: 32, offset: 16000)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !522, file: !523, line: 1121, baseType: !408, size: 64, offset: 16064)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !522, file: !523, line: 1125, baseType: !3476, size: 64, offset: 16128)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !523, line: 43, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !522, file: !523, line: 1127, baseType: !260, size: 32, offset: 16192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !522, file: !523, line: 1128, baseType: !7, size: 32, offset: 16224)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !522, file: !523, line: 1130, baseType: !3481, size: 128, offset: 16256)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3482, line: 37, size: 128, elements: !3483)
!3482 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3483 = !{!3484, !3485, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3481, file: !3482, line: 38, baseType: !43, size: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3481, file: !3482, line: 39, baseType: !70, size: 32, offset: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3481, file: !3482, line: 40, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3482, line: 24, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !522, file: !523, line: 1131, baseType: !3490, size: 256, offset: 16384)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3491, line: 12, size: 256, elements: !3492)
!3491 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3492 = !{!3493, !3494, !3495, !3496}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3490, file: !3491, line: 13, baseType: !319, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3490, file: !3491, line: 14, baseType: !60, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3490, file: !3491, line: 15, baseType: !60, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3490, file: !3491, line: 16, baseType: !313, size: 8, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !522, file: !523, line: 1134, baseType: !247, size: 64, offset: 16640)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !522, file: !523, line: 1135, baseType: !247, size: 64, offset: 16704)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !522, file: !523, line: 1138, baseType: !80, size: 32, offset: 16768)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !522, file: !523, line: 1141, baseType: !431, size: 32, offset: 16800)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !522, file: !523, line: 1143, baseType: !3502, size: 64, offset: 16832)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !523, line: 735, size: 64, elements: !3503)
!3503 = !{!3504}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3502, file: !523, line: 736, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !522, file: !523, line: 1147, baseType: !699, size: 128, offset: 16896)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !522, file: !523, line: 1149, baseType: !521, size: 64, offset: 17024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !522, file: !523, line: 1151, baseType: !3509, size: 64, offset: 17088)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !523, line: 1151, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !522, file: !523, line: 1188, baseType: !41, size: 64, offset: 17152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !522, file: !523, line: 1191, baseType: !3513, size: 64, offset: 17216)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !523, line: 44, flags: DIFlagFwdDecl)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !522, file: !523, line: 1194, baseType: !3516, size: 64, offset: 17280)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !523, line: 45, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !522, file: !523, line: 1197, baseType: !3519, size: 64, offset: 17344)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !523, line: 61, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !522, file: !523, line: 1199, baseType: !3522, size: 64, offset: 17408)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3524, line: 99, size: 128, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3525 = !{!3526, !3527, !3528}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3523, file: !3524, line: 100, baseType: !418, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3523, file: !3524, line: 101, baseType: !70, size: 32, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3523, file: !3524, line: 103, baseType: !47, size: 16, offset: 96)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !522, file: !523, line: 1202, baseType: !3530, size: 64, offset: 17472)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !523, line: 48, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !522, file: !523, line: 1205, baseType: !60, size: 64, offset: 17536)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !522, file: !523, line: 1206, baseType: !3534, size: 64, offset: 17600)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3315, line: 14, baseType: !3536)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3315, line: 12, size: 384, elements: !3537)
!3537 = !{!3538}
!3538 = !DIDerivedType(tag: DW_TAG_member, scope: !3536, file: !3315, line: 13, baseType: !3539, size: 384)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3536, file: !3315, line: 13, size: 384, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3539, file: !3315, line: 13, baseType: !43, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3539, file: !3315, line: 13, baseType: !43, size: 32, offset: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3539, file: !3315, line: 13, baseType: !43, size: 32, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3539, file: !3315, line: 13, baseType: !3545, size: 256, offset: 128)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3546, line: 37, size: 256, elements: !3547)
!3546 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3547 = !{!3548, !3553, !3566, !3572, !3581, !3608, !3613}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3545, file: !3546, line: 42, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !3546, line: 39, size: 64, elements: !3550)
!3550 = !{!3551, !3552}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3549, file: !3546, line: 40, baseType: !1336, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3549, file: !3546, line: 41, baseType: !266, size: 32, offset: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3545, file: !3546, line: 50, baseType: !3554, size: 192)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !3546, line: 45, size: 192, elements: !3555)
!3555 = !{!3556, !3558, !3559, !3565}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3554, file: !3546, line: 46, baseType: !3557, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !58, line: 95, baseType: !43)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3554, file: !3546, line: 47, baseType: !43, size: 32, offset: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3554, file: !3546, line: 48, baseType: !3560, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3546, line: 11, baseType: !3561)
!3561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3546, line: 8, size: 64, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3561, file: !3546, line: 9, baseType: !43, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3561, file: !3546, line: 10, baseType: !41, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3554, file: !3546, line: 49, baseType: !43, size: 32, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3545, file: !3546, line: 57, baseType: !3567, size: 128)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !3546, line: 53, size: 128, elements: !3568)
!3568 = !{!3569, !3570, !3571}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3567, file: !3546, line: 54, baseType: !1336, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3567, file: !3546, line: 55, baseType: !266, size: 32, offset: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3567, file: !3546, line: 56, baseType: !3560, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3545, file: !3546, line: 66, baseType: !3573, size: 256)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !3546, line: 60, size: 256, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3580}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3573, file: !3546, line: 61, baseType: !1336, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3573, file: !3546, line: 62, baseType: !266, size: 32, offset: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3573, file: !3546, line: 63, baseType: !43, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3573, file: !3546, line: 64, baseType: !3579, size: 64, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !58, line: 94, baseType: !1638)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3573, file: !3546, line: 65, baseType: !3579, size: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3545, file: !3546, line: 105, baseType: !3582, size: 256)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !3546, line: 69, size: 256, elements: !3583)
!3583 = !{!3584, !3585}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3582, file: !3546, line: 70, baseType: !41, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, scope: !3582, file: !3546, line: 79, baseType: !3586, size: 192, offset: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3582, file: !3546, line: 79, size: 192, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3597, !3602}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3586, file: !3546, line: 81, baseType: !43, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3586, file: !3546, line: 86, baseType: !969, size: 16)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3586, file: !3546, line: 92, baseType: !3591, size: 192)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3586, file: !3546, line: 88, size: 192, elements: !3592)
!3592 = !{!3593, !3595, !3596}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3591, file: !3546, line: 89, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !683)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3591, file: !3546, line: 90, baseType: !41, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3591, file: !3546, line: 91, baseType: !41, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3586, file: !3546, line: 97, baseType: !3598, size: 96)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3586, file: !3546, line: 94, size: 96, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3598, file: !3546, line: 95, baseType: !3594, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3598, file: !3546, line: 96, baseType: !244, size: 32, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3586, file: !3546, line: 103, baseType: !3603, size: 128)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3586, file: !3546, line: 99, size: 128, elements: !3604)
!3604 = !{!3605, !3606, !3607}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3603, file: !3546, line: 100, baseType: !60, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3603, file: !3546, line: 101, baseType: !244, size: 32, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3603, file: !3546, line: 102, baseType: !244, size: 32, offset: 96)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3545, file: !3546, line: 111, baseType: !3609, size: 128)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !3546, line: 108, size: 128, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3609, file: !3546, line: 109, baseType: !388, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3609, file: !3546, line: 110, baseType: !43, size: 32, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3545, file: !3546, line: 118, baseType: !3614, size: 128)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !3546, line: 114, size: 128, elements: !3615)
!3615 = !{!3616, !3617, !3618}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3614, file: !3546, line: 115, baseType: !41, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3614, file: !3546, line: 116, baseType: !43, size: 32, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3614, file: !3546, line: 117, baseType: !7, size: 32, offset: 96)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !522, file: !523, line: 1208, baseType: !3399, size: 448, offset: 17664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !522, file: !523, line: 1215, baseType: !247, size: 64, offset: 18112)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !522, file: !523, line: 1217, baseType: !247, size: 64, offset: 18176)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !522, file: !523, line: 1219, baseType: !247, size: 64, offset: 18240)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !522, file: !523, line: 1223, baseType: !3624, size: 64, offset: 18304)
!3624 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3625, line: 99, baseType: !3626)
!3625 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3625, line: 99, size: 64, elements: !3627)
!3627 = !{!3628}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3626, file: !3625, line: 99, baseType: !767, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !522, file: !523, line: 1225, baseType: !215, size: 32, offset: 18368)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !522, file: !523, line: 1226, baseType: !43, size: 32, offset: 18400)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !522, file: !523, line: 1227, baseType: !43, size: 32, offset: 18432)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !522, file: !523, line: 1231, baseType: !3633, size: 64, offset: 18496)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !523, line: 1231, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !522, file: !523, line: 1233, baseType: !118, size: 128, offset: 18560)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !522, file: !523, line: 1240, baseType: !3637, size: 64, offset: 18688)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !523, line: 62, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !522, file: !523, line: 1242, baseType: !3640, size: 64, offset: 18752)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !523, line: 1242, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !522, file: !523, line: 1244, baseType: !118, size: 128, offset: 18816)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !522, file: !523, line: 1245, baseType: !3644, size: 64, offset: 18944)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !523, line: 51, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !522, file: !523, line: 1246, baseType: !426, size: 256, offset: 19008)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !522, file: !523, line: 1247, baseType: !7, size: 32, offset: 19264)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !522, file: !523, line: 1250, baseType: !3649, size: 64, offset: 19328)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !523, line: 57, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !522, file: !523, line: 1251, baseType: !426, size: 256, offset: 19392)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !522, file: !523, line: 1252, baseType: !118, size: 128, offset: 19648)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !522, file: !523, line: 1259, baseType: !1894, size: 64, offset: 19776)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !522, file: !523, line: 1260, baseType: !969, size: 16, offset: 19840)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !522, file: !523, line: 1261, baseType: !969, size: 16, offset: 19856)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !522, file: !523, line: 1314, baseType: !3657, size: 64, offset: 19904)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3659, line: 62, size: 256, align: 256, elements: !3660)
!3659 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3658, file: !3659, line: 75, baseType: !244, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3658, file: !3659, line: 90, baseType: !244, size: 32, offset: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3658, file: !3659, line: 112, baseType: !248, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3658, file: !3659, line: 132, baseType: !244, size: 32, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3658, file: !3659, line: 140, baseType: !244, size: 32, offset: 160)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3658, file: !3659, line: 149, baseType: !244, size: 32, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3658, file: !3659, line: 154, baseType: !3668, offset: 224)
!3668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1248)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !522, file: !523, line: 1315, baseType: !243, size: 32, offset: 19968)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !522, file: !523, line: 1316, baseType: !243, size: 32, offset: 20000)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !522, file: !523, line: 1321, baseType: !60, size: 64, offset: 20032)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !522, file: !523, line: 1325, baseType: !43, size: 32, offset: 20096)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !522, file: !523, line: 1326, baseType: !43, size: 32, offset: 20128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !522, file: !523, line: 1327, baseType: !43, size: 32, offset: 20160)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !522, file: !523, line: 1328, baseType: !43, size: 32, offset: 20192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !522, file: !523, line: 1329, baseType: !405, size: 128, align: 64, offset: 20224)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !522, file: !523, line: 1332, baseType: !3678, size: 128, offset: 20352)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3679, line: 51, size: 128, elements: !3680)
!3679 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3680 = !{!3681, !3686, !3687}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3678, file: !3679, line: 60, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3683, line: 7, size: 64, elements: !3684)
!3683 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3684 = !{!3685}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3682, file: !3683, line: 12, baseType: !764, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3678, file: !3679, line: 63, baseType: !313, size: 8, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3678, file: !3679, line: 70, baseType: !313, size: 8, offset: 72)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !522, file: !523, line: 1335, baseType: !3689, size: 64, offset: 20480)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !523, line: 59, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !522, file: !523, line: 1337, baseType: !3692, size: 128, offset: 20544)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3679, line: 39, size: 128, elements: !3693)
!3693 = !{!3694, !3695, !3696}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3692, file: !3679, line: 40, baseType: !1693, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3692, file: !3679, line: 42, baseType: !244, size: 32, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3692, file: !3679, line: 43, baseType: !244, size: 32, offset: 96)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !522, file: !523, line: 1340, baseType: !3698, size: 64, offset: 20672)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !523, line: 69, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !522, file: !523, line: 1351, baseType: !43, size: 32, offset: 20736)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !522, file: !523, line: 1352, baseType: !43, size: 32, offset: 20768)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !522, file: !523, line: 1354, baseType: !60, size: 64, offset: 20800)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !522, file: !523, line: 1364, baseType: !247, size: 64, offset: 20864)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !522, file: !523, line: 1365, baseType: !247, size: 64, offset: 20928)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !522, file: !523, line: 1412, baseType: !60, size: 64, offset: 20992)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !522, file: !523, line: 1453, baseType: !3707, size: 64, offset: 21056)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !523, line: 1453, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !522, file: !523, line: 1457, baseType: !3710, size: 64, offset: 21120)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !129, line: 61, size: 576, elements: !3712)
!3712 = !{!3713, !3714, !3733, !3736, !3737, !3770, !3780}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3711, file: !129, line: 62, baseType: !128, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, scope: !3711, file: !129, line: 64, baseType: !3715, size: 192, offset: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3711, file: !129, line: 64, size: 192, elements: !3716)
!3716 = !{!3717, !3728}
!3717 = !DIDerivedType(tag: DW_TAG_member, scope: !3715, file: !129, line: 65, baseType: !3718, size: 192)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3715, file: !129, line: 65, size: 192, elements: !3719)
!3719 = !{!3720, !3727}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3718, file: !129, line: 66, baseType: !3721, size: 128)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3722, line: 50, size: 128, elements: !3723)
!3722 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3723 = !{!3724, !3725, !3726}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3721, file: !3722, line: 52, baseType: !60, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3721, file: !3722, line: 54, baseType: !7, size: 32, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3721, file: !3722, line: 55, baseType: !7, size: 32, offset: 96)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3718, file: !129, line: 67, baseType: !60, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, scope: !3715, file: !129, line: 70, baseType: !3729, size: 192)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3715, file: !129, line: 70, size: 192, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3729, file: !129, line: 71, baseType: !405, size: 128, align: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3729, file: !129, line: 72, baseType: !60, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3711, file: !129, line: 76, baseType: !3734, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !129, line: 76, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3711, file: !129, line: 77, baseType: !60, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3711, file: !129, line: 79, baseType: !3738, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3722, line: 25, size: 256, elements: !3740)
!3740 = !{!3741, !3747, !3751}
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3739, file: !3722, line: 26, baseType: !3742, size: 128)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3739, file: !3722, line: 26, size: 128, elements: !3743)
!3743 = !{!3744, !3746}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3742, file: !3722, line: 27, baseType: !3745, size: 128)
!3745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !1463)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3742, file: !3722, line: 28, baseType: !3745, size: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3739, file: !3722, line: 31, baseType: !3748, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3750)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3722, line: 23, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, scope: !3739, file: !3722, line: 33, baseType: !3752, size: 64, offset: 192)
!3752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3739, file: !3722, line: 33, size: 64, elements: !3753)
!3753 = !{!3754, !3760, !3765}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3752, file: !3722, line: 38, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3752, file: !3722, line: 34, size: 64, elements: !3756)
!3756 = !{!3757, !3758, !3759}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3755, file: !3722, line: 35, baseType: !917, size: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3755, file: !3722, line: 36, baseType: !104, size: 8, offset: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3755, file: !3722, line: 37, baseType: !104, size: 8, offset: 40)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3752, file: !3722, line: 42, baseType: !3761, size: 16)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3752, file: !3722, line: 39, size: 16, elements: !3762)
!3762 = !{!3763, !3764}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3761, file: !3722, line: 40, baseType: !104, size: 8)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3761, file: !3722, line: 41, baseType: !104, size: 8, offset: 8)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3752, file: !3722, line: 46, baseType: !3766, size: 16)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3752, file: !3722, line: 43, size: 16, elements: !3767)
!3767 = !{!3768, !3769}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3766, file: !3722, line: 44, baseType: !104, size: 8)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3766, file: !3722, line: 45, baseType: !104, size: 8, offset: 8)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3711, file: !129, line: 81, baseType: !3771, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !129, line: 85, size: 384, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3772, file: !129, line: 86, baseType: !3734, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3772, file: !129, line: 87, baseType: !60, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3772, file: !129, line: 88, baseType: !60, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3772, file: !129, line: 89, baseType: !60, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3772, file: !129, line: 90, baseType: !313, size: 8, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3772, file: !129, line: 92, baseType: !3771, size: 64, offset: 320)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3711, file: !129, line: 82, baseType: !7, size: 32, offset: 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !522, file: !523, line: 1463, baseType: !3782, offset: 21184)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !523, line: 739, elements: !837)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !522, file: !523, line: 1470, baseType: !405, size: 128, align: 64, offset: 21184)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !522, file: !523, line: 1471, baseType: !471, size: 32, offset: 21312)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !522, file: !523, line: 1472, baseType: !43, size: 32, offset: 21344)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !522, file: !523, line: 1474, baseType: !521, size: 64, offset: 21376)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !522, file: !523, line: 1475, baseType: !2605, size: 320, offset: 21440)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !522, file: !523, line: 1478, baseType: !3789, size: 64, offset: 21760)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !523, line: 1478, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !522, file: !523, line: 1482, baseType: !471, size: 32, offset: 21824)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !522, file: !523, line: 1489, baseType: !41, size: 64, offset: 21888)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !522, file: !523, line: 1504, baseType: !41, size: 64, offset: 21952)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !522, file: !523, line: 1505, baseType: !248, size: 64, offset: 22016)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !522, file: !523, line: 1506, baseType: !247, size: 64, offset: 22080)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !522, file: !523, line: 1507, baseType: !248, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !522, file: !523, line: 1508, baseType: !248, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !522, file: !523, line: 1509, baseType: !248, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !522, file: !523, line: 1510, baseType: !405, size: 128, align: 64, offset: 22208)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !522, file: !523, line: 1511, baseType: !43, size: 32, offset: 22336)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !522, file: !523, line: 1515, baseType: !3802, size: 64, offset: 22400)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !400, line: 56, size: 64, elements: !3803)
!3803 = !{!3804}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3802, file: !400, line: 57, baseType: !403, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !522, file: !523, line: 1518, baseType: !3802, size: 64, offset: 22464)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !522, file: !523, line: 1528, baseType: !405, size: 128, align: 64, offset: 22528)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !522, file: !523, line: 1552, baseType: !3808, size: 35328, offset: 23040)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3809, line: 430, size: 35328, elements: !3810)
!3809 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3810 = !{!3811, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3840, !3841, !3842, !3843, !3844, !3845, !3848, !3849, !3850, !3851}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3808, file: !3809, line: 432, baseType: !3812, size: 192)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3813, size: 192, elements: !463)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3814, line: 16, size: 64, elements: !3815)
!3814 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3813, file: !3814, line: 17, baseType: !114, size: 16)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3813, file: !3814, line: 18, baseType: !114, size: 16, offset: 16)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3813, file: !3814, line: 19, baseType: !114, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3813, file: !3814, line: 19, baseType: !114, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3813, file: !3814, line: 19, baseType: !114, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3813, file: !3814, line: 19, baseType: !114, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3813, file: !3814, line: 19, baseType: !114, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3813, file: !3814, line: 20, baseType: !114, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3813, file: !3814, line: 20, baseType: !114, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3813, file: !3814, line: 20, baseType: !114, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3813, file: !3814, line: 20, baseType: !114, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3813, file: !3814, line: 20, baseType: !114, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3813, file: !3814, line: 20, baseType: !114, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3808, file: !3809, line: 436, baseType: !60, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3808, file: !3809, line: 440, baseType: !47, size: 16, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3808, file: !3809, line: 441, baseType: !47, size: 16, offset: 272)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3808, file: !3809, line: 442, baseType: !47, size: 16, offset: 288)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3808, file: !3809, line: 443, baseType: !47, size: 16, offset: 304)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3808, file: !3809, line: 447, baseType: !60, size: 64, offset: 320)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3808, file: !3809, line: 448, baseType: !60, size: 64, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3808, file: !3809, line: 459, baseType: !3837, size: 256, offset: 448)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3838, size: 256, elements: !489)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3809, line: 428, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3808, file: !3809, line: 461, baseType: !60, size: 64, offset: 704)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3808, file: !3809, line: 463, baseType: !60, size: 64, offset: 768)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3808, file: !3809, line: 465, baseType: !60, size: 64, offset: 832)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3808, file: !3809, line: 466, baseType: !60, size: 64, offset: 896)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3808, file: !3809, line: 467, baseType: !60, size: 64, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3808, file: !3809, line: 473, baseType: !3846, size: 64, offset: 1024)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3809, line: 10, flags: DIFlagFwdDecl)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3808, file: !3809, line: 480, baseType: !60, size: 64, offset: 1088)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3808, file: !3809, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3808, file: !3809, line: 491, baseType: !243, size: 32, offset: 1184)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3808, file: !3809, line: 501, baseType: !3852, size: 33792, offset: 1536)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3853, line: 448, size: 33792, elements: !3854)
!3853 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3854 = !{!3855, !3856, !3857, !4019, !4020, !4026, !4027}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3852, file: !3853, line: 461, baseType: !7, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3852, file: !3853, line: 468, baseType: !60, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3852, file: !3853, line: 476, baseType: !3858, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3853, line: 356, size: 33280, align: 512, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3859, file: !3853, line: 358, baseType: !7, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3859, file: !3853, line: 361, baseType: !7, size: 32, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3859, file: !3853, line: 364, baseType: !247, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3859, file: !3853, line: 367, baseType: !247, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3859, file: !3853, line: 370, baseType: !247, size: 64, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3859, file: !3853, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3859, file: !3853, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3859, file: !3853, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3859, file: !3853, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3859, file: !3853, line: 397, baseType: !3871, size: 32768, offset: 512)
!3871 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3853, line: 348, size: 32768, elements: !3872)
!3872 = !{!3873, !3888, !3925, !4002, !4015}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3871, file: !3853, line: 349, baseType: !3874, size: 896)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3853, line: 12, size: 896, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3887}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3874, file: !3853, line: 13, baseType: !243, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3874, file: !3853, line: 14, baseType: !243, size: 32, offset: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3874, file: !3853, line: 15, baseType: !243, size: 32, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3874, file: !3853, line: 16, baseType: !243, size: 32, offset: 96)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3874, file: !3853, line: 17, baseType: !243, size: 32, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3874, file: !3853, line: 18, baseType: !243, size: 32, offset: 160)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3874, file: !3853, line: 19, baseType: !243, size: 32, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3874, file: !3853, line: 22, baseType: !3884, size: 640, offset: 224)
!3884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 640, elements: !3885)
!3885 = !{!3886}
!3886 = !DISubrange(count: 20)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3874, file: !3853, line: 25, baseType: !243, size: 32, offset: 864)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3871, file: !3853, line: 350, baseType: !3889, size: 4096, align: 128)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3853, line: 34, size: 4096, align: 128, elements: !3890)
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3910, !3911, !3912, !3914, !3916, !3920}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3889, file: !3853, line: 35, baseType: !114, size: 16)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3889, file: !3853, line: 36, baseType: !114, size: 16, offset: 16)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3889, file: !3853, line: 37, baseType: !114, size: 16, offset: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3889, file: !3853, line: 38, baseType: !114, size: 16, offset: 48)
!3895 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !3853, line: 39, baseType: !3896, size: 128, offset: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3889, file: !3853, line: 39, size: 128, elements: !3897)
!3897 = !{!3898, !3903}
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !3853, line: 40, baseType: !3899, size: 128)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3896, file: !3853, line: 40, size: 128, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3899, file: !3853, line: 41, baseType: !247, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3899, file: !3853, line: 42, baseType: !247, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !3853, line: 44, baseType: !3904, size: 128)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3896, file: !3853, line: 44, size: 128, elements: !3905)
!3905 = !{!3906, !3907, !3908, !3909}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3904, file: !3853, line: 45, baseType: !243, size: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3904, file: !3853, line: 46, baseType: !243, size: 32, offset: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3904, file: !3853, line: 47, baseType: !243, size: 32, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3904, file: !3853, line: 48, baseType: !243, size: 32, offset: 96)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3889, file: !3853, line: 51, baseType: !243, size: 32, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3889, file: !3853, line: 52, baseType: !243, size: 32, offset: 224)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3889, file: !3853, line: 55, baseType: !3913, size: 1024, offset: 256)
!3913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 1024, elements: !3119)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3889, file: !3853, line: 58, baseType: !3915, size: 2048, offset: 1280)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 2048, elements: !1609)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3889, file: !3853, line: 60, baseType: !3917, size: 384, offset: 3328)
!3917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 384, elements: !3918)
!3918 = !{!3919}
!3919 = !DISubrange(count: 12)
!3920 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !3853, line: 62, baseType: !3921, size: 384, offset: 3712)
!3921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3889, file: !3853, line: 62, size: 384, elements: !3922)
!3922 = !{!3923, !3924}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3921, file: !3853, line: 63, baseType: !3917, size: 384)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3921, file: !3853, line: 64, baseType: !3917, size: 384)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3871, file: !3853, line: 351, baseType: !3926, size: 1088)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3853, line: 79, size: 1088, elements: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !4001}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3926, file: !3853, line: 80, baseType: !243, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3926, file: !3853, line: 81, baseType: !243, size: 32, offset: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3926, file: !3853, line: 82, baseType: !243, size: 32, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3926, file: !3853, line: 83, baseType: !243, size: 32, offset: 96)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3926, file: !3853, line: 84, baseType: !243, size: 32, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3926, file: !3853, line: 85, baseType: !243, size: 32, offset: 160)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3926, file: !3853, line: 86, baseType: !243, size: 32, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3926, file: !3853, line: 88, baseType: !3884, size: 640, offset: 224)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3926, file: !3853, line: 89, baseType: !104, size: 8, offset: 864)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3926, file: !3853, line: 90, baseType: !104, size: 8, offset: 872)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3926, file: !3853, line: 91, baseType: !104, size: 8, offset: 880)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3926, file: !3853, line: 92, baseType: !104, size: 8, offset: 888)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3926, file: !3853, line: 93, baseType: !104, size: 8, offset: 896)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3926, file: !3853, line: 94, baseType: !104, size: 8, offset: 904)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3926, file: !3853, line: 95, baseType: !3943, size: 64, offset: 960)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3945, line: 11, size: 128, elements: !3946)
!3945 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3944, file: !3945, line: 12, baseType: !388, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3944, file: !3945, line: 13, baseType: !3949, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3951, line: 103, size: 1344, elements: !3952)
!3951 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3952 = !{!3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3981, !3982, !3983}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3950, file: !3951, line: 109, baseType: !60, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3950, file: !3951, line: 110, baseType: !60, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3950, file: !3951, line: 111, baseType: !60, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3950, file: !3951, line: 112, baseType: !60, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3950, file: !3951, line: 113, baseType: !60, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3950, file: !3951, line: 114, baseType: !60, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3950, file: !3951, line: 117, baseType: !60, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3950, file: !3951, line: 118, baseType: !60, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3950, file: !3951, line: 119, baseType: !60, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3950, file: !3951, line: 120, baseType: !60, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3950, file: !3951, line: 121, baseType: !60, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3950, file: !3951, line: 122, baseType: !60, size: 64, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3950, file: !3951, line: 123, baseType: !60, size: 64, offset: 768)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3950, file: !3951, line: 124, baseType: !60, size: 64, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3950, file: !3951, line: 125, baseType: !60, size: 64, offset: 896)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3950, file: !3951, line: 139, baseType: !60, size: 64, offset: 960)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3950, file: !3951, line: 142, baseType: !60, size: 64, offset: 1024)
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3950, file: !3951, line: 144, baseType: !3971, size: 64, offset: 1088)
!3971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3950, file: !3951, line: 144, size: 64, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3971, file: !3951, line: 146, baseType: !114, size: 16)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3971, file: !3951, line: 148, baseType: !247, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3971, file: !3951, line: 150, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3951, line: 59, size: 64, elements: !3977)
!3977 = !{!3978, !3979, !3980}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3976, file: !3951, line: 61, baseType: !247, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3976, file: !3951, line: 63, baseType: !247, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3976, file: !3951, line: 65, baseType: !247, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3950, file: !3951, line: 153, baseType: !60, size: 64, offset: 1152)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3950, file: !3951, line: 154, baseType: !60, size: 64, offset: 1216)
!3983 = !DIDerivedType(tag: DW_TAG_member, scope: !3950, file: !3951, line: 156, baseType: !3984, size: 64, offset: 1280)
!3984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3950, file: !3951, line: 156, size: 64, elements: !3985)
!3985 = !{!3986, !3987, !3988}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3984, file: !3951, line: 158, baseType: !114, size: 16)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3984, file: !3951, line: 160, baseType: !247, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3984, file: !3951, line: 162, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3951, line: 69, size: 64, elements: !3990)
!3990 = !{!3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3989, file: !3951, line: 71, baseType: !247, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3989, file: !3951, line: 73, baseType: !247, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3989, file: !3951, line: 75, baseType: !247, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3989, file: !3951, line: 77, baseType: !247, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3989, file: !3951, line: 80, baseType: !247, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3989, file: !3951, line: 83, baseType: !247, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3989, file: !3951, line: 86, baseType: !247, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3989, file: !3951, line: 88, baseType: !247, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3989, file: !3951, line: 93, baseType: !247, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3989, file: !3951, line: 100, baseType: !247, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3926, file: !3853, line: 96, baseType: !243, size: 32, offset: 1024)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3871, file: !3853, line: 352, baseType: !4003, size: 4608, align: 512)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3853, line: 333, size: 4608, align: 512, elements: !4004)
!4004 = !{!4005, !4006, !4013}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4003, file: !3853, line: 334, baseType: !3889, size: 4096, align: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4003, file: !3853, line: 335, baseType: !4007, size: 512, offset: 4096)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3853, line: 312, size: 512, elements: !4008)
!4008 = !{!4009, !4010, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4007, file: !3853, line: 313, baseType: !247, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4007, file: !3853, line: 314, baseType: !247, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4007, file: !3853, line: 315, baseType: !4012, size: 384, offset: 128)
!4012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 384, elements: !1072)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4003, file: !3853, line: 336, baseType: !4014, offset: 4608)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, elements: !1248)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3871, file: !3853, line: 353, baseType: !4016, size: 32768)
!4016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 32768, elements: !4017)
!4017 = !{!4018}
!4018 = !DISubrange(count: 4096)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3852, file: !3853, line: 484, baseType: !3858, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3852, file: !3853, line: 491, baseType: !4021, size: 128, offset: 256)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3853, line: 404, size: 128, elements: !4022)
!4022 = !{!4023, !4024, !4025}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4021, file: !3853, line: 424, baseType: !247, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4021, file: !3853, line: 432, baseType: !7, size: 32, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4021, file: !3853, line: 440, baseType: !7, size: 32, offset: 96)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3852, file: !3853, line: 498, baseType: !4021, size: 128, offset: 384)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3852, file: !3853, line: 508, baseType: !3859, size: 33280, align: 512, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !501, file: !502, line: 31, baseType: !4029, size: 64, offset: 448)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4031, line: 325, flags: DIFlagFwdDecl)
!4031 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !501, file: !502, line: 32, baseType: !7, size: 32, offset: 512)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !501, file: !502, line: 33, baseType: !500, size: 64, offset: 576)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !501, file: !502, line: 35, baseType: !4035, size: 64, offset: 640)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !4037, line: 4, size: 576, elements: !4038)
!4037 = !DIFile(filename: "./include/linux/fs_pin.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d07c4a418236e4e1036969d5e8bd56f6")
!4038 = !{!4039, !4040, !4041, !4042, !4043}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4036, file: !4037, line: 5, baseType: !75, size: 192)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4036, file: !4037, line: 6, baseType: !43, size: 32, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !4036, file: !4037, line: 7, baseType: !484, size: 128, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !4036, file: !4037, line: 8, baseType: !484, size: 128, offset: 384)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !4036, file: !4037, line: 9, baseType: !4044, size: 64, offset: 512)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !4035}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !501, file: !502, line: 37, baseType: !976, size: 64, offset: 704)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !501, file: !502, line: 38, baseType: !1215, size: 64, offset: 768)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !501, file: !502, line: 39, baseType: !43, size: 32, offset: 832)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !501, file: !502, line: 40, baseType: !1009, size: 192, offset: 896)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !501, file: !502, line: 42, baseType: !43, size: 32, offset: 1088)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !441, file: !173, line: 951, baseType: !135, size: 32, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !441, file: !173, line: 952, baseType: !260, size: 32, offset: 160)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !441, file: !173, line: 952, baseType: !260, size: 32, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !441, file: !173, line: 953, baseType: !43, size: 32, offset: 224)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !393, file: !173, line: 1012, baseType: !1390, size: 64, offset: 896)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !393, file: !173, line: 1013, baseType: !4058, size: 256, offset: 960)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !173, line: 970, size: 256, elements: !4059)
!4059 = !{!4060, !4061, !4062, !4063, !4064, !4065}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4058, file: !173, line: 971, baseType: !60, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4058, file: !173, line: 972, baseType: !7, size: 32, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4058, file: !173, line: 973, baseType: !7, size: 32, offset: 96)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4058, file: !173, line: 974, baseType: !7, size: 32, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4058, file: !173, line: 975, baseType: !7, size: 32, offset: 160)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4058, file: !173, line: 976, baseType: !62, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !393, file: !173, line: 1014, baseType: !2908, size: 128, offset: 1216)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !393, file: !173, line: 1015, baseType: !254, size: 64, offset: 1344)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !393, file: !173, line: 1016, baseType: !4069, size: 64, offset: 1408)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !173, line: 1914, size: 2112, elements: !4072)
!4072 = !{!4073, !4074, !4078, !4082, !4086, !4087, !4088, !4094, !4107, !4111, !4115, !4116, !4120, !4121, !4125, !4130, !4131, !4135, !4139, !4145, !4146, !4150, !4151, !4155, !4159, !4160, !4165, !4169, !4173, !4177, !4181, !4182, !4188}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4071, file: !173, line: 1915, baseType: !1553, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4071, file: !173, line: 1916, baseType: !4075, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!62, !392, !62, !43}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4071, file: !173, line: 1917, baseType: !4079, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!1636, !392, !319, !56, !61}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4071, file: !173, line: 1918, baseType: !4083, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!1636, !392, !37, !56, !61}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4071, file: !173, line: 1919, baseType: !2092, size: 64, offset: 256)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4071, file: !173, line: 1920, baseType: !2092, size: 64, offset: 320)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4071, file: !173, line: 1921, baseType: !4089, size: 64, offset: 384)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!43, !2095, !4092, !7}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !173, line: 53, flags: DIFlagFwdDecl)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4071, file: !173, line: 1923, baseType: !4095, size: 64, offset: 448)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!43, !392, !4098}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !173, line: 1858, size: 128, elements: !4100)
!4100 = !{!4101, !4106}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4099, file: !173, line: 1859, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !173, line: 1855, baseType: !4103)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!313, !4098, !37, !43, !62, !247, !7}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4099, file: !173, line: 1860, baseType: !62, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4071, file: !173, line: 1924, baseType: !4108, size: 64, offset: 512)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!2325, !392, !2327}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4071, file: !173, line: 1925, baseType: !4112, size: 64, offset: 576)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!388, !392, !7, !60}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4071, file: !173, line: 1926, baseType: !4112, size: 64, offset: 640)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4071, file: !173, line: 1927, baseType: !4117, size: 64, offset: 704)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!43, !392, !1803}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4071, file: !173, line: 1928, baseType: !60, size: 64, offset: 768)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4071, file: !173, line: 1929, baseType: !4122, size: 64, offset: 832)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!43, !254, !392}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4071, file: !173, line: 1930, baseType: !4126, size: 64, offset: 896)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!43, !392, !4129}
!4129 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !173, line: 1061, baseType: !41)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4071, file: !173, line: 1931, baseType: !4122, size: 64, offset: 960)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4071, file: !173, line: 1932, baseType: !4132, size: 64, offset: 1024)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!43, !392, !62, !62, !43}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4071, file: !173, line: 1933, baseType: !4136, size: 64, offset: 1088)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!43, !43, !392, !43}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4071, file: !173, line: 1934, baseType: !4140, size: 64, offset: 1152)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!43, !392, !43, !4143}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !173, line: 1063, flags: DIFlagFwdDecl)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4071, file: !173, line: 1935, baseType: !841, size: 64, offset: 1216)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4071, file: !173, line: 1936, baseType: !4147, size: 64, offset: 1280)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!43, !43}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4071, file: !173, line: 1937, baseType: !4140, size: 64, offset: 1344)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4071, file: !173, line: 1938, baseType: !4152, size: 64, offset: 1408)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!1636, !3689, !392, !61, !56, !7}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4071, file: !173, line: 1939, baseType: !4156, size: 64, offset: 1472)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!1636, !392, !61, !3689, !56, !7}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4071, file: !173, line: 1940, baseType: !2148, size: 64, offset: 1536)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4071, file: !173, line: 1941, baseType: !4161, size: 64, offset: 1600)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!43, !392, !43, !4164, !2069}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4071, file: !173, line: 1942, baseType: !4166, size: 64, offset: 1664)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!388, !392, !43, !62, !62}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4071, file: !173, line: 1944, baseType: !4170, size: 64, offset: 1728)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !2258, !392}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4071, file: !173, line: 1948, baseType: !4174, size: 64, offset: 1792)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!1636, !392, !62, !392, !62, !56, !7}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4071, file: !173, line: 1950, baseType: !4178, size: 64, offset: 1856)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!62, !392, !62, !392, !62, !62, !7}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4071, file: !173, line: 1953, baseType: !4132, size: 64, offset: 1920)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4071, file: !173, line: 1954, baseType: !4183, size: 64, offset: 1984)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!43, !4186, !7}
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !173, line: 1911, flags: DIFlagFwdDecl)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4071, file: !173, line: 1955, baseType: !4189, size: 64, offset: 2048)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!43, !4186, !4092, !7}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !393, file: !173, line: 1018, baseType: !247, size: 64, offset: 1472)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !393, file: !173, line: 1020, baseType: !41, size: 64, offset: 1536)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !393, file: !173, line: 1023, baseType: !41, size: 64, offset: 1600)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !393, file: !173, line: 1027, baseType: !4196, size: 64, offset: 1664)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !393, file: !173, line: 1029, baseType: !1673, size: 64, offset: 1728)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !393, file: !173, line: 1030, baseType: !2158, size: 32, offset: 1792)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !393, file: !173, line: 1031, baseType: !2158, size: 32, offset: 1824)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !283, file: !173, line: 1988, baseType: !4201, size: 64, offset: 896)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!43, !306, !2906, !4204, !243, !7}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4206, line: 22, size: 1280, elements: !4207)
!4206 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4205, file: !4206, line: 23, baseType: !243, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4205, file: !4206, line: 24, baseType: !45, size: 16, offset: 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4205, file: !4206, line: 25, baseType: !7, size: 32, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4205, file: !4206, line: 26, baseType: !1051, size: 32, offset: 96)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4205, file: !4206, line: 27, baseType: !247, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4205, file: !4206, line: 28, baseType: !247, size: 64, offset: 192)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4205, file: !4206, line: 41, baseType: !247, size: 64, offset: 256)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4205, file: !4206, line: 42, baseType: !345, size: 32, offset: 320)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4205, file: !4206, line: 43, baseType: !345, size: 32, offset: 352)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4205, file: !4206, line: 44, baseType: !260, size: 32, offset: 384)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4205, file: !4206, line: 45, baseType: !269, size: 32, offset: 416)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4205, file: !4206, line: 46, baseType: !62, size: 64, offset: 448)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4205, file: !4206, line: 47, baseType: !381, size: 128, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4205, file: !4206, line: 48, baseType: !381, size: 128, offset: 640)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4205, file: !4206, line: 49, baseType: !381, size: 128, offset: 768)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4205, file: !4206, line: 50, baseType: !381, size: 128, offset: 896)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4205, file: !4206, line: 51, baseType: !247, size: 64, offset: 1024)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4205, file: !4206, line: 52, baseType: !247, size: 64, offset: 1088)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4205, file: !4206, line: 53, baseType: !243, size: 32, offset: 1152)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4205, file: !4206, line: 54, baseType: !243, size: 32, offset: 1184)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4205, file: !4206, line: 55, baseType: !247, size: 64, offset: 1216)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !283, file: !173, line: 1990, baseType: !4230, size: 64, offset: 960)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!1636, !210, !319, !56}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !283, file: !173, line: 1991, baseType: !4234, size: 64, offset: 1024)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!43, !254, !4237, !247, !247}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !173, line: 55, flags: DIFlagFwdDecl)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !283, file: !173, line: 1993, baseType: !4240, size: 64, offset: 1088)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!43, !254, !43}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !283, file: !173, line: 1994, baseType: !4244, size: 64, offset: 1152)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!43, !254, !210, !392, !7, !45}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !283, file: !173, line: 1997, baseType: !4248, size: 64, offset: 1216)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!43, !306, !254, !392, !45}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !283, file: !173, line: 1999, baseType: !4252, size: 64, offset: 1280)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!277, !306, !210, !43}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !283, file: !173, line: 2001, baseType: !4256, size: 64, offset: 1344)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!43, !306, !210, !277, !43}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !283, file: !173, line: 2003, baseType: !4260, size: 64, offset: 1408)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!43, !306, !210, !4263}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !173, line: 76, flags: DIFlagFwdDecl)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !283, file: !173, line: 2005, baseType: !4266, size: 64, offset: 1472)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!43, !210, !4263}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !283, file: !173, line: 2006, baseType: !4270, size: 64, offset: 1536)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!4273, !254}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !173, line: 3192, size: 192, elements: !4275)
!4275 = !{!4276, !4277}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4274, file: !173, line: 3193, baseType: !509, size: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4274, file: !173, line: 3194, baseType: !243, size: 32, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !255, file: !173, line: 655, baseType: !1520, size: 64, offset: 448)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !255, file: !173, line: 656, baseType: !1673, size: 64, offset: 512)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !255, file: !173, line: 659, baseType: !41, size: 64, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !255, file: !173, line: 663, baseType: !60, size: 64, offset: 640)
!4282 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !173, line: 671, baseType: !4283, size: 32, offset: 704)
!4283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !173, line: 671, size: 32, elements: !4284)
!4284 = !{!4285, !4287}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4283, file: !173, line: 672, baseType: !4286, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4283, file: !173, line: 673, baseType: !7, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !255, file: !173, line: 675, baseType: !345, size: 32, offset: 736)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !255, file: !173, line: 676, baseType: !62, size: 64, offset: 768)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !255, file: !173, line: 677, baseType: !381, size: 128, offset: 832)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !255, file: !173, line: 678, baseType: !381, size: 128, offset: 960)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !255, file: !173, line: 679, baseType: !381, size: 128, offset: 1088)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !255, file: !173, line: 680, baseType: !80, size: 32, offset: 1216)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !255, file: !173, line: 681, baseType: !47, size: 16, offset: 1248)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !255, file: !173, line: 682, baseType: !104, size: 8, offset: 1264)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !255, file: !173, line: 683, baseType: !104, size: 8, offset: 1272)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !255, file: !173, line: 684, baseType: !2985, size: 64, offset: 1280)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !255, file: !173, line: 691, baseType: !60, size: 64, offset: 1344)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !255, file: !173, line: 692, baseType: !871, size: 320, offset: 1408)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !255, file: !173, line: 694, baseType: !60, size: 64, offset: 1728)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !255, file: !173, line: 695, baseType: !60, size: 64, offset: 1792)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !255, file: !173, line: 697, baseType: !484, size: 128, offset: 1856)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !255, file: !173, line: 698, baseType: !118, size: 128, offset: 1984)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !255, file: !173, line: 707, baseType: !118, size: 128, offset: 2112)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !255, file: !173, line: 708, baseType: !118, size: 128, offset: 2240)
!4306 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !173, line: 709, baseType: !4307, size: 128, offset: 2368)
!4307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !173, line: 709, size: 128, elements: !4308)
!4308 = !{!4309, !4310}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4307, file: !173, line: 710, baseType: !480, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4307, file: !173, line: 711, baseType: !405, size: 128, align: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !255, file: !173, line: 713, baseType: !420, size: 64, offset: 2496)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !255, file: !173, line: 714, baseType: !420, size: 64, offset: 2560)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !255, file: !173, line: 715, baseType: !70, size: 32, offset: 2624)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !255, file: !173, line: 716, baseType: !70, size: 32, offset: 2656)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !255, file: !173, line: 717, baseType: !70, size: 32, offset: 2688)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !255, file: !173, line: 719, baseType: !70, size: 32, offset: 2720)
!4317 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !173, line: 721, baseType: !4318, size: 64, offset: 2752)
!4318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !173, line: 721, size: 64, elements: !4319)
!4319 = !{!4320, !4321}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4318, file: !173, line: 722, baseType: !4069, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4318, file: !173, line: 723, baseType: !2735, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !255, file: !173, line: 725, baseType: !4323, size: 64, offset: 2816)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !173, line: 725, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !255, file: !173, line: 726, baseType: !1674, size: 1536, align: 64, offset: 2880)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !255, file: !173, line: 727, baseType: !118, size: 128, offset: 4416)
!4327 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !173, line: 728, baseType: !4328, size: 64, offset: 4544)
!4328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !173, line: 728, size: 64, elements: !4329)
!4329 = !{!4330, !4331, !4334, !4335}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4328, file: !173, line: 729, baseType: !3689, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4328, file: !173, line: 730, baseType: !4332, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !173, line: 730, flags: DIFlagFwdDecl)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4328, file: !173, line: 731, baseType: !319, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4328, file: !173, line: 732, baseType: !7, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !255, file: !173, line: 735, baseType: !244, size: 32, offset: 4608)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !255, file: !173, line: 738, baseType: !244, size: 32, offset: 4640)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !255, file: !173, line: 739, baseType: !3097, size: 64, offset: 4672)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !255, file: !173, line: 750, baseType: !41, size: 64, offset: 4736)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !211, file: !184, line: 91, baseType: !4341, size: 256, offset: 448)
!4341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !3119)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !211, file: !184, line: 94, baseType: !4343, size: 64, offset: 704)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4344, line: 25, size: 64, elements: !4345)
!4344 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4345 = !{!4346}
!4346 = !DIDerivedType(tag: DW_TAG_member, scope: !4343, file: !4344, line: 26, baseType: !4347, size: 64)
!4347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4343, file: !4344, line: 26, size: 64, elements: !4348)
!4348 = !{!4349, !4350}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4347, file: !4344, line: 28, baseType: !248, size: 64, align: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, scope: !4347, file: !4344, line: 30, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4347, file: !4344, line: 30, size: 64, elements: !4352)
!4352 = !{!4353, !4354}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4351, file: !4344, line: 31, baseType: !80, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4351, file: !4344, line: 32, baseType: !43, size: 32, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !211, file: !184, line: 95, baseType: !3132, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !211, file: !184, line: 96, baseType: !1520, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !211, file: !184, line: 97, baseType: !60, size: 64, offset: 896)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !211, file: !184, line: 98, baseType: !41, size: 64, offset: 960)
!4359 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !184, line: 100, baseType: !4360, size: 128, offset: 1024)
!4360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !184, line: 100, size: 128, elements: !4361)
!4361 = !{!4362, !4363}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4360, file: !184, line: 101, baseType: !118, size: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4360, file: !184, line: 102, baseType: !2336, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !211, file: !184, line: 104, baseType: !118, size: 128, offset: 1152)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !211, file: !184, line: 105, baseType: !118, size: 128, offset: 1280)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !211, file: !184, line: 113, baseType: !4367, size: 128, offset: 1408)
!4367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !184, line: 109, size: 128, elements: !4368)
!4368 = !{!4369, !4370, !4371}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4367, file: !184, line: 110, baseType: !484, size: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4367, file: !184, line: 111, baseType: !225, size: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4367, file: !184, line: 112, baseType: !405, size: 128, align: 64)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4374)
!4374 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4377)
!4377 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4380)
!4380 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_error_report", file: !189, line: 294, size: 192, elements: !4383)
!4383 = !{!4384, !4385, !4386}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4382, file: !189, line: 295, baseType: !43, size: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !4382, file: !189, line: 296, baseType: !254, size: 64, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !4382, file: !189, line: 297, baseType: !1520, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4389)
!4389 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3097)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4392)
!4392 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !483)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark", file: !189, line: 502, size: 576, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4478, !4479, !4480, !4481, !4482, !4483}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4394, file: !189, line: 504, baseType: !244, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4394, file: !189, line: 507, baseType: !471, size: 32, offset: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !4394, file: !189, line: 510, baseType: !4399, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_group", file: !189, line: 185, size: 1600, elements: !4401)
!4401 = !{!4402, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4466, !4467, !4468}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4400, file: !189, line: 186, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4405)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_ops", file: !189, line: 155, size: 384, elements: !4406)
!4406 = !{!4407, !4419, !4423, !4427, !4431, !4439}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "handle_event", scope: !4405, file: !189, line: 156, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!43, !4399, !243, !950, !43, !254, !3152, !243, !4411}
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_iter_info", file: !189, line: 400, size: 448, elements: !4413)
!4413 = !{!4414, !4416, !4417, !4418}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "marks", scope: !4412, file: !189, line: 401, baseType: !4415, size: 320)
!4415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4393, size: 320, elements: !994)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "current_group", scope: !4412, file: !189, line: 402, baseType: !4399, size: 64, offset: 320)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "report_mask", scope: !4412, file: !189, line: 403, baseType: !7, size: 32, offset: 384)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4412, file: !189, line: 404, baseType: !43, size: 32, offset: 416)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "handle_inode_event", scope: !4405, file: !189, line: 160, baseType: !4420, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!43, !4393, !243, !254, !254, !3152, !243}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "free_group_priv", scope: !4405, file: !189, line: 163, baseType: !4424, size: 64, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{null, !4399}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "freeing_mark", scope: !4405, file: !189, line: 164, baseType: !4428, size: 64, offset: 192)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !4393, !4399}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "free_event", scope: !4405, file: !189, line: 165, baseType: !4432, size: 64, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !4399, !4435}
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_event", file: !189, line: 175, size: 128, elements: !4437)
!4437 = !{!4438}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4436, file: !189, line: 176, baseType: !118, size: 128)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "free_mark", scope: !4405, file: !189, line: 167, baseType: !4440, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !4393}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4400, file: !189, line: 196, baseType: !471, size: 32, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "notification_lock", scope: !4400, file: !189, line: 199, baseType: !80, size: 32, offset: 96)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "notification_list", scope: !4400, file: !189, line: 200, baseType: !118, size: 128, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "notification_waitq", scope: !4400, file: !189, line: 201, baseType: !75, size: 192, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "q_len", scope: !4400, file: !189, line: 202, baseType: !7, size: 32, offset: 448)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "max_events", scope: !4400, file: !189, line: 203, baseType: !7, size: 32, offset: 480)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4400, file: !189, line: 211, baseType: !7, size: 32, offset: 512)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4400, file: !189, line: 212, baseType: !313, size: 8, offset: 544)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4400, file: !189, line: 217, baseType: !43, size: 32, offset: 576)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "owner_flags", scope: !4400, file: !189, line: 218, baseType: !7, size: 32, offset: 608)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "mark_mutex", scope: !4400, file: !189, line: 221, baseType: !426, size: 256, offset: 640)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "user_waits", scope: !4400, file: !189, line: 222, baseType: !70, size: 32, offset: 896)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "marks_list", scope: !4400, file: !189, line: 224, baseType: !118, size: 128, offset: 960)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "fsn_fa", scope: !4400, file: !189, line: 226, baseType: !4457, size: 64, offset: 1088)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !173, line: 1083, size: 384, elements: !4459)
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4458, file: !173, line: 1084, baseType: !444, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4458, file: !173, line: 1085, baseType: !43, size: 32, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4458, file: !173, line: 1086, baseType: !43, size: 32, offset: 96)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4458, file: !173, line: 1087, baseType: !4457, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4458, file: !173, line: 1088, baseType: !392, size: 64, offset: 192)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4458, file: !173, line: 1089, baseType: !405, size: 128, align: 64, offset: 256)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_event", scope: !4400, file: !189, line: 228, baseType: !4435, size: 64, offset: 1152)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4400, file: !189, line: 232, baseType: !2853, size: 64, offset: 1216)
!4468 = !DIDerivedType(tag: DW_TAG_member, scope: !4400, file: !189, line: 235, baseType: !4469, size: 320, offset: 1280)
!4469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4400, file: !189, line: 235, size: 320, elements: !4470)
!4470 = !{!4471, !4472}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4469, file: !189, line: 236, baseType: !41, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_data", scope: !4469, file: !189, line: 242, baseType: !4473, size: 320)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inotify_group_private_data", file: !189, line: 238, size: 320, elements: !4474)
!4474 = !{!4475, !4476, !4477}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "idr_lock", scope: !4473, file: !189, line: 239, baseType: !80, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !4473, file: !189, line: 240, baseType: !505, size: 192, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4473, file: !189, line: 241, baseType: !1215, size: 64, offset: 256)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "g_list", scope: !4394, file: !189, line: 514, baseType: !118, size: 128, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4394, file: !189, line: 516, baseType: !80, size: 32, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "obj_list", scope: !4394, file: !189, line: 518, baseType: !484, size: 128, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !4394, file: !189, line: 520, baseType: !3097, size: 64, offset: 448)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_mask", scope: !4394, file: !189, line: 522, baseType: !244, size: 32, offset: 512)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4394, file: !189, line: 533, baseType: !7, size: 32, offset: 544)
!4484 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !46, line: 155, baseType: !7)
!4485 = !{!0, !4486, !4491, !4493, !4495, !4497, !4500, !4504, !4507, !4509}
!4486 = !DIGlobalVariableExpression(var: !4487, expr: !DIExpression())
!4487 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !4488, isLocal: true, isDefinition: true)
!4488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 168, elements: !4489)
!4489 = !{!4490}
!4490 = !DISubrange(count: 21)
!4491 = !DIGlobalVariableExpression(var: !4492, expr: !DIExpression())
!4492 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___fsnotify_parent299", scope: !2, file: !3, line: 249, type: !41, isLocal: true, isDefinition: true)
!4493 = !DIGlobalVariableExpression(var: !4494, expr: !DIExpression())
!4494 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fsnotify306", scope: !2, file: !3, line: 598, type: !41, isLocal: true, isDefinition: true)
!4495 = !DIGlobalVariableExpression(var: !4496, expr: !DIExpression())
!4496 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_fsnotify__308_615_fsnotify_init1309", scope: !2, file: !3, line: 615, type: !41, isLocal: true, isDefinition: true)
!4497 = !DIGlobalVariableExpression(var: !4498, expr: !DIExpression())
!4498 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched181", scope: !4499, file: !523, line: 2104, type: !41, isLocal: true, isDefinition: true)
!4499 = distinct !DISubprogram(name: "_cond_resched", scope: !523, file: !523, line: 2102, type: !2479, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4500 = !DIGlobalVariableExpression(var: !4501, expr: !DIExpression())
!4501 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched37", scope: !4502, file: !4503, line: 112, type: !41, isLocal: true, isDefinition: true)
!4502 = distinct !DISubprogram(name: "might_resched", scope: !4503, file: !4503, line: 110, type: !2710, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4503 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4504 = !DIGlobalVariableExpression(var: !4505, expr: !DIExpression())
!4505 = distinct !DIGlobalVariable(scope: null, file: !4506, line: 285, type: !4488, isLocal: true, isDefinition: true)
!4506 = !DIFile(filename: "./include/linux/srcu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3855d969f2ce3ac707545b2791ec624")
!4507 = !DIGlobalVariableExpression(var: !4508, expr: !DIExpression())
!4508 = distinct !DIGlobalVariable(scope: null, file: !3, line: 608, type: !3118, isLocal: true, isDefinition: true)
!4509 = !DIGlobalVariableExpression(var: !4510, expr: !DIExpression())
!4510 = distinct !DIGlobalVariable(scope: null, file: !3, line: 610, type: !4511, isLocal: true, isDefinition: true)
!4511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !4512)
!4512 = !{!4513}
!4513 = !DISubrange(count: 24)
!4514 = !{i32 7, !"Dwarf Version", i32 5}
!4515 = !{i32 2, !"Debug Info Version", i32 3}
!4516 = !{i32 1, !"wchar_size", i32 2}
!4517 = !{i32 8, !"cf-protection-branch", i32 1}
!4518 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4519 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4520 = !{i32 1, !"Code Model", i32 2}
!4521 = !{i32 1, !"override-stack-alignment", i32 8}
!4522 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4523 = distinct !DISubprogram(name: "__fsnotify_inode_delete", scope: !3, file: !3, line: 20, type: !2736, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4524)
!4524 = !{!4525}
!4525 = !DILocalVariable(name: "inode", arg: 1, scope: !4523, file: !3, line: 20, type: !254)
!4526 = !DILocation(line: 20, column: 44, scope: !4523)
!4527 = !DILocation(line: 22, column: 32, scope: !4523)
!4528 = !DILocation(line: 22, column: 2, scope: !4523)
!4529 = !DILocation(line: 23, column: 1, scope: !4523)
!4530 = distinct !DISubprogram(name: "fsnotify_clear_marks_by_inode", scope: !4531, file: !4531, line: 58, type: !2736, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4532)
!4531 = !DIFile(filename: "fs/notify/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "81a29810ca662cf25b13a9fbefaf6740")
!4532 = !{!4533}
!4533 = !DILocalVariable(name: "inode", arg: 1, scope: !4530, file: !4531, line: 58, type: !254)
!4534 = !DILocation(line: 58, column: 64, scope: !4530)
!4535 = !DILocation(line: 60, column: 26, scope: !4530)
!4536 = !DILocation(line: 60, column: 33, scope: !4530)
!4537 = !DILocation(line: 60, column: 2, scope: !4530)
!4538 = !DILocation(line: 61, column: 1, scope: !4530)
!4539 = distinct !DISubprogram(name: "__fsnotify_vfsmount_delete", scope: !3, file: !3, line: 26, type: !4540, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4542)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{null, !2912}
!4542 = !{!4543}
!4543 = !DILocalVariable(name: "mnt", arg: 1, scope: !4539, file: !3, line: 26, type: !2912)
!4544 = !DILocation(line: 26, column: 50, scope: !4539)
!4545 = !DILocation(line: 28, column: 32, scope: !4539)
!4546 = !DILocation(line: 28, column: 2, scope: !4539)
!4547 = !DILocation(line: 29, column: 1, scope: !4539)
!4548 = distinct !DISubprogram(name: "fsnotify_clear_marks_by_mount", scope: !4531, file: !4531, line: 63, type: !4540, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4549)
!4549 = !{!4550}
!4550 = !DILocalVariable(name: "mnt", arg: 1, scope: !4548, file: !4531, line: 63, type: !2912)
!4551 = !DILocation(line: 63, column: 67, scope: !4548)
!4552 = !DILocation(line: 65, column: 37, scope: !4548)
!4553 = !DILocation(line: 65, column: 26, scope: !4548)
!4554 = !DILocation(line: 65, column: 43, scope: !4548)
!4555 = !DILocation(line: 65, column: 2, scope: !4548)
!4556 = !DILocation(line: 66, column: 1, scope: !4548)
!4557 = distinct !DISubprogram(name: "fsnotify_sb_delete", scope: !3, file: !3, line: 90, type: !1550, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4558)
!4558 = !{!4559, !4560, !4564, !4586, !4587, !4591}
!4559 = !DILocalVariable(name: "sb", arg: 1, scope: !4557, file: !3, line: 90, type: !1520)
!4560 = !DILocalVariable(name: "__wq_head", scope: !4561, file: !3, line: 95, type: !4563)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 95, column: 2)
!4562 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 95, column: 2)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!4564 = !DILocalVariable(name: "__wbq_entry", scope: !4561, file: !3, line: 95, type: !4565)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_bit_queue_entry", file: !4566, line: 16, size: 512, elements: !4567)
!4566 = !DIFile(filename: "./include/linux/wait_bit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef5555205db8da6167c7f65e9d04af17")
!4567 = !{!4568, !4574}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4565, file: !4566, line: 17, baseType: !4569, size: 192)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_bit_key", file: !4566, line: 10, size: 192, elements: !4570)
!4570 = !{!4571, !4572, !4573}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4569, file: !4566, line: 11, baseType: !41, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !4569, file: !4566, line: 12, baseType: !43, size: 32, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4569, file: !4566, line: 13, baseType: !60, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "wq_entry", scope: !4565, file: !4566, line: 18, baseType: !4575, size: 320, offset: 192)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !76, line: 30, size: 320, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4585}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4575, file: !76, line: 31, baseType: !7, size: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4575, file: !76, line: 32, baseType: !41, size: 64, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4575, file: !76, line: 33, baseType: !4580, size: 64, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !76, line: 16, baseType: !4581)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!43, !4584, !7, !43, !41}
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4575, file: !76, line: 34, baseType: !118, size: 128, offset: 192)
!4586 = !DILocalVariable(name: "__ret", scope: !4561, file: !3, line: 95, type: !388)
!4587 = !DILocalVariable(name: "__int", scope: !4588, file: !3, line: 95, type: !388)
!4588 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 95, column: 2)
!4589 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 95, column: 2)
!4590 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 95, column: 2)
!4591 = !DILabel(scope: !4561, name: "__out", file: !3, line: 95)
!4592 = !DILocation(line: 90, column: 45, scope: !4557)
!4593 = !DILocation(line: 92, column: 26, scope: !4557)
!4594 = !DILocation(line: 92, column: 2, scope: !4557)
!4595 = !DILocation(line: 93, column: 29, scope: !4557)
!4596 = !DILocation(line: 93, column: 2, scope: !4557)
!4597 = !DILocation(line: 95, column: 2, scope: !4557)
!4598 = !DILocation(line: 95, column: 2, scope: !4562)
!4599 = !DILocation(line: 95, column: 2, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 95, column: 2)
!4601 = !DILocation(line: 95, column: 2, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 95, column: 2)
!4603 = !DILocation(line: 95, column: 2, scope: !4561)
!4604 = !DILocation(line: 95, column: 2, scope: !4588)
!4605 = !DILocation(line: 95, column: 2, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 95, column: 2)
!4607 = !DILocation(line: 95, column: 2, scope: !4589)
!4608 = distinct !{!4608, !4609, !4609, !4610}
!4609 = !DILocation(line: 95, column: 2, scope: !4590)
!4610 = !{!"llvm.loop.unroll.disable"}
!4611 = !DILocation(line: 97, column: 1, scope: !4557)
!4612 = distinct !DISubprogram(name: "fsnotify_unmount_inodes", scope: !3, file: !3, line: 38, type: !1550, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4613 = !{!4614, !4615, !4616, !4617, !4620}
!4614 = !DILocalVariable(name: "sb", arg: 1, scope: !4612, file: !3, line: 38, type: !1520)
!4615 = !DILocalVariable(name: "inode", scope: !4612, file: !3, line: 40, type: !254)
!4616 = !DILocalVariable(name: "iput_inode", scope: !4612, file: !3, line: 40, type: !254)
!4617 = !DILocalVariable(name: "__mptr", scope: !4618, file: !3, line: 43, type: !41)
!4618 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 43, column: 2)
!4619 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 43, column: 2)
!4620 = !DILocalVariable(name: "__mptr", scope: !4621, file: !3, line: 43, type: !41)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 43, column: 2)
!4622 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 43, column: 2)
!4623 = !DILocation(line: 38, column: 57, scope: !4612)
!4624 = !DILocation(line: 40, column: 2, scope: !4612)
!4625 = !DILocation(line: 40, column: 16, scope: !4612)
!4626 = !DILocation(line: 40, column: 24, scope: !4612)
!4627 = !DILocation(line: 42, column: 13, scope: !4612)
!4628 = !DILocation(line: 42, column: 17, scope: !4612)
!4629 = !DILocation(line: 42, column: 2, scope: !4612)
!4630 = !DILocation(line: 43, column: 2, scope: !4618)
!4631 = !DILocation(line: 43, column: 2, scope: !4619)
!4632 = !DILocation(line: 43, column: 2, scope: !4622)
!4633 = !DILocation(line: 49, column: 14, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 43, column: 55)
!4635 = !DILocation(line: 49, column: 21, scope: !4634)
!4636 = !DILocation(line: 49, column: 3, scope: !4634)
!4637 = !DILocation(line: 50, column: 7, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 50, column: 7)
!4639 = !DILocation(line: 50, column: 14, scope: !4638)
!4640 = !DILocation(line: 50, column: 22, scope: !4638)
!4641 = !DILocation(line: 50, column: 7, scope: !4634)
!4642 = !DILocation(line: 51, column: 17, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 50, column: 55)
!4644 = !DILocation(line: 51, column: 24, scope: !4643)
!4645 = !DILocation(line: 51, column: 4, scope: !4643)
!4646 = !DILocation(line: 52, column: 4, scope: !4643)
!4647 = !DILocation(line: 64, column: 21, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 64, column: 7)
!4649 = !DILocation(line: 64, column: 28, scope: !4648)
!4650 = !DILocation(line: 64, column: 8, scope: !4648)
!4651 = !DILocation(line: 64, column: 7, scope: !4634)
!4652 = !DILocation(line: 65, column: 17, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 64, column: 38)
!4654 = !DILocation(line: 65, column: 24, scope: !4653)
!4655 = !DILocation(line: 65, column: 4, scope: !4653)
!4656 = !DILocation(line: 66, column: 4, scope: !4653)
!4657 = !DILocation(line: 69, column: 10, scope: !4634)
!4658 = !DILocation(line: 69, column: 3, scope: !4634)
!4659 = !DILocation(line: 70, column: 16, scope: !4634)
!4660 = !DILocation(line: 70, column: 23, scope: !4634)
!4661 = !DILocation(line: 70, column: 3, scope: !4634)
!4662 = !DILocation(line: 71, column: 16, scope: !4634)
!4663 = !DILocation(line: 71, column: 20, scope: !4634)
!4664 = !DILocation(line: 71, column: 3, scope: !4634)
!4665 = !DILocation(line: 73, column: 8, scope: !4634)
!4666 = !DILocation(line: 73, column: 3, scope: !4634)
!4667 = !DILocation(line: 76, column: 18, scope: !4634)
!4668 = !DILocation(line: 76, column: 3, scope: !4634)
!4669 = !DILocation(line: 78, column: 25, scope: !4634)
!4670 = !DILocation(line: 78, column: 3, scope: !4634)
!4671 = !DILocation(line: 80, column: 16, scope: !4634)
!4672 = !DILocation(line: 80, column: 14, scope: !4634)
!4673 = !DILocation(line: 82, column: 3, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 82, column: 3)
!4675 = !DILocation(line: 83, column: 14, scope: !4634)
!4676 = !DILocation(line: 83, column: 18, scope: !4634)
!4677 = !DILocation(line: 83, column: 3, scope: !4634)
!4678 = !DILocation(line: 84, column: 2, scope: !4634)
!4679 = !DILocation(line: 43, column: 2, scope: !4621)
!4680 = distinct !{!4680, !4631, !4681, !4682, !4610}
!4681 = !DILocation(line: 84, column: 2, scope: !4619)
!4682 = !{!"llvm.loop.mustprogress"}
!4683 = !DILocation(line: 85, column: 15, scope: !4612)
!4684 = !DILocation(line: 85, column: 19, scope: !4612)
!4685 = !DILocation(line: 85, column: 2, scope: !4612)
!4686 = !DILocation(line: 87, column: 7, scope: !4612)
!4687 = !DILocation(line: 87, column: 2, scope: !4612)
!4688 = !DILocation(line: 88, column: 1, scope: !4612)
!4689 = distinct !DISubprogram(name: "fsnotify_clear_marks_by_sb", scope: !4531, file: !4531, line: 68, type: !1550, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4690)
!4690 = !{!4691}
!4691 = !DILocalVariable(name: "sb", arg: 1, scope: !4689, file: !4531, line: 68, type: !1520)
!4692 = !DILocation(line: 68, column: 67, scope: !4689)
!4693 = !DILocation(line: 70, column: 26, scope: !4689)
!4694 = !DILocation(line: 70, column: 30, scope: !4689)
!4695 = !DILocation(line: 70, column: 2, scope: !4689)
!4696 = !DILocation(line: 71, column: 1, scope: !4689)
!4697 = !DILocation(line: 112, column: 2, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4502, file: !4503, line: 112, column: 2)
!4699 = !DILocation(line: 112, column: 2, scope: !4502)
!4700 = !DILocation(line: 113, column: 1, scope: !4502)
!4701 = distinct !DISubprogram(name: "atomic_long_read", scope: !4702, file: !4702, line: 3158, type: !4703, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4707)
!4702 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!388, !4705}
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!4707 = !{!4708}
!4708 = !DILocalVariable(name: "v", arg: 1, scope: !4701, file: !4702, line: 3158, type: !4705)
!4709 = !DILocation(line: 3158, column: 39, scope: !4701)
!4710 = !DILocation(line: 3160, column: 25, scope: !4701)
!4711 = !DILocation(line: 3160, column: 2, scope: !4701)
!4712 = !DILocation(line: 3161, column: 30, scope: !4701)
!4713 = !DILocation(line: 3161, column: 9, scope: !4701)
!4714 = !DILocation(line: 3161, column: 2, scope: !4701)
!4715 = !DISubprogram(name: "__var_waitqueue", scope: !4566, file: !4566, line: 240, type: !4716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!2336, !41}
!4718 = !DISubprogram(name: "init_wait_var_entry", scope: !4566, file: !4566, line: 238, type: !4719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{null, !4721, !41, !43}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4722 = !DISubprogram(name: "prepare_to_wait_event", scope: !76, file: !76, line: 1199, type: !4723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!388, !4563, !4584, !43}
!4725 = !DISubprogram(name: "schedule", scope: !523, file: !523, line: 303, type: !2710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4726 = !DISubprogram(name: "finish_wait", scope: !76, file: !76, line: 1200, type: !4727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{null, !4563, !4584}
!4729 = distinct !DISubprogram(name: "fsnotify_set_children_dentry_flags", scope: !3, file: !3, line: 106, type: !2736, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4730)
!4730 = !{!4731, !4732, !4733, !4736, !4738, !4741, !4744, !4747, !4749}
!4731 = !DILocalVariable(name: "inode", arg: 1, scope: !4729, file: !3, line: 106, type: !254)
!4732 = !DILocalVariable(name: "alias", scope: !4729, file: !3, line: 108, type: !210)
!4733 = !DILocalVariable(name: "____ptr", scope: !4734, file: !3, line: 116, type: !483)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 116, column: 2)
!4735 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 116, column: 2)
!4736 = !DILocalVariable(name: "__mptr", scope: !4737, file: !3, line: 116, type: !41)
!4737 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 116, column: 2)
!4738 = !DILocalVariable(name: "child", scope: !4739, file: !3, line: 117, type: !210)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 116, column: 61)
!4740 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 116, column: 2)
!4741 = !DILocalVariable(name: "__mptr", scope: !4742, file: !3, line: 123, type: !41)
!4742 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 123, column: 3)
!4743 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 123, column: 3)
!4744 = !DILocalVariable(name: "__mptr", scope: !4745, file: !3, line: 123, type: !41)
!4745 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 123, column: 3)
!4746 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 123, column: 3)
!4747 = !DILocalVariable(name: "____ptr", scope: !4748, file: !3, line: 116, type: !483)
!4748 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 116, column: 2)
!4749 = !DILocalVariable(name: "__mptr", scope: !4750, file: !3, line: 116, type: !41)
!4750 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 116, column: 2)
!4751 = !DILocation(line: 106, column: 55, scope: !4729)
!4752 = !DILocation(line: 108, column: 2, scope: !4729)
!4753 = !DILocation(line: 108, column: 17, scope: !4729)
!4754 = !DILocation(line: 110, column: 7, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 110, column: 6)
!4756 = !DILocation(line: 110, column: 6, scope: !4729)
!4757 = !DILocation(line: 111, column: 3, scope: !4755)
!4758 = !DILocation(line: 113, column: 13, scope: !4729)
!4759 = !DILocation(line: 113, column: 20, scope: !4729)
!4760 = !DILocation(line: 113, column: 2, scope: !4729)
!4761 = !DILocation(line: 116, column: 2, scope: !4734)
!4762 = !DILocation(line: 116, column: 2, scope: !4737)
!4763 = !DILocation(line: 116, column: 2, scope: !4735)
!4764 = !DILocation(line: 116, column: 2, scope: !4740)
!4765 = !DILocation(line: 117, column: 3, scope: !4739)
!4766 = !DILocation(line: 117, column: 18, scope: !4739)
!4767 = !DILocation(line: 122, column: 14, scope: !4739)
!4768 = !DILocation(line: 122, column: 21, scope: !4739)
!4769 = !DILocation(line: 122, column: 3, scope: !4739)
!4770 = !DILocation(line: 123, column: 3, scope: !4742)
!4771 = !DILocation(line: 123, column: 3, scope: !4743)
!4772 = !DILocation(line: 123, column: 3, scope: !4746)
!4773 = !DILocation(line: 124, column: 9, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 124, column: 8)
!4775 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 123, column: 58)
!4776 = !DILocation(line: 124, column: 16, scope: !4774)
!4777 = !DILocation(line: 124, column: 8, scope: !4775)
!4778 = !DILocation(line: 125, column: 5, scope: !4774)
!4779 = !DILocation(line: 127, column: 4, scope: !4775)
!4780 = !DILocation(line: 127, column: 4, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 127, column: 4)
!4782 = !DILocation(line: 128, column: 4, scope: !4775)
!4783 = !DILocation(line: 128, column: 11, scope: !4775)
!4784 = !DILocation(line: 128, column: 19, scope: !4775)
!4785 = !DILocation(line: 129, column: 17, scope: !4775)
!4786 = !DILocation(line: 129, column: 24, scope: !4775)
!4787 = !DILocation(line: 129, column: 4, scope: !4775)
!4788 = !DILocation(line: 130, column: 3, scope: !4775)
!4789 = !DILocation(line: 123, column: 3, scope: !4745)
!4790 = distinct !{!4790, !4771, !4791, !4682, !4610}
!4791 = !DILocation(line: 130, column: 3, scope: !4743)
!4792 = !DILocation(line: 131, column: 16, scope: !4739)
!4793 = !DILocation(line: 131, column: 23, scope: !4739)
!4794 = !DILocation(line: 131, column: 3, scope: !4739)
!4795 = !DILocation(line: 132, column: 2, scope: !4740)
!4796 = !DILocation(line: 132, column: 2, scope: !4739)
!4797 = !DILocation(line: 116, column: 2, scope: !4748)
!4798 = !DILocation(line: 116, column: 2, scope: !4750)
!4799 = distinct !{!4799, !4763, !4800, !4682, !4610}
!4800 = !DILocation(line: 132, column: 2, scope: !4735)
!4801 = !DILocation(line: 133, column: 15, scope: !4729)
!4802 = !DILocation(line: 133, column: 22, scope: !4729)
!4803 = !DILocation(line: 133, column: 2, scope: !4729)
!4804 = !DILocation(line: 134, column: 1, scope: !4729)
!4805 = distinct !DISubprogram(name: "spin_lock", scope: !4806, file: !4806, line: 349, type: !4807, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4809)
!4806 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4807 = !DISubroutineType(types: !4808)
!4808 = !{null, !1945}
!4809 = !{!4810}
!4810 = !DILocalVariable(name: "lock", arg: 1, scope: !4805, file: !4806, line: 349, type: !1945)
!4811 = !DILocation(line: 349, column: 51, scope: !4805)
!4812 = !DILocation(line: 351, column: 2, scope: !4805)
!4813 = !DILocation(line: 352, column: 1, scope: !4805)
!4814 = !DISubprogram(name: "_raw_spin_lock", scope: !4815, file: !4815, line: 22, type: !4816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4815 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !4818}
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!4819 = distinct !DISubprogram(name: "spinlock_check", scope: !4806, file: !4806, line: 324, type: !4820, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4822)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!4818, !1945}
!4822 = !{!4823}
!4823 = !DILocalVariable(name: "lock", arg: 1, scope: !4819, file: !4806, line: 324, type: !1945)
!4824 = !DILocation(line: 324, column: 67, scope: !4819)
!4825 = !DILocation(line: 326, column: 10, scope: !4819)
!4826 = !DILocation(line: 326, column: 16, scope: !4819)
!4827 = !DILocation(line: 326, column: 2, scope: !4819)
!4828 = distinct !DISubprogram(name: "spin_unlock", scope: !4806, file: !4806, line: 389, type: !4807, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4829)
!4829 = !{!4830}
!4830 = !DILocalVariable(name: "lock", arg: 1, scope: !4828, file: !4806, line: 389, type: !1945)
!4831 = !DILocation(line: 389, column: 53, scope: !4828)
!4832 = !DILocation(line: 391, column: 2, scope: !4828)
!4833 = !DILocation(line: 392, column: 1, scope: !4828)
!4834 = distinct !DISubprogram(name: "__fsnotify_parent", scope: !3, file: !3, line: 189, type: !4835, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4837)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!43, !210, !244, !950, !43}
!4837 = !{!4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4856, !4857, !4858, !4862, !4865}
!4838 = !DILocalVariable(name: "dentry", arg: 1, scope: !4834, file: !3, line: 189, type: !210)
!4839 = !DILocalVariable(name: "mask", arg: 2, scope: !4834, file: !3, line: 189, type: !244)
!4840 = !DILocalVariable(name: "data", arg: 3, scope: !4834, file: !3, line: 189, type: !950)
!4841 = !DILocalVariable(name: "data_type", arg: 4, scope: !4834, file: !3, line: 190, type: !43)
!4842 = !DILocalVariable(name: "path", scope: !4834, file: !3, line: 192, type: !2906)
!4843 = !DILocalVariable(name: "mnt", scope: !4834, file: !3, line: 193, type: !1508)
!4844 = !DILocalVariable(name: "inode", scope: !4834, file: !3, line: 194, type: !254)
!4845 = !DILocalVariable(name: "parent", scope: !4834, file: !3, line: 195, type: !210)
!4846 = !DILocalVariable(name: "parent_watched", scope: !4834, file: !3, line: 196, type: !313)
!4847 = !DILocalVariable(name: "parent_needed", scope: !4834, file: !3, line: 197, type: !313)
!4848 = !DILocalVariable(name: "parent_interested", scope: !4834, file: !3, line: 197, type: !313)
!4849 = !DILocalVariable(name: "p_mask", scope: !4834, file: !3, line: 198, type: !244)
!4850 = !DILocalVariable(name: "p_inode", scope: !4834, file: !3, line: 199, type: !254)
!4851 = !DILocalVariable(name: "name", scope: !4834, file: !3, line: 200, type: !4852)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "name_snapshot", file: !184, line: 595, size: 384, elements: !4853)
!4853 = !{!4854, !4855}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4852, file: !184, line: 596, baseType: !234, size: 128)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "inline_name", scope: !4852, file: !184, line: 597, baseType: !4341, size: 256, offset: 128)
!4856 = !DILocalVariable(name: "file_name", scope: !4834, file: !3, line: 201, type: !3147)
!4857 = !DILocalVariable(name: "ret", scope: !4834, file: !3, line: 202, type: !43)
!4858 = !DILocalVariable(name: "__ret_warn_on", scope: !4859, file: !3, line: 231, type: !43)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 231, column: 3)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 229, column: 42)
!4861 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 229, column: 6)
!4862 = !DILocalVariable(name: "__flags", scope: !4863, file: !3, line: 231, type: !43)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 231, column: 3)
!4864 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 231, column: 3)
!4865 = !DILabel(scope: !4834, name: "notify", file: !3, line: 240)
!4866 = !DILocation(line: 189, column: 38, scope: !4834)
!4867 = !DILocation(line: 189, column: 52, scope: !4834)
!4868 = !DILocation(line: 189, column: 70, scope: !4834)
!4869 = !DILocation(line: 190, column: 13, scope: !4834)
!4870 = !DILocation(line: 192, column: 2, scope: !4834)
!4871 = !DILocation(line: 192, column: 21, scope: !4834)
!4872 = !DILocation(line: 192, column: 47, scope: !4834)
!4873 = !DILocation(line: 192, column: 53, scope: !4834)
!4874 = !DILocation(line: 192, column: 28, scope: !4834)
!4875 = !DILocation(line: 193, column: 2, scope: !4834)
!4876 = !DILocation(line: 193, column: 16, scope: !4834)
!4877 = !DILocation(line: 193, column: 22, scope: !4834)
!4878 = !DILocation(line: 193, column: 40, scope: !4834)
!4879 = !DILocation(line: 193, column: 46, scope: !4834)
!4880 = !DILocation(line: 193, column: 29, scope: !4834)
!4881 = !DILocation(line: 194, column: 2, scope: !4834)
!4882 = !DILocation(line: 194, column: 16, scope: !4834)
!4883 = !DILocation(line: 194, column: 32, scope: !4834)
!4884 = !DILocation(line: 194, column: 24, scope: !4834)
!4885 = !DILocation(line: 195, column: 2, scope: !4834)
!4886 = !DILocation(line: 195, column: 17, scope: !4834)
!4887 = !DILocation(line: 196, column: 2, scope: !4834)
!4888 = !DILocation(line: 196, column: 7, scope: !4834)
!4889 = !DILocation(line: 196, column: 24, scope: !4834)
!4890 = !DILocation(line: 196, column: 32, scope: !4834)
!4891 = !DILocation(line: 196, column: 40, scope: !4834)
!4892 = !DILocation(line: 197, column: 2, scope: !4834)
!4893 = !DILocation(line: 197, column: 7, scope: !4834)
!4894 = !DILocation(line: 197, column: 22, scope: !4834)
!4895 = !DILocation(line: 198, column: 2, scope: !4834)
!4896 = !DILocation(line: 198, column: 8, scope: !4834)
!4897 = !DILocation(line: 199, column: 2, scope: !4834)
!4898 = !DILocation(line: 199, column: 16, scope: !4834)
!4899 = !DILocation(line: 200, column: 2, scope: !4834)
!4900 = !DILocation(line: 200, column: 23, scope: !4834)
!4901 = !DILocation(line: 201, column: 2, scope: !4834)
!4902 = !DILocation(line: 201, column: 15, scope: !4834)
!4903 = !DILocation(line: 202, column: 2, scope: !4834)
!4904 = !DILocation(line: 202, column: 6, scope: !4834)
!4905 = !DILocation(line: 208, column: 7, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 208, column: 6)
!4907 = !DILocation(line: 208, column: 14, scope: !4906)
!4908 = !DILocation(line: 208, column: 31, scope: !4906)
!4909 = !DILocation(line: 208, column: 35, scope: !4906)
!4910 = !DILocation(line: 208, column: 42, scope: !4906)
!4911 = !DILocation(line: 208, column: 48, scope: !4906)
!4912 = !DILocation(line: 208, column: 65, scope: !4906)
!4913 = !DILocation(line: 209, column: 8, scope: !4906)
!4914 = !DILocation(line: 209, column: 12, scope: !4906)
!4915 = !DILocation(line: 209, column: 16, scope: !4906)
!4916 = !DILocation(line: 209, column: 21, scope: !4906)
!4917 = !DILocation(line: 209, column: 41, scope: !4906)
!4918 = !DILocation(line: 209, column: 45, scope: !4906)
!4919 = !{i8 0, i8 2}
!4920 = !DILocation(line: 208, column: 6, scope: !4834)
!4921 = !DILocation(line: 210, column: 3, scope: !4906)
!4922 = !DILocation(line: 212, column: 9, scope: !4834)
!4923 = !DILocation(line: 213, column: 46, scope: !4834)
!4924 = !DILocation(line: 213, column: 53, scope: !4834)
!4925 = !DILocation(line: 213, column: 58, scope: !4834)
!4926 = !DILocation(line: 213, column: 18, scope: !4834)
!4927 = !DILocation(line: 213, column: 16, scope: !4834)
!4928 = !DILocation(line: 214, column: 7, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 214, column: 6)
!4930 = !DILocation(line: 214, column: 22, scope: !4929)
!4931 = !DILocation(line: 214, column: 26, scope: !4929)
!4932 = !DILocation(line: 214, column: 6, scope: !4834)
!4933 = !DILocation(line: 215, column: 3, scope: !4929)
!4934 = !DILocation(line: 218, column: 23, scope: !4834)
!4935 = !DILocation(line: 218, column: 11, scope: !4834)
!4936 = !DILocation(line: 218, column: 9, scope: !4834)
!4937 = !DILocation(line: 219, column: 12, scope: !4834)
!4938 = !DILocation(line: 219, column: 20, scope: !4834)
!4939 = !DILocation(line: 219, column: 10, scope: !4834)
!4940 = !DILocation(line: 220, column: 43, scope: !4834)
!4941 = !DILocation(line: 220, column: 11, scope: !4834)
!4942 = !DILocation(line: 220, column: 9, scope: !4834)
!4943 = !DILocation(line: 221, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 221, column: 6)
!4945 = !DILocation(line: 0, scope: !4944)
!4946 = !DILocation(line: 221, column: 6, scope: !4834)
!4947 = !DILocation(line: 222, column: 36, scope: !4944)
!4948 = !DILocation(line: 222, column: 45, scope: !4944)
!4949 = !DILocation(line: 222, column: 3, scope: !4944)
!4950 = !DILocation(line: 228, column: 22, scope: !4834)
!4951 = !DILocation(line: 228, column: 29, scope: !4834)
!4952 = !DILocation(line: 228, column: 27, scope: !4834)
!4953 = !DILocation(line: 228, column: 36, scope: !4834)
!4954 = !DILocation(line: 228, column: 20, scope: !4834)
!4955 = !DILocation(line: 229, column: 6, scope: !4861)
!4956 = !DILocation(line: 229, column: 20, scope: !4861)
!4957 = !DILocation(line: 229, column: 23, scope: !4861)
!4958 = !DILocation(line: 229, column: 6, scope: !4834)
!4959 = !DILocation(line: 231, column: 3, scope: !4859)
!4960 = !DILocation(line: 231, column: 3, scope: !4864)
!4961 = !DILocation(line: 231, column: 3, scope: !4863)
!4962 = !DILocation(line: 231, column: 3, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 231, column: 3)
!4964 = !DILocation(line: 231, column: 3, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 231, column: 3)
!4966 = !{i64 2154561717, i64 2154561746, i64 2154561792, i64 2154561850, i64 2154561904, i64 2154561958, i64 2154562013, i64 2154562044, i64 2154562352, i64 2154562358, i64 2154562405, i64 2154562428, i64 2154562454}
!4967 = !DILocation(line: 231, column: 3, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 231, column: 3)
!4969 = !DILocation(line: 231, column: 3, scope: !4860)
!4970 = !DILocation(line: 234, column: 36, scope: !4860)
!4971 = !DILocation(line: 234, column: 3, scope: !4860)
!4972 = !DILocation(line: 235, column: 21, scope: !4860)
!4973 = !DILocation(line: 235, column: 13, scope: !4860)
!4974 = !DILocation(line: 236, column: 7, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 236, column: 7)
!4976 = !DILocation(line: 236, column: 7, scope: !4860)
!4977 = !DILocation(line: 237, column: 9, scope: !4975)
!4978 = !DILocation(line: 237, column: 4, scope: !4975)
!4979 = !DILocation(line: 238, column: 2, scope: !4860)
!4980 = !DILocation(line: 240, column: 1, scope: !4834)
!4981 = !DILocation(line: 241, column: 17, scope: !4834)
!4982 = !DILocation(line: 241, column: 23, scope: !4834)
!4983 = !DILocation(line: 241, column: 29, scope: !4834)
!4984 = !DILocation(line: 241, column: 40, scope: !4834)
!4985 = !DILocation(line: 241, column: 49, scope: !4834)
!4986 = !DILocation(line: 241, column: 60, scope: !4834)
!4987 = !DILocation(line: 241, column: 8, scope: !4834)
!4988 = !DILocation(line: 241, column: 6, scope: !4834)
!4989 = !DILocation(line: 243, column: 6, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 243, column: 6)
!4991 = !DILocation(line: 243, column: 6, scope: !4834)
!4992 = !DILocation(line: 244, column: 3, scope: !4990)
!4993 = !DILocation(line: 245, column: 7, scope: !4834)
!4994 = !DILocation(line: 245, column: 2, scope: !4834)
!4995 = !DILocation(line: 247, column: 9, scope: !4834)
!4996 = !DILocation(line: 247, column: 2, scope: !4834)
!4997 = !DILocation(line: 248, column: 1, scope: !4834)
!4998 = distinct !DISubprogram(name: "fsnotify_data_path", scope: !189, file: !189, line: 329, type: !4999, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5001)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!2906, !950, !43}
!5001 = !{!5002, !5003}
!5002 = !DILocalVariable(name: "data", arg: 1, scope: !4998, file: !189, line: 329, type: !950)
!5003 = !DILocalVariable(name: "data_type", arg: 2, scope: !4998, file: !189, line: 330, type: !43)
!5004 = !DILocation(line: 329, column: 65, scope: !4998)
!5005 = !DILocation(line: 330, column: 15, scope: !4998)
!5006 = !DILocation(line: 332, column: 10, scope: !4998)
!5007 = !DILocation(line: 332, column: 2, scope: !4998)
!5008 = !DILocation(line: 334, column: 10, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4998, file: !189, line: 332, column: 21)
!5010 = !DILocation(line: 334, column: 3, scope: !5009)
!5011 = !DILocation(line: 336, column: 3, scope: !5009)
!5012 = !DILocation(line: 338, column: 1, scope: !4998)
!5013 = distinct !DISubprogram(name: "real_mount", scope: !1504, file: !1504, line: 84, type: !5014, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5016)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!1508, !2912}
!5016 = !{!5017, !5018}
!5017 = !DILocalVariable(name: "mnt", arg: 1, scope: !5013, file: !1504, line: 84, type: !2912)
!5018 = !DILocalVariable(name: "__mptr", scope: !5019, file: !1504, line: 86, type: !41)
!5019 = distinct !DILexicalBlock(scope: !5013, file: !1504, line: 86, column: 9)
!5020 = !DILocation(line: 84, column: 57, scope: !5013)
!5021 = !DILocation(line: 86, column: 9, scope: !5019)
!5022 = !DILocation(line: 86, column: 9, scope: !5013)
!5023 = !DILocation(line: 86, column: 2, scope: !5013)
!5024 = distinct !DISubprogram(name: "d_inode", scope: !184, file: !184, line: 514, type: !5025, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5027)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!254, !3145}
!5027 = !{!5028}
!5028 = !DILocalVariable(name: "dentry", arg: 1, scope: !5024, file: !184, line: 514, type: !3145)
!5029 = !DILocation(line: 514, column: 58, scope: !5024)
!5030 = !DILocation(line: 516, column: 9, scope: !5024)
!5031 = !DILocation(line: 516, column: 17, scope: !5024)
!5032 = !DILocation(line: 516, column: 2, scope: !5024)
!5033 = distinct !DISubprogram(name: "fsnotify_event_needs_parent", scope: !3, file: !3, line: 155, type: !5034, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5036)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!313, !254, !1508, !244}
!5036 = !{!5037, !5038, !5039, !5040}
!5037 = !DILocalVariable(name: "inode", arg: 1, scope: !5033, file: !3, line: 155, type: !254)
!5038 = !DILocalVariable(name: "mnt", arg: 2, scope: !5033, file: !3, line: 155, type: !1508)
!5039 = !DILocalVariable(name: "mask", arg: 3, scope: !5033, file: !3, line: 156, type: !244)
!5040 = !DILocalVariable(name: "marks_mask", scope: !5033, file: !3, line: 158, type: !244)
!5041 = !DILocation(line: 155, column: 55, scope: !5033)
!5042 = !DILocation(line: 155, column: 76, scope: !5033)
!5043 = !DILocation(line: 156, column: 12, scope: !5033)
!5044 = !DILocation(line: 158, column: 2, scope: !5033)
!5045 = !DILocation(line: 158, column: 8, scope: !5033)
!5046 = !DILocation(line: 161, column: 6, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 161, column: 6)
!5048 = !DILocation(line: 161, column: 11, scope: !5047)
!5049 = !DILocation(line: 161, column: 6, scope: !5033)
!5050 = !DILocation(line: 162, column: 3, scope: !5047)
!5051 = !DILocation(line: 169, column: 2, scope: !5033)
!5052 = !DILocation(line: 169, column: 2, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 169, column: 2)
!5054 = !DILocation(line: 172, column: 44, scope: !5033)
!5055 = !DILocation(line: 172, column: 51, scope: !5033)
!5056 = !DILocation(line: 172, column: 16, scope: !5033)
!5057 = !DILocation(line: 172, column: 13, scope: !5033)
!5058 = !DILocation(line: 173, column: 44, scope: !5033)
!5059 = !DILocation(line: 173, column: 51, scope: !5033)
!5060 = !DILocation(line: 173, column: 57, scope: !5033)
!5061 = !DILocation(line: 173, column: 16, scope: !5033)
!5062 = !DILocation(line: 173, column: 13, scope: !5033)
!5063 = !DILocation(line: 174, column: 6, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 174, column: 6)
!5065 = !DILocation(line: 174, column: 6, scope: !5033)
!5066 = !DILocation(line: 175, column: 45, scope: !5064)
!5067 = !DILocation(line: 175, column: 50, scope: !5064)
!5068 = !DILocation(line: 175, column: 17, scope: !5064)
!5069 = !DILocation(line: 175, column: 14, scope: !5064)
!5070 = !DILocation(line: 175, column: 3, scope: !5064)
!5071 = !DILocation(line: 178, column: 9, scope: !5033)
!5072 = !DILocation(line: 178, column: 16, scope: !5033)
!5073 = !DILocation(line: 178, column: 14, scope: !5033)
!5074 = !DILocation(line: 178, column: 2, scope: !5033)
!5075 = !DILocation(line: 179, column: 1, scope: !5033)
!5076 = !DISubprogram(name: "dget_parent", scope: !184, file: !184, line: 324, type: !5077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!210, !210}
!5079 = distinct !DISubprogram(name: "fsnotify_inode_watches_children", scope: !189, file: !189, line: 564, type: !2749, scopeLine: 565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5080)
!5080 = !{!5081, !5082}
!5081 = !DILocalVariable(name: "inode", arg: 1, scope: !5079, file: !189, line: 564, type: !254)
!5082 = !DILocalVariable(name: "parent_mask", scope: !5079, file: !189, line: 566, type: !244)
!5083 = !DILocation(line: 564, column: 65, scope: !5079)
!5084 = !DILocation(line: 566, column: 2, scope: !5079)
!5085 = !DILocation(line: 566, column: 8, scope: !5079)
!5086 = !DILocation(line: 566, column: 22, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5079, file: !189, line: 566, column: 22)
!5088 = !DILocation(line: 566, column: 22, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5087, file: !189, line: 566, column: 22)
!5090 = !DILocation(line: 569, column: 8, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5079, file: !189, line: 569, column: 6)
!5092 = !DILocation(line: 569, column: 20, scope: !5091)
!5093 = !DILocation(line: 569, column: 6, scope: !5079)
!5094 = !DILocation(line: 570, column: 3, scope: !5091)
!5095 = !DILocation(line: 573, column: 9, scope: !5079)
!5096 = !DILocation(line: 573, column: 21, scope: !5079)
!5097 = !DILocation(line: 573, column: 2, scope: !5079)
!5098 = !DILocation(line: 574, column: 1, scope: !5079)
!5099 = distinct !DISubprogram(name: "fsnotify_clear_child_dentry_flag", scope: !3, file: !3, line: 140, type: !5100, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5102)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{null, !254, !210}
!5102 = !{!5103, !5104}
!5103 = !DILocalVariable(name: "pinode", arg: 1, scope: !5099, file: !3, line: 140, type: !254)
!5104 = !DILocalVariable(name: "dentry", arg: 2, scope: !5099, file: !3, line: 141, type: !210)
!5105 = !DILocation(line: 140, column: 60, scope: !5099)
!5106 = !DILocation(line: 141, column: 26, scope: !5099)
!5107 = !DILocation(line: 143, column: 13, scope: !5099)
!5108 = !DILocation(line: 143, column: 21, scope: !5099)
!5109 = !DILocation(line: 143, column: 2, scope: !5099)
!5110 = !DILocation(line: 149, column: 39, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 149, column: 6)
!5112 = !DILocation(line: 149, column: 7, scope: !5111)
!5113 = !DILocation(line: 149, column: 6, scope: !5099)
!5114 = !DILocation(line: 150, column: 3, scope: !5111)
!5115 = !DILocation(line: 150, column: 11, scope: !5111)
!5116 = !DILocation(line: 150, column: 19, scope: !5111)
!5117 = !DILocation(line: 151, column: 15, scope: !5099)
!5118 = !DILocation(line: 151, column: 23, scope: !5099)
!5119 = !DILocation(line: 151, column: 2, scope: !5099)
!5120 = !DILocation(line: 152, column: 1, scope: !5099)
!5121 = distinct !DISubprogram(name: "fsnotify_data_inode", scope: !189, file: !189, line: 300, type: !5122, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5124)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!254, !950, !43}
!5124 = !{!5125, !5126}
!5125 = !DILocalVariable(name: "data", arg: 1, scope: !5121, file: !189, line: 300, type: !950)
!5126 = !DILocalVariable(name: "data_type", arg: 2, scope: !5121, file: !189, line: 300, type: !43)
!5127 = !DILocation(line: 300, column: 61, scope: !5121)
!5128 = !DILocation(line: 300, column: 71, scope: !5121)
!5129 = !DILocation(line: 302, column: 10, scope: !5121)
!5130 = !DILocation(line: 302, column: 2, scope: !5121)
!5131 = !DILocation(line: 304, column: 26, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5121, file: !189, line: 302, column: 21)
!5133 = !DILocation(line: 304, column: 3, scope: !5132)
!5134 = !DILocation(line: 306, column: 18, scope: !5132)
!5135 = !DILocation(line: 306, column: 10, scope: !5132)
!5136 = !DILocation(line: 306, column: 3, scope: !5132)
!5137 = !DILocation(line: 308, column: 40, scope: !5132)
!5138 = !DILocation(line: 308, column: 47, scope: !5132)
!5139 = !DILocation(line: 308, column: 10, scope: !5132)
!5140 = !DILocation(line: 308, column: 3, scope: !5132)
!5141 = !DILocation(line: 310, column: 37, scope: !5132)
!5142 = !DILocation(line: 310, column: 44, scope: !5132)
!5143 = !DILocation(line: 310, column: 3, scope: !5132)
!5144 = !DILocation(line: 312, column: 3, scope: !5132)
!5145 = !DILocation(line: 314, column: 1, scope: !5121)
!5146 = !DISubprogram(name: "take_dentry_name_snapshot", scope: !184, file: !184, line: 599, type: !5147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{null, !5149, !210}
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!5150 = distinct !DISubprogram(name: "fsnotify", scope: !3, file: !3, line: 495, type: !5151, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5153)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!43, !244, !950, !43, !254, !3152, !254, !243}
!5153 = !{!5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171}
!5154 = !DILocalVariable(name: "mask", arg: 1, scope: !5150, file: !3, line: 495, type: !244)
!5155 = !DILocalVariable(name: "data", arg: 2, scope: !5150, file: !3, line: 495, type: !950)
!5156 = !DILocalVariable(name: "data_type", arg: 3, scope: !5150, file: !3, line: 495, type: !43)
!5157 = !DILocalVariable(name: "dir", arg: 4, scope: !5150, file: !3, line: 495, type: !254)
!5158 = !DILocalVariable(name: "file_name", arg: 5, scope: !5150, file: !3, line: 496, type: !3152)
!5159 = !DILocalVariable(name: "inode", arg: 6, scope: !5150, file: !3, line: 496, type: !254)
!5160 = !DILocalVariable(name: "cookie", arg: 7, scope: !5150, file: !3, line: 496, type: !243)
!5161 = !DILocalVariable(name: "path", scope: !5150, file: !3, line: 498, type: !2906)
!5162 = !DILocalVariable(name: "sb", scope: !5150, file: !3, line: 499, type: !1520)
!5163 = !DILocalVariable(name: "iter_info", scope: !5150, file: !3, line: 500, type: !4412)
!5164 = !DILocalVariable(name: "mnt", scope: !5150, file: !3, line: 501, type: !1508)
!5165 = !DILocalVariable(name: "inode2", scope: !5150, file: !3, line: 502, type: !254)
!5166 = !DILocalVariable(name: "moved", scope: !5150, file: !3, line: 503, type: !210)
!5167 = !DILocalVariable(name: "inode2_type", scope: !5150, file: !3, line: 504, type: !43)
!5168 = !DILocalVariable(name: "ret", scope: !5150, file: !3, line: 505, type: !43)
!5169 = !DILocalVariable(name: "test_mask", scope: !5150, file: !3, line: 506, type: !244)
!5170 = !DILocalVariable(name: "marks_mask", scope: !5150, file: !3, line: 506, type: !244)
!5171 = !DILabel(scope: !5150, name: "out", file: !3, line: 593)
!5172 = !DILocation(line: 495, column: 20, scope: !5150)
!5173 = !DILocation(line: 495, column: 38, scope: !5150)
!5174 = !DILocation(line: 495, column: 48, scope: !5150)
!5175 = !DILocation(line: 495, column: 73, scope: !5150)
!5176 = !DILocation(line: 496, column: 26, scope: !5150)
!5177 = !DILocation(line: 496, column: 51, scope: !5150)
!5178 = !DILocation(line: 496, column: 62, scope: !5150)
!5179 = !DILocation(line: 498, column: 2, scope: !5150)
!5180 = !DILocation(line: 498, column: 21, scope: !5150)
!5181 = !DILocation(line: 498, column: 47, scope: !5150)
!5182 = !DILocation(line: 498, column: 53, scope: !5150)
!5183 = !DILocation(line: 498, column: 28, scope: !5150)
!5184 = !DILocation(line: 499, column: 2, scope: !5150)
!5185 = !DILocation(line: 499, column: 22, scope: !5150)
!5186 = !DILocation(line: 499, column: 44, scope: !5150)
!5187 = !DILocation(line: 499, column: 50, scope: !5150)
!5188 = !DILocation(line: 499, column: 27, scope: !5150)
!5189 = !DILocation(line: 500, column: 2, scope: !5150)
!5190 = !DILocation(line: 500, column: 28, scope: !5150)
!5191 = !DILocation(line: 501, column: 2, scope: !5150)
!5192 = !DILocation(line: 501, column: 16, scope: !5150)
!5193 = !DILocation(line: 502, column: 2, scope: !5150)
!5194 = !DILocation(line: 502, column: 16, scope: !5150)
!5195 = !DILocation(line: 503, column: 2, scope: !5150)
!5196 = !DILocation(line: 503, column: 17, scope: !5150)
!5197 = !DILocation(line: 504, column: 2, scope: !5150)
!5198 = !DILocation(line: 504, column: 6, scope: !5150)
!5199 = !DILocation(line: 505, column: 2, scope: !5150)
!5200 = !DILocation(line: 505, column: 6, scope: !5150)
!5201 = !DILocation(line: 506, column: 2, scope: !5150)
!5202 = !DILocation(line: 506, column: 8, scope: !5150)
!5203 = !DILocation(line: 506, column: 19, scope: !5150)
!5204 = !DILocation(line: 508, column: 6, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 508, column: 6)
!5206 = !DILocation(line: 508, column: 6, scope: !5150)
!5207 = !DILocation(line: 509, column: 20, scope: !5205)
!5208 = !DILocation(line: 509, column: 26, scope: !5205)
!5209 = !DILocation(line: 509, column: 9, scope: !5205)
!5210 = !DILocation(line: 509, column: 7, scope: !5205)
!5211 = !DILocation(line: 509, column: 3, scope: !5205)
!5212 = !DILocation(line: 511, column: 7, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 511, column: 6)
!5214 = !DILocation(line: 511, column: 6, scope: !5150)
!5215 = !DILocation(line: 513, column: 11, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 511, column: 14)
!5217 = !DILocation(line: 513, column: 9, scope: !5216)
!5218 = !DILocation(line: 515, column: 7, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 515, column: 7)
!5220 = !DILocation(line: 515, column: 12, scope: !5219)
!5221 = !DILocation(line: 515, column: 7, scope: !5216)
!5222 = !DILocation(line: 516, column: 33, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 515, column: 25)
!5224 = !DILocation(line: 516, column: 39, scope: !5223)
!5225 = !DILocation(line: 516, column: 12, scope: !5223)
!5226 = !DILocation(line: 516, column: 10, scope: !5223)
!5227 = !DILocation(line: 517, column: 13, scope: !5223)
!5228 = !DILocation(line: 517, column: 20, scope: !5223)
!5229 = !DILocation(line: 517, column: 30, scope: !5223)
!5230 = !DILocation(line: 517, column: 11, scope: !5223)
!5231 = !DILocation(line: 518, column: 16, scope: !5223)
!5232 = !DILocation(line: 519, column: 3, scope: !5223)
!5233 = !DILocation(line: 520, column: 2, scope: !5216)
!5234 = !DILocation(line: 520, column: 13, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 520, column: 13)
!5236 = !DILocation(line: 520, column: 18, scope: !5235)
!5237 = !DILocation(line: 520, column: 13, scope: !5213)
!5238 = !DILocation(line: 525, column: 12, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 520, column: 39)
!5240 = !DILocation(line: 525, column: 10, scope: !5239)
!5241 = !DILocation(line: 526, column: 15, scope: !5239)
!5242 = !DILocation(line: 527, column: 2, scope: !5239)
!5243 = !DILocation(line: 536, column: 7, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 536, column: 6)
!5245 = !DILocation(line: 536, column: 11, scope: !5244)
!5246 = !DILocation(line: 536, column: 28, scope: !5244)
!5247 = !DILocation(line: 537, column: 8, scope: !5244)
!5248 = !DILocation(line: 537, column: 12, scope: !5244)
!5249 = !DILocation(line: 537, column: 16, scope: !5244)
!5250 = !DILocation(line: 537, column: 21, scope: !5244)
!5251 = !DILocation(line: 537, column: 41, scope: !5244)
!5252 = !DILocation(line: 538, column: 8, scope: !5244)
!5253 = !DILocation(line: 538, column: 14, scope: !5244)
!5254 = !DILocation(line: 538, column: 18, scope: !5244)
!5255 = !DILocation(line: 538, column: 25, scope: !5244)
!5256 = !DILocation(line: 538, column: 43, scope: !5244)
!5257 = !DILocation(line: 539, column: 8, scope: !5244)
!5258 = !DILocation(line: 539, column: 15, scope: !5244)
!5259 = !DILocation(line: 539, column: 19, scope: !5244)
!5260 = !DILocation(line: 539, column: 27, scope: !5244)
!5261 = !DILocation(line: 536, column: 6, scope: !5150)
!5262 = !DILocation(line: 540, column: 3, scope: !5244)
!5263 = !DILocation(line: 542, column: 15, scope: !5150)
!5264 = !DILocation(line: 542, column: 19, scope: !5150)
!5265 = !DILocation(line: 542, column: 13, scope: !5150)
!5266 = !DILocation(line: 543, column: 6, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 543, column: 6)
!5268 = !DILocation(line: 543, column: 6, scope: !5150)
!5269 = !DILocation(line: 544, column: 17, scope: !5267)
!5270 = !DILocation(line: 544, column: 22, scope: !5267)
!5271 = !DILocation(line: 544, column: 14, scope: !5267)
!5272 = !DILocation(line: 544, column: 3, scope: !5267)
!5273 = !DILocation(line: 545, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 545, column: 6)
!5275 = !DILocation(line: 545, column: 6, scope: !5150)
!5276 = !DILocation(line: 546, column: 17, scope: !5274)
!5277 = !DILocation(line: 546, column: 24, scope: !5274)
!5278 = !DILocation(line: 546, column: 14, scope: !5274)
!5279 = !DILocation(line: 546, column: 3, scope: !5274)
!5280 = !DILocation(line: 547, column: 6, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 547, column: 6)
!5282 = !DILocation(line: 547, column: 6, scope: !5150)
!5283 = !DILocation(line: 548, column: 17, scope: !5281)
!5284 = !DILocation(line: 548, column: 25, scope: !5281)
!5285 = !DILocation(line: 548, column: 14, scope: !5281)
!5286 = !DILocation(line: 548, column: 3, scope: !5281)
!5287 = !DILocation(line: 557, column: 15, scope: !5150)
!5288 = !DILocation(line: 557, column: 20, scope: !5150)
!5289 = !DILocation(line: 557, column: 12, scope: !5150)
!5290 = !DILocation(line: 558, column: 8, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 558, column: 6)
!5292 = !DILocation(line: 558, column: 20, scope: !5291)
!5293 = !DILocation(line: 558, column: 18, scope: !5291)
!5294 = !DILocation(line: 558, column: 6, scope: !5150)
!5295 = !DILocation(line: 559, column: 3, scope: !5291)
!5296 = !DILocation(line: 561, column: 23, scope: !5150)
!5297 = !DILocation(line: 561, column: 12, scope: !5150)
!5298 = !DILocation(line: 561, column: 21, scope: !5150)
!5299 = !DILocation(line: 564, column: 24, scope: !5150)
!5300 = !DILocation(line: 564, column: 28, scope: !5150)
!5301 = !DILocation(line: 564, column: 3, scope: !5150)
!5302 = !DILocation(line: 563, column: 12, scope: !5150)
!5303 = !DILocation(line: 563, column: 2, scope: !5150)
!5304 = !DILocation(line: 563, column: 41, scope: !5150)
!5305 = !DILocation(line: 565, column: 6, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 565, column: 6)
!5307 = !DILocation(line: 565, column: 6, scope: !5150)
!5308 = !DILocation(line: 567, column: 25, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 565, column: 11)
!5310 = !DILocation(line: 567, column: 30, scope: !5309)
!5311 = !DILocation(line: 567, column: 4, scope: !5309)
!5312 = !DILocation(line: 566, column: 13, scope: !5309)
!5313 = !DILocation(line: 566, column: 3, scope: !5309)
!5314 = !DILocation(line: 566, column: 48, scope: !5309)
!5315 = !DILocation(line: 568, column: 2, scope: !5309)
!5316 = !DILocation(line: 569, column: 6, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 569, column: 6)
!5318 = !DILocation(line: 569, column: 6, scope: !5150)
!5319 = !DILocation(line: 571, column: 25, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 569, column: 13)
!5321 = !DILocation(line: 571, column: 32, scope: !5320)
!5322 = !DILocation(line: 571, column: 4, scope: !5320)
!5323 = !DILocation(line: 570, column: 13, scope: !5320)
!5324 = !DILocation(line: 570, column: 3, scope: !5320)
!5325 = !DILocation(line: 570, column: 45, scope: !5320)
!5326 = !DILocation(line: 572, column: 2, scope: !5320)
!5327 = !DILocation(line: 573, column: 6, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 573, column: 6)
!5329 = !DILocation(line: 573, column: 6, scope: !5150)
!5330 = !DILocation(line: 575, column: 25, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 573, column: 14)
!5332 = !DILocation(line: 575, column: 33, scope: !5331)
!5333 = !DILocation(line: 575, column: 4, scope: !5331)
!5334 = !DILocation(line: 574, column: 13, scope: !5331)
!5335 = !DILocation(line: 574, column: 19, scope: !5331)
!5336 = !DILocation(line: 574, column: 3, scope: !5331)
!5337 = !DILocation(line: 574, column: 32, scope: !5331)
!5338 = !DILocation(line: 576, column: 2, scope: !5331)
!5339 = !DILocation(line: 583, column: 2, scope: !5150)
!5340 = !DILocation(line: 583, column: 9, scope: !5150)
!5341 = !DILocation(line: 584, column: 23, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 583, column: 56)
!5343 = !DILocation(line: 584, column: 29, scope: !5342)
!5344 = !DILocation(line: 584, column: 35, scope: !5342)
!5345 = !DILocation(line: 584, column: 46, scope: !5342)
!5346 = !DILocation(line: 584, column: 51, scope: !5342)
!5347 = !DILocation(line: 585, column: 9, scope: !5342)
!5348 = !DILocation(line: 584, column: 9, scope: !5342)
!5349 = !DILocation(line: 584, column: 7, scope: !5342)
!5350 = !DILocation(line: 587, column: 7, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 587, column: 7)
!5352 = !DILocation(line: 587, column: 11, scope: !5351)
!5353 = !DILocation(line: 587, column: 15, scope: !5351)
!5354 = !DILocation(line: 587, column: 20, scope: !5351)
!5355 = !DILocation(line: 587, column: 7, scope: !5342)
!5356 = !DILocation(line: 588, column: 4, scope: !5351)
!5357 = !DILocation(line: 590, column: 3, scope: !5342)
!5358 = distinct !{!5358, !5339, !5359, !4682, !4610}
!5359 = !DILocation(line: 591, column: 2, scope: !5150)
!5360 = !DILocation(line: 592, column: 6, scope: !5150)
!5361 = !DILocation(line: 592, column: 2, scope: !5150)
!5362 = !DILocation(line: 593, column: 1, scope: !5150)
!5363 = !DILocation(line: 594, column: 50, scope: !5150)
!5364 = !DILocation(line: 594, column: 2, scope: !5150)
!5365 = !DILocation(line: 596, column: 9, scope: !5150)
!5366 = !DILocation(line: 596, column: 2, scope: !5150)
!5367 = !DILocation(line: 597, column: 1, scope: !5150)
!5368 = !DISubprogram(name: "release_dentry_name_snapshot", scope: !184, file: !184, line: 600, type: !5369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{null, !5149}
!5371 = !DISubprogram(name: "dput", scope: !184, file: !184, line: 368, type: !3164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5372 = distinct !DISubprogram(name: "fsnotify_data_sb", scope: !189, file: !189, line: 340, type: !5373, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5375)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!1520, !950, !43}
!5375 = !{!5376, !5377}
!5376 = !DILocalVariable(name: "data", arg: 1, scope: !5372, file: !189, line: 340, type: !950)
!5377 = !DILocalVariable(name: "data_type", arg: 2, scope: !5372, file: !189, line: 341, type: !43)
!5378 = !DILocation(line: 340, column: 64, scope: !5372)
!5379 = !DILocation(line: 341, column: 14, scope: !5372)
!5380 = !DILocation(line: 343, column: 10, scope: !5372)
!5381 = !DILocation(line: 343, column: 2, scope: !5372)
!5382 = !DILocation(line: 345, column: 27, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5372, file: !189, line: 343, column: 21)
!5384 = !DILocation(line: 345, column: 34, scope: !5383)
!5385 = !DILocation(line: 345, column: 3, scope: !5383)
!5386 = !DILocation(line: 347, column: 28, scope: !5383)
!5387 = !DILocation(line: 347, column: 35, scope: !5383)
!5388 = !DILocation(line: 347, column: 3, scope: !5383)
!5389 = !DILocation(line: 349, column: 32, scope: !5383)
!5390 = !DILocation(line: 349, column: 39, scope: !5383)
!5391 = !DILocation(line: 349, column: 47, scope: !5383)
!5392 = !DILocation(line: 349, column: 3, scope: !5383)
!5393 = !DILocation(line: 351, column: 38, scope: !5383)
!5394 = !DILocation(line: 351, column: 45, scope: !5383)
!5395 = !DILocation(line: 351, column: 3, scope: !5383)
!5396 = !DILocation(line: 353, column: 3, scope: !5383)
!5397 = !DILocation(line: 355, column: 1, scope: !5372)
!5398 = distinct !DISubprogram(name: "fsnotify_data_dentry", scope: !189, file: !189, line: 316, type: !5399, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5401)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!210, !950, !43}
!5401 = !{!5402, !5403}
!5402 = !DILocalVariable(name: "data", arg: 1, scope: !5398, file: !189, line: 316, type: !950)
!5403 = !DILocalVariable(name: "data_type", arg: 2, scope: !5398, file: !189, line: 316, type: !43)
!5404 = !DILocation(line: 316, column: 63, scope: !5398)
!5405 = !DILocation(line: 316, column: 73, scope: !5398)
!5406 = !DILocation(line: 318, column: 10, scope: !5398)
!5407 = !DILocation(line: 318, column: 2, scope: !5398)
!5408 = !DILocation(line: 321, column: 27, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5398, file: !189, line: 318, column: 21)
!5410 = !DILocation(line: 321, column: 3, scope: !5409)
!5411 = !DILocation(line: 323, column: 32, scope: !5409)
!5412 = !DILocation(line: 323, column: 39, scope: !5409)
!5413 = !DILocation(line: 323, column: 3, scope: !5409)
!5414 = !DILocation(line: 325, column: 3, scope: !5409)
!5415 = !DILocation(line: 327, column: 1, scope: !5398)
!5416 = distinct !DISubprogram(name: "srcu_read_lock", scope: !4506, file: !4506, line: 209, type: !5417, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5419)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!43, !2574}
!5419 = !{!5420, !5421}
!5420 = !DILocalVariable(name: "ssp", arg: 1, scope: !5416, file: !4506, line: 209, type: !2574)
!5421 = !DILocalVariable(name: "retval", scope: !5416, file: !4506, line: 211, type: !43)
!5422 = !DILocation(line: 209, column: 54, scope: !5416)
!5423 = !DILocation(line: 211, column: 2, scope: !5416)
!5424 = !DILocation(line: 211, column: 6, scope: !5416)
!5425 = !DILocation(line: 213, column: 24, scope: !5416)
!5426 = !DILocation(line: 213, column: 2, scope: !5416)
!5427 = !DILocation(line: 214, column: 28, scope: !5416)
!5428 = !DILocation(line: 214, column: 11, scope: !5416)
!5429 = !DILocation(line: 214, column: 9, scope: !5416)
!5430 = !DILocation(line: 215, column: 2, scope: !5416)
!5431 = !DILocation(line: 215, column: 2, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5416, file: !4506, line: 215, column: 2)
!5433 = !DILocation(line: 216, column: 9, scope: !5416)
!5434 = !DILocation(line: 217, column: 1, scope: !5416)
!5435 = !DILocation(line: 216, column: 2, scope: !5416)
!5436 = distinct !DISubprogram(name: "fsnotify_first_mark", scope: !3, file: !3, line: 382, type: !5437, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5440)
!5437 = !DISubroutineType(types: !5438)
!5438 = !{!4393, !5439}
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!5440 = !{!5441, !5442, !5443, !5444, !5446, !5449, !5451}
!5441 = !DILocalVariable(name: "connp", arg: 1, scope: !5436, file: !3, line: 382, type: !5439)
!5442 = !DILocalVariable(name: "conn", scope: !5436, file: !3, line: 384, type: !3097)
!5443 = !DILocalVariable(name: "node", scope: !5436, file: !3, line: 385, type: !483)
!5444 = !DILocalVariable(name: "__UNIQUE_ID_rcu300", scope: !5445, file: !3, line: 387, type: !3097)
!5445 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 387, column: 9)
!5446 = !DILocalVariable(name: "__UNIQUE_ID_rcu302", scope: !5447, file: !3, line: 389, type: !483)
!5447 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 389, column: 10)
!5448 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 388, column: 6)
!5449 = !DILocalVariable(name: "____ptr", scope: !5450, file: !3, line: 391, type: !483)
!5450 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 391, column: 9)
!5451 = !DILocalVariable(name: "__mptr", scope: !5452, file: !3, line: 391, type: !41)
!5452 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 391, column: 9)
!5453 = !DILocation(line: 382, column: 83, scope: !5436)
!5454 = !DILocation(line: 384, column: 2, scope: !5436)
!5455 = !DILocation(line: 384, column: 34, scope: !5436)
!5456 = !DILocation(line: 385, column: 2, scope: !5436)
!5457 = !DILocation(line: 385, column: 21, scope: !5436)
!5458 = !DILocation(line: 387, column: 9, scope: !5445)
!5459 = !DILocation(line: 387, column: 9, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 387, column: 9)
!5461 = !DILocation(line: 387, column: 9, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 387, column: 9)
!5463 = !DILocation(line: 387, column: 9, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 387, column: 9)
!5465 = !DILocation(line: 387, column: 9, scope: !5436)
!5466 = !DILocation(line: 387, column: 7, scope: !5436)
!5467 = !DILocation(line: 388, column: 6, scope: !5448)
!5468 = !DILocation(line: 388, column: 6, scope: !5436)
!5469 = !DILocation(line: 389, column: 10, scope: !5447)
!5470 = !DILocation(line: 389, column: 10, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 389, column: 10)
!5472 = !DILocation(line: 389, column: 10, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 389, column: 10)
!5474 = !DILocation(line: 389, column: 10, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 389, column: 10)
!5476 = !DILocation(line: 389, column: 10, scope: !5448)
!5477 = !DILocation(line: 389, column: 8, scope: !5448)
!5478 = !DILocation(line: 389, column: 3, scope: !5448)
!5479 = !DILocation(line: 391, column: 9, scope: !5450)
!5480 = !DILocation(line: 391, column: 9, scope: !5452)
!5481 = !DILocation(line: 391, column: 9, scope: !5436)
!5482 = !DILocation(line: 392, column: 1, scope: !5436)
!5483 = !DILocation(line: 391, column: 2, scope: !5436)
!5484 = distinct !DISubprogram(name: "fsnotify_iter_select_report_types", scope: !3, file: !3, line: 411, type: !5485, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5487)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!313, !4411}
!5487 = !{!5488, !5489, !5490, !5491}
!5488 = !DILocalVariable(name: "iter_info", arg: 1, scope: !5484, file: !3, line: 412, type: !4411)
!5489 = !DILocalVariable(name: "max_prio_group", scope: !5484, file: !3, line: 414, type: !4399)
!5490 = !DILocalVariable(name: "mark", scope: !5484, file: !3, line: 415, type: !4393)
!5491 = !DILocalVariable(name: "type", scope: !5484, file: !3, line: 416, type: !43)
!5492 = !DILocation(line: 412, column: 30, scope: !5484)
!5493 = !DILocation(line: 414, column: 2, scope: !5484)
!5494 = !DILocation(line: 414, column: 25, scope: !5484)
!5495 = !DILocation(line: 415, column: 2, scope: !5484)
!5496 = !DILocation(line: 415, column: 24, scope: !5484)
!5497 = !DILocation(line: 416, column: 2, scope: !5484)
!5498 = !DILocation(line: 416, column: 6, scope: !5484)
!5499 = !DILocation(line: 419, column: 2, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 419, column: 2)
!5501 = !DILocation(line: 419, column: 2, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 419, column: 2)
!5503 = !DILocation(line: 420, column: 10, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 419, column: 35)
!5505 = !DILocation(line: 420, column: 21, scope: !5504)
!5506 = !DILocation(line: 420, column: 27, scope: !5504)
!5507 = !DILocation(line: 420, column: 8, scope: !5504)
!5508 = !DILocation(line: 421, column: 7, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 421, column: 7)
!5510 = !DILocation(line: 421, column: 12, scope: !5509)
!5511 = !DILocation(line: 422, column: 31, scope: !5509)
!5512 = !DILocation(line: 422, column: 47, scope: !5509)
!5513 = !DILocation(line: 422, column: 53, scope: !5509)
!5514 = !DILocation(line: 422, column: 7, scope: !5509)
!5515 = !DILocation(line: 422, column: 60, scope: !5509)
!5516 = !DILocation(line: 421, column: 7, scope: !5504)
!5517 = !DILocation(line: 423, column: 21, scope: !5509)
!5518 = !DILocation(line: 423, column: 27, scope: !5509)
!5519 = !DILocation(line: 423, column: 19, scope: !5509)
!5520 = !DILocation(line: 423, column: 4, scope: !5509)
!5521 = !DILocation(line: 424, column: 2, scope: !5504)
!5522 = distinct !{!5522, !5499, !5523, !4682, !4610}
!5523 = !DILocation(line: 424, column: 2, scope: !5500)
!5524 = !DILocation(line: 426, column: 7, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 426, column: 6)
!5526 = !DILocation(line: 426, column: 6, scope: !5484)
!5527 = !DILocation(line: 427, column: 3, scope: !5525)
!5528 = !DILocation(line: 430, column: 29, scope: !5484)
!5529 = !DILocation(line: 430, column: 2, scope: !5484)
!5530 = !DILocation(line: 430, column: 13, scope: !5484)
!5531 = !DILocation(line: 430, column: 27, scope: !5484)
!5532 = !DILocation(line: 431, column: 2, scope: !5484)
!5533 = !DILocation(line: 431, column: 13, scope: !5484)
!5534 = !DILocation(line: 431, column: 25, scope: !5484)
!5535 = !DILocation(line: 432, column: 2, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 432, column: 2)
!5537 = !DILocation(line: 432, column: 2, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 432, column: 2)
!5539 = !DILocation(line: 433, column: 10, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 432, column: 35)
!5541 = !DILocation(line: 433, column: 21, scope: !5540)
!5542 = !DILocation(line: 433, column: 27, scope: !5540)
!5543 = !DILocation(line: 433, column: 8, scope: !5540)
!5544 = !DILocation(line: 434, column: 7, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 434, column: 7)
!5546 = !DILocation(line: 434, column: 12, scope: !5545)
!5547 = !DILocation(line: 434, column: 15, scope: !5545)
!5548 = !DILocation(line: 434, column: 21, scope: !5545)
!5549 = !DILocation(line: 434, column: 30, scope: !5545)
!5550 = !DILocation(line: 434, column: 41, scope: !5545)
!5551 = !DILocation(line: 434, column: 27, scope: !5545)
!5552 = !DILocation(line: 434, column: 7, scope: !5540)
!5553 = !DILocation(line: 441, column: 8, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 441, column: 8)
!5555 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 434, column: 56)
!5556 = !DILocation(line: 441, column: 13, scope: !5554)
!5557 = !DILocation(line: 441, column: 42, scope: !5554)
!5558 = !DILocation(line: 442, column: 10, scope: !5554)
!5559 = !DILocation(line: 442, column: 16, scope: !5554)
!5560 = !DILocation(line: 442, column: 21, scope: !5554)
!5561 = !DILocation(line: 442, column: 42, scope: !5554)
!5562 = !DILocation(line: 443, column: 31, scope: !5554)
!5563 = !DILocation(line: 443, column: 10, scope: !5554)
!5564 = !DILocation(line: 443, column: 37, scope: !5554)
!5565 = !DILocation(line: 441, column: 8, scope: !5555)
!5566 = !DILocation(line: 444, column: 5, scope: !5554)
!5567 = !DILocation(line: 446, column: 34, scope: !5555)
!5568 = !DILocation(line: 446, column: 45, scope: !5555)
!5569 = !DILocation(line: 446, column: 4, scope: !5555)
!5570 = !DILocation(line: 447, column: 3, scope: !5555)
!5571 = !DILocation(line: 448, column: 2, scope: !5540)
!5572 = distinct !{!5572, !5535, !5573, !4682, !4610}
!5573 = !DILocation(line: 448, column: 2, scope: !5536)
!5574 = !DILocation(line: 450, column: 2, scope: !5484)
!5575 = !DILocation(line: 451, column: 1, scope: !5484)
!5576 = distinct !DISubprogram(name: "send_to_group", scope: !3, file: !3, line: 334, type: !5577, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5579)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!43, !244, !950, !43, !254, !3152, !243, !4411}
!5579 = !{!5580, !5581, !5582, !5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592, !5593}
!5580 = !DILocalVariable(name: "mask", arg: 1, scope: !5576, file: !3, line: 334, type: !244)
!5581 = !DILocalVariable(name: "data", arg: 2, scope: !5576, file: !3, line: 334, type: !950)
!5582 = !DILocalVariable(name: "data_type", arg: 3, scope: !5576, file: !3, line: 334, type: !43)
!5583 = !DILocalVariable(name: "dir", arg: 4, scope: !5576, file: !3, line: 335, type: !254)
!5584 = !DILocalVariable(name: "file_name", arg: 5, scope: !5576, file: !3, line: 335, type: !3152)
!5585 = !DILocalVariable(name: "cookie", arg: 6, scope: !5576, file: !3, line: 336, type: !243)
!5586 = !DILocalVariable(name: "iter_info", arg: 7, scope: !5576, file: !3, line: 336, type: !4411)
!5587 = !DILocalVariable(name: "group", scope: !5576, file: !3, line: 338, type: !4399)
!5588 = !DILocalVariable(name: "test_mask", scope: !5576, file: !3, line: 339, type: !244)
!5589 = !DILocalVariable(name: "marks_mask", scope: !5576, file: !3, line: 340, type: !244)
!5590 = !DILocalVariable(name: "marks_ignore_mask", scope: !5576, file: !3, line: 341, type: !244)
!5591 = !DILocalVariable(name: "is_dir", scope: !5576, file: !3, line: 342, type: !313)
!5592 = !DILocalVariable(name: "mark", scope: !5576, file: !3, line: 343, type: !4393)
!5593 = !DILocalVariable(name: "type", scope: !5576, file: !3, line: 344, type: !43)
!5594 = !DILocation(line: 334, column: 32, scope: !5576)
!5595 = !DILocation(line: 334, column: 50, scope: !5576)
!5596 = !DILocation(line: 334, column: 60, scope: !5576)
!5597 = !DILocation(line: 335, column: 19, scope: !5576)
!5598 = !DILocation(line: 335, column: 43, scope: !5576)
!5599 = !DILocation(line: 336, column: 9, scope: !5576)
!5600 = !DILocation(line: 336, column: 44, scope: !5576)
!5601 = !DILocation(line: 338, column: 2, scope: !5576)
!5602 = !DILocation(line: 338, column: 25, scope: !5576)
!5603 = !DILocation(line: 339, column: 2, scope: !5576)
!5604 = !DILocation(line: 339, column: 8, scope: !5576)
!5605 = !DILocation(line: 339, column: 21, scope: !5576)
!5606 = !DILocation(line: 339, column: 26, scope: !5576)
!5607 = !DILocation(line: 340, column: 2, scope: !5576)
!5608 = !DILocation(line: 340, column: 8, scope: !5576)
!5609 = !DILocation(line: 341, column: 2, scope: !5576)
!5610 = !DILocation(line: 341, column: 8, scope: !5576)
!5611 = !DILocation(line: 342, column: 2, scope: !5576)
!5612 = !DILocation(line: 342, column: 7, scope: !5576)
!5613 = !DILocation(line: 342, column: 16, scope: !5576)
!5614 = !DILocation(line: 342, column: 21, scope: !5576)
!5615 = !DILocation(line: 343, column: 2, scope: !5576)
!5616 = !DILocation(line: 343, column: 24, scope: !5576)
!5617 = !DILocation(line: 344, column: 2, scope: !5576)
!5618 = !DILocation(line: 344, column: 6, scope: !5576)
!5619 = !DILocation(line: 346, column: 7, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 346, column: 6)
!5621 = !DILocation(line: 346, column: 18, scope: !5620)
!5622 = !DILocation(line: 346, column: 6, scope: !5576)
!5623 = !DILocation(line: 347, column: 3, scope: !5620)
!5624 = !DILocation(line: 350, column: 6, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 350, column: 6)
!5626 = !DILocation(line: 350, column: 11, scope: !5625)
!5627 = !DILocation(line: 350, column: 6, scope: !5576)
!5628 = !DILocation(line: 351, column: 3, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 351, column: 3)
!5630 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 350, column: 24)
!5631 = !DILocation(line: 351, column: 3, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 351, column: 3)
!5633 = !DILocation(line: 352, column: 10, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 352, column: 8)
!5635 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 351, column: 58)
!5636 = !DILocation(line: 352, column: 16, scope: !5634)
!5637 = !DILocation(line: 352, column: 22, scope: !5634)
!5638 = !DILocation(line: 352, column: 8, scope: !5635)
!5639 = !DILocation(line: 354, column: 5, scope: !5634)
!5640 = !DILocation(line: 354, column: 11, scope: !5634)
!5641 = !DILocation(line: 354, column: 23, scope: !5634)
!5642 = !DILocation(line: 355, column: 3, scope: !5635)
!5643 = distinct !{!5643, !5628, !5644, !4682, !4610}
!5644 = !DILocation(line: 355, column: 3, scope: !5629)
!5645 = !DILocation(line: 356, column: 2, scope: !5630)
!5646 = !DILocation(line: 359, column: 2, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 359, column: 2)
!5648 = !DILocation(line: 359, column: 2, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 359, column: 2)
!5650 = !DILocation(line: 360, column: 11, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 359, column: 57)
!5652 = !DILocation(line: 360, column: 17, scope: !5651)
!5653 = !DILocation(line: 360, column: 9, scope: !5651)
!5654 = !DILocation(line: 361, column: 17, scope: !5651)
!5655 = !DILocation(line: 361, column: 23, scope: !5651)
!5656 = !DILocation(line: 361, column: 14, scope: !5651)
!5657 = !DILocation(line: 363, column: 35, scope: !5651)
!5658 = !DILocation(line: 363, column: 41, scope: !5651)
!5659 = !DILocation(line: 363, column: 49, scope: !5651)
!5660 = !DILocation(line: 363, column: 4, scope: !5651)
!5661 = !DILocation(line: 362, column: 21, scope: !5651)
!5662 = !DILocation(line: 364, column: 2, scope: !5651)
!5663 = distinct !{!5663, !5646, !5664, !4682, !4610}
!5664 = !DILocation(line: 364, column: 2, scope: !5647)
!5665 = !DILocation(line: 366, column: 2, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 366, column: 2)
!5667 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 366, column: 2)
!5668 = !DILocation(line: 366, column: 2, scope: !5667)
!5669 = !DILocation(line: 370, column: 8, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 370, column: 6)
!5671 = !DILocation(line: 370, column: 20, scope: !5670)
!5672 = !DILocation(line: 370, column: 18, scope: !5670)
!5673 = !DILocation(line: 370, column: 34, scope: !5670)
!5674 = !DILocation(line: 370, column: 33, scope: !5670)
!5675 = !DILocation(line: 370, column: 31, scope: !5670)
!5676 = !DILocation(line: 370, column: 6, scope: !5576)
!5677 = !DILocation(line: 371, column: 3, scope: !5670)
!5678 = !DILocation(line: 373, column: 6, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 373, column: 6)
!5680 = !DILocation(line: 373, column: 13, scope: !5679)
!5681 = !DILocation(line: 373, column: 18, scope: !5679)
!5682 = !DILocation(line: 373, column: 6, scope: !5576)
!5683 = !DILocation(line: 374, column: 10, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 373, column: 32)
!5685 = !DILocation(line: 374, column: 17, scope: !5684)
!5686 = !DILocation(line: 374, column: 22, scope: !5684)
!5687 = !DILocation(line: 374, column: 35, scope: !5684)
!5688 = !DILocation(line: 374, column: 42, scope: !5684)
!5689 = !DILocation(line: 374, column: 48, scope: !5684)
!5690 = !DILocation(line: 374, column: 54, scope: !5684)
!5691 = !DILocation(line: 374, column: 65, scope: !5684)
!5692 = !DILocation(line: 375, column: 7, scope: !5684)
!5693 = !DILocation(line: 375, column: 18, scope: !5684)
!5694 = !DILocation(line: 375, column: 26, scope: !5684)
!5695 = !DILocation(line: 374, column: 3, scope: !5684)
!5696 = !DILocation(line: 378, column: 31, scope: !5576)
!5697 = !DILocation(line: 378, column: 38, scope: !5576)
!5698 = !DILocation(line: 378, column: 44, scope: !5576)
!5699 = !DILocation(line: 378, column: 50, scope: !5576)
!5700 = !DILocation(line: 378, column: 61, scope: !5576)
!5701 = !DILocation(line: 379, column: 10, scope: !5576)
!5702 = !DILocation(line: 379, column: 21, scope: !5576)
!5703 = !DILocation(line: 379, column: 29, scope: !5576)
!5704 = !DILocation(line: 378, column: 9, scope: !5576)
!5705 = !DILocation(line: 378, column: 2, scope: !5576)
!5706 = !DILocation(line: 380, column: 1, scope: !5576)
!5707 = distinct !DISubprogram(name: "fsnotify_iter_next", scope: !3, file: !3, line: 457, type: !5708, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5710)
!5708 = !DISubroutineType(types: !5709)
!5709 = !{null, !4411}
!5710 = !{!5711, !5712, !5713}
!5711 = !DILocalVariable(name: "iter_info", arg: 1, scope: !5707, file: !3, line: 457, type: !4411)
!5712 = !DILocalVariable(name: "mark", scope: !5707, file: !3, line: 459, type: !4393)
!5713 = !DILocalVariable(name: "type", scope: !5707, file: !3, line: 460, type: !43)
!5714 = !DILocation(line: 457, column: 59, scope: !5707)
!5715 = !DILocation(line: 459, column: 2, scope: !5707)
!5716 = !DILocation(line: 459, column: 24, scope: !5707)
!5717 = !DILocation(line: 460, column: 2, scope: !5707)
!5718 = !DILocation(line: 460, column: 6, scope: !5707)
!5719 = !DILocation(line: 467, column: 2, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 467, column: 2)
!5721 = !DILocation(line: 467, column: 2, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 467, column: 2)
!5723 = !DILocation(line: 468, column: 10, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 467, column: 35)
!5725 = !DILocation(line: 468, column: 21, scope: !5724)
!5726 = !DILocation(line: 468, column: 27, scope: !5724)
!5727 = !DILocation(line: 468, column: 8, scope: !5724)
!5728 = !DILocation(line: 469, column: 7, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 469, column: 7)
!5730 = !DILocation(line: 469, column: 12, scope: !5729)
!5731 = !DILocation(line: 469, column: 15, scope: !5729)
!5732 = !DILocation(line: 469, column: 21, scope: !5729)
!5733 = !DILocation(line: 469, column: 30, scope: !5729)
!5734 = !DILocation(line: 469, column: 41, scope: !5729)
!5735 = !DILocation(line: 469, column: 27, scope: !5729)
!5736 = !DILocation(line: 469, column: 7, scope: !5724)
!5737 = !DILocation(line: 471, column: 24, scope: !5729)
!5738 = !DILocation(line: 471, column: 35, scope: !5729)
!5739 = !DILocation(line: 471, column: 41, scope: !5729)
!5740 = !DILocation(line: 471, column: 5, scope: !5729)
!5741 = !DILocation(line: 470, column: 4, scope: !5729)
!5742 = !DILocation(line: 470, column: 15, scope: !5729)
!5743 = !DILocation(line: 470, column: 21, scope: !5729)
!5744 = !DILocation(line: 470, column: 27, scope: !5729)
!5745 = !DILocation(line: 472, column: 2, scope: !5724)
!5746 = distinct !{!5746, !5719, !5747, !4682, !4610}
!5747 = !DILocation(line: 472, column: 2, scope: !5720)
!5748 = !DILocation(line: 473, column: 1, scope: !5707)
!5749 = distinct !DISubprogram(name: "srcu_read_unlock", scope: !4506, file: !4506, line: 282, type: !5750, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5752)
!5750 = !DISubroutineType(types: !5751)
!5751 = !{null, !2574, !43}
!5752 = !{!5753, !5754, !5755, !5757}
!5753 = !DILocalVariable(name: "ssp", arg: 1, scope: !5749, file: !4506, line: 282, type: !2574)
!5754 = !DILocalVariable(name: "idx", arg: 2, scope: !5749, file: !4506, line: 282, type: !43)
!5755 = !DILocalVariable(name: "__ret_warn_on", scope: !5756, file: !4506, line: 285, type: !43)
!5756 = distinct !DILexicalBlock(scope: !5749, file: !4506, line: 285, column: 2)
!5757 = !DILocalVariable(name: "__flags", scope: !5758, file: !4506, line: 285, type: !43)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !4506, line: 285, column: 2)
!5759 = distinct !DILexicalBlock(scope: !5756, file: !4506, line: 285, column: 2)
!5760 = !DILocation(line: 282, column: 57, scope: !5749)
!5761 = !DILocation(line: 282, column: 66, scope: !5749)
!5762 = !DILocation(line: 285, column: 2, scope: !5756)
!5763 = !DILocation(line: 285, column: 2, scope: !5759)
!5764 = !DILocation(line: 285, column: 2, scope: !5758)
!5765 = !DILocation(line: 285, column: 2, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5758, file: !4506, line: 285, column: 2)
!5767 = !DILocation(line: 285, column: 2, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5758, file: !4506, line: 285, column: 2)
!5769 = !{i64 2151088562, i64 2151088591, i64 2151088637, i64 2151088695, i64 2151088749, i64 2151088803, i64 2151088858, i64 2151088889, i64 2151089197, i64 2151089203, i64 2151089250, i64 2151089273, i64 2151089299}
!5770 = !DILocation(line: 285, column: 2, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5758, file: !4506, line: 285, column: 2)
!5772 = !DILocation(line: 285, column: 2, scope: !5749)
!5773 = !DILocation(line: 286, column: 24, scope: !5749)
!5774 = !DILocation(line: 286, column: 2, scope: !5749)
!5775 = !DILocation(line: 287, column: 2, scope: !5749)
!5776 = !DILocation(line: 287, column: 2, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5749, file: !4506, line: 287, column: 2)
!5778 = !DILocation(line: 288, column: 21, scope: !5749)
!5779 = !DILocation(line: 288, column: 26, scope: !5749)
!5780 = !DILocation(line: 288, column: 2, scope: !5749)
!5781 = !DILocation(line: 289, column: 1, scope: !5749)
!5782 = distinct !DISubprogram(name: "__initstub__kmod_fsnotify__308_615_fsnotify_init1", scope: !3, file: !3, line: 615, type: !2479, scopeLine: 615, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5783 = !DILocation(line: 615, column: 1, scope: !5782)
!5784 = distinct !DISubprogram(name: "fsnotify_init", scope: !3, file: !3, line: 600, type: !2479, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5785)
!5785 = !{!5786}
!5786 = !DILocalVariable(name: "ret", scope: !5784, file: !3, line: 602, type: !43)
!5787 = !DILocation(line: 602, column: 2, scope: !5784)
!5788 = !DILocation(line: 602, column: 6, scope: !5784)
!5789 = !DILocation(line: 604, column: 2, scope: !5784)
!5790 = !DILocation(line: 604, column: 2, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 604, column: 2)
!5792 = !DILocation(line: 606, column: 8, scope: !5784)
!5793 = !DILocation(line: 606, column: 6, scope: !5784)
!5794 = !DILocation(line: 607, column: 6, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 607, column: 6)
!5796 = !DILocation(line: 607, column: 6, scope: !5784)
!5797 = !DILocation(line: 608, column: 3, scope: !5795)
!5798 = !DILocation(line: 610, column: 35, scope: !5784)
!5799 = !DILocation(line: 610, column: 33, scope: !5784)
!5800 = !DILocation(line: 614, column: 1, scope: !5784)
!5801 = !DILocation(line: 613, column: 2, scope: !5784)
!5802 = !DISubprogram(name: "fsnotify_destroy_marks", scope: !4531, file: !4531, line: 56, type: !5803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5803 = !DISubroutineType(types: !5804)
!5804 = !{null, !3113}
!5805 = distinct !DISubprogram(name: "atomic_read", scope: !4702, file: !4702, line: 30, type: !5806, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5810)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!43, !5808}
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!5810 = !{!5811}
!5811 = !DILocalVariable(name: "v", arg: 1, scope: !5805, file: !4702, line: 30, type: !5808)
!5812 = !DILocation(line: 30, column: 29, scope: !5805)
!5813 = !DILocation(line: 32, column: 25, scope: !5805)
!5814 = !DILocation(line: 32, column: 2, scope: !5805)
!5815 = !DILocation(line: 33, column: 25, scope: !5805)
!5816 = !DILocation(line: 33, column: 9, scope: !5805)
!5817 = !DILocation(line: 33, column: 2, scope: !5805)
!5818 = !DISubprogram(name: "__iget", scope: !173, file: !173, line: 2927, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5819 = !DISubprogram(name: "iput", scope: !173, file: !173, line: 2459, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5820 = distinct !DISubprogram(name: "fsnotify_inode", scope: !5821, file: !5821, line: 45, type: !5822, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5824)
!5821 = !DIFile(filename: "./include/linux/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41bc5e92750cfb13d8322458d84e0ec0")
!5822 = !DISubroutineType(types: !5823)
!5823 = !{null, !254, !244}
!5824 = !{!5825, !5826}
!5825 = !DILocalVariable(name: "inode", arg: 1, scope: !5820, file: !5821, line: 45, type: !254)
!5826 = !DILocalVariable(name: "mask", arg: 2, scope: !5820, file: !5821, line: 45, type: !244)
!5827 = !DILocation(line: 45, column: 49, scope: !5820)
!5828 = !DILocation(line: 45, column: 62, scope: !5820)
!5829 = !DILocation(line: 47, column: 24, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5820, file: !5821, line: 47, column: 6)
!5831 = !DILocation(line: 47, column: 31, scope: !5830)
!5832 = !DILocation(line: 47, column: 37, scope: !5830)
!5833 = !DILocation(line: 47, column: 6, scope: !5830)
!5834 = !DILocation(line: 47, column: 60, scope: !5830)
!5835 = !DILocation(line: 47, column: 6, scope: !5820)
!5836 = !DILocation(line: 48, column: 3, scope: !5830)
!5837 = !DILocation(line: 50, column: 6, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5820, file: !5821, line: 50, column: 6)
!5839 = !DILocation(line: 50, column: 6, scope: !5820)
!5840 = !DILocation(line: 51, column: 8, scope: !5838)
!5841 = !DILocation(line: 51, column: 3, scope: !5838)
!5842 = !DILocation(line: 53, column: 11, scope: !5820)
!5843 = !DILocation(line: 53, column: 17, scope: !5820)
!5844 = !DILocation(line: 53, column: 58, scope: !5820)
!5845 = !DILocation(line: 53, column: 2, scope: !5820)
!5846 = !DILocation(line: 54, column: 1, scope: !5820)
!5847 = distinct !DISubprogram(name: "fsnotify_inode_delete", scope: !5821, file: !5821, line: 182, type: !2736, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5848)
!5848 = !{!5849}
!5849 = !DILocalVariable(name: "inode", arg: 1, scope: !5847, file: !5821, line: 182, type: !254)
!5850 = !DILocation(line: 182, column: 56, scope: !5847)
!5851 = !DILocation(line: 184, column: 26, scope: !5847)
!5852 = !DILocation(line: 184, column: 2, scope: !5847)
!5853 = !DILocation(line: 185, column: 1, scope: !5847)
!5854 = distinct !DISubprogram(name: "__might_resched", scope: !4503, file: !4503, line: 184, type: !5855, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5857)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{null, !37, !43, !7}
!5857 = !{!5858, !5859, !5860}
!5858 = !DILocalVariable(name: "file", arg: 1, scope: !5854, file: !4503, line: 184, type: !37)
!5859 = !DILocalVariable(name: "line", arg: 2, scope: !5854, file: !4503, line: 184, type: !43)
!5860 = !DILocalVariable(name: "offsets", arg: 3, scope: !5854, file: !4503, line: 185, type: !7)
!5861 = !DILocation(line: 184, column: 50, scope: !5854)
!5862 = !DILocation(line: 184, column: 60, scope: !5854)
!5863 = !DILocation(line: 185, column: 23, scope: !5854)
!5864 = !DILocation(line: 185, column: 34, scope: !5854)
!5865 = !DILocation(line: 2104, column: 9, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !4499, file: !523, line: 2104, column: 9)
!5867 = !DILocation(line: 2104, column: 9, scope: !4499)
!5868 = !DILocation(line: 2104, column: 2, scope: !4499)
!5869 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5870, file: !5870, line: 66, type: !5871, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5876)
!5870 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5871 = !DISubroutineType(types: !5872)
!5872 = !{null, !5873, !56}
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5874, size: 64)
!5874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5875)
!5875 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5876 = !{!5877, !5878}
!5877 = !DILocalVariable(name: "v", arg: 1, scope: !5869, file: !5870, line: 66, type: !5873)
!5878 = !DILocalVariable(name: "size", arg: 2, scope: !5869, file: !5870, line: 66, type: !56)
!5879 = !DILocation(line: 66, column: 73, scope: !5869)
!5880 = !DILocation(line: 66, column: 83, scope: !5869)
!5881 = !DILocation(line: 68, column: 19, scope: !5869)
!5882 = !DILocation(line: 68, column: 22, scope: !5869)
!5883 = !DILocation(line: 68, column: 2, scope: !5869)
!5884 = !DILocation(line: 69, column: 2, scope: !5869)
!5885 = !DILocation(line: 70, column: 1, scope: !5869)
!5886 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5887, file: !5887, line: 442, type: !5806, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5888)
!5887 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5888 = !{!5889}
!5889 = !DILocalVariable(name: "v", arg: 1, scope: !5886, file: !5887, line: 442, type: !5808)
!5890 = !DILocation(line: 442, column: 33, scope: !5886)
!5891 = !DILocation(line: 444, column: 26, scope: !5886)
!5892 = !DILocation(line: 444, column: 9, scope: !5886)
!5893 = !DILocation(line: 444, column: 2, scope: !5886)
!5894 = distinct !DISubprogram(name: "kasan_check_read", scope: !5895, file: !5895, line: 40, type: !5896, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5898)
!5895 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!313, !5873, !7}
!5898 = !{!5899, !5900}
!5899 = !DILocalVariable(name: "p", arg: 1, scope: !5894, file: !5895, line: 40, type: !5873)
!5900 = !DILocalVariable(name: "size", arg: 2, scope: !5894, file: !5895, line: 40, type: !7)
!5901 = !DILocation(line: 40, column: 58, scope: !5894)
!5902 = !DILocation(line: 40, column: 74, scope: !5894)
!5903 = !DILocation(line: 42, column: 2, scope: !5894)
!5904 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5905, file: !5905, line: 229, type: !5906, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5908)
!5905 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5906 = !DISubroutineType(types: !5907)
!5907 = !{null, !5873, !56, !43}
!5908 = !{!5909, !5910, !5911}
!5909 = !DILocalVariable(name: "ptr", arg: 1, scope: !5904, file: !5905, line: 229, type: !5873)
!5910 = !DILocalVariable(name: "size", arg: 2, scope: !5904, file: !5905, line: 229, type: !56)
!5911 = !DILocalVariable(name: "type", arg: 3, scope: !5904, file: !5905, line: 230, type: !43)
!5912 = !DILocation(line: 229, column: 60, scope: !5904)
!5913 = !DILocation(line: 229, column: 72, scope: !5904)
!5914 = !DILocation(line: 230, column: 15, scope: !5904)
!5915 = !DILocation(line: 230, column: 23, scope: !5904)
!5916 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5917, file: !5917, line: 17, type: !5806, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5918)
!5917 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5918 = !{!5919}
!5919 = !DILocalVariable(name: "v", arg: 1, scope: !5916, file: !5917, line: 17, type: !5808)
!5920 = !DILocation(line: 17, column: 61, scope: !5916)
!5921 = !DILocation(line: 23, column: 9, scope: !5916)
!5922 = !DILocation(line: 23, column: 2, scope: !5916)
!5923 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !419, file: !419, line: 35, type: !4703, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5924)
!5924 = !{!5925}
!5925 = !DILocalVariable(name: "v", arg: 1, scope: !5923, file: !419, line: 35, type: !4705)
!5926 = !DILocation(line: 35, column: 43, scope: !5923)
!5927 = !DILocation(line: 38, column: 27, scope: !5923)
!5928 = !DILocation(line: 38, column: 9, scope: !5923)
!5929 = !DILocation(line: 38, column: 2, scope: !5923)
!5930 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !5887, file: !5887, line: 2554, type: !5931, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5935)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{!424, !5933}
!5933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5934, size: 64)
!5934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!5935 = !{!5936}
!5936 = !DILocalVariable(name: "v", arg: 1, scope: !5930, file: !5887, line: 2554, type: !5933)
!5937 = !DILocation(line: 2554, column: 37, scope: !5930)
!5938 = !DILocation(line: 2556, column: 28, scope: !5930)
!5939 = !DILocation(line: 2556, column: 9, scope: !5930)
!5940 = !DILocation(line: 2556, column: 2, scope: !5930)
!5941 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !5942, file: !5942, line: 13, type: !5931, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5943)
!5942 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5943 = !{!5944}
!5944 = !DILocalVariable(name: "v", arg: 1, scope: !5941, file: !5942, line: 13, type: !5933)
!5945 = !DILocation(line: 13, column: 65, scope: !5941)
!5946 = !DILocation(line: 15, column: 9, scope: !5941)
!5947 = !DILocation(line: 15, column: 2, scope: !5941)
!5948 = !DISubprogram(name: "_raw_spin_unlock", scope: !4815, file: !4815, line: 39, type: !4816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5949 = distinct !DISubprogram(name: "fsnotify_parent_needed_mask", scope: !189, file: !189, line: 551, type: !5950, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5952)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!244, !244}
!5952 = !{!5953}
!5953 = !DILocalVariable(name: "mask", arg: 1, scope: !5949, file: !189, line: 551, type: !244)
!5954 = !DILocation(line: 551, column: 55, scope: !5949)
!5955 = !DILocation(line: 554, column: 8, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5949, file: !189, line: 554, column: 6)
!5957 = !DILocation(line: 554, column: 13, scope: !5956)
!5958 = !DILocation(line: 554, column: 6, scope: !5949)
!5959 = !DILocation(line: 555, column: 3, scope: !5956)
!5960 = !DILocation(line: 561, column: 9, scope: !5949)
!5961 = !DILocation(line: 561, column: 14, scope: !5949)
!5962 = !DILocation(line: 561, column: 2, scope: !5949)
!5963 = !DILocation(line: 562, column: 1, scope: !5949)
!5964 = distinct !DISubprogram(name: "srcu_check_nmi_safety", scope: !4506, file: !4506, line: 151, type: !5965, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5967)
!5965 = !DISubroutineType(types: !5966)
!5966 = !{null, !2574, !313}
!5967 = !{!5968, !5969}
!5968 = !DILocalVariable(name: "ssp", arg: 1, scope: !5964, file: !4506, line: 151, type: !2574)
!5969 = !DILocalVariable(name: "nmi_safe", arg: 2, scope: !5964, file: !4506, line: 152, type: !313)
!5970 = !DILocation(line: 151, column: 62, scope: !5964)
!5971 = !DILocation(line: 152, column: 12, scope: !5964)
!5972 = !DILocation(line: 152, column: 24, scope: !5964)
!5973 = !DISubprogram(name: "__srcu_read_lock", scope: !4506, file: !4506, line: 57, type: !5417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5974 = !DISubprogram(name: "fsnotify_compare_groups", scope: !4531, file: !4531, line: 52, type: !5975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!43, !4399, !4399}
!5977 = distinct !DISubprogram(name: "fsnotify_ignore_mask", scope: !189, file: !189, line: 669, type: !5978, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5980)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!244, !4393}
!5980 = !{!5981, !5982}
!5981 = !DILocalVariable(name: "mark", arg: 1, scope: !5977, file: !189, line: 669, type: !4393)
!5982 = !DILocalVariable(name: "ignore_mask", scope: !5977, file: !189, line: 671, type: !244)
!5983 = !DILocation(line: 669, column: 64, scope: !5977)
!5984 = !DILocation(line: 671, column: 2, scope: !5977)
!5985 = !DILocation(line: 671, column: 8, scope: !5977)
!5986 = !DILocation(line: 671, column: 22, scope: !5977)
!5987 = !DILocation(line: 671, column: 28, scope: !5977)
!5988 = !DILocation(line: 674, column: 6, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5977, file: !189, line: 674, column: 6)
!5990 = !DILocation(line: 674, column: 12, scope: !5989)
!5991 = !DILocation(line: 674, column: 18, scope: !5989)
!5992 = !DILocation(line: 674, column: 6, scope: !5977)
!5993 = !DILocation(line: 675, column: 10, scope: !5989)
!5994 = !DILocation(line: 675, column: 3, scope: !5989)
!5995 = !DILocation(line: 682, column: 14, scope: !5977)
!5996 = !DILocation(line: 683, column: 14, scope: !5977)
!5997 = !DILocation(line: 684, column: 17, scope: !5977)
!5998 = !DILocation(line: 684, column: 23, scope: !5977)
!5999 = !DILocation(line: 684, column: 28, scope: !5977)
!6000 = !DILocation(line: 684, column: 14, scope: !5977)
!6001 = !DILocation(line: 686, column: 9, scope: !5977)
!6002 = !DILocation(line: 686, column: 2, scope: !5977)
!6003 = !DILocation(line: 687, column: 1, scope: !5977)
!6004 = distinct !DISubprogram(name: "fsnotify_iter_set_report_type", scope: !189, file: !189, line: 413, type: !6005, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6007)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !4411, !43}
!6007 = !{!6008, !6009}
!6008 = !DILocalVariable(name: "iter_info", arg: 1, scope: !6004, file: !189, line: 414, type: !4411)
!6009 = !DILocalVariable(name: "iter_type", arg: 2, scope: !6004, file: !189, line: 414, type: !43)
!6010 = !DILocation(line: 414, column: 30, scope: !6004)
!6011 = !DILocation(line: 414, column: 45, scope: !6004)
!6012 = !DILocation(line: 416, column: 35, scope: !6004)
!6013 = !DILocation(line: 416, column: 32, scope: !6004)
!6014 = !DILocation(line: 416, column: 2, scope: !6004)
!6015 = !DILocation(line: 416, column: 13, scope: !6004)
!6016 = !DILocation(line: 416, column: 25, scope: !6004)
!6017 = !DILocation(line: 417, column: 1, scope: !6004)
!6018 = distinct !DISubprogram(name: "fsnotify_iter_step", scope: !189, file: !189, line: 427, type: !6019, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6022)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{!43, !4411, !43, !6021}
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!6022 = !{!6023, !6024, !6025}
!6023 = !DILocalVariable(name: "iter", arg: 1, scope: !6018, file: !189, line: 427, type: !4411)
!6024 = !DILocalVariable(name: "type", arg: 2, scope: !6018, file: !189, line: 427, type: !43)
!6025 = !DILocalVariable(name: "markp", arg: 3, scope: !6018, file: !189, line: 428, type: !6021)
!6026 = !DILocation(line: 427, column: 65, scope: !6018)
!6027 = !DILocation(line: 427, column: 75, scope: !6018)
!6028 = !DILocation(line: 428, column: 33, scope: !6018)
!6029 = !DILocation(line: 430, column: 2, scope: !6018)
!6030 = !DILocation(line: 430, column: 9, scope: !6018)
!6031 = !DILocation(line: 430, column: 14, scope: !6018)
!6032 = !DILocation(line: 431, column: 31, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6018, file: !189, line: 430, column: 42)
!6034 = !DILocation(line: 431, column: 37, scope: !6033)
!6035 = !DILocation(line: 431, column: 12, scope: !6033)
!6036 = !DILocation(line: 431, column: 4, scope: !6033)
!6037 = !DILocation(line: 431, column: 10, scope: !6033)
!6038 = !DILocation(line: 432, column: 8, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6033, file: !189, line: 432, column: 7)
!6040 = !DILocation(line: 432, column: 7, scope: !6039)
!6041 = !DILocation(line: 432, column: 7, scope: !6033)
!6042 = !DILocation(line: 433, column: 4, scope: !6039)
!6043 = !DILocation(line: 434, column: 7, scope: !6033)
!6044 = distinct !{!6044, !6029, !6045, !4682, !4610}
!6045 = !DILocation(line: 435, column: 2, scope: !6018)
!6046 = !DILocation(line: 436, column: 9, scope: !6018)
!6047 = !DILocation(line: 436, column: 2, scope: !6018)
!6048 = distinct !DISubprogram(name: "fsnotify_effective_ignore_mask", scope: !189, file: !189, line: 718, type: !6049, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6051)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{!244, !4393, !313, !43}
!6051 = !{!6052, !6053, !6054, !6055}
!6052 = !DILocalVariable(name: "mark", arg: 1, scope: !6048, file: !189, line: 718, type: !4393)
!6053 = !DILocalVariable(name: "is_dir", arg: 2, scope: !6048, file: !189, line: 719, type: !313)
!6054 = !DILocalVariable(name: "iter_type", arg: 3, scope: !6048, file: !189, line: 719, type: !43)
!6055 = !DILocalVariable(name: "ignore_mask", scope: !6048, file: !189, line: 721, type: !244)
!6056 = !DILocation(line: 718, column: 74, scope: !6048)
!6057 = !DILocation(line: 719, column: 15, scope: !6048)
!6058 = !DILocation(line: 719, column: 27, scope: !6048)
!6059 = !DILocation(line: 721, column: 2, scope: !6048)
!6060 = !DILocation(line: 721, column: 8, scope: !6048)
!6061 = !DILocation(line: 721, column: 46, scope: !6048)
!6062 = !DILocation(line: 721, column: 22, scope: !6048)
!6063 = !DILocation(line: 723, column: 7, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6048, file: !189, line: 723, column: 6)
!6065 = !DILocation(line: 723, column: 6, scope: !6048)
!6066 = !DILocation(line: 724, column: 3, scope: !6064)
!6067 = !DILocation(line: 727, column: 7, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6048, file: !189, line: 727, column: 6)
!6069 = !DILocation(line: 727, column: 14, scope: !6068)
!6070 = !DILocation(line: 727, column: 17, scope: !6068)
!6071 = !DILocation(line: 727, column: 27, scope: !6068)
!6072 = !DILocation(line: 727, column: 6, scope: !6048)
!6073 = !DILocation(line: 728, column: 10, scope: !6068)
!6074 = !DILocation(line: 728, column: 3, scope: !6068)
!6075 = !DILocation(line: 730, column: 37, scope: !6048)
!6076 = !DILocation(line: 730, column: 16, scope: !6048)
!6077 = !DILocation(line: 730, column: 14, scope: !6048)
!6078 = !DILocation(line: 731, column: 32, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6048, file: !189, line: 731, column: 6)
!6080 = !DILocation(line: 731, column: 45, scope: !6079)
!6081 = !DILocation(line: 731, column: 53, scope: !6079)
!6082 = !DILocation(line: 731, column: 7, scope: !6079)
!6083 = !DILocation(line: 731, column: 6, scope: !6048)
!6084 = !DILocation(line: 732, column: 3, scope: !6079)
!6085 = !DILocation(line: 734, column: 9, scope: !6048)
!6086 = !DILocation(line: 734, column: 21, scope: !6048)
!6087 = !DILocation(line: 734, column: 2, scope: !6048)
!6088 = !DILocation(line: 735, column: 1, scope: !6048)
!6089 = distinct !DISubprogram(name: "fsnotify_handle_event", scope: !3, file: !3, line: 278, type: !6090, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6092)
!6090 = !DISubroutineType(types: !6091)
!6091 = !{!43, !4399, !244, !950, !43, !254, !3152, !243, !4411}
!6092 = !{!6093, !6094, !6095, !6096, !6097, !6098, !6099, !6100, !6101, !6102, !6103, !6104, !6107, !6110, !6112, !6115}
!6093 = !DILocalVariable(name: "group", arg: 1, scope: !6089, file: !3, line: 278, type: !4399)
!6094 = !DILocalVariable(name: "mask", arg: 2, scope: !6089, file: !3, line: 278, type: !244)
!6095 = !DILocalVariable(name: "data", arg: 3, scope: !6089, file: !3, line: 279, type: !950)
!6096 = !DILocalVariable(name: "data_type", arg: 4, scope: !6089, file: !3, line: 279, type: !43)
!6097 = !DILocalVariable(name: "dir", arg: 5, scope: !6089, file: !3, line: 280, type: !254)
!6098 = !DILocalVariable(name: "name", arg: 6, scope: !6089, file: !3, line: 280, type: !3152)
!6099 = !DILocalVariable(name: "cookie", arg: 7, scope: !6089, file: !3, line: 281, type: !243)
!6100 = !DILocalVariable(name: "iter_info", arg: 8, scope: !6089, file: !3, line: 281, type: !4411)
!6101 = !DILocalVariable(name: "inode_mark", scope: !6089, file: !3, line: 283, type: !4393)
!6102 = !DILocalVariable(name: "parent_mark", scope: !6089, file: !3, line: 284, type: !4393)
!6103 = !DILocalVariable(name: "ret", scope: !6089, file: !3, line: 285, type: !43)
!6104 = !DILocalVariable(name: "__ret_warn_on", scope: !6105, file: !3, line: 287, type: !43)
!6105 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 287, column: 6)
!6106 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 287, column: 6)
!6107 = !DILocalVariable(name: "__flags", scope: !6108, file: !3, line: 287, type: !43)
!6108 = distinct !DILexicalBlock(scope: !6109, file: !3, line: 287, column: 6)
!6109 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 287, column: 6)
!6110 = !DILocalVariable(name: "__ret_warn_on", scope: !6111, file: !3, line: 288, type: !43)
!6111 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 288, column: 6)
!6112 = !DILocalVariable(name: "__flags", scope: !6113, file: !3, line: 288, type: !43)
!6113 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 288, column: 6)
!6114 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 288, column: 6)
!6115 = !DILocalVariable(name: "moved", scope: !6116, file: !3, line: 297, type: !210)
!6116 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 296, column: 24)
!6117 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 296, column: 6)
!6118 = !DILocation(line: 278, column: 57, scope: !6089)
!6119 = !DILocation(line: 278, column: 70, scope: !6089)
!6120 = !DILocation(line: 279, column: 18, scope: !6089)
!6121 = !DILocation(line: 279, column: 28, scope: !6089)
!6122 = !DILocation(line: 280, column: 20, scope: !6089)
!6123 = !DILocation(line: 280, column: 44, scope: !6089)
!6124 = !DILocation(line: 281, column: 10, scope: !6089)
!6125 = !DILocation(line: 281, column: 45, scope: !6089)
!6126 = !DILocation(line: 283, column: 2, scope: !6089)
!6127 = !DILocation(line: 283, column: 24, scope: !6089)
!6128 = !DILocation(line: 283, column: 62, scope: !6089)
!6129 = !DILocation(line: 283, column: 37, scope: !6089)
!6130 = !DILocation(line: 284, column: 2, scope: !6089)
!6131 = !DILocation(line: 284, column: 24, scope: !6089)
!6132 = !DILocation(line: 284, column: 64, scope: !6089)
!6133 = !DILocation(line: 284, column: 38, scope: !6089)
!6134 = !DILocation(line: 285, column: 2, scope: !6089)
!6135 = !DILocation(line: 285, column: 6, scope: !6089)
!6136 = !DILocation(line: 287, column: 6, scope: !6105)
!6137 = !DILocation(line: 287, column: 6, scope: !6109)
!6138 = !DILocation(line: 287, column: 6, scope: !6108)
!6139 = !DILocation(line: 287, column: 6, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 287, column: 6)
!6141 = !DILocation(line: 287, column: 6, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 287, column: 6)
!6143 = !{i64 2154568836, i64 2154568865, i64 2154568911, i64 2154568969, i64 2154569023, i64 2154569077, i64 2154569132, i64 2154569163, i64 2154569471, i64 2154569477, i64 2154569524, i64 2154569547, i64 2154569573}
!6144 = !DILocation(line: 287, column: 6, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 287, column: 6)
!6146 = !DILocation(line: 287, column: 6, scope: !6106)
!6147 = !DILocation(line: 287, column: 53, scope: !6106)
!6148 = !DILocation(line: 288, column: 6, scope: !6111)
!6149 = !DILocation(line: 288, column: 6, scope: !6114)
!6150 = !DILocation(line: 288, column: 6, scope: !6113)
!6151 = !DILocation(line: 288, column: 6, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 288, column: 6)
!6153 = !DILocation(line: 288, column: 6, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 288, column: 6)
!6155 = !{i64 2154570386, i64 2154570415, i64 2154570461, i64 2154570519, i64 2154570573, i64 2154570627, i64 2154570682, i64 2154570713, i64 2154571021, i64 2154571027, i64 2154571074, i64 2154571097, i64 2154571123}
!6156 = !DILocation(line: 288, column: 6, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 288, column: 6)
!6158 = !DILocation(line: 288, column: 6, scope: !6106)
!6159 = !DILocation(line: 287, column: 6, scope: !6089)
!6160 = !DILocation(line: 289, column: 3, scope: !6106)
!6161 = !DILocation(line: 296, column: 6, scope: !6117)
!6162 = !DILocation(line: 296, column: 11, scope: !6117)
!6163 = !DILocation(line: 296, column: 6, scope: !6089)
!6164 = !DILocation(line: 297, column: 3, scope: !6116)
!6165 = !DILocation(line: 297, column: 18, scope: !6116)
!6166 = !DILocation(line: 297, column: 47, scope: !6116)
!6167 = !DILocation(line: 297, column: 53, scope: !6116)
!6168 = !DILocation(line: 297, column: 26, scope: !6116)
!6169 = !DILocation(line: 299, column: 7, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6116, file: !3, line: 299, column: 7)
!6171 = !DILocation(line: 299, column: 14, scope: !6170)
!6172 = !DILocation(line: 299, column: 21, scope: !6170)
!6173 = !DILocation(line: 299, column: 31, scope: !6170)
!6174 = !DILocation(line: 299, column: 11, scope: !6170)
!6175 = !DILocation(line: 299, column: 7, scope: !6116)
!6176 = !DILocation(line: 300, column: 4, scope: !6170)
!6177 = !DILocation(line: 301, column: 2, scope: !6117)
!6178 = !DILocation(line: 301, column: 2, scope: !6116)
!6179 = !DILocation(line: 303, column: 6, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 303, column: 6)
!6181 = !DILocation(line: 303, column: 6, scope: !6089)
!6182 = !DILocation(line: 304, column: 37, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 303, column: 19)
!6184 = !DILocation(line: 304, column: 44, scope: !6183)
!6185 = !DILocation(line: 304, column: 57, scope: !6183)
!6186 = !DILocation(line: 305, column: 9, scope: !6183)
!6187 = !DILocation(line: 305, column: 15, scope: !6183)
!6188 = !DILocation(line: 305, column: 26, scope: !6183)
!6189 = !DILocation(line: 305, column: 31, scope: !6183)
!6190 = !DILocation(line: 304, column: 9, scope: !6183)
!6191 = !DILocation(line: 304, column: 7, scope: !6183)
!6192 = !DILocation(line: 306, column: 7, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 306, column: 7)
!6194 = !DILocation(line: 306, column: 7, scope: !6183)
!6195 = !DILocation(line: 307, column: 11, scope: !6193)
!6196 = !DILocation(line: 307, column: 4, scope: !6193)
!6197 = !DILocation(line: 308, column: 2, scope: !6183)
!6198 = !DILocation(line: 310, column: 7, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 310, column: 6)
!6200 = !DILocation(line: 310, column: 6, scope: !6089)
!6201 = !DILocation(line: 311, column: 3, scope: !6199)
!6202 = !DILocation(line: 324, column: 7, scope: !6089)
!6203 = !DILocation(line: 325, column: 8, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 325, column: 6)
!6205 = !DILocation(line: 325, column: 13, scope: !6204)
!6206 = !DILocation(line: 325, column: 6, scope: !6089)
!6207 = !DILocation(line: 326, column: 7, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 325, column: 44)
!6209 = !DILocation(line: 327, column: 8, scope: !6208)
!6210 = !DILocation(line: 328, column: 2, scope: !6208)
!6211 = !DILocation(line: 330, column: 37, scope: !6089)
!6212 = !DILocation(line: 330, column: 44, scope: !6089)
!6213 = !DILocation(line: 330, column: 56, scope: !6089)
!6214 = !DILocation(line: 330, column: 62, scope: !6089)
!6215 = !DILocation(line: 330, column: 68, scope: !6089)
!6216 = !DILocation(line: 331, column: 9, scope: !6089)
!6217 = !DILocation(line: 331, column: 14, scope: !6089)
!6218 = !DILocation(line: 331, column: 20, scope: !6089)
!6219 = !DILocation(line: 330, column: 9, scope: !6089)
!6220 = !DILocation(line: 330, column: 2, scope: !6089)
!6221 = !DILocation(line: 332, column: 1, scope: !6089)
!6222 = distinct !DISubprogram(name: "fsnotify_iter_mark", scope: !189, file: !189, line: 419, type: !6223, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6225)
!6223 = !DISubroutineType(types: !6224)
!6224 = !{!4393, !4411, !43}
!6225 = !{!6226, !6227}
!6226 = !DILocalVariable(name: "iter_info", arg: 1, scope: !6222, file: !189, line: 420, type: !4411)
!6227 = !DILocalVariable(name: "iter_type", arg: 2, scope: !6222, file: !189, line: 420, type: !43)
!6228 = !DILocation(line: 420, column: 30, scope: !6222)
!6229 = !DILocation(line: 420, column: 45, scope: !6222)
!6230 = !DILocation(line: 422, column: 39, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6222, file: !189, line: 422, column: 6)
!6232 = !DILocation(line: 422, column: 50, scope: !6231)
!6233 = !DILocation(line: 422, column: 6, scope: !6231)
!6234 = !DILocation(line: 422, column: 6, scope: !6222)
!6235 = !DILocation(line: 423, column: 10, scope: !6231)
!6236 = !DILocation(line: 423, column: 21, scope: !6231)
!6237 = !DILocation(line: 423, column: 27, scope: !6231)
!6238 = !DILocation(line: 423, column: 3, scope: !6231)
!6239 = !DILocation(line: 424, column: 2, scope: !6222)
!6240 = !DILocation(line: 425, column: 1, scope: !6222)
!6241 = distinct !DISubprogram(name: "fsnotify_iter_should_report_type", scope: !189, file: !189, line: 407, type: !6242, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6244)
!6242 = !DISubroutineType(types: !6243)
!6243 = !{!313, !4411, !43}
!6244 = !{!6245, !6246}
!6245 = !DILocalVariable(name: "iter_info", arg: 1, scope: !6241, file: !189, line: 408, type: !4411)
!6246 = !DILocalVariable(name: "iter_type", arg: 2, scope: !6241, file: !189, line: 408, type: !43)
!6247 = !DILocation(line: 408, column: 30, scope: !6241)
!6248 = !DILocation(line: 408, column: 45, scope: !6241)
!6249 = !DILocation(line: 410, column: 10, scope: !6241)
!6250 = !DILocation(line: 410, column: 21, scope: !6241)
!6251 = !DILocation(line: 410, column: 42, scope: !6241)
!6252 = !DILocation(line: 410, column: 39, scope: !6241)
!6253 = !DILocation(line: 410, column: 33, scope: !6241)
!6254 = !DILocation(line: 410, column: 9, scope: !6241)
!6255 = !DILocation(line: 410, column: 2, scope: !6241)
!6256 = distinct !DISubprogram(name: "fsnotify_ignored_events", scope: !189, file: !189, line: 690, type: !5978, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6257 = !{!6258}
!6258 = !DILocalVariable(name: "mark", arg: 1, scope: !6256, file: !189, line: 690, type: !4393)
!6259 = !DILocation(line: 690, column: 67, scope: !6256)
!6260 = !DILocation(line: 692, column: 9, scope: !6256)
!6261 = !DILocation(line: 692, column: 15, scope: !6256)
!6262 = !DILocation(line: 692, column: 27, scope: !6256)
!6263 = !DILocation(line: 692, column: 2, scope: !6256)
!6264 = distinct !DISubprogram(name: "fsnotify_mask_applicable", scope: !189, file: !189, line: 699, type: !6265, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!313, !244, !313, !43}
!6267 = !{!6268, !6269, !6270}
!6268 = !DILocalVariable(name: "mask", arg: 1, scope: !6264, file: !189, line: 699, type: !244)
!6269 = !DILocalVariable(name: "is_dir", arg: 2, scope: !6264, file: !189, line: 699, type: !313)
!6270 = !DILocalVariable(name: "iter_type", arg: 3, scope: !6264, file: !189, line: 700, type: !43)
!6271 = !DILocation(line: 699, column: 51, scope: !6264)
!6272 = !DILocation(line: 699, column: 62, scope: !6264)
!6273 = !DILocation(line: 700, column: 14, scope: !6264)
!6274 = !DILocation(line: 703, column: 6, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6264, file: !189, line: 703, column: 6)
!6276 = !DILocation(line: 703, column: 13, scope: !6275)
!6277 = !DILocation(line: 703, column: 18, scope: !6275)
!6278 = !DILocation(line: 703, column: 23, scope: !6275)
!6279 = !DILocation(line: 703, column: 6, scope: !6264)
!6280 = !DILocation(line: 704, column: 3, scope: !6275)
!6281 = !DILocation(line: 707, column: 6, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6264, file: !189, line: 707, column: 6)
!6283 = !DILocation(line: 707, column: 16, scope: !6282)
!6284 = !DILocation(line: 707, column: 45, scope: !6282)
!6285 = !DILocation(line: 708, column: 8, scope: !6282)
!6286 = !DILocation(line: 708, column: 13, scope: !6282)
!6287 = !DILocation(line: 707, column: 6, scope: !6264)
!6288 = !DILocation(line: 709, column: 3, scope: !6282)
!6289 = !DILocation(line: 711, column: 2, scope: !6264)
!6290 = !DILocation(line: 712, column: 1, scope: !6264)
!6291 = distinct !DISubprogram(name: "fsnotify_iter_inode_mark", scope: !189, file: !189, line: 446, type: !6292, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6294)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!4393, !4411}
!6294 = !{!6295}
!6295 = !DILocalVariable(name: "iter_info", arg: 1, scope: !6291, file: !189, line: 446, type: !4411)
!6296 = !DILocation(line: 446, column: 1, scope: !6291)
!6297 = distinct !DISubprogram(name: "fsnotify_iter_parent_mark", scope: !189, file: !189, line: 447, type: !6292, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6298)
!6298 = !{!6299}
!6299 = !DILocalVariable(name: "iter_info", arg: 1, scope: !6297, file: !189, line: 447, type: !4411)
!6300 = !DILocation(line: 447, column: 1, scope: !6297)
!6301 = distinct !DISubprogram(name: "fsnotify_iter_sb_mark", scope: !189, file: !189, line: 449, type: !6292, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6302)
!6302 = !{!6303}
!6303 = !DILocalVariable(name: "iter_info", arg: 1, scope: !6301, file: !189, line: 449, type: !4411)
!6304 = !DILocation(line: 449, column: 1, scope: !6301)
!6305 = distinct !DISubprogram(name: "fsnotify_iter_vfsmount_mark", scope: !189, file: !189, line: 448, type: !6292, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6306)
!6306 = !{!6307}
!6307 = !DILocalVariable(name: "iter_info", arg: 1, scope: !6305, file: !189, line: 448, type: !4411)
!6308 = !DILocation(line: 448, column: 1, scope: !6305)
!6309 = distinct !DISubprogram(name: "fsnotify_handle_inode_event", scope: !3, file: !3, line: 251, type: !6310, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6312)
!6310 = !DISubroutineType(types: !6311)
!6311 = !{!43, !4399, !4393, !243, !950, !43, !254, !3152, !243}
!6312 = !{!6313, !6314, !6315, !6316, !6317, !6318, !6319, !6320, !6321, !6322, !6323, !6324, !6327, !6330, !6333}
!6313 = !DILocalVariable(name: "group", arg: 1, scope: !6309, file: !3, line: 251, type: !4399)
!6314 = !DILocalVariable(name: "inode_mark", arg: 2, scope: !6309, file: !3, line: 252, type: !4393)
!6315 = !DILocalVariable(name: "mask", arg: 3, scope: !6309, file: !3, line: 253, type: !243)
!6316 = !DILocalVariable(name: "data", arg: 4, scope: !6309, file: !3, line: 253, type: !950)
!6317 = !DILocalVariable(name: "data_type", arg: 5, scope: !6309, file: !3, line: 253, type: !43)
!6318 = !DILocalVariable(name: "dir", arg: 6, scope: !6309, file: !3, line: 254, type: !254)
!6319 = !DILocalVariable(name: "name", arg: 7, scope: !6309, file: !3, line: 254, type: !3152)
!6320 = !DILocalVariable(name: "cookie", arg: 8, scope: !6309, file: !3, line: 255, type: !243)
!6321 = !DILocalVariable(name: "path", scope: !6309, file: !3, line: 257, type: !2906)
!6322 = !DILocalVariable(name: "inode", scope: !6309, file: !3, line: 258, type: !254)
!6323 = !DILocalVariable(name: "ops", scope: !6309, file: !3, line: 259, type: !4403)
!6324 = !DILocalVariable(name: "__ret_warn_on", scope: !6325, file: !3, line: 261, type: !43)
!6325 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 261, column: 6)
!6326 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 261, column: 6)
!6327 = !DILocalVariable(name: "__flags", scope: !6328, file: !3, line: 261, type: !43)
!6328 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 261, column: 6)
!6329 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 261, column: 6)
!6330 = !DILocalVariable(name: "__ret_warn_on", scope: !6331, file: !3, line: 264, type: !43)
!6331 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 264, column: 6)
!6332 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 264, column: 6)
!6333 = !DILocalVariable(name: "__flags", scope: !6334, file: !3, line: 264, type: !43)
!6334 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 264, column: 6)
!6335 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 264, column: 6)
!6336 = !DILocation(line: 251, column: 63, scope: !6309)
!6337 = !DILocation(line: 252, column: 34, scope: !6309)
!6338 = !DILocation(line: 253, column: 16, scope: !6309)
!6339 = !DILocation(line: 253, column: 34, scope: !6309)
!6340 = !DILocation(line: 253, column: 44, scope: !6309)
!6341 = !DILocation(line: 254, column: 26, scope: !6309)
!6342 = !DILocation(line: 254, column: 50, scope: !6309)
!6343 = !DILocation(line: 255, column: 16, scope: !6309)
!6344 = !DILocation(line: 257, column: 2, scope: !6309)
!6345 = !DILocation(line: 257, column: 21, scope: !6309)
!6346 = !DILocation(line: 257, column: 47, scope: !6309)
!6347 = !DILocation(line: 257, column: 53, scope: !6309)
!6348 = !DILocation(line: 257, column: 28, scope: !6309)
!6349 = !DILocation(line: 258, column: 2, scope: !6309)
!6350 = !DILocation(line: 258, column: 16, scope: !6309)
!6351 = !DILocation(line: 258, column: 44, scope: !6309)
!6352 = !DILocation(line: 258, column: 50, scope: !6309)
!6353 = !DILocation(line: 258, column: 24, scope: !6309)
!6354 = !DILocation(line: 259, column: 2, scope: !6309)
!6355 = !DILocation(line: 259, column: 29, scope: !6309)
!6356 = !DILocation(line: 259, column: 35, scope: !6309)
!6357 = !DILocation(line: 259, column: 42, scope: !6309)
!6358 = !DILocation(line: 261, column: 6, scope: !6325)
!6359 = !DILocation(line: 261, column: 6, scope: !6329)
!6360 = !DILocation(line: 261, column: 6, scope: !6328)
!6361 = !DILocation(line: 261, column: 6, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 261, column: 6)
!6363 = !DILocation(line: 261, column: 6, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 261, column: 6)
!6365 = !{i64 2154565058, i64 2154565087, i64 2154565133, i64 2154565191, i64 2154565245, i64 2154565299, i64 2154565354, i64 2154565385, i64 2154565693, i64 2154565699, i64 2154565746, i64 2154565769, i64 2154565795}
!6366 = !DILocation(line: 261, column: 6, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 261, column: 6)
!6368 = !DILocation(line: 261, column: 6, scope: !6326)
!6369 = !DILocation(line: 261, column: 6, scope: !6309)
!6370 = !DILocation(line: 262, column: 3, scope: !6326)
!6371 = !DILocation(line: 264, column: 6, scope: !6331)
!6372 = !DILocation(line: 0, scope: !6331)
!6373 = !DILocation(line: 264, column: 6, scope: !6335)
!6374 = !DILocation(line: 264, column: 6, scope: !6334)
!6375 = !DILocation(line: 264, column: 6, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 264, column: 6)
!6377 = !DILocation(line: 264, column: 6, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 264, column: 6)
!6379 = !{i64 2154566584, i64 2154566613, i64 2154566659, i64 2154566717, i64 2154566771, i64 2154566825, i64 2154566880, i64 2154566911, i64 2154567219, i64 2154567225, i64 2154567272, i64 2154567295, i64 2154567321}
!6380 = !DILocation(line: 264, column: 6, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 264, column: 6)
!6382 = !DILocation(line: 264, column: 6, scope: !6332)
!6383 = !DILocation(line: 264, column: 6, scope: !6309)
!6384 = !DILocation(line: 265, column: 3, scope: !6332)
!6385 = !DILocation(line: 267, column: 7, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 267, column: 6)
!6387 = !DILocation(line: 267, column: 19, scope: !6386)
!6388 = !DILocation(line: 267, column: 25, scope: !6386)
!6389 = !DILocation(line: 267, column: 59, scope: !6386)
!6390 = !DILocation(line: 268, column: 6, scope: !6386)
!6391 = !DILocation(line: 268, column: 11, scope: !6386)
!6392 = !DILocation(line: 268, column: 25, scope: !6386)
!6393 = !DILocation(line: 268, column: 31, scope: !6386)
!6394 = !DILocation(line: 268, column: 14, scope: !6386)
!6395 = !DILocation(line: 267, column: 6, scope: !6309)
!6396 = !DILocation(line: 269, column: 3, scope: !6386)
!6397 = !DILocation(line: 272, column: 8, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 272, column: 6)
!6399 = !DILocation(line: 272, column: 15, scope: !6398)
!6400 = !DILocation(line: 272, column: 27, scope: !6398)
!6401 = !DILocation(line: 272, column: 13, scope: !6398)
!6402 = !DILocation(line: 272, column: 32, scope: !6398)
!6403 = !DILocation(line: 272, column: 6, scope: !6309)
!6404 = !DILocation(line: 273, column: 3, scope: !6398)
!6405 = !DILocation(line: 275, column: 9, scope: !6309)
!6406 = !DILocation(line: 275, column: 14, scope: !6309)
!6407 = !DILocation(line: 275, column: 33, scope: !6309)
!6408 = !DILocation(line: 275, column: 45, scope: !6309)
!6409 = !DILocation(line: 275, column: 51, scope: !6309)
!6410 = !DILocation(line: 275, column: 58, scope: !6309)
!6411 = !DILocation(line: 275, column: 63, scope: !6309)
!6412 = !DILocation(line: 275, column: 69, scope: !6309)
!6413 = !DILocation(line: 275, column: 2, scope: !6309)
!6414 = !DILocation(line: 276, column: 1, scope: !6309)
!6415 = distinct !DISubprogram(name: "d_unlinked", scope: !184, file: !184, line: 338, type: !3156, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6416)
!6416 = !{!6417}
!6417 = !DILocalVariable(name: "dentry", arg: 1, scope: !6415, file: !184, line: 338, type: !3145)
!6418 = !DILocation(line: 338, column: 51, scope: !6415)
!6419 = !DILocation(line: 340, column: 20, scope: !6415)
!6420 = !DILocation(line: 340, column: 9, scope: !6415)
!6421 = !DILocation(line: 340, column: 28, scope: !6415)
!6422 = !DILocation(line: 340, column: 32, scope: !6415)
!6423 = !DILocation(line: 340, column: 31, scope: !6415)
!6424 = !DILocation(line: 0, scope: !6415)
!6425 = !DILocation(line: 340, column: 2, scope: !6415)
!6426 = distinct !DISubprogram(name: "d_unhashed", scope: !184, file: !184, line: 333, type: !3156, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6427)
!6427 = !{!6428}
!6428 = !DILocalVariable(name: "dentry", arg: 1, scope: !6426, file: !184, line: 333, type: !3145)
!6429 = !DILocation(line: 333, column: 51, scope: !6426)
!6430 = !DILocation(line: 335, column: 28, scope: !6426)
!6431 = !DILocation(line: 335, column: 36, scope: !6426)
!6432 = !DILocation(line: 335, column: 9, scope: !6426)
!6433 = !DILocation(line: 335, column: 2, scope: !6426)
!6434 = distinct !DISubprogram(name: "hlist_bl_unhashed", scope: !226, file: !226, line: 52, type: !6435, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6439)
!6435 = !DISubroutineType(types: !6436)
!6436 = !{!313, !6437}
!6437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6438, size: 64)
!6438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!6439 = !{!6440}
!6440 = !DILocalVariable(name: "h", arg: 1, scope: !6434, file: !226, line: 52, type: !6437)
!6441 = !DILocation(line: 52, column: 67, scope: !6434)
!6442 = !DILocation(line: 54, column: 10, scope: !6434)
!6443 = !DILocation(line: 54, column: 13, scope: !6434)
!6444 = !DILocation(line: 54, column: 9, scope: !6434)
!6445 = !DILocation(line: 54, column: 2, scope: !6434)
!6446 = distinct !DISubprogram(name: "fsnotify_next_mark", scope: !3, file: !3, line: 394, type: !6447, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6449)
!6447 = !DISubroutineType(types: !6448)
!6448 = !{!4393, !4393}
!6449 = !{!6450, !6451, !6452, !6455, !6457}
!6450 = !DILocalVariable(name: "mark", arg: 1, scope: !6446, file: !3, line: 394, type: !4393)
!6451 = !DILocalVariable(name: "node", scope: !6446, file: !3, line: 396, type: !483)
!6452 = !DILocalVariable(name: "__UNIQUE_ID_rcu304", scope: !6453, file: !3, line: 399, type: !483)
!6453 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 399, column: 10)
!6454 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 398, column: 6)
!6455 = !DILocalVariable(name: "____ptr", scope: !6456, file: !3, line: 402, type: !483)
!6456 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 402, column: 9)
!6457 = !DILocalVariable(name: "__mptr", scope: !6458, file: !3, line: 402, type: !41)
!6458 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 402, column: 9)
!6459 = !DILocation(line: 394, column: 71, scope: !6446)
!6460 = !DILocation(line: 396, column: 2, scope: !6446)
!6461 = !DILocation(line: 396, column: 21, scope: !6446)
!6462 = !DILocation(line: 398, column: 6, scope: !6454)
!6463 = !DILocation(line: 398, column: 6, scope: !6446)
!6464 = !DILocation(line: 399, column: 10, scope: !6453)
!6465 = !DILocation(line: 399, column: 10, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 399, column: 10)
!6467 = !DILocation(line: 399, column: 10, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6466, file: !3, line: 399, column: 10)
!6469 = !DILocation(line: 399, column: 10, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 399, column: 10)
!6471 = !DILocation(line: 399, column: 10, scope: !6454)
!6472 = !DILocation(line: 399, column: 8, scope: !6454)
!6473 = !DILocation(line: 399, column: 3, scope: !6454)
!6474 = !DILocation(line: 402, column: 9, scope: !6456)
!6475 = !DILocation(line: 402, column: 9, scope: !6458)
!6476 = !DILocation(line: 402, column: 9, scope: !6446)
!6477 = !DILocation(line: 403, column: 1, scope: !6446)
!6478 = !DILocation(line: 402, column: 2, scope: !6446)
!6479 = !DISubprogram(name: "__srcu_read_unlock", scope: !4506, file: !4506, line: 58, type: !5750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6480 = !DISubprogram(name: "init_srcu_struct", scope: !4506, file: !4506, line: 41, type: !5417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6481 = !DISubprogram(name: "panic", scope: !6482, file: !6482, line: 12, type: !6483, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6482 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!6483 = !DISubroutineType(types: !6484)
!6484 = !{null, !37, null}
!6485 = !DISubprogram(name: "kmem_cache_create", scope: !6486, file: !6486, line: 189, type: !6487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6486 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6487 = !DISubroutineType(types: !6488)
!6488 = !{!4029, !37, !7, !7, !4484, !298}
