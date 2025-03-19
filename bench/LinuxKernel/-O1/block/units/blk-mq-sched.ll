; ModuleID = 'block/blk-mq-sched.c'
source_filename = "block/blk-mq-sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blk_mq_sched_mark_restart_hctx: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad blk_mq_sched_mark_restart_hctx ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blk_mq_sched_try_insert_merge: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad blk_mq_sched_try_insert_merge ; .previous"

%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.blk_mq_hw_ctx = type { %struct.anon.13, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i64, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [24 x i8] }
%struct.anon.13 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.cpumask = type { [1 x i64] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i64, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i64, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, %union.anon.14, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.14 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_mq_ctx = type { %struct.anon.15, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [8 x i8] }
%struct.anon.15 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.16, ptr, i64, i64, i64, i16, i16, i16, i32, %struct.atomic_t, i64, %union.anon.17, %union.anon.18, %struct.anon.19, %struct.anon.20, i64, ptr, ptr }
%union.anon.16 = type { %struct.list_head }
%union.anon.17 = type { %struct.hlist_node }
%union.anon.18 = type { %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.anon.19 = type { ptr, [2 x ptr] }
%struct.anon.20 = type { i32, ptr }
%struct.blk_mq_tag_set = type { ptr, [3 x %struct.blk_mq_queue_map], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head, ptr }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_tags = type { i32, i32, i32, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t }
%struct.thread_info = type { i64, i64, i32, i32 }

@__UNIQUE_ID___addressable_blk_mq_sched_mark_restart_hctx527 = internal global ptr @blk_mq_sched_mark_restart_hctx, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_blk_mq_sched_try_insert_merge530 = internal global ptr @blk_mq_sched_try_insert_merge, section ".discard.addressable", align 8, !dbg !5719
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_blk_mq_sched_mark_restart_hctx527, ptr @__UNIQUE_ID___addressable_blk_mq_sched_try_insert_merge530], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_mq_sched_mark_restart_hctx(ptr noundef %hctx) #0 align 16 !dbg !5730 {
entry:
  %hctx.addr = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !5732, metadata !DIExpression()), !dbg !5733
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !5734
  %1 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 0, !dbg !5734
  %state = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 2, !dbg !5734
  %2 = ptrtoint ptr %state to i64, !dbg !5734
  %cmp = icmp ne i64 %2, 0, !dbg !5734
  %conv = zext i1 %cmp to i32, !dbg !5734
  %3 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5734
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !5734

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %hctx.addr, align 8, !dbg !5734
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 0, !dbg !5734
  %state1 = getelementptr inbounds %struct.anon.13, ptr %5, i32 0, i32 2, !dbg !5734
  %6 = ptrtoint ptr %state1 to i64, !dbg !5734
  %cmp2 = icmp ne i64 %6, 0, !dbg !5734
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5734

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %hctx.addr, align 8, !dbg !5734
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 0, !dbg !5734
  %state5 = getelementptr inbounds %struct.anon.13, ptr %8, i32 0, i32 2, !dbg !5734
  %9 = load i64, ptr %state5, align 8, !dbg !5734
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !5734
  br i1 %10, label %cond.true, label %cond.false, !dbg !5736

cond.true:                                        ; preds = %land.lhs.true4
  %11 = load ptr, ptr %hctx.addr, align 8, !dbg !5734
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %11, i32 0, i32 0, !dbg !5734
  %state6 = getelementptr inbounds %struct.anon.13, ptr %12, i32 0, i32 2, !dbg !5734
  %call = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %state6) #9, !dbg !5734
  br i1 %call, label %if.then, label %if.end, !dbg !5734

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %13 = load ptr, ptr %hctx.addr, align 8, !dbg !5734
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 0, !dbg !5734
  %state8 = getelementptr inbounds %struct.anon.13, ptr %14, i32 0, i32 2, !dbg !5734
  %call9 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %state8) #9, !dbg !5734
  br i1 %call9, label %if.then, label %if.end, !dbg !5736

if.then:                                          ; preds = %cond.false, %cond.true
  br label %return, !dbg !5737

if.end:                                           ; preds = %cond.false, %cond.true
  %15 = load ptr, ptr %hctx.addr, align 8, !dbg !5738
  %16 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %15, i32 0, i32 0, !dbg !5739
  %state11 = getelementptr inbounds %struct.anon.13, ptr %16, i32 0, i32 2, !dbg !5739
  call void @set_bit(i64 noundef 2, ptr noundef %state11) #9, !dbg !5740
  br label %return, !dbg !5741

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5741
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5742 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5750, metadata !DIExpression()), !dbg !5755
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5751, metadata !DIExpression()), !dbg !5756
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5757
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5752, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5759
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5760
  %div = udiv i64 %1, 64, !dbg !5760
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5761
  store ptr %add.ptr, ptr %p, align 8, !dbg !5758
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5753, metadata !DIExpression()), !dbg !5763
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5764
  %rem = urem i64 %2, 64, !dbg !5764
  %shl = shl i64 1, %rem, !dbg !5764
  store i64 %shl, ptr %mask, align 8, !dbg !5763
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !5765
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5754, metadata !DIExpression()), !dbg !5766
  %3 = load ptr, ptr %p, align 8, !dbg !5767
  %4 = load i64, ptr %3, align 8, !dbg !5768
  store i64 %4, ptr %val, align 8, !dbg !5766
  %5 = load i64, ptr %val, align 8, !dbg !5769
  %6 = load i64, ptr %mask, align 8, !dbg !5770
  %and = and i64 %5, %6, !dbg !5771
  %tobool = icmp ne i64 %and, 0, !dbg !5772
  %lnot = xor i1 %tobool, true, !dbg !5772
  %lnot1 = xor i1 %lnot, true, !dbg !5773
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !5774
  ret i1 %lnot1, !dbg !5775
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5776 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5779, metadata !DIExpression()), !dbg !5781
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5780, metadata !DIExpression()), !dbg !5782
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5783
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5784
  %div = udiv i64 %1, 64, !dbg !5784
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5785
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !5786
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5787
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5788
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !5789
  ret i1 %call, !dbg !5790
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5791 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5797, metadata !DIExpression()), !dbg !5799
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5798, metadata !DIExpression()), !dbg !5800
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5801
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5802
  %div = sdiv i64 %1, 64, !dbg !5802
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5803
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !5804
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5805
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5806
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !5807
  ret void, !dbg !5808
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__blk_mq_sched_restart(ptr noundef %hctx) #0 align 16 !dbg !5809 {
entry:
  %hctx.addr = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !5811, metadata !DIExpression()), !dbg !5812
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !5813
  %1 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 0, !dbg !5814
  %state = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 2, !dbg !5814
  call void @clear_bit(i64 noundef 2, ptr noundef %state) #9, !dbg !5815
  br label %do.body, !dbg !5816

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5817

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5819

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5817, !srcloc !5821
  br label %do.end2, !dbg !5817

do.end2:                                          ; preds = %do.end
  %2 = load ptr, ptr %hctx.addr, align 8, !dbg !5822
  call void @blk_mq_run_hw_queue(ptr noundef %2, i1 noundef zeroext true) #9, !dbg !5823
  ret void, !dbg !5824
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5825 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5827, metadata !DIExpression()), !dbg !5829
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5828, metadata !DIExpression()), !dbg !5830
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5831
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5832
  %div = sdiv i64 %1, 64, !dbg !5832
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5833
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !5834
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5835
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5836
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !5837
  ret void, !dbg !5838
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5839 dso_local void @blk_mq_run_hw_queue(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_mq_sched_dispatch_requests(ptr noundef %hctx) #0 align 16 !dbg !5842 {
entry:
  %hctx.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !5844, metadata !DIExpression()), !dbg !5846
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #10, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5845, metadata !DIExpression()), !dbg !5848
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !5849
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7, !dbg !5850
  %1 = load ptr, ptr %queue, align 8, !dbg !5850
  store ptr %1, ptr %q, align 8, !dbg !5848
  %2 = load ptr, ptr %hctx.addr, align 8, !dbg !5851
  %call = call zeroext i1 @blk_mq_hctx_stopped(ptr noundef %2) #9, !dbg !5851
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !5851

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %q, align 8, !dbg !5851
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 12, !dbg !5851
  %4 = ptrtoint ptr %queue_flags to i64, !dbg !5851
  %cmp = icmp ne i64 %4, 0, !dbg !5851
  %conv = zext i1 %cmp to i32, !dbg !5851
  %5 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5851
  br i1 %5, label %land.lhs.true, label %cond.false, !dbg !5851

land.lhs.true:                                    ; preds = %lor.rhs
  %6 = load ptr, ptr %q, align 8, !dbg !5851
  %queue_flags1 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 12, !dbg !5851
  %7 = ptrtoint ptr %queue_flags1 to i64, !dbg !5851
  %cmp2 = icmp ne i64 %7, 0, !dbg !5851
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5851

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %q, align 8, !dbg !5851
  %queue_flags5 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 12, !dbg !5851
  %9 = load i64, ptr %queue_flags5, align 8, !dbg !5851
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !5851
  br i1 %10, label %cond.true, label %cond.false, !dbg !5851

cond.true:                                        ; preds = %land.lhs.true4
  %11 = load ptr, ptr %q, align 8, !dbg !5851
  %queue_flags6 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 12, !dbg !5851
  %call7 = call zeroext i1 @const_test_bit(i64 noundef 24, ptr noundef %queue_flags6) #9, !dbg !5851
  %conv8 = zext i1 %call7 to i32, !dbg !5851
  br label %cond.end, !dbg !5851

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %lor.rhs
  %12 = load ptr, ptr %q, align 8, !dbg !5851
  %queue_flags9 = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 12, !dbg !5851
  %call10 = call zeroext i1 @_test_bit(i64 noundef 24, ptr noundef %queue_flags9) #9, !dbg !5851
  %conv11 = zext i1 %call10 to i32, !dbg !5851
  br label %cond.end, !dbg !5851

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv8, %cond.true ], [ %conv11, %cond.false ], !dbg !5851
  %tobool = icmp ne i32 %cond, 0, !dbg !5851
  br label %lor.end, !dbg !5851

lor.end:                                          ; preds = %cond.end, %entry
  %13 = phi i1 [ true, %entry ], [ %tobool, %cond.end ]
  %lnot = xor i1 %13, true, !dbg !5851
  %lnot12 = xor i1 %lnot, true, !dbg !5851
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !5851
  %conv13 = sext i32 %lnot.ext to i64, !dbg !5851
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5851
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5851
  br i1 %tobool14, label %if.then, label %if.end, !dbg !5853

if.then:                                          ; preds = %lor.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5854

if.end:                                           ; preds = %lor.end
  %14 = load ptr, ptr %hctx.addr, align 8, !dbg !5855
  %run = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 21, !dbg !5856
  %15 = load i64, ptr %run, align 16, !dbg !5857
  %inc = add i64 %15, 1, !dbg !5857
  store i64 %inc, ptr %run, align 16, !dbg !5857
  %16 = load ptr, ptr %hctx.addr, align 8, !dbg !5858
  %call15 = call i32 @__blk_mq_sched_dispatch_requests(ptr noundef %16) #9, !dbg !5860
  %cmp16 = icmp eq i32 %call15, -11, !dbg !5861
  br i1 %cmp16, label %if.then18, label %if.end24, !dbg !5862

if.then18:                                        ; preds = %if.end
  %17 = load ptr, ptr %hctx.addr, align 8, !dbg !5863
  %call19 = call i32 @__blk_mq_sched_dispatch_requests(ptr noundef %17) #9, !dbg !5866
  %cmp20 = icmp eq i32 %call19, -11, !dbg !5867
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5868

if.then22:                                        ; preds = %if.then18
  %18 = load ptr, ptr %hctx.addr, align 8, !dbg !5869
  call void @blk_mq_run_hw_queue(ptr noundef %18, i1 noundef zeroext true) #9, !dbg !5870
  br label %if.end23, !dbg !5870

if.end23:                                         ; preds = %if.then22, %if.then18
  br label %if.end24, !dbg !5871

if.end24:                                         ; preds = %if.end23, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5872
  br label %cleanup, !dbg !5872

cleanup:                                          ; preds = %if.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #10, !dbg !5872
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5872

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @blk_mq_hctx_stopped(ptr noundef %hctx) #6 align 16 !dbg !5873 {
entry:
  %retval = alloca i1, align 1
  %hctx.addr = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !5877
  %1 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 0, !dbg !5877
  %state = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 2, !dbg !5877
  %2 = ptrtoint ptr %state to i64, !dbg !5877
  %cmp = icmp ne i64 %2, 0, !dbg !5877
  %conv = zext i1 %cmp to i32, !dbg !5877
  %3 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5877
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !5877

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %hctx.addr, align 8, !dbg !5877
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 0, !dbg !5877
  %state1 = getelementptr inbounds %struct.anon.13, ptr %5, i32 0, i32 2, !dbg !5877
  %6 = ptrtoint ptr %state1 to i64, !dbg !5877
  %cmp2 = icmp ne i64 %6, 0, !dbg !5877
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5877

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %hctx.addr, align 8, !dbg !5877
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 0, !dbg !5877
  %state5 = getelementptr inbounds %struct.anon.13, ptr %8, i32 0, i32 2, !dbg !5877
  %9 = load i64, ptr %state5, align 8, !dbg !5877
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !5877
  br i1 %10, label %cond.true, label %cond.false, !dbg !5877

cond.true:                                        ; preds = %land.lhs.true4
  %11 = load ptr, ptr %hctx.addr, align 8, !dbg !5877
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %11, i32 0, i32 0, !dbg !5877
  %state6 = getelementptr inbounds %struct.anon.13, ptr %12, i32 0, i32 2, !dbg !5877
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %state6) #9, !dbg !5877
  %conv7 = zext i1 %call to i32, !dbg !5877
  br label %cond.end, !dbg !5877

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %13 = load ptr, ptr %hctx.addr, align 8, !dbg !5877
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 0, !dbg !5877
  %state8 = getelementptr inbounds %struct.anon.13, ptr %14, i32 0, i32 2, !dbg !5877
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %state8) #9, !dbg !5877
  %conv10 = zext i1 %call9 to i32, !dbg !5877
  br label %cond.end, !dbg !5877

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !5877
  %tobool = icmp ne i32 %cond, 0, !dbg !5877
  %lnot = xor i1 %tobool, true, !dbg !5877
  %lnot11 = xor i1 %lnot, true, !dbg !5877
  %lnot12 = xor i1 %lnot11, true, !dbg !5877
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !5877
  %conv13 = sext i32 %lnot.ext to i64, !dbg !5877
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 1), !dbg !5877
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5877
  br i1 %tobool14, label %if.then, label %if.end, !dbg !5879

if.then:                                          ; preds = %cond.end
  store i1 false, ptr %retval, align 1, !dbg !5880
  br label %return, !dbg !5880

if.end:                                           ; preds = %cond.end
  br label %do.body, !dbg !5881

do.body:                                          ; preds = %if.end
  br label %do.body15, !dbg !5882

do.body15:                                        ; preds = %do.body
  br label %do.end, !dbg !5884

do.end:                                           ; preds = %do.body15
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5882, !srcloc !5886
  br label %do.end16, !dbg !5882

do.end16:                                         ; preds = %do.end
  %15 = load ptr, ptr %hctx.addr, align 8, !dbg !5887
  %16 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %15, i32 0, i32 0, !dbg !5887
  %state17 = getelementptr inbounds %struct.anon.13, ptr %16, i32 0, i32 2, !dbg !5887
  %17 = ptrtoint ptr %state17 to i64, !dbg !5887
  %cmp18 = icmp ne i64 %17, 0, !dbg !5887
  %conv19 = zext i1 %cmp18 to i32, !dbg !5887
  %18 = call i1 @llvm.is.constant.i32(i32 %conv19), !dbg !5887
  br i1 %18, label %land.lhs.true20, label %cond.false30, !dbg !5887

land.lhs.true20:                                  ; preds = %do.end16
  %19 = load ptr, ptr %hctx.addr, align 8, !dbg !5887
  %20 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %19, i32 0, i32 0, !dbg !5887
  %state21 = getelementptr inbounds %struct.anon.13, ptr %20, i32 0, i32 2, !dbg !5887
  %21 = ptrtoint ptr %state21 to i64, !dbg !5887
  %cmp22 = icmp ne i64 %21, 0, !dbg !5887
  br i1 %cmp22, label %land.lhs.true24, label %cond.false30, !dbg !5887

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %22 = load ptr, ptr %hctx.addr, align 8, !dbg !5887
  %23 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %22, i32 0, i32 0, !dbg !5887
  %state25 = getelementptr inbounds %struct.anon.13, ptr %23, i32 0, i32 2, !dbg !5887
  %24 = load i64, ptr %state25, align 8, !dbg !5887
  %25 = call i1 @llvm.is.constant.i64(i64 %24), !dbg !5887
  br i1 %25, label %cond.true26, label %cond.false30, !dbg !5887

cond.true26:                                      ; preds = %land.lhs.true24
  %26 = load ptr, ptr %hctx.addr, align 8, !dbg !5887
  %27 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %26, i32 0, i32 0, !dbg !5887
  %state27 = getelementptr inbounds %struct.anon.13, ptr %27, i32 0, i32 2, !dbg !5887
  %call28 = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %state27) #9, !dbg !5887
  %conv29 = zext i1 %call28 to i32, !dbg !5887
  br label %cond.end34, !dbg !5887

cond.false30:                                     ; preds = %land.lhs.true24, %land.lhs.true20, %do.end16
  %28 = load ptr, ptr %hctx.addr, align 8, !dbg !5887
  %29 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 0, !dbg !5887
  %state31 = getelementptr inbounds %struct.anon.13, ptr %29, i32 0, i32 2, !dbg !5887
  %call32 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %state31) #9, !dbg !5887
  %conv33 = zext i1 %call32 to i32, !dbg !5887
  br label %cond.end34, !dbg !5887

cond.end34:                                       ; preds = %cond.false30, %cond.true26
  %cond35 = phi i32 [ %conv29, %cond.true26 ], [ %conv33, %cond.false30 ], !dbg !5887
  %tobool36 = icmp ne i32 %cond35, 0, !dbg !5887
  store i1 %tobool36, ptr %retval, align 1, !dbg !5888
  br label %return, !dbg !5888

return:                                           ; preds = %cond.end34, %if.then
  %30 = load i1, ptr %retval, align 1, !dbg !5889
  ret i1 %30, !dbg !5889
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__blk_mq_sched_dispatch_requests(ptr noundef %hctx) #0 align 16 !dbg !5890 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %need_dispatch = alloca i8, align 1
  %rq_list = alloca %struct.list_head, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !5894, metadata !DIExpression()), !dbg !5897
  call void @llvm.lifetime.start.p0(i64 1, ptr %need_dispatch) #10, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %need_dispatch, metadata !5895, metadata !DIExpression()), !dbg !5899
  store i8 0, ptr %need_dispatch, align 1, !dbg !5899
  call void @llvm.lifetime.start.p0(i64 16, ptr %rq_list) #10, !dbg !5900
  call void @llvm.dbg.declare(metadata ptr %rq_list, metadata !5896, metadata !DIExpression()), !dbg !5900
  %next = getelementptr inbounds %struct.list_head, ptr %rq_list, i32 0, i32 0, !dbg !5900
  store ptr %rq_list, ptr %next, align 8, !dbg !5900
  %prev = getelementptr inbounds %struct.list_head, ptr %rq_list, i32 0, i32 1, !dbg !5900
  store ptr %rq_list, ptr %prev, align 8, !dbg !5900
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !5901
  %1 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 0, !dbg !5903
  %dispatch = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 1, !dbg !5903
  %call = call i32 @list_empty_careful(ptr noundef %dispatch) #9, !dbg !5904
  %tobool = icmp ne i32 %call, 0, !dbg !5904
  br i1 %tobool, label %if.end7, label %if.then, !dbg !5905

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hctx.addr, align 8, !dbg !5906
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 0, !dbg !5908
  %lock = getelementptr inbounds %struct.anon.13, ptr %3, i32 0, i32 0, !dbg !5908
  call void @spin_lock(ptr noundef %lock) #9, !dbg !5909
  %4 = load ptr, ptr %hctx.addr, align 8, !dbg !5910
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 0, !dbg !5912
  %dispatch1 = getelementptr inbounds %struct.anon.13, ptr %5, i32 0, i32 1, !dbg !5912
  %call2 = call i32 @list_empty(ptr noundef %dispatch1) #9, !dbg !5913
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5913
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !5914

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %hctx.addr, align 8, !dbg !5915
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 0, !dbg !5916
  %dispatch5 = getelementptr inbounds %struct.anon.13, ptr %7, i32 0, i32 1, !dbg !5916
  call void @list_splice_init(ptr noundef %dispatch5, ptr noundef %rq_list) #9, !dbg !5917
  br label %if.end, !dbg !5917

if.end:                                           ; preds = %if.then4, %if.then
  %8 = load ptr, ptr %hctx.addr, align 8, !dbg !5918
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %8, i32 0, i32 0, !dbg !5919
  %lock6 = getelementptr inbounds %struct.anon.13, ptr %9, i32 0, i32 0, !dbg !5919
  call void @spin_unlock(ptr noundef %lock6) #9, !dbg !5920
  br label %if.end7, !dbg !5921

if.end7:                                          ; preds = %if.end, %entry
  %call8 = call i32 @list_empty(ptr noundef %rq_list) #9, !dbg !5922
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5922
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !5924

if.then10:                                        ; preds = %if.end7
  %10 = load ptr, ptr %hctx.addr, align 8, !dbg !5925
  call void @blk_mq_sched_mark_restart_hctx(ptr noundef %10) #9, !dbg !5927
  %11 = load ptr, ptr %hctx.addr, align 8, !dbg !5928
  %call11 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %11, ptr noundef %rq_list, i32 noundef 0) #9, !dbg !5930
  br i1 %call11, label %if.end13, label %if.then12, !dbg !5931

if.then12:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4, !dbg !5932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5932

if.end13:                                         ; preds = %if.then10
  store i8 1, ptr %need_dispatch, align 1, !dbg !5933
  br label %if.end15, !dbg !5934

if.else:                                          ; preds = %if.end7
  %12 = load ptr, ptr %hctx.addr, align 8, !dbg !5935
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 12, !dbg !5937
  %13 = load i32, ptr %dispatch_busy, align 8, !dbg !5937
  %tobool14 = icmp ne i32 %13, 0, !dbg !5935
  %frombool = zext i1 %tobool14 to i8, !dbg !5938
  store i8 %frombool, ptr %need_dispatch, align 1, !dbg !5938
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end13
  %14 = load ptr, ptr %hctx.addr, align 8, !dbg !5939
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 7, !dbg !5941
  %15 = load ptr, ptr %queue, align 8, !dbg !5941
  %elevator = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 1, !dbg !5942
  %16 = load ptr, ptr %elevator, align 8, !dbg !5942
  %tobool16 = icmp ne ptr %16, null, !dbg !5939
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !5943

if.then17:                                        ; preds = %if.end15
  %17 = load ptr, ptr %hctx.addr, align 8, !dbg !5944
  %call18 = call i32 @blk_mq_do_dispatch_sched(ptr noundef %17) #9, !dbg !5945
  store i32 %call18, ptr %retval, align 4, !dbg !5946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5946

if.end19:                                         ; preds = %if.end15
  %18 = load i8, ptr %need_dispatch, align 1, !dbg !5947, !range !5949, !noundef !1111
  %tobool20 = trunc i8 %18 to i1, !dbg !5947
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !5950

if.then21:                                        ; preds = %if.end19
  %19 = load ptr, ptr %hctx.addr, align 8, !dbg !5951
  %call22 = call i32 @blk_mq_do_dispatch_ctx(ptr noundef %19) #9, !dbg !5952
  store i32 %call22, ptr %retval, align 4, !dbg !5953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5953

if.end23:                                         ; preds = %if.end19
  %20 = load ptr, ptr %hctx.addr, align 8, !dbg !5954
  call void @blk_mq_flush_busy_ctxs(ptr noundef %20, ptr noundef %rq_list) #9, !dbg !5955
  %21 = load ptr, ptr %hctx.addr, align 8, !dbg !5956
  %call24 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %21, ptr noundef %rq_list, i32 noundef 0) #9, !dbg !5957
  store i32 0, ptr %retval, align 4, !dbg !5958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5958

cleanup:                                          ; preds = %if.end23, %if.then21, %if.then17, %if.then12
  call void @llvm.lifetime.end.p0(i64 16, ptr %rq_list) #10, !dbg !5959
  call void @llvm.lifetime.end.p0(i64 1, ptr %need_dispatch) #10, !dbg !5959
  %22 = load i32, ptr %retval, align 4, !dbg !5959
  ret i32 %22, !dbg !5959
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @blk_mq_sched_bio_merge(ptr noundef %q, ptr noundef %bio, i32 noundef %nr_segs) #0 align 16 !dbg !5960 {
entry:
  %q.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  %nr_segs.addr = alloca i32, align 4
  %e = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  %ret = alloca i8, align 1
  %type = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5962, metadata !DIExpression()), !dbg !5971
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !5963, metadata !DIExpression()), !dbg !5972
  store i32 %nr_segs, ptr %nr_segs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_segs.addr, metadata !5964, metadata !DIExpression()), !dbg !5973
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #10, !dbg !5974
  call void @llvm.dbg.declare(metadata ptr %e, metadata !5965, metadata !DIExpression()), !dbg !5975
  %0 = load ptr, ptr %q.addr, align 8, !dbg !5976
  %elevator = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1, !dbg !5977
  %1 = load ptr, ptr %elevator, align 8, !dbg !5977
  store ptr %1, ptr %e, align 8, !dbg !5975
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #10, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5966, metadata !DIExpression()), !dbg !5979
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #10, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %hctx, metadata !5967, metadata !DIExpression()), !dbg !5981
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #10, !dbg !5982
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5968, metadata !DIExpression()), !dbg !5983
  store i8 0, ptr %ret, align 1, !dbg !5983
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #10, !dbg !5984
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5969, metadata !DIExpression()), !dbg !5985
  %2 = load ptr, ptr %e, align 8, !dbg !5986
  %tobool = icmp ne ptr %2, null, !dbg !5986
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5988

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %e, align 8, !dbg !5989
  %type1 = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 0, !dbg !5990
  %4 = load ptr, ptr %type1, align 8, !dbg !5990
  %ops = getelementptr inbounds %struct.elevator_type, ptr %4, i32 0, i32 1, !dbg !5991
  %bio_merge = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops, i32 0, i32 6, !dbg !5992
  %5 = load ptr, ptr %bio_merge, align 8, !dbg !5992
  %tobool2 = icmp ne ptr %5, null, !dbg !5989
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5993

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %e, align 8, !dbg !5994
  %type3 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 0, !dbg !5996
  %7 = load ptr, ptr %type3, align 8, !dbg !5996
  %ops4 = getelementptr inbounds %struct.elevator_type, ptr %7, i32 0, i32 1, !dbg !5997
  %bio_merge5 = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops4, i32 0, i32 6, !dbg !5998
  %8 = load ptr, ptr %bio_merge5, align 8, !dbg !5998
  %9 = load ptr, ptr %q.addr, align 8, !dbg !5999
  %10 = load ptr, ptr %bio.addr, align 8, !dbg !6000
  %11 = load i32, ptr %nr_segs.addr, align 4, !dbg !6001
  %call = call zeroext i1 %8(ptr noundef %9, ptr noundef %10, i32 noundef %11) #9, !dbg !5994
  %frombool = zext i1 %call to i8, !dbg !6002
  store i8 %frombool, ptr %ret, align 1, !dbg !6002
  br label %out_put, !dbg !6003

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %q.addr, align 8, !dbg !6004
  %call6 = call ptr @blk_mq_get_ctx(ptr noundef %12) #9, !dbg !6005
  store ptr %call6, ptr %ctx, align 8, !dbg !6006
  %13 = load ptr, ptr %q.addr, align 8, !dbg !6007
  %14 = load ptr, ptr %bio.addr, align 8, !dbg !6008
  %bi_opf = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 2, !dbg !6009
  %15 = load i32, ptr %bi_opf, align 8, !dbg !6009
  %16 = load ptr, ptr %ctx, align 8, !dbg !6010
  %call7 = call ptr @blk_mq_map_queue(ptr noundef %13, i32 noundef %15, ptr noundef %16) #9, !dbg !6011
  store ptr %call7, ptr %hctx, align 8, !dbg !6012
  %17 = load ptr, ptr %hctx, align 8, !dbg !6013
  %type8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %17, i32 0, i32 13, !dbg !6014
  %18 = load i16, ptr %type8, align 4, !dbg !6014
  %conv = zext i16 %18 to i32, !dbg !6013
  store i32 %conv, ptr %type, align 4, !dbg !6015
  %19 = load ptr, ptr %hctx, align 8, !dbg !6016
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %19, i32 0, i32 5, !dbg !6018
  %20 = load i64, ptr %flags, align 8, !dbg !6018
  %and = and i64 %20, 1, !dbg !6019
  %tobool9 = icmp ne i64 %and, 0, !dbg !6019
  br i1 %tobool9, label %lor.lhs.false, label %if.then12, !dbg !6020

lor.lhs.false:                                    ; preds = %if.end
  %21 = load ptr, ptr %ctx, align 8, !dbg !6021
  %22 = getelementptr inbounds %struct.blk_mq_ctx, ptr %21, i32 0, i32 0, !dbg !6022
  %rq_lists = getelementptr inbounds %struct.anon.15, ptr %22, i32 0, i32 1, !dbg !6022
  %23 = load i32, ptr %type, align 4, !dbg !6023
  %idxprom = zext i32 %23 to i64, !dbg !6021
  %arrayidx = getelementptr [3 x %struct.list_head], ptr %rq_lists, i64 0, i64 %idxprom, !dbg !6021
  %call10 = call i32 @list_empty_careful(ptr noundef %arrayidx) #9, !dbg !6024
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6024
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6025

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  br label %out_put, !dbg !6026

if.end13:                                         ; preds = %lor.lhs.false
  %24 = load ptr, ptr %ctx, align 8, !dbg !6027
  %25 = getelementptr inbounds %struct.blk_mq_ctx, ptr %24, i32 0, i32 0, !dbg !6028
  %lock = getelementptr inbounds %struct.anon.15, ptr %25, i32 0, i32 0, !dbg !6028
  call void @spin_lock(ptr noundef %lock) #9, !dbg !6029
  %26 = load ptr, ptr %q.addr, align 8, !dbg !6030
  %27 = load ptr, ptr %ctx, align 8, !dbg !6032
  %28 = getelementptr inbounds %struct.blk_mq_ctx, ptr %27, i32 0, i32 0, !dbg !6033
  %rq_lists14 = getelementptr inbounds %struct.anon.15, ptr %28, i32 0, i32 1, !dbg !6033
  %29 = load i32, ptr %type, align 4, !dbg !6034
  %idxprom15 = zext i32 %29 to i64, !dbg !6032
  %arrayidx16 = getelementptr [3 x %struct.list_head], ptr %rq_lists14, i64 0, i64 %idxprom15, !dbg !6032
  %30 = load ptr, ptr %bio.addr, align 8, !dbg !6035
  %31 = load i32, ptr %nr_segs.addr, align 4, !dbg !6036
  %call17 = call zeroext i1 @blk_bio_list_merge(ptr noundef %26, ptr noundef %arrayidx16, ptr noundef %30, i32 noundef %31) #9, !dbg !6037
  br i1 %call17, label %if.then18, label %if.end19, !dbg !6038

if.then18:                                        ; preds = %if.end13
  store i8 1, ptr %ret, align 1, !dbg !6039
  br label %if.end19, !dbg !6040

if.end19:                                         ; preds = %if.then18, %if.end13
  %32 = load ptr, ptr %ctx, align 8, !dbg !6041
  %33 = getelementptr inbounds %struct.blk_mq_ctx, ptr %32, i32 0, i32 0, !dbg !6042
  %lock20 = getelementptr inbounds %struct.anon.15, ptr %33, i32 0, i32 0, !dbg !6042
  call void @spin_unlock(ptr noundef %lock20) #9, !dbg !6043
  br label %out_put, !dbg !6043

out_put:                                          ; preds = %if.end19, %if.then12, %if.then
  call void @llvm.dbg.label(metadata !5970), !dbg !6044
  %34 = load i8, ptr %ret, align 1, !dbg !6045, !range !5949, !noundef !1111
  %tobool21 = trunc i8 %34 to i1, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #10, !dbg !6046
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #10, !dbg !6046
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #10, !dbg !6046
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #10, !dbg !6046
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #10, !dbg !6046
  ret i1 %tobool21, !dbg !6047
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @blk_mq_get_ctx(ptr noundef %q) #6 align 16 !dbg !6048 {
entry:
  %q.addr = alloca ptr, align 8
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6052, metadata !DIExpression()), !dbg !6059
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6060
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #10, !dbg !6061
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6053, metadata !DIExpression()), !dbg !6061
  br label %do.body, !dbg !6061

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6055, metadata !DIExpression()), !dbg !6062
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6062
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !6062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6061
  br label %do.cond, !dbg !6062

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6062

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #10, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6057, metadata !DIExpression()), !dbg !6063
  %2 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #10, !dbg !6063, !srcloc !6064
  store i32 %2, ptr %pfo_val__, align 4, !dbg !6063
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !6063
  %conv = zext i32 %3 to i64, !dbg !6063
  %conv1 = trunc i64 %conv to i32, !dbg !6063
  store i32 %conv1, ptr %tmp, align 4, !dbg !6063
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #10, !dbg !6061
  %4 = load i32, ptr %tmp, align 4, !dbg !6063
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !6061
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !6061
  store i32 %5, ptr %tmp2, align 4, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #10, !dbg !6065
  %6 = load i32, ptr %tmp2, align 4, !dbg !6061
  %call = call ptr @__blk_mq_get_ctx(ptr noundef %0, i32 noundef %6) #9, !dbg !6066
  ret ptr %call, !dbg !6067
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @blk_mq_map_queue(ptr noundef %q, i32 noundef %opf, ptr noundef %ctx) #6 align 16 !dbg !6068 {
entry:
  %q.addr = alloca ptr, align 8
  %opf.addr = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6072, metadata !DIExpression()), !dbg !6075
  store i32 %opf, ptr %opf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opf.addr, metadata !6073, metadata !DIExpression()), !dbg !6076
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6074, metadata !DIExpression()), !dbg !6077
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6078
  %hctxs = getelementptr inbounds %struct.blk_mq_ctx, ptr %0, i32 0, i32 3, !dbg !6079
  %1 = load i32, ptr %opf.addr, align 4, !dbg !6080
  %call = call i32 @blk_mq_get_hctx_type(i32 noundef %1) #9, !dbg !6081
  %idxprom = zext i32 %call to i64, !dbg !6078
  %arrayidx = getelementptr [3 x ptr], ptr %hctxs, i64 0, i64 %idxprom, !dbg !6078
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !6078
  ret ptr %2, !dbg !6082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty_careful(ptr noundef %head) #6 align 16 !dbg !6083 {
entry:
  %head.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6090, metadata !DIExpression()), !dbg !6095
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #10, !dbg !6096
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6091, metadata !DIExpression()), !dbg !6097
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #10, !dbg !6098
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !6092, metadata !DIExpression()), !dbg !6098
  br label %do.body, !dbg !6099

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6101

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6101

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6099
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6099
  %1 = load volatile ptr, ptr %next1, align 8, !dbg !6099
  store ptr %1, ptr %tmp, align 8, !dbg !6101
  %2 = load ptr, ptr %tmp, align 8, !dbg !6099
  store ptr %2, ptr %___p1, align 8, !dbg !6098
  br label %do.body2, !dbg !6098

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !6103

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6103

do.end4:                                          ; preds = %do.cond3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6098, !srcloc !6105
  %3 = load ptr, ptr %___p1, align 8, !dbg !6098
  store ptr %3, ptr %tmp5, align 8, !dbg !6098
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #10, !dbg !6106
  %4 = load ptr, ptr %tmp5, align 8, !dbg !6098
  store ptr %4, ptr %next, align 8, !dbg !6097
  %5 = load ptr, ptr %next, align 8, !dbg !6107
  %6 = load ptr, ptr %head.addr, align 8, !dbg !6108
  %call = call i32 @list_is_head(ptr noundef %5, ptr noundef %6) #9, !dbg !6109
  %tobool = icmp ne i32 %call, 0, !dbg !6109
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6110

land.rhs:                                         ; preds = %do.end4
  %7 = load ptr, ptr %next, align 8, !dbg !6111
  br label %do.body6, !dbg !6112

do.body6:                                         ; preds = %land.rhs
  br label %do.cond7, !dbg !6114

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6114

do.end8:                                          ; preds = %do.cond7
  %8 = load ptr, ptr %head.addr, align 8, !dbg !6112
  %prev = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6112
  %9 = load volatile ptr, ptr %prev, align 8, !dbg !6112
  store ptr %9, ptr %tmp9, align 8, !dbg !6114
  %10 = load ptr, ptr %tmp9, align 8, !dbg !6112
  %cmp = icmp eq ptr %7, %10, !dbg !6116
  br label %land.end

land.end:                                         ; preds = %do.end8, %do.end4
  %11 = phi i1 [ false, %do.end4 ], [ %cmp, %do.end8 ], !dbg !6117
  %land.ext = zext i1 %11 to i32, !dbg !6110
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #10, !dbg !6118
  ret i32 %land.ext, !dbg !6119
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !6120 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6125, metadata !DIExpression()), !dbg !6126
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6127
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6127
  call void @_raw_spin_lock(ptr noundef %1) #9, !dbg !6127
  ret void, !dbg !6128
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6129 dso_local zeroext i1 @blk_bio_list_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !6132 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6134, metadata !DIExpression()), !dbg !6135
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6136
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6136
  call void @_raw_spin_unlock(ptr noundef %1) #9, !dbg !6136
  ret void, !dbg !6137
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @blk_mq_sched_try_insert_merge(ptr noundef %q, ptr noundef %rq, ptr noundef %free) #0 align 16 !dbg !6138 {
entry:
  %q.addr = alloca ptr, align 8
  %rq.addr = alloca ptr, align 8
  %free.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6142, metadata !DIExpression()), !dbg !6145
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !6143, metadata !DIExpression()), !dbg !6146
  store ptr %free, ptr %free.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %free.addr, metadata !6144, metadata !DIExpression()), !dbg !6147
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !6148
  %call = call zeroext i1 @rq_mergeable(ptr noundef %0) #9, !dbg !6149
  br i1 %call, label %land.rhs, label %land.end, !dbg !6150

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %q.addr, align 8, !dbg !6151
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !6152
  %3 = load ptr, ptr %free.addr, align 8, !dbg !6153
  %call1 = call zeroext i1 @elv_attempt_insert_merge(ptr noundef %1, ptr noundef %2, ptr noundef %3) #9, !dbg !6154
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %call1, %land.rhs ], !dbg !6155
  ret i1 %4, !dbg !6156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rq_mergeable(ptr noundef %rq) #6 align 16 !dbg !6157 {
entry:
  %retval = alloca i1, align 1
  %rq.addr = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !6161, metadata !DIExpression()), !dbg !6162
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !6163
  %call = call zeroext i1 @blk_rq_is_passthrough(ptr noundef %0) #9, !dbg !6165
  br i1 %call, label %if.then, label %if.end, !dbg !6166

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6167
  br label %return, !dbg !6167

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rq.addr, align 8, !dbg !6168
  %call1 = call i32 @req_op(ptr noundef %1) #9, !dbg !6170
  %cmp = icmp eq i32 %call1, 2, !dbg !6171
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6172

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6173
  br label %return, !dbg !6173

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !6174
  %call4 = call i32 @req_op(ptr noundef %2) #9, !dbg !6176
  %cmp5 = icmp eq i32 %call4, 9, !dbg !6177
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !6178

if.then6:                                         ; preds = %if.end3
  store i1 false, ptr %retval, align 1, !dbg !6179
  br label %return, !dbg !6179

if.end7:                                          ; preds = %if.end3
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !6180
  %call8 = call i32 @req_op(ptr noundef %3) #9, !dbg !6182
  %cmp9 = icmp eq i32 %call8, 13, !dbg !6183
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6184

if.then10:                                        ; preds = %if.end7
  store i1 false, ptr %retval, align 1, !dbg !6185
  br label %return, !dbg !6185

if.end11:                                         ; preds = %if.end7
  %4 = load ptr, ptr %rq.addr, align 8, !dbg !6186
  %cmd_flags = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 3, !dbg !6188
  %5 = load i32, ptr %cmd_flags, align 8, !dbg !6188
  %and = and i32 %5, 409600, !dbg !6189
  %tobool = icmp ne i32 %and, 0, !dbg !6189
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !6190

if.then12:                                        ; preds = %if.end11
  store i1 false, ptr %retval, align 1, !dbg !6191
  br label %return, !dbg !6191

if.end13:                                         ; preds = %if.end11
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !6192
  %rq_flags = getelementptr inbounds %struct.request, ptr %6, i32 0, i32 4, !dbg !6194
  %7 = load i32, ptr %rq_flags, align 4, !dbg !6194
  %and14 = and i32 %7, 262162, !dbg !6195
  %tobool15 = icmp ne i32 %and14, 0, !dbg !6195
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6196

if.then16:                                        ; preds = %if.end13
  store i1 false, ptr %retval, align 1, !dbg !6197
  br label %return, !dbg !6197

if.end17:                                         ; preds = %if.end13
  store i1 true, ptr %retval, align 1, !dbg !6198
  br label %return, !dbg !6198

return:                                           ; preds = %if.end17, %if.then16, %if.then12, %if.then10, %if.then6, %if.then2, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !6199
  ret i1 %8, !dbg !6199
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6200 dso_local zeroext i1 @elv_attempt_insert_merge(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @blk_mq_init_sched(ptr noundef %q, ptr noundef %e) #0 align 16 !dbg !6201 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %flags = alloca i32, align 4
  %hctx = alloca ptr, align 8
  %eq = alloca ptr, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x531 = alloca i32, align 4
  %__UNIQUE_ID___y532 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6203, metadata !DIExpression()), !dbg !6214
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !6204, metadata !DIExpression()), !dbg !6215
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #10, !dbg !6216
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6205, metadata !DIExpression()), !dbg !6217
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6218
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 51, !dbg !6219
  %1 = load ptr, ptr %tag_set, align 8, !dbg !6219
  %flags1 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 9, !dbg !6220
  %2 = load i32, ptr %flags1, align 4, !dbg !6220
  store i32 %2, ptr %flags, align 4, !dbg !6217
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #10, !dbg !6221
  call void @llvm.dbg.declare(metadata ptr %hctx, metadata !6206, metadata !DIExpression()), !dbg !6222
  call void @llvm.lifetime.start.p0(i64 8, ptr %eq) #10, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %eq, metadata !6207, metadata !DIExpression()), !dbg !6224
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !6225
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6208, metadata !DIExpression()), !dbg !6226
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6227
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6209, metadata !DIExpression()), !dbg !6228
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x531) #10, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x531, metadata !6210, metadata !DIExpression()), !dbg !6229
  %3 = load ptr, ptr %q.addr, align 8, !dbg !6229
  %tag_set2 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 51, !dbg !6229
  %4 = load ptr, ptr %tag_set2, align 8, !dbg !6229
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, ptr %4, i32 0, i32 4, !dbg !6229
  %5 = load i32, ptr %queue_depth, align 8, !dbg !6229
  store i32 %5, ptr %__UNIQUE_ID___x531, align 4, !dbg !6229
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y532) #10, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y532, metadata !6212, metadata !DIExpression()), !dbg !6229
  store i32 128, ptr %__UNIQUE_ID___y532, align 4, !dbg !6229
  %6 = load i32, ptr %__UNIQUE_ID___x531, align 4, !dbg !6229
  %7 = load i32, ptr %__UNIQUE_ID___y532, align 4, !dbg !6229
  %cmp = icmp ult i32 %6, %7, !dbg !6229
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6229

cond.true:                                        ; preds = %entry
  %8 = load i32, ptr %__UNIQUE_ID___x531, align 4, !dbg !6229
  br label %cond.end, !dbg !6229

cond.false:                                       ; preds = %entry
  %9 = load i32, ptr %__UNIQUE_ID___y532, align 4, !dbg !6229
  br label %cond.end, !dbg !6229

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !6229
  store i32 %cond, ptr %tmp, align 4, !dbg !6229
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y532) #10, !dbg !6230
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x531) #10, !dbg !6230
  %10 = load i32, ptr %tmp, align 4, !dbg !6229
  %mul = mul i32 2, %10, !dbg !6231
  %conv = zext i32 %mul to i64, !dbg !6232
  %11 = load ptr, ptr %q.addr, align 8, !dbg !6233
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 21, !dbg !6234
  store i64 %conv, ptr %nr_requests, align 8, !dbg !6235
  %12 = load i32, ptr %flags, align 4, !dbg !6236
  %call = call zeroext i1 @blk_mq_is_shared_tags(i32 noundef %12) #9, !dbg !6238
  br i1 %call, label %if.then, label %if.end5, !dbg !6239

if.then:                                          ; preds = %cond.end
  %13 = load ptr, ptr %q.addr, align 8, !dbg !6240
  %call3 = call i32 @blk_mq_init_sched_shared_tags(ptr noundef %13) #9, !dbg !6242
  store i32 %call3, ptr %ret, align 4, !dbg !6243
  %14 = load i32, ptr %ret, align 4, !dbg !6244
  %tobool = icmp ne i32 %14, 0, !dbg !6244
  br i1 %tobool, label %if.then4, label %if.end, !dbg !6246

if.then4:                                         ; preds = %if.then
  %15 = load i32, ptr %ret, align 4, !dbg !6247
  store i32 %15, ptr %retval, align 4, !dbg !6248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6248

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !6249

if.end5:                                          ; preds = %if.end, %cond.end
  store i64 0, ptr %i, align 8, !dbg !6250
  %16 = load ptr, ptr %q.addr, align 8, !dbg !6250
  %hctx_table = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 9, !dbg !6250
  %call6 = call ptr @xa_find(ptr noundef %hctx_table, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6250
  store ptr %call6, ptr %hctx, align 8, !dbg !6250
  br label %for.cond, !dbg !6250

for.cond:                                         ; preds = %for.inc, %if.end5
  %17 = load ptr, ptr %hctx, align 8, !dbg !6252
  %tobool7 = icmp ne ptr %17, null, !dbg !6250
  br i1 %tobool7, label %for.body, label %for.end, !dbg !6250

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %q.addr, align 8, !dbg !6254
  %19 = load ptr, ptr %hctx, align 8, !dbg !6256
  %20 = load i64, ptr %i, align 8, !dbg !6257
  %conv8 = trunc i64 %20 to i32, !dbg !6257
  %call9 = call i32 @blk_mq_sched_alloc_map_and_rqs(ptr noundef %18, ptr noundef %19, i32 noundef %conv8) #9, !dbg !6258
  store i32 %call9, ptr %ret, align 4, !dbg !6259
  %21 = load i32, ptr %ret, align 4, !dbg !6260
  %tobool10 = icmp ne i32 %21, 0, !dbg !6260
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6262

if.then11:                                        ; preds = %for.body
  br label %err_free_map_and_rqs, !dbg !6263

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !6264

for.inc:                                          ; preds = %if.end12
  %22 = load ptr, ptr %q.addr, align 8, !dbg !6252
  %hctx_table13 = getelementptr inbounds %struct.request_queue, ptr %22, i32 0, i32 9, !dbg !6252
  %call14 = call ptr @xa_find_after(ptr noundef %hctx_table13, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6252
  store ptr %call14, ptr %hctx, align 8, !dbg !6252
  br label %for.cond, !dbg !6252, !llvm.loop !6265

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %e.addr, align 8, !dbg !6269
  %ops = getelementptr inbounds %struct.elevator_type, ptr %23, i32 0, i32 1, !dbg !6270
  %init_sched = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops, i32 0, i32 0, !dbg !6271
  %24 = load ptr, ptr %init_sched, align 8, !dbg !6271
  %25 = load ptr, ptr %q.addr, align 8, !dbg !6272
  %26 = load ptr, ptr %e.addr, align 8, !dbg !6273
  %call15 = call i32 %24(ptr noundef %25, ptr noundef %26) #9, !dbg !6269
  store i32 %call15, ptr %ret, align 4, !dbg !6274
  %27 = load i32, ptr %ret, align 4, !dbg !6275
  %tobool16 = icmp ne i32 %27, 0, !dbg !6275
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6277

if.then17:                                        ; preds = %for.end
  br label %err_free_map_and_rqs, !dbg !6278

if.end18:                                         ; preds = %for.end
  %28 = load ptr, ptr %q.addr, align 8, !dbg !6279
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 56, !dbg !6280
  call void @mutex_lock(ptr noundef %debugfs_mutex) #9, !dbg !6281
  %29 = load ptr, ptr %q.addr, align 8, !dbg !6282
  call void @blk_mq_debugfs_register_sched(ptr noundef %29) #9, !dbg !6283
  %30 = load ptr, ptr %q.addr, align 8, !dbg !6284
  %debugfs_mutex19 = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 56, !dbg !6285
  call void @mutex_unlock(ptr noundef %debugfs_mutex19) #9, !dbg !6286
  store i64 0, ptr %i, align 8, !dbg !6287
  %31 = load ptr, ptr %q.addr, align 8, !dbg !6287
  %hctx_table20 = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 9, !dbg !6287
  %call21 = call ptr @xa_find(ptr noundef %hctx_table20, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6287
  store ptr %call21, ptr %hctx, align 8, !dbg !6287
  br label %for.cond22, !dbg !6287

for.cond22:                                       ; preds = %for.inc38, %if.end18
  %32 = load ptr, ptr %hctx, align 8, !dbg !6289
  %tobool23 = icmp ne ptr %32, null, !dbg !6287
  br i1 %tobool23, label %for.body24, label %for.end41, !dbg !6287

for.body24:                                       ; preds = %for.cond22
  %33 = load ptr, ptr %e.addr, align 8, !dbg !6291
  %ops25 = getelementptr inbounds %struct.elevator_type, ptr %33, i32 0, i32 1, !dbg !6294
  %init_hctx = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops25, i32 0, i32 2, !dbg !6295
  %34 = load ptr, ptr %init_hctx, align 8, !dbg !6295
  %tobool26 = icmp ne ptr %34, null, !dbg !6291
  br i1 %tobool26, label %if.then27, label %if.end35, !dbg !6296

if.then27:                                        ; preds = %for.body24
  %35 = load ptr, ptr %e.addr, align 8, !dbg !6297
  %ops28 = getelementptr inbounds %struct.elevator_type, ptr %35, i32 0, i32 1, !dbg !6299
  %init_hctx29 = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops28, i32 0, i32 2, !dbg !6300
  %36 = load ptr, ptr %init_hctx29, align 8, !dbg !6300
  %37 = load ptr, ptr %hctx, align 8, !dbg !6301
  %38 = load i64, ptr %i, align 8, !dbg !6302
  %conv30 = trunc i64 %38 to i32, !dbg !6302
  %call31 = call i32 %36(ptr noundef %37, i32 noundef %conv30) #9, !dbg !6297
  store i32 %call31, ptr %ret, align 4, !dbg !6303
  %39 = load i32, ptr %ret, align 4, !dbg !6304
  %tobool32 = icmp ne i32 %39, 0, !dbg !6304
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !6306

if.then33:                                        ; preds = %if.then27
  %40 = load ptr, ptr %q.addr, align 8, !dbg !6307
  %elevator = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 1, !dbg !6309
  %41 = load ptr, ptr %elevator, align 8, !dbg !6309
  store ptr %41, ptr %eq, align 8, !dbg !6310
  %42 = load ptr, ptr %q.addr, align 8, !dbg !6311
  call void @blk_mq_sched_free_rqs(ptr noundef %42) #9, !dbg !6312
  %43 = load ptr, ptr %q.addr, align 8, !dbg !6313
  %44 = load ptr, ptr %eq, align 8, !dbg !6314
  call void @blk_mq_exit_sched(ptr noundef %43, ptr noundef %44) #9, !dbg !6315
  %45 = load ptr, ptr %eq, align 8, !dbg !6316
  %kobj = getelementptr inbounds %struct.elevator_queue, ptr %45, i32 0, i32 2, !dbg !6317
  call void @kobject_put(ptr noundef %kobj) #9, !dbg !6318
  %46 = load i32, ptr %ret, align 4, !dbg !6319
  store i32 %46, ptr %retval, align 4, !dbg !6320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6320

if.end34:                                         ; preds = %if.then27
  br label %if.end35, !dbg !6321

if.end35:                                         ; preds = %if.end34, %for.body24
  %47 = load ptr, ptr %q.addr, align 8, !dbg !6322
  %debugfs_mutex36 = getelementptr inbounds %struct.request_queue, ptr %47, i32 0, i32 56, !dbg !6323
  call void @mutex_lock(ptr noundef %debugfs_mutex36) #9, !dbg !6324
  %48 = load ptr, ptr %q.addr, align 8, !dbg !6325
  %49 = load ptr, ptr %hctx, align 8, !dbg !6326
  call void @blk_mq_debugfs_register_sched_hctx(ptr noundef %48, ptr noundef %49) #9, !dbg !6327
  %50 = load ptr, ptr %q.addr, align 8, !dbg !6328
  %debugfs_mutex37 = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 56, !dbg !6329
  call void @mutex_unlock(ptr noundef %debugfs_mutex37) #9, !dbg !6330
  br label %for.inc38, !dbg !6331

for.inc38:                                        ; preds = %if.end35
  %51 = load ptr, ptr %q.addr, align 8, !dbg !6289
  %hctx_table39 = getelementptr inbounds %struct.request_queue, ptr %51, i32 0, i32 9, !dbg !6289
  %call40 = call ptr @xa_find_after(ptr noundef %hctx_table39, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6289
  store ptr %call40, ptr %hctx, align 8, !dbg !6289
  br label %for.cond22, !dbg !6289, !llvm.loop !6332

for.end41:                                        ; preds = %for.cond22
  store i32 0, ptr %retval, align 4, !dbg !6334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6334

err_free_map_and_rqs:                             ; preds = %if.then17, %if.then11
  call void @llvm.dbg.label(metadata !6213), !dbg !6335
  %52 = load ptr, ptr %q.addr, align 8, !dbg !6336
  call void @blk_mq_sched_free_rqs(ptr noundef %52) #9, !dbg !6337
  %53 = load ptr, ptr %q.addr, align 8, !dbg !6338
  %54 = load i32, ptr %flags, align 4, !dbg !6339
  call void @blk_mq_sched_tags_teardown(ptr noundef %53, i32 noundef %54) #9, !dbg !6340
  %55 = load ptr, ptr %q.addr, align 8, !dbg !6341
  %elevator42 = getelementptr inbounds %struct.request_queue, ptr %55, i32 0, i32 1, !dbg !6342
  store ptr null, ptr %elevator42, align 8, !dbg !6343
  %56 = load i32, ptr %ret, align 4, !dbg !6344
  store i32 %56, ptr %retval, align 4, !dbg !6345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6345

cleanup:                                          ; preds = %err_free_map_and_rqs, %for.end41, %if.then33, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %eq) #10, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #10, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #10, !dbg !6346
  %57 = load i32, ptr %retval, align 4, !dbg !6346
  ret i32 %57, !dbg !6346
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @blk_mq_is_shared_tags(i32 noundef %flags) #6 align 16 !dbg !6347 {
entry:
  %flags.addr = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6351, metadata !DIExpression()), !dbg !6352
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6353
  %and = and i32 %0, 8, !dbg !6354
  %tobool = icmp ne i32 %and, 0, !dbg !6353
  ret i1 %tobool, !dbg !6355
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_mq_init_sched_shared_tags(ptr noundef %queue) #0 align 16 !dbg !6356 {
entry:
  %retval = alloca i32, align 4
  %queue.addr = alloca ptr, align 8
  %set = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %queue, ptr %queue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !6358, metadata !DIExpression()), !dbg !6360
  call void @llvm.lifetime.start.p0(i64 8, ptr %set) #10, !dbg !6361
  call void @llvm.dbg.declare(metadata ptr %set, metadata !6359, metadata !DIExpression()), !dbg !6362
  %0 = load ptr, ptr %queue.addr, align 8, !dbg !6363
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 51, !dbg !6364
  %1 = load ptr, ptr %tag_set, align 8, !dbg !6364
  store ptr %1, ptr %set, align 8, !dbg !6362
  %2 = load ptr, ptr %set, align 8, !dbg !6365
  %call = call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %2, i32 noundef -1, i32 noundef 2048) #9, !dbg !6366
  %3 = load ptr, ptr %queue.addr, align 8, !dbg !6367
  %sched_shared_tags = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 27, !dbg !6368
  store ptr %call, ptr %sched_shared_tags, align 8, !dbg !6369
  %4 = load ptr, ptr %queue.addr, align 8, !dbg !6370
  %sched_shared_tags1 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 27, !dbg !6372
  %5 = load ptr, ptr %sched_shared_tags1, align 8, !dbg !6372
  %tobool = icmp ne ptr %5, null, !dbg !6370
  br i1 %tobool, label %if.end, label %if.then, !dbg !6373

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6374

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %queue.addr, align 8, !dbg !6375
  call void @blk_mq_tag_update_sched_shared_tags(ptr noundef %6) #9, !dbg !6376
  store i32 0, ptr %retval, align 4, !dbg !6377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6377

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %set) #10, !dbg !6378
  %7 = load i32, ptr %retval, align 4, !dbg !6378
  ret i32 %7, !dbg !6378
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6379 dso_local ptr @xa_find(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_mq_sched_alloc_map_and_rqs(ptr noundef %q, ptr noundef %hctx, i32 noundef %hctx_idx) #0 align 16 !dbg !6382 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %hctx.addr = alloca ptr, align 8
  %hctx_idx.addr = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6386, metadata !DIExpression()), !dbg !6389
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !6387, metadata !DIExpression()), !dbg !6390
  store i32 %hctx_idx, ptr %hctx_idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hctx_idx.addr, metadata !6388, metadata !DIExpression()), !dbg !6391
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6392
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 51, !dbg !6394
  %1 = load ptr, ptr %tag_set, align 8, !dbg !6394
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 9, !dbg !6395
  %2 = load i32, ptr %flags, align 4, !dbg !6395
  %call = call zeroext i1 @blk_mq_is_shared_tags(i32 noundef %2) #9, !dbg !6396
  br i1 %call, label %if.then, label %if.end, !dbg !6397

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %q.addr, align 8, !dbg !6398
  %sched_shared_tags = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 27, !dbg !6400
  %4 = load ptr, ptr %sched_shared_tags, align 8, !dbg !6400
  %5 = load ptr, ptr %hctx.addr, align 8, !dbg !6401
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 20, !dbg !6402
  store ptr %4, ptr %sched_tags, align 8, !dbg !6403
  store i32 0, ptr %retval, align 4, !dbg !6404
  br label %return, !dbg !6404

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %q.addr, align 8, !dbg !6405
  %tag_set1 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 51, !dbg !6406
  %7 = load ptr, ptr %tag_set1, align 8, !dbg !6406
  %8 = load i32, ptr %hctx_idx.addr, align 4, !dbg !6407
  %9 = load ptr, ptr %q.addr, align 8, !dbg !6408
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 21, !dbg !6409
  %10 = load i64, ptr %nr_requests, align 8, !dbg !6409
  %conv = trunc i64 %10 to i32, !dbg !6408
  %call2 = call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %7, i32 noundef %8, i32 noundef %conv) #9, !dbg !6410
  %11 = load ptr, ptr %hctx.addr, align 8, !dbg !6411
  %sched_tags3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %11, i32 0, i32 20, !dbg !6412
  store ptr %call2, ptr %sched_tags3, align 8, !dbg !6413
  %12 = load ptr, ptr %hctx.addr, align 8, !dbg !6414
  %sched_tags4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 20, !dbg !6416
  %13 = load ptr, ptr %sched_tags4, align 8, !dbg !6416
  %tobool = icmp ne ptr %13, null, !dbg !6414
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !6417

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6418
  br label %return, !dbg !6418

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6419
  br label %return, !dbg !6419

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !6420
  ret i32 %14, !dbg !6420
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6421 dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6422 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6426 dso_local void @blk_mq_debugfs_register_sched(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6429 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_mq_sched_free_rqs(ptr noundef %q) #0 align 16 !dbg !6430 {
entry:
  %q.addr = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6432, metadata !DIExpression()), !dbg !6435
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #10, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %hctx, metadata !6433, metadata !DIExpression()), !dbg !6437
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6434, metadata !DIExpression()), !dbg !6439
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6440
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 51, !dbg !6442
  %1 = load ptr, ptr %tag_set, align 8, !dbg !6442
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 9, !dbg !6443
  %2 = load i32, ptr %flags, align 4, !dbg !6443
  %call = call zeroext i1 @blk_mq_is_shared_tags(i32 noundef %2) #9, !dbg !6444
  br i1 %call, label %if.then, label %if.else, !dbg !6445

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %q.addr, align 8, !dbg !6446
  %tag_set1 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 51, !dbg !6448
  %4 = load ptr, ptr %tag_set1, align 8, !dbg !6448
  %5 = load ptr, ptr %q.addr, align 8, !dbg !6449
  %sched_shared_tags = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 27, !dbg !6450
  %6 = load ptr, ptr %sched_shared_tags, align 8, !dbg !6450
  call void @blk_mq_free_rqs(ptr noundef %4, ptr noundef %6, i32 noundef -1) #9, !dbg !6451
  br label %if.end9, !dbg !6452

if.else:                                          ; preds = %entry
  store i64 0, ptr %i, align 8, !dbg !6453
  %7 = load ptr, ptr %q.addr, align 8, !dbg !6453
  %hctx_table = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 9, !dbg !6453
  %call2 = call ptr @xa_find(ptr noundef %hctx_table, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6453
  store ptr %call2, ptr %hctx, align 8, !dbg !6453
  br label %for.cond, !dbg !6453

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load ptr, ptr %hctx, align 8, !dbg !6456
  %tobool = icmp ne ptr %8, null, !dbg !6453
  br i1 %tobool, label %for.body, label %for.end, !dbg !6453

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %hctx, align 8, !dbg !6458
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %9, i32 0, i32 20, !dbg !6461
  %10 = load ptr, ptr %sched_tags, align 8, !dbg !6461
  %tobool3 = icmp ne ptr %10, null, !dbg !6458
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6462

if.then4:                                         ; preds = %for.body
  %11 = load ptr, ptr %q.addr, align 8, !dbg !6463
  %tag_set5 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 51, !dbg !6464
  %12 = load ptr, ptr %tag_set5, align 8, !dbg !6464
  %13 = load ptr, ptr %hctx, align 8, !dbg !6465
  %sched_tags6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 20, !dbg !6466
  %14 = load ptr, ptr %sched_tags6, align 8, !dbg !6466
  %15 = load i64, ptr %i, align 8, !dbg !6467
  %conv = trunc i64 %15 to i32, !dbg !6467
  call void @blk_mq_free_rqs(ptr noundef %12, ptr noundef %14, i32 noundef %conv) #9, !dbg !6468
  br label %if.end, !dbg !6468

if.end:                                           ; preds = %if.then4, %for.body
  br label %for.inc, !dbg !6469

for.inc:                                          ; preds = %if.end
  %16 = load ptr, ptr %q.addr, align 8, !dbg !6456
  %hctx_table7 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 9, !dbg !6456
  %call8 = call ptr @xa_find_after(ptr noundef %hctx_table7, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6456
  store ptr %call8, ptr %hctx, align 8, !dbg !6456
  br label %for.cond, !dbg !6456, !llvm.loop !6470

for.end:                                          ; preds = %for.cond
  br label %if.end9

if.end9:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #10, !dbg !6472
  ret void, !dbg !6472
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_mq_exit_sched(ptr noundef %q, ptr noundef %e) #0 align 16 !dbg !6473 {
entry:
  %q.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  %i = alloca i64, align 8
  %flags = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6477, metadata !DIExpression()), !dbg !6482
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !6478, metadata !DIExpression()), !dbg !6483
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #10, !dbg !6484
  call void @llvm.dbg.declare(metadata ptr %hctx, metadata !6479, metadata !DIExpression()), !dbg !6485
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !6486
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6480, metadata !DIExpression()), !dbg !6487
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #10, !dbg !6488
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6481, metadata !DIExpression()), !dbg !6489
  store i32 0, ptr %flags, align 4, !dbg !6489
  store i64 0, ptr %i, align 8, !dbg !6490
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6490
  %hctx_table = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9, !dbg !6490
  %call = call ptr @xa_find(ptr noundef %hctx_table, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6490
  store ptr %call, ptr %hctx, align 8, !dbg !6490
  br label %for.cond, !dbg !6490

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %hctx, align 8, !dbg !6492
  %tobool = icmp ne ptr %1, null, !dbg !6490
  br i1 %tobool, label %for.body, label %for.end, !dbg !6490

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %q.addr, align 8, !dbg !6494
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 56, !dbg !6496
  call void @mutex_lock(ptr noundef %debugfs_mutex) #9, !dbg !6497
  %3 = load ptr, ptr %hctx, align 8, !dbg !6498
  call void @blk_mq_debugfs_unregister_sched_hctx(ptr noundef %3) #9, !dbg !6499
  %4 = load ptr, ptr %q.addr, align 8, !dbg !6500
  %debugfs_mutex1 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 56, !dbg !6501
  call void @mutex_unlock(ptr noundef %debugfs_mutex1) #9, !dbg !6502
  %5 = load ptr, ptr %e.addr, align 8, !dbg !6503
  %type = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 0, !dbg !6505
  %6 = load ptr, ptr %type, align 8, !dbg !6505
  %ops = getelementptr inbounds %struct.elevator_type, ptr %6, i32 0, i32 1, !dbg !6506
  %exit_hctx = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops, i32 0, i32 3, !dbg !6507
  %7 = load ptr, ptr %exit_hctx, align 8, !dbg !6507
  %tobool2 = icmp ne ptr %7, null, !dbg !6503
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !6508

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %hctx, align 8, !dbg !6509
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %8, i32 0, i32 6, !dbg !6510
  %9 = load ptr, ptr %sched_data, align 16, !dbg !6510
  %tobool3 = icmp ne ptr %9, null, !dbg !6509
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6511

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %e.addr, align 8, !dbg !6512
  %type4 = getelementptr inbounds %struct.elevator_queue, ptr %10, i32 0, i32 0, !dbg !6514
  %11 = load ptr, ptr %type4, align 8, !dbg !6514
  %ops5 = getelementptr inbounds %struct.elevator_type, ptr %11, i32 0, i32 1, !dbg !6515
  %exit_hctx6 = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops5, i32 0, i32 3, !dbg !6516
  %12 = load ptr, ptr %exit_hctx6, align 8, !dbg !6516
  %13 = load ptr, ptr %hctx, align 8, !dbg !6517
  %14 = load i64, ptr %i, align 8, !dbg !6518
  %conv = trunc i64 %14 to i32, !dbg !6518
  call void %12(ptr noundef %13, i32 noundef %conv) #9, !dbg !6512
  %15 = load ptr, ptr %hctx, align 8, !dbg !6519
  %sched_data7 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %15, i32 0, i32 6, !dbg !6520
  store ptr null, ptr %sched_data7, align 16, !dbg !6521
  br label %if.end, !dbg !6522

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %16 = load ptr, ptr %hctx, align 8, !dbg !6523
  %flags8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %16, i32 0, i32 5, !dbg !6524
  %17 = load i64, ptr %flags8, align 8, !dbg !6524
  %conv9 = trunc i64 %17 to i32, !dbg !6523
  store i32 %conv9, ptr %flags, align 4, !dbg !6525
  br label %for.inc, !dbg !6526

for.inc:                                          ; preds = %if.end
  %18 = load ptr, ptr %q.addr, align 8, !dbg !6492
  %hctx_table10 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 9, !dbg !6492
  %call11 = call ptr @xa_find_after(ptr noundef %hctx_table10, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6492
  store ptr %call11, ptr %hctx, align 8, !dbg !6492
  br label %for.cond, !dbg !6492, !llvm.loop !6527

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %q.addr, align 8, !dbg !6529
  %debugfs_mutex12 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 56, !dbg !6530
  call void @mutex_lock(ptr noundef %debugfs_mutex12) #9, !dbg !6531
  %20 = load ptr, ptr %q.addr, align 8, !dbg !6532
  call void @blk_mq_debugfs_unregister_sched(ptr noundef %20) #9, !dbg !6533
  %21 = load ptr, ptr %q.addr, align 8, !dbg !6534
  %debugfs_mutex13 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 56, !dbg !6535
  call void @mutex_unlock(ptr noundef %debugfs_mutex13) #9, !dbg !6536
  %22 = load ptr, ptr %e.addr, align 8, !dbg !6537
  %type14 = getelementptr inbounds %struct.elevator_queue, ptr %22, i32 0, i32 0, !dbg !6539
  %23 = load ptr, ptr %type14, align 8, !dbg !6539
  %ops15 = getelementptr inbounds %struct.elevator_type, ptr %23, i32 0, i32 1, !dbg !6540
  %exit_sched = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops15, i32 0, i32 1, !dbg !6541
  %24 = load ptr, ptr %exit_sched, align 8, !dbg !6541
  %tobool16 = icmp ne ptr %24, null, !dbg !6537
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !6542

if.then17:                                        ; preds = %for.end
  %25 = load ptr, ptr %e.addr, align 8, !dbg !6543
  %type18 = getelementptr inbounds %struct.elevator_queue, ptr %25, i32 0, i32 0, !dbg !6544
  %26 = load ptr, ptr %type18, align 8, !dbg !6544
  %ops19 = getelementptr inbounds %struct.elevator_type, ptr %26, i32 0, i32 1, !dbg !6545
  %exit_sched20 = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops19, i32 0, i32 1, !dbg !6546
  %27 = load ptr, ptr %exit_sched20, align 8, !dbg !6546
  %28 = load ptr, ptr %e.addr, align 8, !dbg !6547
  call void %27(ptr noundef %28) #9, !dbg !6543
  br label %if.end21, !dbg !6543

if.end21:                                         ; preds = %if.then17, %for.end
  %29 = load ptr, ptr %q.addr, align 8, !dbg !6548
  %30 = load i32, ptr %flags, align 4, !dbg !6549
  call void @blk_mq_sched_tags_teardown(ptr noundef %29, i32 noundef %30) #9, !dbg !6550
  %31 = load ptr, ptr %q.addr, align 8, !dbg !6551
  %elevator = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 1, !dbg !6552
  store ptr null, ptr %elevator, align 8, !dbg !6553
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #10, !dbg !6554
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !6554
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #10, !dbg !6554
  ret void, !dbg !6554
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6555 dso_local void @kobject_put(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6556 dso_local void @blk_mq_debugfs_register_sched_hctx(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_mq_sched_tags_teardown(ptr noundef %q, i32 noundef %flags) #0 align 16 !dbg !6559 {
entry:
  %q.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %hctx = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6563, metadata !DIExpression()), !dbg !6567
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6564, metadata !DIExpression()), !dbg !6568
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #10, !dbg !6569
  call void @llvm.dbg.declare(metadata ptr %hctx, metadata !6565, metadata !DIExpression()), !dbg !6570
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !6571
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6566, metadata !DIExpression()), !dbg !6572
  store i64 0, ptr %i, align 8, !dbg !6573
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6573
  %hctx_table = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9, !dbg !6573
  %call = call ptr @xa_find(ptr noundef %hctx_table, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6573
  store ptr %call, ptr %hctx, align 8, !dbg !6573
  br label %for.cond, !dbg !6573

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %hctx, align 8, !dbg !6575
  %tobool = icmp ne ptr %1, null, !dbg !6573
  br i1 %tobool, label %for.body, label %for.end, !dbg !6573

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %hctx, align 8, !dbg !6577
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 20, !dbg !6580
  %3 = load ptr, ptr %sched_tags, align 8, !dbg !6580
  %tobool1 = icmp ne ptr %3, null, !dbg !6577
  br i1 %tobool1, label %if.then, label %if.end6, !dbg !6581

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %flags.addr, align 4, !dbg !6582
  %call2 = call zeroext i1 @blk_mq_is_shared_tags(i32 noundef %4) #9, !dbg !6585
  br i1 %call2, label %if.end, label %if.then3, !dbg !6586

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %hctx, align 8, !dbg !6587
  %sched_tags4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 20, !dbg !6588
  %6 = load ptr, ptr %sched_tags4, align 8, !dbg !6588
  call void @blk_mq_free_rq_map(ptr noundef %6) #9, !dbg !6589
  br label %if.end, !dbg !6589

if.end:                                           ; preds = %if.then3, %if.then
  %7 = load ptr, ptr %hctx, align 8, !dbg !6590
  %sched_tags5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 20, !dbg !6591
  store ptr null, ptr %sched_tags5, align 8, !dbg !6592
  br label %if.end6, !dbg !6593

if.end6:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !6594

for.inc:                                          ; preds = %if.end6
  %8 = load ptr, ptr %q.addr, align 8, !dbg !6575
  %hctx_table7 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 9, !dbg !6575
  %call8 = call ptr @xa_find_after(ptr noundef %hctx_table7, ptr noundef %i, i64 noundef -1, i32 noundef 8) #9, !dbg !6575
  store ptr %call8, ptr %hctx, align 8, !dbg !6575
  br label %for.cond, !dbg !6575, !llvm.loop !6595

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %flags.addr, align 4, !dbg !6597
  %call9 = call zeroext i1 @blk_mq_is_shared_tags(i32 noundef %9) #9, !dbg !6599
  br i1 %call9, label %if.then10, label %if.end11, !dbg !6600

if.then10:                                        ; preds = %for.end
  %10 = load ptr, ptr %q.addr, align 8, !dbg !6601
  call void @blk_mq_exit_sched_shared_tags(ptr noundef %10) #9, !dbg !6602
  br label %if.end11, !dbg !6602

if.end11:                                         ; preds = %if.then10, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !6603
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #10, !dbg !6603
  ret void, !dbg !6603
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6604 dso_local void @blk_mq_free_rqs(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6607 dso_local void @blk_mq_debugfs_unregister_sched_hctx(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6608 dso_local void @blk_mq_debugfs_unregister_sched(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6609 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6617, metadata !DIExpression()), !dbg !6619
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6618, metadata !DIExpression()), !dbg !6620
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6621
  %1 = load i64, ptr %size.addr, align 8, !dbg !6622
  %conv = trunc i64 %1 to i32, !dbg !6622
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !6623
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6624
  %3 = load i64, ptr %size.addr, align 8, !dbg !6624
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !6624
  ret void, !dbg !6625
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6626 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6629, metadata !DIExpression()), !dbg !6631
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6630, metadata !DIExpression()), !dbg !6632
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6633
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6634
  br i1 %1, label %cond.true, label %cond.false, !dbg !6634

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6635
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6636
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !6637
  %conv = zext i1 %call to i32, !dbg !6637
  br label %cond.end, !dbg !6634

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6638
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6639
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #9, !dbg !6640
  %conv2 = zext i1 %call1 to i32, !dbg !6640
  br label %cond.end, !dbg !6634

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6634
  %tobool = icmp ne i32 %cond, 0, !dbg !6634
  ret i1 %tobool, !dbg !6641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6642 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6648, metadata !DIExpression()), !dbg !6650
  ret i1 true, !dbg !6651
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !6652 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6657, metadata !DIExpression()), !dbg !6660
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6658, metadata !DIExpression()), !dbg !6661
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6659, metadata !DIExpression()), !dbg !6662
  ret void, !dbg !6663
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6664 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6668, metadata !DIExpression()), !dbg !6670
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6669, metadata !DIExpression()), !dbg !6671
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6672
  %and = and i64 %0, 63, !dbg !6673
  %shl = shl i64 1, %and, !dbg !6674
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6675
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6676
  %shr = ashr i64 %2, 6, !dbg !6677
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6675
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6675
  %and1 = and i64 %shl, %3, !dbg !6678
  %cmp = icmp ne i64 %and1, 0, !dbg !6679
  ret i1 %cmp, !dbg !6680
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6681 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6683, metadata !DIExpression()), !dbg !6686
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6684, metadata !DIExpression()), !dbg !6687
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !6688
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6685, metadata !DIExpression()), !dbg !6689
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6690
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6691
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !6692, !srcloc !6693
  %3 = icmp ult i8 %2, 2, !dbg !6692
  call void @llvm.assume(i1 %3), !dbg !6692
  store i8 %2, ptr %oldbit, align 1, !dbg !6692
  %4 = load i8, ptr %oldbit, align 1, !dbg !6694, !range !5949, !noundef !1111
  %tobool = trunc i8 %4 to i1, !dbg !6694
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !6695
  ret i1 %tobool, !dbg !6696
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6697 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6699, metadata !DIExpression()), !dbg !6701
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6700, metadata !DIExpression()), !dbg !6702
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6703
  %1 = load i64, ptr %size.addr, align 8, !dbg !6704
  %conv = trunc i64 %1 to i32, !dbg !6704
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !6705
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6706
  %3 = load i64, ptr %size.addr, align 8, !dbg !6706
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !6706
  ret void, !dbg !6707
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6708 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6710, metadata !DIExpression()), !dbg !6712
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6711, metadata !DIExpression()), !dbg !6713
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6714
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6716
  br i1 %1, label %if.then, label %if.else, !dbg !6717

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6718
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6718
  %shr = ashr i64 %3, 3, !dbg !6718
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6718
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6720
  %and = and i64 %4, 7, !dbg !6720
  %sh_prom = trunc i64 %and to i32, !dbg !6720
  %shl = shl i32 1, %sh_prom, !dbg !6720
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #10, !dbg !6721, !srcloc !6722
  br label %if.end, !dbg !6723

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6724
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6726
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !6727, !srcloc !6728
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6729
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6730 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6732, metadata !DIExpression()), !dbg !6734
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6733, metadata !DIExpression()), !dbg !6735
  ret i1 true, !dbg !6736
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6737 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6739, metadata !DIExpression()), !dbg !6741
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6740, metadata !DIExpression()), !dbg !6742
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6743
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6745
  br i1 %1, label %if.then, label %if.else, !dbg !6746

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6747
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6747
  %shr = ashr i64 %3, 3, !dbg !6747
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6747
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6749
  %and = and i64 %4, 7, !dbg !6749
  %sh_prom = trunc i64 %and to i32, !dbg !6749
  %shl = shl i32 1, %sh_prom, !dbg !6749
  %not = xor i32 %shl, -1, !dbg !6750
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #10, !dbg !6751, !srcloc !6752
  br label %if.end, !dbg !6753

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6754
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6756
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !6757, !srcloc !6758
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6759
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #6 align 16 !dbg !6760 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6762, metadata !DIExpression()), !dbg !6763
  br label %do.body, !dbg !6764

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6766

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6764
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6764
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6764
  store ptr %1, ptr %tmp, align 8, !dbg !6766
  %2 = load ptr, ptr %tmp, align 8, !dbg !6764
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6768
  %cmp = icmp eq ptr %2, %3, !dbg !6769
  %conv = zext i1 %cmp to i32, !dbg !6769
  ret i32 %conv, !dbg !6770
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_init(ptr noundef %list, ptr noundef %head) #6 align 16 !dbg !6771 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6775, metadata !DIExpression()), !dbg !6777
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6776, metadata !DIExpression()), !dbg !6778
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6779
  %call = call i32 @list_empty(ptr noundef %0) #9, !dbg !6781
  %tobool = icmp ne i32 %call, 0, !dbg !6781
  br i1 %tobool, label %if.end, label %if.then, !dbg !6782

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6783
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6785
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6786
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6787
  %4 = load ptr, ptr %next, align 8, !dbg !6787
  call void @__list_splice(ptr noundef %1, ptr noundef %2, ptr noundef %4) #9, !dbg !6788
  %5 = load ptr, ptr %list.addr, align 8, !dbg !6789
  call void @INIT_LIST_HEAD(ptr noundef %5) #9, !dbg !6790
  br label %if.end, !dbg !6791

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6792
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6793 dso_local zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_mq_do_dispatch_sched(ptr noundef %hctx) #0 align 16 !dbg !6796 {
entry:
  %hctx.addr = alloca ptr, align 8
  %end = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !6798, metadata !DIExpression()), !dbg !6801
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10, !dbg !6802
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6799, metadata !DIExpression()), !dbg !6803
  %0 = load volatile i64, ptr @jiffies, align 64, !dbg !6804
  %add = add i64 %0, 1000, !dbg !6805
  store i64 %add, ptr %end, align 8, !dbg !6803
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6806
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6800, metadata !DIExpression()), !dbg !6807
  br label %do.body, !dbg !6808

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %hctx.addr, align 8, !dbg !6809
  %call = call i32 @__blk_mq_do_dispatch_sched(ptr noundef %1) #9, !dbg !6811
  store i32 %call, ptr %ret, align 4, !dbg !6812
  %2 = load i32, ptr %ret, align 4, !dbg !6813
  %cmp = icmp ne i32 %2, 1, !dbg !6815
  br i1 %cmp, label %if.then, label %if.end, !dbg !6816

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !6817

if.end:                                           ; preds = %do.body
  %call1 = call zeroext i1 @need_resched() #9, !dbg !6818
  br i1 %call1, label %if.then3, label %lor.lhs.false, !dbg !6820

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, ptr %end, align 8, !dbg !6821
  %4 = load volatile i64, ptr @jiffies, align 64, !dbg !6821
  %sub = sub i64 %3, %4, !dbg !6821
  %cmp2 = icmp slt i64 %sub, 0, !dbg !6821
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6822

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %hctx.addr, align 8, !dbg !6823
  call void @blk_mq_delay_run_hw_queue(ptr noundef %5, i64 noundef 0) #9, !dbg !6825
  br label %do.end, !dbg !6826

if.end4:                                          ; preds = %lor.lhs.false
  br label %do.cond, !dbg !6827

do.cond:                                          ; preds = %if.end4
  br i1 true, label %do.body, label %do.end, !dbg !6827, !llvm.loop !6828

do.end:                                           ; preds = %do.cond, %if.then3, %if.then
  %6 = load i32, ptr %ret, align 4, !dbg !6830
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6831
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10, !dbg !6831
  ret i32 %6, !dbg !6832
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_mq_do_dispatch_ctx(ptr noundef %hctx) #0 align 16 !dbg !6833 {
entry:
  %hctx.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %rq_list = alloca %struct.list_head, align 8
  %ctx = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %rq = alloca ptr, align 8
  %budget_token = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !6835, metadata !DIExpression()), !dbg !6843
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #10, !dbg !6844
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6836, metadata !DIExpression()), !dbg !6845
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !6846
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7, !dbg !6847
  %1 = load ptr, ptr %queue, align 8, !dbg !6847
  store ptr %1, ptr %q, align 8, !dbg !6845
  call void @llvm.lifetime.start.p0(i64 16, ptr %rq_list) #10, !dbg !6848
  call void @llvm.dbg.declare(metadata ptr %rq_list, metadata !6837, metadata !DIExpression()), !dbg !6848
  %next = getelementptr inbounds %struct.list_head, ptr %rq_list, i32 0, i32 0, !dbg !6848
  store ptr %rq_list, ptr %next, align 8, !dbg !6848
  %prev = getelementptr inbounds %struct.list_head, ptr %rq_list, i32 0, i32 1, !dbg !6848
  store ptr %rq_list, ptr %prev, align 8, !dbg !6848
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #10, !dbg !6849
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6838, metadata !DIExpression()), !dbg !6850
  br label %do.body, !dbg !6851

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6853

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6853

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %hctx.addr, align 8, !dbg !6851
  %dispatch_from = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 11, !dbg !6851
  %3 = load volatile ptr, ptr %dispatch_from, align 16, !dbg !6851
  store ptr %3, ptr %tmp, align 8, !dbg !6853
  %4 = load ptr, ptr %tmp, align 8, !dbg !6851
  store ptr %4, ptr %ctx, align 8, !dbg !6850
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6855
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6839, metadata !DIExpression()), !dbg !6856
  store i32 0, ptr %ret, align 4, !dbg !6856
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #10, !dbg !6857
  call void @llvm.dbg.declare(metadata ptr %rq, metadata !6840, metadata !DIExpression()), !dbg !6858
  br label %do.body1, !dbg !6859

do.body1:                                         ; preds = %do.cond13, %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %budget_token) #10, !dbg !6860
  call void @llvm.dbg.declare(metadata ptr %budget_token, metadata !6841, metadata !DIExpression()), !dbg !6861
  %5 = load ptr, ptr %hctx.addr, align 8, !dbg !6862
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 0, !dbg !6864
  %dispatch = getelementptr inbounds %struct.anon.13, ptr %6, i32 0, i32 1, !dbg !6864
  %call = call i32 @list_empty_careful(ptr noundef %dispatch) #9, !dbg !6865
  %tobool = icmp ne i32 %call, 0, !dbg !6865
  br i1 %tobool, label %if.end, label %if.then, !dbg !6866

if.then:                                          ; preds = %do.body1
  store i32 -11, ptr %ret, align 4, !dbg !6867
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6869

if.end:                                           ; preds = %do.body1
  %7 = load ptr, ptr %hctx.addr, align 8, !dbg !6870
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 10, !dbg !6872
  %call2 = call zeroext i1 @sbitmap_any_bit_set(ptr noundef %ctx_map) #9, !dbg !6873
  br i1 %call2, label %if.end4, label %if.then3, !dbg !6874

if.then3:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6875

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %q, align 8, !dbg !6876
  %call5 = call i32 @blk_mq_get_dispatch_budget(ptr noundef %8) #9, !dbg !6877
  store i32 %call5, ptr %budget_token, align 4, !dbg !6878
  %9 = load i32, ptr %budget_token, align 4, !dbg !6879
  %cmp = icmp slt i32 %9, 0, !dbg !6881
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !6882

if.then6:                                         ; preds = %if.end4
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6883

if.end7:                                          ; preds = %if.end4
  %10 = load ptr, ptr %hctx.addr, align 8, !dbg !6884
  %11 = load ptr, ptr %ctx, align 8, !dbg !6885
  %call8 = call ptr @blk_mq_dequeue_from_ctx(ptr noundef %10, ptr noundef %11) #9, !dbg !6886
  store ptr %call8, ptr %rq, align 8, !dbg !6887
  %12 = load ptr, ptr %rq, align 8, !dbg !6888
  %tobool9 = icmp ne ptr %12, null, !dbg !6888
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6890

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr %q, align 8, !dbg !6891
  %14 = load i32, ptr %budget_token, align 4, !dbg !6893
  call void @blk_mq_put_dispatch_budget(ptr noundef %13, i32 noundef %14) #9, !dbg !6894
  %15 = load ptr, ptr %q, align 8, !dbg !6895
  call void @blk_mq_delay_run_hw_queues(ptr noundef %15, i64 noundef 3) #9, !dbg !6896
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6897

if.end11:                                         ; preds = %if.end7
  %16 = load ptr, ptr %rq, align 8, !dbg !6898
  %17 = load i32, ptr %budget_token, align 4, !dbg !6899
  call void @blk_mq_set_rq_budget_token(ptr noundef %16, i32 noundef %17) #9, !dbg !6900
  %18 = load ptr, ptr %rq, align 8, !dbg !6901
  %19 = getelementptr inbounds %struct.request, ptr %18, i32 0, i32 12, !dbg !6902
  call void @list_add(ptr noundef %19, ptr noundef %rq_list) #9, !dbg !6903
  %20 = load ptr, ptr %hctx.addr, align 8, !dbg !6904
  %21 = load ptr, ptr %rq, align 8, !dbg !6905
  %mq_ctx = getelementptr inbounds %struct.request, ptr %21, i32 0, i32 1, !dbg !6906
  %22 = load ptr, ptr %mq_ctx, align 8, !dbg !6906
  %call12 = call ptr @blk_mq_next_ctx(ptr noundef %20, ptr noundef %22) #9, !dbg !6907
  store ptr %call12, ptr %ctx, align 8, !dbg !6908
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6909
  br label %cleanup, !dbg !6909

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %budget_token) #10, !dbg !6909
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %do.end15
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond13, !dbg !6910

do.cond13:                                        ; preds = %cleanup.cont
  %23 = load ptr, ptr %rq, align 8, !dbg !6911
  %mq_hctx = getelementptr inbounds %struct.request, ptr %23, i32 0, i32 2, !dbg !6912
  %24 = load ptr, ptr %mq_hctx, align 8, !dbg !6912
  %call14 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %24, ptr noundef %rq_list, i32 noundef 1) #9, !dbg !6913
  br i1 %call14, label %do.body1, label %do.end15, !dbg !6910, !llvm.loop !6914

do.end15:                                         ; preds = %do.cond13, %cleanup
  br label %do.body16, !dbg !6916

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !6917

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !6919

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6919

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !6917

do.body20:                                        ; preds = %do.end19
  %25 = load ptr, ptr %ctx, align 8, !dbg !6921
  %26 = load ptr, ptr %hctx.addr, align 8, !dbg !6921
  %dispatch_from21 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %26, i32 0, i32 11, !dbg !6921
  store volatile ptr %25, ptr %dispatch_from21, align 16, !dbg !6921
  br label %do.cond22, !dbg !6921

do.cond22:                                        ; preds = %do.body20
  br label %do.end23, !dbg !6921

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !6917

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !6917

do.end25:                                         ; preds = %do.cond24
  %27 = load i32, ptr %ret, align 4, !dbg !6923
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #10, !dbg !6924
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6924
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #10, !dbg !6924
  call void @llvm.lifetime.end.p0(i64 16, ptr %rq_list) #10, !dbg !6924
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #10, !dbg !6924
  ret i32 %27, !dbg !6925

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6926 dso_local void @blk_mq_flush_busy_ctxs(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6929 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6933, metadata !DIExpression()), !dbg !6938
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6934, metadata !DIExpression()), !dbg !6939
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6935, metadata !DIExpression()), !dbg !6940
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #10, !dbg !6941
  call void @llvm.dbg.declare(metadata ptr %first, metadata !6936, metadata !DIExpression()), !dbg !6942
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6943
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6944
  %1 = load ptr, ptr %next1, align 8, !dbg !6944
  store ptr %1, ptr %first, align 8, !dbg !6942
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #10, !dbg !6945
  call void @llvm.dbg.declare(metadata ptr %last, metadata !6937, metadata !DIExpression()), !dbg !6946
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6947
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6948
  %3 = load ptr, ptr %prev2, align 8, !dbg !6948
  store ptr %3, ptr %last, align 8, !dbg !6946
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !6949
  %5 = load ptr, ptr %first, align 8, !dbg !6950
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !6951
  store ptr %4, ptr %prev3, align 8, !dbg !6952
  %6 = load ptr, ptr %first, align 8, !dbg !6953
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6954
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !6955
  store ptr %6, ptr %next4, align 8, !dbg !6956
  %8 = load ptr, ptr %next.addr, align 8, !dbg !6957
  %9 = load ptr, ptr %last, align 8, !dbg !6958
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !6959
  store ptr %8, ptr %next5, align 8, !dbg !6960
  %10 = load ptr, ptr %last, align 8, !dbg !6961
  %11 = load ptr, ptr %next.addr, align 8, !dbg !6962
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !6963
  store ptr %10, ptr %prev6, align 8, !dbg !6964
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #10, !dbg !6965
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #10, !dbg !6965
  ret void, !dbg !6965
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !6966 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6970, metadata !DIExpression()), !dbg !6971
  br label %do.body, !dbg !6972

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6973

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6975

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6973

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6977
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6977
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6977
  store volatile ptr %0, ptr %next, align 8, !dbg !6977
  br label %do.end3, !dbg !6977

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6973

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6979

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6980

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6982

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6980

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6984
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6984
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6984
  store volatile ptr %2, ptr %prev, align 8, !dbg !6984
  br label %do.end9, !dbg !6984

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6980

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6986
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__blk_mq_do_dispatch_sched(ptr noundef %hctx) #0 align 16 !dbg !6987 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %e = alloca ptr, align 8
  %multi_hctxs = alloca i8, align 1
  %run_queue = alloca i8, align 1
  %dispatched = alloca i8, align 1
  %busy = alloca i8, align 1
  %max_dispatch = alloca i32, align 4
  %rq_list = alloca %struct.list_head, align 8
  %count = alloca i32, align 4
  %rq = alloca ptr, align 8
  %budget_token = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !6989, metadata !DIExpression()), !dbg !7002
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #10, !dbg !7003
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6990, metadata !DIExpression()), !dbg !7004
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !7005
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7, !dbg !7006
  %1 = load ptr, ptr %queue, align 8, !dbg !7006
  store ptr %1, ptr %q, align 8, !dbg !7004
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #10, !dbg !7007
  call void @llvm.dbg.declare(metadata ptr %e, metadata !6991, metadata !DIExpression()), !dbg !7008
  %2 = load ptr, ptr %q, align 8, !dbg !7009
  %elevator = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 1, !dbg !7010
  %3 = load ptr, ptr %elevator, align 8, !dbg !7010
  store ptr %3, ptr %e, align 8, !dbg !7008
  call void @llvm.lifetime.start.p0(i64 1, ptr %multi_hctxs) #10, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %multi_hctxs, metadata !6992, metadata !DIExpression()), !dbg !7012
  store i8 0, ptr %multi_hctxs, align 1, !dbg !7012
  call void @llvm.lifetime.start.p0(i64 1, ptr %run_queue) #10, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %run_queue, metadata !6993, metadata !DIExpression()), !dbg !7013
  store i8 0, ptr %run_queue, align 1, !dbg !7013
  call void @llvm.lifetime.start.p0(i64 1, ptr %dispatched) #10, !dbg !7014
  call void @llvm.dbg.declare(metadata ptr %dispatched, metadata !6994, metadata !DIExpression()), !dbg !7015
  store i8 0, ptr %dispatched, align 1, !dbg !7015
  call void @llvm.lifetime.start.p0(i64 1, ptr %busy) #10, !dbg !7014
  call void @llvm.dbg.declare(metadata ptr %busy, metadata !6995, metadata !DIExpression()), !dbg !7016
  store i8 0, ptr %busy, align 1, !dbg !7016
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_dispatch) #10, !dbg !7017
  call void @llvm.dbg.declare(metadata ptr %max_dispatch, metadata !6996, metadata !DIExpression()), !dbg !7018
  call void @llvm.lifetime.start.p0(i64 16, ptr %rq_list) #10, !dbg !7019
  call void @llvm.dbg.declare(metadata ptr %rq_list, metadata !6997, metadata !DIExpression()), !dbg !7019
  %next = getelementptr inbounds %struct.list_head, ptr %rq_list, i32 0, i32 0, !dbg !7019
  store ptr %rq_list, ptr %next, align 8, !dbg !7019
  %prev = getelementptr inbounds %struct.list_head, ptr %rq_list, i32 0, i32 1, !dbg !7019
  store ptr %rq_list, ptr %prev, align 8, !dbg !7019
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #10, !dbg !7020
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6998, metadata !DIExpression()), !dbg !7021
  store i32 0, ptr %count, align 4, !dbg !7021
  %4 = load ptr, ptr %hctx.addr, align 8, !dbg !7022
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 12, !dbg !7024
  %5 = load i32, ptr %dispatch_busy, align 8, !dbg !7024
  %tobool = icmp ne i32 %5, 0, !dbg !7022
  br i1 %tobool, label %if.then, label %if.else, !dbg !7025

if.then:                                          ; preds = %entry
  store i32 1, ptr %max_dispatch, align 4, !dbg !7026
  br label %if.end, !dbg !7027

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %hctx.addr, align 8, !dbg !7028
  %queue1 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 7, !dbg !7029
  %7 = load ptr, ptr %queue1, align 8, !dbg !7029
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 21, !dbg !7030
  %8 = load i64, ptr %nr_requests, align 8, !dbg !7030
  %conv = trunc i64 %8 to i32, !dbg !7028
  store i32 %conv, ptr %max_dispatch, align 4, !dbg !7031
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body, !dbg !7032

do.body:                                          ; preds = %do.cond, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #10, !dbg !7033
  call void @llvm.dbg.declare(metadata ptr %rq, metadata !6999, metadata !DIExpression()), !dbg !7034
  call void @llvm.lifetime.start.p0(i64 4, ptr %budget_token) #10, !dbg !7035
  call void @llvm.dbg.declare(metadata ptr %budget_token, metadata !7001, metadata !DIExpression()), !dbg !7036
  %9 = load ptr, ptr %e, align 8, !dbg !7037
  %type = getelementptr inbounds %struct.elevator_queue, ptr %9, i32 0, i32 0, !dbg !7039
  %10 = load ptr, ptr %type, align 8, !dbg !7039
  %ops = getelementptr inbounds %struct.elevator_type, ptr %10, i32 0, i32 1, !dbg !7040
  %has_work = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops, i32 0, i32 15, !dbg !7041
  %11 = load ptr, ptr %has_work, align 8, !dbg !7041
  %tobool2 = icmp ne ptr %11, null, !dbg !7037
  br i1 %tobool2, label %land.lhs.true, label %if.end7, !dbg !7042

land.lhs.true:                                    ; preds = %do.body
  %12 = load ptr, ptr %e, align 8, !dbg !7043
  %type3 = getelementptr inbounds %struct.elevator_queue, ptr %12, i32 0, i32 0, !dbg !7044
  %13 = load ptr, ptr %type3, align 8, !dbg !7044
  %ops4 = getelementptr inbounds %struct.elevator_type, ptr %13, i32 0, i32 1, !dbg !7045
  %has_work5 = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops4, i32 0, i32 15, !dbg !7046
  %14 = load ptr, ptr %has_work5, align 8, !dbg !7046
  %15 = load ptr, ptr %hctx.addr, align 8, !dbg !7047
  %call = call zeroext i1 %14(ptr noundef %15) #9, !dbg !7043
  br i1 %call, label %if.end7, label %if.then6, !dbg !7048

if.then6:                                         ; preds = %land.lhs.true
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7049

if.end7:                                          ; preds = %land.lhs.true, %do.body
  %16 = load ptr, ptr %hctx.addr, align 8, !dbg !7050
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %16, i32 0, i32 0, !dbg !7052
  %dispatch = getelementptr inbounds %struct.anon.13, ptr %17, i32 0, i32 1, !dbg !7052
  %call8 = call i32 @list_empty_careful(ptr noundef %dispatch) #9, !dbg !7053
  %tobool9 = icmp ne i32 %call8, 0, !dbg !7053
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !7054

if.then10:                                        ; preds = %if.end7
  store i8 1, ptr %busy, align 1, !dbg !7055
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7057

if.end11:                                         ; preds = %if.end7
  %18 = load ptr, ptr %q, align 8, !dbg !7058
  %call12 = call i32 @blk_mq_get_dispatch_budget(ptr noundef %18) #9, !dbg !7059
  store i32 %call12, ptr %budget_token, align 4, !dbg !7060
  %19 = load i32, ptr %budget_token, align 4, !dbg !7061
  %cmp = icmp slt i32 %19, 0, !dbg !7063
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !7064

if.then14:                                        ; preds = %if.end11
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7065

if.end15:                                         ; preds = %if.end11
  %20 = load ptr, ptr %e, align 8, !dbg !7066
  %type16 = getelementptr inbounds %struct.elevator_queue, ptr %20, i32 0, i32 0, !dbg !7067
  %21 = load ptr, ptr %type16, align 8, !dbg !7067
  %ops17 = getelementptr inbounds %struct.elevator_type, ptr %21, i32 0, i32 1, !dbg !7068
  %dispatch_request = getelementptr inbounds %struct.elevator_mq_ops, ptr %ops17, i32 0, i32 14, !dbg !7069
  %22 = load ptr, ptr %dispatch_request, align 8, !dbg !7069
  %23 = load ptr, ptr %hctx.addr, align 8, !dbg !7070
  %call18 = call ptr %22(ptr noundef %23) #9, !dbg !7066
  store ptr %call18, ptr %rq, align 8, !dbg !7071
  %24 = load ptr, ptr %rq, align 8, !dbg !7072
  %tobool19 = icmp ne ptr %24, null, !dbg !7072
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !7074

if.then20:                                        ; preds = %if.end15
  %25 = load ptr, ptr %q, align 8, !dbg !7075
  %26 = load i32, ptr %budget_token, align 4, !dbg !7077
  call void @blk_mq_put_dispatch_budget(ptr noundef %25, i32 noundef %26) #9, !dbg !7078
  store i8 1, ptr %run_queue, align 1, !dbg !7079
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7080

if.end21:                                         ; preds = %if.end15
  %27 = load ptr, ptr %rq, align 8, !dbg !7081
  %28 = load i32, ptr %budget_token, align 4, !dbg !7082
  call void @blk_mq_set_rq_budget_token(ptr noundef %27, i32 noundef %28) #9, !dbg !7083
  %29 = load ptr, ptr %rq, align 8, !dbg !7084
  %30 = getelementptr inbounds %struct.request, ptr %29, i32 0, i32 12, !dbg !7085
  call void @list_add_tail(ptr noundef %30, ptr noundef %rq_list) #9, !dbg !7086
  %31 = load i32, ptr %count, align 4, !dbg !7087
  %inc = add i32 %31, 1, !dbg !7087
  store i32 %inc, ptr %count, align 4, !dbg !7087
  %32 = load ptr, ptr %rq, align 8, !dbg !7088
  %mq_hctx = getelementptr inbounds %struct.request, ptr %32, i32 0, i32 2, !dbg !7090
  %33 = load ptr, ptr %mq_hctx, align 8, !dbg !7090
  %34 = load ptr, ptr %hctx.addr, align 8, !dbg !7091
  %cmp22 = icmp ne ptr %33, %34, !dbg !7092
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !7093

if.then24:                                        ; preds = %if.end21
  store i8 1, ptr %multi_hctxs, align 1, !dbg !7094
  br label %if.end25, !dbg !7095

if.end25:                                         ; preds = %if.then24, %if.end21
  %35 = load ptr, ptr %rq, align 8, !dbg !7096
  %call26 = call zeroext i1 @blk_mq_get_driver_tag(ptr noundef %35) #9, !dbg !7098
  br i1 %call26, label %if.end28, label %if.then27, !dbg !7099

if.then27:                                        ; preds = %if.end25
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7100

if.end28:                                         ; preds = %if.end25
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7101
  br label %cleanup, !dbg !7101

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then20, %if.then14, %if.then10, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %budget_token) #10, !dbg !7101
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #10, !dbg !7101
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %do.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !7102

do.cond:                                          ; preds = %cleanup.cont
  %36 = load i32, ptr %count, align 4, !dbg !7103
  %37 = load i32, ptr %max_dispatch, align 4, !dbg !7104
  %cmp30 = icmp ult i32 %36, %37, !dbg !7105
  br i1 %cmp30, label %do.body, label %do.end, !dbg !7102, !llvm.loop !7106

do.end:                                           ; preds = %do.cond, %cleanup
  %38 = load i32, ptr %count, align 4, !dbg !7108
  %tobool32 = icmp ne i32 %38, 0, !dbg !7108
  br i1 %tobool32, label %if.else37, label %if.then33, !dbg !7110

if.then33:                                        ; preds = %do.end
  %39 = load i8, ptr %run_queue, align 1, !dbg !7111, !range !5949, !noundef !1111
  %tobool34 = trunc i8 %39 to i1, !dbg !7111
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !7114

if.then35:                                        ; preds = %if.then33
  %40 = load ptr, ptr %q, align 8, !dbg !7115
  call void @blk_mq_delay_run_hw_queues(ptr noundef %40, i64 noundef 3) #9, !dbg !7116
  br label %if.end36, !dbg !7116

if.end36:                                         ; preds = %if.then35, %if.then33
  br label %if.end54, !dbg !7117

if.else37:                                        ; preds = %do.end
  %41 = load i8, ptr %multi_hctxs, align 1, !dbg !7118, !range !5949, !noundef !1111
  %tobool38 = trunc i8 %41 to i1, !dbg !7118
  br i1 %tobool38, label %if.then39, label %if.else50, !dbg !7120

if.then39:                                        ; preds = %if.else37
  call void @list_sort(ptr noundef null, ptr noundef %rq_list, ptr noundef @sched_rq_cmp) #9, !dbg !7121
  br label %do.body40, !dbg !7123

do.body40:                                        ; preds = %do.cond46, %if.then39
  %call41 = call zeroext i1 @blk_mq_dispatch_hctx_list(ptr noundef %rq_list) #9, !dbg !7124
  %conv42 = zext i1 %call41 to i32, !dbg !7124
  %42 = load i8, ptr %dispatched, align 1, !dbg !7126, !range !5949, !noundef !1111
  %tobool43 = trunc i8 %42 to i1, !dbg !7126
  %conv44 = zext i1 %tobool43 to i32, !dbg !7126
  %or = or i32 %conv44, %conv42, !dbg !7126
  %tobool45 = icmp ne i32 %or, 0, !dbg !7126
  %frombool = zext i1 %tobool45 to i8, !dbg !7126
  store i8 %frombool, ptr %dispatched, align 1, !dbg !7126
  br label %do.cond46, !dbg !7127

do.cond46:                                        ; preds = %do.body40
  %call47 = call i32 @list_empty(ptr noundef %rq_list) #9, !dbg !7128
  %tobool48 = icmp ne i32 %call47, 0, !dbg !7129
  %lnot = xor i1 %tobool48, true, !dbg !7129
  br i1 %lnot, label %do.body40, label %do.end49, !dbg !7127, !llvm.loop !7130

do.end49:                                         ; preds = %do.cond46
  br label %if.end53, !dbg !7132

if.else50:                                        ; preds = %if.else37
  %43 = load ptr, ptr %hctx.addr, align 8, !dbg !7133
  %44 = load i32, ptr %count, align 4, !dbg !7135
  %call51 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %43, ptr noundef %rq_list, i32 noundef %44) #9, !dbg !7136
  %frombool52 = zext i1 %call51 to i8, !dbg !7137
  store i8 %frombool52, ptr %dispatched, align 1, !dbg !7137
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %do.end49
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end36
  %45 = load i8, ptr %busy, align 1, !dbg !7138, !range !5949, !noundef !1111
  %tobool55 = trunc i8 %45 to i1, !dbg !7138
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !7140

if.then56:                                        ; preds = %if.end54
  store i32 -11, ptr %retval, align 4, !dbg !7141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61, !dbg !7141

if.end57:                                         ; preds = %if.end54
  %46 = load i8, ptr %dispatched, align 1, !dbg !7142, !range !5949, !noundef !1111
  %tobool58 = trunc i8 %46 to i1, !dbg !7142
  %lnot59 = xor i1 %tobool58, true, !dbg !7143
  %lnot60 = xor i1 %lnot59, true, !dbg !7144
  %lnot.ext = zext i1 %lnot60 to i32, !dbg !7144
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !7145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61, !dbg !7145

cleanup61:                                        ; preds = %if.end57, %if.then56
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #10, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 16, ptr %rq_list) #10, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_dispatch) #10, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 1, ptr %busy) #10, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 1, ptr %dispatched) #10, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 1, ptr %run_queue) #10, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 1, ptr %multi_hctxs) #10, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #10, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #10, !dbg !7146
  %47 = load i32, ptr %retval, align 4, !dbg !7146
  ret i32 %47, !dbg !7146

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #3 align 16 !dbg !7147 {
entry:
  %call = call zeroext i1 @tif_need_resched() #9, !dbg !7148
  %lnot = xor i1 %call, true, !dbg !7148
  %lnot1 = xor i1 %lnot, true, !dbg !7148
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7148
  %conv = sext i32 %lnot.ext to i64, !dbg !7148
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7148
  %tobool = icmp ne i64 %expval, 0, !dbg !7148
  ret i1 %tobool, !dbg !7149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7150 dso_local void @blk_mq_delay_run_hw_queue(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_mq_get_dispatch_budget(ptr noundef %q) #6 align 16 !dbg !7153 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !7155, metadata !DIExpression()), !dbg !7156
  %0 = load ptr, ptr %q.addr, align 8, !dbg !7157
  %mq_ops = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 6, !dbg !7159
  %1 = load ptr, ptr %mq_ops, align 8, !dbg !7159
  %get_budget = getelementptr inbounds %struct.blk_mq_ops, ptr %1, i32 0, i32 3, !dbg !7160
  %2 = load ptr, ptr %get_budget, align 8, !dbg !7160
  %tobool = icmp ne ptr %2, null, !dbg !7157
  br i1 %tobool, label %if.then, label %if.end, !dbg !7161

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %q.addr, align 8, !dbg !7162
  %mq_ops1 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 6, !dbg !7163
  %4 = load ptr, ptr %mq_ops1, align 8, !dbg !7163
  %get_budget2 = getelementptr inbounds %struct.blk_mq_ops, ptr %4, i32 0, i32 3, !dbg !7164
  %5 = load ptr, ptr %get_budget2, align 8, !dbg !7164
  %6 = load ptr, ptr %q.addr, align 8, !dbg !7165
  %call = call i32 %5(ptr noundef %6) #9, !dbg !7162
  store i32 %call, ptr %retval, align 4, !dbg !7166
  br label %return, !dbg !7166

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7167
  br label %return, !dbg !7167

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !7168
  ret i32 %7, !dbg !7168
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_mq_put_dispatch_budget(ptr noundef %q, i32 noundef %budget_token) #6 align 16 !dbg !7169 {
entry:
  %q.addr = alloca ptr, align 8
  %budget_token.addr = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !7171, metadata !DIExpression()), !dbg !7173
  store i32 %budget_token, ptr %budget_token.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %budget_token.addr, metadata !7172, metadata !DIExpression()), !dbg !7174
  %0 = load ptr, ptr %q.addr, align 8, !dbg !7175
  %mq_ops = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 6, !dbg !7177
  %1 = load ptr, ptr %mq_ops, align 8, !dbg !7177
  %put_budget = getelementptr inbounds %struct.blk_mq_ops, ptr %1, i32 0, i32 4, !dbg !7178
  %2 = load ptr, ptr %put_budget, align 8, !dbg !7178
  %tobool = icmp ne ptr %2, null, !dbg !7175
  br i1 %tobool, label %if.then, label %if.end, !dbg !7179

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %q.addr, align 8, !dbg !7180
  %mq_ops1 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 6, !dbg !7181
  %4 = load ptr, ptr %mq_ops1, align 8, !dbg !7181
  %put_budget2 = getelementptr inbounds %struct.blk_mq_ops, ptr %4, i32 0, i32 4, !dbg !7182
  %5 = load ptr, ptr %put_budget2, align 8, !dbg !7182
  %6 = load ptr, ptr %q.addr, align 8, !dbg !7183
  %7 = load i32, ptr %budget_token.addr, align 4, !dbg !7184
  call void %5(ptr noundef %6, i32 noundef %7) #9, !dbg !7180
  br label %if.end, !dbg !7180

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_mq_set_rq_budget_token(ptr noundef %rq, i32 noundef %token) #6 align 16 !dbg !7186 {
entry:
  %rq.addr = alloca ptr, align 8
  %token.addr = alloca i32, align 4
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !7188, metadata !DIExpression()), !dbg !7190
  store i32 %token, ptr %token.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %token.addr, metadata !7189, metadata !DIExpression()), !dbg !7191
  %0 = load i32, ptr %token.addr, align 4, !dbg !7192
  %cmp = icmp slt i32 %0, 0, !dbg !7194
  br i1 %cmp, label %if.then, label %if.end, !dbg !7195

if.then:                                          ; preds = %entry
  br label %if.end5, !dbg !7196

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rq.addr, align 8, !dbg !7197
  %q = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 0, !dbg !7199
  %2 = load ptr, ptr %q, align 8, !dbg !7199
  %mq_ops = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 6, !dbg !7200
  %3 = load ptr, ptr %mq_ops, align 8, !dbg !7200
  %set_rq_budget_token = getelementptr inbounds %struct.blk_mq_ops, ptr %3, i32 0, i32 5, !dbg !7201
  %4 = load ptr, ptr %set_rq_budget_token, align 8, !dbg !7201
  %tobool = icmp ne ptr %4, null, !dbg !7197
  br i1 %tobool, label %if.then1, label %if.end5, !dbg !7202

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %rq.addr, align 8, !dbg !7203
  %q2 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 0, !dbg !7204
  %6 = load ptr, ptr %q2, align 8, !dbg !7204
  %mq_ops3 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 6, !dbg !7205
  %7 = load ptr, ptr %mq_ops3, align 8, !dbg !7205
  %set_rq_budget_token4 = getelementptr inbounds %struct.blk_mq_ops, ptr %7, i32 0, i32 5, !dbg !7206
  %8 = load ptr, ptr %set_rq_budget_token4, align 8, !dbg !7206
  %9 = load ptr, ptr %rq.addr, align 8, !dbg !7207
  %10 = load i32, ptr %token.addr, align 4, !dbg !7208
  call void %8(ptr noundef %9, i32 noundef %10) #9, !dbg !7203
  br label %if.end5, !dbg !7203

if.end5:                                          ; preds = %if.then, %if.then1, %if.end
  ret void, !dbg !7209
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !7210 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7212, metadata !DIExpression()), !dbg !7214
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7213, metadata !DIExpression()), !dbg !7215
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7216
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7217
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7218
  %2 = load ptr, ptr %prev, align 8, !dbg !7218
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7219
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #9, !dbg !7220
  ret void, !dbg !7221
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @blk_mq_get_driver_tag(ptr noundef %rq) #6 align 16 !dbg !7222 {
entry:
  %retval = alloca i1, align 1
  %rq.addr = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !7224, metadata !DIExpression()), !dbg !7226
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #10, !dbg !7227
  call void @llvm.dbg.declare(metadata ptr %hctx, metadata !7225, metadata !DIExpression()), !dbg !7228
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !7229
  %mq_hctx = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2, !dbg !7230
  %1 = load ptr, ptr %mq_hctx, align 8, !dbg !7230
  store ptr %1, ptr %hctx, align 8, !dbg !7228
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !7231
  %tag = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 5, !dbg !7233
  %3 = load i32, ptr %tag, align 8, !dbg !7233
  %cmp = icmp ne i32 %3, -1, !dbg !7234
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !7235

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %hctx, align 8, !dbg !7236
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 5, !dbg !7237
  %5 = load i64, ptr %flags, align 8, !dbg !7237
  %and = and i64 %5, 2, !dbg !7238
  %tobool = icmp ne i64 %and, 0, !dbg !7238
  br i1 %tobool, label %if.end, label %if.then, !dbg !7239

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !7240
  %7 = load ptr, ptr %hctx, align 8, !dbg !7242
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 19, !dbg !7243
  %8 = load ptr, ptr %tags, align 64, !dbg !7243
  %rqs = getelementptr inbounds %struct.blk_mq_tags, ptr %8, i32 0, i32 5, !dbg !7244
  %9 = load ptr, ptr %rqs, align 8, !dbg !7244
  %10 = load ptr, ptr %rq.addr, align 8, !dbg !7245
  %tag1 = getelementptr inbounds %struct.request, ptr %10, i32 0, i32 5, !dbg !7246
  %11 = load i32, ptr %tag1, align 8, !dbg !7246
  %idxprom = sext i32 %11 to i64, !dbg !7242
  %arrayidx = getelementptr ptr, ptr %9, i64 %idxprom, !dbg !7242
  store ptr %6, ptr %arrayidx, align 8, !dbg !7247
  store i1 true, ptr %retval, align 1, !dbg !7248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7248

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %hctx, align 8, !dbg !7249
  %13 = load ptr, ptr %rq.addr, align 8, !dbg !7250
  %call = call zeroext i1 @__blk_mq_get_driver_tag(ptr noundef %12, ptr noundef %13) #9, !dbg !7251
  store i1 %call, ptr %retval, align 1, !dbg !7252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7252

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #10, !dbg !7253
  %14 = load i1, ptr %retval, align 1, !dbg !7253
  ret i1 %14, !dbg !7253
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7254 dso_local void @blk_mq_delay_run_hw_queues(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7257 dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sched_rq_cmp(ptr noundef %priv, ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !7265 {
entry:
  %priv.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %rqa = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %rqb = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !7267, metadata !DIExpression()), !dbg !7276
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !7268, metadata !DIExpression()), !dbg !7277
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !7269, metadata !DIExpression()), !dbg !7278
  call void @llvm.lifetime.start.p0(i64 8, ptr %rqa) #10, !dbg !7279
  call void @llvm.dbg.declare(metadata ptr %rqa, metadata !7270, metadata !DIExpression()), !dbg !7280
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !7281
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7271, metadata !DIExpression()), !dbg !7281
  %0 = load ptr, ptr %a.addr, align 8, !dbg !7281
  store ptr %0, ptr %__mptr, align 8, !dbg !7281
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7281
  %add.ptr = getelementptr i8, ptr %1, i64 -72, !dbg !7281
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7281
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !7282
  %2 = load ptr, ptr %tmp, align 8, !dbg !7281
  store ptr %2, ptr %rqa, align 8, !dbg !7280
  call void @llvm.lifetime.start.p0(i64 8, ptr %rqb) #10, !dbg !7283
  call void @llvm.dbg.declare(metadata ptr %rqb, metadata !7273, metadata !DIExpression()), !dbg !7284
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #10, !dbg !7285
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !7274, metadata !DIExpression()), !dbg !7285
  %3 = load ptr, ptr %b.addr, align 8, !dbg !7285
  store ptr %3, ptr %__mptr1, align 8, !dbg !7285
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !7285
  %add.ptr3 = getelementptr i8, ptr %4, i64 -72, !dbg !7285
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !7285
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #10, !dbg !7286
  %5 = load ptr, ptr %tmp2, align 8, !dbg !7285
  store ptr %5, ptr %rqb, align 8, !dbg !7284
  %6 = load ptr, ptr %rqa, align 8, !dbg !7287
  %mq_hctx = getelementptr inbounds %struct.request, ptr %6, i32 0, i32 2, !dbg !7288
  %7 = load ptr, ptr %mq_hctx, align 8, !dbg !7288
  %8 = load ptr, ptr %rqb, align 8, !dbg !7289
  %mq_hctx4 = getelementptr inbounds %struct.request, ptr %8, i32 0, i32 2, !dbg !7290
  %9 = load ptr, ptr %mq_hctx4, align 8, !dbg !7290
  %cmp = icmp ugt ptr %7, %9, !dbg !7291
  %conv = zext i1 %cmp to i32, !dbg !7291
  call void @llvm.lifetime.end.p0(i64 8, ptr %rqb) #10, !dbg !7292
  call void @llvm.lifetime.end.p0(i64 8, ptr %rqa) #10, !dbg !7292
  ret i32 %conv, !dbg !7293
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @blk_mq_dispatch_hctx_list(ptr noundef %rq_list) #0 align 16 !dbg !7294 {
entry:
  %rq_list.addr = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %rq = alloca ptr, align 8
  %hctx_list = alloca %struct.list_head, align 8
  %count = alloca i32, align 4
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %rq_list, ptr %rq_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq_list.addr, metadata !7298, metadata !DIExpression()), !dbg !7312
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #10, !dbg !7313
  call void @llvm.dbg.declare(metadata ptr %hctx, metadata !7299, metadata !DIExpression()), !dbg !7314
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !7315
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7300, metadata !DIExpression()), !dbg !7315
  %0 = load ptr, ptr %rq_list.addr, align 8, !dbg !7315
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !7315
  %1 = load ptr, ptr %next, align 8, !dbg !7315
  store ptr %1, ptr %__mptr, align 8, !dbg !7315
  %2 = load ptr, ptr %__mptr, align 8, !dbg !7315
  %add.ptr = getelementptr i8, ptr %2, i64 -72, !dbg !7315
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7315
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !7316
  %3 = load ptr, ptr %tmp, align 8, !dbg !7315
  %mq_hctx = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 2, !dbg !7317
  %4 = load ptr, ptr %mq_hctx, align 8, !dbg !7317
  store ptr %4, ptr %hctx, align 8, !dbg !7314
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #10, !dbg !7318
  call void @llvm.dbg.declare(metadata ptr %rq, metadata !7302, metadata !DIExpression()), !dbg !7319
  call void @llvm.lifetime.start.p0(i64 16, ptr %hctx_list) #10, !dbg !7320
  call void @llvm.dbg.declare(metadata ptr %hctx_list, metadata !7303, metadata !DIExpression()), !dbg !7320
  %next1 = getelementptr inbounds %struct.list_head, ptr %hctx_list, i32 0, i32 0, !dbg !7320
  store ptr %hctx_list, ptr %next1, align 8, !dbg !7320
  %prev = getelementptr inbounds %struct.list_head, ptr %hctx_list, i32 0, i32 1, !dbg !7320
  store ptr %hctx_list, ptr %prev, align 8, !dbg !7320
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #10, !dbg !7321
  call void @llvm.dbg.declare(metadata ptr %count, metadata !7304, metadata !DIExpression()), !dbg !7322
  store i32 0, ptr %count, align 4, !dbg !7322
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #10, !dbg !7323
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !7305, metadata !DIExpression()), !dbg !7323
  %5 = load ptr, ptr %rq_list.addr, align 8, !dbg !7323
  %next3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 0, !dbg !7323
  %6 = load ptr, ptr %next3, align 8, !dbg !7323
  store ptr %6, ptr %__mptr2, align 8, !dbg !7323
  %7 = load ptr, ptr %__mptr2, align 8, !dbg !7323
  %add.ptr5 = getelementptr i8, ptr %7, i64 -72, !dbg !7323
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !7323
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #10, !dbg !7324
  %8 = load ptr, ptr %tmp4, align 8, !dbg !7323
  store ptr %8, ptr %rq, align 8, !dbg !7324
  br label %for.cond, !dbg !7324

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %rq, align 8, !dbg !7325
  %10 = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 12, !dbg !7325
  %11 = load ptr, ptr %rq_list.addr, align 8, !dbg !7325
  %cmp = icmp eq ptr %10, %11, !dbg !7325
  %lnot = xor i1 %cmp, true, !dbg !7325
  br i1 %lnot, label %for.body, label %for.end, !dbg !7324

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %rq, align 8, !dbg !7326
  %mq_hctx6 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 2, !dbg !7329
  %13 = load ptr, ptr %mq_hctx6, align 8, !dbg !7329
  %14 = load ptr, ptr %hctx, align 8, !dbg !7330
  %cmp7 = icmp ne ptr %13, %14, !dbg !7331
  br i1 %cmp7, label %if.then, label %if.end, !dbg !7332

if.then:                                          ; preds = %for.body
  %15 = load ptr, ptr %rq_list.addr, align 8, !dbg !7333
  %16 = load ptr, ptr %rq, align 8, !dbg !7335
  %17 = getelementptr inbounds %struct.request, ptr %16, i32 0, i32 12, !dbg !7336
  call void @list_cut_before(ptr noundef %hctx_list, ptr noundef %15, ptr noundef %17) #9, !dbg !7337
  br label %dispatch, !dbg !7338

if.end:                                           ; preds = %for.body
  %18 = load i32, ptr %count, align 4, !dbg !7339
  %inc = add i32 %18, 1, !dbg !7339
  store i32 %inc, ptr %count, align 4, !dbg !7339
  br label %for.inc, !dbg !7340

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #10, !dbg !7341
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !7308, metadata !DIExpression()), !dbg !7341
  %19 = load ptr, ptr %rq, align 8, !dbg !7341
  %20 = getelementptr inbounds %struct.request, ptr %19, i32 0, i32 12, !dbg !7341
  %next9 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 0, !dbg !7341
  %21 = load ptr, ptr %next9, align 8, !dbg !7341
  store ptr %21, ptr %__mptr8, align 8, !dbg !7341
  %22 = load ptr, ptr %__mptr8, align 8, !dbg !7341
  %add.ptr11 = getelementptr i8, ptr %22, i64 -72, !dbg !7341
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !7341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #10, !dbg !7325
  %23 = load ptr, ptr %tmp10, align 8, !dbg !7341
  store ptr %23, ptr %rq, align 8, !dbg !7325
  br label %for.cond, !dbg !7325, !llvm.loop !7342

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %rq_list.addr, align 8, !dbg !7344
  call void @list_splice_tail_init(ptr noundef %24, ptr noundef %hctx_list) #9, !dbg !7345
  br label %dispatch, !dbg !7345

dispatch:                                         ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !7311), !dbg !7346
  %25 = load ptr, ptr %hctx, align 8, !dbg !7347
  %26 = load i32, ptr %count, align 4, !dbg !7348
  %call = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %25, ptr noundef %hctx_list, i32 noundef %26) #9, !dbg !7349
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #10, !dbg !7350
  call void @llvm.lifetime.end.p0(i64 16, ptr %hctx_list) #10, !dbg !7350
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #10, !dbg !7350
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #10, !dbg !7350
  ret i1 %call, !dbg !7351
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !7352 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7356, metadata !DIExpression()), !dbg !7359
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7357, metadata !DIExpression()), !dbg !7360
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7358, metadata !DIExpression()), !dbg !7361
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7362
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7364
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7365
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !7366
  br i1 %call, label %if.end, label %if.then, !dbg !7367

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7368

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7369
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7370
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7371
  store ptr %3, ptr %prev1, align 8, !dbg !7372
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7373
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7374
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7375
  store ptr %5, ptr %next2, align 8, !dbg !7376
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7377
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7378
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7379
  store ptr %7, ptr %prev3, align 8, !dbg !7380
  br label %do.body, !dbg !7381

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7382

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7384

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7382

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7386
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7386
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7386
  store volatile ptr %9, ptr %next6, align 8, !dbg !7386
  br label %do.end7, !dbg !7386

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7382

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7388
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !7389 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7393, metadata !DIExpression()), !dbg !7396
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7394, metadata !DIExpression()), !dbg !7397
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7395, metadata !DIExpression()), !dbg !7398
  ret i1 true, !dbg !7399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7400 dso_local zeroext i1 @__blk_mq_get_driver_tag(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_cut_before(ptr noundef %list, ptr noundef %head, ptr noundef %entry1) #6 align 16 !dbg !7403 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !7405, metadata !DIExpression()), !dbg !7408
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7406, metadata !DIExpression()), !dbg !7409
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7407, metadata !DIExpression()), !dbg !7410
  %0 = load ptr, ptr %head.addr, align 8, !dbg !7411
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !7413
  %1 = load ptr, ptr %next, align 8, !dbg !7413
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !7414
  %cmp = icmp eq ptr %1, %2, !dbg !7415
  br i1 %cmp, label %if.then, label %if.end, !dbg !7416

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %list.addr, align 8, !dbg !7417
  call void @INIT_LIST_HEAD(ptr noundef %3) #9, !dbg !7419
  br label %return, !dbg !7420

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %head.addr, align 8, !dbg !7421
  %next2 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !7422
  %5 = load ptr, ptr %next2, align 8, !dbg !7422
  %6 = load ptr, ptr %list.addr, align 8, !dbg !7423
  %next3 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7424
  store ptr %5, ptr %next3, align 8, !dbg !7425
  %7 = load ptr, ptr %list.addr, align 8, !dbg !7426
  %8 = load ptr, ptr %list.addr, align 8, !dbg !7427
  %next4 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 0, !dbg !7428
  %9 = load ptr, ptr %next4, align 8, !dbg !7428
  %prev = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1, !dbg !7429
  store ptr %7, ptr %prev, align 8, !dbg !7430
  %10 = load ptr, ptr %entry.addr, align 8, !dbg !7431
  %prev5 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1, !dbg !7432
  %11 = load ptr, ptr %prev5, align 8, !dbg !7432
  %12 = load ptr, ptr %list.addr, align 8, !dbg !7433
  %prev6 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1, !dbg !7434
  store ptr %11, ptr %prev6, align 8, !dbg !7435
  %13 = load ptr, ptr %list.addr, align 8, !dbg !7436
  %14 = load ptr, ptr %list.addr, align 8, !dbg !7437
  %prev7 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1, !dbg !7438
  %15 = load ptr, ptr %prev7, align 8, !dbg !7438
  %next8 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !7439
  store ptr %13, ptr %next8, align 8, !dbg !7440
  %16 = load ptr, ptr %entry.addr, align 8, !dbg !7441
  %17 = load ptr, ptr %head.addr, align 8, !dbg !7442
  %next9 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 0, !dbg !7443
  store ptr %16, ptr %next9, align 8, !dbg !7444
  %18 = load ptr, ptr %head.addr, align 8, !dbg !7445
  %19 = load ptr, ptr %entry.addr, align 8, !dbg !7446
  %prev10 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1, !dbg !7447
  store ptr %18, ptr %prev10, align 8, !dbg !7448
  br label %return, !dbg !7449

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_tail_init(ptr noundef %list, ptr noundef %head) #6 align 16 !dbg !7450 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !7452, metadata !DIExpression()), !dbg !7454
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7453, metadata !DIExpression()), !dbg !7455
  %0 = load ptr, ptr %list.addr, align 8, !dbg !7456
  %call = call i32 @list_empty(ptr noundef %0) #9, !dbg !7458
  %tobool = icmp ne i32 %call, 0, !dbg !7458
  br i1 %tobool, label %if.end, label %if.then, !dbg !7459

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !7460
  %2 = load ptr, ptr %head.addr, align 8, !dbg !7462
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !7463
  %3 = load ptr, ptr %prev, align 8, !dbg !7463
  %4 = load ptr, ptr %head.addr, align 8, !dbg !7464
  call void @__list_splice(ptr noundef %1, ptr noundef %3, ptr noundef %4) #9, !dbg !7465
  %5 = load ptr, ptr %list.addr, align 8, !dbg !7466
  call void @INIT_LIST_HEAD(ptr noundef %5) #9, !dbg !7467
  br label %if.end, !dbg !7468

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7469
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #3 align 16 !dbg !7470 {
entry:
  %call = call ptr @get_current() #9, !dbg !7472
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !7473
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #9, !dbg !7474
  ret i1 %call1, !dbg !7475
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !7476 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !7487
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7481, metadata !DIExpression()), !dbg !7487
  br label %do.body, !dbg !7487

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7488
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7483, metadata !DIExpression()), !dbg !7488
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7488
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7488
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7487
  br label %do.cond, !dbg !7488

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7488

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !7489
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7485, metadata !DIExpression()), !dbg !7489
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !7489, !srcloc !7490
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7489
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7489
  %3 = inttoptr i64 %2 to ptr, !dbg !7489
  store ptr %3, ptr %tmp, align 8, !dbg !7489
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !7487
  %4 = load ptr, ptr %tmp, align 8, !dbg !7489
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7487
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7487
  store ptr %5, ptr %tmp1, align 8, !dbg !7487
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !7491
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7487
  ret ptr %6, !dbg !7492
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7493 dso_local zeroext i1 @sbitmap_any_bit_set(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7498 dso_local ptr @blk_mq_dequeue_from_ctx(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !7501 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7503, metadata !DIExpression()), !dbg !7505
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7504, metadata !DIExpression()), !dbg !7506
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7507
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7508
  %2 = load ptr, ptr %head.addr, align 8, !dbg !7509
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !7510
  %3 = load ptr, ptr %next, align 8, !dbg !7510
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9, !dbg !7511
  ret void, !dbg !7512
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @blk_mq_next_ctx(ptr noundef %hctx, ptr noundef %ctx) #0 align 16 !dbg !7513 {
entry:
  %hctx.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %idx = alloca i16, align 2
  store ptr %hctx, ptr %hctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !7517, metadata !DIExpression()), !dbg !7520
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !7518, metadata !DIExpression()), !dbg !7521
  call void @llvm.lifetime.start.p0(i64 2, ptr %idx) #10, !dbg !7522
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !7519, metadata !DIExpression()), !dbg !7523
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !7524
  %index_hw = getelementptr inbounds %struct.blk_mq_ctx, ptr %0, i32 0, i32 2, !dbg !7525
  %1 = load ptr, ptr %hctx.addr, align 8, !dbg !7526
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 13, !dbg !7527
  %2 = load i16, ptr %type, align 4, !dbg !7527
  %idxprom = zext i16 %2 to i64, !dbg !7524
  %arrayidx = getelementptr [3 x i16], ptr %index_hw, i64 0, i64 %idxprom, !dbg !7524
  %3 = load i16, ptr %arrayidx, align 2, !dbg !7524
  store i16 %3, ptr %idx, align 2, !dbg !7523
  %4 = load i16, ptr %idx, align 2, !dbg !7528
  %inc = add i16 %4, 1, !dbg !7528
  store i16 %inc, ptr %idx, align 2, !dbg !7528
  %conv = zext i16 %inc to i32, !dbg !7528
  %5 = load ptr, ptr %hctx.addr, align 8, !dbg !7530
  %nr_ctx = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 14, !dbg !7531
  %6 = load i16, ptr %nr_ctx, align 2, !dbg !7531
  %conv1 = zext i16 %6 to i32, !dbg !7530
  %cmp = icmp eq i32 %conv, %conv1, !dbg !7532
  br i1 %cmp, label %if.then, label %if.end, !dbg !7533

if.then:                                          ; preds = %entry
  store i16 0, ptr %idx, align 2, !dbg !7534
  br label %if.end, !dbg !7535

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %hctx.addr, align 8, !dbg !7536
  %ctxs = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 15, !dbg !7537
  %8 = load ptr, ptr %ctxs, align 64, !dbg !7537
  %9 = load i16, ptr %idx, align 2, !dbg !7538
  %idxprom3 = zext i16 %9 to i64, !dbg !7536
  %arrayidx4 = getelementptr ptr, ptr %8, i64 %idxprom3, !dbg !7536
  %10 = load ptr, ptr %arrayidx4, align 8, !dbg !7536
  call void @llvm.lifetime.end.p0(i64 2, ptr %idx) #10, !dbg !7539
  ret ptr %10, !dbg !7540
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__blk_mq_get_ctx(ptr noundef %q, i32 noundef %cpu) #6 align 16 !dbg !7541 {
entry:
  %q.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !7545, metadata !DIExpression()), !dbg !7552
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7546, metadata !DIExpression()), !dbg !7553
  br label %do.body, !dbg !7554

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7555
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7547, metadata !DIExpression()), !dbg !7555
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7555
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7555
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7554
  br label %do.end, !dbg !7555

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !7556
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !7550, metadata !DIExpression()), !dbg !7556
  %1 = load ptr, ptr %q.addr, align 8, !dbg !7556
  %queue_ctx = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 7, !dbg !7556
  %2 = load ptr, ptr %queue_ctx, align 8, !dbg !7556
  %3 = ptrtoint ptr %2 to i64, !dbg !7556
  store i64 %3, ptr %__ptr, align 8, !dbg !7556
  %4 = load i64, ptr %__ptr, align 8, !dbg !7556
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !7556
  %idxprom = zext i32 %5 to i64, !dbg !7556
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !7556
  %6 = load i64, ptr %arrayidx, align 8, !dbg !7556
  %add = add i64 %4, %6, !dbg !7556
  %7 = inttoptr i64 %add to ptr, !dbg !7556
  store ptr %7, ptr %tmp1, align 8, !dbg !7556
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !7554
  %8 = load ptr, ptr %tmp1, align 8, !dbg !7556
  store ptr %8, ptr %tmp, align 8, !dbg !7555
  %9 = load ptr, ptr %tmp, align 8, !dbg !7554
  ret ptr %9, !dbg !7557
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @blk_mq_get_hctx_type(i32 noundef %opf) #6 align 16 !dbg !7558 {
entry:
  %opf.addr = alloca i32, align 4
  %type = alloca i32, align 4
  store i32 %opf, ptr %opf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opf.addr, metadata !7562, metadata !DIExpression()), !dbg !7564
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #10, !dbg !7565
  call void @llvm.dbg.declare(metadata ptr %type, metadata !7563, metadata !DIExpression()), !dbg !7566
  store i32 0, ptr %type, align 4, !dbg !7566
  %0 = load i32, ptr %opf.addr, align 4, !dbg !7567
  %and = and i32 %0, 4194304, !dbg !7569
  %tobool = icmp ne i32 %and, 0, !dbg !7569
  br i1 %tobool, label %if.then, label %if.else, !dbg !7570

if.then:                                          ; preds = %entry
  store i32 2, ptr %type, align 4, !dbg !7571
  br label %if.end3, !dbg !7572

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %opf.addr, align 4, !dbg !7573
  %and1 = and i32 %1, 255, !dbg !7575
  %cmp = icmp eq i32 %and1, 0, !dbg !7576
  br i1 %cmp, label %if.then2, label %if.end, !dbg !7577

if.then2:                                         ; preds = %if.else
  store i32 1, ptr %type, align 4, !dbg !7578
  br label %if.end, !dbg !7579

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %2 = load i32, ptr %type, align 4, !dbg !7580
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #10, !dbg !7581
  ret i32 %2, !dbg !7582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #6 align 16 !dbg !7583 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !7587, metadata !DIExpression()), !dbg !7589
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7588, metadata !DIExpression()), !dbg !7590
  %0 = load ptr, ptr %list.addr, align 8, !dbg !7591
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7592
  %cmp = icmp eq ptr %0, %1, !dbg !7593
  %conv = zext i1 %cmp to i32, !dbg !7593
  ret i32 %conv, !dbg !7594
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7595 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7600 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @blk_rq_is_passthrough(ptr noundef %rq) #6 align 16 !dbg !7601 {
entry:
  %rq.addr = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !7603, metadata !DIExpression()), !dbg !7604
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !7605
  %cmd_flags = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3, !dbg !7606
  %1 = load i32, ptr %cmd_flags, align 8, !dbg !7606
  %call = call zeroext i1 @blk_op_is_passthrough(i32 noundef %1) #9, !dbg !7607
  ret i1 %call, !dbg !7608
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @req_op(ptr noundef %req) #6 align 16 !dbg !7609 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !7615, metadata !DIExpression()), !dbg !7616
  %0 = load ptr, ptr %req.addr, align 8, !dbg !7617
  %cmd_flags = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3, !dbg !7618
  %1 = load i32, ptr %cmd_flags, align 8, !dbg !7618
  %and = and i32 %1, 255, !dbg !7619
  ret i32 %and, !dbg !7620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @blk_op_is_passthrough(i32 noundef %op) #6 align 16 !dbg !7621 {
entry:
  %op.addr = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !7625, metadata !DIExpression()), !dbg !7626
  %0 = load i32, ptr %op.addr, align 4, !dbg !7627
  %and = and i32 %0, 255, !dbg !7627
  store i32 %and, ptr %op.addr, align 4, !dbg !7627
  %1 = load i32, ptr %op.addr, align 4, !dbg !7628
  %cmp = icmp eq i32 %1, 34, !dbg !7629
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7630

lor.rhs:                                          ; preds = %entry
  %2 = load i32, ptr %op.addr, align 4, !dbg !7631
  %cmp1 = icmp eq i32 %2, 35, !dbg !7632
  br label %lor.end, !dbg !7630

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %3, !dbg !7633
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7634 dso_local ptr @blk_mq_alloc_map_and_rqs(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7637 dso_local void @blk_mq_tag_update_sched_shared_tags(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7638 dso_local void @blk_mq_free_rq_map(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blk_mq_exit_sched_shared_tags(ptr noundef %queue) #0 align 16 !dbg !7641 {
entry:
  %queue.addr = alloca ptr, align 8
  store ptr %queue, ptr %queue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !7643, metadata !DIExpression()), !dbg !7644
  %0 = load ptr, ptr %queue.addr, align 8, !dbg !7645
  %sched_shared_tags = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 27, !dbg !7646
  %1 = load ptr, ptr %sched_shared_tags, align 8, !dbg !7646
  call void @blk_mq_free_rq_map(ptr noundef %1) #9, !dbg !7647
  %2 = load ptr, ptr %queue.addr, align 8, !dbg !7648
  %sched_shared_tags1 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 27, !dbg !7649
  store ptr null, ptr %sched_shared_tags1, align 8, !dbg !7650
  ret void, !dbg !7651
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728}
!llvm.ident = !{!5729}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blk_mq_sched_mark_restart_hctx527", scope: !2, file: !3, line: 29, type: !256, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.blk-mq-sched.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/blk-mq-sched\22 -D KBUILD_BASENAME=\22blk_mq_sched\22 -D KBUILD_MODNAME=\22blk_mq_sched\22 -D __KBUILD_MODNAME=kmod_blk_mq_sched -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/blk-mq-sched.ll block/blk-mq-sched.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !252, globals: !5718, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "block/blk-mq-sched.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4c32be4b97102b696faf27aefd75720")
!4 = !{!5, !13, !18, !26, !34, !50, !56, !62, !68, !75, !80, !88, !96, !102, !111, !116, !121, !127, !133, !140, !147, !153, !157, !164, !168, !172, !177, !194, !199, !205, !211, !235}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !57, line: 1381, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!60 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!61 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !63, line: 45, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!66 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!67 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !69, line: 487, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!72 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!73 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!74 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !76, line: 65, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!79 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !81, line: 620, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!84 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!85 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!86 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!87 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !81, line: 597, baseType: !89, size: 32, elements: !90)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !{!91, !92, !93, !94, !95}
!91 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!92 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!93 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!94 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!95 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !97, line: 26, baseType: !7, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!98 = !{!99, !100, !101}
!99 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!100 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!101 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !69, line: 547, baseType: !7, size: 32, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110}
!104 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!105 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!106 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!107 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!108 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!109 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!110 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !69, line: 564, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!114 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!115 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !69, line: 577, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!119 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!120 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !69, line: 503, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126}
!123 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!124 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!125 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!126 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !128, line: 16, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!129 = !{!130, !131, !132}
!130 = !DIEnumerator(name: "TT_NONE", value: 0)
!131 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!132 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !134, line: 51, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!135 = !{!136, !137, !138, !139}
!136 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!137 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!138 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!139 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !141, line: 15, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!144 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!145 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!146 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !148, line: 68, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!151 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!152 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !148, line: 18, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!156 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !158, line: 16, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "block/elevator.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f2c1e08cf51857d27273f234ecff22b")
!159 = !{!160, !161, !162, !163}
!160 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0)
!161 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1)
!162 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2)
!163 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !148, line: 276, baseType: !7, size: 32, elements: !165)
!165 = !{!166, !167}
!166 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!167 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !57, line: 295, baseType: !7, size: 32, elements: !169)
!169 = !{!170, !171}
!170 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!171 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !57, line: 285, baseType: !7, size: 32, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!175 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!176 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 650, baseType: !7, size: 32, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!179 = !DIEnumerator(name: "BLK_MQ_F_SHOULD_MERGE", value: 1)
!180 = !DIEnumerator(name: "BLK_MQ_F_TAG_QUEUE_SHARED", value: 2)
!181 = !DIEnumerator(name: "BLK_MQ_F_STACKING", value: 4)
!182 = !DIEnumerator(name: "BLK_MQ_F_TAG_HCTX_SHARED", value: 8)
!183 = !DIEnumerator(name: "BLK_MQ_F_BLOCKING", value: 32)
!184 = !DIEnumerator(name: "BLK_MQ_F_NO_SCHED", value: 64)
!185 = !DIEnumerator(name: "BLK_MQ_F_NO_SCHED_BY_DEFAULT", value: 128)
!186 = !DIEnumerator(name: "BLK_MQ_F_ALLOC_POLICY_START_BIT", value: 8)
!187 = !DIEnumerator(name: "BLK_MQ_F_ALLOC_POLICY_BITS", value: 1)
!188 = !DIEnumerator(name: "BLK_MQ_S_STOPPED", value: 0)
!189 = !DIEnumerator(name: "BLK_MQ_S_TAG_ACTIVE", value: 1)
!190 = !DIEnumerator(name: "BLK_MQ_S_SCHED_RESTART", value: 2)
!191 = !DIEnumerator(name: "BLK_MQ_S_INACTIVE", value: 3)
!192 = !DIEnumerator(name: "BLK_MQ_MAX_DEPTH", value: 10240)
!193 = !DIEnumerator(name: "BLK_MQ_CPU_WORK_BATCH", value: 8)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !195, line: 10, baseType: !7, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!196 = !{!197, !198}
!197 = !DIEnumerator(name: "false", value: 0)
!198 = !DIEnumerator(name: "true", value: 1)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hctx_type", file: !148, line: 457, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202, !203, !204}
!201 = !DIEnumerator(name: "HCTX_TYPE_DEFAULT", value: 0)
!202 = !DIEnumerator(name: "HCTX_TYPE_READ", value: 1)
!203 = !DIEnumerator(name: "HCTX_TYPE_POLL", value: 2)
!204 = !DIEnumerator(name: "HCTX_MAX_TYPES", value: 3)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 33, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "block/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaaa52c8c9e7dda989aa14aea0f2d4c3")
!207 = !{!208, !209, !210}
!208 = !DIEnumerator(name: "BLK_MQ_NO_TAG", value: 4294967295, isUnsigned: true)
!209 = !DIEnumerator(name: "BLK_MQ_TAG_MIN", value: 1)
!210 = !DIEnumerator(name: "BLK_MQ_TAG_MAX", value: 4294967294, isUnsigned: true)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_flag_bits", file: !212, line: 404, baseType: !7, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!214 = !DIEnumerator(name: "__REQ_FAILFAST_DEV", value: 8)
!215 = !DIEnumerator(name: "__REQ_FAILFAST_TRANSPORT", value: 9)
!216 = !DIEnumerator(name: "__REQ_FAILFAST_DRIVER", value: 10)
!217 = !DIEnumerator(name: "__REQ_SYNC", value: 11)
!218 = !DIEnumerator(name: "__REQ_META", value: 12)
!219 = !DIEnumerator(name: "__REQ_PRIO", value: 13)
!220 = !DIEnumerator(name: "__REQ_NOMERGE", value: 14)
!221 = !DIEnumerator(name: "__REQ_IDLE", value: 15)
!222 = !DIEnumerator(name: "__REQ_INTEGRITY", value: 16)
!223 = !DIEnumerator(name: "__REQ_FUA", value: 17)
!224 = !DIEnumerator(name: "__REQ_PREFLUSH", value: 18)
!225 = !DIEnumerator(name: "__REQ_RAHEAD", value: 19)
!226 = !DIEnumerator(name: "__REQ_BACKGROUND", value: 20)
!227 = !DIEnumerator(name: "__REQ_NOWAIT", value: 21)
!228 = !DIEnumerator(name: "__REQ_POLLED", value: 22)
!229 = !DIEnumerator(name: "__REQ_ALLOC_CACHE", value: 23)
!230 = !DIEnumerator(name: "__REQ_SWAP", value: 24)
!231 = !DIEnumerator(name: "__REQ_DRV", value: 25)
!232 = !DIEnumerator(name: "__REQ_FS_PRIVATE", value: 26)
!233 = !DIEnumerator(name: "__REQ_NOUNMAP", value: 27)
!234 = !DIEnumerator(name: "__REQ_NR_BITS", value: 28)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_op", file: !212, line: 371, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!237 = !DIEnumerator(name: "REQ_OP_READ", value: 0)
!238 = !DIEnumerator(name: "REQ_OP_WRITE", value: 1)
!239 = !DIEnumerator(name: "REQ_OP_FLUSH", value: 2)
!240 = !DIEnumerator(name: "REQ_OP_DISCARD", value: 3)
!241 = !DIEnumerator(name: "REQ_OP_SECURE_ERASE", value: 5)
!242 = !DIEnumerator(name: "REQ_OP_WRITE_ZEROES", value: 9)
!243 = !DIEnumerator(name: "REQ_OP_ZONE_OPEN", value: 10)
!244 = !DIEnumerator(name: "REQ_OP_ZONE_CLOSE", value: 11)
!245 = !DIEnumerator(name: "REQ_OP_ZONE_FINISH", value: 12)
!246 = !DIEnumerator(name: "REQ_OP_ZONE_APPEND", value: 13)
!247 = !DIEnumerator(name: "REQ_OP_ZONE_RESET", value: 15)
!248 = !DIEnumerator(name: "REQ_OP_ZONE_RESET_ALL", value: 17)
!249 = !DIEnumerator(name: "REQ_OP_DRV_IN", value: 34)
!250 = !DIEnumerator(name: "REQ_OP_DRV_OUT", value: 35)
!251 = !DIEnumerator(name: "REQ_OP_LAST", value: 36)
!252 = !{!253, !256, !257, !7, !259, !261, !262, !265, !268, !276, !267, !277, !5712, !5713, !3502, !255, !5714, !5717, !979, !89, !465, !2624, !5284}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !254, line: 42, baseType: !255)
!254 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!255 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_mark_t", file: !260, line: 250, baseType: !7)
!260 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !264)
!264 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !267)
!267 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !254, line: 190, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !254, line: 191, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !272, file: !254, line: 191, baseType: !271, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !148, line: 80, size: 1984, elements: !279)
!279 = !{!280, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5689, !5694, !5700, !5709, !5710, !5711}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !278, file: !148, line: 81, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !57, line: 391, size: 7296, elements: !283)
!283 = !{!284, !285, !5386, !5387, !5390, !5393, !5394, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5550, !5551, !5552, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !282, file: !57, line: 392, baseType: !277, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !282, file: !57, line: 393, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !158, line: 114, size: 5056, elements: !288)
!288 = !{!289, !5380, !5381, !5382, !5383, !5384}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !287, file: !158, line: 116, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !158, line: 64, size: 2368, elements: !292)
!292 = !{!293, !297, !5338, !5339, !5340, !5353, !5354, !5355, !5356, !5357, !5374, !5375, !5379}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !291, file: !158, line: 67, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !296, line: 325, flags: DIFlagFwdDecl)
!296 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !291, file: !158, line: 70, baseType: !298, size: 1408, offset: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !158, line: 26, size: 1408, elements: !299)
!299 = !{!300, !304, !308, !5243, !5247, !5251, !5255, !5259, !5263, !5267, !5271, !5289, !5293, !5294, !5299, !5303, !5307, !5311, !5312, !5316, !5317, !5337}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !298, file: !158, line: 27, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!89, !281, !290}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !298, file: !158, line: 28, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !286}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !298, file: !158, line: 29, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!89, !312, !7}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !148, line: 288, size: 4096, elements: !314)
!314 = !{!315, !363, !411, !421, !422, !423, !424, !425, !426, !443, !444, !464, !5196, !5197, !5198, !5199, !5201, !5202, !5203, !5204, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242}
!315 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !148, line: 289, baseType: !316, size: 512, align: 512)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !313, file: !148, line: 289, size: 512, align: 512, elements: !317)
!317 = !{!318, !361, !362}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !316, file: !148, line: 291, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !320, line: 29, baseType: !321)
!320 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !320, line: 17, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !320, line: 18, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !320, line: 18, size: 32, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !324, file: !320, line: 19, baseType: !327, size: 32)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !328, line: 14, size: 32, elements: !329)
!328 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !327, file: !328, line: 15, baseType: !331, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !332, line: 44, baseType: !333)
!332 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !332, line: 14, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !332, line: 15, baseType: !336, size: 32)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !332, line: 15, size: 32, elements: !337)
!337 = !{!338, !343, !353}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !336, file: !332, line: 16, baseType: !339, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !254, line: 174, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 172, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !340, file: !254, line: 173, baseType: !89, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !332, line: 24, baseType: !344, size: 16)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !332, line: 24, size: 16, elements: !345)
!345 = !{!346, !352}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !344, file: !332, line: 25, baseType: !347, size: 8)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !348, line: 17, baseType: !349)
!348 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !350, line: 21, baseType: !351)
!350 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!351 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !344, file: !332, line: 26, baseType: !347, size: 8, offset: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !332, line: 28, baseType: !354, size: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !332, line: 28, size: 32, elements: !355)
!355 = !{!356, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !354, file: !332, line: 29, baseType: !357, size: 16)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !348, line: 19, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !350, line: 24, baseType: !359)
!359 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !354, file: !332, line: 30, baseType: !357, size: 16, offset: 16)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !316, file: !148, line: 299, baseType: !272, size: 128, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !148, line: 304, baseType: !255, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !313, file: !148, line: 310, baseType: !364, size: 704, offset: 512)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !365, line: 111, size: 704, elements: !366)
!365 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!366 = !{!367, !387, !407, !410}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !364, file: !365, line: 112, baseType: !368, size: 256)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !365, line: 98, size: 256, elements: !369)
!369 = !{!370, !380, !381}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !368, file: !365, line: 99, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !372, line: 13, baseType: !373)
!372 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !254, line: 181, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 179, size: 64, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !374, file: !254, line: 180, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !348, line: 22, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !350, line: 30, baseType: !379)
!379 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !368, file: !365, line: 100, baseType: !272, size: 128, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !368, file: !365, line: 101, baseType: !382, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !365, line: 21, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !364, file: !365, line: 113, baseType: !388, size: 320, offset: 256)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !389, line: 11, size: 320, elements: !390)
!389 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!390 = !{!391, !398, !399, !404}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !388, file: !389, line: 16, baseType: !392, size: 128)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !254, line: 198, size: 128, elements: !393)
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !254, line: 199, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !392, file: !254, line: 199, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !388, file: !389, line: 17, baseType: !255, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !388, file: !389, line: 18, baseType: !400, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !389, line: 19, baseType: !405, size: 32, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !348, line: 21, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !350, line: 27, baseType: !7)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !364, file: !365, line: 116, baseType: !408, size: 64, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !365, line: 18, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !364, file: !365, line: 117, baseType: !89, size: 32, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !313, file: !148, line: 312, baseType: !412, size: 64, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !413, line: 913, baseType: !414)
!413 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 64, elements: !419)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !413, line: 19, size: 64, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !415, file: !413, line: 19, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 64, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 1)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !313, file: !148, line: 317, baseType: !89, size: 32, offset: 1280)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !313, file: !148, line: 322, baseType: !89, size: 32, offset: 1312)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !148, line: 325, baseType: !255, size: 64, offset: 1344)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !313, file: !148, line: 331, baseType: !256, size: 64, offset: 1408)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !313, file: !148, line: 335, baseType: !281, size: 64, offset: 1472)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !313, file: !148, line: 337, baseType: !427, size: 64, offset: 1536)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !429, line: 17, size: 512, elements: !430)
!429 = !DIFile(filename: "block/blk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08e4a891c7a7b1c380cd6f0c6d03b93a")
!430 = !{!431, !432, !433, !434, !436, !437, !441, !442}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mq_flush_lock", scope: !428, file: !429, line: 18, baseType: !319, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_idx", scope: !428, file: !429, line: 19, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flush_running_idx", scope: !428, file: !429, line: 20, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rq_status", scope: !428, file: !429, line: 21, baseType: !435, size: 8, offset: 40)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !212, line: 97, baseType: !347)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_since", scope: !428, file: !429, line: 22, baseType: !255, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue", scope: !428, file: !429, line: 23, baseType: !438, size: 256, offset: 128)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 2)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flush_data_in_flight", scope: !428, file: !429, line: 24, baseType: !255, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flush_rq", scope: !428, file: !429, line: 25, baseType: !277, size: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !313, file: !148, line: 343, baseType: !256, size: 64, offset: 1600)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !313, file: !148, line: 349, baseType: !445, size: 256, offset: 1664)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !446, line: 52, size: 256, elements: !447)
!446 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!447 = !{!448, !449, !450, !451, !454, !462}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !445, file: !446, line: 56, baseType: !7, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !445, file: !446, line: 61, baseType: !7, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !445, file: !446, line: 66, baseType: !7, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !445, file: !446, line: 71, baseType: !452, size: 8, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !254, line: 35, baseType: !453)
!453 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !445, file: !446, line: 76, baseType: !455, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !446, line: 29, size: 1024, align: 512, elements: !457)
!457 = !{!458, !459, !460}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !456, file: !446, line: 33, baseType: !255, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !456, file: !446, line: 38, baseType: !255, size: 64, align: 512, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !456, file: !446, line: 43, baseType: !461, size: 32, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !328, line: 23, baseType: !327)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !445, file: !446, line: 84, baseType: !463, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !313, file: !148, line: 355, baseType: !465, size: 64, offset: 1920)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !206, line: 18, size: 1536, align: 512, elements: !467)
!467 = !{!468, !476, !477, !479, !481, !482, !5195}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !206, line: 19, baseType: !469, size: 512, align: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !206, line: 19, size: 512, align: 512, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !469, file: !206, line: 20, baseType: !319, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rq_lists", scope: !469, file: !206, line: 21, baseType: !473, size: 384, offset: 64)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 384, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 3)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !466, file: !206, line: 24, baseType: !7, size: 32, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "index_hw", scope: !466, file: !206, line: 25, baseType: !478, size: 48, offset: 544)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 48, elements: !474)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hctxs", scope: !466, file: !206, line: 26, baseType: !480, size: 192, offset: 640)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 192, elements: !474)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !466, file: !206, line: 28, baseType: !281, size: 64, offset: 832)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !466, file: !206, line: 29, baseType: !483, size: 64, offset: 896)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctxs", file: !206, line: 10, size: 576, elements: !485)
!485 = !{!486, !5194}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !484, file: !206, line: 11, baseType: !487, size: 512)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !488, line: 64, size: 512, elements: !489)
!488 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!489 = !{!490, !493, !494, !496, !541, !5093, !5184, !5189, !5190, !5191, !5192, !5193}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !488, line: 65, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !487, file: !488, line: 66, baseType: !272, size: 128, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !487, file: !488, line: 67, baseType: !495, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !487, file: !488, line: 68, baseType: !497, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !488, line: 168, size: 768, elements: !499)
!499 = !{!500, !501, !502, !503}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !498, file: !488, line: 169, baseType: !272, size: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !498, file: !488, line: 170, baseType: !319, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !498, file: !488, line: 171, baseType: !487, size: 512, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !498, file: !488, line: 172, baseType: !504, size: 64, offset: 704)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !488, line: 133, size: 192, elements: !507)
!507 = !{!508, !515, !520}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !506, file: !488, line: 134, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!89, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !506, file: !488, line: 135, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!491, !513}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !506, file: !488, line: 136, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!89, !513, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !488, line: 125, size: 20736, elements: !527)
!527 = !{!528, !531, !535, !536, !540}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !526, file: !488, line: 126, baseType: !529, size: 192)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 192, elements: !474)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !526, file: !488, line: 127, baseType: !532, size: 4096, offset: 192)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 4096, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !526, file: !488, line: 128, baseType: !89, size: 32, offset: 4288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !526, file: !488, line: 129, baseType: !537, size: 16384, offset: 4320)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 16384, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 2048)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !526, file: !488, line: 130, baseType: !89, size: 32, offset: 20704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !487, file: !488, line: 69, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !488, line: 116, size: 384, elements: !545)
!545 = !{!546, !550, !577, !5081, !5085, !5089}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !544, file: !488, line: 117, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !495}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !544, file: !488, line: 118, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !554, line: 254, size: 128, elements: !555)
!554 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!555 = !{!556, !570}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !553, file: !554, line: 255, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !495, !564, !530}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !254, line: 66, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !562, line: 73, baseType: !563)
!562 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !562, line: 15, baseType: !267)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !554, line: 30, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !554, line: 31, baseType: !491, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !565, file: !554, line: 32, baseType: !569, size: 16, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !254, line: 24, baseType: !359)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !553, file: !554, line: 256, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!560, !495, !564, !491, !574}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !254, line: 61, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !562, line: 72, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !562, line: 16, baseType: !255)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !544, file: !488, line: 119, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !554, line: 84, size: 320, elements: !582)
!582 = !{!583, !584, !588, !5077, !5079}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !581, file: !554, line: 85, baseType: !491, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !581, file: !554, line: 86, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!569, !495, !564, !89}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !581, file: !554, line: 88, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!569, !495, !592, !89}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !554, line: 175, size: 512, elements: !594)
!594 = !{!595, !596, !597, !598, !5068, !5072, !5073}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !593, file: !554, line: 176, baseType: !565, size: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !593, file: !554, line: 177, baseType: !574, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !593, file: !554, line: 178, baseType: !256, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !593, file: !554, line: 179, baseType: !599, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !604)
!604 = !{!605, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !5062, !5063, !5064, !5065, !5066, !5067}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !603, file: !14, line: 473, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !608)
!608 = !{!609, !610, !611, !619, !620, !627, !628, !631, !632, !4899, !4900, !4901, !4902, !4903, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4943, !4946, !4947, !4948, !4957, !4958, !4959, !4960}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !607, file: !14, line: 642, baseType: !569, size: 16)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !607, file: !14, line: 643, baseType: !359, size: 16, offset: 16)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !607, file: !14, line: 644, baseType: !612, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !613, line: 23, baseType: !614)
!613 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !613, line: 21, size: 32, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !614, file: !613, line: 22, baseType: !617, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !254, line: 37, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !562, line: 49, baseType: !7)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !607, file: !14, line: 645, baseType: !272, size: 128, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !607, file: !14, line: 646, baseType: !621, size: 32, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !613, line: 28, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !613, line: 26, size: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !622, file: !613, line: 27, baseType: !625, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !254, line: 38, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !562, line: 50, baseType: !7)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !607, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !607, file: !14, line: 650, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !607, file: !14, line: 651, baseType: !629, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !607, file: !14, line: 654, baseType: !633, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !636)
!636 = !{!637, !4733, !4743, !4747, !4751, !4755, !4759, !4763, !4767, !4771, !4775, !4776, !4780, !4784, !4821, !4850, !4854, !4860, !4864, !4868, !4872, !4876, !4880, !4886, !4890}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !635, file: !14, line: 1967, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!641, !606, !641, !7}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !643, line: 82, size: 1536, elements: !644)
!643 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!644 = !{!645, !646, !656, !664, !665, !683, !684, !688, !701, !4717, !4718, !4719, !4720, !4725, !4726, !4727}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !642, file: !643, line: 84, baseType: !7, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !642, file: !643, line: 85, baseType: !647, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !648, line: 275, baseType: !649)
!648 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !648, line: 275, size: 32, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !649, file: !648, line: 275, baseType: !652, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !648, line: 69, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !648, line: 64, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !653, file: !648, line: 65, baseType: !7, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !642, file: !643, line: 86, baseType: !657, size: 128, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !658, line: 38, size: 128, elements: !659)
!658 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!659 = !{!660, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !658, line: 39, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !657, file: !658, line: 39, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !642, file: !643, line: 87, baseType: !641, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !642, file: !643, line: 88, baseType: !666, size: 128, offset: 256)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !643, line: 49, size: 128, elements: !667)
!667 = !{!668, !680}
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !643, line: 50, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !643, line: 50, size: 64, elements: !670)
!670 = !{!671, !676}
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !643, line: 51, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !643, line: 51, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !672, file: !643, line: 52, baseType: !405, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !672, file: !643, line: 52, baseType: !405, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !669, file: !643, line: 54, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !348, line: 23, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !350, line: 31, baseType: !679)
!679 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !666, file: !643, line: 56, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !642, file: !643, line: 89, baseType: !606, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !642, file: !643, line: 91, baseType: !685, size: 256, offset: 448)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 256, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !642, file: !643, line: 94, baseType: !689, size: 64, offset: 704)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !690, line: 25, size: 64, elements: !691)
!690 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !690, line: 26, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !690, line: 26, size: 64, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !693, file: !690, line: 28, baseType: !678, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !690, line: 30, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !690, line: 30, size: 64, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !697, file: !690, line: 31, baseType: !319, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !697, file: !690, line: 32, baseType: !89, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !642, file: !643, line: 95, baseType: !702, size: 64, offset: 768)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !643, line: 128, size: 1024, align: 512, elements: !705)
!705 = !{!706, !710, !711, !718, !724, !728, !732, !736, !737, !741, !745, !4707, !4711}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !704, file: !643, line: 129, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!89, !641, !7}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !704, file: !643, line: 130, baseType: !707, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !704, file: !643, line: 131, baseType: !712, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!89, !715, !717}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !704, file: !643, line: 132, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!89, !715, !7, !491, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !704, file: !643, line: 134, baseType: !725, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!89, !715}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !704, file: !643, line: 135, baseType: !729, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!89, !641}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !704, file: !643, line: 136, baseType: !733, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !641}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !704, file: !643, line: 137, baseType: !733, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !704, file: !643, line: 138, baseType: !738, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !641, !606}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !704, file: !643, line: 139, baseType: !742, size: 64, offset: 576)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!530, !641, !530, !89}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !704, file: !643, line: 140, baseType: !746, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!749, !4706}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !751, line: 70, size: 256, elements: !752)
!751 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!752 = !{!753, !754, !4702, !4703}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !750, file: !751, line: 71, baseType: !641, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !750, file: !751, line: 72, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !757)
!757 = !{!758, !759, !762, !763, !764, !767, !1201, !2442, !2482, !2567, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2584, !2588, !2589, !3425, !3431, !3432, !3435, !3436, !3437, !3478, !4636, !4637, !4638, !4639, !4640, !4641, !4644, !4645, !4652, !4653, !4654, !4655, !4656, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !756, file: !14, line: 1191, baseType: !272, size: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !756, file: !14, line: 1192, baseType: !760, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !254, line: 21, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !254, line: 18, baseType: !405)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !756, file: !14, line: 1193, baseType: !351, size: 8, offset: 160)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !756, file: !14, line: 1194, baseType: !255, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !756, file: !14, line: 1195, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !254, line: 52, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !562, line: 88, baseType: !379)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !756, file: !14, line: 1196, baseType: !768, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !770)
!770 = !{!771, !772, !773, !780, !784, !788, !792, !1186, !1187, !1191, !1193, !1194, !1195, !1197, !1198, !1199, !1200}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !769, file: !14, line: 2367, baseType: !491, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !769, file: !14, line: 2368, baseType: !89, size: 32, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !769, file: !14, line: 2376, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!89, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !779, line: 32, flags: DIFlagFwdDecl)
!779 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!780 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !769, file: !14, line: 2377, baseType: !781, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !769, file: !14, line: 2378, baseType: !785, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!641, !768, !89, !491, !256}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !769, file: !14, line: 2380, baseType: !789, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !755}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !769, file: !14, line: 2381, baseType: !793, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !795)
!795 = !{!796, !797, !798, !802, !823, !849, !850, !851, !852, !856, !861, !862, !874, !929, !930, !931, !932, !933, !934, !935, !936, !944, !948, !973, !994, !995, !996, !997, !1006, !1029, !1030, !1033, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1047, !1048, !1140, !1148, !1149, !1150, !1152, !1156, !1157, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1179, !1180, !1181, !1185}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !794, file: !6, line: 403, baseType: !5, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !794, file: !6, line: 406, baseType: !272, size: 128, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !794, file: !6, line: 409, baseType: !799, size: 448, offset: 192)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 448, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 56)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !794, file: !6, line: 417, baseType: !803, size: 768, offset: 640)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !804)
!804 = !{!805, !806, !807, !808, !811}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !803, file: !6, line: 46, baseType: !487, size: 512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !803, file: !6, line: 47, baseType: !793, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !803, file: !6, line: 48, baseType: !495, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !803, file: !6, line: 49, baseType: !809, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !803, file: !6, line: 50, baseType: !812, size: 64, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !814, line: 26, size: 256, elements: !815)
!814 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !813, file: !814, line: 27, baseType: !7, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !813, file: !814, line: 28, baseType: !818, size: 192, offset: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !819, line: 43, size: 192, elements: !820)
!819 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !818, file: !819, line: 44, baseType: !461, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !818, file: !819, line: 45, baseType: !272, size: 128, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !794, file: !6, line: 418, baseType: !824, size: 64, offset: 1408)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !826)
!826 = !{!827, !828, !833, !837, !841, !845}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !825, file: !6, line: 54, baseType: !565, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !825, file: !6, line: 55, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!560, !824, !832, !530}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !825, file: !6, line: 57, baseType: !834, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!560, !824, !832, !491, !574}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !825, file: !6, line: 59, baseType: !838, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !793, !491}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !825, file: !6, line: 60, baseType: !842, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!89, !793}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !825, file: !6, line: 61, baseType: !846, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !793}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !794, file: !6, line: 419, baseType: !491, size: 64, offset: 1472)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !794, file: !6, line: 420, baseType: !491, size: 64, offset: 1536)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !794, file: !6, line: 421, baseType: !495, size: 64, offset: 1600)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !794, file: !6, line: 424, baseType: !853, size: 64, offset: 1664)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !794, file: !6, line: 425, baseType: !857, size: 64, offset: 1728)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !348, line: 20, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !350, line: 26, baseType: !89)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !794, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !794, file: !6, line: 435, baseType: !863, size: 256, offset: 1856)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !864, line: 66, size: 256, elements: !865)
!864 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!865 = !{!866, !867, !868, !873}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !863, file: !864, line: 67, baseType: !371, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !863, file: !864, line: 68, baseType: !461, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !863, file: !864, line: 70, baseType: !869, size: 32, offset: 96)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !870, line: 15, size: 32, elements: !871)
!870 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !869, file: !870, line: 20, baseType: !339, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !863, file: !864, line: 72, baseType: !272, size: 128, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !794, file: !6, line: 437, baseType: !875, size: 64, offset: 2112)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !877, line: 69, size: 320, elements: !878)
!877 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!878 = !{!879, !880, !881, !901, !903, !907, !908}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !876, file: !877, line: 70, baseType: !491, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !876, file: !877, line: 71, baseType: !793, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !876, file: !877, line: 72, baseType: !882, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !877, line: 47, size: 256, elements: !885)
!885 = !{!886, !887, !893, !897}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !884, file: !877, line: 49, baseType: !7, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !884, file: !877, line: 51, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!89, !491, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !884, file: !877, line: 53, baseType: !894, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!89, !530, !891}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !884, file: !877, line: 55, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !256}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !876, file: !877, line: 73, baseType: !902, size: 16, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !876, file: !877, line: 74, baseType: !904, size: 8, offset: 208)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !348, line: 16, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !350, line: 20, baseType: !906)
!906 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !877, line: 75, baseType: !347, size: 8, offset: 216)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !877, line: 76, baseType: !909, size: 64, offset: 256)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !877, line: 76, size: 64, elements: !910)
!910 = !{!911, !912, !919}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !909, file: !877, line: 77, baseType: !256, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !909, file: !877, line: 78, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !877, line: 86, size: 128, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !915, file: !877, line: 87, baseType: !7, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !915, file: !877, line: 88, baseType: !530, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !909, file: !877, line: 79, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !877, line: 92, size: 256, elements: !923)
!923 = !{!924, !925, !926, !927, !928}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !922, file: !877, line: 94, baseType: !7, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !922, file: !877, line: 95, baseType: !7, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !922, file: !877, line: 96, baseType: !463, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !922, file: !877, line: 97, baseType: !882, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !922, file: !877, line: 98, baseType: !256, size: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !794, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !794, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !794, file: !6, line: 442, baseType: !853, size: 64, offset: 2240)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !794, file: !6, line: 443, baseType: !857, size: 64, offset: 2304)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !794, file: !6, line: 444, baseType: !452, size: 8, offset: 2368)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !794, file: !6, line: 451, baseType: !452, size: 8, offset: 2376)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !794, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !794, file: !6, line: 455, baseType: !937, size: 64, offset: 2432)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !939, line: 23, size: 96, elements: !940)
!939 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !938, file: !939, line: 24, baseType: !89, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !938, file: !939, line: 24, baseType: !89, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !938, file: !939, line: 24, baseType: !89, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !794, file: !6, line: 458, baseType: !945, size: 64, offset: 2496)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!89}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !794, file: !6, line: 460, baseType: !949, size: 4032, align: 512, offset: 2560)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 4032, elements: !971)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !950, file: !6, line: 363, baseType: !256, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !950, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !950, file: !6, line: 367, baseType: !955, size: 448, offset: 128)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !955, file: !6, line: 320, baseType: !793, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !955, file: !6, line: 321, baseType: !959, size: 384, offset: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !960, line: 40, size: 384, elements: !961)
!960 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !959, file: !960, line: 41, baseType: !963, size: 384, align: 64)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 384, align: 64, elements: !439)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !965, line: 5, size: 192, align: 64, elements: !966)
!965 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!966 = !{!967, !968, !970}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !964, file: !965, line: 6, baseType: !255, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !964, file: !965, line: 7, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !964, file: !965, line: 8, baseType: !969, size: 64, offset: 128)
!971 = !{!972}
!972 = !DISubrange(count: 7)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !794, file: !6, line: 463, baseType: !974, size: 192, offset: 6592)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !975, line: 8, size: 192, elements: !976)
!975 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!976 = !{!977, !978, !980}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !974, file: !975, line: 10, baseType: !7, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !974, file: !975, line: 11, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !974, file: !975, line: 12, baseType: !981, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !983, line: 59, size: 48, elements: !984)
!983 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!984 = !{!985, !989, !990, !991, !992, !993}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !982, file: !983, line: 60, baseType: !986, size: 16)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !348, line: 18, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !350, line: 23, baseType: !988)
!988 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !982, file: !983, line: 61, baseType: !986, size: 16, offset: 16)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !982, file: !983, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !982, file: !983, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !982, file: !983, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !982, file: !983, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !794, file: !6, line: 465, baseType: !255, size: 64, offset: 6784)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !794, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !794, file: !6, line: 470, baseType: !272, size: 128, offset: 6912)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !794, file: !6, line: 471, baseType: !998, size: 64, offset: 7040)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1000, line: 33, size: 96, elements: !1001)
!1000 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1001 = !{!1002, !1003, !1004, !1005}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !999, file: !1000, line: 37, baseType: !89, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !999, file: !1000, line: 43, baseType: !89, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !999, file: !1000, line: 45, baseType: !359, size: 16, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !1000, line: 47, baseType: !359, size: 16, offset: 80)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !794, file: !6, line: 476, baseType: !1007, size: 64, offset: 7104)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1009)
!1009 = !{!1010, !1026, !1027, !1028}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1008, file: !6, line: 379, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1013, line: 204, baseType: !1014)
!1013 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1013, line: 197, size: 192, elements: !1015)
!1015 = !{!1016, !1018, !1019, !1020, !1022, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1014, file: !1013, line: 198, baseType: !1017, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1013, line: 21, baseType: !406)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1014, file: !1013, line: 199, baseType: !351, size: 8, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1014, file: !1013, line: 200, baseType: !351, size: 8, offset: 40)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1014, file: !1013, line: 201, baseType: !1021, size: 16, offset: 48)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1013, line: 17, baseType: !358)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1014, file: !1013, line: 202, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1013, line: 16, baseType: !678)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1014, file: !1013, line: 203, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1013, line: 22, baseType: !678)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1008, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1008, file: !6, line: 381, baseType: !530, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1008, file: !6, line: 382, baseType: !530, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !794, file: !6, line: 477, baseType: !1008, size: 256, offset: 7168)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !794, file: !6, line: 480, baseType: !1031, size: 64, offset: 7424)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !794, file: !6, line: 483, baseType: !1034, size: 64, offset: 7488)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !794, file: !6, line: 488, baseType: !530, size: 64, offset: 7552)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !794, file: !6, line: 492, baseType: !256, size: 64, offset: 7616)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !794, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !794, file: !6, line: 495, baseType: !256, size: 64, offset: 7744)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !794, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !794, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !794, file: !6, line: 500, baseType: !1043, size: 64, offset: 7872)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1045, line: 45, baseType: !1046)
!1045 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !794, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !794, file: !6, line: 504, baseType: !1049, size: 64, offset: 8000)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1052, line: 96, size: 192, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1053 = !{!1054, !1055, !1108, !1112}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1051, file: !1052, line: 97, baseType: !7, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1051, file: !1052, line: 98, baseType: !1056, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1052, line: 24, size: 3072, elements: !1058)
!1058 = !{!1059, !1061, !1062, !1063, !1064, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1105, !1106, !1107}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1057, file: !1052, line: 26, baseType: !1060, size: 128)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 128, elements: !439)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1057, file: !1052, line: 27, baseType: !1060, size: 128, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1057, file: !1052, line: 28, baseType: !89, size: 32, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1057, file: !1052, line: 31, baseType: !319, size: 32, align: 512, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1057, file: !1052, line: 32, baseType: !1065, size: 960, offset: 576)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1066, line: 206, size: 960, elements: !1067)
!1066 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1067 = !{!1068, !1077, !1082, !1084, !1085, !1087}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1065, file: !1066, line: 207, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !254, line: 232, size: 128, align: 64, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1070, file: !254, line: 233, baseType: !1069, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1070, file: !254, line: 234, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1069}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1065, file: !1066, line: 208, baseType: !1078, size: 256, offset: 64)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 256, elements: !1080)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1080 = !{!1081}
!1081 = !DISubrange(count: 4)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1065, file: !1066, line: 209, baseType: !1083, size: 256, offset: 320)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !1080)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1065, file: !1066, line: 213, baseType: !267, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1065, file: !1066, line: 215, baseType: !1086, size: 256, offset: 640)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 256, elements: !1080)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !1066, line: 216, baseType: !347, size: 8, offset: 896)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1057, file: !1052, line: 33, baseType: !255, size: 64, offset: 1536)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1057, file: !1052, line: 34, baseType: !255, size: 64, offset: 1600)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1057, file: !1052, line: 35, baseType: !452, size: 8, offset: 1664)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1057, file: !1052, line: 36, baseType: !388, size: 320, offset: 1728)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1057, file: !1052, line: 37, baseType: !368, size: 256, offset: 2048)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1057, file: !1052, line: 38, baseType: !1070, size: 128, align: 64, offset: 2304)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1057, file: !1052, line: 39, baseType: !1095, size: 64, offset: 2432)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1052, line: 49, size: 768, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1096, file: !1052, line: 50, baseType: !319, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1096, file: !1052, line: 51, baseType: !1083, size: 256, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1096, file: !1052, line: 53, baseType: !1083, size: 256, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1096, file: !1052, line: 54, baseType: !255, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1096, file: !1052, line: 55, baseType: !1095, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1096, file: !1052, line: 56, baseType: !89, size: 32, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1096, file: !1052, line: 57, baseType: !89, size: 32, offset: 736)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1057, file: !1052, line: 40, baseType: !255, size: 64, offset: 2496)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1057, file: !1052, line: 42, baseType: !89, size: 32, offset: 2560)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1057, file: !1052, line: 43, baseType: !1050, size: 64, offset: 2624)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1051, file: !1052, line: 99, baseType: !1109, offset: 128)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1110, line: 211, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1111 = !{}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1051, file: !1052, line: 100, baseType: !1113, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1052, line: 63, size: 3008, elements: !1115)
!1115 = !{!1116, !1117, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1114, file: !1052, line: 64, baseType: !1095, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1114, file: !1052, line: 65, baseType: !1118, size: 192, offset: 64)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 192, elements: !474)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1114, file: !1052, line: 67, baseType: !89, size: 32, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1114, file: !1052, line: 68, baseType: !863, size: 256, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1114, file: !1052, line: 69, baseType: !319, size: 32, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1114, file: !1052, line: 70, baseType: !863, size: 256, offset: 640)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1114, file: !1052, line: 71, baseType: !255, size: 64, offset: 896)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1114, file: !1052, line: 72, baseType: !255, size: 64, offset: 960)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1114, file: !1052, line: 73, baseType: !255, size: 64, offset: 1024)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1114, file: !1052, line: 74, baseType: !255, size: 64, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1114, file: !1052, line: 75, baseType: !255, size: 64, offset: 1152)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1114, file: !1052, line: 76, baseType: !255, size: 64, offset: 1216)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1114, file: !1052, line: 77, baseType: !255, size: 64, offset: 1280)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1114, file: !1052, line: 78, baseType: !255, size: 64, offset: 1344)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1114, file: !1052, line: 79, baseType: !452, size: 8, offset: 1408)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1114, file: !1052, line: 80, baseType: !255, size: 64, offset: 1472)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1114, file: !1052, line: 81, baseType: !863, size: 256, offset: 1536)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1114, file: !1052, line: 82, baseType: !813, size: 256, offset: 1792)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1114, file: !1052, line: 84, baseType: !339, size: 32, offset: 2048)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1114, file: !1052, line: 87, baseType: !255, size: 64, offset: 2112)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1114, file: !1052, line: 88, baseType: !255, size: 64, offset: 2176)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1114, file: !1052, line: 89, baseType: !364, size: 704, offset: 2240)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1114, file: !1052, line: 90, baseType: !1050, size: 64, offset: 2944)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !794, file: !6, line: 515, baseType: !1141, size: 64, offset: 8064)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1143, line: 117, size: 128, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1142, file: !1143, line: 118, baseType: !859, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1142, file: !1143, line: 119, baseType: !859, size: 32, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1142, file: !1143, line: 120, baseType: !267, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !794, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !794, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !794, file: !6, line: 520, baseType: !1151, size: 64, offset: 8192)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !794, file: !6, line: 523, baseType: !1153, size: 64, offset: 8256)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !794, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !794, file: !6, line: 525, baseType: !1158, size: 64, offset: 8384)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !1161, line: 28, size: 192, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !1160, file: !1161, line: 29, baseType: !491, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !1160, file: !1161, line: 30, baseType: !491, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !1160, file: !1161, line: 31, baseType: !255, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !794, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !794, file: !6, line: 533, baseType: !256, size: 64, offset: 8512)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !794, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !794, file: !6, line: 535, baseType: !261, size: 64, offset: 8640)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !794, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !794, file: !6, line: 539, baseType: !89, size: 32, offset: 8736)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !794, file: !6, line: 540, baseType: !1173, size: 64, offset: 8768)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1175, line: 32, size: 64, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1174, file: !1175, line: 33, baseType: !859, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1174, file: !1175, line: 34, baseType: !859, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !794, file: !6, line: 563, baseType: !272, size: 128, offset: 8832)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !794, file: !6, line: 565, baseType: !272, size: 128, offset: 8960)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !794, file: !6, line: 568, baseType: !1182, size: 64, offset: 9088)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !794, file: !6, line: 570, baseType: !339, size: 32, offset: 9152)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !769, file: !14, line: 2382, baseType: !768, size: 64, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !769, file: !14, line: 2383, baseType: !1188, size: 64, offset: 512)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !254, line: 194, size: 64, elements: !1189)
!1189 = !{!1190}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1188, file: !254, line: 195, baseType: !395, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !769, file: !14, line: 2385, baseType: !1192, offset: 576)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1110, line: 206, elements: !1111)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !769, file: !14, line: 2386, baseType: !1192, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !769, file: !14, line: 2387, baseType: !1192, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !769, file: !14, line: 2388, baseType: !1196, offset: 576)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, elements: !474)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !769, file: !14, line: 2390, baseType: !1192, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !769, file: !14, line: 2391, baseType: !1192, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !769, file: !14, line: 2392, baseType: !1192, offset: 576)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !769, file: !14, line: 2393, baseType: !1192, offset: 576)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !756, file: !14, line: 1197, baseType: !1202, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1205)
!1205 = !{!1206, !1210, !1214, !1215, !1219, !1225, !1229, !1230, !1231, !1235, !1239, !1243, !1244, !1245, !1251, !1255, !1256, !2367, !2368, !2369, !2370, !2374, !2378, !2425, !2440, !2441}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1204, file: !14, line: 2058, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!606, !755}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1204, file: !14, line: 2059, baseType: !1211, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !606}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1204, file: !14, line: 2060, baseType: !1211, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1204, file: !14, line: 2062, baseType: !1216, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !606, !89}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1204, file: !14, line: 2063, baseType: !1220, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!89, !606, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1204, file: !14, line: 2064, baseType: !1226, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!89, !606}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1204, file: !14, line: 2065, baseType: !1211, size: 64, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1204, file: !14, line: 2066, baseType: !789, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1204, file: !14, line: 2067, baseType: !1232, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!89, !755, !89}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1204, file: !14, line: 2068, baseType: !1236, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!89, !755, !13}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1204, file: !14, line: 2069, baseType: !1240, size: 64, offset: 640)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!89, !755}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1204, file: !14, line: 2070, baseType: !1236, size: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1204, file: !14, line: 2071, baseType: !1240, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1204, file: !14, line: 2072, baseType: !1246, size: 64, offset: 832)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!89, !641, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1204, file: !14, line: 2073, baseType: !1252, size: 64, offset: 896)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!89, !755, !979, !530}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1204, file: !14, line: 2074, baseType: !789, size: 64, offset: 960)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1204, file: !14, line: 2076, baseType: !1257, size: 64, offset: 1024)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!89, !1260, !641}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1262, line: 17, size: 960, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1294, !1295, !2366}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1261, file: !1262, line: 18, baseType: !530, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1261, file: !1262, line: 19, baseType: !574, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1261, file: !1262, line: 20, baseType: !574, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1261, file: !1262, line: 21, baseType: !574, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1261, file: !1262, line: 22, baseType: !574, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1261, file: !1262, line: 23, baseType: !765, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1261, file: !1262, line: 24, baseType: !765, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1261, file: !1262, line: 25, baseType: !863, size: 256, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1261, file: !1262, line: 26, baseType: !1273, size: 64, offset: 704)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1262, line: 32, size: 256, elements: !1276)
!1276 = !{!1277, !1282, !1286, !1290}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1275, file: !1262, line: 33, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!256, !1260, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1275, file: !1262, line: 34, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !1260, !256}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1275, file: !1262, line: 35, baseType: !1287, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!256, !1260, !256, !1281}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1275, file: !1262, line: 36, baseType: !1291, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!89, !1260, !256}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1261, file: !1262, line: 27, baseType: !89, size: 32, offset: 768)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1261, file: !1262, line: 28, baseType: !1296, size: 64, offset: 832)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1299)
!1299 = !{!1300, !1311, !1312, !1314, !1315, !1316, !1317, !1318, !1379, !1579, !1588, !1594, !1595, !2356, !2357, !2358, !2359, !2361, !2362, !2365}
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !14, line: 995, baseType: !1301, size: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !14, line: 995, size: 128, elements: !1302)
!1302 = !{!1303, !1309, !1310}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1301, file: !14, line: 996, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1305, line: 60, size: 64, elements: !1306)
!1305 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1304, file: !1305, line: 61, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1301, file: !14, line: 997, baseType: !1070, size: 128, align: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1301, file: !14, line: 998, baseType: !7, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1298, file: !14, line: 1005, baseType: !319, size: 32, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1298, file: !14, line: 1006, baseType: !1313, size: 32, offset: 160)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !254, line: 156, baseType: !7)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1298, file: !14, line: 1007, baseType: !371, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1298, file: !14, line: 1008, baseType: !863, size: 256, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1298, file: !14, line: 1009, baseType: !765, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1298, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1298, file: !14, line: 1011, baseType: !1319, size: 256, offset: 640)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1320)
!1320 = !{!1321, !1342, !1375, !1376, !1377, !1378}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1319, file: !14, line: 949, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1323, line: 34, baseType: !1324)
!1323 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 25, size: 64, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1324, file: !1323, line: 26, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1328, line: 27, baseType: !1329)
!1328 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1328, line: 13, size: 64, elements: !1330)
!1330 = !{!1331, !1341}
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !1328, line: 14, baseType: !1332, size: 32)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1329, file: !1328, line: 14, size: 32, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1332, file: !1328, line: 15, baseType: !339, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !1328, line: 16, baseType: !1336, size: 32)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1328, line: 16, size: 32, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1336, file: !1328, line: 18, baseType: !347, size: 8)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1336, file: !1328, line: 19, baseType: !1340, size: 24, offset: 8)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 24, elements: !474)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1329, file: !1328, line: 26, baseType: !331, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1319, file: !14, line: 950, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1345)
!1345 = !{!1346, !1352, !1353, !1354, !1356, !1357, !1364, !1365}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1344, file: !19, line: 61, baseType: !1347, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1348, line: 113, baseType: !1349)
!1348 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1348, line: 111, size: 32, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1349, file: !1348, line: 112, baseType: !339, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1344, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1344, file: !19, line: 63, baseType: !319, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1344, file: !19, line: 65, baseType: !1355, size: 256, offset: 128)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1188, size: 256, elements: !1080)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1344, file: !19, line: 66, baseType: !1188, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1344, file: !19, line: 68, baseType: !1358, size: 192, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1359, line: 41, baseType: !1360)
!1359 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1359, line: 37, size: 192, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1360, file: !1359, line: 38, baseType: !319, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1360, file: !1359, line: 39, baseType: !272, size: 128, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1344, file: !19, line: 69, baseType: !1070, size: 128, align: 64, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1344, file: !19, line: 70, baseType: !1366, offset: 768)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, elements: !1373)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1367, file: !19, line: 55, baseType: !89, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1367, file: !19, line: 56, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!1373 = !{!1374}
!1374 = !DISubrange(count: -1)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1319, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1319, file: !14, line: 952, baseType: !612, size: 32, offset: 160)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1319, file: !14, line: 952, baseType: !612, size: 32, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1319, file: !14, line: 953, baseType: !89, size: 32, offset: 224)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1298, file: !14, line: 1012, baseType: !1380, size: 64, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1383, line: 110, size: 1472, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1401, !1402, !1403, !1404, !1405, !1406, !1524, !1525, !1526, !1527, !1528, !1559, !1562, !1566, !1574}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1382, file: !1383, line: 111, baseType: !371, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1382, file: !1383, line: 112, baseType: !612, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1382, file: !1383, line: 113, baseType: !621, size: 32, offset: 96)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1382, file: !1383, line: 114, baseType: !612, size: 32, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1382, file: !1383, line: 115, baseType: !621, size: 32, offset: 160)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1382, file: !1383, line: 116, baseType: !612, size: 32, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1382, file: !1383, line: 117, baseType: !621, size: 32, offset: 224)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1382, file: !1383, line: 118, baseType: !612, size: 32, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1382, file: !1383, line: 119, baseType: !621, size: 32, offset: 288)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1382, file: !1383, line: 120, baseType: !7, size: 32, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1382, file: !1383, line: 121, baseType: !1396, size: 64, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1397, line: 24, baseType: !1398)
!1397 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1397, line: 24, size: 64, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1398, file: !1397, line: 24, baseType: !677, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1382, file: !1383, line: 122, baseType: !1396, size: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1382, file: !1383, line: 123, baseType: !1396, size: 64, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1382, file: !1383, line: 124, baseType: !1396, size: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1382, file: !1383, line: 125, baseType: !1396, size: 64, offset: 640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1382, file: !1383, line: 127, baseType: !351, size: 8, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1382, file: !1383, line: 129, baseType: !1407, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1409, line: 195, size: 1728, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1410 = !{!1411, !1412, !1415, !1420, !1429, !1432, !1433, !1440, !1441, !1442, !1443, !1446, !1447, !1448, !1449, !1450, !1488, !1509}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1408, file: !1409, line: 196, baseType: !1347, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1408, file: !1409, line: 197, baseType: !1413, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1409, line: 28, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !254, line: 104, baseType: !859)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 198, baseType: !1416, size: 192, offset: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 198, size: 192, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1416, file: !1409, line: 199, baseType: !272, size: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1416, file: !1409, line: 200, baseType: !964, size: 192, align: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1408, file: !1409, line: 205, baseType: !1421, size: 320, offset: 256)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1422, line: 48, size: 320, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1423 = !{!1424, !1425, !1426, !1427, !1428}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1421, file: !1422, line: 49, baseType: !371, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1421, file: !1422, line: 55, baseType: !371, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1421, file: !1422, line: 57, baseType: !869, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1421, file: !1422, line: 59, baseType: !461, size: 32, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1421, file: !1422, line: 60, baseType: !272, size: 128, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1408, file: !1409, line: 206, baseType: !1430, size: 64, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1409, line: 206, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1408, file: !1409, line: 207, baseType: !256, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 208, baseType: !1434, size: 64, offset: 704)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 208, size: 64, elements: !1435)
!1435 = !{!1436, !1439}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1434, file: !1409, line: 209, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1438, line: 8, baseType: !378)
!1438 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1434, file: !1409, line: 210, baseType: !1437, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1408, file: !1409, line: 212, baseType: !1437, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1408, file: !1409, line: 213, baseType: !612, size: 32, offset: 832)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1408, file: !1409, line: 214, baseType: !621, size: 32, offset: 864)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1408, file: !1409, line: 215, baseType: !1444, size: 32, offset: 896)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1409, line: 31, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !254, line: 110, baseType: !405)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1408, file: !1409, line: 216, baseType: !359, size: 16, offset: 928)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1408, file: !1409, line: 217, baseType: !359, size: 16, offset: 944)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1408, file: !1409, line: 221, baseType: !988, size: 16, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1408, file: !1409, line: 228, baseType: !255, size: 64, offset: 1024)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 245, baseType: !1451, size: 320, offset: 1088)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 245, size: 320, elements: !1452)
!1452 = !{!1453, !1480}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1451, file: !1409, line: 246, baseType: !1454, size: 320)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1409, line: 114, size: 320, elements: !1455)
!1455 = !{!1456, !1457, !1469, !1472, !1479}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1454, file: !1409, line: 116, baseType: !255, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1409, line: 117, baseType: !1458, size: 64, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1409, line: 117, size: 64, elements: !1459)
!1459 = !{!1460, !1468}
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !1409, line: 118, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !1409, line: 118, size: 64, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1461, file: !1409, line: 120, baseType: !357, size: 16)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1461, file: !1409, line: 121, baseType: !1465, size: 48, offset: 16)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 48, elements: !1466)
!1466 = !{!1467}
!1467 = !DISubrange(count: 6)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1458, file: !1409, line: 127, baseType: !255, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1454, file: !1409, line: 129, baseType: !1470, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1409, line: 102, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1454, file: !1409, line: 130, baseType: !1473, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1409, line: 108, size: 192, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1474, file: !1409, line: 109, baseType: !1070, size: 128, align: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1474, file: !1409, line: 110, baseType: !1347, size: 32, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1474, file: !1409, line: 111, baseType: !452, size: 8, offset: 160)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1454, file: !1409, line: 131, baseType: !491, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !1409, line: 247, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !1409, line: 247, size: 320, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1481, file: !1409, line: 248, baseType: !255, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1481, file: !1409, line: 249, baseType: !255, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1481, file: !1409, line: 250, baseType: !1470, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1481, file: !1409, line: 251, baseType: !1473, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1481, file: !1409, line: 252, baseType: !530, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 260, baseType: !1489, size: 256, offset: 1408)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 260, size: 256, elements: !1490)
!1490 = !{!1491, !1497}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1489, file: !1409, line: 261, baseType: !1492, size: 256)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1409, line: 134, size: 256, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1492, file: !1409, line: 135, baseType: !256, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1492, file: !1409, line: 136, baseType: !1496, size: 256)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !1080)
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1409, line: 262, baseType: !1498, size: 256)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1489, file: !1409, line: 262, size: 256, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1498, file: !1409, line: 264, baseType: !272, size: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1498, file: !1409, line: 265, baseType: !1502, size: 128, offset: 128)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1503, line: 22, size: 128, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1504 = !{!1505, !1508}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1502, file: !1503, line: 23, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1503, line: 23, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1502, file: !1503, line: 24, baseType: !255, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1408, file: !1409, line: 280, baseType: !1510, size: 64, offset: 1664)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1409, line: 176, size: 192, elements: !1512)
!1512 = !{!1513, !1522, !1523}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1511, file: !1409, line: 177, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1409, line: 171, baseType: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!89, !1407, !1518, !1520, !1407}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1471)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1511, file: !1409, line: 178, baseType: !1407, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1511, file: !1409, line: 179, baseType: !1470, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1382, file: !1383, line: 130, baseType: !1407, size: 64, offset: 832)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1382, file: !1383, line: 131, baseType: !1407, size: 64, offset: 896)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1382, file: !1383, line: 132, baseType: !1407, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1382, file: !1383, line: 135, baseType: !256, size: 64, offset: 1024)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1382, file: !1383, line: 137, baseType: !1529, size: 64, offset: 1088)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1531, line: 14, size: 1088, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1532 = !{!1533, !1534, !1543, !1544, !1545, !1546, !1547, !1548}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1530, file: !1531, line: 15, baseType: !1347, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1530, file: !1531, line: 17, baseType: !1535, size: 320, offset: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1536, line: 22, size: 320, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1537 = !{!1538, !1539, !1540, !1541}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1535, file: !1536, line: 23, baseType: !461, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1535, file: !1536, line: 24, baseType: !377, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1535, file: !1536, line: 26, baseType: !272, size: 128, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1535, file: !1536, line: 28, baseType: !1542, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1530, file: !1531, line: 19, baseType: !255, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1530, file: !1531, line: 20, baseType: !371, size: 64, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1530, file: !1531, line: 23, baseType: !392, size: 128, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1530, file: !1531, line: 24, baseType: !612, size: 32, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1530, file: !1531, line: 29, baseType: !371, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1530, file: !1531, line: 36, baseType: !1549, size: 320, offset: 768)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1550, line: 15, size: 320, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1549, file: !1550, line: 16, baseType: !461, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1549, file: !1550, line: 18, baseType: !89, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1549, file: !1550, line: 19, baseType: !89, size: 32, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1549, file: !1550, line: 20, baseType: !89, size: 32, offset: 96)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1549, file: !1550, line: 21, baseType: !89, size: 32, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1549, file: !1550, line: 22, baseType: !255, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !1550, line: 23, baseType: !255, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1382, file: !1383, line: 138, baseType: !1560, size: 64, offset: 1152)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !613, line: 18, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1382, file: !1383, line: 139, baseType: !1563, size: 64, offset: 1216)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1565, line: 16, flags: DIFlagFwdDecl)
!1565 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1382, file: !1383, line: 140, baseType: !1567, size: 64, offset: 1280)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1383, line: 25, size: 64, elements: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1568, file: !1383, line: 26, baseType: !339, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1568, file: !1383, line: 27, baseType: !89, size: 32, offset: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1568, file: !1383, line: 28, baseType: !1573, offset: 64)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, elements: !1373)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1383, line: 142, baseType: !1575, size: 128, offset: 1344)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1383, line: 142, size: 128, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1575, file: !1383, line: 143, baseType: !89, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1575, file: !1383, line: 144, baseType: !1070, size: 128, align: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1298, file: !14, line: 1013, baseType: !1580, size: 256, offset: 960)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1580, file: !14, line: 971, baseType: !255, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1580, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1580, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1580, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1580, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1580, file: !14, line: 976, baseType: !765, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1298, file: !14, line: 1014, baseType: !1589, size: 128, offset: 1216)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1590, line: 8, size: 128, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1589, file: !1590, line: 9, baseType: !749, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1589, file: !1590, line: 10, baseType: !641, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1298, file: !14, line: 1015, baseType: !606, size: 64, offset: 1344)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1298, file: !14, line: 1016, baseType: !1596, size: 64, offset: 1408)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1599)
!1599 = !{!1600, !1601, !1606, !1610, !1614, !2224, !2225, !2238, !2251, !2268, !2272, !2273, !2277, !2278, !2282, !2287, !2288, !2292, !2296, !2302, !2303, !2307, !2308, !2315, !2319, !2323, !2329, !2333, !2337, !2341, !2345, !2346, !2352}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1598, file: !14, line: 1915, baseType: !793, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1598, file: !14, line: 1916, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!765, !1605, !765, !89}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1598, file: !14, line: 1917, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!560, !1605, !530, !574, !1281}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1598, file: !14, line: 1918, baseType: !1611, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!560, !1605, !491, !574, !1281}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1598, file: !14, line: 1919, baseType: !1615, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!560, !1618, !2162}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1627, !1628, !1629, !1630}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1619, file: !14, line: 374, baseType: !1605, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1619, file: !14, line: 375, baseType: !765, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1619, file: !14, line: 376, baseType: !1624, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1618, !267}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1619, file: !14, line: 377, baseType: !256, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1619, file: !14, line: 378, baseType: !89, size: 32, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1619, file: !14, line: 379, baseType: !357, size: 16, offset: 288)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !14, line: 380, baseType: !1631, size: 64, offset: 320)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !14, line: 380, size: 64, elements: !1632)
!1632 = !{!1633, !2158}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1631, file: !14, line: 386, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1636, line: 998, size: 448, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1637 = !{!1638, !2144, !2145}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1635, file: !1636, line: 999, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1641)
!1641 = !{!1642, !2111, !2125}
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !35, line: 295, baseType: !1643, size: 512)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !35, line: 295, size: 512, elements: !1644)
!1644 = !{!1645, !1671}
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !35, line: 296, baseType: !1646, size: 448)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !35, line: 296, size: 448, elements: !1647)
!1647 = !{!1648, !1649, !1658, !1659, !1660, !1669, !1670}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1646, file: !35, line: 298, baseType: !255, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !35, line: 299, baseType: !1650, size: 128, offset: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !35, line: 299, size: 128, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1650, file: !35, line: 300, baseType: !272, size: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !35, line: 302, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !35, line: 302, size: 128, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1654, file: !35, line: 303, baseType: !256, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1654, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1646, file: !35, line: 310, baseType: !602, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1646, file: !35, line: 311, baseType: !255, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !35, line: 312, baseType: !1661, size: 64, offset: 320)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !35, line: 312, size: 64, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1661, file: !35, line: 313, baseType: !256, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1661, file: !35, line: 314, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1666, file: !35, line: 256, baseType: !255, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1646, file: !35, line: 316, baseType: !339, size: 32, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1646, file: !35, line: 317, baseType: !339, size: 32, offset: 416)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1643, file: !35, line: 323, baseType: !1672, size: 512, align: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1673)
!1673 = !{!1674, !1675, !2105, !2110}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1672, file: !35, line: 75, baseType: !255, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !35, line: 83, baseType: !1676, size: 320, offset: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1672, file: !35, line: 83, size: 320, elements: !1677)
!1677 = !{!1678, !1699, !1713, !1717, !2104}
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !35, line: 84, baseType: !1679, size: 320)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !35, line: 84, size: 320, elements: !1680)
!1680 = !{!1681, !1692, !1693, !1698}
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !35, line: 90, baseType: !1682, size: 128)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !35, line: 90, size: 128, elements: !1683)
!1683 = !{!1684, !1685, !1690, !1691}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1682, file: !35, line: 91, baseType: !272, size: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !35, line: 94, baseType: !1686, size: 128)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !35, line: 94, size: 128, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1686, file: !35, line: 96, baseType: !256, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1686, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1682, file: !35, line: 102, baseType: !272, size: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1682, file: !35, line: 103, baseType: !272, size: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1679, file: !35, line: 106, baseType: !602, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !35, line: 107, baseType: !1694, size: 64, offset: 192)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !35, line: 107, size: 64, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1694, file: !35, line: 108, baseType: !255, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1694, file: !35, line: 109, baseType: !255, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1679, file: !35, line: 117, baseType: !255, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !35, line: 119, baseType: !1700, size: 320)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !35, line: 119, size: 320, elements: !1701)
!1701 = !{!1702, !1703, !1706, !1707, !1708}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1700, file: !35, line: 124, baseType: !255, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1700, file: !35, line: 125, baseType: !1704, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1700, file: !35, line: 126, baseType: !255, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1700, file: !35, line: 127, baseType: !255, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !35, line: 128, baseType: !1709, size: 64, offset: 256)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1700, file: !35, line: 128, size: 64, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1709, file: !35, line: 133, baseType: !255, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1709, file: !35, line: 138, baseType: !371, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !35, line: 141, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !35, line: 141, size: 64, elements: !1715)
!1715 = !{!1716}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1714, file: !35, line: 142, baseType: !255, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !35, line: 144, baseType: !1718, size: 128)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !35, line: 144, size: 128, elements: !1719)
!1719 = !{!1720, !2103}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1718, file: !35, line: 146, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1723)
!1723 = !{!1724, !1733, !1754, !1755, !1756, !1757, !1758, !2085, !2086, !2087}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1722, file: !27, line: 127, baseType: !1725, size: 384)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1725, file: !27, line: 22, baseType: !255, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1725, file: !27, line: 23, baseType: !258, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1725, file: !27, line: 24, baseType: !258, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1725, file: !27, line: 25, baseType: !255, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1725, file: !27, line: 26, baseType: !255, size: 64, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1725, file: !27, line: 27, baseType: !255, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1722, file: !27, line: 128, baseType: !1734, size: 128, offset: 384)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1735, line: 105, size: 128, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1734, file: !1735, line: 110, baseType: !255, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1734, file: !1735, line: 118, baseType: !1739, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1735, line: 95, size: 448, elements: !1741)
!1741 = !{!1742, !1743, !1749, !1750, !1751, !1752, !1753}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1740, file: !1735, line: 96, baseType: !371, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1740, file: !1735, line: 97, baseType: !1744, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1735, line: 60, baseType: !1746)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1740, file: !1735, line: 98, baseType: !1744, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1740, file: !1735, line: 99, baseType: !452, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1740, file: !1735, line: 100, baseType: !452, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1740, file: !1735, line: 101, baseType: !1070, size: 128, align: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1740, file: !1735, line: 102, baseType: !1748, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1722, file: !27, line: 129, baseType: !813, size: 256, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1722, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1722, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1722, file: !27, line: 132, baseType: !255, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1722, file: !27, line: 133, baseType: !1759, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1761)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1762)
!1762 = !{!1763, !1768, !2081}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1761, file: !27, line: 83, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !1767}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1761, file: !27, line: 89, baseType: !1769, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1775, line: 512, size: 896, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1776 = !{!1777, !2048, !2049, !2056, !2063, !2073, !2074, !2075, !2077, !2079}
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !1775, line: 513, baseType: !1778, size: 320)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1774, file: !1775, line: 513, size: 320, elements: !1779)
!1779 = !{!1780, !2043, !2045, !2046, !2047}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1778, file: !1775, line: 514, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1783)
!1783 = !{!1784, !1793, !1948, !1954, !1961, !1962, !1967, !1968, !1973, !1974, !1977, !2036, !2037, !2038, !2039, !2040, !2041}
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !35, line: 628, baseType: !1785, size: 128)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !35, line: 628, size: 128, elements: !1786)
!1786 = !{!1787, !1792}
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !35, line: 629, baseType: !1788, size: 128)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !35, line: 629, size: 128, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1788, file: !35, line: 631, baseType: !255, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1788, file: !35, line: 632, baseType: !255, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1785, file: !35, line: 635, baseType: !1070, size: 128, align: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1782, file: !35, line: 639, baseType: !1794, size: 64, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !1796)
!1796 = !{!1797, !1946}
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !35, line: 734, baseType: !1798, size: 10240)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1795, file: !35, line: 734, size: 10240, elements: !1799)
!1799 = !{!1800, !1804, !1817, !1821, !1822, !1823, !1824, !1825, !1826, !1835, !1836, !1837, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1876, !1878, !1881, !1926, !1927, !1928, !1931, !1932, !1933, !1936, !1937, !1938, !1944, !1945}
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !35, line: 739, baseType: !1801, size: 512, align: 512)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !35, line: 739, size: 512, align: 512, elements: !1802)
!1802 = !{!1803}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1801, file: !35, line: 747, baseType: !339, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1798, file: !35, line: 750, baseType: !1805, size: 128, offset: 512)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1806, line: 218, size: 128, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1807 = !{!1808, !1815, !1816}
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !1806, line: 219, baseType: !1809, size: 32)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1805, file: !1806, line: 219, size: 32, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1809, file: !1806, line: 220, baseType: !319, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1809, file: !1806, line: 221, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1806, line: 197, baseType: !1814)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1806, line: 197, elements: !1111)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1805, file: !1806, line: 223, baseType: !7, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1805, file: !1806, line: 224, baseType: !256, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1798, file: !35, line: 752, baseType: !1818, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!255, !1605, !255, !255, !255, !255}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1798, file: !35, line: 756, baseType: !255, size: 64, offset: 704)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1798, file: !35, line: 757, baseType: !255, size: 64, offset: 768)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1798, file: !35, line: 760, baseType: !255, size: 64, offset: 832)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1798, file: !35, line: 761, baseType: !255, size: 64, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1798, file: !35, line: 763, baseType: !255, size: 64, offset: 960)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1798, file: !35, line: 764, baseType: !1827, size: 64, offset: 1024)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1829, line: 299, baseType: !1830)
!1829 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1829, line: 299, size: 64, elements: !1831)
!1831 = !{!1832}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1830, file: !1829, line: 299, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1834, line: 18, baseType: !255)
!1834 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1798, file: !35, line: 773, baseType: !339, size: 32, offset: 1088)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1798, file: !35, line: 785, baseType: !339, size: 32, offset: 1120)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1798, file: !35, line: 795, baseType: !1838, size: 64, offset: 1152)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1839, file: !35, line: 727, baseType: !677, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1839, file: !35, line: 728, baseType: !89, size: 32, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1798, file: !35, line: 801, baseType: !255, size: 64, offset: 1216)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1798, file: !35, line: 804, baseType: !371, size: 64, offset: 1280)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1798, file: !35, line: 806, baseType: !89, size: 32, offset: 1344)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1798, file: !35, line: 808, baseType: !319, size: 32, offset: 1376)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1798, file: !35, line: 823, baseType: !1421, size: 320, offset: 1408)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1798, file: !35, line: 825, baseType: !272, size: 128, offset: 1728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1798, file: !35, line: 845, baseType: !89, size: 32, offset: 1856)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1798, file: !35, line: 849, baseType: !255, size: 64, offset: 1920)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1798, file: !35, line: 850, baseType: !255, size: 64, offset: 1984)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1798, file: !35, line: 852, baseType: !255, size: 64, offset: 2048)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1798, file: !35, line: 853, baseType: !255, size: 64, offset: 2112)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1798, file: !35, line: 854, baseType: !373, size: 64, offset: 2176)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1798, file: !35, line: 855, baseType: !255, size: 64, offset: 2240)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1798, file: !35, line: 856, baseType: !255, size: 64, offset: 2304)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1798, file: !35, line: 857, baseType: !255, size: 64, offset: 2368)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1798, file: !35, line: 858, baseType: !255, size: 64, offset: 2432)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1798, file: !35, line: 865, baseType: !652, size: 32, offset: 2496)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1798, file: !35, line: 867, baseType: !319, size: 32, offset: 2528)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1798, file: !35, line: 869, baseType: !255, size: 64, offset: 2560)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1798, file: !35, line: 869, baseType: !255, size: 64, offset: 2624)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1798, file: !35, line: 869, baseType: !255, size: 64, offset: 2688)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1798, file: !35, line: 869, baseType: !255, size: 64, offset: 2752)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1798, file: !35, line: 870, baseType: !255, size: 64, offset: 2816)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1798, file: !35, line: 870, baseType: !255, size: 64, offset: 2880)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1798, file: !35, line: 870, baseType: !255, size: 64, offset: 2944)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1798, file: !35, line: 871, baseType: !255, size: 64, offset: 3008)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1798, file: !35, line: 871, baseType: !255, size: 64, offset: 3072)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1798, file: !35, line: 871, baseType: !255, size: 64, offset: 3136)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1798, file: !35, line: 871, baseType: !255, size: 64, offset: 3200)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1798, file: !35, line: 873, baseType: !1873, size: 3328, offset: 3264)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 3328, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 52)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1798, file: !35, line: 875, baseType: !1877, size: 1280, offset: 6592)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1535, size: 1280, elements: !1080)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1798, file: !35, line: 877, baseType: !1879, size: 64, offset: 7872)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1798, file: !35, line: 880, baseType: !1882, size: 1088, offset: 7936)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1883, line: 72, baseType: !1884)
!1883 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1883, line: 23, size: 1088, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1893, !1894, !1895, !1896, !1923, !1924, !1925}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1884, file: !1883, line: 28, baseType: !677, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1884, file: !1883, line: 38, baseType: !373, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1884, file: !1883, line: 40, baseType: !255, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1884, file: !1883, line: 43, baseType: !1421, size: 320, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1884, file: !1883, line: 44, baseType: !1891, size: 64, offset: 512)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1883, line: 44, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1884, file: !1883, line: 48, baseType: !255, size: 64, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1884, file: !1883, line: 59, baseType: !863, size: 256, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1884, file: !1883, line: 60, baseType: !256, size: 64, offset: 896)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1884, file: !1883, line: 61, baseType: !1897, size: 64, offset: 960)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1900, line: 13, size: 1216, elements: !1901)
!1900 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1899, file: !1900, line: 14, baseType: !256, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1899, file: !1900, line: 15, baseType: !255, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1899, file: !1900, line: 17, baseType: !255, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1899, file: !1900, line: 17, baseType: !255, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1899, file: !1900, line: 18, baseType: !255, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1899, file: !1900, line: 18, baseType: !255, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1899, file: !1900, line: 19, baseType: !1909, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1899, file: !1900, line: 21, baseType: !267, size: 64, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1899, file: !1900, line: 23, baseType: !267, size: 64, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1899, file: !1900, line: 24, baseType: !267, size: 64, offset: 576)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1899, file: !1900, line: 25, baseType: !267, size: 64, offset: 640)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1899, file: !1900, line: 26, baseType: !267, size: 64, offset: 704)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1899, file: !1900, line: 27, baseType: !267, size: 64, offset: 768)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1899, file: !1900, line: 28, baseType: !267, size: 64, offset: 832)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1899, file: !1900, line: 29, baseType: !267, size: 64, offset: 896)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1899, file: !1900, line: 30, baseType: !267, size: 64, offset: 960)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1899, file: !1900, line: 31, baseType: !267, size: 64, offset: 1024)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1899, file: !1900, line: 32, baseType: !267, size: 64, offset: 1088)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1899, file: !1900, line: 33, baseType: !267, size: 64, offset: 1152)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1884, file: !1883, line: 63, baseType: !339, size: 32, offset: 1024)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1884, file: !1883, line: 69, baseType: !357, size: 16, offset: 1056)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1884, file: !1883, line: 70, baseType: !986, size: 16, offset: 1072)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !35, line: 882, baseType: !255, size: 64, offset: 9024)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1798, file: !35, line: 885, baseType: !319, size: 32, offset: 9088)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1798, file: !35, line: 886, baseType: !1929, size: 64, offset: 9152)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1798, file: !35, line: 901, baseType: !1560, size: 64, offset: 9216)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1798, file: !35, line: 904, baseType: !1605, size: 64, offset: 9280)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1798, file: !35, line: 906, baseType: !1934, size: 64, offset: 9344)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1798, file: !35, line: 930, baseType: !339, size: 32, offset: 9408)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1798, file: !35, line: 933, baseType: !339, size: 32, offset: 9440)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1798, file: !35, line: 935, baseType: !1939, size: 64, offset: 9472)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !134, line: 103, size: 64, elements: !1940)
!1940 = !{!1941}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1939, file: !134, line: 104, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !134, line: 101, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1798, file: !35, line: 940, baseType: !371, size: 64, offset: 9536)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1798, file: !35, line: 942, baseType: !368, size: 256, offset: 9600)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1795, file: !35, line: 986, baseType: !1947, offset: 10240)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, elements: !1373)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1782, file: !35, line: 640, baseType: !1949, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1829, line: 297, baseType: !1950)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1829, line: 297, size: 64, elements: !1951)
!1951 = !{!1952}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1950, file: !1829, line: 297, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1834, line: 19, baseType: !255)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !35, line: 646, baseType: !1955, size: 64, offset: 256)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !35, line: 646, size: 64, elements: !1956)
!1956 = !{!1957, !1960}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1955, file: !35, line: 647, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1959)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !255)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1955, file: !35, line: 648, baseType: !1959, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1782, file: !35, line: 666, baseType: !89, size: 32, offset: 320)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1782, file: !35, line: 667, baseType: !1963, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1965)
!1965 = !{!1966}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1964, file: !35, line: 580, baseType: !1421, size: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1782, file: !35, line: 670, baseType: !452, size: 8, offset: 448)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1782, file: !35, line: 681, baseType: !1969, size: 256, offset: 512)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1782, file: !35, line: 678, size: 256, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1969, file: !35, line: 679, baseType: !964, size: 192, align: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1969, file: !35, line: 680, baseType: !255, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1782, file: !35, line: 689, baseType: !272, size: 128, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1782, file: !35, line: 691, baseType: !1975, size: 64, offset: 896)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1782, file: !35, line: 694, baseType: !1978, size: 64, offset: 960)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1775, line: 563, size: 1024, elements: !1981)
!1981 = !{!1982, !1986, !1987, !1991, !1995, !1999, !2000, !2004, !2008, !2012, !2013, !2014, !2018, !2022, !2028, !2032}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1980, file: !1775, line: 564, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1781}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1980, file: !1775, line: 569, baseType: !1983, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1980, file: !1775, line: 571, baseType: !1988, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!89, !1781, !255}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1980, file: !1775, line: 572, baseType: !1992, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!89, !1781}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1980, file: !1775, line: 578, baseType: !1996, size: 64, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!89, !1781, !255, !255, !255}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1980, file: !1775, line: 580, baseType: !1769, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1980, file: !1775, line: 581, baseType: !2001, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!1772, !1773, !7}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1980, file: !1775, line: 582, baseType: !2005, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1772, !1773, !255, !255}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1980, file: !1775, line: 584, baseType: !2009, size: 64, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!255, !1781}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1980, file: !1775, line: 588, baseType: !1769, size: 64, offset: 576)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1980, file: !1775, line: 591, baseType: !1769, size: 64, offset: 640)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1980, file: !1775, line: 597, baseType: !2015, size: 64, offset: 704)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!89, !1781, !255, !256, !89, !89}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1980, file: !1775, line: 603, baseType: !2019, size: 64, offset: 768)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!491, !1781}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1980, file: !1775, line: 613, baseType: !2023, size: 64, offset: 832)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!89, !1781, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1980, file: !1775, line: 625, baseType: !2029, size: 64, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!2026, !1781, !255}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1980, file: !1775, line: 633, baseType: !2033, size: 64, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!1767, !1781, !255}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1782, file: !35, line: 697, baseType: !255, size: 64, offset: 1024)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1782, file: !35, line: 699, baseType: !1605, size: 64, offset: 1088)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1782, file: !35, line: 700, baseType: !256, size: 64, offset: 1152)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1782, file: !35, line: 711, baseType: !371, size: 64, offset: 1216)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1782, file: !35, line: 717, baseType: !2026, size: 64, offset: 1280)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1782, file: !35, line: 722, baseType: !2042, offset: 1344)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !1111)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1778, file: !1775, line: 515, baseType: !2044, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !254, line: 154, baseType: !7)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1778, file: !1775, line: 516, baseType: !255, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1778, file: !1775, line: 517, baseType: !255, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1778, file: !1775, line: 518, baseType: !255, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1774, file: !1775, line: 520, baseType: !34, size: 32, offset: 320)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1774, file: !1775, line: 522, baseType: !2050, size: 64, offset: 384)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1834, line: 22, baseType: !2052)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1834, line: 22, size: 64, elements: !2053)
!2053 = !{!2054}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2052, file: !1834, line: 22, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1834, line: 15, baseType: !255)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1774, file: !1775, line: 524, baseType: !2057, size: 64, offset: 448)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1829, line: 372, baseType: !2059)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1829, line: 372, size: 64, elements: !2060)
!2060 = !{!2061}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2059, file: !1829, line: 372, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1834, line: 16, baseType: !255)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !1775, line: 527, baseType: !2064, size: 64, offset: 512)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1774, file: !1775, line: 527, size: 64, elements: !2065)
!2065 = !{!2066, !2072}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2064, file: !1775, line: 528, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1834, line: 21, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1834, line: 21, size: 64, elements: !2069)
!2069 = !{!2070}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2068, file: !1834, line: 21, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1834, line: 14, baseType: !255)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2064, file: !1775, line: 529, baseType: !2051, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1774, file: !1775, line: 534, baseType: !1767, size: 64, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1774, file: !1775, line: 535, baseType: !1767, size: 64, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1774, file: !1775, line: 541, baseType: !2076, size: 64, offset: 704)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1774, file: !1775, line: 545, baseType: !2078, size: 64, offset: 768)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1774, file: !1775, line: 549, baseType: !2080, size: 64, offset: 832)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1829, line: 520, baseType: !1767)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1761, file: !27, line: 100, baseType: !2082, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!89, !1721, !255, !255, !89}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1722, file: !27, line: 134, baseType: !256, size: 64, offset: 960)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1722, file: !27, line: 135, baseType: !89, size: 32, offset: 1024)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !27, line: 136, baseType: !2088, size: 128, offset: 1088)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !27, line: 136, size: 128, elements: !2089)
!2089 = !{!2090, !2096}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2088, file: !27, line: 137, baseType: !2091, size: 128)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2092, line: 6, size: 128, elements: !2093)
!2092 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2093 = !{!2094, !2095}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2091, file: !2092, line: 7, baseType: !677, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2091, file: !2092, line: 8, baseType: !677, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !2088, file: !27, line: 138, baseType: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2088, file: !27, line: 138, elements: !2098)
!2098 = !{!2099, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2097, file: !27, line: 138, baseType: !2100)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2097, file: !27, line: 138, elements: !1111)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2097, file: !27, line: 138, baseType: !2102)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2091, elements: !1373)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1718, file: !35, line: 147, baseType: !256, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1676, file: !35, line: 161, baseType: !1070, size: 128, align: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !35, line: 164, baseType: !2106, size: 32, offset: 384)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1672, file: !35, line: 164, size: 32, elements: !2107)
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2106, file: !35, line: 169, baseType: !339, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2106, file: !35, line: 177, baseType: !7, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1672, file: !35, line: 181, baseType: !339, size: 32, offset: 416)
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !35, line: 325, baseType: !2112, size: 512, offset: 512)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !35, line: 325, size: 512, elements: !2113)
!2113 = !{!2114, !2124}
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !35, line: 326, baseType: !2115, size: 320)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !35, line: 326, size: 320, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2122, !2123}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2115, file: !35, line: 327, baseType: !255, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2115, file: !35, line: 328, baseType: !255, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2115, file: !35, line: 329, baseType: !255, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2115, file: !35, line: 331, baseType: !339, size: 32, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2115, file: !35, line: 332, baseType: !339, size: 32, offset: 224)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2115, file: !35, line: 333, baseType: !339, size: 32, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2115, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2112, file: !35, line: 339, baseType: !1672, size: 512, align: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !35, line: 341, baseType: !2126, size: 512, offset: 1024)
!2126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !35, line: 341, size: 512, elements: !2127)
!2127 = !{!2128, !2137, !2143}
!2128 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !35, line: 342, baseType: !2129, size: 384)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2126, file: !35, line: 342, size: 384, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2129, file: !35, line: 343, baseType: !255, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2129, file: !35, line: 344, baseType: !255, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2129, file: !35, line: 346, baseType: !256, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2129, file: !35, line: 347, baseType: !256, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2129, file: !35, line: 348, baseType: !256, size: 64, offset: 256)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2129, file: !35, line: 349, baseType: !256, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !35, line: 352, baseType: !2138, size: 256)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2126, file: !35, line: 352, size: 256, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2138, file: !35, line: 353, baseType: !255, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2138, file: !35, line: 354, baseType: !255, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2138, file: !35, line: 356, baseType: !272, size: 128, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2126, file: !35, line: 359, baseType: !1672, size: 512, align: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1635, file: !1636, line: 1000, baseType: !89, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1635, file: !1636, line: 1001, baseType: !2146, size: 320, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1359, line: 14, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1359, line: 30, size: 320, elements: !2148)
!2148 = !{!2149, !2150, !2151, !2157}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !1359, line: 31, baseType: !7, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2147, file: !1359, line: 32, baseType: !256, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2147, file: !1359, line: 33, baseType: !2152, size: 64, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1359, line: 16, baseType: !2153)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!89, !2156, !7, !89, !256}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2147, file: !1359, line: 34, baseType: !272, size: 128, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1631, file: !14, line: 395, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!560, !256}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2164, line: 41, size: 320, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2171, !2176, !2219}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2163, file: !2164, line: 42, baseType: !347, size: 8)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2163, file: !2164, line: 43, baseType: !452, size: 8, offset: 8)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2163, file: !2164, line: 44, baseType: !452, size: 8, offset: 16)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2163, file: !2164, line: 45, baseType: !452, size: 8, offset: 24)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2163, file: !2164, line: 46, baseType: !452, size: 8, offset: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !2164, line: 47, baseType: !2172, size: 64, offset: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2163, file: !2164, line: 47, size: 64, elements: !2173)
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2172, file: !2164, line: 48, baseType: !574, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2172, file: !2164, line: 49, baseType: !89, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !2164, line: 61, baseType: !2177, size: 128, offset: 128)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2163, file: !2164, line: 61, size: 128, elements: !2178)
!2178 = !{!2179, !2185}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2177, file: !2164, line: 67, baseType: !2180, size: 128)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2181, line: 17, size: 128, elements: !2182)
!2181 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2180, file: !2181, line: 19, baseType: !256, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2180, file: !2181, line: 20, baseType: !575, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !2164, line: 68, baseType: !2186, size: 128)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2177, file: !2164, line: 68, size: 128, elements: !2187)
!2187 = !{!2188, !2218}
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2186, file: !2164, line: 69, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2186, file: !2164, line: 69, size: 64, elements: !2190)
!2190 = !{!2191, !2194, !2201, !2210, !2217}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2189, file: !2164, line: 71, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2189, file: !2164, line: 72, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2164, line: 17, size: 128, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2197, file: !2164, line: 18, baseType: !256, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2197, file: !2164, line: 19, baseType: !574, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2189, file: !2164, line: 73, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2204)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2205, line: 31, size: 128, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2206 = !{!2207, !2208, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2204, file: !2205, line: 32, baseType: !1767, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2204, file: !2205, line: 33, baseType: !7, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2204, file: !2205, line: 34, baseType: !7, size: 32, offset: 96)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2189, file: !2164, line: 74, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !260, line: 296, size: 128, elements: !2213)
!2213 = !{!2214, !2215, !2216}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2212, file: !260, line: 297, baseType: !319, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2212, file: !260, line: 299, baseType: !2044, size: 32, offset: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2212, file: !260, line: 300, baseType: !256, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2189, file: !2164, line: 75, baseType: !256, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2186, file: !2164, line: 77, baseType: !574, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !2164, line: 80, baseType: !2220, size: 64, offset: 256)
!2220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2163, file: !2164, line: 80, size: 64, elements: !2221)
!2221 = !{!2222, !2223}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2220, file: !2164, line: 81, baseType: !255, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2220, file: !2164, line: 82, baseType: !765, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1598, file: !14, line: 1920, baseType: !1615, size: 64, offset: 320)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1598, file: !14, line: 1921, baseType: !2226, size: 64, offset: 384)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!89, !1618, !2229, !7}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !57, line: 1559, size: 192, elements: !2231)
!2231 = !{!2232, !2233, !2234}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2230, file: !57, line: 1560, baseType: !277, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2230, file: !57, line: 1561, baseType: !452, size: 8, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2230, file: !57, line: 1562, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !2229}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1598, file: !14, line: 1923, baseType: !2239, size: 64, offset: 448)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!89, !1605, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2244)
!2244 = !{!2245, !2250}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2243, file: !14, line: 1859, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2247)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!452, !2242, !491, !89, !765, !677, !7}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2243, file: !14, line: 1860, baseType: !765, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1598, file: !14, line: 1924, baseType: !2252, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!2255, !1605, !2257}
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2256, line: 59, baseType: !7)
!2256 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2259, line: 37, size: 128, elements: !2260)
!2259 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2260 = !{!2261, !2267}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2258, file: !2259, line: 38, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2259, line: 31, baseType: !2263)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !1605, !2266, !2257}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2258, file: !2259, line: 39, baseType: !2255, size: 32, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1598, file: !14, line: 1925, baseType: !2269, size: 64, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!267, !1605, !7, !255}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1598, file: !14, line: 1926, baseType: !2269, size: 64, offset: 640)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1598, file: !14, line: 1927, baseType: !2274, size: 64, offset: 704)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!89, !1605, !1781}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1598, file: !14, line: 1928, baseType: !255, size: 64, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1598, file: !14, line: 1929, baseType: !2279, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!89, !606, !1605}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1598, file: !14, line: 1930, baseType: !2283, size: 64, offset: 896)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!89, !1605, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1598, file: !14, line: 1931, baseType: !2279, size: 64, offset: 960)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1598, file: !14, line: 1932, baseType: !2289, size: 64, offset: 1024)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!89, !1605, !765, !765, !89}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1598, file: !14, line: 1933, baseType: !2293, size: 64, offset: 1088)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!89, !89, !1605, !89}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !14, line: 1934, baseType: !2297, size: 64, offset: 1152)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!89, !1605, !89, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1598, file: !14, line: 1935, baseType: !1818, size: 64, offset: 1216)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1598, file: !14, line: 1936, baseType: !2304, size: 64, offset: 1280)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!89, !89}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1598, file: !14, line: 1937, baseType: !2297, size: 64, offset: 1344)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1598, file: !14, line: 1938, baseType: !2309, size: 64, offset: 1408)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!560, !2312, !1605, !1281, !574, !7}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2314, line: 59, flags: DIFlagFwdDecl)
!2314 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1598, file: !14, line: 1939, baseType: !2316, size: 64, offset: 1472)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!560, !1605, !1281, !2312, !574, !7}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1598, file: !14, line: 1940, baseType: !2320, size: 64, offset: 1536)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !1605}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1598, file: !14, line: 1941, baseType: !2324, size: 64, offset: 1600)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!89, !1605, !89, !2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1598, file: !14, line: 1942, baseType: !2330, size: 64, offset: 1664)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!267, !1605, !89, !765, !765}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1598, file: !14, line: 1944, baseType: !2334, size: 64, offset: 1728)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{null, !1260, !1605}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1598, file: !14, line: 1948, baseType: !2338, size: 64, offset: 1792)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!560, !1605, !765, !1605, !765, !574, !7}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1598, file: !14, line: 1950, baseType: !2342, size: 64, offset: 1856)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!765, !1605, !765, !1605, !765, !765, !7}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1598, file: !14, line: 1953, baseType: !2289, size: 64, offset: 1920)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1598, file: !14, line: 1954, baseType: !2347, size: 64, offset: 1984)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!89, !2350, !7}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1598, file: !14, line: 1955, baseType: !2353, size: 64, offset: 2048)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!89, !2350, !2229, !7}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1298, file: !14, line: 1018, baseType: !677, size: 64, offset: 1472)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1298, file: !14, line: 1020, baseType: !256, size: 64, offset: 1536)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1298, file: !14, line: 1023, baseType: !256, size: 64, offset: 1600)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1298, file: !14, line: 1027, baseType: !2360, size: 64, offset: 1664)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1298, file: !14, line: 1029, baseType: !602, size: 64, offset: 1728)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1298, file: !14, line: 1030, baseType: !2363, size: 32, offset: 1792)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2364, line: 8, baseType: !405)
!2364 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1298, file: !14, line: 1031, baseType: !2363, size: 32, offset: 1824)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1261, file: !1262, line: 29, baseType: !256, size: 64, offset: 896)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1204, file: !14, line: 2077, baseType: !1257, size: 64, offset: 1088)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1204, file: !14, line: 2078, baseType: !1257, size: 64, offset: 1152)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1204, file: !14, line: 2079, baseType: !1257, size: 64, offset: 1216)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1204, file: !14, line: 2081, baseType: !2371, size: 64, offset: 1280)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!560, !755, !89, !530, !574, !765}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1204, file: !14, line: 2082, baseType: !2375, size: 64, offset: 1344)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!560, !755, !89, !491, !574, !765}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1204, file: !14, line: 2083, baseType: !2379, size: 64, offset: 1408)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!2382, !606}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2385)
!2385 = !{!2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2410, !2411, !2412}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2384, file: !51, line: 297, baseType: !392, size: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2384, file: !51, line: 298, baseType: !272, size: 128, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2384, file: !51, line: 299, baseType: !272, size: 128, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2384, file: !51, line: 300, baseType: !272, size: 128, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2384, file: !51, line: 301, baseType: !863, size: 256, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2384, file: !51, line: 302, baseType: !319, size: 32, offset: 768)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2384, file: !51, line: 303, baseType: !339, size: 32, offset: 800)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2384, file: !51, line: 304, baseType: !755, size: 64, offset: 832)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2384, file: !51, line: 305, baseType: !2395, size: 64, offset: 896)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2396)
!2396 = !{!2397, !2409}
!2397 = !DIDerivedType(tag: DW_TAG_member, scope: !2395, file: !51, line: 69, baseType: !2398, size: 32)
!2398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2395, file: !51, line: 69, size: 32, elements: !2399)
!2399 = !{!2400, !2401, !2402}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2398, file: !51, line: 70, baseType: !612, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2398, file: !51, line: 71, baseType: !621, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2398, file: !51, line: 72, baseType: !2403, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2404, line: 24, baseType: !2405)
!2404 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2404, line: 22, size: 32, elements: !2406)
!2406 = !{!2407}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2405, file: !2404, line: 23, baseType: !2408, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2404, line: 20, baseType: !618)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2395, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2384, file: !51, line: 306, baseType: !765, size: 64, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2384, file: !51, line: 307, baseType: !255, size: 64, offset: 1024)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2384, file: !51, line: 308, baseType: !2413, size: 576, offset: 1088)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2414)
!2414 = !{!2415, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2413, file: !51, line: 206, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !379)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2413, file: !51, line: 207, baseType: !2416, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2413, file: !51, line: 208, baseType: !2416, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2413, file: !51, line: 209, baseType: !2416, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2413, file: !51, line: 210, baseType: !2416, size: 64, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2413, file: !51, line: 211, baseType: !2416, size: 64, offset: 320)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2413, file: !51, line: 212, baseType: !2416, size: 64, offset: 384)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2413, file: !51, line: 213, baseType: !1437, size: 64, offset: 448)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2413, file: !51, line: 214, baseType: !1437, size: 64, offset: 512)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1204, file: !14, line: 2085, baseType: !2426, size: 64, offset: 1472)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!267, !755, !2429}
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2431, line: 15, size: 256, elements: !2432)
!2431 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2432 = !{!2433, !2434, !2435, !2436, !2437}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2430, file: !2431, line: 16, baseType: !2044, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2430, file: !2431, line: 19, baseType: !89, size: 32, offset: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2430, file: !2431, line: 26, baseType: !255, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2430, file: !2431, line: 33, baseType: !255, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2430, file: !2431, line: 36, baseType: !2438, size: 64, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1204, file: !14, line: 2087, baseType: !2426, size: 64, offset: 1536)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1204, file: !14, line: 2089, baseType: !789, size: 64, offset: 1600)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !756, file: !14, line: 1198, baseType: !2443, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2446)
!2446 = !{!2447, !2451, !2455, !2459, !2460, !2461, !2462, !2463, !2468, !2473, !2477}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2445, file: !51, line: 325, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!89, !2383}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2445, file: !51, line: 326, baseType: !2452, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!2383, !755, !89}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2445, file: !51, line: 327, baseType: !2456, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2383}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2445, file: !51, line: 328, baseType: !2448, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2445, file: !51, line: 329, baseType: !2448, size: 64, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2445, file: !51, line: 330, baseType: !2448, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2445, file: !51, line: 331, baseType: !1232, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2445, file: !51, line: 334, baseType: !2464, size: 64, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!2467, !606}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2445, file: !51, line: 335, baseType: !2469, size: 64, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!89, !606, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2445, file: !51, line: 337, baseType: !2474, size: 64, offset: 576)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!89, !606, !2467}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2445, file: !51, line: 339, baseType: !2478, size: 64, offset: 640)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!89, !755, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !756, file: !14, line: 1199, baseType: !2483, size: 64, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2486)
!2486 = !{!2487, !2493, !2494, !2498, !2499, !2500, !2515, !2538, !2542, !2543, !2566}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2485, file: !51, line: 431, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!89, !755, !89, !89, !2491}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2485, file: !51, line: 432, baseType: !1232, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2485, file: !51, line: 433, baseType: !2495, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!89, !755, !7}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2485, file: !51, line: 434, baseType: !2495, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2485, file: !51, line: 435, baseType: !1232, size: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2485, file: !51, line: 436, baseType: !2501, size: 64, offset: 320)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!89, !755, !89, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2505, file: !51, line: 418, baseType: !89, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2505, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2505, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2505, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2505, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2505, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2505, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2505, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2485, file: !51, line: 437, baseType: !2516, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!89, !755, !2395, !2519}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2520, file: !51, line: 346, baseType: !89, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2520, file: !51, line: 347, baseType: !677, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2520, file: !51, line: 348, baseType: !677, size: 64, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2520, file: !51, line: 349, baseType: !677, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2520, file: !51, line: 350, baseType: !677, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2520, file: !51, line: 351, baseType: !677, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2520, file: !51, line: 352, baseType: !677, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2520, file: !51, line: 353, baseType: !377, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2520, file: !51, line: 355, baseType: !377, size: 64, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2520, file: !51, line: 356, baseType: !89, size: 32, offset: 576)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2520, file: !51, line: 357, baseType: !89, size: 32, offset: 608)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2520, file: !51, line: 358, baseType: !677, size: 64, offset: 640)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2520, file: !51, line: 359, baseType: !677, size: 64, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2520, file: !51, line: 360, baseType: !677, size: 64, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2520, file: !51, line: 361, baseType: !377, size: 64, offset: 832)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2520, file: !51, line: 362, baseType: !89, size: 32, offset: 896)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2485, file: !51, line: 438, baseType: !2539, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!89, !755, !2481, !2519}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2485, file: !51, line: 440, baseType: !2516, size: 64, offset: 512)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2485, file: !51, line: 441, baseType: !2544, size: 64, offset: 576)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!89, !755, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2549)
!2549 = !{!2550, !2551}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2548, file: !51, line: 412, baseType: !7, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2548, file: !51, line: 413, baseType: !2552, size: 1344, offset: 64)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2553, size: 1344, elements: !474)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2565}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2553, file: !51, line: 398, baseType: !7, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2553, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2553, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2553, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2553, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2553, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2553, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2553, file: !51, line: 406, baseType: !679, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2553, file: !51, line: 407, baseType: !2564, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !254, line: 132, baseType: !677)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2553, file: !51, line: 408, baseType: !2564, size: 64, offset: 384)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2485, file: !51, line: 442, baseType: !2495, size: 64, offset: 640)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !756, file: !14, line: 1200, baseType: !2568, size: 64, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2570)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !756, file: !14, line: 1201, baseType: !255, size: 64, offset: 640)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !756, file: !14, line: 1202, baseType: !255, size: 64, offset: 704)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !756, file: !14, line: 1203, baseType: !255, size: 64, offset: 768)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !756, file: !14, line: 1204, baseType: !641, size: 64, offset: 832)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !756, file: !14, line: 1205, baseType: !1421, size: 320, offset: 896)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !756, file: !14, line: 1206, baseType: !89, size: 32, offset: 1216)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !756, file: !14, line: 1207, baseType: !339, size: 32, offset: 1248)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !756, file: !14, line: 1209, baseType: !256, size: 64, offset: 1280)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !756, file: !14, line: 1211, baseType: !2580, size: 64, offset: 1344)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2583)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !756, file: !14, line: 1223, baseType: !2585, size: 64, offset: 1408)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !658, line: 34, size: 64, elements: !2586)
!2586 = !{!2587}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2585, file: !658, line: 35, baseType: !661, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !756, file: !14, line: 1224, baseType: !272, size: 128, offset: 1472)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !756, file: !14, line: 1225, baseType: !2590, size: 64, offset: 1600)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !212, line: 40, size: 7424, elements: !2592)
!2592 = !{!2593, !2595, !2596, !2829, !2830, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2873, !2874}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2591, file: !212, line: 41, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !254, line: 131, baseType: !677)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2591, file: !212, line: 42, baseType: !2594, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2591, file: !212, line: 43, baseType: !2597, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !57, line: 128, size: 4544, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2603, !2605, !2606, !2607, !2608, !2609, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2795, !2796, !2797, !2798, !2801, !2802, !2805, !2808, !2809, !2812, !2813, !2814, !2815}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2598, file: !57, line: 133, baseType: !89, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2598, file: !57, line: 134, baseType: !89, size: 32, offset: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2598, file: !57, line: 135, baseType: !89, size: 32, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2598, file: !57, line: 137, baseType: !2604, size: 256, offset: 96)
!2604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 256, elements: !686)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2598, file: !57, line: 139, baseType: !359, size: 16, offset: 352)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2598, file: !57, line: 140, baseType: !359, size: 16, offset: 368)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2598, file: !57, line: 142, baseType: !2212, size: 128, offset: 384)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2598, file: !57, line: 143, baseType: !2590, size: 64, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2598, file: !57, line: 145, baseType: !2610, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2612)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !57, line: 1388, size: 1152, elements: !2613)
!2613 = !{!2614, !2701, !2705, !2710, !2714, !2718, !2719, !2723, !2724, !2730, !2734, !2735, !2739, !2765, !2770, !2775, !2776, !2780}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2612, file: !57, line: 1389, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{null, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !212, line: 265, size: 960, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2625, !2626, !2627, !2628, !2629, !2636, !2638, !2641, !2642, !2645, !2649, !2650, !2652, !2653, !2654, !2655, !2657, !2699}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2619, file: !212, line: 266, baseType: !2618, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2619, file: !212, line: 267, baseType: !2590, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2619, file: !212, line: 268, baseType: !2624, size: 32, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !212, line: 256, baseType: !406)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2619, file: !212, line: 271, baseType: !359, size: 16, offset: 160)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2619, file: !212, line: 272, baseType: !359, size: 16, offset: 176)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2619, file: !212, line: 273, baseType: !435, size: 8, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2619, file: !212, line: 274, baseType: !339, size: 32, offset: 224)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2619, file: !212, line: 276, baseType: !2630, size: 160, align: 32, offset: 256)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2205, line: 77, size: 160, align: 32, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2630, file: !2205, line: 78, baseType: !2594, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2630, file: !2205, line: 80, baseType: !7, size: 32, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2630, file: !2205, line: 82, baseType: !7, size: 32, offset: 96)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2630, file: !2205, line: 84, baseType: !7, size: 32, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2619, file: !212, line: 278, baseType: !2637, size: 32, offset: 416)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !212, line: 258, baseType: !7)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2619, file: !212, line: 279, baseType: !2639, size: 64, offset: 448)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !212, line: 20, baseType: !2616)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2619, file: !212, line: 280, baseType: !256, size: 64, offset: 512)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2619, file: !212, line: 288, baseType: !2643, size: 64, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !212, line: 288, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2619, file: !212, line: 289, baseType: !2646, size: 64, offset: 640)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !212, line: 228, size: 64, elements: !2647)
!2647 = !{!2648}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2646, file: !212, line: 229, baseType: !677, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2619, file: !212, line: 291, baseType: !677, size: 64, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !2619, file: !212, line: 299, baseType: !2651, offset: 768)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2619, file: !212, line: 299, elements: !1111)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2619, file: !212, line: 305, baseType: !359, size: 16, offset: 768)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2619, file: !212, line: 311, baseType: !359, size: 16, offset: 784)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2619, file: !212, line: 313, baseType: !339, size: 32, offset: 800)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2619, file: !212, line: 315, baseType: !2656, size: 64, offset: 832)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2619, file: !212, line: 317, baseType: !2658, size: 64, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2660, line: 678, size: 1984, elements: !2661)
!2660 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2661 = !{!2662, !2663, !2664, !2667, !2688, !2689, !2690, !2691, !2696, !2697, !2698}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2659, file: !2660, line: 679, baseType: !294, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2659, file: !2660, line: 680, baseType: !7, size: 32, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2659, file: !2660, line: 685, baseType: !2665, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2660, line: 685, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2659, file: !2660, line: 687, baseType: !2668, size: 576, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2669, line: 26, baseType: !2670)
!2669 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2669, line: 16, size: 576, elements: !2671)
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2682, !2687}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2670, file: !2669, line: 17, baseType: !319, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2670, file: !2669, line: 18, baseType: !89, size: 32, offset: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2670, file: !2669, line: 19, baseType: !89, size: 32, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2670, file: !2669, line: 20, baseType: !2328, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2670, file: !2669, line: 22, baseType: !256, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2670, file: !2669, line: 23, baseType: !2678, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2669, line: 13, baseType: !2680)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!256, !2044, !256}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2670, file: !2669, line: 24, baseType: !2683, size: 64, offset: 320)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2669, line: 14, baseType: !2685)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{null, !256, !256}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2670, file: !2669, line: 25, baseType: !1358, size: 192, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2659, file: !2660, line: 688, baseType: !2668, size: 576, offset: 768)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2659, file: !2660, line: 694, baseType: !7, size: 32, offset: 1344)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2659, file: !2660, line: 699, baseType: !319, size: 32, offset: 1376)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2659, file: !2660, line: 700, baseType: !2692, size: 128, offset: 1408)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2660, line: 550, size: 128, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2692, file: !2660, line: 551, baseType: !2618, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2692, file: !2660, line: 552, baseType: !2618, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2659, file: !2660, line: 701, baseType: !368, size: 256, offset: 1536)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2659, file: !2660, line: 702, baseType: !408, size: 64, offset: 1792)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2659, file: !2660, line: 707, baseType: !392, size: 128, offset: 1856)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2619, file: !212, line: 324, baseType: !2700, offset: 960)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2204, elements: !1373)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2612, file: !57, line: 1390, baseType: !2702, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!89, !2618, !2229, !7}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2612, file: !57, line: 1392, baseType: !2706, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!89, !2597, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !57, line: 115, baseType: !7)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2612, file: !57, line: 1393, baseType: !2711, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{null, !2597}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2612, file: !57, line: 1394, baseType: !2715, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!89, !2590, !2709, !7, !255}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2612, file: !57, line: 1396, baseType: !2715, size: 64, offset: 320)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2612, file: !57, line: 1398, baseType: !2720, size: 64, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!7, !2597, !7}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2612, file: !57, line: 1400, baseType: !2711, size: 64, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2612, file: !57, line: 1401, baseType: !2725, size: 64, offset: 512)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!89, !2590, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !14, line: 56, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2612, file: !57, line: 1402, baseType: !2731, size: 64, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!89, !2590, !452}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2612, file: !57, line: 1403, baseType: !2711, size: 64, offset: 640)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2612, file: !57, line: 1405, baseType: !2736, size: 64, offset: 704)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{null, !2590, !255}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2612, file: !57, line: 1406, baseType: !2740, size: 64, offset: 768)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!89, !2597, !2594, !7, !2743, !256}
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !57, line: 342, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!89, !2747, !7, !256}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2749, line: 106, size: 512, elements: !2750)
!2749 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2760, !2761}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2748, file: !2749, line: 107, baseType: !678, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2748, file: !2749, line: 108, baseType: !678, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2748, file: !2749, line: 109, baseType: !678, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2748, file: !2749, line: 110, baseType: !349, size: 8, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2748, file: !2749, line: 111, baseType: !349, size: 8, offset: 200)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2748, file: !2749, line: 112, baseType: !349, size: 8, offset: 208)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2748, file: !2749, line: 113, baseType: !349, size: 8, offset: 216)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2748, file: !2749, line: 114, baseType: !2759, size: 32, offset: 224)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 32, elements: !1080)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2748, file: !2749, line: 115, baseType: !678, size: 64, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2748, file: !2749, line: 116, baseType: !2762, size: 192, offset: 320)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 192, elements: !2763)
!2763 = !{!2764}
!2764 = !DISubrange(count: 24)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2612, file: !57, line: 1408, baseType: !2766, size: 64, offset: 832)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!530, !2597, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2612, file: !57, line: 1410, baseType: !2771, size: 64, offset: 896)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!89, !2597, !2774, !56}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2612, file: !57, line: 1412, baseType: !793, size: 64, offset: 960)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2612, file: !57, line: 1413, baseType: !2777, size: 64, offset: 1024)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2779)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !57, line: 37, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2612, file: !57, line: 1420, baseType: !2781, size: 64, offset: 1088)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!89, !2597, !2784}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2598, file: !57, line: 146, baseType: !281, size: 64, offset: 640)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2598, file: !57, line: 147, baseType: !256, size: 64, offset: 704)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2598, file: !57, line: 149, baseType: !2659, size: 1984, offset: 768)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2598, file: !57, line: 151, baseType: !89, size: 32, offset: 2752)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2598, file: !57, line: 152, baseType: !255, size: 64, offset: 2816)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2598, file: !57, line: 161, baseType: !863, size: 256, offset: 2880)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2598, file: !57, line: 162, baseType: !7, size: 32, offset: 3136)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2598, file: !57, line: 164, baseType: !2793, size: 64, offset: 3200)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2598, file: !57, line: 165, baseType: !487, size: 512, offset: 3264)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2598, file: !57, line: 166, baseType: !495, size: 64, offset: 3776)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2598, file: !57, line: 168, baseType: !272, size: 128, offset: 3840)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2598, file: !57, line: 170, baseType: !2799, size: 64, offset: 3968)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !57, line: 170, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2598, file: !57, line: 171, baseType: !339, size: 32, offset: 4032)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2598, file: !57, line: 172, baseType: !2803, size: 64, offset: 4096)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !57, line: 104, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2598, file: !57, line: 197, baseType: !2806, size: 64, offset: 4160)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !57, line: 197, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2598, file: !57, line: 199, baseType: !89, size: 32, offset: 4224)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2598, file: !57, line: 200, baseType: !2810, size: 64, offset: 4288)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !57, line: 105, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2598, file: !57, line: 201, baseType: !1109, offset: 4352)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2598, file: !57, line: 202, baseType: !677, size: 64, offset: 4352)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2598, file: !57, line: 203, baseType: !2709, size: 32, offset: 4416)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2598, file: !57, line: 209, baseType: !2816, size: 64, offset: 4480)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !57, line: 384, size: 576, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2822}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2817, file: !57, line: 385, baseType: !487, size: 512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !2817, file: !57, line: 386, baseType: !452, size: 8, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !2817, file: !57, line: 387, baseType: !7, size: 32, offset: 544)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !2817, file: !57, line: 388, baseType: !2823, offset: 576)
!2823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2824, elements: !1373)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !57, line: 378, size: 640, elements: !2825)
!2825 = !{!2826, !2827, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2824, file: !57, line: 379, baseType: !487, size: 512)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !2824, file: !57, line: 380, baseType: !2594, size: 64, offset: 512)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !2824, file: !57, line: 381, baseType: !2594, size: 64, offset: 576)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2591, file: !212, line: 44, baseType: !281, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2591, file: !212, line: 45, baseType: !2831, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !212, line: 45, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2591, file: !212, line: 46, baseType: !255, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2591, file: !212, line: 47, baseType: !452, size: 8, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2591, file: !212, line: 48, baseType: !347, size: 8, offset: 392)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2591, file: !212, line: 49, baseType: !452, size: 8, offset: 400)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2591, file: !212, line: 50, baseType: !452, size: 8, offset: 408)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2591, file: !212, line: 51, baseType: !760, size: 32, offset: 416)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2591, file: !212, line: 52, baseType: !339, size: 32, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2591, file: !212, line: 53, baseType: !319, size: 32, offset: 480)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2591, file: !212, line: 54, baseType: !606, size: 64, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2591, file: !212, line: 55, baseType: !256, size: 64, offset: 576)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2591, file: !212, line: 56, baseType: !256, size: 64, offset: 640)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2591, file: !212, line: 57, baseType: !2845, size: 64, offset: 704)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2847)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !57, line: 1477, size: 128, elements: !2848)
!2848 = !{!2849, !2853}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !2847, file: !57, line: 1478, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !2590, !452}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2847, file: !57, line: 1483, baseType: !2854, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !2590}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2591, file: !212, line: 58, baseType: !863, size: 256, offset: 768)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2591, file: !212, line: 60, baseType: !89, size: 32, offset: 1024)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2591, file: !212, line: 61, baseType: !89, size: 32, offset: 1056)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2591, file: !212, line: 62, baseType: !495, size: 64, offset: 1088)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2591, file: !212, line: 65, baseType: !863, size: 256, offset: 1152)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2591, file: !212, line: 66, baseType: !755, size: 64, offset: 1408)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2591, file: !212, line: 68, baseType: !2864, size: 64, offset: 1472)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !57, line: 63, size: 808, elements: !2866)
!2866 = !{!2867, !2871}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2865, file: !57, line: 64, baseType: !2868, size: 296)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 296, elements: !2869)
!2869 = !{!2870}
!2870 = !DISubrange(count: 37)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2865, file: !57, line: 65, baseType: !2872, size: 512, offset: 296)
!2872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 512, elements: !533)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2591, file: !212, line: 72, baseType: !452, size: 8, offset: 1536)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2591, file: !212, line: 77, baseType: !2875, size: 5824, offset: 1600)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !69, line: 705, size: 5824, elements: !2876)
!2876 = !{!2877, !2878, !2880, !2883, !2884, !2938, !3008, !3009, !3010, !3011, !3012, !3019, !3186, !3199, !3209, !3213, !3215, !3216, !3217, !3221, !3228, !3229, !3232, !3235, !3239, !3343, !3344, !3345, !3346, !3347, !3348, !3402, !3403, !3404, !3407, !3410, !3419, !3420, !3421, !3422, !3423, !3424}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2875, file: !69, line: 706, baseType: !487, size: 512)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2875, file: !69, line: 707, baseType: !2879, size: 64, offset: 512)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2875, file: !69, line: 709, baseType: !2881, size: 64, offset: 576)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !69, line: 37, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2875, file: !69, line: 711, baseType: !491, size: 64, offset: 640)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2875, file: !69, line: 712, baseType: !2885, size: 64, offset: 704)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2887)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !69, line: 89, size: 384, elements: !2888)
!2888 = !{!2889, !2890, !2891, !2897, !2903, !2907}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2887, file: !69, line: 90, baseType: !491, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2887, file: !69, line: 91, baseType: !578, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2887, file: !69, line: 92, baseType: !2892, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!89, !2895, !525}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2875)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2887, file: !69, line: 93, baseType: !2898, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!530, !2895, !2769, !2901, !2902}
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2887, file: !69, line: 95, baseType: !2904, size: 64, offset: 256)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{null, !2879}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2887, file: !69, line: 97, baseType: !2908, size: 64, offset: 320)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2910)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !81, line: 286, size: 1472, elements: !2911)
!2911 = !{!2912, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2910, file: !81, line: 287, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!89, !2879}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2910, file: !81, line: 288, baseType: !2904, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2910, file: !81, line: 289, baseType: !2913, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2910, file: !81, line: 290, baseType: !2913, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2910, file: !81, line: 291, baseType: !2913, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2910, file: !81, line: 292, baseType: !2913, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2910, file: !81, line: 293, baseType: !2913, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2910, file: !81, line: 294, baseType: !2913, size: 64, offset: 448)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2910, file: !81, line: 295, baseType: !2913, size: 64, offset: 512)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2910, file: !81, line: 296, baseType: !2913, size: 64, offset: 576)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2910, file: !81, line: 297, baseType: !2913, size: 64, offset: 640)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2910, file: !81, line: 298, baseType: !2913, size: 64, offset: 704)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2910, file: !81, line: 299, baseType: !2913, size: 64, offset: 768)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2910, file: !81, line: 300, baseType: !2913, size: 64, offset: 832)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2910, file: !81, line: 301, baseType: !2913, size: 64, offset: 896)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2910, file: !81, line: 302, baseType: !2913, size: 64, offset: 960)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2910, file: !81, line: 303, baseType: !2913, size: 64, offset: 1024)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2910, file: !81, line: 304, baseType: !2913, size: 64, offset: 1088)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2910, file: !81, line: 305, baseType: !2913, size: 64, offset: 1152)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2910, file: !81, line: 306, baseType: !2913, size: 64, offset: 1216)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2910, file: !81, line: 307, baseType: !2913, size: 64, offset: 1280)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2910, file: !81, line: 308, baseType: !2913, size: 64, offset: 1344)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2910, file: !81, line: 309, baseType: !2913, size: 64, offset: 1408)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2875, file: !69, line: 714, baseType: !2939, size: 64, offset: 768)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2941)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2942, line: 80, size: 1344, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3007}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2941, file: !2942, line: 81, baseType: !491, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2941, file: !2942, line: 82, baseType: !491, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2941, file: !2942, line: 83, baseType: !578, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2941, file: !2942, line: 84, baseType: !578, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2941, file: !2942, line: 85, baseType: !578, size: 64, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2941, file: !2942, line: 87, baseType: !2950, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!89, !2879, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !63, line: 96, size: 1152, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961, !2962, !2966, !2970, !2971, !2972, !2973, !2974, !2982, !2983, !2984, !2985, !2986, !2987}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2954, file: !63, line: 97, baseType: !491, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2954, file: !63, line: 98, baseType: !2939, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2954, file: !63, line: 100, baseType: !793, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2954, file: !63, line: 101, baseType: !491, size: 64, offset: 192)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2954, file: !63, line: 103, baseType: !452, size: 8, offset: 256)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2954, file: !63, line: 104, baseType: !62, size: 32, offset: 288)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2954, file: !63, line: 106, baseType: !2963, size: 64, offset: 320)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2965)
!2965 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !63, line: 106, flags: DIFlagFwdDecl)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2954, file: !63, line: 107, baseType: !2967, size: 64, offset: 384)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2969)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !63, line: 107, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2954, file: !63, line: 109, baseType: !2913, size: 64, offset: 448)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2954, file: !63, line: 110, baseType: !2904, size: 64, offset: 512)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2954, file: !63, line: 111, baseType: !2913, size: 64, offset: 576)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2954, file: !63, line: 112, baseType: !2904, size: 64, offset: 640)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2954, file: !63, line: 113, baseType: !2975, size: 64, offset: 704)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!89, !2879, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !81, line: 60, baseType: !2979)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !81, line: 58, size: 32, elements: !2980)
!2980 = !{!2981}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2979, file: !81, line: 59, baseType: !89, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2954, file: !63, line: 114, baseType: !2913, size: 64, offset: 768)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2954, file: !63, line: 115, baseType: !578, size: 64, offset: 832)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2954, file: !63, line: 116, baseType: !578, size: 64, offset: 896)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2954, file: !63, line: 118, baseType: !2908, size: 64, offset: 960)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2954, file: !63, line: 119, baseType: !2904, size: 64, offset: 1024)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2954, file: !63, line: 121, baseType: !2988, size: 64, offset: 1088)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !63, line: 121, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2941, file: !2942, line: 88, baseType: !2892, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2941, file: !2942, line: 89, baseType: !2913, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2941, file: !2942, line: 90, baseType: !2904, size: 64, offset: 512)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2941, file: !2942, line: 91, baseType: !2904, size: 64, offset: 576)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2941, file: !2942, line: 92, baseType: !2904, size: 64, offset: 640)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2941, file: !2942, line: 94, baseType: !2913, size: 64, offset: 704)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2941, file: !2942, line: 95, baseType: !2913, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2941, file: !2942, line: 97, baseType: !2975, size: 64, offset: 832)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2941, file: !2942, line: 98, baseType: !2913, size: 64, offset: 896)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2941, file: !2942, line: 100, baseType: !2913, size: 64, offset: 960)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2941, file: !2942, line: 102, baseType: !2913, size: 64, offset: 1024)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2941, file: !2942, line: 103, baseType: !2904, size: 64, offset: 1088)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2941, file: !2942, line: 105, baseType: !2908, size: 64, offset: 1152)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2941, file: !2942, line: 107, baseType: !3004, size: 64, offset: 1216)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3006)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2942, line: 107, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2941, file: !2942, line: 109, baseType: !452, size: 8, offset: 1280)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2875, file: !69, line: 715, baseType: !2953, size: 64, offset: 832)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2875, file: !69, line: 717, baseType: !256, size: 64, offset: 896)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2875, file: !69, line: 719, baseType: !256, size: 64, offset: 960)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2875, file: !69, line: 721, baseType: !863, size: 256, offset: 1024)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2875, file: !69, line: 725, baseType: !3013, size: 448, offset: 1280)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !69, line: 517, size: 448, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3018}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3013, file: !69, line: 518, baseType: !272, size: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3013, file: !69, line: 519, baseType: !272, size: 128, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3013, file: !69, line: 520, baseType: !272, size: 128, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3013, file: !69, line: 521, baseType: !68, size: 32, offset: 384)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2875, file: !69, line: 726, baseType: !3020, size: 2496, offset: 1728)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !81, line: 663, size: 2496, elements: !3021)
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3066, !3067, !3068, !3069, !3070, !3071, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3179, !3183}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3020, file: !81, line: 664, baseType: !2978, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3020, file: !81, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3020, file: !81, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3020, file: !81, line: 667, baseType: !452, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3020, file: !81, line: 668, baseType: !452, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3020, file: !81, line: 669, baseType: !452, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3020, file: !81, line: 670, baseType: !452, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3020, file: !81, line: 671, baseType: !452, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3020, file: !81, line: 672, baseType: !452, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3020, file: !81, line: 673, baseType: !452, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3020, file: !81, line: 674, baseType: !452, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3020, file: !81, line: 675, baseType: !405, size: 32, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3020, file: !81, line: 676, baseType: !319, size: 32, offset: 96)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3020, file: !81, line: 678, baseType: !272, size: 128, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3020, file: !81, line: 679, baseType: !813, size: 256, offset: 256)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3020, file: !81, line: 680, baseType: !3038, size: 64, offset: 512)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3040, line: 43, size: 1536, elements: !3041)
!3040 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3049, !3050, !3051, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3039, file: !3040, line: 44, baseType: !491, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3039, file: !3040, line: 45, baseType: !89, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3039, file: !3040, line: 46, baseType: !272, size: 128, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3039, file: !3040, line: 47, baseType: !319, size: 32, offset: 256)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3039, file: !3040, line: 48, baseType: !3047, size: 64, offset: 320)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !81, line: 629, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3039, file: !3040, line: 49, baseType: !388, size: 320, offset: 384)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3039, file: !3040, line: 50, baseType: !255, size: 64, offset: 704)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3039, file: !3040, line: 51, baseType: !3052, size: 64, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3053, line: 29, baseType: !377)
!3053 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3039, file: !3040, line: 52, baseType: !3052, size: 64, offset: 832)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3039, file: !3040, line: 53, baseType: !3052, size: 64, offset: 896)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3039, file: !3040, line: 54, baseType: !3052, size: 64, offset: 960)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3039, file: !3040, line: 55, baseType: !3052, size: 64, offset: 1024)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3039, file: !3040, line: 56, baseType: !255, size: 64, offset: 1088)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3039, file: !3040, line: 57, baseType: !255, size: 64, offset: 1152)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3039, file: !3040, line: 58, baseType: !255, size: 64, offset: 1216)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3039, file: !3040, line: 59, baseType: !255, size: 64, offset: 1280)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3039, file: !3040, line: 60, baseType: !255, size: 64, offset: 1344)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3039, file: !3040, line: 61, baseType: !2879, size: 64, offset: 1408)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3039, file: !3040, line: 62, baseType: !452, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3039, file: !3040, line: 63, baseType: !452, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3020, file: !81, line: 681, baseType: !452, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3020, file: !81, line: 682, baseType: !452, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3020, file: !81, line: 683, baseType: !452, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3020, file: !81, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3020, file: !81, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3020, file: !81, line: 690, baseType: !3072, size: 512, offset: 640)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !76, line: 118, size: 512, elements: !3073)
!3073 = !{!3074, !3080, !3081, !3086, !3141, !3142, !3143, !3144}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3072, file: !76, line: 119, baseType: !3075, size: 256)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3076, line: 9, size: 256, elements: !3077)
!3076 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3075, file: !3076, line: 10, baseType: !964, size: 192, align: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3075, file: !3076, line: 11, baseType: !3052, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3072, file: !76, line: 120, baseType: !3052, size: 64, offset: 256)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3072, file: !76, line: 121, baseType: !3082, size: 64, offset: 320)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!75, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3072, file: !76, line: 122, baseType: !3087, size: 64, offset: 384)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !76, line: 159, size: 512, align: 512, elements: !3089)
!3089 = !{!3090, !3115, !3116, !3119, !3124, !3125, !3136, !3140}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3088, file: !76, line: 160, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !76, line: 215, size: 4608, align: 512, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3092, file: !76, line: 216, baseType: !461, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3092, file: !76, line: 217, baseType: !7, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3092, file: !76, line: 218, baseType: !7, size: 32, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3092, file: !76, line: 219, baseType: !7, size: 32, offset: 96)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3092, file: !76, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3092, file: !76, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3092, file: !76, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3092, file: !76, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3092, file: !76, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3092, file: !76, line: 226, baseType: !7, size: 32, offset: 160)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3092, file: !76, line: 227, baseType: !359, size: 16, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3092, file: !76, line: 228, baseType: !359, size: 16, offset: 208)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3092, file: !76, line: 229, baseType: !7, size: 32, offset: 224)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3092, file: !76, line: 235, baseType: !3052, size: 64, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3092, file: !76, line: 236, baseType: !3085, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3092, file: !76, line: 237, baseType: !3052, size: 64, offset: 384)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3092, file: !76, line: 238, baseType: !3085, size: 64, offset: 448)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3092, file: !76, line: 239, baseType: !3112, size: 4096, align: 512, offset: 512)
!3112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3088, size: 4096, align: 512, elements: !3113)
!3113 = !{!3114}
!3114 = !DISubrange(count: 8)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3088, file: !76, line: 161, baseType: !7, size: 32, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3088, file: !76, line: 162, baseType: !3117, size: 32, offset: 96)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !254, line: 32, baseType: !3118)
!3118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !562, line: 96, baseType: !89)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3088, file: !76, line: 163, baseType: !3120, size: 32, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !648, line: 274, baseType: !3121)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !648, line: 274, size: 32, elements: !3122)
!3122 = !{!3123}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3121, file: !648, line: 274, baseType: !652, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3088, file: !76, line: 164, baseType: !3085, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3088, file: !76, line: 165, baseType: !3126, size: 128, offset: 256)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3076, line: 14, size: 128, elements: !3127)
!3127 = !{!3128}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3126, file: !3076, line: 15, baseType: !3129, size: 128)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !965, line: 26, size: 128, elements: !3130)
!3130 = !{!3131, !3135}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3129, file: !965, line: 27, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !965, line: 12, size: 64, elements: !3133)
!3133 = !{!3134}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3132, file: !965, line: 13, baseType: !969, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3129, file: !965, line: 28, baseType: !969, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3088, file: !76, line: 166, baseType: !3137, size: 64, offset: 384)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!3052}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3088, file: !76, line: 167, baseType: !3052, size: 64, offset: 448)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3072, file: !76, line: 123, baseType: !347, size: 8, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3072, file: !76, line: 124, baseType: !347, size: 8, offset: 456)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3072, file: !76, line: 125, baseType: !347, size: 8, offset: 464)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3072, file: !76, line: 126, baseType: !347, size: 8, offset: 472)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3020, file: !81, line: 691, baseType: !677, size: 64, offset: 1152)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3020, file: !81, line: 692, baseType: !368, size: 256, offset: 1216)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3020, file: !81, line: 693, baseType: !1358, size: 192, offset: 1472)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3020, file: !81, line: 694, baseType: !3047, size: 64, offset: 1664)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3020, file: !81, line: 695, baseType: !339, size: 32, offset: 1728)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3020, file: !81, line: 696, baseType: !339, size: 32, offset: 1760)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3020, file: !81, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3020, file: !81, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3020, file: !81, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3020, file: !81, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3020, file: !81, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3020, file: !81, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3020, file: !81, line: 703, baseType: !452, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3020, file: !81, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3020, file: !81, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3020, file: !81, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3020, file: !81, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3020, file: !81, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3020, file: !81, line: 709, baseType: !7, size: 32, offset: 1824)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3020, file: !81, line: 710, baseType: !80, size: 32, offset: 1856)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3020, file: !81, line: 711, baseType: !88, size: 32, offset: 1888)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3020, file: !81, line: 712, baseType: !88, size: 32, offset: 1920)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3020, file: !81, line: 713, baseType: !89, size: 32, offset: 1952)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3020, file: !81, line: 714, baseType: !89, size: 32, offset: 1984)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3020, file: !81, line: 715, baseType: !677, size: 64, offset: 2048)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3020, file: !81, line: 716, baseType: !677, size: 64, offset: 2112)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3020, file: !81, line: 717, baseType: !677, size: 64, offset: 2176)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3020, file: !81, line: 718, baseType: !677, size: 64, offset: 2240)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3020, file: !81, line: 720, baseType: !3174, size: 64, offset: 2304)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !81, line: 632, size: 64, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3175, file: !81, line: 633, baseType: !319, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3175, file: !81, line: 634, baseType: !7, size: 32, offset: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3020, file: !81, line: 721, baseType: !3180, size: 64, offset: 2368)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{null, !2879, !859}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3020, file: !81, line: 722, baseType: !3184, size: 64, offset: 2432)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !81, line: 722, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2875, file: !69, line: 727, baseType: !3187, size: 64, offset: 4224)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !81, line: 742, size: 1792, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3196, !3197, !3198}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3188, file: !81, line: 743, baseType: !2910, size: 1472)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3188, file: !81, line: 744, baseType: !2913, size: 64, offset: 1472)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3188, file: !81, line: 745, baseType: !3193, size: 64, offset: 1536)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !2879, !452}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3188, file: !81, line: 746, baseType: !2913, size: 64, offset: 1600)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3188, file: !81, line: 747, baseType: !2904, size: 64, offset: 1664)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3188, file: !81, line: 748, baseType: !2904, size: 64, offset: 1728)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2875, file: !69, line: 736, baseType: !3200, size: 128, offset: 4288)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !69, line: 529, size: 128, elements: !3201)
!3201 = !{!3202, !3206}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3200, file: !69, line: 531, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3205, line: 13, flags: DIFlagFwdDecl)
!3205 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3200, file: !69, line: 532, baseType: !3207, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !69, line: 49, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2875, file: !69, line: 738, baseType: !3210, size: 64, offset: 4416)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3212)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !69, line: 738, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2875, file: !69, line: 740, baseType: !3214, size: 64, offset: 4480)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2875, file: !69, line: 741, baseType: !677, size: 64, offset: 4544)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2875, file: !69, line: 746, baseType: !677, size: 64, offset: 4608)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2875, file: !69, line: 747, baseType: !3218, size: 64, offset: 4672)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3220)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !69, line: 747, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2875, file: !69, line: 749, baseType: !3222, size: 64, offset: 4736)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !69, line: 428, size: 128, elements: !3224)
!3224 = !{!3225, !3226, !3227}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3223, file: !69, line: 433, baseType: !7, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3223, file: !69, line: 434, baseType: !7, size: 32, offset: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3223, file: !69, line: 435, baseType: !255, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2875, file: !69, line: 751, baseType: !272, size: 128, offset: 4800)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2875, file: !69, line: 762, baseType: !3230, size: 64, offset: 4928)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !69, line: 762, flags: DIFlagFwdDecl)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2875, file: !69, line: 770, baseType: !3233, offset: 4992)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3234, line: 5, elements: !1111)
!3234 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2875, file: !69, line: 772, baseType: !3236, size: 64, offset: 4992)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3238, line: 18, flags: DIFlagFwdDecl)
!3238 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2875, file: !69, line: 773, baseType: !3240, size: 64, offset: 5056)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3242, line: 41, size: 512, elements: !3243)
!3242 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3243 = !{!3244, !3245, !3339, !3340, !3341, !3342}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3241, file: !3242, line: 42, baseType: !3240, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3241, file: !3242, line: 43, baseType: !3246, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3248)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3242, line: 125, size: 1408, elements: !3249)
!3249 = !{!3250, !3254, !3258, !3264, !3268, !3269, !3274, !3278, !3282, !3286, !3290, !3291, !3295, !3299, !3303, !3314, !3315, !3316, !3317, !3327, !3331, !3335}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3248, file: !3242, line: 126, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!3240, !3240}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3248, file: !3242, line: 127, baseType: !3255, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{null, !3240}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3248, file: !3242, line: 128, baseType: !3259, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!452, !3262}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3241)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3248, file: !3242, line: 129, baseType: !3265, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!1909, !3262, !2895}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3248, file: !3242, line: 131, baseType: !3259, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3248, file: !3242, line: 133, baseType: !3270, size: 64, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!3273, !3262}
!3273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3242, line: 132, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3248, file: !3242, line: 134, baseType: !3275, size: 64, offset: 384)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!452, !3262, !491}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3248, file: !3242, line: 136, baseType: !3279, size: 64, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!89, !3262, !491, !7, !256, !574}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3248, file: !3242, line: 141, baseType: !3283, size: 64, offset: 512)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!89, !3262, !491, !1151, !574}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3248, file: !3242, line: 144, baseType: !3287, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!491, !3262}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3248, file: !3242, line: 145, baseType: !3287, size: 64, offset: 640)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3248, file: !3242, line: 146, baseType: !3292, size: 64, offset: 704)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!3240, !3262}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3248, file: !3242, line: 148, baseType: !3296, size: 64, offset: 768)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!3240, !3262, !3240}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3248, file: !3242, line: 151, baseType: !3300, size: 64, offset: 832)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!3240, !3262, !491}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3248, file: !3242, line: 153, baseType: !3304, size: 64, offset: 896)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!89, !3262, !491, !491, !7, !7, !3307}
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3242, line: 94, size: 640, elements: !3309)
!3309 = !{!3310, !3311, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3308, file: !3242, line: 95, baseType: !3240, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3308, file: !3242, line: 96, baseType: !7, size: 32, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3308, file: !3242, line: 97, baseType: !3313, size: 512, offset: 128)
!3313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 512, elements: !3113)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3248, file: !3242, line: 158, baseType: !3296, size: 64, offset: 960)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3248, file: !3242, line: 161, baseType: !3292, size: 64, offset: 1024)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3248, file: !3242, line: 163, baseType: !3251, size: 64, offset: 1088)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3248, file: !3242, line: 164, baseType: !3318, size: 64, offset: 1152)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!89, !3262, !3321}
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3242, line: 73, size: 128, elements: !3323)
!3323 = !{!3324, !3325, !3326}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3322, file: !3242, line: 74, baseType: !7, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3322, file: !3242, line: 75, baseType: !7, size: 32, offset: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3322, file: !3242, line: 76, baseType: !3262, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3248, file: !3242, line: 166, baseType: !3328, size: 64, offset: 1216)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!256, !3240, !89}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3248, file: !3242, line: 167, baseType: !3332, size: 64, offset: 1280)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!89, !3262, !7}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3248, file: !3242, line: 168, baseType: !3336, size: 64, offset: 1344)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!89, !3240}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3241, file: !3242, line: 44, baseType: !2879, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3241, file: !3242, line: 45, baseType: !272, size: 128, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3241, file: !3242, line: 46, baseType: !272, size: 128, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3241, file: !3242, line: 47, baseType: !347, size: 8, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2875, file: !69, line: 776, baseType: !89, size: 32, offset: 5120)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2875, file: !69, line: 778, baseType: !760, size: 32, offset: 5152)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2875, file: !69, line: 779, baseType: !405, size: 32, offset: 5184)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2875, file: !69, line: 781, baseType: !319, size: 32, offset: 5216)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2875, file: !69, line: 782, baseType: !272, size: 128, offset: 5248)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2875, file: !69, line: 784, baseType: !3349, size: 64, offset: 5376)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3352, line: 52, size: 768, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3362, !3366, !3367, !3368, !3393, !3397, !3401}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3351, file: !3352, line: 53, baseType: !491, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3351, file: !3352, line: 55, baseType: !578, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3351, file: !3352, line: 56, baseType: !578, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3351, file: !3352, line: 58, baseType: !2892, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3351, file: !3352, line: 59, baseType: !3359, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!530, !2895, !2769}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3351, file: !3352, line: 61, baseType: !3363, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3349}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3351, file: !3352, line: 62, baseType: !2904, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3351, file: !3352, line: 64, baseType: !2913, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3351, file: !3352, line: 66, baseType: !3369, size: 64, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !97, line: 39, size: 384, elements: !3372)
!3372 = !{!3373, !3374, !3378, !3382, !3388, !3392}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3371, file: !97, line: 40, baseType: !96, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3371, file: !97, line: 41, baseType: !3375, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!452}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3371, file: !97, line: 42, baseType: !3379, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!256}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3371, file: !97, line: 43, baseType: !3383, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!1909, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !97, line: 19, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3371, file: !97, line: 44, baseType: !3389, size: 64, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!1909}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3371, file: !97, line: 45, baseType: !898, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3351, file: !3352, line: 67, baseType: !3394, size: 64, offset: 576)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!1909, !2895}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3351, file: !3352, line: 69, baseType: !3398, size: 64, offset: 640)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !2895, !2901, !2902}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3351, file: !3352, line: 71, baseType: !2908, size: 64, offset: 704)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2875, file: !69, line: 785, baseType: !578, size: 64, offset: 5440)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2875, file: !69, line: 787, baseType: !2904, size: 64, offset: 5504)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2875, file: !69, line: 788, baseType: !3405, size: 64, offset: 5568)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !69, line: 46, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2875, file: !69, line: 789, baseType: !3408, size: 64, offset: 5632)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !69, line: 48, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2875, file: !69, line: 791, baseType: !3411, size: 64, offset: 5696)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !69, line: 597, size: 128, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3412, file: !69, line: 598, baseType: !102, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3412, file: !69, line: 599, baseType: !111, size: 32, offset: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3412, file: !69, line: 600, baseType: !116, size: 32, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3412, file: !69, line: 601, baseType: !452, size: 8, offset: 96)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3412, file: !69, line: 602, baseType: !452, size: 8, offset: 104)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2875, file: !69, line: 793, baseType: !121, size: 32, offset: 5760)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2875, file: !69, line: 795, baseType: !452, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2875, file: !69, line: 796, baseType: !452, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2875, file: !69, line: 797, baseType: !452, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2875, file: !69, line: 798, baseType: !452, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2875, file: !69, line: 799, baseType: !452, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !756, file: !14, line: 1226, baseType: !3426, size: 64, offset: 1664)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !57, line: 1495, size: 128, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3427, file: !57, line: 1496, baseType: !2590, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3427, file: !57, line: 1497, baseType: !256, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !756, file: !14, line: 1227, baseType: !2793, size: 64, offset: 1728)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !756, file: !14, line: 1228, baseType: !3433, size: 64, offset: 1792)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !756, file: !14, line: 1229, baseType: !392, size: 128, offset: 1856)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !756, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !756, file: !14, line: 1231, baseType: !3438, size: 2496, offset: 2048)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3444, !3476}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3438, file: !51, line: 522, baseType: !7, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3438, file: !51, line: 523, baseType: !1421, size: 320, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3438, file: !51, line: 524, baseType: !3443, size: 192, offset: 384)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 192, elements: !474)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3438, file: !51, line: 525, baseType: !3445, size: 1728, offset: 576)
!3445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3446, size: 1728, elements: !474)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !3447)
!3447 = !{!3448, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3446, file: !51, line: 223, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !3451)
!3451 = !{!3452, !3453, !3466, !3467}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3450, file: !51, line: 446, baseType: !89, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3450, file: !51, line: 447, baseType: !3454, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3456, file: !51, line: 313, baseType: !1232, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3456, file: !51, line: 314, baseType: !1232, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3456, file: !51, line: 315, baseType: !1232, size: 64, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3456, file: !51, line: 316, baseType: !1232, size: 64, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3456, file: !51, line: 317, baseType: !2448, size: 64, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3456, file: !51, line: 318, baseType: !2448, size: 64, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3456, file: !51, line: 319, baseType: !2448, size: 64, offset: 384)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3456, file: !51, line: 320, baseType: !2478, size: 64, offset: 448)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3450, file: !51, line: 448, baseType: !793, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3450, file: !51, line: 449, baseType: !3449, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3446, file: !51, line: 224, baseType: !89, size: 32, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3446, file: !51, line: 226, baseType: !272, size: 128, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3446, file: !51, line: 227, baseType: !255, size: 64, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3446, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3446, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3446, file: !51, line: 230, baseType: !2416, size: 64, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3446, file: !51, line: 231, baseType: !2416, size: 64, offset: 448)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3446, file: !51, line: 232, baseType: !256, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3438, file: !51, line: 526, baseType: !3477, size: 192, offset: 2304)
!3477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3454, size: 192, elements: !474)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !756, file: !14, line: 1233, baseType: !3479, size: 2368, offset: 4544)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3480)
!3480 = !{!3481, !3482, !3483}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3479, file: !14, line: 1185, baseType: !359, size: 16)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3479, file: !14, line: 1186, baseType: !359, size: 16, offset: 16)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3479, file: !14, line: 1187, baseType: !3484, size: 2304, offset: 64)
!3484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3485, size: 2304, elements: !474)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3486, line: 12, size: 768, elements: !3487)
!3486 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3487 = !{!3488, !3496, !3497, !4634, !4635}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3485, file: !3486, line: 13, baseType: !3489, size: 384)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3490, line: 17, size: 384, elements: !3491)
!3490 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3491 = !{!3492, !3493, !3494, !3495}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3489, file: !3490, line: 18, baseType: !89, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3489, file: !3490, line: 19, baseType: !89, size: 32, offset: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3489, file: !3490, line: 20, baseType: !1358, size: 192, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3489, file: !3490, line: 22, baseType: !1070, size: 128, align: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3485, file: !3486, line: 14, baseType: !463, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3485, file: !3486, line: 15, baseType: !3498, size: 64, offset: 448)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3499, line: 16, size: 64, elements: !3500)
!3499 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3500 = !{!3501}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3498, file: !3499, line: 17, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2314, line: 746, size: 58368, elements: !3504)
!3504 = !{!3505, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3585, !3596, !3616, !3620, !3623, !3654, !3655, !3656, !3657, !3661, !3663, !3664, !3665, !3666, !3667, !3668, !3679, !3680, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3697, !3698, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3791, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3839, !3845, !3846, !3847, !3848, !3849, !3853, !3856, !3863, !3868, !3871, !3874, !3877, !3881, !4019, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4057, !4058, !4059, !4068, !4076, !4077, !4078, !4079, !4080, !4085, !4086, !4087, !4090, !4091, !4093, !4104, !4107, !4115, !4118, !4119, !4205, !4206, !4207, !4208, !4209, !4215, !4216, !4217, !4218, !4221, !4222, !4225, !4239, !4240, !4243, !4244, !4245, !4248, !4249, !4250, !4251, !4252, !4253, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4285, !4286, !4292, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4374, !4376, !4377, !4378, !4379, !4380, !4381, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4411, !4412, !4413}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3503, file: !2314, line: 752, baseType: !3506, size: 192)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3507, line: 56, size: 192, elements: !3508)
!3507 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3508 = !{!3509, !3510, !3511, !3512}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3506, file: !3507, line: 57, baseType: !255, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3506, file: !3507, line: 58, baseType: !255, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3506, file: !3507, line: 59, baseType: !405, size: 32, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3506, file: !3507, line: 61, baseType: !405, size: 32, offset: 160)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3503, file: !2314, line: 754, baseType: !7, size: 32, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3503, file: !2314, line: 767, baseType: !256, size: 64, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3503, file: !2314, line: 768, baseType: !1347, size: 32, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3503, file: !2314, line: 770, baseType: !7, size: 32, offset: 352)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3503, file: !2314, line: 771, baseType: !7, size: 32, offset: 384)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3503, file: !2314, line: 774, baseType: !89, size: 32, offset: 416)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3503, file: !2314, line: 775, baseType: !3520, size: 128, offset: 448)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3521, line: 58, size: 128, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3522 = !{!3523, !3524, !3529, !3530}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3520, file: !3521, line: 59, baseType: !1304, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3520, file: !3521, line: 60, baseType: !3525, size: 32, offset: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3520, file: !3521, line: 60, size: 32, elements: !3526)
!3526 = !{!3527, !3528}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3525, file: !3521, line: 61, baseType: !7, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3525, file: !3521, line: 62, baseType: !339, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3520, file: !3521, line: 65, baseType: !357, size: 16, offset: 96)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3520, file: !3521, line: 65, baseType: !357, size: 16, offset: 112)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3503, file: !2314, line: 776, baseType: !7, size: 32, offset: 576)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3503, file: !2314, line: 777, baseType: !255, size: 64, offset: 640)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3503, file: !2314, line: 778, baseType: !3502, size: 64, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3503, file: !2314, line: 787, baseType: !89, size: 32, offset: 768)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3503, file: !2314, line: 788, baseType: !89, size: 32, offset: 800)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3503, file: !2314, line: 790, baseType: !89, size: 32, offset: 832)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3503, file: !2314, line: 792, baseType: !89, size: 32, offset: 864)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3503, file: !2314, line: 793, baseType: !89, size: 32, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3503, file: !2314, line: 794, baseType: !89, size: 32, offset: 928)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3503, file: !2314, line: 795, baseType: !7, size: 32, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3503, file: !2314, line: 797, baseType: !3542, size: 2048, offset: 1024)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2314, line: 551, size: 2048, elements: !3543)
!3543 = !{!3544, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3564, !3567, !3568, !3569}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3542, file: !2314, line: 553, baseType: !3545, size: 128)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2314, line: 411, size: 128, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3545, file: !2314, line: 412, baseType: !255, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3545, file: !2314, line: 413, baseType: !405, size: 32, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3542, file: !2314, line: 554, baseType: !964, size: 192, align: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3542, file: !2314, line: 555, baseType: !677, size: 64, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3542, file: !2314, line: 556, baseType: !677, size: 64, offset: 384)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3542, file: !2314, line: 558, baseType: !272, size: 128, offset: 448)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3542, file: !2314, line: 559, baseType: !7, size: 32, offset: 576)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3542, file: !2314, line: 561, baseType: !677, size: 64, offset: 640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3542, file: !2314, line: 562, baseType: !677, size: 64, offset: 704)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3542, file: !2314, line: 563, baseType: !677, size: 64, offset: 768)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3542, file: !2314, line: 564, baseType: !677, size: 64, offset: 832)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3542, file: !2314, line: 565, baseType: !377, size: 64, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3542, file: !2314, line: 566, baseType: !677, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3542, file: !2314, line: 568, baseType: !677, size: 64, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3542, file: !2314, line: 571, baseType: !89, size: 32, offset: 1088)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3542, file: !2314, line: 572, baseType: !3563, size: 64, offset: 1152)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3542, file: !2314, line: 574, baseType: !3565, size: 64, offset: 1216)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2314, line: 49, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3542, file: !2314, line: 576, baseType: !3565, size: 64, offset: 1280)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3542, file: !2314, line: 578, baseType: !255, size: 64, offset: 1344)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3542, file: !2314, line: 588, baseType: !3570, size: 512, align: 512, offset: 1536)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2314, line: 497, size: 512, align: 512, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3570, file: !2314, line: 498, baseType: !677, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3570, file: !2314, line: 499, baseType: !677, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3570, file: !2314, line: 500, baseType: !677, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3570, file: !2314, line: 501, baseType: !405, size: 32, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3570, file: !2314, line: 502, baseType: !405, size: 32, offset: 224)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3570, file: !2314, line: 503, baseType: !255, size: 64, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3570, file: !2314, line: 504, baseType: !255, size: 64, offset: 320)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3570, file: !2314, line: 505, baseType: !255, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3570, file: !2314, line: 506, baseType: !3581, size: 64, align: 64, offset: 448)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2314, line: 445, size: 64, align: 64, elements: !3582)
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3581, file: !2314, line: 446, baseType: !7, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3581, file: !2314, line: 447, baseType: !7, size: 32, offset: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3503, file: !2314, line: 798, baseType: !3586, size: 384, offset: 3072)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2314, line: 592, size: 384, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3586, file: !2314, line: 593, baseType: !272, size: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3586, file: !2314, line: 594, baseType: !255, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3586, file: !2314, line: 595, baseType: !255, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3586, file: !2314, line: 596, baseType: !7, size: 32, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3586, file: !2314, line: 597, baseType: !359, size: 16, offset: 288)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3586, file: !2314, line: 598, baseType: !359, size: 16, offset: 304)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3586, file: !2314, line: 600, baseType: !3595, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3503, file: !2314, line: 799, baseType: !3597, size: 1792, offset: 3456)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2314, line: 610, size: 1792, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3597, file: !2314, line: 611, baseType: !964, size: 192, align: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3597, file: !2314, line: 618, baseType: !677, size: 64, offset: 192)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3597, file: !2314, line: 619, baseType: !677, size: 64, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3597, file: !2314, line: 620, baseType: !677, size: 64, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3597, file: !2314, line: 621, baseType: !677, size: 64, offset: 384)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3597, file: !2314, line: 622, baseType: !677, size: 64, offset: 448)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3597, file: !2314, line: 629, baseType: !377, size: 64, offset: 512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3597, file: !2314, line: 630, baseType: !677, size: 64, offset: 576)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3597, file: !2314, line: 631, baseType: !7, size: 32, offset: 640)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3597, file: !2314, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3597, file: !2314, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3597, file: !2314, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3597, file: !2314, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3597, file: !2314, line: 662, baseType: !3072, size: 512, offset: 704)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3597, file: !2314, line: 671, baseType: !3072, size: 512, offset: 1216)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3597, file: !2314, line: 679, baseType: !3615, size: 64, offset: 1728)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3503, file: !2314, line: 800, baseType: !3617, size: 64, offset: 5248)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2314, line: 800, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3503, file: !2314, line: 809, baseType: !3621, size: 64, offset: 5312)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2314, line: 70, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3503, file: !2314, line: 825, baseType: !3624, size: 2048, align: 512, offset: 5632)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2314, line: 509, size: 2048, align: 512, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3624, file: !2314, line: 511, baseType: !677, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3624, file: !2314, line: 512, baseType: !677, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3624, file: !2314, line: 513, baseType: !677, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3624, file: !2314, line: 514, baseType: !677, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3624, file: !2314, line: 515, baseType: !677, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3624, file: !2314, line: 516, baseType: !677, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3624, file: !2314, line: 518, baseType: !677, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3624, file: !2314, line: 519, baseType: !677, size: 64, offset: 448)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3624, file: !2314, line: 520, baseType: !377, size: 64, offset: 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3624, file: !2314, line: 522, baseType: !677, size: 64, offset: 576)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3624, file: !2314, line: 523, baseType: !677, size: 64, offset: 640)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3624, file: !2314, line: 524, baseType: !377, size: 64, offset: 704)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3624, file: !2314, line: 526, baseType: !377, size: 64, offset: 768)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3624, file: !2314, line: 527, baseType: !677, size: 64, offset: 832)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3624, file: !2314, line: 529, baseType: !677, size: 64, offset: 896)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3624, file: !2314, line: 530, baseType: !677, size: 64, offset: 960)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3624, file: !2314, line: 531, baseType: !677, size: 64, offset: 1024)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3624, file: !2314, line: 532, baseType: !677, size: 64, offset: 1088)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3624, file: !2314, line: 533, baseType: !677, size: 64, offset: 1152)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3624, file: !2314, line: 535, baseType: !677, size: 64, offset: 1216)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3624, file: !2314, line: 536, baseType: !677, size: 64, offset: 1280)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3624, file: !2314, line: 537, baseType: !677, size: 64, offset: 1344)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3624, file: !2314, line: 538, baseType: !677, size: 64, offset: 1408)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3624, file: !2314, line: 539, baseType: !677, size: 64, offset: 1472)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3624, file: !2314, line: 540, baseType: !677, size: 64, offset: 1536)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3624, file: !2314, line: 541, baseType: !677, size: 64, offset: 1600)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3624, file: !2314, line: 542, baseType: !677, size: 64, offset: 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3624, file: !2314, line: 543, baseType: !677, size: 64, offset: 1728)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3503, file: !2314, line: 833, baseType: !7, size: 32, offset: 7680)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3503, file: !2314, line: 836, baseType: !7, size: 32, offset: 7712)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3503, file: !2314, line: 837, baseType: !89, size: 32, offset: 7744)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3503, file: !2314, line: 838, baseType: !3658, size: 64, offset: 7808)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !413, line: 19, baseType: !415)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3503, file: !2314, line: 839, baseType: !3662, size: 64, offset: 7872)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3503, file: !2314, line: 840, baseType: !3660, size: 64, offset: 7936)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3503, file: !2314, line: 841, baseType: !256, size: 64, offset: 8000)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3503, file: !2314, line: 843, baseType: !359, size: 16, offset: 8064)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3503, file: !2314, line: 845, baseType: !359, size: 16, offset: 8080)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3503, file: !2314, line: 848, baseType: !89, size: 32, offset: 8096)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3503, file: !2314, line: 849, baseType: !3669, size: 32, offset: 8128)
!3669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2314, line: 718, size: 32, elements: !3670)
!3670 = !{!3671, !3678}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3669, file: !2314, line: 724, baseType: !3672, size: 32)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !2314, line: 719, size: 32, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3672, file: !2314, line: 720, baseType: !347, size: 8)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3672, file: !2314, line: 721, baseType: !347, size: 8, offset: 8)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3672, file: !2314, line: 722, baseType: !347, size: 8, offset: 16)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3672, file: !2314, line: 723, baseType: !347, size: 8, offset: 24)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3669, file: !2314, line: 725, baseType: !405, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3503, file: !2314, line: 850, baseType: !272, size: 128, offset: 8192)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3503, file: !2314, line: 851, baseType: !3681, size: 64, offset: 8320)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2314, line: 60, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3503, file: !2314, line: 855, baseType: !255, size: 64, offset: 8384)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3503, file: !2314, line: 856, baseType: !347, size: 8, offset: 8448)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3503, file: !2314, line: 857, baseType: !347, size: 8, offset: 8456)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3503, file: !2314, line: 858, baseType: !89, size: 32, offset: 8480)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3503, file: !2314, line: 859, baseType: !272, size: 128, offset: 8512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3503, file: !2314, line: 860, baseType: !89, size: 32, offset: 8640)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3503, file: !2314, line: 861, baseType: !272, size: 128, offset: 8704)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3503, file: !2314, line: 873, baseType: !3691, size: 256, offset: 8832)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2314, line: 376, size: 256, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3691, file: !2314, line: 381, baseType: !255, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3691, file: !2314, line: 384, baseType: !679, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3691, file: !2314, line: 389, baseType: !679, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3691, file: !2314, line: 392, baseType: !679, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3503, file: !2314, line: 875, baseType: !272, size: 128, offset: 9088)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3503, file: !2314, line: 877, baseType: !3699, size: 320, offset: 9216)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3700, line: 86, size: 320, elements: !3701)
!3700 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3701 = !{!3702, !3703, !3704}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3699, file: !3700, line: 87, baseType: !89, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3699, file: !3700, line: 88, baseType: !272, size: 128, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3699, file: !3700, line: 89, baseType: !272, size: 128, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3503, file: !2314, line: 878, baseType: !964, size: 192, align: 64, offset: 9536)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3503, file: !2314, line: 881, baseType: !1794, size: 64, offset: 9728)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3503, file: !2314, line: 882, baseType: !1794, size: 64, offset: 9792)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3503, file: !2314, line: 884, baseType: !89, size: 32, offset: 9856)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3503, file: !2314, line: 885, baseType: !89, size: 32, offset: 9888)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3503, file: !2314, line: 886, baseType: !89, size: 32, offset: 9920)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3503, file: !2314, line: 888, baseType: !89, size: 32, offset: 9952)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3503, file: !2314, line: 890, baseType: !255, size: 64, offset: 9984)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3503, file: !2314, line: 893, baseType: !7, size: 32, offset: 10048)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3503, file: !2314, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3503, file: !2314, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3503, file: !2314, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3503, file: !2314, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3503, file: !2314, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3503, file: !2314, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3503, file: !2314, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3503, file: !2314, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3503, file: !2314, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3503, file: !2314, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3503, file: !2314, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3503, file: !2314, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3503, file: !2314, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3503, file: !2314, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3503, file: !2314, line: 969, baseType: !255, size: 64, offset: 10176)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3503, file: !2314, line: 971, baseType: !3730, size: 448, offset: 10240)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !128, line: 25, size: 448, elements: !3731)
!3731 = !{!3732, !3733, !3738}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3730, file: !128, line: 26, baseType: !255, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3730, file: !128, line: 27, baseType: !3734, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!267, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, scope: !3730, file: !128, line: 28, baseType: !3739, size: 320, offset: 128)
!3739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3730, file: !128, line: 28, size: 320, elements: !3740)
!3740 = !{!3741, !3751, !3776}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3739, file: !128, line: 37, baseType: !3742, size: 320)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3739, file: !128, line: 30, size: 320, elements: !3743)
!3743 = !{!3744, !3746, !3747, !3748, !3749, !3750}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3742, file: !128, line: 31, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3742, file: !128, line: 32, baseType: !405, size: 32, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3742, file: !128, line: 33, baseType: !405, size: 32, offset: 96)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3742, file: !128, line: 34, baseType: !405, size: 32, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3742, file: !128, line: 35, baseType: !677, size: 64, offset: 192)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3742, file: !128, line: 36, baseType: !3745, size: 64, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3739, file: !128, line: 47, baseType: !3752, size: 192)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3739, file: !128, line: 39, size: 192, elements: !3753)
!3753 = !{!3754, !3755, !3756, !3775}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3752, file: !128, line: 40, baseType: !3117, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3752, file: !128, line: 41, baseType: !127, size: 32, offset: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, scope: !3752, file: !128, line: 42, baseType: !3757, size: 64, offset: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3752, file: !128, line: 42, size: 64, elements: !3758)
!3758 = !{!3759, !3767}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3757, file: !128, line: 43, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3762, line: 7, size: 128, elements: !3763)
!3762 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3763 = !{!3764, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3761, file: !3762, line: 8, baseType: !3765, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !562, line: 93, baseType: !379)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3761, file: !3762, line: 9, baseType: !379, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3757, file: !128, line: 44, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3770, line: 7, size: 64, elements: !3771)
!3770 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3771 = !{!3772, !3774}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3769, file: !3770, line: 8, baseType: !3773, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3770, line: 5, baseType: !859)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3769, file: !3770, line: 9, baseType: !859, size: 32, offset: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3752, file: !128, line: 46, baseType: !677, size: 64, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3739, file: !128, line: 55, baseType: !3777, size: 256)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3739, file: !128, line: 49, size: 256, elements: !3778)
!3778 = !{!3779, !3787, !3788, !3789, !3790}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3777, file: !128, line: 50, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3782, line: 36, size: 64, elements: !3783)
!3782 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3783 = !{!3784, !3785, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3781, file: !3782, line: 37, baseType: !89, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3781, file: !3782, line: 38, baseType: !988, size: 16, offset: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3781, file: !3782, line: 39, baseType: !988, size: 16, offset: 48)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3777, file: !128, line: 51, baseType: !89, size: 32, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3777, file: !128, line: 52, baseType: !89, size: 32, offset: 96)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3777, file: !128, line: 53, baseType: !255, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3777, file: !128, line: 54, baseType: !255, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3503, file: !2314, line: 973, baseType: !3792, size: 32, offset: 10688)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !254, line: 27, baseType: !3793)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !562, line: 28, baseType: !89)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3503, file: !2314, line: 974, baseType: !3792, size: 32, offset: 10720)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3503, file: !2314, line: 978, baseType: !255, size: 64, offset: 10752)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3503, file: !2314, line: 987, baseType: !3502, size: 64, offset: 10816)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3503, file: !2314, line: 990, baseType: !3502, size: 64, offset: 10880)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3503, file: !2314, line: 995, baseType: !272, size: 128, offset: 10944)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3503, file: !2314, line: 996, baseType: !272, size: 128, offset: 11072)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3503, file: !2314, line: 997, baseType: !3502, size: 64, offset: 11200)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3503, file: !2314, line: 1005, baseType: !272, size: 128, offset: 11264)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3503, file: !2314, line: 1006, baseType: !272, size: 128, offset: 11392)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3503, file: !2314, line: 1009, baseType: !1343, size: 64, offset: 11520)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3503, file: !2314, line: 1010, baseType: !3805, size: 512, offset: 11584)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 512, elements: !1080)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3503, file: !2314, line: 1011, baseType: !272, size: 128, offset: 12096)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3503, file: !2314, line: 1012, baseType: !272, size: 128, offset: 12224)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3503, file: !2314, line: 1014, baseType: !812, size: 64, offset: 12352)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3503, file: !2314, line: 1017, baseType: !979, size: 64, offset: 12416)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3503, file: !2314, line: 1020, baseType: !979, size: 64, offset: 12480)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3503, file: !2314, line: 1023, baseType: !256, size: 64, offset: 12544)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3503, file: !2314, line: 1025, baseType: !677, size: 64, offset: 12608)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3503, file: !2314, line: 1026, baseType: !677, size: 64, offset: 12672)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3503, file: !2314, line: 1031, baseType: !677, size: 64, offset: 12736)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3503, file: !2314, line: 1032, baseType: !3816, size: 192, offset: 12800)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2314, line: 324, size: 192, elements: !3817)
!3817 = !{!3818, !3819, !3820}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3816, file: !2314, line: 326, baseType: !677, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3816, file: !2314, line: 327, baseType: !677, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3816, file: !2314, line: 328, baseType: !461, size: 32, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3503, file: !2314, line: 1041, baseType: !255, size: 64, offset: 12992)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3503, file: !2314, line: 1042, baseType: !255, size: 64, offset: 13056)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3503, file: !2314, line: 1045, baseType: !677, size: 64, offset: 13120)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3503, file: !2314, line: 1048, baseType: !677, size: 64, offset: 13184)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3503, file: !2314, line: 1051, baseType: !255, size: 64, offset: 13248)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3503, file: !2314, line: 1052, baseType: !255, size: 64, offset: 13312)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3503, file: !2314, line: 1055, baseType: !3828, size: 640, offset: 13376)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3829, line: 132, size: 640, elements: !3830)
!3829 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3830 = !{!3831, !3837, !3838}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3828, file: !3829, line: 133, baseType: !3832, size: 576)
!3832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3833, size: 576, elements: !474)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3829, line: 117, size: 192, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3833, file: !3829, line: 118, baseType: !677, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3833, file: !3829, line: 119, baseType: !3126, size: 128, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3828, file: !3829, line: 134, baseType: !7, size: 32, offset: 576)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3828, file: !3829, line: 135, baseType: !7, size: 32, offset: 608)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3503, file: !2314, line: 1058, baseType: !3840, size: 448, offset: 14016)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3829, line: 144, size: 448, elements: !3841)
!3841 = !{!3842, !3843, !3844}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3840, file: !3829, line: 145, baseType: !1070, size: 128, align: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3840, file: !3829, line: 146, baseType: !863, size: 256, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3840, file: !3829, line: 147, baseType: !7, size: 32, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3503, file: !2314, line: 1064, baseType: !1380, size: 64, offset: 14464)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3503, file: !2314, line: 1067, baseType: !1380, size: 64, offset: 14528)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3503, file: !2314, line: 1070, baseType: !1380, size: 64, offset: 14592)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3503, file: !2314, line: 1074, baseType: !1407, size: 64, offset: 14656)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3503, file: !2314, line: 1084, baseType: !3850, size: 128, offset: 14720)
!3850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 128, elements: !3851)
!3851 = !{!3852}
!3852 = !DISubrange(count: 16)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3503, file: !2314, line: 1086, baseType: !3854, size: 64, offset: 14848)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2314, line: 55, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3503, file: !2314, line: 1089, baseType: !3857, size: 64, offset: 14912)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3858, line: 12, size: 64, elements: !3859)
!3858 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3859 = !{!3860}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3857, file: !3858, line: 13, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3858, line: 8, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3503, file: !2314, line: 1090, baseType: !3864, size: 128, offset: 14976)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3865, line: 13, size: 128, elements: !3866)
!3865 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3866 = !{!3867}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3864, file: !3865, line: 14, baseType: !272, size: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3503, file: !2314, line: 1097, baseType: !3869, size: 64, offset: 15104)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2314, line: 50, flags: DIFlagFwdDecl)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3503, file: !2314, line: 1100, baseType: !3872, size: 64, offset: 15168)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2314, line: 1100, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3503, file: !2314, line: 1103, baseType: !3875, size: 64, offset: 15232)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2314, line: 53, flags: DIFlagFwdDecl)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3503, file: !2314, line: 1107, baseType: !3878, size: 64, offset: 15296)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3880, line: 35, flags: DIFlagFwdDecl)
!3880 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3503, file: !2314, line: 1110, baseType: !3882, size: 64, offset: 15360)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3884, line: 93, size: 8768, elements: !3885)
!3884 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3885 = !{!3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3933, !3942, !3943, !3945, !3946, !3947, !3950, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3988, !3989, !3996, !4006, !4009, !4010, !4013, !4014, !4015, !4016, !4017, !4018}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3883, file: !3884, line: 94, baseType: !1347, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3883, file: !3884, line: 95, baseType: !339, size: 32, offset: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3883, file: !3884, line: 96, baseType: !89, size: 32, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3883, file: !3884, line: 97, baseType: !89, size: 32, offset: 96)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3883, file: !3884, line: 98, baseType: !272, size: 128, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3883, file: !3884, line: 100, baseType: !1358, size: 192, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3883, file: !3884, line: 103, baseType: !3502, size: 64, offset: 448)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3883, file: !3884, line: 106, baseType: !3894, size: 192, offset: 512)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1565, line: 32, size: 192, elements: !3895)
!3895 = !{!3896, !3897}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3894, file: !1565, line: 33, baseType: !272, size: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3894, file: !1565, line: 34, baseType: !3898, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3899, line: 25, baseType: !3900)
!3899 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3899, line: 23, size: 64, elements: !3901)
!3901 = !{!3902}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3900, file: !3899, line: 24, baseType: !418, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3883, file: !3884, line: 109, baseType: !1188, size: 64, offset: 704)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3883, file: !3884, line: 112, baseType: !89, size: 32, offset: 768)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3883, file: !3884, line: 114, baseType: !89, size: 32, offset: 800)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3883, file: !3884, line: 115, baseType: !3502, size: 64, offset: 832)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3883, file: !3884, line: 118, baseType: !89, size: 32, offset: 896)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3883, file: !3884, line: 119, baseType: !7, size: 32, offset: 928)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3883, file: !3884, line: 121, baseType: !3910, size: 64, offset: 960)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3884, line: 80, size: 448, elements: !3912)
!3912 = !{!3913, !3914, !3920}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3911, file: !3884, line: 81, baseType: !339, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3911, file: !3884, line: 82, baseType: !3915, size: 128, offset: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3884, line: 75, size: 128, elements: !3916)
!3916 = !{!3917, !3918}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3915, file: !3884, line: 76, baseType: !3502, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3915, file: !3884, line: 77, baseType: !3919, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3911, file: !3884, line: 83, baseType: !813, size: 256, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3883, file: !3884, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3883, file: !3884, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3883, file: !3884, line: 138, baseType: !7, size: 32, offset: 1056)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3883, file: !3884, line: 139, baseType: !272, size: 128, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3883, file: !3884, line: 142, baseType: !3072, size: 512, offset: 1216)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3883, file: !3884, line: 143, baseType: !3052, size: 64, offset: 1728)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3883, file: !3884, line: 150, baseType: !3928, size: 256, offset: 1792)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3929, size: 256, elements: !439)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3884, line: 38, size: 128, elements: !3930)
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3929, file: !3884, line: 39, baseType: !677, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3929, file: !3884, line: 40, baseType: !677, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3883, file: !3884, line: 156, baseType: !3934, size: 192, offset: 2048)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3884, line: 66, size: 192, elements: !3935)
!3935 = !{!3936}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3934, file: !3884, line: 67, baseType: !3937, size: 192)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3884, line: 47, size: 192, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3937, file: !3884, line: 48, baseType: !373, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3937, file: !3884, line: 49, baseType: !373, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3937, file: !3884, line: 50, baseType: !373, size: 64, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3883, file: !3884, line: 160, baseType: !3828, size: 640, offset: 2240)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3883, file: !3884, line: 163, baseType: !3944, size: 256, offset: 2880)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1343, size: 256, elements: !1080)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3883, file: !3884, line: 169, baseType: !1343, size: 64, offset: 3136)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3883, file: !3884, line: 172, baseType: !89, size: 32, offset: 3200)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3883, file: !3884, line: 174, baseType: !3948, size: 64, offset: 3264)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3884, line: 174, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3883, file: !3884, line: 185, baseType: !3951, size: 64, offset: 3328)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !648, line: 860, baseType: !3952)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 853, size: 64, elements: !3953)
!3953 = !{!3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3952, file: !648, line: 858, baseType: !647, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3952, file: !648, line: 859, baseType: !319, size: 32, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3883, file: !3884, line: 186, baseType: !677, size: 64, offset: 3392)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3883, file: !3884, line: 186, baseType: !677, size: 64, offset: 3456)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3883, file: !3884, line: 186, baseType: !677, size: 64, offset: 3520)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3883, file: !3884, line: 186, baseType: !677, size: 64, offset: 3584)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3883, file: !3884, line: 187, baseType: !677, size: 64, offset: 3648)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3883, file: !3884, line: 188, baseType: !677, size: 64, offset: 3712)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3883, file: !3884, line: 189, baseType: !3816, size: 192, offset: 3776)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3883, file: !3884, line: 190, baseType: !255, size: 64, offset: 3968)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3883, file: !3884, line: 190, baseType: !255, size: 64, offset: 4032)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3883, file: !3884, line: 190, baseType: !255, size: 64, offset: 4096)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3883, file: !3884, line: 190, baseType: !255, size: 64, offset: 4160)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3883, file: !3884, line: 191, baseType: !255, size: 64, offset: 4224)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3883, file: !3884, line: 191, baseType: !255, size: 64, offset: 4288)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3883, file: !3884, line: 191, baseType: !255, size: 64, offset: 4352)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3883, file: !3884, line: 191, baseType: !255, size: 64, offset: 4416)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3883, file: !3884, line: 192, baseType: !255, size: 64, offset: 4480)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3883, file: !3884, line: 192, baseType: !255, size: 64, offset: 4544)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3883, file: !3884, line: 192, baseType: !255, size: 64, offset: 4608)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3883, file: !3884, line: 192, baseType: !255, size: 64, offset: 4672)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3883, file: !3884, line: 193, baseType: !255, size: 64, offset: 4736)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3883, file: !3884, line: 193, baseType: !255, size: 64, offset: 4800)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3883, file: !3884, line: 194, baseType: !3978, size: 448, offset: 4864)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3979, line: 12, size: 448, elements: !3980)
!3979 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3980 = !{!3981, !3982, !3983, !3984, !3985, !3986, !3987}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3978, file: !3979, line: 15, baseType: !677, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3978, file: !3979, line: 17, baseType: !677, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3978, file: !3979, line: 19, baseType: !677, size: 64, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3978, file: !3979, line: 21, baseType: !677, size: 64, offset: 192)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3978, file: !3979, line: 29, baseType: !677, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3978, file: !3979, line: 35, baseType: !677, size: 64, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3978, file: !3979, line: 44, baseType: !677, size: 64, offset: 384)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3883, file: !3884, line: 202, baseType: !679, size: 64, offset: 5312)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3883, file: !3884, line: 213, baseType: !3990, size: 2048, offset: 5376)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3991, size: 2048, elements: !3851)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3992, line: 43, size: 128, elements: !3993)
!3992 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3991, file: !3992, line: 44, baseType: !576, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3991, file: !3992, line: 45, baseType: !576, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3883, file: !3884, line: 216, baseType: !3997, size: 448, offset: 7424)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3884, line: 30, size: 448, elements: !3998)
!3998 = !{!3999, !4000, !4001, !4002, !4003, !4004, !4005}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3997, file: !3884, line: 31, baseType: !89, size: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3997, file: !3884, line: 32, baseType: !267, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3997, file: !3884, line: 33, baseType: !255, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3997, file: !3884, line: 34, baseType: !677, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3997, file: !3884, line: 34, baseType: !677, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3997, file: !3884, line: 35, baseType: !255, size: 64, offset: 320)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3997, file: !3884, line: 35, baseType: !255, size: 64, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3883, file: !3884, line: 219, baseType: !4007, size: 64, offset: 7872)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3884, line: 219, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3883, file: !3884, line: 222, baseType: !7, size: 32, offset: 7936)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3883, file: !3884, line: 223, baseType: !4011, size: 64, offset: 8000)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3884, line: 223, flags: DIFlagFwdDecl)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3883, file: !3884, line: 230, baseType: !452, size: 8, offset: 8064)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3883, file: !3884, line: 231, baseType: !988, size: 16, offset: 8080)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3883, file: !3884, line: 232, baseType: !988, size: 16, offset: 8096)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3883, file: !3884, line: 234, baseType: !1794, size: 64, offset: 8128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3883, file: !3884, line: 237, baseType: !863, size: 256, offset: 8192)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3883, file: !3884, line: 243, baseType: !1421, size: 320, offset: 8448)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3503, file: !2314, line: 1111, baseType: !4020, size: 64, offset: 15424)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3884, line: 20, size: 16640, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4026}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4021, file: !3884, line: 21, baseType: !319, size: 32)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4021, file: !3884, line: 22, baseType: !1347, size: 32, offset: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4021, file: !3884, line: 23, baseType: !1358, size: 192, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4021, file: !3884, line: 24, baseType: !4027, size: 16384, offset: 256)
!4027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4028, size: 16384, elements: !533)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1565, line: 51, size: 256, elements: !4029)
!4029 = !{!4030}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4028, file: !1565, line: 52, baseType: !4031, size: 256)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1565, line: 37, size: 256, elements: !4032)
!4032 = !{!4033, !4040, !4041, !4045}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4031, file: !1565, line: 39, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4035, line: 83, baseType: !4036)
!4035 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4035, line: 82, baseType: !4038)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !89}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4031, file: !1565, line: 40, baseType: !255, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4031, file: !1565, line: 46, baseType: !4042, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4035, line: 86, baseType: !4043)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4035, line: 85, baseType: !1183)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4031, file: !1565, line: 48, baseType: !3898, size: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3503, file: !2314, line: 1112, baseType: !3898, size: 64, offset: 15488)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3503, file: !2314, line: 1113, baseType: !3898, size: 64, offset: 15552)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3503, file: !2314, line: 1115, baseType: !3898, size: 64, offset: 15616)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3503, file: !2314, line: 1116, baseType: !3894, size: 192, offset: 15680)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3503, file: !2314, line: 1117, baseType: !255, size: 64, offset: 15872)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3503, file: !2314, line: 1118, baseType: !574, size: 64, offset: 15936)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3503, file: !2314, line: 1119, baseType: !7, size: 32, offset: 16000)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3503, file: !2314, line: 1121, baseType: !1069, size: 64, offset: 16064)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3503, file: !2314, line: 1125, baseType: !4055, size: 64, offset: 16128)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2314, line: 43, flags: DIFlagFwdDecl)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3503, file: !2314, line: 1127, baseType: !612, size: 32, offset: 16192)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3503, file: !2314, line: 1128, baseType: !7, size: 32, offset: 16224)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3503, file: !2314, line: 1130, baseType: !4060, size: 128, offset: 16256)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4061, line: 37, size: 128, elements: !4062)
!4061 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4062 = !{!4063, !4064, !4065}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4060, file: !4061, line: 38, baseType: !89, size: 32)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4060, file: !4061, line: 39, baseType: !339, size: 32, offset: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4060, file: !4061, line: 40, baseType: !4066, size: 64, offset: 64)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4061, line: 24, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3503, file: !2314, line: 1131, baseType: !4069, size: 256, offset: 16384)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4070, line: 12, size: 256, elements: !4071)
!4070 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4071 = !{!4072, !4073, !4074, !4075}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4069, file: !4070, line: 13, baseType: !530, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4069, file: !4070, line: 14, baseType: !255, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4069, file: !4070, line: 15, baseType: !255, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4069, file: !4070, line: 16, baseType: !452, size: 8, offset: 192)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3503, file: !2314, line: 1134, baseType: !677, size: 64, offset: 16640)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3503, file: !2314, line: 1135, baseType: !677, size: 64, offset: 16704)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3503, file: !2314, line: 1138, baseType: !319, size: 32, offset: 16768)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3503, file: !2314, line: 1141, baseType: !461, size: 32, offset: 16800)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3503, file: !2314, line: 1143, baseType: !4081, size: 64, offset: 16832)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2314, line: 735, size: 64, elements: !4082)
!4082 = !{!4083}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4081, file: !2314, line: 736, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3503, file: !2314, line: 1147, baseType: !3129, size: 128, offset: 16896)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3503, file: !2314, line: 1149, baseType: !3502, size: 64, offset: 17024)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3503, file: !2314, line: 1151, baseType: !4088, size: 64, offset: 17088)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2314, line: 1151, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3503, file: !2314, line: 1188, baseType: !256, size: 64, offset: 17152)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3503, file: !2314, line: 1191, baseType: !4092, size: 64, offset: 17216)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3503, file: !2314, line: 1194, baseType: !4094, size: 64, offset: 17280)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !57, line: 976, size: 320, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4095, file: !57, line: 977, baseType: !277, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4095, file: !57, line: 980, baseType: !277, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4095, file: !57, line: 981, baseType: !359, size: 16, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4095, file: !57, line: 983, baseType: !359, size: 16, offset: 144)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4095, file: !57, line: 985, baseType: !452, size: 8, offset: 160)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4095, file: !57, line: 986, baseType: !452, size: 8, offset: 168)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4095, file: !57, line: 988, baseType: !272, size: 128, offset: 192)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3503, file: !2314, line: 1197, baseType: !4105, size: 64, offset: 17344)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2314, line: 61, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3503, file: !2314, line: 1199, baseType: !4108, size: 64, offset: 17408)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4110, line: 99, size: 128, elements: !4111)
!4110 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4111 = !{!4112, !4113, !4114}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4109, file: !4110, line: 100, baseType: !371, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4109, file: !4110, line: 101, baseType: !339, size: 32, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4109, file: !4110, line: 103, baseType: !359, size: 16, offset: 96)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3503, file: !2314, line: 1202, baseType: !4116, size: 64, offset: 17472)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2314, line: 48, flags: DIFlagFwdDecl)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3503, file: !2314, line: 1205, baseType: !255, size: 64, offset: 17536)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3503, file: !2314, line: 1206, baseType: !4120, size: 64, offset: 17600)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1565, line: 14, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1565, line: 12, size: 384, elements: !4123)
!4123 = !{!4124}
!4124 = !DIDerivedType(tag: DW_TAG_member, scope: !4122, file: !1565, line: 13, baseType: !4125, size: 384)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4122, file: !1565, line: 13, size: 384, elements: !4126)
!4126 = !{!4127, !4128, !4129, !4130}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4125, file: !1565, line: 13, baseType: !89, size: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4125, file: !1565, line: 13, baseType: !89, size: 32, offset: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4125, file: !1565, line: 13, baseType: !89, size: 32, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4125, file: !1565, line: 13, baseType: !4131, size: 256, offset: 128)
!4131 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4132, line: 37, size: 256, elements: !4133)
!4132 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4133 = !{!4134, !4139, !4152, !4158, !4167, !4194, !4199}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4131, file: !4132, line: 42, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !4132, line: 39, size: 64, elements: !4136)
!4136 = !{!4137, !4138}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4135, file: !4132, line: 40, baseType: !3793, size: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4135, file: !4132, line: 41, baseType: !618, size: 32, offset: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4131, file: !4132, line: 50, baseType: !4140, size: 192)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !4132, line: 45, size: 192, elements: !4141)
!4141 = !{!4142, !4144, !4145, !4151}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4140, file: !4132, line: 46, baseType: !4143, size: 32)
!4143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !562, line: 95, baseType: !89)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4140, file: !4132, line: 47, baseType: !89, size: 32, offset: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4140, file: !4132, line: 48, baseType: !4146, size: 64, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4132, line: 11, baseType: !4147)
!4147 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4132, line: 8, size: 64, elements: !4148)
!4148 = !{!4149, !4150}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4147, file: !4132, line: 9, baseType: !89, size: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4147, file: !4132, line: 10, baseType: !256, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4140, file: !4132, line: 49, baseType: !89, size: 32, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4131, file: !4132, line: 57, baseType: !4153, size: 128)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !4132, line: 53, size: 128, elements: !4154)
!4154 = !{!4155, !4156, !4157}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4153, file: !4132, line: 54, baseType: !3793, size: 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4153, file: !4132, line: 55, baseType: !618, size: 32, offset: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4153, file: !4132, line: 56, baseType: !4146, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4131, file: !4132, line: 66, baseType: !4159, size: 256)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !4132, line: 60, size: 256, elements: !4160)
!4160 = !{!4161, !4162, !4163, !4164, !4166}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4159, file: !4132, line: 61, baseType: !3793, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4159, file: !4132, line: 62, baseType: !618, size: 32, offset: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4159, file: !4132, line: 63, baseType: !89, size: 32, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4159, file: !4132, line: 64, baseType: !4165, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !562, line: 94, baseType: !563)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4159, file: !4132, line: 65, baseType: !4165, size: 64, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4131, file: !4132, line: 105, baseType: !4168, size: 256)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !4132, line: 69, size: 256, elements: !4169)
!4169 = !{!4170, !4171}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4168, file: !4132, line: 70, baseType: !256, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, scope: !4168, file: !4132, line: 79, baseType: !4172, size: 192, offset: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4168, file: !4132, line: 79, size: 192, elements: !4173)
!4173 = !{!4174, !4175, !4176, !4183, !4188}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4172, file: !4132, line: 81, baseType: !89, size: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4172, file: !4132, line: 86, baseType: !988, size: 16)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4172, file: !4132, line: 92, baseType: !4177, size: 192)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4172, file: !4132, line: 88, size: 192, elements: !4178)
!4178 = !{!4179, !4181, !4182}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4177, file: !4132, line: 89, baseType: !4180, size: 64)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 64, elements: !3113)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4177, file: !4132, line: 90, baseType: !256, size: 64, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4177, file: !4132, line: 91, baseType: !256, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4172, file: !4132, line: 97, baseType: !4184, size: 96)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4172, file: !4132, line: 94, size: 96, elements: !4185)
!4185 = !{!4186, !4187}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4184, file: !4132, line: 95, baseType: !4180, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4184, file: !4132, line: 96, baseType: !406, size: 32, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4172, file: !4132, line: 103, baseType: !4189, size: 128)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4172, file: !4132, line: 99, size: 128, elements: !4190)
!4190 = !{!4191, !4192, !4193}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4189, file: !4132, line: 100, baseType: !255, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4189, file: !4132, line: 101, baseType: !406, size: 32, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4189, file: !4132, line: 102, baseType: !406, size: 32, offset: 96)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4131, file: !4132, line: 111, baseType: !4195, size: 128)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !4132, line: 108, size: 128, elements: !4196)
!4196 = !{!4197, !4198}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4195, file: !4132, line: 109, baseType: !267, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4195, file: !4132, line: 110, baseType: !89, size: 32, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4131, file: !4132, line: 118, baseType: !4200, size: 128)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !4132, line: 114, size: 128, elements: !4201)
!4201 = !{!4202, !4203, !4204}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4200, file: !4132, line: 115, baseType: !256, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4200, file: !4132, line: 116, baseType: !89, size: 32, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4200, file: !4132, line: 117, baseType: !7, size: 32, offset: 96)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3503, file: !2314, line: 1208, baseType: !3978, size: 448, offset: 17664)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3503, file: !2314, line: 1215, baseType: !677, size: 64, offset: 18112)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3503, file: !2314, line: 1217, baseType: !677, size: 64, offset: 18176)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3503, file: !2314, line: 1219, baseType: !677, size: 64, offset: 18240)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3503, file: !2314, line: 1223, baseType: !4210, size: 64, offset: 18304)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4211, line: 99, baseType: !4212)
!4211 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4211, line: 99, size: 64, elements: !4213)
!4213 = !{!4214}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4212, file: !4211, line: 99, baseType: !418, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3503, file: !2314, line: 1225, baseType: !647, size: 32, offset: 18368)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3503, file: !2314, line: 1226, baseType: !89, size: 32, offset: 18400)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3503, file: !2314, line: 1227, baseType: !89, size: 32, offset: 18432)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3503, file: !2314, line: 1231, baseType: !4219, size: 64, offset: 18496)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2314, line: 1231, flags: DIFlagFwdDecl)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3503, file: !2314, line: 1233, baseType: !272, size: 128, offset: 18560)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3503, file: !2314, line: 1240, baseType: !4223, size: 64, offset: 18688)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2314, line: 62, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3503, file: !2314, line: 1242, baseType: !4226, size: 64, offset: 18752)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4228, line: 392, size: 96, elements: !4229)
!4228 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4229 = !{!4230, !4236, !4238}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4227, file: !4228, line: 393, baseType: !4231, size: 32)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4228, line: 388, size: 32, elements: !4232)
!4232 = !{!4233}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4231, file: !4228, line: 389, baseType: !4234, size: 32)
!4234 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4235, line: 46, baseType: !405)
!4235 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4227, file: !4228, line: 394, baseType: !4237, size: 32, offset: 32)
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4235, line: 42, baseType: !859)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4227, file: !4228, line: 395, baseType: !4234, size: 32, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3503, file: !2314, line: 1244, baseType: !272, size: 128, offset: 18816)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3503, file: !2314, line: 1245, baseType: !4241, size: 64, offset: 18944)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2314, line: 51, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3503, file: !2314, line: 1246, baseType: !863, size: 256, offset: 19008)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3503, file: !2314, line: 1247, baseType: !7, size: 32, offset: 19264)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3503, file: !2314, line: 1250, baseType: !4246, size: 64, offset: 19328)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2314, line: 57, flags: DIFlagFwdDecl)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3503, file: !2314, line: 1251, baseType: !863, size: 256, offset: 19392)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3503, file: !2314, line: 1252, baseType: !272, size: 128, offset: 19648)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3503, file: !2314, line: 1259, baseType: !2026, size: 64, offset: 19776)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3503, file: !2314, line: 1260, baseType: !988, size: 16, offset: 19840)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3503, file: !2314, line: 1261, baseType: !988, size: 16, offset: 19856)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3503, file: !2314, line: 1314, baseType: !4254, size: 64, offset: 19904)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4256, line: 62, size: 256, align: 256, elements: !4257)
!4256 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4257 = !{!4258, !4259, !4260, !4261, !4262, !4263, !4264}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4255, file: !4256, line: 75, baseType: !406, size: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4255, file: !4256, line: 90, baseType: !406, size: 32, offset: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4255, file: !4256, line: 112, baseType: !678, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4255, file: !4256, line: 132, baseType: !406, size: 32, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4255, file: !4256, line: 140, baseType: !406, size: 32, offset: 160)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4255, file: !4256, line: 149, baseType: !406, size: 32, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4255, file: !4256, line: 154, baseType: !4265, offset: 224)
!4265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, elements: !1373)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3503, file: !2314, line: 1315, baseType: !405, size: 32, offset: 19968)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3503, file: !2314, line: 1316, baseType: !405, size: 32, offset: 20000)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3503, file: !2314, line: 1321, baseType: !255, size: 64, offset: 20032)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3503, file: !2314, line: 1325, baseType: !89, size: 32, offset: 20096)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3503, file: !2314, line: 1326, baseType: !89, size: 32, offset: 20128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3503, file: !2314, line: 1327, baseType: !89, size: 32, offset: 20160)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3503, file: !2314, line: 1328, baseType: !89, size: 32, offset: 20192)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3503, file: !2314, line: 1329, baseType: !1070, size: 128, align: 64, offset: 20224)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3503, file: !2314, line: 1332, baseType: !4275, size: 128, offset: 20352)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4276, line: 51, size: 128, elements: !4277)
!4276 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4277 = !{!4278, !4283, !4284}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4275, file: !4276, line: 60, baseType: !4279, size: 64)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4280, line: 7, size: 64, elements: !4281)
!4280 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4281 = !{!4282}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4279, file: !4280, line: 12, baseType: !415, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4275, file: !4276, line: 63, baseType: !452, size: 8, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4275, file: !4276, line: 70, baseType: !452, size: 8, offset: 72)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3503, file: !2314, line: 1335, baseType: !2312, size: 64, offset: 20480)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3503, file: !2314, line: 1337, baseType: !4287, size: 128, offset: 20544)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4276, line: 39, size: 128, elements: !4288)
!4288 = !{!4289, !4290, !4291}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4287, file: !4276, line: 40, baseType: !1767, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4287, file: !4276, line: 42, baseType: !406, size: 32, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4287, file: !4276, line: 43, baseType: !406, size: 32, offset: 96)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3503, file: !2314, line: 1340, baseType: !4293, size: 64, offset: 20672)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2314, line: 69, flags: DIFlagFwdDecl)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3503, file: !2314, line: 1351, baseType: !89, size: 32, offset: 20736)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3503, file: !2314, line: 1352, baseType: !89, size: 32, offset: 20768)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3503, file: !2314, line: 1354, baseType: !255, size: 64, offset: 20800)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3503, file: !2314, line: 1364, baseType: !677, size: 64, offset: 20864)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3503, file: !2314, line: 1365, baseType: !677, size: 64, offset: 20928)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3503, file: !2314, line: 1412, baseType: !255, size: 64, offset: 20992)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3503, file: !2314, line: 1453, baseType: !2597, size: 64, offset: 21056)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3503, file: !2314, line: 1457, baseType: !4303, size: 64, offset: 21120)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !134, line: 61, size: 576, elements: !4305)
!4305 = !{!4306, !4307, !4326, !4329, !4330, !4363, !4373}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4304, file: !134, line: 62, baseType: !133, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, scope: !4304, file: !134, line: 64, baseType: !4308, size: 192, offset: 64)
!4308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4304, file: !134, line: 64, size: 192, elements: !4309)
!4309 = !{!4310, !4321}
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4308, file: !134, line: 65, baseType: !4311, size: 192)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4308, file: !134, line: 65, size: 192, elements: !4312)
!4312 = !{!4313, !4320}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4311, file: !134, line: 66, baseType: !4314, size: 128)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4315, line: 50, size: 128, elements: !4316)
!4315 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4316 = !{!4317, !4318, !4319}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4314, file: !4315, line: 52, baseType: !255, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4314, file: !4315, line: 54, baseType: !7, size: 32, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4314, file: !4315, line: 55, baseType: !7, size: 32, offset: 96)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4311, file: !134, line: 67, baseType: !255, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, scope: !4308, file: !134, line: 70, baseType: !4322, size: 192)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4308, file: !134, line: 70, size: 192, elements: !4323)
!4323 = !{!4324, !4325}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4322, file: !134, line: 71, baseType: !1070, size: 128, align: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4322, file: !134, line: 72, baseType: !255, size: 64, offset: 128)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4304, file: !134, line: 76, baseType: !4327, size: 64, offset: 256)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !134, line: 76, flags: DIFlagFwdDecl)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4304, file: !134, line: 77, baseType: !255, size: 64, offset: 320)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4304, file: !134, line: 79, baseType: !4331, size: 64, offset: 384)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4315, line: 25, size: 256, elements: !4333)
!4333 = !{!4334, !4340, !4344}
!4334 = !DIDerivedType(tag: DW_TAG_member, scope: !4332, file: !4315, line: 26, baseType: !4335, size: 128)
!4335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4332, file: !4315, line: 26, size: 128, elements: !4336)
!4336 = !{!4337, !4339}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4335, file: !4315, line: 27, baseType: !4338, size: 128)
!4338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 128, elements: !3851)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4335, file: !4315, line: 28, baseType: !4338, size: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4332, file: !4315, line: 31, baseType: !4341, size: 64, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4343)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4315, line: 23, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, scope: !4332, file: !4315, line: 33, baseType: !4345, size: 64, offset: 192)
!4345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4332, file: !4315, line: 33, size: 64, elements: !4346)
!4346 = !{!4347, !4353, !4358}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4345, file: !4315, line: 38, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4345, file: !4315, line: 34, size: 64, elements: !4349)
!4349 = !{!4350, !4351, !4352}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4348, file: !4315, line: 35, baseType: !859, size: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4348, file: !4315, line: 36, baseType: !347, size: 8, offset: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4348, file: !4315, line: 37, baseType: !347, size: 8, offset: 40)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4345, file: !4315, line: 42, baseType: !4354, size: 16)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4345, file: !4315, line: 39, size: 16, elements: !4355)
!4355 = !{!4356, !4357}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4354, file: !4315, line: 40, baseType: !347, size: 8)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4354, file: !4315, line: 41, baseType: !347, size: 8, offset: 8)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4345, file: !4315, line: 46, baseType: !4359, size: 16)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4345, file: !4315, line: 43, size: 16, elements: !4360)
!4360 = !{!4361, !4362}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4359, file: !4315, line: 44, baseType: !347, size: 8)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4359, file: !4315, line: 45, baseType: !347, size: 8, offset: 8)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4304, file: !134, line: 81, baseType: !4364, size: 64, offset: 448)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !134, line: 85, size: 384, elements: !4366)
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4372}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4365, file: !134, line: 86, baseType: !4327, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4365, file: !134, line: 87, baseType: !255, size: 64, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4365, file: !134, line: 88, baseType: !255, size: 64, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4365, file: !134, line: 89, baseType: !255, size: 64, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4365, file: !134, line: 90, baseType: !452, size: 8, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4365, file: !134, line: 92, baseType: !4364, size: 64, offset: 320)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4304, file: !134, line: 82, baseType: !7, size: 32, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3503, file: !2314, line: 1463, baseType: !4375, offset: 21184)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2314, line: 739, elements: !1111)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3503, file: !2314, line: 1470, baseType: !1070, size: 128, align: 64, offset: 21184)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3503, file: !2314, line: 1471, baseType: !1347, size: 32, offset: 21312)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3503, file: !2314, line: 1472, baseType: !89, size: 32, offset: 21344)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3503, file: !2314, line: 1474, baseType: !3502, size: 64, offset: 21376)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3503, file: !2314, line: 1475, baseType: !388, size: 320, offset: 21440)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3503, file: !2314, line: 1478, baseType: !4382, size: 64, offset: 21760)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4384, line: 49, size: 512, elements: !4385)
!4384 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4392, !4393, !4394, !4396}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4383, file: !4384, line: 50, baseType: !4382, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4383, file: !4384, line: 51, baseType: !256, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4383, file: !4384, line: 52, baseType: !255, size: 64, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4383, file: !4384, line: 53, baseType: !255, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4383, file: !4384, line: 54, baseType: !4391, size: 64, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4383, file: !4384, line: 56, baseType: !7, size: 32, offset: 320)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4383, file: !4384, line: 58, baseType: !7, size: 32, offset: 352)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4383, file: !4384, line: 59, baseType: !4395, size: 64, offset: 384)
!4395 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !254, line: 159, baseType: !677)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4383, file: !4384, line: 60, baseType: !1909, size: 64, offset: 448)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3503, file: !2314, line: 1482, baseType: !1347, size: 32, offset: 21824)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3503, file: !2314, line: 1489, baseType: !256, size: 64, offset: 21888)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3503, file: !2314, line: 1504, baseType: !256, size: 64, offset: 21952)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3503, file: !2314, line: 1505, baseType: !678, size: 64, offset: 22016)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3503, file: !2314, line: 1506, baseType: !677, size: 64, offset: 22080)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3503, file: !2314, line: 1507, baseType: !678, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3503, file: !2314, line: 1508, baseType: !678, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3503, file: !2314, line: 1509, baseType: !678, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3503, file: !2314, line: 1510, baseType: !1070, size: 128, align: 64, offset: 22208)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3503, file: !2314, line: 1511, baseType: !89, size: 32, offset: 22336)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3503, file: !2314, line: 1515, baseType: !4408, size: 64, offset: 22400)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1305, line: 56, size: 64, elements: !4409)
!4409 = !{!4410}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4408, file: !1305, line: 57, baseType: !1308, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3503, file: !2314, line: 1518, baseType: !4408, size: 64, offset: 22464)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3503, file: !2314, line: 1528, baseType: !1070, size: 128, align: 64, offset: 22528)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3503, file: !2314, line: 1552, baseType: !4414, size: 35328, offset: 23040)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4415, line: 430, size: 35328, elements: !4416)
!4415 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4416 = !{!4417, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4446, !4447, !4448, !4449, !4450, !4451, !4454, !4455, !4456, !4457}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4414, file: !4415, line: 432, baseType: !4418, size: 192)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4419, size: 192, elements: !474)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4420, line: 16, size: 64, elements: !4421)
!4420 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4421 = !{!4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4419, file: !4420, line: 17, baseType: !357, size: 16)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4419, file: !4420, line: 18, baseType: !357, size: 16, offset: 16)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4419, file: !4420, line: 19, baseType: !357, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4419, file: !4420, line: 19, baseType: !357, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4419, file: !4420, line: 19, baseType: !357, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4419, file: !4420, line: 19, baseType: !357, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4419, file: !4420, line: 19, baseType: !357, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4419, file: !4420, line: 20, baseType: !357, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4419, file: !4420, line: 20, baseType: !357, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4419, file: !4420, line: 20, baseType: !357, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4419, file: !4420, line: 20, baseType: !357, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4419, file: !4420, line: 20, baseType: !357, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4419, file: !4420, line: 20, baseType: !357, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4414, file: !4415, line: 436, baseType: !255, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4414, file: !4415, line: 440, baseType: !359, size: 16, offset: 256)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4414, file: !4415, line: 441, baseType: !359, size: 16, offset: 272)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4414, file: !4415, line: 442, baseType: !359, size: 16, offset: 288)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4414, file: !4415, line: 443, baseType: !359, size: 16, offset: 304)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4414, file: !4415, line: 447, baseType: !255, size: 64, offset: 320)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4414, file: !4415, line: 448, baseType: !255, size: 64, offset: 384)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4414, file: !4415, line: 459, baseType: !4443, size: 256, offset: 448)
!4443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4444, size: 256, elements: !1080)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4415, line: 428, flags: DIFlagFwdDecl)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4414, file: !4415, line: 461, baseType: !255, size: 64, offset: 704)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4414, file: !4415, line: 463, baseType: !255, size: 64, offset: 768)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4414, file: !4415, line: 465, baseType: !255, size: 64, offset: 832)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4414, file: !4415, line: 466, baseType: !255, size: 64, offset: 896)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4414, file: !4415, line: 467, baseType: !255, size: 64, offset: 960)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4414, file: !4415, line: 473, baseType: !4452, size: 64, offset: 1024)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4415, line: 10, flags: DIFlagFwdDecl)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4414, file: !4415, line: 480, baseType: !255, size: 64, offset: 1088)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4414, file: !4415, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4414, file: !4415, line: 491, baseType: !405, size: 32, offset: 1184)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4414, file: !4415, line: 501, baseType: !4458, size: 33792, offset: 1536)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4459, line: 448, size: 33792, elements: !4460)
!4459 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4460 = !{!4461, !4462, !4463, !4625, !4626, !4632, !4633}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4458, file: !4459, line: 461, baseType: !7, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4458, file: !4459, line: 468, baseType: !255, size: 64, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4458, file: !4459, line: 476, baseType: !4464, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4459, line: 356, size: 33280, align: 512, elements: !4466)
!4466 = !{!4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4465, file: !4459, line: 358, baseType: !7, size: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4465, file: !4459, line: 361, baseType: !7, size: 32, offset: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4465, file: !4459, line: 364, baseType: !677, size: 64, offset: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4465, file: !4459, line: 367, baseType: !677, size: 64, offset: 128)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4465, file: !4459, line: 370, baseType: !677, size: 64, offset: 192)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4465, file: !4459, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4465, file: !4459, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4465, file: !4459, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4465, file: !4459, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4465, file: !4459, line: 397, baseType: !4477, size: 32768, offset: 512)
!4477 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4459, line: 348, size: 32768, elements: !4478)
!4478 = !{!4479, !4494, !4531, !4608, !4621}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4477, file: !4459, line: 349, baseType: !4480, size: 896)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4459, line: 12, size: 896, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4493}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4480, file: !4459, line: 13, baseType: !405, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4480, file: !4459, line: 14, baseType: !405, size: 32, offset: 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4480, file: !4459, line: 15, baseType: !405, size: 32, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4480, file: !4459, line: 16, baseType: !405, size: 32, offset: 96)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4480, file: !4459, line: 17, baseType: !405, size: 32, offset: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4480, file: !4459, line: 18, baseType: !405, size: 32, offset: 160)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4480, file: !4459, line: 19, baseType: !405, size: 32, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4480, file: !4459, line: 22, baseType: !4490, size: 640, offset: 224)
!4490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 640, elements: !4491)
!4491 = !{!4492}
!4492 = !DISubrange(count: 20)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4480, file: !4459, line: 25, baseType: !405, size: 32, offset: 864)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4477, file: !4459, line: 350, baseType: !4495, size: 4096, align: 128)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4459, line: 34, size: 4096, align: 128, elements: !4496)
!4496 = !{!4497, !4498, !4499, !4500, !4501, !4516, !4517, !4518, !4520, !4522, !4526}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4495, file: !4459, line: 35, baseType: !357, size: 16)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4495, file: !4459, line: 36, baseType: !357, size: 16, offset: 16)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4495, file: !4459, line: 37, baseType: !357, size: 16, offset: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4495, file: !4459, line: 38, baseType: !357, size: 16, offset: 48)
!4501 = !DIDerivedType(tag: DW_TAG_member, scope: !4495, file: !4459, line: 39, baseType: !4502, size: 128, offset: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4495, file: !4459, line: 39, size: 128, elements: !4503)
!4503 = !{!4504, !4509}
!4504 = !DIDerivedType(tag: DW_TAG_member, scope: !4502, file: !4459, line: 40, baseType: !4505, size: 128)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4502, file: !4459, line: 40, size: 128, elements: !4506)
!4506 = !{!4507, !4508}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4505, file: !4459, line: 41, baseType: !677, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4505, file: !4459, line: 42, baseType: !677, size: 64, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, scope: !4502, file: !4459, line: 44, baseType: !4510, size: 128)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4502, file: !4459, line: 44, size: 128, elements: !4511)
!4511 = !{!4512, !4513, !4514, !4515}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4510, file: !4459, line: 45, baseType: !405, size: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4510, file: !4459, line: 46, baseType: !405, size: 32, offset: 32)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4510, file: !4459, line: 47, baseType: !405, size: 32, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4510, file: !4459, line: 48, baseType: !405, size: 32, offset: 96)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4495, file: !4459, line: 51, baseType: !405, size: 32, offset: 192)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4495, file: !4459, line: 52, baseType: !405, size: 32, offset: 224)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4495, file: !4459, line: 55, baseType: !4519, size: 1024, offset: 256)
!4519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 1024, elements: !686)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4495, file: !4459, line: 58, baseType: !4521, size: 2048, offset: 1280)
!4521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 2048, elements: !533)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4495, file: !4459, line: 60, baseType: !4523, size: 384, offset: 3328)
!4523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 384, elements: !4524)
!4524 = !{!4525}
!4525 = !DISubrange(count: 12)
!4526 = !DIDerivedType(tag: DW_TAG_member, scope: !4495, file: !4459, line: 62, baseType: !4527, size: 384, offset: 3712)
!4527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4495, file: !4459, line: 62, size: 384, elements: !4528)
!4528 = !{!4529, !4530}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4527, file: !4459, line: 63, baseType: !4523, size: 384)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4527, file: !4459, line: 64, baseType: !4523, size: 384)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4477, file: !4459, line: 351, baseType: !4532, size: 1088)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4459, line: 79, size: 1088, elements: !4533)
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4607}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4532, file: !4459, line: 80, baseType: !405, size: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4532, file: !4459, line: 81, baseType: !405, size: 32, offset: 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4532, file: !4459, line: 82, baseType: !405, size: 32, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4532, file: !4459, line: 83, baseType: !405, size: 32, offset: 96)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4532, file: !4459, line: 84, baseType: !405, size: 32, offset: 128)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4532, file: !4459, line: 85, baseType: !405, size: 32, offset: 160)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4532, file: !4459, line: 86, baseType: !405, size: 32, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4532, file: !4459, line: 88, baseType: !4490, size: 640, offset: 224)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4532, file: !4459, line: 89, baseType: !347, size: 8, offset: 864)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4532, file: !4459, line: 90, baseType: !347, size: 8, offset: 872)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4532, file: !4459, line: 91, baseType: !347, size: 8, offset: 880)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4532, file: !4459, line: 92, baseType: !347, size: 8, offset: 888)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4532, file: !4459, line: 93, baseType: !347, size: 8, offset: 896)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4532, file: !4459, line: 94, baseType: !347, size: 8, offset: 904)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4532, file: !4459, line: 95, baseType: !4549, size: 64, offset: 960)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4551, line: 11, size: 128, elements: !4552)
!4551 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4552 = !{!4553, !4554}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4550, file: !4551, line: 12, baseType: !267, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4550, file: !4551, line: 13, baseType: !4555, size: 64, offset: 64)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4557, line: 103, size: 1344, elements: !4558)
!4557 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4558 = !{!4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4587, !4588, !4589}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4556, file: !4557, line: 109, baseType: !255, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4556, file: !4557, line: 110, baseType: !255, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4556, file: !4557, line: 111, baseType: !255, size: 64, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4556, file: !4557, line: 112, baseType: !255, size: 64, offset: 192)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4556, file: !4557, line: 113, baseType: !255, size: 64, offset: 256)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4556, file: !4557, line: 114, baseType: !255, size: 64, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4556, file: !4557, line: 117, baseType: !255, size: 64, offset: 384)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4556, file: !4557, line: 118, baseType: !255, size: 64, offset: 448)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4556, file: !4557, line: 119, baseType: !255, size: 64, offset: 512)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4556, file: !4557, line: 120, baseType: !255, size: 64, offset: 576)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4556, file: !4557, line: 121, baseType: !255, size: 64, offset: 640)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4556, file: !4557, line: 122, baseType: !255, size: 64, offset: 704)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4556, file: !4557, line: 123, baseType: !255, size: 64, offset: 768)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4556, file: !4557, line: 124, baseType: !255, size: 64, offset: 832)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4556, file: !4557, line: 125, baseType: !255, size: 64, offset: 896)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4556, file: !4557, line: 139, baseType: !255, size: 64, offset: 960)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4556, file: !4557, line: 142, baseType: !255, size: 64, offset: 1024)
!4576 = !DIDerivedType(tag: DW_TAG_member, scope: !4556, file: !4557, line: 144, baseType: !4577, size: 64, offset: 1088)
!4577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4556, file: !4557, line: 144, size: 64, elements: !4578)
!4578 = !{!4579, !4580, !4581}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4577, file: !4557, line: 146, baseType: !357, size: 16)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4577, file: !4557, line: 148, baseType: !677, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4577, file: !4557, line: 150, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4557, line: 59, size: 64, elements: !4583)
!4583 = !{!4584, !4585, !4586}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4582, file: !4557, line: 61, baseType: !677, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4582, file: !4557, line: 63, baseType: !677, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4582, file: !4557, line: 65, baseType: !677, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4556, file: !4557, line: 153, baseType: !255, size: 64, offset: 1152)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4556, file: !4557, line: 154, baseType: !255, size: 64, offset: 1216)
!4589 = !DIDerivedType(tag: DW_TAG_member, scope: !4556, file: !4557, line: 156, baseType: !4590, size: 64, offset: 1280)
!4590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4556, file: !4557, line: 156, size: 64, elements: !4591)
!4591 = !{!4592, !4593, !4594}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4590, file: !4557, line: 158, baseType: !357, size: 16)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4590, file: !4557, line: 160, baseType: !677, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4590, file: !4557, line: 162, baseType: !4595, size: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4557, line: 69, size: 64, elements: !4596)
!4596 = !{!4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4595, file: !4557, line: 71, baseType: !677, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4595, file: !4557, line: 73, baseType: !677, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4595, file: !4557, line: 75, baseType: !677, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4595, file: !4557, line: 77, baseType: !677, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4595, file: !4557, line: 80, baseType: !677, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4595, file: !4557, line: 83, baseType: !677, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4595, file: !4557, line: 86, baseType: !677, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4595, file: !4557, line: 88, baseType: !677, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4595, file: !4557, line: 93, baseType: !677, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4595, file: !4557, line: 100, baseType: !677, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4532, file: !4459, line: 96, baseType: !405, size: 32, offset: 1024)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4477, file: !4459, line: 352, baseType: !4609, size: 4608, align: 512)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4459, line: 333, size: 4608, align: 512, elements: !4610)
!4610 = !{!4611, !4612, !4619}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4609, file: !4459, line: 334, baseType: !4495, size: 4096, align: 128)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4609, file: !4459, line: 335, baseType: !4613, size: 512, offset: 4096)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4459, line: 312, size: 512, elements: !4614)
!4614 = !{!4615, !4616, !4617}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4613, file: !4459, line: 313, baseType: !677, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4613, file: !4459, line: 314, baseType: !677, size: 64, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4613, file: !4459, line: 315, baseType: !4618, size: 384, offset: 128)
!4618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 384, elements: !1466)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4609, file: !4459, line: 336, baseType: !4620, offset: 4608)
!4620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, elements: !1373)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4477, file: !4459, line: 353, baseType: !4622, size: 32768)
!4622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 32768, elements: !4623)
!4623 = !{!4624}
!4624 = !DISubrange(count: 4096)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4458, file: !4459, line: 484, baseType: !4464, size: 64, offset: 192)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4458, file: !4459, line: 491, baseType: !4627, size: 128, offset: 256)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4459, line: 404, size: 128, elements: !4628)
!4628 = !{!4629, !4630, !4631}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4627, file: !4459, line: 424, baseType: !677, size: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4627, file: !4459, line: 432, baseType: !7, size: 32, offset: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4627, file: !4459, line: 440, baseType: !7, size: 32, offset: 96)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4458, file: !4459, line: 498, baseType: !4627, size: 128, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4458, file: !4459, line: 508, baseType: !4465, size: 33280, align: 512, offset: 512)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3485, file: !3486, line: 16, baseType: !1358, size: 192, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3485, file: !3486, line: 17, baseType: !339, size: 32, offset: 704)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !756, file: !14, line: 1240, baseType: !256, size: 64, offset: 6912)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !756, file: !14, line: 1243, baseType: !405, size: 32, offset: 6976)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !756, file: !14, line: 1245, baseType: !1437, size: 64, offset: 7040)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !756, file: !14, line: 1246, baseType: !1437, size: 64, offset: 7104)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !756, file: !14, line: 1248, baseType: !406, size: 32, offset: 7168)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !756, file: !14, line: 1249, baseType: !4642, size: 64, offset: 7232)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !756, file: !14, line: 1252, baseType: !2604, size: 256, offset: 7296)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !756, file: !14, line: 1253, baseType: !4646, size: 128, offset: 7552)
!4646 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4647, line: 21, baseType: !4648)
!4647 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4647, line: 19, size: 128, elements: !4649)
!4649 = !{!4650}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4648, file: !4647, line: 20, baseType: !4651, size: 128)
!4651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 128, elements: !3851)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !756, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !756, file: !14, line: 1261, baseType: !863, size: 256, offset: 7744)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !756, file: !14, line: 1267, baseType: !491, size: 64, offset: 8000)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !756, file: !14, line: 1269, baseType: !702, size: 64, offset: 8064)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !756, file: !14, line: 1271, baseType: !4657, size: 448, offset: 8128)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2431, line: 63, size: 448, elements: !4658)
!4658 = !{!4659, !4664, !4665, !4666, !4667, !4668, !4669}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4657, file: !2431, line: 64, baseType: !4660, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!255, !4663, !2429}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4657, file: !2431, line: 66, baseType: !4660, size: 64, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4657, file: !2431, line: 69, baseType: !267, size: 64, offset: 128)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4657, file: !2431, line: 70, baseType: !89, size: 32, offset: 192)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4657, file: !2431, line: 71, baseType: !7, size: 32, offset: 224)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4657, file: !2431, line: 74, baseType: !272, size: 128, offset: 256)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4657, file: !2431, line: 85, baseType: !4670, size: 64, offset: 384)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !756, file: !14, line: 1274, baseType: !371, size: 64, offset: 8576)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !756, file: !14, line: 1280, baseType: !371, size: 64, offset: 8640)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !756, file: !14, line: 1283, baseType: !89, size: 32, offset: 8704)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !756, file: !14, line: 1286, baseType: !2363, size: 32, offset: 8736)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !756, file: !14, line: 1289, baseType: !408, size: 64, offset: 8768)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !756, file: !14, line: 1290, baseType: !1188, size: 64, offset: 8832)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !756, file: !14, line: 1297, baseType: !1560, size: 64, offset: 8896)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !756, file: !14, line: 1304, baseType: !4679, size: 64, offset: 8960)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4680, line: 49, size: 64, elements: !4681)
!4680 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4681 = !{!4682}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4679, file: !4680, line: 50, baseType: !4683, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4680, line: 41, size: 512, align: 512, elements: !4685)
!4685 = !{!4686, !4687, !4692}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4684, file: !4680, line: 43, baseType: !319, size: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4684, file: !4680, line: 45, baseType: !4688, size: 192, offset: 64)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4680, line: 29, size: 192, elements: !4689)
!4689 = !{!4690, !4691}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4688, file: !4680, line: 30, baseType: !272, size: 128)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4688, file: !4680, line: 32, baseType: !267, size: 64, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4684, file: !4680, line: 46, baseType: !267, size: 64, offset: 256)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !756, file: !14, line: 1305, baseType: !4679, size: 64, offset: 9024)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !756, file: !14, line: 1306, baseType: !1070, size: 128, align: 64, offset: 9088)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !756, file: !14, line: 1307, baseType: !368, size: 256, offset: 9216)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !756, file: !14, line: 1309, baseType: !863, size: 256, offset: 9472)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !756, file: !14, line: 1314, baseType: !89, size: 32, offset: 9728)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !756, file: !14, line: 1317, baseType: !319, size: 32, align: 512, offset: 10240)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !756, file: !14, line: 1318, baseType: !272, size: 128, offset: 10304)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !756, file: !14, line: 1320, baseType: !319, size: 32, offset: 10432)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !756, file: !14, line: 1321, baseType: !272, size: 128, offset: 10496)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !750, file: !751, line: 73, baseType: !89, size: 32, offset: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !750, file: !751, line: 74, baseType: !4704, size: 64, offset: 192)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1397, line: 42, flags: DIFlagFwdDecl)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !704, file: !643, line: 141, baseType: !4708, size: 64, offset: 704)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!89, !2491, !452}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !704, file: !643, line: 142, baseType: !4712, size: 64, offset: 768)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!641, !641, !4715}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !642, file: !643, line: 96, baseType: !755, size: 64, offset: 832)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !642, file: !643, line: 97, baseType: !255, size: 64, offset: 896)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !642, file: !643, line: 98, baseType: !256, size: 64, offset: 960)
!4720 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !643, line: 100, baseType: !4721, size: 128, offset: 1024)
!4721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !643, line: 100, size: 128, elements: !4722)
!4722 = !{!4723, !4724}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4721, file: !643, line: 101, baseType: !272, size: 128)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4721, file: !643, line: 102, baseType: !2266, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !642, file: !643, line: 104, baseType: !272, size: 128, offset: 1152)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !642, file: !643, line: 105, baseType: !272, size: 128, offset: 1280)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !642, file: !643, line: 113, baseType: !4728, size: 128, offset: 1408)
!4728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !643, line: 109, size: 128, elements: !4729)
!4729 = !{!4730, !4731, !4732}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4728, file: !643, line: 110, baseType: !392, size: 128)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4728, file: !643, line: 111, baseType: !657, size: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4728, file: !643, line: 112, baseType: !1070, size: 128, align: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !635, file: !14, line: 1968, baseType: !4734, size: 64, offset: 64)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!491, !641, !606, !4737}
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4739, line: 10, size: 128, elements: !4740)
!4739 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4740 = !{!4741, !4742}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4738, file: !4739, line: 11, baseType: !898, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4738, file: !4739, line: 12, baseType: !256, size: 64, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !635, file: !14, line: 1969, baseType: !4744, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!89, !4704, !606, !89}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !635, file: !14, line: 1970, baseType: !4748, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!629, !606, !89, !452}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !635, file: !14, line: 1972, baseType: !4752, size: 64, offset: 256)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!89, !641, !530, !89}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !635, file: !14, line: 1974, baseType: !4756, size: 64, offset: 320)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!89, !4704, !606, !641, !569, !452}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !635, file: !14, line: 1976, baseType: !4760, size: 64, offset: 384)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!89, !641, !606, !641}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !635, file: !14, line: 1977, baseType: !4764, size: 64, offset: 448)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!89, !606, !641}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !635, file: !14, line: 1978, baseType: !4768, size: 64, offset: 512)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!89, !4704, !606, !641, !491}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !635, file: !14, line: 1980, baseType: !4772, size: 64, offset: 576)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!89, !4704, !606, !641, !569}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !635, file: !14, line: 1982, baseType: !4764, size: 64, offset: 640)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !635, file: !14, line: 1983, baseType: !4777, size: 64, offset: 704)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!89, !4704, !606, !641, !569, !760}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !635, file: !14, line: 1985, baseType: !4781, size: 64, offset: 768)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!89, !4704, !606, !641, !606, !641, !7}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !635, file: !14, line: 1987, baseType: !4785, size: 64, offset: 832)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!89, !4704, !641, !4788}
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4790)
!4790 = !{!4791, !4792, !4793, !4803, !4812, !4813, !4818, !4819, !4820}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4789, file: !14, line: 227, baseType: !7, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4789, file: !14, line: 228, baseType: !569, size: 16, offset: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, scope: !4789, file: !14, line: 241, baseType: !4794, size: 32, offset: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4789, file: !14, line: 241, size: 32, elements: !4795)
!4795 = !{!4796, !4797}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4794, file: !14, line: 242, baseType: !612, size: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4794, file: !14, line: 243, baseType: !4798, size: 32)
!4798 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4799, line: 16, baseType: !4800)
!4799 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4799, line: 14, size: 32, elements: !4801)
!4801 = !{!4802}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4800, file: !4799, line: 15, baseType: !617, size: 32)
!4803 = !DIDerivedType(tag: DW_TAG_member, scope: !4789, file: !14, line: 245, baseType: !4804, size: 32, offset: 96)
!4804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4789, file: !14, line: 245, size: 32, elements: !4805)
!4805 = !{!4806, !4807}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4804, file: !14, line: 246, baseType: !621, size: 32)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4804, file: !14, line: 247, baseType: !4808, size: 32)
!4808 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4799, line: 20, baseType: !4809)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4799, line: 18, size: 32, elements: !4810)
!4810 = !{!4811}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4809, file: !4799, line: 19, baseType: !625, size: 32)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4789, file: !14, line: 249, baseType: !765, size: 64, offset: 128)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4789, file: !14, line: 250, baseType: !4814, size: 128, offset: 192)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1438, line: 13, size: 128, elements: !4815)
!4815 = !{!4816, !4817}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4814, file: !1438, line: 14, baseType: !1437, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4814, file: !1438, line: 15, baseType: !267, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4789, file: !14, line: 251, baseType: !4814, size: 128, offset: 320)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4789, file: !14, line: 252, baseType: !4814, size: 128, offset: 448)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4789, file: !14, line: 259, baseType: !1605, size: 64, offset: 576)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !635, file: !14, line: 1988, baseType: !4822, size: 64, offset: 896)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!89, !4704, !2491, !4825, !405, !7}
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4827, line: 22, size: 1280, elements: !4828)
!4827 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4828 = !{!4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4826, file: !4827, line: 23, baseType: !405, size: 32)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4826, file: !4827, line: 24, baseType: !569, size: 16, offset: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4826, file: !4827, line: 25, baseType: !7, size: 32, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4826, file: !4827, line: 26, baseType: !1445, size: 32, offset: 96)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4826, file: !4827, line: 27, baseType: !677, size: 64, offset: 128)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4826, file: !4827, line: 28, baseType: !677, size: 64, offset: 192)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4826, file: !4827, line: 41, baseType: !677, size: 64, offset: 256)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4826, file: !4827, line: 42, baseType: !760, size: 32, offset: 320)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4826, file: !4827, line: 43, baseType: !760, size: 32, offset: 352)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4826, file: !4827, line: 44, baseType: !612, size: 32, offset: 384)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4826, file: !4827, line: 45, baseType: !621, size: 32, offset: 416)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4826, file: !4827, line: 46, baseType: !765, size: 64, offset: 448)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4826, file: !4827, line: 47, baseType: !4814, size: 128, offset: 512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4826, file: !4827, line: 48, baseType: !4814, size: 128, offset: 640)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4826, file: !4827, line: 49, baseType: !4814, size: 128, offset: 768)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4826, file: !4827, line: 50, baseType: !4814, size: 128, offset: 896)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4826, file: !4827, line: 51, baseType: !677, size: 64, offset: 1024)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4826, file: !4827, line: 52, baseType: !677, size: 64, offset: 1088)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4826, file: !4827, line: 53, baseType: !405, size: 32, offset: 1152)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4826, file: !4827, line: 54, baseType: !405, size: 32, offset: 1184)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4826, file: !4827, line: 55, baseType: !677, size: 64, offset: 1216)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !635, file: !14, line: 1990, baseType: !4851, size: 64, offset: 960)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!560, !641, !530, !574}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !635, file: !14, line: 1991, baseType: !4855, size: 64, offset: 1024)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!89, !606, !4858, !677, !677}
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !635, file: !14, line: 1993, baseType: !4861, size: 64, offset: 1088)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!89, !606, !89}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !635, file: !14, line: 1994, baseType: !4865, size: 64, offset: 1152)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!89, !606, !641, !1605, !7, !569}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !635, file: !14, line: 1997, baseType: !4869, size: 64, offset: 1216)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!89, !4704, !606, !1605, !569}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !635, file: !14, line: 1999, baseType: !4873, size: 64, offset: 1280)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!629, !4704, !641, !89}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !635, file: !14, line: 2001, baseType: !4877, size: 64, offset: 1344)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!89, !4704, !641, !629, !89}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !635, file: !14, line: 2003, baseType: !4881, size: 64, offset: 1408)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!89, !4704, !641, !4884}
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !635, file: !14, line: 2005, baseType: !4887, size: 64, offset: 1472)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!89, !641, !4884}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !635, file: !14, line: 2006, baseType: !4891, size: 64, offset: 1536)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!4894, !606}
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4896)
!4896 = !{!4897, !4898}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4895, file: !14, line: 3193, baseType: !2212, size: 128)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4895, file: !14, line: 3194, baseType: !405, size: 32, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !607, file: !14, line: 655, baseType: !755, size: 64, offset: 448)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !607, file: !14, line: 656, baseType: !602, size: 64, offset: 512)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !607, file: !14, line: 659, baseType: !256, size: 64, offset: 576)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !607, file: !14, line: 663, baseType: !255, size: 64, offset: 640)
!4903 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !14, line: 671, baseType: !4904, size: 32, offset: 704)
!4904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !14, line: 671, size: 32, elements: !4905)
!4905 = !{!4906, !4908}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4904, file: !14, line: 672, baseType: !4907, size: 32)
!4907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4904, file: !14, line: 673, baseType: !7, size: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !607, file: !14, line: 675, baseType: !760, size: 32, offset: 736)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !607, file: !14, line: 676, baseType: !765, size: 64, offset: 768)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !607, file: !14, line: 677, baseType: !4814, size: 128, offset: 832)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !607, file: !14, line: 678, baseType: !4814, size: 128, offset: 960)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !607, file: !14, line: 679, baseType: !4814, size: 128, offset: 1088)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !607, file: !14, line: 680, baseType: !319, size: 32, offset: 1216)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !607, file: !14, line: 681, baseType: !359, size: 16, offset: 1248)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !607, file: !14, line: 682, baseType: !347, size: 8, offset: 1264)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !607, file: !14, line: 683, baseType: !347, size: 8, offset: 1272)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !607, file: !14, line: 684, baseType: !2564, size: 64, offset: 1280)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !607, file: !14, line: 691, baseType: !255, size: 64, offset: 1344)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !607, file: !14, line: 692, baseType: !1421, size: 320, offset: 1408)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !607, file: !14, line: 694, baseType: !255, size: 64, offset: 1728)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !607, file: !14, line: 695, baseType: !255, size: 64, offset: 1792)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !607, file: !14, line: 697, baseType: !392, size: 128, offset: 1856)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !607, file: !14, line: 698, baseType: !272, size: 128, offset: 1984)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !607, file: !14, line: 707, baseType: !272, size: 128, offset: 2112)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !607, file: !14, line: 708, baseType: !272, size: 128, offset: 2240)
!4927 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !14, line: 709, baseType: !4928, size: 128, offset: 2368)
!4928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !14, line: 709, size: 128, elements: !4929)
!4929 = !{!4930, !4931}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4928, file: !14, line: 710, baseType: !1188, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4928, file: !14, line: 711, baseType: !1070, size: 128, align: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !607, file: !14, line: 713, baseType: !373, size: 64, offset: 2496)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !607, file: !14, line: 714, baseType: !373, size: 64, offset: 2560)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !607, file: !14, line: 715, baseType: !339, size: 32, offset: 2624)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !607, file: !14, line: 716, baseType: !339, size: 32, offset: 2656)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !607, file: !14, line: 717, baseType: !339, size: 32, offset: 2688)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !607, file: !14, line: 719, baseType: !339, size: 32, offset: 2720)
!4938 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !14, line: 721, baseType: !4939, size: 64, offset: 2752)
!4939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !14, line: 721, size: 64, elements: !4940)
!4940 = !{!4941, !4942}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4939, file: !14, line: 722, baseType: !1596, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4939, file: !14, line: 723, baseType: !1211, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !607, file: !14, line: 725, baseType: !4944, size: 64, offset: 2816)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !607, file: !14, line: 726, baseType: !603, size: 1536, align: 64, offset: 2880)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !607, file: !14, line: 727, baseType: !272, size: 128, offset: 4416)
!4948 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !14, line: 728, baseType: !4949, size: 64, offset: 4544)
!4949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !14, line: 728, size: 64, elements: !4950)
!4950 = !{!4951, !4952, !4955, !4956}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4949, file: !14, line: 729, baseType: !2312, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4949, file: !14, line: 730, baseType: !4953, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4949, file: !14, line: 731, baseType: !530, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4949, file: !14, line: 732, baseType: !7, size: 32)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !607, file: !14, line: 735, baseType: !406, size: 32, offset: 4608)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !607, file: !14, line: 738, baseType: !406, size: 32, offset: 4640)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !607, file: !14, line: 739, baseType: !4642, size: 64, offset: 4672)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !607, file: !14, line: 750, baseType: !256, size: 64, offset: 4736)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !603, file: !14, line: 474, baseType: !2212, size: 128, offset: 64)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !603, file: !14, line: 475, baseType: !1421, size: 320, offset: 192)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !603, file: !14, line: 476, baseType: !2044, size: 32, offset: 512)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !603, file: !14, line: 477, baseType: !339, size: 32, offset: 544)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !603, file: !14, line: 482, baseType: !3129, size: 128, offset: 576)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !603, file: !14, line: 483, baseType: !255, size: 64, offset: 704)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !603, file: !14, line: 484, baseType: !255, size: 64, offset: 768)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !603, file: !14, line: 485, baseType: !4969, size: 64, offset: 832)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4971)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4972)
!4972 = !{!4973, !4977, !4981, !4985, !4989, !5005, !5009, !5013, !5017, !5021, !5025, !5029, !5030, !5034, !5038, !5042, !5047, !5051, !5057, !5058}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4971, file: !14, line: 405, baseType: !4974, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!89, !1767, !1223}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4971, file: !14, line: 406, baseType: !4978, size: 64, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!89, !1605, !1639}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4971, file: !14, line: 409, baseType: !4982, size: 64, offset: 128)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!89, !602, !1223}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4971, file: !14, line: 412, baseType: !4986, size: 64, offset: 192)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!452, !602, !1639}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4971, file: !14, line: 414, baseType: !4990, size: 64, offset: 256)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !4993}
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1636, line: 1276, size: 448, elements: !4995)
!4995 = !{!4996, !4997, !4998, !5000, !5001, !5002, !5003, !5004}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4994, file: !1636, line: 1277, baseType: !1605, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4994, file: !1636, line: 1278, baseType: !602, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4994, file: !1636, line: 1279, baseType: !4999, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4994, file: !1636, line: 1281, baseType: !255, size: 64, offset: 192)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4994, file: !1636, line: 1282, baseType: !7, size: 32, offset: 256)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4994, file: !1636, line: 1283, baseType: !7, size: 32, offset: 288)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4994, file: !1636, line: 1284, baseType: !452, size: 8, offset: 320)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4994, file: !1636, line: 1285, baseType: !255, size: 64, offset: 384)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4971, file: !14, line: 416, baseType: !5006, size: 64, offset: 320)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!89, !1605, !602, !765, !7, !4391, !2328}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4971, file: !14, line: 419, baseType: !5010, size: 64, offset: 384)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!89, !1605, !602, !765, !7, !7, !1767, !256}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4971, file: !14, line: 424, baseType: !5014, size: 64, offset: 448)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!2594, !602, !2594}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4971, file: !14, line: 425, baseType: !5018, size: 64, offset: 512)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{null, !1639, !574, !574}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4971, file: !14, line: 426, baseType: !5022, size: 64, offset: 576)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!452, !1639, !2044}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4971, file: !14, line: 427, baseType: !5026, size: 64, offset: 640)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{null, !1639}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4971, file: !14, line: 428, baseType: !1615, size: 64, offset: 704)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4971, file: !14, line: 433, baseType: !5031, size: 64, offset: 768)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!89, !602, !1639, !1639, !140}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4971, file: !14, line: 435, baseType: !5035, size: 64, offset: 832)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!89, !1639}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4971, file: !14, line: 436, baseType: !5039, size: 64, offset: 896)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!452, !1639, !574, !574}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4971, file: !14, line: 438, baseType: !5043, size: 64, offset: 960)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{null, !1639, !5046, !5046}
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4971, file: !14, line: 439, baseType: !5048, size: 64, offset: 1024)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!89, !602, !1767}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4971, file: !14, line: 442, baseType: !5052, size: 64, offset: 1088)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!89, !5055, !1605, !2784}
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4971, file: !14, line: 444, baseType: !2320, size: 64, offset: 1152)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4971, file: !14, line: 445, baseType: !5059, size: 64, offset: 1216)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!89, !1618, !2162}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !14, line: 486, baseType: !255, size: 64, offset: 896)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !603, file: !14, line: 487, baseType: !1421, size: 320, offset: 960)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !603, file: !14, line: 488, baseType: !2363, size: 32, offset: 1280)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !603, file: !14, line: 489, baseType: !319, size: 32, offset: 1312)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !603, file: !14, line: 490, baseType: !272, size: 128, offset: 1344)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !603, file: !14, line: 491, baseType: !256, size: 64, offset: 1472)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !593, file: !554, line: 180, baseType: !5069, size: 64, offset: 320)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!560, !1605, !495, !592, !530, !765, !574}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !593, file: !554, line: 182, baseType: !5069, size: 64, offset: 384)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !593, file: !554, line: 184, baseType: !5074, size: 64, offset: 448)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!89, !1605, !495, !592, !1781}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !581, file: !554, line: 90, baseType: !5078, size: 64, offset: 192)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !581, file: !554, line: 91, baseType: !5080, size: 64, offset: 256)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !544, file: !488, line: 120, baseType: !5082, size: 64, offset: 192)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!3369, !513}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !544, file: !488, line: 121, baseType: !5086, size: 64, offset: 256)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!1909, !513}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !544, file: !488, line: 122, baseType: !5090, size: 64, offset: 320)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{null, !513, !2901, !2902}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !487, file: !488, line: 70, baseType: !5094, size: 64, offset: 384)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !779, line: 190, size: 1152, elements: !5096)
!5096 = !{!5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5176, !5177, !5178, !5179, !5180, !5183}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5095, file: !779, line: 191, baseType: !339, size: 32)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5095, file: !779, line: 192, baseType: !339, size: 32, offset: 32)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5095, file: !779, line: 202, baseType: !5094, size: 64, offset: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5095, file: !779, line: 203, baseType: !491, size: 64, offset: 128)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5095, file: !779, line: 205, baseType: !964, size: 192, align: 64, offset: 192)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5095, file: !779, line: 207, baseType: !1909, size: 64, offset: 384)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5095, file: !779, line: 208, baseType: !7, size: 32, offset: 448)
!5104 = !DIDerivedType(tag: DW_TAG_member, scope: !5095, file: !779, line: 209, baseType: !5105, size: 256, offset: 512)
!5105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5095, file: !779, line: 209, size: 256, elements: !5106)
!5106 = !{!5107, !5116, !5120}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5105, file: !779, line: 210, baseType: !5108, size: 256)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !779, line: 153, size: 256, elements: !5109)
!5109 = !{!5110, !5111, !5112, !5115}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5108, file: !779, line: 154, baseType: !255, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5108, file: !779, line: 156, baseType: !3132, size: 64, offset: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5108, file: !779, line: 162, baseType: !5113, size: 64, offset: 128)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !779, line: 162, flags: DIFlagFwdDecl)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5108, file: !779, line: 167, baseType: !255, size: 64, offset: 192)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5105, file: !779, line: 211, baseType: !5117, size: 64)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !779, line: 170, size: 64, elements: !5118)
!5118 = !{!5119}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5117, file: !779, line: 171, baseType: !5094, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5105, file: !779, line: 212, baseType: !5121, size: 256)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !779, line: 174, size: 256, elements: !5122)
!5122 = !{!5123, !5171, !5174, !5175}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5121, file: !779, line: 175, baseType: !5124, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5126)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !779, line: 271, size: 768, elements: !5127)
!5127 = !{!5128, !5148, !5152, !5153, !5154, !5155, !5156, !5160, !5161, !5162, !5163, !5167}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5126, file: !779, line: 276, baseType: !5129, size: 64)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!89, !5132}
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !779, line: 251, size: 1216, elements: !5134)
!5134 = !{!5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5133, file: !779, line: 253, baseType: !5094, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5133, file: !779, line: 254, baseType: !1605, size: 64, offset: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5133, file: !779, line: 255, baseType: !1260, size: 64, offset: 128)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5133, file: !779, line: 256, baseType: !256, size: 64, offset: 192)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5133, file: !779, line: 259, baseType: !863, size: 256, offset: 256)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5133, file: !779, line: 260, baseType: !863, size: 256, offset: 512)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5133, file: !779, line: 261, baseType: !89, size: 32, offset: 768)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5133, file: !779, line: 262, baseType: !272, size: 128, offset: 832)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5133, file: !779, line: 263, baseType: !530, size: 64, offset: 960)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5133, file: !779, line: 265, baseType: !574, size: 64, offset: 1024)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5133, file: !779, line: 266, baseType: !452, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5133, file: !779, line: 267, baseType: !452, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5133, file: !779, line: 268, baseType: !1978, size: 64, offset: 1152)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5126, file: !779, line: 277, baseType: !5149, size: 64, offset: 64)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{null, !5132}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5126, file: !779, line: 290, baseType: !1291, size: 64, offset: 128)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5126, file: !779, line: 292, baseType: !1278, size: 64, offset: 192)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5126, file: !779, line: 293, baseType: !1287, size: 64, offset: 256)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5126, file: !779, line: 294, baseType: !1283, size: 64, offset: 320)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5126, file: !779, line: 296, baseType: !5157, size: 64, offset: 384)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!560, !5132, !530, !574, !765}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5126, file: !779, line: 306, baseType: !574, size: 64, offset: 448)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5126, file: !779, line: 313, baseType: !452, size: 8, offset: 512)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5126, file: !779, line: 314, baseType: !5157, size: 64, offset: 576)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5126, file: !779, line: 317, baseType: !5164, size: 64, offset: 640)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!2255, !5132, !2257}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5126, file: !779, line: 320, baseType: !5168, size: 64, offset: 704)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!89, !5132, !1781}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5121, file: !779, line: 176, baseType: !5172, size: 64, offset: 64)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !779, line: 35, flags: DIFlagFwdDecl)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5121, file: !779, line: 177, baseType: !765, size: 64, offset: 128)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5121, file: !779, line: 178, baseType: !5094, size: 64, offset: 192)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5095, file: !779, line: 215, baseType: !256, size: 64, offset: 768)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5095, file: !779, line: 221, baseType: !677, size: 64, offset: 832)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5095, file: !779, line: 223, baseType: !359, size: 16, offset: 896)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5095, file: !779, line: 224, baseType: !569, size: 16, offset: 912)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5095, file: !779, line: 225, baseType: !5181, size: 64, offset: 960)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !779, line: 36, flags: DIFlagFwdDecl)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5095, file: !779, line: 227, baseType: !1070, size: 128, align: 64, offset: 1024)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !487, file: !488, line: 71, baseType: !5185, size: 32, offset: 448)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5186, line: 19, size: 32, elements: !5187)
!5186 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5187 = !{!5188}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5185, file: !5186, line: 20, baseType: !1347, size: 32)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !487, file: !488, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !487, file: !488, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !487, file: !488, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !487, file: !488, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !487, file: !488, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !484, file: !206, line: 12, baseType: !465, size: 64, offset: 512)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !466, file: !206, line: 30, baseType: !487, size: 512, offset: 960)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !313, file: !148, line: 361, baseType: !7, size: 32, offset: 1984)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !313, file: !148, line: 364, baseType: !359, size: 16, offset: 2016)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !313, file: !148, line: 366, baseType: !359, size: 16, offset: 2032)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !313, file: !148, line: 368, baseType: !5200, size: 64, offset: 2048)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !313, file: !148, line: 371, baseType: !319, size: 32, offset: 2112)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !313, file: !148, line: 376, baseType: !2146, size: 320, offset: 2176)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !313, file: !148, line: 382, baseType: !339, size: 32, offset: 2496)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !313, file: !148, line: 388, baseType: !5205, size: 64, offset: 2560)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !148, line: 735, size: 1472, elements: !5207)
!5207 = !{!5208, !5209, !5210, !5211, !5226, !5227, !5229, !5230, !5231}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !5206, file: !148, line: 736, baseType: !7, size: 32)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !5206, file: !148, line: 737, baseType: !7, size: 32, offset: 32)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !5206, file: !148, line: 738, baseType: !7, size: 32, offset: 64)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !5206, file: !148, line: 740, baseType: !5212, size: 512, offset: 128)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !446, line: 109, size: 512, elements: !5213)
!5213 = !{!5214, !5215, !5216, !5217, !5222, !5223, !5224, !5225}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !5212, file: !446, line: 113, baseType: !445, size: 256)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !5212, file: !446, line: 119, baseType: !7, size: 32, offset: 256)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !5212, file: !446, line: 124, baseType: !339, size: 32, offset: 288)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5212, file: !446, line: 129, baseType: !5218, size: 64, offset: 320)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !446, line: 93, size: 512, align: 512, elements: !5220)
!5220 = !{!5221}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5219, file: !446, line: 97, baseType: !1358, size: 192)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !5212, file: !446, line: 134, baseType: !339, size: 32, offset: 384)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !5212, file: !446, line: 140, baseType: !7, size: 32, offset: 416)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !5212, file: !446, line: 146, baseType: !339, size: 32, offset: 448)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !5212, file: !446, line: 151, baseType: !339, size: 32, offset: 480)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !5206, file: !148, line: 741, baseType: !5212, size: 512, offset: 640)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !5206, file: !148, line: 743, baseType: !5228, size: 64, offset: 1152)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !5206, file: !148, line: 744, baseType: !5228, size: 64, offset: 1216)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !5206, file: !148, line: 745, baseType: !272, size: 128, offset: 1280)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5206, file: !148, line: 751, baseType: !319, size: 32, offset: 1408)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !313, file: !148, line: 394, baseType: !5205, size: 64, offset: 2624)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !313, file: !148, line: 397, baseType: !255, size: 64, offset: 2688)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !313, file: !148, line: 400, baseType: !7, size: 32, offset: 2752)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !313, file: !148, line: 402, baseType: !7, size: 32, offset: 2784)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !313, file: !148, line: 408, baseType: !339, size: 32, offset: 2816)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !313, file: !148, line: 411, baseType: !392, size: 128, offset: 2880)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !313, file: !148, line: 413, baseType: !392, size: 128, offset: 3008)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !313, file: !148, line: 415, baseType: !487, size: 512, offset: 3136)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !313, file: !148, line: 422, baseType: !641, size: 64, offset: 3648)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !313, file: !148, line: 424, baseType: !641, size: 64, offset: 3712)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !313, file: !148, line: 431, baseType: !272, size: 128, offset: 3776)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !298, file: !158, line: 30, baseType: !5244, size: 64, offset: 192)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{null, !312, !7}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !298, file: !158, line: 31, baseType: !5248, size: 64, offset: 256)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{null, !312}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !298, file: !158, line: 33, baseType: !5252, size: 64, offset: 320)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!452, !281, !277, !2618}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !298, file: !158, line: 34, baseType: !5256, size: 64, offset: 384)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!452, !281, !2618, !7}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !298, file: !158, line: 35, baseType: !5260, size: 64, offset: 448)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!89, !281, !5228, !2618}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !298, file: !158, line: 36, baseType: !5264, size: 64, offset: 512)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{null, !281, !277, !157}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !298, file: !158, line: 37, baseType: !5268, size: 64, offset: 576)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !281, !277, !277}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !298, file: !158, line: 38, baseType: !5272, size: 64, offset: 640)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{null, !2624, !5275}
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !206, line: 146, size: 448, elements: !5277)
!5277 = !{!5278, !5279, !5281, !5282, !5283, !5285, !5286, !5287, !5288}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !5276, file: !206, line: 148, baseType: !281, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5276, file: !206, line: 149, baseType: !5280, size: 32, offset: 64)
!5280 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mq_req_flags_t", file: !212, line: 352, baseType: !406)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "shallow_depth", scope: !5276, file: !206, line: 150, baseType: !7, size: 32, offset: 96)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !5276, file: !206, line: 151, baseType: !2624, size: 32, offset: 128)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !5276, file: !206, line: 152, baseType: !5284, size: 32, offset: 160)
!5284 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !148, line: 27, baseType: !406)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !5276, file: !206, line: 155, baseType: !7, size: 32, offset: 192)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !5276, file: !206, line: 156, baseType: !5228, size: 64, offset: 256)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5276, file: !206, line: 159, baseType: !465, size: 64, offset: 320)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "hctx", scope: !5276, file: !206, line: 160, baseType: !312, size: 64, offset: 384)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !298, file: !158, line: 39, baseType: !5290, size: 64, offset: 704)
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{null, !277}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !298, file: !158, line: 40, baseType: !5290, size: 64, offset: 768)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !298, file: !158, line: 41, baseType: !5295, size: 64, offset: 832)
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{null, !312, !271, !5298}
!5298 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_insert_t", file: !206, line: 39, baseType: !7)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !298, file: !158, line: 43, baseType: !5300, size: 64, offset: 896)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!277, !312}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !298, file: !158, line: 44, baseType: !5304, size: 64, offset: 960)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!452, !312}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !298, file: !158, line: 45, baseType: !5308, size: 64, offset: 1024)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{null, !277, !677}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !298, file: !158, line: 46, baseType: !5290, size: 64, offset: 1088)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !298, file: !158, line: 47, baseType: !5313, size: 64, offset: 1152)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!277, !281, !277}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !298, file: !158, line: 48, baseType: !5313, size: 64, offset: 1216)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !298, file: !158, line: 49, baseType: !5318, size: 64, offset: 1280)
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{null, !5321}
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !4110, line: 73, size: 448, elements: !5323)
!5323 = !{!5324, !5325, !5326, !5331, !5336}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !5322, file: !4110, line: 74, baseType: !281, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !5322, file: !4110, line: 75, baseType: !4108, size: 64, offset: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, scope: !5322, file: !4110, line: 83, baseType: !5327, size: 128, offset: 128)
!5327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5322, file: !4110, line: 83, size: 128, elements: !5328)
!5328 = !{!5329, !5330}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !5327, file: !4110, line: 84, baseType: !272, size: 128)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !5327, file: !4110, line: 85, baseType: !294, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_member, scope: !5322, file: !4110, line: 87, baseType: !5332, size: 128, offset: 256)
!5332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5322, file: !4110, line: 87, size: 128, elements: !5333)
!5333 = !{!5334, !5335}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !5332, file: !4110, line: 88, baseType: !392, size: 128)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !5332, file: !4110, line: 89, baseType: !1070, size: 128, align: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5322, file: !4110, line: 92, baseType: !7, size: 32, offset: 384)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !298, file: !158, line: 50, baseType: !5318, size: 64, offset: 1344)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !291, file: !158, line: 72, baseType: !574, size: 64, offset: 1472)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !291, file: !158, line: 73, baseType: !574, size: 64, offset: 1536)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !291, file: !158, line: 74, baseType: !5341, size: 64, offset: 1600)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !158, line: 55, size: 256, elements: !5343)
!5343 = !{!5344, !5345, !5349}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5342, file: !158, line: 56, baseType: !565, size: 128)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5342, file: !158, line: 57, baseType: !5346, size: 64, offset: 128)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!560, !286, !530}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5342, file: !158, line: 58, baseType: !5350, size: 64, offset: 192)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!560, !286, !491, !574}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !291, file: !158, line: 75, baseType: !491, size: 64, offset: 1664)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !291, file: !158, line: 76, baseType: !491, size: 64, offset: 1728)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !291, file: !158, line: 77, baseType: !4907, size: 32, offset: 1792)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !291, file: !158, line: 78, baseType: !793, size: 64, offset: 1856)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "queue_debugfs_attrs", scope: !291, file: !158, line: 80, baseType: !5358, size: 64, offset: 1920)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5360)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_debugfs_attr", file: !5361, line: 11, size: 320, elements: !5362)
!5361 = !DIFile(filename: "block/blk-mq-debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42f71fe42bc838da54aa861da46eede1")
!5362 = !{!5363, !5364, !5365, !5369, !5373}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5360, file: !5361, line: 12, baseType: !491, size: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5360, file: !5361, line: 13, baseType: !569, size: 16, offset: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5360, file: !5361, line: 14, baseType: !5366, size: 64, offset: 128)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!89, !256, !1260}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5360, file: !5361, line: 15, baseType: !5370, size: 64, offset: 192)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!560, !256, !491, !574, !1281}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ops", scope: !5360, file: !5361, line: 17, baseType: !1273, size: 64, offset: 256)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_debugfs_attrs", scope: !291, file: !158, line: 81, baseType: !5358, size: 64, offset: 1984)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !291, file: !158, line: 85, baseType: !5376, size: 176, offset: 2048)
!5376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 176, elements: !5377)
!5377 = !{!5378}
!5378 = !DISubrange(count: 22)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !291, file: !158, line: 86, baseType: !272, size: 128, offset: 2240)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !287, file: !158, line: 117, baseType: !256, size: 64, offset: 64)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !287, file: !158, line: 118, baseType: !487, size: 512, offset: 128)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !287, file: !158, line: 119, baseType: !863, size: 256, offset: 640)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !158, line: 120, baseType: !255, size: 64, offset: 896)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !287, file: !158, line: 121, baseType: !5385, size: 4096, offset: 960)
!5385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1188, size: 4096, elements: !533)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !282, file: !57, line: 395, baseType: !1734, size: 128, offset: 128)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !282, file: !57, line: 397, baseType: !5388, size: 64, offset: 256)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !57, line: 39, flags: DIFlagFwdDecl)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !282, file: !57, line: 398, baseType: !5391, size: 64, offset: 320)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !57, line: 38, flags: DIFlagFwdDecl)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !282, file: !57, line: 399, baseType: !863, size: 256, offset: 384)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !282, file: !57, line: 401, baseType: !5395, size: 64, offset: 640)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5397)
!5397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !148, line: 537, size: 1152, elements: !5398)
!5398 = !{!5399, !5409, !5410, !5414, !5418, !5422, !5426, !5430, !5434, !5438, !5439, !5443, !5444, !5474, !5478, !5479, !5483, !5487}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !5397, file: !148, line: 541, baseType: !5400, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!435, !312, !5403}
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5405)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !148, line: 526, size: 128, elements: !5406)
!5406 = !{!5407, !5408}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !5405, file: !148, line: 527, baseType: !277, size: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5405, file: !148, line: 528, baseType: !452, size: 8, offset: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !5397, file: !148, line: 551, baseType: !5248, size: 64, offset: 64)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !5397, file: !148, line: 559, baseType: !5411, size: 64, offset: 128)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{null, !5228}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !5397, file: !148, line: 567, baseType: !5415, size: 64, offset: 192)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!89, !281}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !5397, file: !148, line: 572, baseType: !5419, size: 64, offset: 256)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{null, !281, !89}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !5397, file: !148, line: 577, baseType: !5423, size: 64, offset: 320)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{null, !277, !89}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !5397, file: !148, line: 581, baseType: !5427, size: 64, offset: 384)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{!89, !277}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5397, file: !148, line: 586, baseType: !5431, size: 64, offset: 448)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!164, !277}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5397, file: !148, line: 591, baseType: !5435, size: 64, offset: 512)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!89, !312, !2229}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5397, file: !148, line: 596, baseType: !5290, size: 64, offset: 576)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !5397, file: !148, line: 603, baseType: !5440, size: 64, offset: 640)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!89, !312, !256, !7}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !5397, file: !148, line: 607, baseType: !5244, size: 64, offset: 704)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !5397, file: !148, line: 616, baseType: !5445, size: 64, offset: 768)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!89, !5448, !277, !7, !7}
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !148, line: 498, size: 1344, elements: !5450)
!5450 = !{!5451, !5452, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5470, !5471, !5472, !5473}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5449, file: !148, line: 499, baseType: !5395, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5449, file: !148, line: 500, baseType: !5453, size: 384, offset: 64)
!5453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5454, size: 384, elements: !474)
!5454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !148, line: 444, size: 128, elements: !5455)
!5455 = !{!5456, !5457, !5458}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !5454, file: !148, line: 445, baseType: !463, size: 64)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !5454, file: !148, line: 446, baseType: !7, size: 32, offset: 64)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !5454, file: !148, line: 447, baseType: !7, size: 32, offset: 96)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !5449, file: !148, line: 501, baseType: !7, size: 32, offset: 448)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !5449, file: !148, line: 502, baseType: !7, size: 32, offset: 480)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !5449, file: !148, line: 503, baseType: !7, size: 32, offset: 512)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !5449, file: !148, line: 504, baseType: !7, size: 32, offset: 544)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !5449, file: !148, line: 505, baseType: !7, size: 32, offset: 576)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !5449, file: !148, line: 506, baseType: !89, size: 32, offset: 608)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5449, file: !148, line: 507, baseType: !7, size: 32, offset: 640)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5449, file: !148, line: 508, baseType: !7, size: 32, offset: 672)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5449, file: !148, line: 509, baseType: !256, size: 64, offset: 704)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !5449, file: !148, line: 511, baseType: !5469, size: 64, offset: 768)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !5449, file: !148, line: 513, baseType: !5205, size: 64, offset: 832)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !5449, file: !148, line: 515, baseType: !863, size: 256, offset: 896)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !5449, file: !148, line: 516, baseType: !272, size: 128, offset: 1152)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !5449, file: !148, line: 517, baseType: !1050, size: 64, offset: 1280)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !5397, file: !148, line: 621, baseType: !5475, size: 64, offset: 832)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{null, !5448, !277, !7}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !5397, file: !148, line: 628, baseType: !5290, size: 64, offset: 896)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !5397, file: !148, line: 633, baseType: !5480, size: 64, offset: 960)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!452, !281}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !5397, file: !148, line: 639, baseType: !5484, size: 64, offset: 1024)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{null, !5448}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !5397, file: !148, line: 646, baseType: !5488, size: 64, offset: 1088)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{null, !1260, !277}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !282, file: !57, line: 404, baseType: !465, size: 64, offset: 704)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !282, file: !57, line: 406, baseType: !7, size: 32, offset: 768)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !282, file: !57, line: 409, baseType: !2212, size: 128, offset: 832)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !282, file: !57, line: 410, baseType: !7, size: 32, offset: 960)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !282, file: !57, line: 416, baseType: !256, size: 64, offset: 1024)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !282, file: !57, line: 421, baseType: !255, size: 64, offset: 1088)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !282, file: !57, line: 426, baseType: !339, size: 32, offset: 1152)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !282, file: !57, line: 432, baseType: !89, size: 32, offset: 1184)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !282, file: !57, line: 434, baseType: !319, size: 32, offset: 1216)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !282, file: !57, line: 436, baseType: !2597, size: 64, offset: 1280)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !282, file: !57, line: 438, baseType: !1347, size: 32, offset: 1344)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !282, file: !57, line: 443, baseType: !495, size: 64, offset: 1408)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !282, file: !57, line: 450, baseType: !2879, size: 64, offset: 1472)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !282, file: !57, line: 451, baseType: !88, size: 32, offset: 1536)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !282, file: !57, line: 457, baseType: !255, size: 64, offset: 1600)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !282, file: !57, line: 459, baseType: !7, size: 32, offset: 1664)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !282, file: !57, line: 466, baseType: !7, size: 32, offset: 1696)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !282, file: !57, line: 468, baseType: !388, size: 320, offset: 1728)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !282, file: !57, line: 469, baseType: !368, size: 256, offset: 2048)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !282, file: !57, line: 471, baseType: !339, size: 32, offset: 2304)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !282, file: !57, line: 473, baseType: !5205, size: 64, offset: 2368)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !282, file: !57, line: 475, baseType: !272, size: 128, offset: 2432)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !282, file: !57, line: 477, baseType: !418, size: 64, offset: 2560)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !282, file: !57, line: 478, baseType: !2643, size: 64, offset: 2624)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !282, file: !57, line: 479, baseType: !272, size: 128, offset: 2688)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !282, file: !57, line: 480, baseType: !863, size: 256, offset: 2816)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !282, file: !57, line: 483, baseType: !5518, size: 960, offset: 3072)
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !57, line: 300, size: 960, elements: !5519)
!5519 = !{!5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !5518, file: !57, line: 301, baseType: !168, size: 32)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !5518, file: !57, line: 302, baseType: !255, size: 64, offset: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !5518, file: !57, line: 303, baseType: !255, size: 64, offset: 128)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !5518, file: !57, line: 305, baseType: !7, size: 32, offset: 192)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !5518, file: !57, line: 306, baseType: !7, size: 32, offset: 224)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !5518, file: !57, line: 307, baseType: !7, size: 32, offset: 256)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !5518, file: !57, line: 308, baseType: !7, size: 32, offset: 288)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !5518, file: !57, line: 309, baseType: !7, size: 32, offset: 320)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5518, file: !57, line: 310, baseType: !7, size: 32, offset: 352)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !5518, file: !57, line: 311, baseType: !7, size: 32, offset: 384)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !5518, file: !57, line: 312, baseType: !7, size: 32, offset: 416)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !5518, file: !57, line: 313, baseType: !7, size: 32, offset: 448)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !5518, file: !57, line: 314, baseType: !7, size: 32, offset: 480)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !5518, file: !57, line: 315, baseType: !7, size: 32, offset: 512)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !5518, file: !57, line: 316, baseType: !7, size: 32, offset: 544)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !5518, file: !57, line: 317, baseType: !7, size: 32, offset: 576)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !5518, file: !57, line: 318, baseType: !7, size: 32, offset: 608)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !5518, file: !57, line: 319, baseType: !7, size: 32, offset: 640)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !5518, file: !57, line: 320, baseType: !7, size: 32, offset: 672)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !5518, file: !57, line: 321, baseType: !7, size: 32, offset: 704)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !5518, file: !57, line: 322, baseType: !7, size: 32, offset: 736)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !5518, file: !57, line: 323, baseType: !7, size: 32, offset: 768)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !5518, file: !57, line: 325, baseType: !359, size: 16, offset: 800)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !5518, file: !57, line: 326, baseType: !359, size: 16, offset: 816)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !5518, file: !57, line: 327, baseType: !359, size: 16, offset: 832)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !5518, file: !57, line: 329, baseType: !351, size: 8, offset: 848)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !5518, file: !57, line: 330, baseType: !351, size: 8, offset: 856)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !5518, file: !57, line: 331, baseType: !351, size: 8, offset: 864)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !5518, file: !57, line: 332, baseType: !172, size: 32, offset: 896)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !5518, file: !57, line: 339, baseType: !7, size: 32, offset: 928)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !282, file: !57, line: 485, baseType: !7, size: 32, offset: 4032)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !282, file: !57, line: 487, baseType: !89, size: 32, offset: 4064)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !282, file: !57, line: 489, baseType: !5553, size: 64, offset: 4096)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !5555, line: 16, size: 768, elements: !5556)
!5555 = !DIFile(filename: "./include/linux/blktrace_api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7fc0200d7afa2d9a91adb9df0e39bd41")
!5556 = !{!5557, !5558, !5626, !5627, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "trace_state", scope: !5554, file: !5555, line: 17, baseType: !89, size: 32)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "rchan", scope: !5554, file: !5555, line: 18, baseType: !5559, size: 64, offset: 64)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rchan", file: !5561, line: 59, size: 2944, elements: !5562)
!5561 = !DIFile(filename: "./include/linux/relay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40574c8478591cf5cd74ac22d182d535")
!5562 = !{!5563, !5564, !5565, !5566, !5567, !5613, !5614, !5615, !5616, !5618, !5619, !5620, !5621, !5622}
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5560, file: !5561, line: 61, baseType: !405, size: 32)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "subbuf_size", scope: !5560, file: !5561, line: 62, baseType: !574, size: 64, offset: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "n_subbufs", scope: !5560, file: !5561, line: 63, baseType: !574, size: 64, offset: 128)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_size", scope: !5560, file: !5561, line: 64, baseType: !574, size: 64, offset: 192)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !5560, file: !5561, line: 65, baseType: !5568, size: 64, offset: 256)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5570)
!5570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rchan_callbacks", file: !5561, line: 80, size: 192, elements: !5571)
!5571 = !{!5572, !5608, !5612}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "subbuf_start", scope: !5570, file: !5561, line: 101, baseType: !5573, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!89, !5576, !256, !256, !574}
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rchan_buf", file: !5561, line: 34, size: 1536, align: 512, elements: !5578)
!5578 = !{!5579, !5580, !5581, !5582, !5583, !5584, !5585, !5586, !5597, !5598, !5599, !5600, !5601, !5602, !5604, !5605, !5606, !5607}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5577, file: !5561, line: 36, baseType: !256, size: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5577, file: !5561, line: 37, baseType: !256, size: 64, offset: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5577, file: !5561, line: 38, baseType: !574, size: 64, offset: 128)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "subbufs_produced", scope: !5577, file: !5561, line: 39, baseType: !574, size: 64, offset: 192)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "subbufs_consumed", scope: !5577, file: !5561, line: 40, baseType: !574, size: 64, offset: 256)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !5577, file: !5561, line: 41, baseType: !5559, size: 64, offset: 320)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !5577, file: !5561, line: 42, baseType: !1358, size: 192, offset: 384)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !5577, file: !5561, line: 43, baseType: !5587, size: 256, offset: 576)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !5588, line: 17, size: 256, elements: !5589)
!5588 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!5589 = !{!5590, !5591, !5596}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5587, file: !5588, line: 18, baseType: !3520, size: 128)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5587, file: !5588, line: 19, baseType: !5592, size: 64, offset: 128)
!5592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{null, !5595}
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !5587, file: !5588, line: 20, baseType: !3498, size: 64, offset: 192)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !5577, file: !5561, line: 44, baseType: !641, size: 64, offset: 832)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5577, file: !5561, line: 45, baseType: !5185, size: 32, offset: 896)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "page_array", scope: !5577, file: !5561, line: 46, baseType: !4391, size: 64, offset: 960)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !5577, file: !5561, line: 47, baseType: !7, size: 32, offset: 1024)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !5577, file: !5561, line: 48, baseType: !7, size: 32, offset: 1056)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5577, file: !5561, line: 49, baseType: !5603, size: 64, offset: 1088)
!5603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "prev_padding", scope: !5577, file: !5561, line: 50, baseType: !574, size: 64, offset: 1152)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_consumed", scope: !5577, file: !5561, line: 51, baseType: !574, size: 64, offset: 1216)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "early_bytes", scope: !5577, file: !5561, line: 52, baseType: !574, size: 64, offset: 1280)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5577, file: !5561, line: 53, baseType: !7, size: 32, offset: 1344)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "create_buf_file", scope: !5570, file: !5561, line: 131, baseType: !5609, size: 64, offset: 64)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{!641, !491, !641, !569, !5576, !979}
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "remove_buf_file", scope: !5570, file: !5561, line: 149, baseType: !729, size: 64, offset: 128)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5560, file: !5561, line: 66, baseType: !5185, size: 32, offset: 320)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !5560, file: !5561, line: 67, baseType: !256, size: 64, offset: 384)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "last_toobig", scope: !5560, file: !5561, line: 68, baseType: !574, size: 64, offset: 448)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5560, file: !5561, line: 69, baseType: !5617, size: 64, offset: 512)
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "is_global", scope: !5560, file: !5561, line: 70, baseType: !89, size: 32, offset: 576)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5560, file: !5561, line: 71, baseType: !272, size: 128, offset: 640)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5560, file: !5561, line: 72, baseType: !641, size: 64, offset: 768)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "has_base_filename", scope: !5560, file: !5561, line: 73, baseType: !89, size: 32, offset: 832)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "base_filename", scope: !5560, file: !5561, line: 74, baseType: !5623, size: 2040, offset: 864)
!5623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 2040, elements: !5624)
!5624 = !{!5625}
!5625 = !DISubrange(count: 255)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5554, file: !5555, line: 19, baseType: !261, size: 64, offset: 128)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "msg_data", scope: !5554, file: !5555, line: 20, baseType: !5628, size: 64, offset: 192)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "act_mask", scope: !5554, file: !5555, line: 21, baseType: !357, size: 16, offset: 256)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "start_lba", scope: !5554, file: !5555, line: 22, baseType: !677, size: 64, offset: 320)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "end_lba", scope: !5554, file: !5555, line: 23, baseType: !677, size: 64, offset: 384)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5554, file: !5555, line: 24, baseType: !405, size: 32, offset: 448)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5554, file: !5555, line: 25, baseType: !405, size: 32, offset: 480)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5554, file: !5555, line: 26, baseType: !641, size: 64, offset: 512)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "running_list", scope: !5554, file: !5555, line: 27, baseType: !272, size: 128, offset: 576)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !5554, file: !5555, line: 28, baseType: !339, size: 32, offset: 704)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !282, file: !57, line: 494, baseType: !427, size: 64, offset: 4160)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !282, file: !57, line: 495, baseType: !272, size: 128, offset: 4224)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !282, file: !57, line: 497, baseType: !272, size: 128, offset: 4352)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !282, file: !57, line: 498, baseType: !319, size: 32, offset: 4480)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !282, file: !57, line: 499, baseType: !364, size: 704, offset: 4544)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !282, file: !57, line: 501, baseType: !863, size: 256, offset: 5248)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !282, file: !57, line: 502, baseType: !863, size: 256, offset: 5504)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !282, file: !57, line: 508, baseType: !272, size: 128, offset: 5760)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !282, file: !57, line: 509, baseType: !319, size: 32, offset: 5888)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !282, file: !57, line: 511, baseType: !89, size: 32, offset: 5920)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !282, file: !57, line: 517, baseType: !1070, size: 128, align: 64, offset: 5952)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !282, file: !57, line: 518, baseType: !1358, size: 192, offset: 6080)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !282, file: !57, line: 523, baseType: !863, size: 256, offset: 6272)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !282, file: !57, line: 525, baseType: !89, size: 32, offset: 6528)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !282, file: !57, line: 527, baseType: !5448, size: 64, offset: 6592)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !282, file: !57, line: 528, baseType: !272, size: 128, offset: 6656)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !282, file: !57, line: 530, baseType: !641, size: 64, offset: 6784)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !282, file: !57, line: 531, baseType: !641, size: 64, offset: 6848)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !282, file: !57, line: 532, baseType: !641, size: 64, offset: 6912)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !282, file: !57, line: 536, baseType: !863, size: 256, offset: 6976)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !282, file: !57, line: 538, baseType: !452, size: 8, offset: 7232)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !278, file: !148, line: 82, baseType: !465, size: 64, offset: 64)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !278, file: !148, line: 83, baseType: !312, size: 64, offset: 128)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !278, file: !148, line: 85, baseType: !2624, size: 32, offset: 192)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !278, file: !148, line: 86, baseType: !5284, size: 32, offset: 224)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !278, file: !148, line: 88, baseType: !89, size: 32, offset: 256)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !278, file: !148, line: 89, baseType: !89, size: 32, offset: 288)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !278, file: !148, line: 91, baseType: !7, size: 32, offset: 320)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !278, file: !148, line: 94, baseType: !7, size: 32, offset: 352)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !278, file: !148, line: 95, baseType: !2594, size: 64, offset: 384)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !278, file: !148, line: 97, baseType: !2618, size: 64, offset: 448)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !278, file: !148, line: 98, baseType: !2618, size: 64, offset: 512)
!5669 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !148, line: 100, baseType: !5670, size: 128, offset: 576)
!5670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !148, line: 100, size: 128, elements: !5671)
!5671 = !{!5672, !5673}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !5670, file: !148, line: 101, baseType: !272, size: 128)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !5670, file: !148, line: 102, baseType: !277, size: 64)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !278, file: !148, line: 105, baseType: !2590, size: 64, offset: 704)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !278, file: !148, line: 108, baseType: !677, size: 64, offset: 768)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !278, file: !148, line: 111, baseType: !677, size: 64, offset: 832)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !278, file: !148, line: 113, baseType: !677, size: 64, offset: 896)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !278, file: !148, line: 123, baseType: !359, size: 16, offset: 960)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !278, file: !148, line: 129, baseType: !359, size: 16, offset: 976)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !278, file: !148, line: 140, baseType: !359, size: 16, offset: 992)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !148, line: 142, baseType: !147, size: 32, offset: 1024)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !278, file: !148, line: 143, baseType: !339, size: 32, offset: 1056)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !278, file: !148, line: 145, baseType: !255, size: 64, offset: 1088)
!5684 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !148, line: 154, baseType: !5685, size: 128, offset: 1152)
!5685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !148, line: 154, size: 128, elements: !5686)
!5686 = !{!5687, !5688}
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5685, file: !148, line: 155, baseType: !392, size: 128)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !5685, file: !148, line: 156, baseType: !1304, size: 64)
!5689 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !148, line: 165, baseType: !5690, size: 192, offset: 1280)
!5690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !148, line: 165, size: 192, elements: !5691)
!5691 = !{!5692, !5693}
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !5690, file: !148, line: 166, baseType: !964, size: 192, align: 64)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !5690, file: !148, line: 167, baseType: !2204, size: 128)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !278, file: !148, line: 177, baseType: !5695, size: 192, offset: 1472)
!5695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !278, file: !148, line: 174, size: 192, elements: !5696)
!5696 = !{!5697, !5698}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !5695, file: !148, line: 175, baseType: !5321, size: 64)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5695, file: !148, line: 176, baseType: !5699, size: 128, offset: 64)
!5699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !439)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !278, file: !148, line: 182, baseType: !5701, size: 128, offset: 1664)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !278, file: !148, line: 179, size: 128, elements: !5702)
!5702 = !{!5703, !5704}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5701, file: !148, line: 180, baseType: !7, size: 32)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !5701, file: !148, line: 181, baseType: !5705, size: 64, offset: 64)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !148, line: 23, baseType: !5707)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!153, !277, !435}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !278, file: !148, line: 184, baseType: !677, size: 64, offset: 1792)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !278, file: !148, line: 189, baseType: !5705, size: 64, offset: 1856)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !278, file: !148, line: 190, baseType: !256, size: 64, offset: 1920)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5716)
!5716 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !465)
!5717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5716, size: 64)
!5718 = !{!0, !5719}
!5719 = !DIGlobalVariableExpression(var: !5720, expr: !DIExpression())
!5720 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blk_mq_sched_try_insert_merge530", scope: !2, file: !3, line: 380, type: !256, isLocal: true, isDefinition: true)
!5721 = !{i32 7, !"Dwarf Version", i32 5}
!5722 = !{i32 2, !"Debug Info Version", i32 3}
!5723 = !{i32 1, !"wchar_size", i32 2}
!5724 = !{i32 8, !"cf-protection-branch", i32 1}
!5725 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5726 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5727 = !{i32 1, !"Code Model", i32 2}
!5728 = !{i32 1, !"override-stack-alignment", i32 8}
!5729 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5730 = distinct !DISubprogram(name: "blk_mq_sched_mark_restart_hctx", scope: !3, file: !3, line: 22, type: !5249, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5731)
!5731 = !{!5732}
!5732 = !DILocalVariable(name: "hctx", arg: 1, scope: !5730, file: !3, line: 22, type: !312)
!5733 = !DILocation(line: 22, column: 59, scope: !5730)
!5734 = !DILocation(line: 24, column: 6, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 24, column: 6)
!5736 = !DILocation(line: 24, column: 6, scope: !5730)
!5737 = !DILocation(line: 25, column: 3, scope: !5735)
!5738 = !DILocation(line: 27, column: 35, scope: !5730)
!5739 = !DILocation(line: 27, column: 41, scope: !5730)
!5740 = !DILocation(line: 27, column: 2, scope: !5730)
!5741 = !DILocation(line: 28, column: 1, scope: !5730)
!5742 = distinct !DISubprogram(name: "const_test_bit", scope: !5743, file: !5743, line: 166, type: !5744, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5749)
!5743 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!452, !255, !5746}
!5746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5747, size: 64)
!5747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5748)
!5748 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !255)
!5749 = !{!5750, !5751, !5752, !5753, !5754}
!5750 = !DILocalVariable(name: "nr", arg: 1, scope: !5742, file: !5743, line: 166, type: !255)
!5751 = !DILocalVariable(name: "addr", arg: 2, scope: !5742, file: !5743, line: 166, type: !5746)
!5752 = !DILocalVariable(name: "p", scope: !5742, file: !5743, line: 168, type: !257)
!5753 = !DILocalVariable(name: "mask", scope: !5742, file: !5743, line: 169, type: !255)
!5754 = !DILocalVariable(name: "val", scope: !5742, file: !5743, line: 170, type: !255)
!5755 = !DILocation(line: 166, column: 30, scope: !5742)
!5756 = !DILocation(line: 166, column: 64, scope: !5742)
!5757 = !DILocation(line: 168, column: 2, scope: !5742)
!5758 = !DILocation(line: 168, column: 23, scope: !5742)
!5759 = !DILocation(line: 168, column: 50, scope: !5742)
!5760 = !DILocation(line: 168, column: 57, scope: !5742)
!5761 = !DILocation(line: 168, column: 55, scope: !5742)
!5762 = !DILocation(line: 169, column: 2, scope: !5742)
!5763 = !DILocation(line: 169, column: 16, scope: !5742)
!5764 = !DILocation(line: 169, column: 23, scope: !5742)
!5765 = !DILocation(line: 170, column: 2, scope: !5742)
!5766 = !DILocation(line: 170, column: 16, scope: !5742)
!5767 = !DILocation(line: 170, column: 23, scope: !5742)
!5768 = !DILocation(line: 170, column: 22, scope: !5742)
!5769 = !DILocation(line: 172, column: 12, scope: !5742)
!5770 = !DILocation(line: 172, column: 18, scope: !5742)
!5771 = !DILocation(line: 172, column: 16, scope: !5742)
!5772 = !DILocation(line: 172, column: 10, scope: !5742)
!5773 = !DILocation(line: 172, column: 9, scope: !5742)
!5774 = !DILocation(line: 173, column: 1, scope: !5742)
!5775 = !DILocation(line: 172, column: 2, scope: !5742)
!5776 = distinct !DISubprogram(name: "_test_bit", scope: !5777, file: !5777, line: 139, type: !5744, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5778)
!5777 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5778 = !{!5779, !5780}
!5779 = !DILocalVariable(name: "nr", arg: 1, scope: !5776, file: !5777, line: 139, type: !255)
!5780 = !DILocalVariable(name: "addr", arg: 2, scope: !5776, file: !5777, line: 139, type: !5746)
!5781 = !DILocation(line: 139, column: 25, scope: !5776)
!5782 = !DILocation(line: 139, column: 59, scope: !5776)
!5783 = !DILocation(line: 141, column: 25, scope: !5776)
!5784 = !DILocation(line: 141, column: 32, scope: !5776)
!5785 = !DILocation(line: 141, column: 30, scope: !5776)
!5786 = !DILocation(line: 141, column: 2, scope: !5776)
!5787 = !DILocation(line: 142, column: 23, scope: !5776)
!5788 = !DILocation(line: 142, column: 27, scope: !5776)
!5789 = !DILocation(line: 142, column: 9, scope: !5776)
!5790 = !DILocation(line: 142, column: 2, scope: !5776)
!5791 = distinct !DISubprogram(name: "set_bit", scope: !5792, file: !5792, line: 26, type: !5793, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5796)
!5792 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5793 = !DISubroutineType(types: !5794)
!5794 = !{null, !267, !5795}
!5795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5796 = !{!5797, !5798}
!5797 = !DILocalVariable(name: "nr", arg: 1, scope: !5791, file: !5792, line: 26, type: !267)
!5798 = !DILocalVariable(name: "addr", arg: 2, scope: !5791, file: !5792, line: 26, type: !5795)
!5799 = !DILocation(line: 26, column: 42, scope: !5791)
!5800 = !DILocation(line: 26, column: 70, scope: !5791)
!5801 = !DILocation(line: 28, column: 26, scope: !5791)
!5802 = !DILocation(line: 28, column: 33, scope: !5791)
!5803 = !DILocation(line: 28, column: 31, scope: !5791)
!5804 = !DILocation(line: 28, column: 2, scope: !5791)
!5805 = !DILocation(line: 29, column: 15, scope: !5791)
!5806 = !DILocation(line: 29, column: 19, scope: !5791)
!5807 = !DILocation(line: 29, column: 2, scope: !5791)
!5808 = !DILocation(line: 30, column: 1, scope: !5791)
!5809 = distinct !DISubprogram(name: "__blk_mq_sched_restart", scope: !3, file: !3, line: 31, type: !5249, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5810)
!5810 = !{!5811}
!5811 = !DILocalVariable(name: "hctx", arg: 1, scope: !5809, file: !3, line: 31, type: !312)
!5812 = !DILocation(line: 31, column: 51, scope: !5809)
!5813 = !DILocation(line: 33, column: 37, scope: !5809)
!5814 = !DILocation(line: 33, column: 43, scope: !5809)
!5815 = !DILocation(line: 33, column: 2, scope: !5809)
!5816 = !DILocation(line: 42, column: 2, scope: !5809)
!5817 = !DILocation(line: 42, column: 2, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 42, column: 2)
!5819 = !DILocation(line: 42, column: 2, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 42, column: 2)
!5821 = !{i64 2157565279}
!5822 = !DILocation(line: 44, column: 22, scope: !5809)
!5823 = !DILocation(line: 44, column: 2, scope: !5809)
!5824 = !DILocation(line: 45, column: 1, scope: !5809)
!5825 = distinct !DISubprogram(name: "clear_bit", scope: !5792, file: !5792, line: 39, type: !5793, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5826)
!5826 = !{!5827, !5828}
!5827 = !DILocalVariable(name: "nr", arg: 1, scope: !5825, file: !5792, line: 39, type: !267)
!5828 = !DILocalVariable(name: "addr", arg: 2, scope: !5825, file: !5792, line: 39, type: !5795)
!5829 = !DILocation(line: 39, column: 44, scope: !5825)
!5830 = !DILocation(line: 39, column: 72, scope: !5825)
!5831 = !DILocation(line: 41, column: 26, scope: !5825)
!5832 = !DILocation(line: 41, column: 33, scope: !5825)
!5833 = !DILocation(line: 41, column: 31, scope: !5825)
!5834 = !DILocation(line: 41, column: 2, scope: !5825)
!5835 = !DILocation(line: 42, column: 17, scope: !5825)
!5836 = !DILocation(line: 42, column: 21, scope: !5825)
!5837 = !DILocation(line: 42, column: 2, scope: !5825)
!5838 = !DILocation(line: 43, column: 1, scope: !5825)
!5839 = !DISubprogram(name: "blk_mq_run_hw_queue", scope: !148, file: !148, line: 895, type: !5840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5840 = !DISubroutineType(types: !5841)
!5841 = !{null, !312, !452}
!5842 = distinct !DISubprogram(name: "blk_mq_sched_dispatch_requests", scope: !3, file: !3, line: 319, type: !5249, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5843)
!5843 = !{!5844, !5845}
!5844 = !DILocalVariable(name: "hctx", arg: 1, scope: !5842, file: !3, line: 319, type: !312)
!5845 = !DILocalVariable(name: "q", scope: !5842, file: !3, line: 321, type: !281)
!5846 = !DILocation(line: 319, column: 59, scope: !5842)
!5847 = !DILocation(line: 321, column: 2, scope: !5842)
!5848 = !DILocation(line: 321, column: 24, scope: !5842)
!5849 = !DILocation(line: 321, column: 28, scope: !5842)
!5850 = !DILocation(line: 321, column: 34, scope: !5842)
!5851 = !DILocation(line: 324, column: 6, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 324, column: 6)
!5853 = !DILocation(line: 324, column: 6, scope: !5842)
!5854 = !DILocation(line: 325, column: 3, scope: !5852)
!5855 = !DILocation(line: 327, column: 2, scope: !5842)
!5856 = !DILocation(line: 327, column: 8, scope: !5842)
!5857 = !DILocation(line: 327, column: 11, scope: !5842)
!5858 = !DILocation(line: 333, column: 39, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 333, column: 6)
!5860 = !DILocation(line: 333, column: 6, scope: !5859)
!5861 = !DILocation(line: 333, column: 45, scope: !5859)
!5862 = !DILocation(line: 333, column: 6, scope: !5842)
!5863 = !DILocation(line: 334, column: 40, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 334, column: 7)
!5865 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 333, column: 57)
!5866 = !DILocation(line: 334, column: 7, scope: !5864)
!5867 = !DILocation(line: 334, column: 46, scope: !5864)
!5868 = !DILocation(line: 334, column: 7, scope: !5865)
!5869 = !DILocation(line: 335, column: 24, scope: !5864)
!5870 = !DILocation(line: 335, column: 4, scope: !5864)
!5871 = !DILocation(line: 336, column: 2, scope: !5865)
!5872 = !DILocation(line: 337, column: 1, scope: !5842)
!5873 = distinct !DISubprogram(name: "blk_mq_hctx_stopped", scope: !206, file: !206, line: 229, type: !5305, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5874)
!5874 = !{!5875}
!5875 = !DILocalVariable(name: "hctx", arg: 1, scope: !5873, file: !206, line: 229, type: !312)
!5876 = !DILocation(line: 229, column: 62, scope: !5873)
!5877 = !DILocation(line: 232, column: 6, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5873, file: !206, line: 232, column: 6)
!5879 = !DILocation(line: 232, column: 6, scope: !5873)
!5880 = !DILocation(line: 233, column: 3, scope: !5878)
!5881 = !DILocation(line: 242, column: 2, scope: !5873)
!5882 = !DILocation(line: 242, column: 2, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5873, file: !206, line: 242, column: 2)
!5884 = !DILocation(line: 242, column: 2, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5883, file: !206, line: 242, column: 2)
!5886 = !{i64 2157491862}
!5887 = !DILocation(line: 244, column: 9, scope: !5873)
!5888 = !DILocation(line: 244, column: 2, scope: !5873)
!5889 = !DILocation(line: 245, column: 1, scope: !5873)
!5890 = distinct !DISubprogram(name: "__blk_mq_sched_dispatch_requests", scope: !3, file: !3, line: 270, type: !5891, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5893)
!5891 = !DISubroutineType(types: !5892)
!5892 = !{!89, !312}
!5893 = !{!5894, !5895, !5896}
!5894 = !DILocalVariable(name: "hctx", arg: 1, scope: !5890, file: !3, line: 270, type: !312)
!5895 = !DILocalVariable(name: "need_dispatch", scope: !5890, file: !3, line: 272, type: !452)
!5896 = !DILocalVariable(name: "rq_list", scope: !5890, file: !3, line: 273, type: !272)
!5897 = !DILocation(line: 270, column: 67, scope: !5890)
!5898 = !DILocation(line: 272, column: 2, scope: !5890)
!5899 = !DILocation(line: 272, column: 7, scope: !5890)
!5900 = !DILocation(line: 273, column: 2, scope: !5890)
!5901 = !DILocation(line: 279, column: 27, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 279, column: 6)
!5903 = !DILocation(line: 279, column: 33, scope: !5902)
!5904 = !DILocation(line: 279, column: 7, scope: !5902)
!5905 = !DILocation(line: 279, column: 6, scope: !5890)
!5906 = !DILocation(line: 280, column: 14, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 279, column: 44)
!5908 = !DILocation(line: 280, column: 20, scope: !5907)
!5909 = !DILocation(line: 280, column: 3, scope: !5907)
!5910 = !DILocation(line: 281, column: 20, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 281, column: 7)
!5912 = !DILocation(line: 281, column: 26, scope: !5911)
!5913 = !DILocation(line: 281, column: 8, scope: !5911)
!5914 = !DILocation(line: 281, column: 7, scope: !5907)
!5915 = !DILocation(line: 282, column: 22, scope: !5911)
!5916 = !DILocation(line: 282, column: 28, scope: !5911)
!5917 = !DILocation(line: 282, column: 4, scope: !5911)
!5918 = !DILocation(line: 283, column: 16, scope: !5907)
!5919 = !DILocation(line: 283, column: 22, scope: !5907)
!5920 = !DILocation(line: 283, column: 3, scope: !5907)
!5921 = !DILocation(line: 284, column: 2, scope: !5907)
!5922 = !DILocation(line: 299, column: 7, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 299, column: 6)
!5924 = !DILocation(line: 299, column: 6, scope: !5890)
!5925 = !DILocation(line: 300, column: 34, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 299, column: 29)
!5927 = !DILocation(line: 300, column: 3, scope: !5926)
!5928 = !DILocation(line: 301, column: 32, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 301, column: 7)
!5930 = !DILocation(line: 301, column: 8, scope: !5929)
!5931 = !DILocation(line: 301, column: 7, scope: !5926)
!5932 = !DILocation(line: 302, column: 4, scope: !5929)
!5933 = !DILocation(line: 303, column: 17, scope: !5926)
!5934 = !DILocation(line: 304, column: 2, scope: !5926)
!5935 = !DILocation(line: 305, column: 19, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 304, column: 9)
!5937 = !DILocation(line: 305, column: 25, scope: !5936)
!5938 = !DILocation(line: 305, column: 17, scope: !5936)
!5939 = !DILocation(line: 308, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 308, column: 6)
!5941 = !DILocation(line: 308, column: 12, scope: !5940)
!5942 = !DILocation(line: 308, column: 19, scope: !5940)
!5943 = !DILocation(line: 308, column: 6, scope: !5890)
!5944 = !DILocation(line: 309, column: 35, scope: !5940)
!5945 = !DILocation(line: 309, column: 10, scope: !5940)
!5946 = !DILocation(line: 309, column: 3, scope: !5940)
!5947 = !DILocation(line: 312, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 312, column: 6)
!5949 = !{i8 0, i8 2}
!5950 = !DILocation(line: 312, column: 6, scope: !5890)
!5951 = !DILocation(line: 313, column: 33, scope: !5948)
!5952 = !DILocation(line: 313, column: 10, scope: !5948)
!5953 = !DILocation(line: 313, column: 3, scope: !5948)
!5954 = !DILocation(line: 314, column: 25, scope: !5890)
!5955 = !DILocation(line: 314, column: 2, scope: !5890)
!5956 = !DILocation(line: 315, column: 26, scope: !5890)
!5957 = !DILocation(line: 315, column: 2, scope: !5890)
!5958 = !DILocation(line: 316, column: 2, scope: !5890)
!5959 = !DILocation(line: 317, column: 1, scope: !5890)
!5960 = distinct !DISubprogram(name: "blk_mq_sched_bio_merge", scope: !3, file: !3, line: 339, type: !5257, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5961)
!5961 = !{!5962, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970}
!5962 = !DILocalVariable(name: "q", arg: 1, scope: !5960, file: !3, line: 339, type: !281)
!5963 = !DILocalVariable(name: "bio", arg: 2, scope: !5960, file: !3, line: 339, type: !2618)
!5964 = !DILocalVariable(name: "nr_segs", arg: 3, scope: !5960, file: !3, line: 340, type: !7)
!5965 = !DILocalVariable(name: "e", scope: !5960, file: !3, line: 342, type: !286)
!5966 = !DILocalVariable(name: "ctx", scope: !5960, file: !3, line: 343, type: !465)
!5967 = !DILocalVariable(name: "hctx", scope: !5960, file: !3, line: 344, type: !312)
!5968 = !DILocalVariable(name: "ret", scope: !5960, file: !3, line: 345, type: !452)
!5969 = !DILocalVariable(name: "type", scope: !5960, file: !3, line: 346, type: !199)
!5970 = !DILabel(scope: !5960, name: "out_put", file: !3, line: 371)
!5971 = !DILocation(line: 339, column: 51, scope: !5960)
!5972 = !DILocation(line: 339, column: 66, scope: !5960)
!5973 = !DILocation(line: 340, column: 16, scope: !5960)
!5974 = !DILocation(line: 342, column: 2, scope: !5960)
!5975 = !DILocation(line: 342, column: 25, scope: !5960)
!5976 = !DILocation(line: 342, column: 29, scope: !5960)
!5977 = !DILocation(line: 342, column: 32, scope: !5960)
!5978 = !DILocation(line: 343, column: 2, scope: !5960)
!5979 = !DILocation(line: 343, column: 21, scope: !5960)
!5980 = !DILocation(line: 344, column: 2, scope: !5960)
!5981 = !DILocation(line: 344, column: 24, scope: !5960)
!5982 = !DILocation(line: 345, column: 2, scope: !5960)
!5983 = !DILocation(line: 345, column: 7, scope: !5960)
!5984 = !DILocation(line: 346, column: 2, scope: !5960)
!5985 = !DILocation(line: 346, column: 17, scope: !5960)
!5986 = !DILocation(line: 348, column: 6, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 348, column: 6)
!5988 = !DILocation(line: 348, column: 8, scope: !5987)
!5989 = !DILocation(line: 348, column: 11, scope: !5987)
!5990 = !DILocation(line: 348, column: 14, scope: !5987)
!5991 = !DILocation(line: 348, column: 20, scope: !5987)
!5992 = !DILocation(line: 348, column: 24, scope: !5987)
!5993 = !DILocation(line: 348, column: 6, scope: !5960)
!5994 = !DILocation(line: 349, column: 9, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 348, column: 35)
!5996 = !DILocation(line: 349, column: 12, scope: !5995)
!5997 = !DILocation(line: 349, column: 18, scope: !5995)
!5998 = !DILocation(line: 349, column: 22, scope: !5995)
!5999 = !DILocation(line: 349, column: 32, scope: !5995)
!6000 = !DILocation(line: 349, column: 35, scope: !5995)
!6001 = !DILocation(line: 349, column: 40, scope: !5995)
!6002 = !DILocation(line: 349, column: 7, scope: !5995)
!6003 = !DILocation(line: 350, column: 3, scope: !5995)
!6004 = !DILocation(line: 353, column: 23, scope: !5960)
!6005 = !DILocation(line: 353, column: 8, scope: !5960)
!6006 = !DILocation(line: 353, column: 6, scope: !5960)
!6007 = !DILocation(line: 354, column: 26, scope: !5960)
!6008 = !DILocation(line: 354, column: 29, scope: !5960)
!6009 = !DILocation(line: 354, column: 34, scope: !5960)
!6010 = !DILocation(line: 354, column: 42, scope: !5960)
!6011 = !DILocation(line: 354, column: 9, scope: !5960)
!6012 = !DILocation(line: 354, column: 7, scope: !5960)
!6013 = !DILocation(line: 355, column: 9, scope: !5960)
!6014 = !DILocation(line: 355, column: 15, scope: !5960)
!6015 = !DILocation(line: 355, column: 7, scope: !5960)
!6016 = !DILocation(line: 356, column: 8, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 356, column: 6)
!6018 = !DILocation(line: 356, column: 14, scope: !6017)
!6019 = !DILocation(line: 356, column: 20, scope: !6017)
!6020 = !DILocation(line: 356, column: 45, scope: !6017)
!6021 = !DILocation(line: 357, column: 26, scope: !6017)
!6022 = !DILocation(line: 357, column: 31, scope: !6017)
!6023 = !DILocation(line: 357, column: 40, scope: !6017)
!6024 = !DILocation(line: 357, column: 6, scope: !6017)
!6025 = !DILocation(line: 356, column: 6, scope: !5960)
!6026 = !DILocation(line: 358, column: 3, scope: !6017)
!6027 = !DILocation(line: 361, column: 13, scope: !5960)
!6028 = !DILocation(line: 361, column: 18, scope: !5960)
!6029 = !DILocation(line: 361, column: 2, scope: !5960)
!6030 = !DILocation(line: 367, column: 25, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 367, column: 6)
!6032 = !DILocation(line: 367, column: 29, scope: !6031)
!6033 = !DILocation(line: 367, column: 34, scope: !6031)
!6034 = !DILocation(line: 367, column: 43, scope: !6031)
!6035 = !DILocation(line: 367, column: 50, scope: !6031)
!6036 = !DILocation(line: 367, column: 55, scope: !6031)
!6037 = !DILocation(line: 367, column: 6, scope: !6031)
!6038 = !DILocation(line: 367, column: 6, scope: !5960)
!6039 = !DILocation(line: 368, column: 7, scope: !6031)
!6040 = !DILocation(line: 368, column: 3, scope: !6031)
!6041 = !DILocation(line: 370, column: 15, scope: !5960)
!6042 = !DILocation(line: 370, column: 20, scope: !5960)
!6043 = !DILocation(line: 370, column: 2, scope: !5960)
!6044 = !DILocation(line: 371, column: 1, scope: !5960)
!6045 = !DILocation(line: 372, column: 9, scope: !5960)
!6046 = !DILocation(line: 373, column: 1, scope: !5960)
!6047 = !DILocation(line: 372, column: 2, scope: !5960)
!6048 = distinct !DISubprogram(name: "blk_mq_get_ctx", scope: !206, file: !206, line: 141, type: !6049, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6051)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{!465, !281}
!6051 = !{!6052, !6053, !6055, !6057}
!6052 = !DILocalVariable(name: "q", arg: 1, scope: !6048, file: !206, line: 141, type: !281)
!6053 = !DILocalVariable(name: "pscr_ret__", scope: !6054, file: !206, line: 143, type: !89)
!6054 = distinct !DILexicalBlock(scope: !6048, file: !206, line: 143, column: 29)
!6055 = !DILocalVariable(name: "__vpp_verify", scope: !6056, file: !206, line: 143, type: !1909)
!6056 = distinct !DILexicalBlock(scope: !6054, file: !206, line: 143, column: 29)
!6057 = !DILocalVariable(name: "pfo_val__", scope: !6058, file: !206, line: 143, type: !405)
!6058 = distinct !DILexicalBlock(scope: !6054, file: !206, line: 143, column: 29)
!6059 = !DILocation(line: 141, column: 71, scope: !6048)
!6060 = !DILocation(line: 143, column: 26, scope: !6048)
!6061 = !DILocation(line: 143, column: 29, scope: !6054)
!6062 = !DILocation(line: 143, column: 29, scope: !6056)
!6063 = !DILocation(line: 143, column: 29, scope: !6058)
!6064 = !{i64 2157488933}
!6065 = !DILocation(line: 143, column: 29, scope: !6048)
!6066 = !DILocation(line: 143, column: 9, scope: !6048)
!6067 = !DILocation(line: 143, column: 2, scope: !6048)
!6068 = distinct !DISubprogram(name: "blk_mq_map_queue", scope: !206, file: !206, line: 105, type: !6069, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6071)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{!312, !281, !2624, !465}
!6071 = !{!6072, !6073, !6074}
!6072 = !DILocalVariable(name: "q", arg: 1, scope: !6068, file: !206, line: 105, type: !281)
!6073 = !DILocalVariable(name: "opf", arg: 2, scope: !6068, file: !206, line: 106, type: !2624)
!6074 = !DILocalVariable(name: "ctx", arg: 3, scope: !6068, file: !206, line: 107, type: !465)
!6075 = !DILocation(line: 105, column: 76, scope: !6068)
!6076 = !DILocation(line: 106, column: 22, scope: !6068)
!6077 = !DILocation(line: 107, column: 31, scope: !6068)
!6078 = !DILocation(line: 109, column: 9, scope: !6068)
!6079 = !DILocation(line: 109, column: 14, scope: !6068)
!6080 = !DILocation(line: 109, column: 41, scope: !6068)
!6081 = !DILocation(line: 109, column: 20, scope: !6068)
!6082 = !DILocation(line: 109, column: 2, scope: !6068)
!6083 = distinct !DISubprogram(name: "list_empty_careful", scope: !6084, file: !6084, line: 407, type: !6085, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6089)
!6084 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6085 = !DISubroutineType(types: !6086)
!6086 = !{!89, !6087}
!6087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6088, size: 64)
!6088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!6089 = !{!6090, !6091, !6092}
!6090 = !DILocalVariable(name: "head", arg: 1, scope: !6083, file: !6084, line: 407, type: !6087)
!6091 = !DILocalVariable(name: "next", scope: !6083, file: !6084, line: 409, type: !271)
!6092 = !DILocalVariable(name: "___p1", scope: !6093, file: !6084, line: 409, type: !6094)
!6093 = distinct !DILexicalBlock(scope: !6083, file: !6084, line: 409, column: 27)
!6094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!6095 = !DILocation(line: 407, column: 62, scope: !6083)
!6096 = !DILocation(line: 409, column: 2, scope: !6083)
!6097 = !DILocation(line: 409, column: 20, scope: !6083)
!6098 = !DILocation(line: 409, column: 27, scope: !6093)
!6099 = !DILocation(line: 409, column: 27, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6093, file: !6084, line: 409, column: 27)
!6101 = !DILocation(line: 409, column: 27, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6100, file: !6084, line: 409, column: 27)
!6103 = !DILocation(line: 409, column: 27, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6093, file: !6084, line: 409, column: 27)
!6105 = !{i64 2148155455}
!6106 = !DILocation(line: 409, column: 27, scope: !6083)
!6107 = !DILocation(line: 410, column: 22, scope: !6083)
!6108 = !DILocation(line: 410, column: 28, scope: !6083)
!6109 = !DILocation(line: 410, column: 9, scope: !6083)
!6110 = !DILocation(line: 410, column: 34, scope: !6083)
!6111 = !DILocation(line: 410, column: 38, scope: !6083)
!6112 = !DILocation(line: 410, column: 46, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6083, file: !6084, line: 410, column: 46)
!6114 = !DILocation(line: 410, column: 46, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6113, file: !6084, line: 410, column: 46)
!6116 = !DILocation(line: 410, column: 43, scope: !6083)
!6117 = !DILocation(line: 0, scope: !6083)
!6118 = !DILocation(line: 411, column: 1, scope: !6083)
!6119 = !DILocation(line: 410, column: 2, scope: !6083)
!6120 = distinct !DISubprogram(name: "spin_lock", scope: !6121, file: !6121, line: 349, type: !6122, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6124)
!6121 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6122 = !DISubroutineType(types: !6123)
!6123 = !{null, !2078}
!6124 = !{!6125}
!6125 = !DILocalVariable(name: "lock", arg: 1, scope: !6120, file: !6121, line: 349, type: !2078)
!6126 = !DILocation(line: 349, column: 51, scope: !6120)
!6127 = !DILocation(line: 351, column: 2, scope: !6120)
!6128 = !DILocation(line: 352, column: 1, scope: !6120)
!6129 = !DISubprogram(name: "blk_bio_list_merge", scope: !429, file: !429, line: 260, type: !6130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6130 = !DISubroutineType(types: !6131)
!6131 = !{!452, !281, !271, !2618, !7}
!6132 = distinct !DISubprogram(name: "spin_unlock", scope: !6121, file: !6121, line: 389, type: !6122, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6133)
!6133 = !{!6134}
!6134 = !DILocalVariable(name: "lock", arg: 1, scope: !6132, file: !6121, line: 389, type: !2078)
!6135 = !DILocation(line: 389, column: 53, scope: !6132)
!6136 = !DILocation(line: 391, column: 2, scope: !6132)
!6137 = !DILocation(line: 392, column: 1, scope: !6132)
!6138 = distinct !DISubprogram(name: "blk_mq_sched_try_insert_merge", scope: !3, file: !3, line: 375, type: !6139, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6141)
!6139 = !DISubroutineType(types: !6140)
!6140 = !{!452, !281, !277, !271}
!6141 = !{!6142, !6143, !6144}
!6142 = !DILocalVariable(name: "q", arg: 1, scope: !6138, file: !3, line: 375, type: !281)
!6143 = !DILocalVariable(name: "rq", arg: 2, scope: !6138, file: !3, line: 375, type: !277)
!6144 = !DILocalVariable(name: "free", arg: 3, scope: !6138, file: !3, line: 376, type: !271)
!6145 = !DILocation(line: 375, column: 58, scope: !6138)
!6146 = !DILocation(line: 375, column: 77, scope: !6138)
!6147 = !DILocation(line: 376, column: 26, scope: !6138)
!6148 = !DILocation(line: 378, column: 22, scope: !6138)
!6149 = !DILocation(line: 378, column: 9, scope: !6138)
!6150 = !DILocation(line: 378, column: 26, scope: !6138)
!6151 = !DILocation(line: 378, column: 54, scope: !6138)
!6152 = !DILocation(line: 378, column: 57, scope: !6138)
!6153 = !DILocation(line: 378, column: 61, scope: !6138)
!6154 = !DILocation(line: 378, column: 29, scope: !6138)
!6155 = !DILocation(line: 0, scope: !6138)
!6156 = !DILocation(line: 378, column: 2, scope: !6138)
!6157 = distinct !DISubprogram(name: "rq_mergeable", scope: !429, file: !429, line: 124, type: !6158, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6160)
!6158 = !DISubroutineType(types: !6159)
!6159 = !{!452, !277}
!6160 = !{!6161}
!6161 = !DILocalVariable(name: "rq", arg: 1, scope: !6157, file: !429, line: 124, type: !277)
!6162 = !DILocation(line: 124, column: 49, scope: !6157)
!6163 = !DILocation(line: 126, column: 28, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6157, file: !429, line: 126, column: 6)
!6165 = !DILocation(line: 126, column: 6, scope: !6164)
!6166 = !DILocation(line: 126, column: 6, scope: !6157)
!6167 = !DILocation(line: 127, column: 3, scope: !6164)
!6168 = !DILocation(line: 129, column: 13, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6157, file: !429, line: 129, column: 6)
!6170 = !DILocation(line: 129, column: 6, scope: !6169)
!6171 = !DILocation(line: 129, column: 17, scope: !6169)
!6172 = !DILocation(line: 129, column: 6, scope: !6157)
!6173 = !DILocation(line: 130, column: 3, scope: !6169)
!6174 = !DILocation(line: 132, column: 13, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6157, file: !429, line: 132, column: 6)
!6176 = !DILocation(line: 132, column: 6, scope: !6175)
!6177 = !DILocation(line: 132, column: 17, scope: !6175)
!6178 = !DILocation(line: 132, column: 6, scope: !6157)
!6179 = !DILocation(line: 133, column: 3, scope: !6175)
!6180 = !DILocation(line: 135, column: 13, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6157, file: !429, line: 135, column: 6)
!6182 = !DILocation(line: 135, column: 6, scope: !6181)
!6183 = !DILocation(line: 135, column: 17, scope: !6181)
!6184 = !DILocation(line: 135, column: 6, scope: !6157)
!6185 = !DILocation(line: 136, column: 3, scope: !6181)
!6186 = !DILocation(line: 138, column: 6, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6157, file: !429, line: 138, column: 6)
!6188 = !DILocation(line: 138, column: 10, scope: !6187)
!6189 = !DILocation(line: 138, column: 20, scope: !6187)
!6190 = !DILocation(line: 138, column: 6, scope: !6157)
!6191 = !DILocation(line: 139, column: 3, scope: !6187)
!6192 = !DILocation(line: 140, column: 6, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6157, file: !429, line: 140, column: 6)
!6194 = !DILocation(line: 140, column: 10, scope: !6193)
!6195 = !DILocation(line: 140, column: 19, scope: !6193)
!6196 = !DILocation(line: 140, column: 6, scope: !6157)
!6197 = !DILocation(line: 141, column: 3, scope: !6193)
!6198 = !DILocation(line: 143, column: 2, scope: !6157)
!6199 = !DILocation(line: 144, column: 1, scope: !6157)
!6200 = !DISubprogram(name: "elv_attempt_insert_merge", scope: !158, file: !158, line: 136, type: !6139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6201 = distinct !DISubprogram(name: "blk_mq_init_sched", scope: !3, file: !3, line: 443, type: !302, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6202 = !{!6203, !6204, !6205, !6206, !6207, !6208, !6209, !6210, !6212, !6213}
!6203 = !DILocalVariable(name: "q", arg: 1, scope: !6201, file: !3, line: 443, type: !281)
!6204 = !DILocalVariable(name: "e", arg: 2, scope: !6201, file: !3, line: 443, type: !290)
!6205 = !DILocalVariable(name: "flags", scope: !6201, file: !3, line: 445, type: !7)
!6206 = !DILocalVariable(name: "hctx", scope: !6201, file: !3, line: 446, type: !312)
!6207 = !DILocalVariable(name: "eq", scope: !6201, file: !3, line: 447, type: !286)
!6208 = !DILocalVariable(name: "i", scope: !6201, file: !3, line: 448, type: !255)
!6209 = !DILocalVariable(name: "ret", scope: !6201, file: !3, line: 449, type: !89)
!6210 = !DILocalVariable(name: "__UNIQUE_ID___x531", scope: !6211, file: !3, line: 456, type: !7)
!6211 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 456, column: 23)
!6212 = !DILocalVariable(name: "__UNIQUE_ID___y532", scope: !6211, file: !3, line: 456, type: !7)
!6213 = !DILabel(scope: !6201, name: "err_free_map_and_rqs", file: !3, line: 497)
!6214 = !DILocation(line: 443, column: 45, scope: !6201)
!6215 = !DILocation(line: 443, column: 70, scope: !6201)
!6216 = !DILocation(line: 445, column: 2, scope: !6201)
!6217 = !DILocation(line: 445, column: 15, scope: !6201)
!6218 = !DILocation(line: 445, column: 23, scope: !6201)
!6219 = !DILocation(line: 445, column: 26, scope: !6201)
!6220 = !DILocation(line: 445, column: 35, scope: !6201)
!6221 = !DILocation(line: 446, column: 2, scope: !6201)
!6222 = !DILocation(line: 446, column: 24, scope: !6201)
!6223 = !DILocation(line: 447, column: 2, scope: !6201)
!6224 = !DILocation(line: 447, column: 25, scope: !6201)
!6225 = !DILocation(line: 448, column: 2, scope: !6201)
!6226 = !DILocation(line: 448, column: 16, scope: !6201)
!6227 = !DILocation(line: 449, column: 2, scope: !6201)
!6228 = !DILocation(line: 449, column: 6, scope: !6201)
!6229 = !DILocation(line: 456, column: 23, scope: !6211)
!6230 = !DILocation(line: 456, column: 23, scope: !6201)
!6231 = !DILocation(line: 456, column: 21, scope: !6201)
!6232 = !DILocation(line: 456, column: 19, scope: !6201)
!6233 = !DILocation(line: 456, column: 2, scope: !6201)
!6234 = !DILocation(line: 456, column: 5, scope: !6201)
!6235 = !DILocation(line: 456, column: 17, scope: !6201)
!6236 = !DILocation(line: 459, column: 28, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 459, column: 6)
!6238 = !DILocation(line: 459, column: 6, scope: !6237)
!6239 = !DILocation(line: 459, column: 6, scope: !6201)
!6240 = !DILocation(line: 460, column: 39, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 459, column: 36)
!6242 = !DILocation(line: 460, column: 9, scope: !6241)
!6243 = !DILocation(line: 460, column: 7, scope: !6241)
!6244 = !DILocation(line: 461, column: 7, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 461, column: 7)
!6246 = !DILocation(line: 461, column: 7, scope: !6241)
!6247 = !DILocation(line: 462, column: 11, scope: !6245)
!6248 = !DILocation(line: 462, column: 4, scope: !6245)
!6249 = !DILocation(line: 463, column: 2, scope: !6241)
!6250 = !DILocation(line: 465, column: 2, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 465, column: 2)
!6252 = !DILocation(line: 465, column: 2, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 465, column: 2)
!6254 = !DILocation(line: 466, column: 40, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 465, column: 36)
!6256 = !DILocation(line: 466, column: 43, scope: !6255)
!6257 = !DILocation(line: 466, column: 49, scope: !6255)
!6258 = !DILocation(line: 466, column: 9, scope: !6255)
!6259 = !DILocation(line: 466, column: 7, scope: !6255)
!6260 = !DILocation(line: 467, column: 7, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 467, column: 7)
!6262 = !DILocation(line: 467, column: 7, scope: !6255)
!6263 = !DILocation(line: 468, column: 4, scope: !6261)
!6264 = !DILocation(line: 469, column: 2, scope: !6255)
!6265 = distinct !{!6265, !6250, !6266, !6267, !6268}
!6266 = !DILocation(line: 469, column: 2, scope: !6251)
!6267 = !{!"llvm.loop.mustprogress"}
!6268 = !{!"llvm.loop.unroll.disable"}
!6269 = !DILocation(line: 471, column: 8, scope: !6201)
!6270 = !DILocation(line: 471, column: 11, scope: !6201)
!6271 = !DILocation(line: 471, column: 15, scope: !6201)
!6272 = !DILocation(line: 471, column: 26, scope: !6201)
!6273 = !DILocation(line: 471, column: 29, scope: !6201)
!6274 = !DILocation(line: 471, column: 6, scope: !6201)
!6275 = !DILocation(line: 472, column: 6, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 472, column: 6)
!6277 = !DILocation(line: 472, column: 6, scope: !6201)
!6278 = !DILocation(line: 473, column: 3, scope: !6276)
!6279 = !DILocation(line: 475, column: 14, scope: !6201)
!6280 = !DILocation(line: 475, column: 17, scope: !6201)
!6281 = !DILocation(line: 475, column: 2, scope: !6201)
!6282 = !DILocation(line: 476, column: 32, scope: !6201)
!6283 = !DILocation(line: 476, column: 2, scope: !6201)
!6284 = !DILocation(line: 477, column: 16, scope: !6201)
!6285 = !DILocation(line: 477, column: 19, scope: !6201)
!6286 = !DILocation(line: 477, column: 2, scope: !6201)
!6287 = !DILocation(line: 479, column: 2, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 479, column: 2)
!6289 = !DILocation(line: 479, column: 2, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 479, column: 2)
!6291 = !DILocation(line: 480, column: 7, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6293, file: !3, line: 480, column: 7)
!6293 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 479, column: 36)
!6294 = !DILocation(line: 480, column: 10, scope: !6292)
!6295 = !DILocation(line: 480, column: 14, scope: !6292)
!6296 = !DILocation(line: 480, column: 7, scope: !6293)
!6297 = !DILocation(line: 481, column: 10, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 480, column: 25)
!6299 = !DILocation(line: 481, column: 13, scope: !6298)
!6300 = !DILocation(line: 481, column: 17, scope: !6298)
!6301 = !DILocation(line: 481, column: 27, scope: !6298)
!6302 = !DILocation(line: 481, column: 33, scope: !6298)
!6303 = !DILocation(line: 481, column: 8, scope: !6298)
!6304 = !DILocation(line: 482, column: 8, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 482, column: 8)
!6306 = !DILocation(line: 482, column: 8, scope: !6298)
!6307 = !DILocation(line: 483, column: 10, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6305, file: !3, line: 482, column: 13)
!6309 = !DILocation(line: 483, column: 13, scope: !6308)
!6310 = !DILocation(line: 483, column: 8, scope: !6308)
!6311 = !DILocation(line: 484, column: 27, scope: !6308)
!6312 = !DILocation(line: 484, column: 5, scope: !6308)
!6313 = !DILocation(line: 485, column: 23, scope: !6308)
!6314 = !DILocation(line: 485, column: 26, scope: !6308)
!6315 = !DILocation(line: 485, column: 5, scope: !6308)
!6316 = !DILocation(line: 486, column: 18, scope: !6308)
!6317 = !DILocation(line: 486, column: 22, scope: !6308)
!6318 = !DILocation(line: 486, column: 5, scope: !6308)
!6319 = !DILocation(line: 487, column: 12, scope: !6308)
!6320 = !DILocation(line: 487, column: 5, scope: !6308)
!6321 = !DILocation(line: 489, column: 3, scope: !6298)
!6322 = !DILocation(line: 490, column: 15, scope: !6293)
!6323 = !DILocation(line: 490, column: 18, scope: !6293)
!6324 = !DILocation(line: 490, column: 3, scope: !6293)
!6325 = !DILocation(line: 491, column: 38, scope: !6293)
!6326 = !DILocation(line: 491, column: 41, scope: !6293)
!6327 = !DILocation(line: 491, column: 3, scope: !6293)
!6328 = !DILocation(line: 492, column: 17, scope: !6293)
!6329 = !DILocation(line: 492, column: 20, scope: !6293)
!6330 = !DILocation(line: 492, column: 3, scope: !6293)
!6331 = !DILocation(line: 493, column: 2, scope: !6293)
!6332 = distinct !{!6332, !6287, !6333, !6267, !6268}
!6333 = !DILocation(line: 493, column: 2, scope: !6288)
!6334 = !DILocation(line: 495, column: 2, scope: !6201)
!6335 = !DILocation(line: 497, column: 1, scope: !6201)
!6336 = !DILocation(line: 498, column: 24, scope: !6201)
!6337 = !DILocation(line: 498, column: 2, scope: !6201)
!6338 = !DILocation(line: 499, column: 29, scope: !6201)
!6339 = !DILocation(line: 499, column: 32, scope: !6201)
!6340 = !DILocation(line: 499, column: 2, scope: !6201)
!6341 = !DILocation(line: 501, column: 2, scope: !6201)
!6342 = !DILocation(line: 501, column: 5, scope: !6201)
!6343 = !DILocation(line: 501, column: 14, scope: !6201)
!6344 = !DILocation(line: 502, column: 9, scope: !6201)
!6345 = !DILocation(line: 502, column: 2, scope: !6201)
!6346 = !DILocation(line: 503, column: 1, scope: !6201)
!6347 = distinct !DISubprogram(name: "blk_mq_is_shared_tags", scope: !206, file: !206, line: 217, type: !6348, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6350)
!6348 = !DISubroutineType(types: !6349)
!6349 = !{!452, !7}
!6350 = !{!6351}
!6351 = !DILocalVariable(name: "flags", arg: 1, scope: !6347, file: !206, line: 217, type: !7)
!6352 = !DILocation(line: 217, column: 55, scope: !6347)
!6353 = !DILocation(line: 219, column: 9, scope: !6347)
!6354 = !DILocation(line: 219, column: 15, scope: !6347)
!6355 = !DILocation(line: 219, column: 2, scope: !6347)
!6356 = distinct !DISubprogram(name: "blk_mq_init_sched_shared_tags", scope: !3, file: !3, line: 423, type: !5416, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6357)
!6357 = !{!6358, !6359}
!6358 = !DILocalVariable(name: "queue", arg: 1, scope: !6356, file: !3, line: 423, type: !281)
!6359 = !DILocalVariable(name: "set", scope: !6356, file: !3, line: 425, type: !5448)
!6360 = !DILocation(line: 423, column: 64, scope: !6356)
!6361 = !DILocation(line: 425, column: 2, scope: !6356)
!6362 = !DILocation(line: 425, column: 25, scope: !6356)
!6363 = !DILocation(line: 425, column: 31, scope: !6356)
!6364 = !DILocation(line: 425, column: 38, scope: !6356)
!6365 = !DILocation(line: 431, column: 54, scope: !6356)
!6366 = !DILocation(line: 431, column: 29, scope: !6356)
!6367 = !DILocation(line: 431, column: 2, scope: !6356)
!6368 = !DILocation(line: 431, column: 9, scope: !6356)
!6369 = !DILocation(line: 431, column: 27, scope: !6356)
!6370 = !DILocation(line: 434, column: 7, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6356, file: !3, line: 434, column: 6)
!6372 = !DILocation(line: 434, column: 14, scope: !6371)
!6373 = !DILocation(line: 434, column: 6, scope: !6356)
!6374 = !DILocation(line: 435, column: 3, scope: !6371)
!6375 = !DILocation(line: 437, column: 38, scope: !6356)
!6376 = !DILocation(line: 437, column: 2, scope: !6356)
!6377 = !DILocation(line: 439, column: 2, scope: !6356)
!6378 = !DILocation(line: 440, column: 1, scope: !6356)
!6379 = !DISubprogram(name: "xa_find", scope: !260, file: !260, line: 359, type: !6380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{!256, !2211, !261, !255, !259}
!6382 = distinct !DISubprogram(name: "blk_mq_sched_alloc_map_and_rqs", scope: !3, file: !3, line: 382, type: !6383, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6385)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{!89, !281, !312, !7}
!6385 = !{!6386, !6387, !6388}
!6386 = !DILocalVariable(name: "q", arg: 1, scope: !6382, file: !3, line: 382, type: !281)
!6387 = !DILocalVariable(name: "hctx", arg: 2, scope: !6382, file: !3, line: 383, type: !312)
!6388 = !DILocalVariable(name: "hctx_idx", arg: 3, scope: !6382, file: !3, line: 384, type: !7)
!6389 = !DILocation(line: 382, column: 65, scope: !6382)
!6390 = !DILocation(line: 383, column: 30, scope: !6382)
!6391 = !DILocation(line: 384, column: 21, scope: !6382)
!6392 = !DILocation(line: 386, column: 28, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 386, column: 6)
!6394 = !DILocation(line: 386, column: 31, scope: !6393)
!6395 = !DILocation(line: 386, column: 40, scope: !6393)
!6396 = !DILocation(line: 386, column: 6, scope: !6393)
!6397 = !DILocation(line: 386, column: 6, scope: !6382)
!6398 = !DILocation(line: 387, column: 22, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 386, column: 48)
!6400 = !DILocation(line: 387, column: 25, scope: !6399)
!6401 = !DILocation(line: 387, column: 3, scope: !6399)
!6402 = !DILocation(line: 387, column: 9, scope: !6399)
!6403 = !DILocation(line: 387, column: 20, scope: !6399)
!6404 = !DILocation(line: 388, column: 3, scope: !6399)
!6405 = !DILocation(line: 391, column: 46, scope: !6382)
!6406 = !DILocation(line: 391, column: 49, scope: !6382)
!6407 = !DILocation(line: 391, column: 58, scope: !6382)
!6408 = !DILocation(line: 392, column: 11, scope: !6382)
!6409 = !DILocation(line: 392, column: 14, scope: !6382)
!6410 = !DILocation(line: 391, column: 21, scope: !6382)
!6411 = !DILocation(line: 391, column: 2, scope: !6382)
!6412 = !DILocation(line: 391, column: 8, scope: !6382)
!6413 = !DILocation(line: 391, column: 19, scope: !6382)
!6414 = !DILocation(line: 394, column: 7, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 394, column: 6)
!6416 = !DILocation(line: 394, column: 13, scope: !6415)
!6417 = !DILocation(line: 394, column: 6, scope: !6382)
!6418 = !DILocation(line: 395, column: 3, scope: !6415)
!6419 = !DILocation(line: 396, column: 2, scope: !6382)
!6420 = !DILocation(line: 397, column: 1, scope: !6382)
!6421 = !DISubprogram(name: "xa_find_after", scope: !260, file: !260, line: 361, type: !6380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6422 = !DISubprogram(name: "mutex_lock", scope: !864, file: !864, line: 227, type: !6423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6423 = !DISubroutineType(types: !6424)
!6424 = !{null, !6425}
!6425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!6426 = !DISubprogram(name: "blk_mq_debugfs_register_sched", scope: !5361, file: !5361, line: 30, type: !6427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6427 = !DISubroutineType(types: !6428)
!6428 = !{null, !281}
!6429 = !DISubprogram(name: "mutex_unlock", scope: !864, file: !864, line: 246, type: !6423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6430 = distinct !DISubprogram(name: "blk_mq_sched_free_rqs", scope: !3, file: !3, line: 509, type: !6427, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6431)
!6431 = !{!6432, !6433, !6434}
!6432 = !DILocalVariable(name: "q", arg: 1, scope: !6430, file: !3, line: 509, type: !281)
!6433 = !DILocalVariable(name: "hctx", scope: !6430, file: !3, line: 511, type: !312)
!6434 = !DILocalVariable(name: "i", scope: !6430, file: !3, line: 512, type: !255)
!6435 = !DILocation(line: 509, column: 50, scope: !6430)
!6436 = !DILocation(line: 511, column: 2, scope: !6430)
!6437 = !DILocation(line: 511, column: 24, scope: !6430)
!6438 = !DILocation(line: 512, column: 2, scope: !6430)
!6439 = !DILocation(line: 512, column: 16, scope: !6430)
!6440 = !DILocation(line: 514, column: 28, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 514, column: 6)
!6442 = !DILocation(line: 514, column: 31, scope: !6441)
!6443 = !DILocation(line: 514, column: 40, scope: !6441)
!6444 = !DILocation(line: 514, column: 6, scope: !6441)
!6445 = !DILocation(line: 514, column: 6, scope: !6430)
!6446 = !DILocation(line: 515, column: 19, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 514, column: 48)
!6448 = !DILocation(line: 515, column: 22, scope: !6447)
!6449 = !DILocation(line: 515, column: 31, scope: !6447)
!6450 = !DILocation(line: 515, column: 34, scope: !6447)
!6451 = !DILocation(line: 515, column: 3, scope: !6447)
!6452 = !DILocation(line: 517, column: 2, scope: !6447)
!6453 = !DILocation(line: 518, column: 3, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 518, column: 3)
!6455 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 517, column: 9)
!6456 = !DILocation(line: 518, column: 3, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 518, column: 3)
!6458 = !DILocation(line: 519, column: 8, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6460, file: !3, line: 519, column: 8)
!6460 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 518, column: 37)
!6461 = !DILocation(line: 519, column: 14, scope: !6459)
!6462 = !DILocation(line: 519, column: 8, scope: !6460)
!6463 = !DILocation(line: 520, column: 21, scope: !6459)
!6464 = !DILocation(line: 520, column: 24, scope: !6459)
!6465 = !DILocation(line: 521, column: 7, scope: !6459)
!6466 = !DILocation(line: 521, column: 13, scope: !6459)
!6467 = !DILocation(line: 521, column: 25, scope: !6459)
!6468 = !DILocation(line: 520, column: 5, scope: !6459)
!6469 = !DILocation(line: 522, column: 3, scope: !6460)
!6470 = distinct !{!6470, !6453, !6471, !6267, !6268}
!6471 = !DILocation(line: 522, column: 3, scope: !6454)
!6472 = !DILocation(line: 524, column: 1, scope: !6430)
!6473 = distinct !DISubprogram(name: "blk_mq_exit_sched", scope: !3, file: !3, line: 526, type: !6474, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6476)
!6474 = !DISubroutineType(types: !6475)
!6475 = !{null, !281, !286}
!6476 = !{!6477, !6478, !6479, !6480, !6481}
!6477 = !DILocalVariable(name: "q", arg: 1, scope: !6473, file: !3, line: 526, type: !281)
!6478 = !DILocalVariable(name: "e", arg: 2, scope: !6473, file: !3, line: 526, type: !286)
!6479 = !DILocalVariable(name: "hctx", scope: !6473, file: !3, line: 528, type: !312)
!6480 = !DILocalVariable(name: "i", scope: !6473, file: !3, line: 529, type: !255)
!6481 = !DILocalVariable(name: "flags", scope: !6473, file: !3, line: 530, type: !7)
!6482 = !DILocation(line: 526, column: 46, scope: !6473)
!6483 = !DILocation(line: 526, column: 72, scope: !6473)
!6484 = !DILocation(line: 528, column: 2, scope: !6473)
!6485 = !DILocation(line: 528, column: 24, scope: !6473)
!6486 = !DILocation(line: 529, column: 2, scope: !6473)
!6487 = !DILocation(line: 529, column: 16, scope: !6473)
!6488 = !DILocation(line: 530, column: 2, scope: !6473)
!6489 = !DILocation(line: 530, column: 15, scope: !6473)
!6490 = !DILocation(line: 532, column: 2, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 532, column: 2)
!6492 = !DILocation(line: 532, column: 2, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 532, column: 2)
!6494 = !DILocation(line: 533, column: 15, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6493, file: !3, line: 532, column: 36)
!6496 = !DILocation(line: 533, column: 18, scope: !6495)
!6497 = !DILocation(line: 533, column: 3, scope: !6495)
!6498 = !DILocation(line: 534, column: 40, scope: !6495)
!6499 = !DILocation(line: 534, column: 3, scope: !6495)
!6500 = !DILocation(line: 535, column: 17, scope: !6495)
!6501 = !DILocation(line: 535, column: 20, scope: !6495)
!6502 = !DILocation(line: 535, column: 3, scope: !6495)
!6503 = !DILocation(line: 537, column: 7, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6495, file: !3, line: 537, column: 7)
!6505 = !DILocation(line: 537, column: 10, scope: !6504)
!6506 = !DILocation(line: 537, column: 16, scope: !6504)
!6507 = !DILocation(line: 537, column: 20, scope: !6504)
!6508 = !DILocation(line: 537, column: 30, scope: !6504)
!6509 = !DILocation(line: 537, column: 33, scope: !6504)
!6510 = !DILocation(line: 537, column: 39, scope: !6504)
!6511 = !DILocation(line: 537, column: 7, scope: !6495)
!6512 = !DILocation(line: 538, column: 4, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 537, column: 51)
!6514 = !DILocation(line: 538, column: 7, scope: !6513)
!6515 = !DILocation(line: 538, column: 13, scope: !6513)
!6516 = !DILocation(line: 538, column: 17, scope: !6513)
!6517 = !DILocation(line: 538, column: 27, scope: !6513)
!6518 = !DILocation(line: 538, column: 33, scope: !6513)
!6519 = !DILocation(line: 539, column: 4, scope: !6513)
!6520 = !DILocation(line: 539, column: 10, scope: !6513)
!6521 = !DILocation(line: 539, column: 21, scope: !6513)
!6522 = !DILocation(line: 540, column: 3, scope: !6513)
!6523 = !DILocation(line: 541, column: 11, scope: !6495)
!6524 = !DILocation(line: 541, column: 17, scope: !6495)
!6525 = !DILocation(line: 541, column: 9, scope: !6495)
!6526 = !DILocation(line: 542, column: 2, scope: !6495)
!6527 = distinct !{!6527, !6490, !6528, !6267, !6268}
!6528 = !DILocation(line: 542, column: 2, scope: !6491)
!6529 = !DILocation(line: 544, column: 14, scope: !6473)
!6530 = !DILocation(line: 544, column: 17, scope: !6473)
!6531 = !DILocation(line: 544, column: 2, scope: !6473)
!6532 = !DILocation(line: 545, column: 34, scope: !6473)
!6533 = !DILocation(line: 545, column: 2, scope: !6473)
!6534 = !DILocation(line: 546, column: 16, scope: !6473)
!6535 = !DILocation(line: 546, column: 19, scope: !6473)
!6536 = !DILocation(line: 546, column: 2, scope: !6473)
!6537 = !DILocation(line: 548, column: 6, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 548, column: 6)
!6539 = !DILocation(line: 548, column: 9, scope: !6538)
!6540 = !DILocation(line: 548, column: 15, scope: !6538)
!6541 = !DILocation(line: 548, column: 19, scope: !6538)
!6542 = !DILocation(line: 548, column: 6, scope: !6473)
!6543 = !DILocation(line: 549, column: 3, scope: !6538)
!6544 = !DILocation(line: 549, column: 6, scope: !6538)
!6545 = !DILocation(line: 549, column: 12, scope: !6538)
!6546 = !DILocation(line: 549, column: 16, scope: !6538)
!6547 = !DILocation(line: 549, column: 27, scope: !6538)
!6548 = !DILocation(line: 550, column: 29, scope: !6473)
!6549 = !DILocation(line: 550, column: 32, scope: !6473)
!6550 = !DILocation(line: 550, column: 2, scope: !6473)
!6551 = !DILocation(line: 551, column: 2, scope: !6473)
!6552 = !DILocation(line: 551, column: 5, scope: !6473)
!6553 = !DILocation(line: 551, column: 14, scope: !6473)
!6554 = !DILocation(line: 552, column: 1, scope: !6473)
!6555 = !DISubprogram(name: "kobject_put", scope: !488, file: !488, line: 110, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6556 = !DISubprogram(name: "blk_mq_debugfs_register_sched_hctx", scope: !5361, file: !5361, line: 32, type: !6557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6557 = !DISubroutineType(types: !6558)
!6558 = !{null, !281, !312}
!6559 = distinct !DISubprogram(name: "blk_mq_sched_tags_teardown", scope: !3, file: !3, line: 406, type: !6560, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6562)
!6560 = !DISubroutineType(types: !6561)
!6561 = !{null, !281, !7}
!6562 = !{!6563, !6564, !6565, !6566}
!6563 = !DILocalVariable(name: "q", arg: 1, scope: !6559, file: !3, line: 406, type: !281)
!6564 = !DILocalVariable(name: "flags", arg: 2, scope: !6559, file: !3, line: 406, type: !7)
!6565 = !DILocalVariable(name: "hctx", scope: !6559, file: !3, line: 408, type: !312)
!6566 = !DILocalVariable(name: "i", scope: !6559, file: !3, line: 409, type: !255)
!6567 = !DILocation(line: 406, column: 62, scope: !6559)
!6568 = !DILocation(line: 406, column: 78, scope: !6559)
!6569 = !DILocation(line: 408, column: 2, scope: !6559)
!6570 = !DILocation(line: 408, column: 24, scope: !6559)
!6571 = !DILocation(line: 409, column: 2, scope: !6559)
!6572 = !DILocation(line: 409, column: 16, scope: !6559)
!6573 = !DILocation(line: 411, column: 2, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 411, column: 2)
!6575 = !DILocation(line: 411, column: 2, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6574, file: !3, line: 411, column: 2)
!6577 = !DILocation(line: 412, column: 7, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 412, column: 7)
!6579 = distinct !DILexicalBlock(scope: !6576, file: !3, line: 411, column: 36)
!6580 = !DILocation(line: 412, column: 13, scope: !6578)
!6581 = !DILocation(line: 412, column: 7, scope: !6579)
!6582 = !DILocation(line: 413, column: 31, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 413, column: 8)
!6584 = distinct !DILexicalBlock(scope: !6578, file: !3, line: 412, column: 25)
!6585 = !DILocation(line: 413, column: 9, scope: !6583)
!6586 = !DILocation(line: 413, column: 8, scope: !6584)
!6587 = !DILocation(line: 414, column: 24, scope: !6583)
!6588 = !DILocation(line: 414, column: 30, scope: !6583)
!6589 = !DILocation(line: 414, column: 5, scope: !6583)
!6590 = !DILocation(line: 415, column: 4, scope: !6584)
!6591 = !DILocation(line: 415, column: 10, scope: !6584)
!6592 = !DILocation(line: 415, column: 21, scope: !6584)
!6593 = !DILocation(line: 416, column: 3, scope: !6584)
!6594 = !DILocation(line: 417, column: 2, scope: !6579)
!6595 = distinct !{!6595, !6573, !6596, !6267, !6268}
!6596 = !DILocation(line: 417, column: 2, scope: !6574)
!6597 = !DILocation(line: 419, column: 28, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 419, column: 6)
!6599 = !DILocation(line: 419, column: 6, scope: !6598)
!6600 = !DILocation(line: 419, column: 6, scope: !6559)
!6601 = !DILocation(line: 420, column: 33, scope: !6598)
!6602 = !DILocation(line: 420, column: 3, scope: !6598)
!6603 = !DILocation(line: 421, column: 1, scope: !6559)
!6604 = !DISubprogram(name: "blk_mq_free_rqs", scope: !206, file: !206, line: 58, type: !6605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6605 = !DISubroutineType(types: !6606)
!6606 = !{null, !5448, !5205, !7}
!6607 = !DISubprogram(name: "blk_mq_debugfs_unregister_sched_hctx", scope: !5361, file: !5361, line: 34, type: !5249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6608 = !DISubprogram(name: "blk_mq_debugfs_unregister_sched", scope: !5361, file: !5361, line: 31, type: !6427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6609 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6610, file: !6610, line: 66, type: !6611, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6616)
!6610 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6611 = !DISubroutineType(types: !6612)
!6612 = !{null, !6613, !574}
!6613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6614, size: 64)
!6614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6615)
!6615 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6616 = !{!6617, !6618}
!6617 = !DILocalVariable(name: "v", arg: 1, scope: !6609, file: !6610, line: 66, type: !6613)
!6618 = !DILocalVariable(name: "size", arg: 2, scope: !6609, file: !6610, line: 66, type: !574)
!6619 = !DILocation(line: 66, column: 73, scope: !6609)
!6620 = !DILocation(line: 66, column: 83, scope: !6609)
!6621 = !DILocation(line: 68, column: 19, scope: !6609)
!6622 = !DILocation(line: 68, column: 22, scope: !6609)
!6623 = !DILocation(line: 68, column: 2, scope: !6609)
!6624 = !DILocation(line: 69, column: 2, scope: !6609)
!6625 = !DILocation(line: 70, column: 1, scope: !6609)
!6626 = distinct !DISubprogram(name: "arch_test_bit", scope: !6627, file: !6627, line: 237, type: !5744, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6628)
!6627 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6628 = !{!6629, !6630}
!6629 = !DILocalVariable(name: "nr", arg: 1, scope: !6626, file: !6627, line: 237, type: !255)
!6630 = !DILocalVariable(name: "addr", arg: 2, scope: !6626, file: !6627, line: 237, type: !5746)
!6631 = !DILocation(line: 237, column: 29, scope: !6626)
!6632 = !DILocation(line: 237, column: 63, scope: !6626)
!6633 = !DILocation(line: 239, column: 30, scope: !6626)
!6634 = !DILocation(line: 239, column: 9, scope: !6626)
!6635 = !DILocation(line: 239, column: 54, scope: !6626)
!6636 = !DILocation(line: 239, column: 58, scope: !6626)
!6637 = !DILocation(line: 239, column: 36, scope: !6626)
!6638 = !DILocation(line: 240, column: 26, scope: !6626)
!6639 = !DILocation(line: 240, column: 30, scope: !6626)
!6640 = !DILocation(line: 240, column: 8, scope: !6626)
!6641 = !DILocation(line: 239, column: 2, scope: !6626)
!6642 = distinct !DISubprogram(name: "kasan_check_read", scope: !6643, file: !6643, line: 40, type: !6644, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6646)
!6643 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6644 = !DISubroutineType(types: !6645)
!6645 = !{!452, !6613, !7}
!6646 = !{!6647, !6648}
!6647 = !DILocalVariable(name: "p", arg: 1, scope: !6642, file: !6643, line: 40, type: !6613)
!6648 = !DILocalVariable(name: "size", arg: 2, scope: !6642, file: !6643, line: 40, type: !7)
!6649 = !DILocation(line: 40, column: 58, scope: !6642)
!6650 = !DILocation(line: 40, column: 74, scope: !6642)
!6651 = !DILocation(line: 42, column: 2, scope: !6642)
!6652 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6653, file: !6653, line: 229, type: !6654, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6656)
!6653 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6654 = !DISubroutineType(types: !6655)
!6655 = !{null, !6613, !574, !89}
!6656 = !{!6657, !6658, !6659}
!6657 = !DILocalVariable(name: "ptr", arg: 1, scope: !6652, file: !6653, line: 229, type: !6613)
!6658 = !DILocalVariable(name: "size", arg: 2, scope: !6652, file: !6653, line: 229, type: !574)
!6659 = !DILocalVariable(name: "type", arg: 3, scope: !6652, file: !6653, line: 230, type: !89)
!6660 = !DILocation(line: 229, column: 60, scope: !6652)
!6661 = !DILocation(line: 229, column: 72, scope: !6652)
!6662 = !DILocation(line: 230, column: 15, scope: !6652)
!6663 = !DILocation(line: 230, column: 23, scope: !6652)
!6664 = distinct !DISubprogram(name: "constant_test_bit", scope: !6627, file: !6627, line: 204, type: !6665, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6667)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{!452, !267, !5746}
!6667 = !{!6668, !6669}
!6668 = !DILocalVariable(name: "nr", arg: 1, scope: !6664, file: !6627, line: 204, type: !267)
!6669 = !DILocalVariable(name: "addr", arg: 2, scope: !6664, file: !6627, line: 204, type: !5746)
!6670 = !DILocation(line: 204, column: 52, scope: !6664)
!6671 = !DILocation(line: 204, column: 86, scope: !6664)
!6672 = !DILocation(line: 206, column: 19, scope: !6664)
!6673 = !DILocation(line: 206, column: 22, scope: !6664)
!6674 = !DILocation(line: 206, column: 15, scope: !6664)
!6675 = !DILocation(line: 207, column: 4, scope: !6664)
!6676 = !DILocation(line: 207, column: 9, scope: !6664)
!6677 = !DILocation(line: 207, column: 12, scope: !6664)
!6678 = !DILocation(line: 206, column: 44, scope: !6664)
!6679 = !DILocation(line: 207, column: 37, scope: !6664)
!6680 = !DILocation(line: 206, column: 2, scope: !6664)
!6681 = distinct !DISubprogram(name: "variable_test_bit", scope: !6627, file: !6627, line: 224, type: !6665, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6682)
!6682 = !{!6683, !6684, !6685}
!6683 = !DILocalVariable(name: "nr", arg: 1, scope: !6681, file: !6627, line: 224, type: !267)
!6684 = !DILocalVariable(name: "addr", arg: 2, scope: !6681, file: !6627, line: 224, type: !5746)
!6685 = !DILocalVariable(name: "oldbit", scope: !6681, file: !6627, line: 226, type: !452)
!6686 = !DILocation(line: 224, column: 52, scope: !6681)
!6687 = !DILocation(line: 224, column: 86, scope: !6681)
!6688 = !DILocation(line: 226, column: 2, scope: !6681)
!6689 = !DILocation(line: 226, column: 7, scope: !6681)
!6690 = !DILocation(line: 231, column: 33, scope: !6681)
!6691 = !DILocation(line: 231, column: 46, scope: !6681)
!6692 = !DILocation(line: 228, column: 2, scope: !6681)
!6693 = !{i64 2147812130, i64 2147812204}
!6694 = !DILocation(line: 233, column: 9, scope: !6681)
!6695 = !DILocation(line: 234, column: 1, scope: !6681)
!6696 = !DILocation(line: 233, column: 2, scope: !6681)
!6697 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6610, file: !6610, line: 80, type: !6611, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6698)
!6698 = !{!6699, !6700}
!6699 = !DILocalVariable(name: "v", arg: 1, scope: !6697, file: !6610, line: 80, type: !6613)
!6700 = !DILocalVariable(name: "size", arg: 2, scope: !6697, file: !6610, line: 80, type: !574)
!6701 = !DILocation(line: 80, column: 74, scope: !6697)
!6702 = !DILocation(line: 80, column: 84, scope: !6697)
!6703 = !DILocation(line: 82, column: 20, scope: !6697)
!6704 = !DILocation(line: 82, column: 23, scope: !6697)
!6705 = !DILocation(line: 82, column: 2, scope: !6697)
!6706 = !DILocation(line: 83, column: 2, scope: !6697)
!6707 = !DILocation(line: 84, column: 1, scope: !6697)
!6708 = distinct !DISubprogram(name: "arch_set_bit", scope: !6627, file: !6627, line: 52, type: !5793, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6709)
!6709 = !{!6710, !6711}
!6710 = !DILocalVariable(name: "nr", arg: 1, scope: !6708, file: !6627, line: 52, type: !267)
!6711 = !DILocalVariable(name: "addr", arg: 2, scope: !6708, file: !6627, line: 52, type: !5795)
!6712 = !DILocation(line: 52, column: 19, scope: !6708)
!6713 = !DILocation(line: 52, column: 47, scope: !6708)
!6714 = !DILocation(line: 54, column: 27, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6708, file: !6627, line: 54, column: 6)
!6716 = !DILocation(line: 54, column: 6, scope: !6715)
!6717 = !DILocation(line: 54, column: 6, scope: !6708)
!6718 = !DILocation(line: 56, column: 6, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6715, file: !6627, line: 54, column: 32)
!6720 = !DILocation(line: 57, column: 12, scope: !6719)
!6721 = !DILocation(line: 55, column: 3, scope: !6719)
!6722 = !{i64 2147798518, i64 2147798557, i64 2147798578, i64 2147798615, i64 2147798638, i64 2147798508}
!6723 = !DILocation(line: 59, column: 2, scope: !6719)
!6724 = !DILocation(line: 61, column: 8, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6715, file: !6627, line: 59, column: 9)
!6726 = !DILocation(line: 61, column: 32, scope: !6725)
!6727 = !DILocation(line: 60, column: 3, scope: !6725)
!6728 = !{i64 2147798803, i64 2147798842, i64 2147798863, i64 2147798900, i64 2147798923, i64 2147798793}
!6729 = !DILocation(line: 63, column: 1, scope: !6708)
!6730 = distinct !DISubprogram(name: "kasan_check_write", scope: !6643, file: !6643, line: 44, type: !6644, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6731)
!6731 = !{!6732, !6733}
!6732 = !DILocalVariable(name: "p", arg: 1, scope: !6730, file: !6643, line: 44, type: !6613)
!6733 = !DILocalVariable(name: "size", arg: 2, scope: !6730, file: !6643, line: 44, type: !7)
!6734 = !DILocation(line: 44, column: 59, scope: !6730)
!6735 = !DILocation(line: 44, column: 75, scope: !6730)
!6736 = !DILocation(line: 46, column: 2, scope: !6730)
!6737 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6627, file: !6627, line: 72, type: !5793, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6738)
!6738 = !{!6739, !6740}
!6739 = !DILocalVariable(name: "nr", arg: 1, scope: !6737, file: !6627, line: 72, type: !267)
!6740 = !DILocalVariable(name: "addr", arg: 2, scope: !6737, file: !6627, line: 72, type: !5795)
!6741 = !DILocation(line: 72, column: 21, scope: !6737)
!6742 = !DILocation(line: 72, column: 49, scope: !6737)
!6743 = !DILocation(line: 74, column: 27, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6737, file: !6627, line: 74, column: 6)
!6745 = !DILocation(line: 74, column: 6, scope: !6744)
!6746 = !DILocation(line: 74, column: 6, scope: !6737)
!6747 = !DILocation(line: 76, column: 6, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6744, file: !6627, line: 74, column: 32)
!6749 = !DILocation(line: 77, column: 13, scope: !6748)
!6750 = !DILocation(line: 77, column: 12, scope: !6748)
!6751 = !DILocation(line: 75, column: 3, scope: !6748)
!6752 = !{i64 2147799806, i64 2147799845, i64 2147799866, i64 2147799903, i64 2147799926, i64 2147799796}
!6753 = !DILocation(line: 78, column: 2, scope: !6748)
!6754 = !DILocation(line: 80, column: 8, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6744, file: !6627, line: 78, column: 9)
!6756 = !DILocation(line: 80, column: 32, scope: !6755)
!6757 = !DILocation(line: 79, column: 3, scope: !6755)
!6758 = !{i64 2147800091, i64 2147800130, i64 2147800151, i64 2147800188, i64 2147800211, i64 2147800081}
!6759 = !DILocation(line: 82, column: 1, scope: !6737)
!6760 = distinct !DISubprogram(name: "list_empty", scope: !6084, file: !6084, line: 371, type: !6085, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6761)
!6761 = !{!6762}
!6762 = !DILocalVariable(name: "head", arg: 1, scope: !6760, file: !6084, line: 371, type: !6087)
!6763 = !DILocation(line: 371, column: 54, scope: !6760)
!6764 = !DILocation(line: 373, column: 9, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6760, file: !6084, line: 373, column: 9)
!6766 = !DILocation(line: 373, column: 9, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6765, file: !6084, line: 373, column: 9)
!6768 = !DILocation(line: 373, column: 34, scope: !6760)
!6769 = !DILocation(line: 373, column: 31, scope: !6760)
!6770 = !DILocation(line: 373, column: 2, scope: !6760)
!6771 = distinct !DISubprogram(name: "list_splice_init", scope: !6084, file: !6084, line: 568, type: !6772, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6774)
!6772 = !DISubroutineType(types: !6773)
!6773 = !{null, !271, !271}
!6774 = !{!6775, !6776}
!6775 = !DILocalVariable(name: "list", arg: 1, scope: !6771, file: !6084, line: 568, type: !271)
!6776 = !DILocalVariable(name: "head", arg: 2, scope: !6771, file: !6084, line: 569, type: !271)
!6777 = !DILocation(line: 568, column: 55, scope: !6771)
!6778 = !DILocation(line: 569, column: 27, scope: !6771)
!6779 = !DILocation(line: 571, column: 18, scope: !6780)
!6780 = distinct !DILexicalBlock(scope: !6771, file: !6084, line: 571, column: 6)
!6781 = !DILocation(line: 571, column: 7, scope: !6780)
!6782 = !DILocation(line: 571, column: 6, scope: !6771)
!6783 = !DILocation(line: 572, column: 17, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6780, file: !6084, line: 571, column: 25)
!6785 = !DILocation(line: 572, column: 23, scope: !6784)
!6786 = !DILocation(line: 572, column: 29, scope: !6784)
!6787 = !DILocation(line: 572, column: 35, scope: !6784)
!6788 = !DILocation(line: 572, column: 3, scope: !6784)
!6789 = !DILocation(line: 573, column: 18, scope: !6784)
!6790 = !DILocation(line: 573, column: 3, scope: !6784)
!6791 = !DILocation(line: 574, column: 2, scope: !6784)
!6792 = !DILocation(line: 575, column: 1, scope: !6771)
!6793 = !DISubprogram(name: "blk_mq_dispatch_rq_list", scope: !206, file: !206, line: 48, type: !6794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6794 = !DISubroutineType(types: !6795)
!6795 = !{!452, !312, !271, !7}
!6796 = distinct !DISubprogram(name: "blk_mq_do_dispatch_sched", scope: !3, file: !3, line: 178, type: !5891, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6797)
!6797 = !{!6798, !6799, !6800}
!6798 = !DILocalVariable(name: "hctx", arg: 1, scope: !6796, file: !3, line: 178, type: !312)
!6799 = !DILocalVariable(name: "end", scope: !6796, file: !3, line: 180, type: !255)
!6800 = !DILocalVariable(name: "ret", scope: !6796, file: !3, line: 181, type: !89)
!6801 = !DILocation(line: 178, column: 59, scope: !6796)
!6802 = !DILocation(line: 180, column: 2, scope: !6796)
!6803 = !DILocation(line: 180, column: 16, scope: !6796)
!6804 = !DILocation(line: 180, column: 22, scope: !6796)
!6805 = !DILocation(line: 180, column: 30, scope: !6796)
!6806 = !DILocation(line: 181, column: 2, scope: !6796)
!6807 = !DILocation(line: 181, column: 6, scope: !6796)
!6808 = !DILocation(line: 183, column: 2, scope: !6796)
!6809 = !DILocation(line: 184, column: 36, scope: !6810)
!6810 = distinct !DILexicalBlock(scope: !6796, file: !3, line: 183, column: 5)
!6811 = !DILocation(line: 184, column: 9, scope: !6810)
!6812 = !DILocation(line: 184, column: 7, scope: !6810)
!6813 = !DILocation(line: 185, column: 7, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6810, file: !3, line: 185, column: 7)
!6815 = !DILocation(line: 185, column: 11, scope: !6814)
!6816 = !DILocation(line: 185, column: 7, scope: !6810)
!6817 = !DILocation(line: 186, column: 4, scope: !6814)
!6818 = !DILocation(line: 187, column: 7, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6810, file: !3, line: 187, column: 7)
!6820 = !DILocation(line: 187, column: 22, scope: !6819)
!6821 = !DILocation(line: 187, column: 25, scope: !6819)
!6822 = !DILocation(line: 187, column: 7, scope: !6810)
!6823 = !DILocation(line: 188, column: 30, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6819, file: !3, line: 187, column: 54)
!6825 = !DILocation(line: 188, column: 4, scope: !6824)
!6826 = !DILocation(line: 189, column: 4, scope: !6824)
!6827 = !DILocation(line: 191, column: 2, scope: !6810)
!6828 = distinct !{!6828, !6808, !6829, !6268}
!6829 = !DILocation(line: 191, column: 12, scope: !6796)
!6830 = !DILocation(line: 193, column: 9, scope: !6796)
!6831 = !DILocation(line: 194, column: 1, scope: !6796)
!6832 = !DILocation(line: 193, column: 2, scope: !6796)
!6833 = distinct !DISubprogram(name: "blk_mq_do_dispatch_ctx", scope: !3, file: !3, line: 215, type: !5891, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6834)
!6834 = !{!6835, !6836, !6837, !6838, !6839, !6840, !6841}
!6835 = !DILocalVariable(name: "hctx", arg: 1, scope: !6833, file: !3, line: 215, type: !312)
!6836 = !DILocalVariable(name: "q", scope: !6833, file: !3, line: 217, type: !281)
!6837 = !DILocalVariable(name: "rq_list", scope: !6833, file: !3, line: 218, type: !272)
!6838 = !DILocalVariable(name: "ctx", scope: !6833, file: !3, line: 219, type: !465)
!6839 = !DILocalVariable(name: "ret", scope: !6833, file: !3, line: 220, type: !89)
!6840 = !DILocalVariable(name: "rq", scope: !6833, file: !3, line: 221, type: !277)
!6841 = !DILocalVariable(name: "budget_token", scope: !6842, file: !3, line: 224, type: !89)
!6842 = distinct !DILexicalBlock(scope: !6833, file: !3, line: 223, column: 5)
!6843 = !DILocation(line: 215, column: 57, scope: !6833)
!6844 = !DILocation(line: 217, column: 2, scope: !6833)
!6845 = !DILocation(line: 217, column: 24, scope: !6833)
!6846 = !DILocation(line: 217, column: 28, scope: !6833)
!6847 = !DILocation(line: 217, column: 34, scope: !6833)
!6848 = !DILocation(line: 218, column: 2, scope: !6833)
!6849 = !DILocation(line: 219, column: 2, scope: !6833)
!6850 = !DILocation(line: 219, column: 21, scope: !6833)
!6851 = !DILocation(line: 219, column: 27, scope: !6852)
!6852 = distinct !DILexicalBlock(scope: !6833, file: !3, line: 219, column: 27)
!6853 = !DILocation(line: 219, column: 27, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6852, file: !3, line: 219, column: 27)
!6855 = !DILocation(line: 220, column: 2, scope: !6833)
!6856 = !DILocation(line: 220, column: 6, scope: !6833)
!6857 = !DILocation(line: 221, column: 2, scope: !6833)
!6858 = !DILocation(line: 221, column: 18, scope: !6833)
!6859 = !DILocation(line: 223, column: 2, scope: !6833)
!6860 = !DILocation(line: 224, column: 3, scope: !6842)
!6861 = !DILocation(line: 224, column: 7, scope: !6842)
!6862 = !DILocation(line: 226, column: 28, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !6842, file: !3, line: 226, column: 7)
!6864 = !DILocation(line: 226, column: 34, scope: !6863)
!6865 = !DILocation(line: 226, column: 8, scope: !6863)
!6866 = !DILocation(line: 226, column: 7, scope: !6842)
!6867 = !DILocation(line: 227, column: 8, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 226, column: 45)
!6869 = !DILocation(line: 228, column: 4, scope: !6868)
!6870 = !DILocation(line: 231, column: 29, scope: !6871)
!6871 = distinct !DILexicalBlock(scope: !6842, file: !3, line: 231, column: 7)
!6872 = !DILocation(line: 231, column: 35, scope: !6871)
!6873 = !DILocation(line: 231, column: 8, scope: !6871)
!6874 = !DILocation(line: 231, column: 7, scope: !6842)
!6875 = !DILocation(line: 232, column: 4, scope: !6871)
!6876 = !DILocation(line: 234, column: 45, scope: !6842)
!6877 = !DILocation(line: 234, column: 18, scope: !6842)
!6878 = !DILocation(line: 234, column: 16, scope: !6842)
!6879 = !DILocation(line: 235, column: 7, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6842, file: !3, line: 235, column: 7)
!6881 = !DILocation(line: 235, column: 20, scope: !6880)
!6882 = !DILocation(line: 235, column: 7, scope: !6842)
!6883 = !DILocation(line: 236, column: 4, scope: !6880)
!6884 = !DILocation(line: 238, column: 32, scope: !6842)
!6885 = !DILocation(line: 238, column: 38, scope: !6842)
!6886 = !DILocation(line: 238, column: 8, scope: !6842)
!6887 = !DILocation(line: 238, column: 6, scope: !6842)
!6888 = !DILocation(line: 239, column: 8, scope: !6889)
!6889 = distinct !DILexicalBlock(scope: !6842, file: !3, line: 239, column: 7)
!6890 = !DILocation(line: 239, column: 7, scope: !6842)
!6891 = !DILocation(line: 240, column: 31, scope: !6892)
!6892 = distinct !DILexicalBlock(scope: !6889, file: !3, line: 239, column: 12)
!6893 = !DILocation(line: 240, column: 34, scope: !6892)
!6894 = !DILocation(line: 240, column: 4, scope: !6892)
!6895 = !DILocation(line: 248, column: 31, scope: !6892)
!6896 = !DILocation(line: 248, column: 4, scope: !6892)
!6897 = !DILocation(line: 249, column: 4, scope: !6892)
!6898 = !DILocation(line: 252, column: 30, scope: !6842)
!6899 = !DILocation(line: 252, column: 34, scope: !6842)
!6900 = !DILocation(line: 252, column: 3, scope: !6842)
!6901 = !DILocation(line: 259, column: 13, scope: !6842)
!6902 = !DILocation(line: 259, column: 17, scope: !6842)
!6903 = !DILocation(line: 259, column: 3, scope: !6842)
!6904 = !DILocation(line: 262, column: 25, scope: !6842)
!6905 = !DILocation(line: 262, column: 31, scope: !6842)
!6906 = !DILocation(line: 262, column: 35, scope: !6842)
!6907 = !DILocation(line: 262, column: 9, scope: !6842)
!6908 = !DILocation(line: 262, column: 7, scope: !6842)
!6909 = !DILocation(line: 264, column: 2, scope: !6833)
!6910 = !DILocation(line: 264, column: 2, scope: !6842)
!6911 = !DILocation(line: 264, column: 35, scope: !6833)
!6912 = !DILocation(line: 264, column: 39, scope: !6833)
!6913 = !DILocation(line: 264, column: 11, scope: !6833)
!6914 = distinct !{!6914, !6859, !6915, !6267, !6268}
!6915 = !DILocation(line: 264, column: 60, scope: !6833)
!6916 = !DILocation(line: 266, column: 2, scope: !6833)
!6917 = !DILocation(line: 266, column: 2, scope: !6918)
!6918 = distinct !DILexicalBlock(scope: !6833, file: !3, line: 266, column: 2)
!6919 = !DILocation(line: 266, column: 2, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6918, file: !3, line: 266, column: 2)
!6921 = !DILocation(line: 266, column: 2, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6918, file: !3, line: 266, column: 2)
!6923 = !DILocation(line: 267, column: 9, scope: !6833)
!6924 = !DILocation(line: 268, column: 1, scope: !6833)
!6925 = !DILocation(line: 267, column: 2, scope: !6833)
!6926 = !DISubprogram(name: "blk_mq_flush_busy_ctxs", scope: !206, file: !206, line: 50, type: !6927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6927 = !DISubroutineType(types: !6928)
!6928 = !{null, !312, !271}
!6929 = distinct !DISubprogram(name: "__list_splice", scope: !6084, file: !6084, line: 523, type: !6930, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6932)
!6930 = !DISubroutineType(types: !6931)
!6931 = !{null, !6087, !271, !271}
!6932 = !{!6933, !6934, !6935, !6936, !6937}
!6933 = !DILocalVariable(name: "list", arg: 1, scope: !6929, file: !6084, line: 523, type: !6087)
!6934 = !DILocalVariable(name: "prev", arg: 2, scope: !6929, file: !6084, line: 524, type: !271)
!6935 = !DILocalVariable(name: "next", arg: 3, scope: !6929, file: !6084, line: 525, type: !271)
!6936 = !DILocalVariable(name: "first", scope: !6929, file: !6084, line: 527, type: !271)
!6937 = !DILocalVariable(name: "last", scope: !6929, file: !6084, line: 528, type: !271)
!6938 = !DILocation(line: 523, column: 58, scope: !6929)
!6939 = !DILocation(line: 524, column: 24, scope: !6929)
!6940 = !DILocation(line: 525, column: 24, scope: !6929)
!6941 = !DILocation(line: 527, column: 2, scope: !6929)
!6942 = !DILocation(line: 527, column: 20, scope: !6929)
!6943 = !DILocation(line: 527, column: 28, scope: !6929)
!6944 = !DILocation(line: 527, column: 34, scope: !6929)
!6945 = !DILocation(line: 528, column: 2, scope: !6929)
!6946 = !DILocation(line: 528, column: 20, scope: !6929)
!6947 = !DILocation(line: 528, column: 27, scope: !6929)
!6948 = !DILocation(line: 528, column: 33, scope: !6929)
!6949 = !DILocation(line: 530, column: 16, scope: !6929)
!6950 = !DILocation(line: 530, column: 2, scope: !6929)
!6951 = !DILocation(line: 530, column: 9, scope: !6929)
!6952 = !DILocation(line: 530, column: 14, scope: !6929)
!6953 = !DILocation(line: 531, column: 15, scope: !6929)
!6954 = !DILocation(line: 531, column: 2, scope: !6929)
!6955 = !DILocation(line: 531, column: 8, scope: !6929)
!6956 = !DILocation(line: 531, column: 13, scope: !6929)
!6957 = !DILocation(line: 533, column: 15, scope: !6929)
!6958 = !DILocation(line: 533, column: 2, scope: !6929)
!6959 = !DILocation(line: 533, column: 8, scope: !6929)
!6960 = !DILocation(line: 533, column: 13, scope: !6929)
!6961 = !DILocation(line: 534, column: 15, scope: !6929)
!6962 = !DILocation(line: 534, column: 2, scope: !6929)
!6963 = !DILocation(line: 534, column: 8, scope: !6929)
!6964 = !DILocation(line: 534, column: 13, scope: !6929)
!6965 = !DILocation(line: 535, column: 1, scope: !6929)
!6966 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6084, file: !6084, line: 35, type: !6967, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6969)
!6967 = !DISubroutineType(types: !6968)
!6968 = !{null, !271}
!6969 = !{!6970}
!6970 = !DILocalVariable(name: "list", arg: 1, scope: !6966, file: !6084, line: 35, type: !271)
!6971 = !DILocation(line: 35, column: 53, scope: !6966)
!6972 = !DILocation(line: 37, column: 2, scope: !6966)
!6973 = !DILocation(line: 37, column: 2, scope: !6974)
!6974 = distinct !DILexicalBlock(scope: !6966, file: !6084, line: 37, column: 2)
!6975 = !DILocation(line: 37, column: 2, scope: !6976)
!6976 = distinct !DILexicalBlock(scope: !6974, file: !6084, line: 37, column: 2)
!6977 = !DILocation(line: 37, column: 2, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6974, file: !6084, line: 37, column: 2)
!6979 = !DILocation(line: 38, column: 2, scope: !6966)
!6980 = !DILocation(line: 38, column: 2, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6966, file: !6084, line: 38, column: 2)
!6982 = !DILocation(line: 38, column: 2, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6981, file: !6084, line: 38, column: 2)
!6984 = !DILocation(line: 38, column: 2, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6981, file: !6084, line: 38, column: 2)
!6986 = !DILocation(line: 39, column: 1, scope: !6966)
!6987 = distinct !DISubprogram(name: "__blk_mq_do_dispatch_sched", scope: !3, file: !3, line: 87, type: !5891, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6988)
!6988 = !{!6989, !6990, !6991, !6992, !6993, !6994, !6995, !6996, !6997, !6998, !6999, !7001}
!6989 = !DILocalVariable(name: "hctx", arg: 1, scope: !6987, file: !3, line: 87, type: !312)
!6990 = !DILocalVariable(name: "q", scope: !6987, file: !3, line: 89, type: !281)
!6991 = !DILocalVariable(name: "e", scope: !6987, file: !3, line: 90, type: !286)
!6992 = !DILocalVariable(name: "multi_hctxs", scope: !6987, file: !3, line: 91, type: !452)
!6993 = !DILocalVariable(name: "run_queue", scope: !6987, file: !3, line: 91, type: !452)
!6994 = !DILocalVariable(name: "dispatched", scope: !6987, file: !3, line: 92, type: !452)
!6995 = !DILocalVariable(name: "busy", scope: !6987, file: !3, line: 92, type: !452)
!6996 = !DILocalVariable(name: "max_dispatch", scope: !6987, file: !3, line: 93, type: !7)
!6997 = !DILocalVariable(name: "rq_list", scope: !6987, file: !3, line: 94, type: !272)
!6998 = !DILocalVariable(name: "count", scope: !6987, file: !3, line: 95, type: !89)
!6999 = !DILocalVariable(name: "rq", scope: !7000, file: !3, line: 103, type: !277)
!7000 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 102, column: 5)
!7001 = !DILocalVariable(name: "budget_token", scope: !7000, file: !3, line: 104, type: !89)
!7002 = !DILocation(line: 87, column: 61, scope: !6987)
!7003 = !DILocation(line: 89, column: 2, scope: !6987)
!7004 = !DILocation(line: 89, column: 24, scope: !6987)
!7005 = !DILocation(line: 89, column: 28, scope: !6987)
!7006 = !DILocation(line: 89, column: 34, scope: !6987)
!7007 = !DILocation(line: 90, column: 2, scope: !6987)
!7008 = !DILocation(line: 90, column: 25, scope: !6987)
!7009 = !DILocation(line: 90, column: 29, scope: !6987)
!7010 = !DILocation(line: 90, column: 32, scope: !6987)
!7011 = !DILocation(line: 91, column: 2, scope: !6987)
!7012 = !DILocation(line: 91, column: 7, scope: !6987)
!7013 = !DILocation(line: 91, column: 28, scope: !6987)
!7014 = !DILocation(line: 92, column: 2, scope: !6987)
!7015 = !DILocation(line: 92, column: 7, scope: !6987)
!7016 = !DILocation(line: 92, column: 27, scope: !6987)
!7017 = !DILocation(line: 93, column: 2, scope: !6987)
!7018 = !DILocation(line: 93, column: 15, scope: !6987)
!7019 = !DILocation(line: 94, column: 2, scope: !6987)
!7020 = !DILocation(line: 95, column: 2, scope: !6987)
!7021 = !DILocation(line: 95, column: 6, scope: !6987)
!7022 = !DILocation(line: 97, column: 6, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 97, column: 6)
!7024 = !DILocation(line: 97, column: 12, scope: !7023)
!7025 = !DILocation(line: 97, column: 6, scope: !6987)
!7026 = !DILocation(line: 98, column: 16, scope: !7023)
!7027 = !DILocation(line: 98, column: 3, scope: !7023)
!7028 = !DILocation(line: 100, column: 18, scope: !7023)
!7029 = !DILocation(line: 100, column: 24, scope: !7023)
!7030 = !DILocation(line: 100, column: 31, scope: !7023)
!7031 = !DILocation(line: 100, column: 16, scope: !7023)
!7032 = !DILocation(line: 102, column: 2, scope: !6987)
!7033 = !DILocation(line: 103, column: 3, scope: !7000)
!7034 = !DILocation(line: 103, column: 19, scope: !7000)
!7035 = !DILocation(line: 104, column: 3, scope: !7000)
!7036 = !DILocation(line: 104, column: 7, scope: !7000)
!7037 = !DILocation(line: 106, column: 7, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !7000, file: !3, line: 106, column: 7)
!7039 = !DILocation(line: 106, column: 10, scope: !7038)
!7040 = !DILocation(line: 106, column: 16, scope: !7038)
!7041 = !DILocation(line: 106, column: 20, scope: !7038)
!7042 = !DILocation(line: 106, column: 29, scope: !7038)
!7043 = !DILocation(line: 106, column: 33, scope: !7038)
!7044 = !DILocation(line: 106, column: 36, scope: !7038)
!7045 = !DILocation(line: 106, column: 42, scope: !7038)
!7046 = !DILocation(line: 106, column: 46, scope: !7038)
!7047 = !DILocation(line: 106, column: 55, scope: !7038)
!7048 = !DILocation(line: 106, column: 7, scope: !7000)
!7049 = !DILocation(line: 107, column: 4, scope: !7038)
!7050 = !DILocation(line: 109, column: 28, scope: !7051)
!7051 = distinct !DILexicalBlock(scope: !7000, file: !3, line: 109, column: 7)
!7052 = !DILocation(line: 109, column: 34, scope: !7051)
!7053 = !DILocation(line: 109, column: 8, scope: !7051)
!7054 = !DILocation(line: 109, column: 7, scope: !7000)
!7055 = !DILocation(line: 110, column: 9, scope: !7056)
!7056 = distinct !DILexicalBlock(scope: !7051, file: !3, line: 109, column: 45)
!7057 = !DILocation(line: 111, column: 4, scope: !7056)
!7058 = !DILocation(line: 114, column: 45, scope: !7000)
!7059 = !DILocation(line: 114, column: 18, scope: !7000)
!7060 = !DILocation(line: 114, column: 16, scope: !7000)
!7061 = !DILocation(line: 115, column: 7, scope: !7062)
!7062 = distinct !DILexicalBlock(scope: !7000, file: !3, line: 115, column: 7)
!7063 = !DILocation(line: 115, column: 20, scope: !7062)
!7064 = !DILocation(line: 115, column: 7, scope: !7000)
!7065 = !DILocation(line: 116, column: 4, scope: !7062)
!7066 = !DILocation(line: 118, column: 8, scope: !7000)
!7067 = !DILocation(line: 118, column: 11, scope: !7000)
!7068 = !DILocation(line: 118, column: 17, scope: !7000)
!7069 = !DILocation(line: 118, column: 21, scope: !7000)
!7070 = !DILocation(line: 118, column: 38, scope: !7000)
!7071 = !DILocation(line: 118, column: 6, scope: !7000)
!7072 = !DILocation(line: 119, column: 8, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7000, file: !3, line: 119, column: 7)
!7074 = !DILocation(line: 119, column: 7, scope: !7000)
!7075 = !DILocation(line: 120, column: 31, scope: !7076)
!7076 = distinct !DILexicalBlock(scope: !7073, file: !3, line: 119, column: 12)
!7077 = !DILocation(line: 120, column: 34, scope: !7076)
!7078 = !DILocation(line: 120, column: 4, scope: !7076)
!7079 = !DILocation(line: 128, column: 14, scope: !7076)
!7080 = !DILocation(line: 129, column: 4, scope: !7076)
!7081 = !DILocation(line: 132, column: 30, scope: !7000)
!7082 = !DILocation(line: 132, column: 34, scope: !7000)
!7083 = !DILocation(line: 132, column: 3, scope: !7000)
!7084 = !DILocation(line: 139, column: 18, scope: !7000)
!7085 = !DILocation(line: 139, column: 22, scope: !7000)
!7086 = !DILocation(line: 139, column: 3, scope: !7000)
!7087 = !DILocation(line: 140, column: 8, scope: !7000)
!7088 = !DILocation(line: 141, column: 7, scope: !7089)
!7089 = distinct !DILexicalBlock(scope: !7000, file: !3, line: 141, column: 7)
!7090 = !DILocation(line: 141, column: 11, scope: !7089)
!7091 = !DILocation(line: 141, column: 22, scope: !7089)
!7092 = !DILocation(line: 141, column: 19, scope: !7089)
!7093 = !DILocation(line: 141, column: 7, scope: !7000)
!7094 = !DILocation(line: 142, column: 16, scope: !7089)
!7095 = !DILocation(line: 142, column: 4, scope: !7089)
!7096 = !DILocation(line: 150, column: 30, scope: !7097)
!7097 = distinct !DILexicalBlock(scope: !7000, file: !3, line: 150, column: 7)
!7098 = !DILocation(line: 150, column: 8, scope: !7097)
!7099 = !DILocation(line: 150, column: 7, scope: !7000)
!7100 = !DILocation(line: 151, column: 4, scope: !7097)
!7101 = !DILocation(line: 152, column: 2, scope: !6987)
!7102 = !DILocation(line: 152, column: 2, scope: !7000)
!7103 = !DILocation(line: 152, column: 11, scope: !6987)
!7104 = !DILocation(line: 152, column: 19, scope: !6987)
!7105 = !DILocation(line: 152, column: 17, scope: !6987)
!7106 = distinct !{!7106, !7032, !7107, !6267, !6268}
!7107 = !DILocation(line: 152, column: 31, scope: !6987)
!7108 = !DILocation(line: 154, column: 7, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 154, column: 6)
!7110 = !DILocation(line: 154, column: 6, scope: !6987)
!7111 = !DILocation(line: 155, column: 7, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !7113, file: !3, line: 155, column: 7)
!7113 = distinct !DILexicalBlock(scope: !7109, file: !3, line: 154, column: 14)
!7114 = !DILocation(line: 155, column: 7, scope: !7113)
!7115 = !DILocation(line: 156, column: 31, scope: !7112)
!7116 = !DILocation(line: 156, column: 4, scope: !7112)
!7117 = !DILocation(line: 157, column: 2, scope: !7113)
!7118 = !DILocation(line: 157, column: 13, scope: !7119)
!7119 = distinct !DILexicalBlock(scope: !7109, file: !3, line: 157, column: 13)
!7120 = !DILocation(line: 157, column: 13, scope: !7109)
!7121 = !DILocation(line: 165, column: 3, scope: !7122)
!7122 = distinct !DILexicalBlock(scope: !7119, file: !3, line: 157, column: 26)
!7123 = !DILocation(line: 166, column: 3, scope: !7122)
!7124 = !DILocation(line: 167, column: 18, scope: !7125)
!7125 = distinct !DILexicalBlock(scope: !7122, file: !3, line: 166, column: 6)
!7126 = !DILocation(line: 167, column: 15, scope: !7125)
!7127 = !DILocation(line: 168, column: 3, scope: !7125)
!7128 = !DILocation(line: 168, column: 13, scope: !7122)
!7129 = !DILocation(line: 168, column: 12, scope: !7122)
!7130 = distinct !{!7130, !7123, !7131, !6267, !6268}
!7131 = !DILocation(line: 168, column: 33, scope: !7122)
!7132 = !DILocation(line: 169, column: 2, scope: !7122)
!7133 = !DILocation(line: 170, column: 40, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !7119, file: !3, line: 169, column: 9)
!7135 = !DILocation(line: 170, column: 56, scope: !7134)
!7136 = !DILocation(line: 170, column: 16, scope: !7134)
!7137 = !DILocation(line: 170, column: 14, scope: !7134)
!7138 = !DILocation(line: 173, column: 6, scope: !7139)
!7139 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 173, column: 6)
!7140 = !DILocation(line: 173, column: 6, scope: !6987)
!7141 = !DILocation(line: 174, column: 3, scope: !7139)
!7142 = !DILocation(line: 175, column: 11, scope: !6987)
!7143 = !DILocation(line: 175, column: 10, scope: !6987)
!7144 = !DILocation(line: 175, column: 9, scope: !6987)
!7145 = !DILocation(line: 175, column: 2, scope: !6987)
!7146 = !DILocation(line: 176, column: 1, scope: !6987)
!7147 = distinct !DISubprogram(name: "need_resched", scope: !2314, file: !2314, line: 2260, type: !3376, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7148 = !DILocation(line: 2262, column: 9, scope: !7147)
!7149 = !DILocation(line: 2262, column: 2, scope: !7147)
!7150 = !DISubprogram(name: "blk_mq_delay_run_hw_queue", scope: !148, file: !148, line: 894, type: !7151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7151 = !DISubroutineType(types: !7152)
!7152 = !{null, !312, !255}
!7153 = distinct !DISubprogram(name: "blk_mq_get_dispatch_budget", scope: !206, file: !206, line: 264, type: !5416, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7154)
!7154 = !{!7155}
!7155 = !DILocalVariable(name: "q", arg: 1, scope: !7153, file: !206, line: 264, type: !281)
!7156 = !DILocation(line: 264, column: 68, scope: !7153)
!7157 = !DILocation(line: 266, column: 6, scope: !7158)
!7158 = distinct !DILexicalBlock(scope: !7153, file: !206, line: 266, column: 6)
!7159 = !DILocation(line: 266, column: 9, scope: !7158)
!7160 = !DILocation(line: 266, column: 17, scope: !7158)
!7161 = !DILocation(line: 266, column: 6, scope: !7153)
!7162 = !DILocation(line: 267, column: 10, scope: !7158)
!7163 = !DILocation(line: 267, column: 13, scope: !7158)
!7164 = !DILocation(line: 267, column: 21, scope: !7158)
!7165 = !DILocation(line: 267, column: 32, scope: !7158)
!7166 = !DILocation(line: 267, column: 3, scope: !7158)
!7167 = !DILocation(line: 268, column: 2, scope: !7153)
!7168 = !DILocation(line: 269, column: 1, scope: !7153)
!7169 = distinct !DISubprogram(name: "blk_mq_put_dispatch_budget", scope: !206, file: !206, line: 257, type: !5420, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7170)
!7170 = !{!7171, !7172}
!7171 = !DILocalVariable(name: "q", arg: 1, scope: !7169, file: !206, line: 257, type: !281)
!7172 = !DILocalVariable(name: "budget_token", arg: 2, scope: !7169, file: !206, line: 258, type: !89)
!7173 = !DILocation(line: 257, column: 69, scope: !7169)
!7174 = !DILocation(line: 258, column: 16, scope: !7169)
!7175 = !DILocation(line: 260, column: 6, scope: !7176)
!7176 = distinct !DILexicalBlock(scope: !7169, file: !206, line: 260, column: 6)
!7177 = !DILocation(line: 260, column: 9, scope: !7176)
!7178 = !DILocation(line: 260, column: 17, scope: !7176)
!7179 = !DILocation(line: 260, column: 6, scope: !7169)
!7180 = !DILocation(line: 261, column: 3, scope: !7176)
!7181 = !DILocation(line: 261, column: 6, scope: !7176)
!7182 = !DILocation(line: 261, column: 14, scope: !7176)
!7183 = !DILocation(line: 261, column: 25, scope: !7176)
!7184 = !DILocation(line: 261, column: 28, scope: !7176)
!7185 = !DILocation(line: 262, column: 1, scope: !7169)
!7186 = distinct !DISubprogram(name: "blk_mq_set_rq_budget_token", scope: !206, file: !206, line: 271, type: !5424, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7187)
!7187 = !{!7188, !7189}
!7188 = !DILocalVariable(name: "rq", arg: 1, scope: !7186, file: !206, line: 271, type: !277)
!7189 = !DILocalVariable(name: "token", arg: 2, scope: !7186, file: !206, line: 271, type: !89)
!7190 = !DILocation(line: 271, column: 63, scope: !7186)
!7191 = !DILocation(line: 271, column: 71, scope: !7186)
!7192 = !DILocation(line: 273, column: 6, scope: !7193)
!7193 = distinct !DILexicalBlock(scope: !7186, file: !206, line: 273, column: 6)
!7194 = !DILocation(line: 273, column: 12, scope: !7193)
!7195 = !DILocation(line: 273, column: 6, scope: !7186)
!7196 = !DILocation(line: 274, column: 3, scope: !7193)
!7197 = !DILocation(line: 276, column: 6, scope: !7198)
!7198 = distinct !DILexicalBlock(scope: !7186, file: !206, line: 276, column: 6)
!7199 = !DILocation(line: 276, column: 10, scope: !7198)
!7200 = !DILocation(line: 276, column: 13, scope: !7198)
!7201 = !DILocation(line: 276, column: 21, scope: !7198)
!7202 = !DILocation(line: 276, column: 6, scope: !7186)
!7203 = !DILocation(line: 277, column: 3, scope: !7198)
!7204 = !DILocation(line: 277, column: 7, scope: !7198)
!7205 = !DILocation(line: 277, column: 10, scope: !7198)
!7206 = !DILocation(line: 277, column: 18, scope: !7198)
!7207 = !DILocation(line: 277, column: 38, scope: !7198)
!7208 = !DILocation(line: 277, column: 42, scope: !7198)
!7209 = !DILocation(line: 278, column: 1, scope: !7186)
!7210 = distinct !DISubprogram(name: "list_add_tail", scope: !6084, file: !6084, line: 181, type: !6772, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7211)
!7211 = !{!7212, !7213}
!7212 = !DILocalVariable(name: "new", arg: 1, scope: !7210, file: !6084, line: 181, type: !271)
!7213 = !DILocalVariable(name: "head", arg: 2, scope: !7210, file: !6084, line: 181, type: !271)
!7214 = !DILocation(line: 181, column: 52, scope: !7210)
!7215 = !DILocation(line: 181, column: 75, scope: !7210)
!7216 = !DILocation(line: 183, column: 13, scope: !7210)
!7217 = !DILocation(line: 183, column: 18, scope: !7210)
!7218 = !DILocation(line: 183, column: 24, scope: !7210)
!7219 = !DILocation(line: 183, column: 30, scope: !7210)
!7220 = !DILocation(line: 183, column: 2, scope: !7210)
!7221 = !DILocation(line: 184, column: 1, scope: !7210)
!7222 = distinct !DISubprogram(name: "blk_mq_get_driver_tag", scope: !206, file: !206, line: 337, type: !6158, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7223)
!7223 = !{!7224, !7225}
!7224 = !DILocalVariable(name: "rq", arg: 1, scope: !7222, file: !206, line: 337, type: !277)
!7225 = !DILocalVariable(name: "hctx", scope: !7222, file: !206, line: 339, type: !312)
!7226 = !DILocation(line: 337, column: 58, scope: !7222)
!7227 = !DILocation(line: 339, column: 2, scope: !7222)
!7228 = !DILocation(line: 339, column: 24, scope: !7222)
!7229 = !DILocation(line: 339, column: 31, scope: !7222)
!7230 = !DILocation(line: 339, column: 35, scope: !7222)
!7231 = !DILocation(line: 341, column: 6, scope: !7232)
!7232 = distinct !DILexicalBlock(scope: !7222, file: !206, line: 341, column: 6)
!7233 = !DILocation(line: 341, column: 10, scope: !7232)
!7234 = !DILocation(line: 341, column: 14, scope: !7232)
!7235 = !DILocation(line: 341, column: 31, scope: !7232)
!7236 = !DILocation(line: 342, column: 8, scope: !7232)
!7237 = !DILocation(line: 342, column: 14, scope: !7232)
!7238 = !DILocation(line: 342, column: 20, scope: !7232)
!7239 = !DILocation(line: 341, column: 6, scope: !7222)
!7240 = !DILocation(line: 343, column: 30, scope: !7241)
!7241 = distinct !DILexicalBlock(scope: !7232, file: !206, line: 342, column: 50)
!7242 = !DILocation(line: 343, column: 3, scope: !7241)
!7243 = !DILocation(line: 343, column: 9, scope: !7241)
!7244 = !DILocation(line: 343, column: 15, scope: !7241)
!7245 = !DILocation(line: 343, column: 19, scope: !7241)
!7246 = !DILocation(line: 343, column: 23, scope: !7241)
!7247 = !DILocation(line: 343, column: 28, scope: !7241)
!7248 = !DILocation(line: 344, column: 3, scope: !7241)
!7249 = !DILocation(line: 347, column: 33, scope: !7222)
!7250 = !DILocation(line: 347, column: 39, scope: !7222)
!7251 = !DILocation(line: 347, column: 9, scope: !7222)
!7252 = !DILocation(line: 347, column: 2, scope: !7222)
!7253 = !DILocation(line: 348, column: 1, scope: !7222)
!7254 = !DISubprogram(name: "blk_mq_delay_run_hw_queues", scope: !148, file: !148, line: 897, type: !7255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7255 = !DISubroutineType(types: !7256)
!7256 = !{null, !281, !255}
!7257 = !DISubprogram(name: "list_sort", scope: !7258, file: !7258, line: 13, type: !7259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7258 = !DIFile(filename: "./include/linux/list_sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ae2bf7a3695fabcec35994eeb9cb0a8")
!7259 = !DISubroutineType(types: !7260)
!7260 = !{null, !256, !271, !7261}
!7261 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_cmp_func_t", file: !7258, line: 9, baseType: !7262)
!7262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7263, size: 64)
!7263 = !DISubroutineType(types: !7264)
!7264 = !{!89, !256, !6087, !6087}
!7265 = distinct !DISubprogram(name: "sched_rq_cmp", scope: !3, file: !3, line: 47, type: !7263, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7266)
!7266 = !{!7267, !7268, !7269, !7270, !7271, !7273, !7274}
!7267 = !DILocalVariable(name: "priv", arg: 1, scope: !7265, file: !3, line: 47, type: !256)
!7268 = !DILocalVariable(name: "a", arg: 2, scope: !7265, file: !3, line: 47, type: !6087)
!7269 = !DILocalVariable(name: "b", arg: 3, scope: !7265, file: !3, line: 48, type: !6087)
!7270 = !DILocalVariable(name: "rqa", scope: !7265, file: !3, line: 50, type: !277)
!7271 = !DILocalVariable(name: "__mptr", scope: !7272, file: !3, line: 50, type: !256)
!7272 = distinct !DILexicalBlock(scope: !7265, file: !3, line: 50, column: 24)
!7273 = !DILocalVariable(name: "rqb", scope: !7265, file: !3, line: 51, type: !277)
!7274 = !DILocalVariable(name: "__mptr", scope: !7275, file: !3, line: 51, type: !256)
!7275 = distinct !DILexicalBlock(scope: !7265, file: !3, line: 51, column: 24)
!7276 = !DILocation(line: 47, column: 31, scope: !7265)
!7277 = !DILocation(line: 47, column: 61, scope: !7265)
!7278 = !DILocation(line: 48, column: 28, scope: !7265)
!7279 = !DILocation(line: 50, column: 2, scope: !7265)
!7280 = !DILocation(line: 50, column: 18, scope: !7265)
!7281 = !DILocation(line: 50, column: 24, scope: !7272)
!7282 = !DILocation(line: 50, column: 24, scope: !7265)
!7283 = !DILocation(line: 51, column: 2, scope: !7265)
!7284 = !DILocation(line: 51, column: 18, scope: !7265)
!7285 = !DILocation(line: 51, column: 24, scope: !7275)
!7286 = !DILocation(line: 51, column: 24, scope: !7265)
!7287 = !DILocation(line: 53, column: 9, scope: !7265)
!7288 = !DILocation(line: 53, column: 14, scope: !7265)
!7289 = !DILocation(line: 53, column: 24, scope: !7265)
!7290 = !DILocation(line: 53, column: 29, scope: !7265)
!7291 = !DILocation(line: 53, column: 22, scope: !7265)
!7292 = !DILocation(line: 54, column: 1, scope: !7265)
!7293 = !DILocation(line: 53, column: 2, scope: !7265)
!7294 = distinct !DISubprogram(name: "blk_mq_dispatch_hctx_list", scope: !3, file: !3, line: 56, type: !7295, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7297)
!7295 = !DISubroutineType(types: !7296)
!7296 = !{!452, !271}
!7297 = !{!7298, !7299, !7300, !7302, !7303, !7304, !7305, !7308, !7311}
!7298 = !DILocalVariable(name: "rq_list", arg: 1, scope: !7294, file: !3, line: 56, type: !271)
!7299 = !DILocalVariable(name: "hctx", scope: !7294, file: !3, line: 58, type: !312)
!7300 = !DILocalVariable(name: "__mptr", scope: !7301, file: !3, line: 59, type: !256)
!7301 = distinct !DILexicalBlock(scope: !7294, file: !3, line: 59, column: 3)
!7302 = !DILocalVariable(name: "rq", scope: !7294, file: !3, line: 60, type: !277)
!7303 = !DILocalVariable(name: "hctx_list", scope: !7294, file: !3, line: 61, type: !272)
!7304 = !DILocalVariable(name: "count", scope: !7294, file: !3, line: 62, type: !7)
!7305 = !DILocalVariable(name: "__mptr", scope: !7306, file: !3, line: 64, type: !256)
!7306 = distinct !DILexicalBlock(scope: !7307, file: !3, line: 64, column: 2)
!7307 = distinct !DILexicalBlock(scope: !7294, file: !3, line: 64, column: 2)
!7308 = !DILocalVariable(name: "__mptr", scope: !7309, file: !3, line: 64, type: !256)
!7309 = distinct !DILexicalBlock(scope: !7310, file: !3, line: 64, column: 2)
!7310 = distinct !DILexicalBlock(scope: !7307, file: !3, line: 64, column: 2)
!7311 = !DILabel(scope: !7294, name: "dispatch", file: !3, line: 73)
!7312 = !DILocation(line: 56, column: 57, scope: !7294)
!7313 = !DILocation(line: 58, column: 2, scope: !7294)
!7314 = !DILocation(line: 58, column: 24, scope: !7294)
!7315 = !DILocation(line: 59, column: 3, scope: !7301)
!7316 = !DILocation(line: 59, column: 3, scope: !7294)
!7317 = !DILocation(line: 59, column: 57, scope: !7294)
!7318 = !DILocation(line: 60, column: 2, scope: !7294)
!7319 = !DILocation(line: 60, column: 18, scope: !7294)
!7320 = !DILocation(line: 61, column: 2, scope: !7294)
!7321 = !DILocation(line: 62, column: 2, scope: !7294)
!7322 = !DILocation(line: 62, column: 15, scope: !7294)
!7323 = !DILocation(line: 64, column: 2, scope: !7306)
!7324 = !DILocation(line: 64, column: 2, scope: !7307)
!7325 = !DILocation(line: 64, column: 2, scope: !7310)
!7326 = !DILocation(line: 65, column: 7, scope: !7327)
!7327 = distinct !DILexicalBlock(scope: !7328, file: !3, line: 65, column: 7)
!7328 = distinct !DILexicalBlock(scope: !7310, file: !3, line: 64, column: 46)
!7329 = !DILocation(line: 65, column: 11, scope: !7327)
!7330 = !DILocation(line: 65, column: 22, scope: !7327)
!7331 = !DILocation(line: 65, column: 19, scope: !7327)
!7332 = !DILocation(line: 65, column: 7, scope: !7328)
!7333 = !DILocation(line: 66, column: 32, scope: !7334)
!7334 = distinct !DILexicalBlock(scope: !7327, file: !3, line: 65, column: 28)
!7335 = !DILocation(line: 66, column: 42, scope: !7334)
!7336 = !DILocation(line: 66, column: 46, scope: !7334)
!7337 = !DILocation(line: 66, column: 4, scope: !7334)
!7338 = !DILocation(line: 67, column: 4, scope: !7334)
!7339 = !DILocation(line: 69, column: 8, scope: !7328)
!7340 = !DILocation(line: 70, column: 2, scope: !7328)
!7341 = !DILocation(line: 64, column: 2, scope: !7309)
!7342 = distinct !{!7342, !7324, !7343, !6267, !6268}
!7343 = !DILocation(line: 70, column: 2, scope: !7307)
!7344 = !DILocation(line: 71, column: 24, scope: !7294)
!7345 = !DILocation(line: 71, column: 2, scope: !7294)
!7346 = !DILocation(line: 73, column: 1, scope: !7294)
!7347 = !DILocation(line: 74, column: 33, scope: !7294)
!7348 = !DILocation(line: 74, column: 51, scope: !7294)
!7349 = !DILocation(line: 74, column: 9, scope: !7294)
!7350 = !DILocation(line: 75, column: 1, scope: !7294)
!7351 = !DILocation(line: 74, column: 2, scope: !7294)
!7352 = distinct !DISubprogram(name: "__list_add", scope: !6084, file: !6084, line: 146, type: !7353, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7355)
!7353 = !DISubroutineType(types: !7354)
!7354 = !{null, !271, !271, !271}
!7355 = !{!7356, !7357, !7358}
!7356 = !DILocalVariable(name: "new", arg: 1, scope: !7352, file: !6084, line: 146, type: !271)
!7357 = !DILocalVariable(name: "prev", arg: 2, scope: !7352, file: !6084, line: 147, type: !271)
!7358 = !DILocalVariable(name: "next", arg: 3, scope: !7352, file: !6084, line: 148, type: !271)
!7359 = !DILocation(line: 146, column: 49, scope: !7352)
!7360 = !DILocation(line: 147, column: 28, scope: !7352)
!7361 = !DILocation(line: 148, column: 28, scope: !7352)
!7362 = !DILocation(line: 150, column: 24, scope: !7363)
!7363 = distinct !DILexicalBlock(scope: !7352, file: !6084, line: 150, column: 6)
!7364 = !DILocation(line: 150, column: 29, scope: !7363)
!7365 = !DILocation(line: 150, column: 35, scope: !7363)
!7366 = !DILocation(line: 150, column: 7, scope: !7363)
!7367 = !DILocation(line: 150, column: 6, scope: !7352)
!7368 = !DILocation(line: 151, column: 3, scope: !7363)
!7369 = !DILocation(line: 153, column: 15, scope: !7352)
!7370 = !DILocation(line: 153, column: 2, scope: !7352)
!7371 = !DILocation(line: 153, column: 8, scope: !7352)
!7372 = !DILocation(line: 153, column: 13, scope: !7352)
!7373 = !DILocation(line: 154, column: 14, scope: !7352)
!7374 = !DILocation(line: 154, column: 2, scope: !7352)
!7375 = !DILocation(line: 154, column: 7, scope: !7352)
!7376 = !DILocation(line: 154, column: 12, scope: !7352)
!7377 = !DILocation(line: 155, column: 14, scope: !7352)
!7378 = !DILocation(line: 155, column: 2, scope: !7352)
!7379 = !DILocation(line: 155, column: 7, scope: !7352)
!7380 = !DILocation(line: 155, column: 12, scope: !7352)
!7381 = !DILocation(line: 156, column: 2, scope: !7352)
!7382 = !DILocation(line: 156, column: 2, scope: !7383)
!7383 = distinct !DILexicalBlock(scope: !7352, file: !6084, line: 156, column: 2)
!7384 = !DILocation(line: 156, column: 2, scope: !7385)
!7385 = distinct !DILexicalBlock(scope: !7383, file: !6084, line: 156, column: 2)
!7386 = !DILocation(line: 156, column: 2, scope: !7387)
!7387 = distinct !DILexicalBlock(scope: !7383, file: !6084, line: 156, column: 2)
!7388 = !DILocation(line: 157, column: 1, scope: !7352)
!7389 = distinct !DISubprogram(name: "__list_add_valid", scope: !6084, file: !6084, line: 128, type: !7390, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7392)
!7390 = !DISubroutineType(types: !7391)
!7391 = !{!452, !271, !271, !271}
!7392 = !{!7393, !7394, !7395}
!7393 = !DILocalVariable(name: "new", arg: 1, scope: !7389, file: !6084, line: 128, type: !271)
!7394 = !DILocalVariable(name: "prev", arg: 2, scope: !7389, file: !6084, line: 129, type: !271)
!7395 = !DILocalVariable(name: "next", arg: 3, scope: !7389, file: !6084, line: 130, type: !271)
!7396 = !DILocation(line: 128, column: 55, scope: !7389)
!7397 = !DILocation(line: 129, column: 23, scope: !7389)
!7398 = !DILocation(line: 130, column: 23, scope: !7389)
!7399 = !DILocation(line: 132, column: 2, scope: !7389)
!7400 = !DISubprogram(name: "__blk_mq_get_driver_tag", scope: !206, file: !206, line: 335, type: !7401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7401 = !DISubroutineType(types: !7402)
!7402 = !{!452, !312, !277}
!7403 = distinct !DISubprogram(name: "list_cut_before", scope: !6084, file: !6084, line: 507, type: !7353, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7404)
!7404 = !{!7405, !7406, !7407}
!7405 = !DILocalVariable(name: "list", arg: 1, scope: !7403, file: !6084, line: 507, type: !271)
!7406 = !DILocalVariable(name: "head", arg: 2, scope: !7403, file: !6084, line: 508, type: !271)
!7407 = !DILocalVariable(name: "entry", arg: 3, scope: !7403, file: !6084, line: 509, type: !271)
!7408 = !DILocation(line: 507, column: 54, scope: !7403)
!7409 = !DILocation(line: 508, column: 26, scope: !7403)
!7410 = !DILocation(line: 509, column: 26, scope: !7403)
!7411 = !DILocation(line: 511, column: 6, scope: !7412)
!7412 = distinct !DILexicalBlock(scope: !7403, file: !6084, line: 511, column: 6)
!7413 = !DILocation(line: 511, column: 12, scope: !7412)
!7414 = !DILocation(line: 511, column: 20, scope: !7412)
!7415 = !DILocation(line: 511, column: 17, scope: !7412)
!7416 = !DILocation(line: 511, column: 6, scope: !7403)
!7417 = !DILocation(line: 512, column: 18, scope: !7418)
!7418 = distinct !DILexicalBlock(scope: !7412, file: !6084, line: 511, column: 27)
!7419 = !DILocation(line: 512, column: 3, scope: !7418)
!7420 = !DILocation(line: 513, column: 3, scope: !7418)
!7421 = !DILocation(line: 515, column: 15, scope: !7403)
!7422 = !DILocation(line: 515, column: 21, scope: !7403)
!7423 = !DILocation(line: 515, column: 2, scope: !7403)
!7424 = !DILocation(line: 515, column: 8, scope: !7403)
!7425 = !DILocation(line: 515, column: 13, scope: !7403)
!7426 = !DILocation(line: 516, column: 21, scope: !7403)
!7427 = !DILocation(line: 516, column: 2, scope: !7403)
!7428 = !DILocation(line: 516, column: 8, scope: !7403)
!7429 = !DILocation(line: 516, column: 14, scope: !7403)
!7430 = !DILocation(line: 516, column: 19, scope: !7403)
!7431 = !DILocation(line: 517, column: 15, scope: !7403)
!7432 = !DILocation(line: 517, column: 22, scope: !7403)
!7433 = !DILocation(line: 517, column: 2, scope: !7403)
!7434 = !DILocation(line: 517, column: 8, scope: !7403)
!7435 = !DILocation(line: 517, column: 13, scope: !7403)
!7436 = !DILocation(line: 518, column: 21, scope: !7403)
!7437 = !DILocation(line: 518, column: 2, scope: !7403)
!7438 = !DILocation(line: 518, column: 8, scope: !7403)
!7439 = !DILocation(line: 518, column: 14, scope: !7403)
!7440 = !DILocation(line: 518, column: 19, scope: !7403)
!7441 = !DILocation(line: 519, column: 15, scope: !7403)
!7442 = !DILocation(line: 519, column: 2, scope: !7403)
!7443 = !DILocation(line: 519, column: 8, scope: !7403)
!7444 = !DILocation(line: 519, column: 13, scope: !7403)
!7445 = !DILocation(line: 520, column: 16, scope: !7403)
!7446 = !DILocation(line: 520, column: 2, scope: !7403)
!7447 = !DILocation(line: 520, column: 9, scope: !7403)
!7448 = !DILocation(line: 520, column: 14, scope: !7403)
!7449 = !DILocation(line: 521, column: 1, scope: !7403)
!7450 = distinct !DISubprogram(name: "list_splice_tail_init", scope: !6084, file: !6084, line: 585, type: !6772, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7451)
!7451 = !{!7452, !7453}
!7452 = !DILocalVariable(name: "list", arg: 1, scope: !7450, file: !6084, line: 585, type: !271)
!7453 = !DILocalVariable(name: "head", arg: 2, scope: !7450, file: !6084, line: 586, type: !271)
!7454 = !DILocation(line: 585, column: 60, scope: !7450)
!7455 = !DILocation(line: 586, column: 25, scope: !7450)
!7456 = !DILocation(line: 588, column: 18, scope: !7457)
!7457 = distinct !DILexicalBlock(scope: !7450, file: !6084, line: 588, column: 6)
!7458 = !DILocation(line: 588, column: 7, scope: !7457)
!7459 = !DILocation(line: 588, column: 6, scope: !7450)
!7460 = !DILocation(line: 589, column: 17, scope: !7461)
!7461 = distinct !DILexicalBlock(scope: !7457, file: !6084, line: 588, column: 25)
!7462 = !DILocation(line: 589, column: 23, scope: !7461)
!7463 = !DILocation(line: 589, column: 29, scope: !7461)
!7464 = !DILocation(line: 589, column: 35, scope: !7461)
!7465 = !DILocation(line: 589, column: 3, scope: !7461)
!7466 = !DILocation(line: 590, column: 18, scope: !7461)
!7467 = !DILocation(line: 590, column: 3, scope: !7461)
!7468 = !DILocation(line: 591, column: 2, scope: !7461)
!7469 = !DILocation(line: 592, column: 1, scope: !7450)
!7470 = distinct !DISubprogram(name: "tif_need_resched", scope: !7471, file: !7471, line: 182, type: !3376, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7471 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!7472 = !DILocation(line: 185, column: 28, scope: !7470)
!7473 = !DILocation(line: 185, column: 51, scope: !7470)
!7474 = !DILocation(line: 184, column: 9, scope: !7470)
!7475 = !DILocation(line: 184, column: 2, scope: !7470)
!7476 = distinct !DISubprogram(name: "get_current", scope: !7477, file: !7477, line: 39, type: !7478, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7480)
!7477 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!7478 = !DISubroutineType(types: !7479)
!7479 = !{!3502}
!7480 = !{!7481, !7483, !7485}
!7481 = !DILocalVariable(name: "pscr_ret__", scope: !7482, file: !7477, line: 41, type: !3502)
!7482 = distinct !DILexicalBlock(scope: !7476, file: !7477, line: 41, column: 9)
!7483 = !DILocalVariable(name: "__vpp_verify", scope: !7484, file: !7477, line: 41, type: !1909)
!7484 = distinct !DILexicalBlock(scope: !7482, file: !7477, line: 41, column: 9)
!7485 = !DILocalVariable(name: "pfo_val__", scope: !7486, file: !7477, line: 41, type: !677)
!7486 = distinct !DILexicalBlock(scope: !7482, file: !7477, line: 41, column: 9)
!7487 = !DILocation(line: 41, column: 9, scope: !7482)
!7488 = !DILocation(line: 41, column: 9, scope: !7484)
!7489 = !DILocation(line: 41, column: 9, scope: !7486)
!7490 = !{i64 2148544867}
!7491 = !DILocation(line: 41, column: 9, scope: !7476)
!7492 = !DILocation(line: 41, column: 2, scope: !7476)
!7493 = !DISubprogram(name: "sbitmap_any_bit_set", scope: !446, file: !446, line: 235, type: !7494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7494 = !DISubroutineType(types: !7495)
!7495 = !{!452, !7496}
!7496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7497, size: 64)
!7497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!7498 = !DISubprogram(name: "blk_mq_dequeue_from_ctx", scope: !206, file: !206, line: 51, type: !7499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7499 = !DISubroutineType(types: !7500)
!7500 = !{!277, !312, !465}
!7501 = distinct !DISubprogram(name: "list_add", scope: !6084, file: !6084, line: 167, type: !6772, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7502)
!7502 = !{!7503, !7504}
!7503 = !DILocalVariable(name: "new", arg: 1, scope: !7501, file: !6084, line: 167, type: !271)
!7504 = !DILocalVariable(name: "head", arg: 2, scope: !7501, file: !6084, line: 167, type: !271)
!7505 = !DILocation(line: 167, column: 47, scope: !7501)
!7506 = !DILocation(line: 167, column: 70, scope: !7501)
!7507 = !DILocation(line: 169, column: 13, scope: !7501)
!7508 = !DILocation(line: 169, column: 18, scope: !7501)
!7509 = !DILocation(line: 169, column: 24, scope: !7501)
!7510 = !DILocation(line: 169, column: 30, scope: !7501)
!7511 = !DILocation(line: 169, column: 2, scope: !7501)
!7512 = !DILocation(line: 170, column: 1, scope: !7501)
!7513 = distinct !DISubprogram(name: "blk_mq_next_ctx", scope: !3, file: !3, line: 196, type: !7514, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7516)
!7514 = !DISubroutineType(types: !7515)
!7515 = !{!465, !312, !465}
!7516 = !{!7517, !7518, !7519}
!7517 = !DILocalVariable(name: "hctx", arg: 1, scope: !7513, file: !3, line: 196, type: !312)
!7518 = !DILocalVariable(name: "ctx", arg: 2, scope: !7513, file: !3, line: 197, type: !465)
!7519 = !DILocalVariable(name: "idx", scope: !7513, file: !3, line: 199, type: !359)
!7520 = !DILocation(line: 196, column: 65, scope: !7513)
!7521 = !DILocation(line: 197, column: 27, scope: !7513)
!7522 = !DILocation(line: 199, column: 2, scope: !7513)
!7523 = !DILocation(line: 199, column: 17, scope: !7513)
!7524 = !DILocation(line: 199, column: 23, scope: !7513)
!7525 = !DILocation(line: 199, column: 28, scope: !7513)
!7526 = !DILocation(line: 199, column: 37, scope: !7513)
!7527 = !DILocation(line: 199, column: 43, scope: !7513)
!7528 = !DILocation(line: 201, column: 6, scope: !7529)
!7529 = distinct !DILexicalBlock(scope: !7513, file: !3, line: 201, column: 6)
!7530 = !DILocation(line: 201, column: 15, scope: !7529)
!7531 = !DILocation(line: 201, column: 21, scope: !7529)
!7532 = !DILocation(line: 201, column: 12, scope: !7529)
!7533 = !DILocation(line: 201, column: 6, scope: !7513)
!7534 = !DILocation(line: 202, column: 7, scope: !7529)
!7535 = !DILocation(line: 202, column: 3, scope: !7529)
!7536 = !DILocation(line: 204, column: 9, scope: !7513)
!7537 = !DILocation(line: 204, column: 15, scope: !7513)
!7538 = !DILocation(line: 204, column: 20, scope: !7513)
!7539 = !DILocation(line: 205, column: 1, scope: !7513)
!7540 = !DILocation(line: 204, column: 2, scope: !7513)
!7541 = distinct !DISubprogram(name: "__blk_mq_get_ctx", scope: !206, file: !206, line: 129, type: !7542, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7544)
!7542 = !DISubroutineType(types: !7543)
!7543 = !{!465, !281, !7}
!7544 = !{!7545, !7546, !7547, !7550}
!7545 = !DILocalVariable(name: "q", arg: 1, scope: !7541, file: !206, line: 129, type: !281)
!7546 = !DILocalVariable(name: "cpu", arg: 2, scope: !7541, file: !206, line: 130, type: !7)
!7547 = !DILocalVariable(name: "__vpp_verify", scope: !7548, file: !206, line: 132, type: !1909)
!7548 = distinct !DILexicalBlock(scope: !7549, file: !206, line: 132, column: 9)
!7549 = distinct !DILexicalBlock(scope: !7541, file: !206, line: 132, column: 9)
!7550 = !DILocalVariable(name: "__ptr", scope: !7551, file: !206, line: 132, type: !255)
!7551 = distinct !DILexicalBlock(scope: !7549, file: !206, line: 132, column: 9)
!7552 = !DILocation(line: 129, column: 73, scope: !7541)
!7553 = !DILocation(line: 130, column: 22, scope: !7541)
!7554 = !DILocation(line: 132, column: 9, scope: !7549)
!7555 = !DILocation(line: 132, column: 9, scope: !7548)
!7556 = !DILocation(line: 132, column: 9, scope: !7551)
!7557 = !DILocation(line: 132, column: 2, scope: !7541)
!7558 = distinct !DISubprogram(name: "blk_mq_get_hctx_type", scope: !206, file: !206, line: 85, type: !7559, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7561)
!7559 = !DISubroutineType(types: !7560)
!7560 = !{!199, !2624}
!7561 = !{!7562, !7563}
!7562 = !DILocalVariable(name: "opf", arg: 1, scope: !7558, file: !206, line: 85, type: !2624)
!7563 = !DILocalVariable(name: "type", scope: !7558, file: !206, line: 87, type: !199)
!7564 = !DILocation(line: 85, column: 61, scope: !7558)
!7565 = !DILocation(line: 87, column: 2, scope: !7558)
!7566 = !DILocation(line: 87, column: 17, scope: !7558)
!7567 = !DILocation(line: 92, column: 6, scope: !7568)
!7568 = distinct !DILexicalBlock(scope: !7558, file: !206, line: 92, column: 6)
!7569 = !DILocation(line: 92, column: 10, scope: !7568)
!7570 = !DILocation(line: 92, column: 6, scope: !7558)
!7571 = !DILocation(line: 93, column: 8, scope: !7568)
!7572 = !DILocation(line: 93, column: 3, scope: !7568)
!7573 = !DILocation(line: 94, column: 12, scope: !7574)
!7574 = distinct !DILexicalBlock(scope: !7568, file: !206, line: 94, column: 11)
!7575 = !DILocation(line: 94, column: 16, scope: !7574)
!7576 = !DILocation(line: 94, column: 31, scope: !7574)
!7577 = !DILocation(line: 94, column: 11, scope: !7568)
!7578 = !DILocation(line: 95, column: 8, scope: !7574)
!7579 = !DILocation(line: 95, column: 3, scope: !7574)
!7580 = !DILocation(line: 96, column: 9, scope: !7558)
!7581 = !DILocation(line: 97, column: 1, scope: !7558)
!7582 = !DILocation(line: 96, column: 2, scope: !7558)
!7583 = distinct !DISubprogram(name: "list_is_head", scope: !6084, file: !6084, line: 362, type: !7584, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7586)
!7584 = !DISubroutineType(types: !7585)
!7585 = !{!89, !6087, !6087}
!7586 = !{!7587, !7588}
!7587 = !DILocalVariable(name: "list", arg: 1, scope: !7583, file: !6084, line: 362, type: !6087)
!7588 = !DILocalVariable(name: "head", arg: 2, scope: !7583, file: !6084, line: 362, type: !6087)
!7589 = !DILocation(line: 362, column: 56, scope: !7583)
!7590 = !DILocation(line: 362, column: 86, scope: !7583)
!7591 = !DILocation(line: 364, column: 9, scope: !7583)
!7592 = !DILocation(line: 364, column: 17, scope: !7583)
!7593 = !DILocation(line: 364, column: 14, scope: !7583)
!7594 = !DILocation(line: 364, column: 2, scope: !7583)
!7595 = !DISubprogram(name: "_raw_spin_lock", scope: !7596, file: !7596, line: 22, type: !7597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7596 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7597 = !DISubroutineType(types: !7598)
!7598 = !{null, !7599}
!7599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!7600 = !DISubprogram(name: "_raw_spin_unlock", scope: !7596, file: !7596, line: 39, type: !7597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7601 = distinct !DISubprogram(name: "blk_rq_is_passthrough", scope: !148, file: !148, line: 198, type: !6158, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7602)
!7602 = !{!7603}
!7603 = !DILocalVariable(name: "rq", arg: 1, scope: !7601, file: !148, line: 198, type: !277)
!7604 = !DILocation(line: 198, column: 58, scope: !7601)
!7605 = !DILocation(line: 200, column: 31, scope: !7601)
!7606 = !DILocation(line: 200, column: 35, scope: !7601)
!7607 = !DILocation(line: 200, column: 9, scope: !7601)
!7608 = !DILocation(line: 200, column: 2, scope: !7601)
!7609 = distinct !DISubprogram(name: "req_op", scope: !148, file: !148, line: 193, type: !7610, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7614)
!7610 = !DISubroutineType(types: !7611)
!7611 = !{!235, !7612}
!7612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7613, size: 64)
!7613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!7614 = !{!7615}
!7615 = !DILocalVariable(name: "req", arg: 1, scope: !7609, file: !148, line: 193, type: !7612)
!7616 = !DILocation(line: 193, column: 56, scope: !7609)
!7617 = !DILocation(line: 195, column: 9, scope: !7609)
!7618 = !DILocation(line: 195, column: 14, scope: !7609)
!7619 = !DILocation(line: 195, column: 24, scope: !7609)
!7620 = !DILocation(line: 195, column: 2, scope: !7609)
!7621 = distinct !DISubprogram(name: "blk_op_is_passthrough", scope: !57, file: !57, line: 273, type: !7622, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7624)
!7622 = !DISubroutineType(types: !7623)
!7623 = !{!452, !2624}
!7624 = !{!7625}
!7625 = !DILocalVariable(name: "op", arg: 1, scope: !7621, file: !57, line: 273, type: !2624)
!7626 = !DILocation(line: 273, column: 52, scope: !7621)
!7627 = !DILocation(line: 275, column: 5, scope: !7621)
!7628 = !DILocation(line: 276, column: 9, scope: !7621)
!7629 = !DILocation(line: 276, column: 12, scope: !7621)
!7630 = !DILocation(line: 276, column: 29, scope: !7621)
!7631 = !DILocation(line: 276, column: 32, scope: !7621)
!7632 = !DILocation(line: 276, column: 35, scope: !7621)
!7633 = !DILocation(line: 276, column: 2, scope: !7621)
!7634 = !DISubprogram(name: "blk_mq_alloc_map_and_rqs", scope: !206, file: !206, line: 61, type: !7635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7635 = !DISubroutineType(types: !7636)
!7636 = !{!5205, !5448, !7, !7}
!7637 = !DISubprogram(name: "blk_mq_tag_update_sched_shared_tags", scope: !206, file: !206, line: 180, type: !6427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7638 = !DISubprogram(name: "blk_mq_free_rq_map", scope: !206, file: !206, line: 60, type: !7639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7639 = !DISubroutineType(types: !7640)
!7640 = !{null, !5205}
!7641 = distinct !DISubprogram(name: "blk_mq_exit_sched_shared_tags", scope: !3, file: !3, line: 399, type: !6427, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7642)
!7642 = !{!7643}
!7643 = !DILocalVariable(name: "queue", arg: 1, scope: !7641, file: !3, line: 399, type: !281)
!7644 = !DILocation(line: 399, column: 65, scope: !7641)
!7645 = !DILocation(line: 401, column: 21, scope: !7641)
!7646 = !DILocation(line: 401, column: 28, scope: !7641)
!7647 = !DILocation(line: 401, column: 2, scope: !7641)
!7648 = !DILocation(line: 402, column: 2, scope: !7641)
!7649 = !DILocation(line: 402, column: 9, scope: !7641)
!7650 = !DILocation(line: 402, column: 27, scope: !7641)
!7651 = !DILocation(line: 403, column: 1, scope: !7641)
